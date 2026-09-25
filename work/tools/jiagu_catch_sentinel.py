#!/usr/bin/env python3
"""Catch the instruction that overwrites the sentinel slot."""
import os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import UC_HOOK_CODE, UC_HOOK_MEM_WRITE, UcError
from unicorn.x86_const import (UC_X86_REG_EAX, UC_X86_REG_ECX, UC_X86_REG_EDX,
                               UC_X86_REG_EIP, UC_X86_REG_ESP)
from jiagu_emu import ARG_BASE, BASE, STACK_BASE, STACK_SIZE, JiaguHarness
from x86dis import disasm_one

MEM_FUNCS = ('_Znwj', '_ZdlPv', '_ZdaPv', '_Znaj', 'calloc', 'malloc', 'free')


def main():
    p = JiaguHarness('work/native/libjiagu_x86.so.b64.gz', verbose=False)
    uc = p.uc
    orig = p._handle_stub

    def handler(name, uc_, addr):
        if name in MEM_FUNCS:
            n = p._arg(uc_, 0)
            if n <= 0 or n > 1 << 22:
                n = 0x1000
            p._ret(uc_, p.heap.alloc(n))
            return
        orig(name, uc_, addr)

    p._handle_stub = handler

    mips = p.elf.sections['.mips']
    payload = p.data[mips['off']:mips['off'] + mips['size']]
    inbuf = ARG_BASE + 0x1000
    p.write(inbuf, payload)
    outbuf = ARG_BASE + 0x100000
    uc.mem_write(outbuf, b'\x00' * 0x878)

    entry = STACK_BASE + STACK_SIZE - 0x8000
    lb = entry - 0x3C
    SENTINEL_AT = lb
    SLOT = SENTINEL_AT + 0x00
    uc.mem_write(entry, struct.pack('<I', 0x0BADF00D))
    for i, val in enumerate([0x1024, inbuf, len(payload), outbuf, 0, 0, 0, 0, 0, 0, 0]):
        uc.mem_write(lb + i * 4, struct.pack('<I', val))
    uc.mem_write(lb - 0x0C, struct.pack('<I', outbuf))
    uc.mem_write(lb - 0x08, struct.pack('<I', outbuf))

    print('sentinel slot = %#010x (value %#x)' % (SLOT, 0x1024))
    print('locals base   = %#010x' % lb)
    print('the store at 0x6711 targets locals+0x18 = %#010x' % (lb + 0x18))
    print('=> a correct sentinel slot must be locals+0x18 for the scan to match\n')

    caught = []

    def w(uc_, access, address, size, value, user):
        if abs(address - SLOT) < 0x200 and len(caught) < 12:
            eip = uc_.reg_read(UC_X86_REG_EIP)
            ins = disasm_one(p.data, eip - BASE)
            caught.append((eip, address, size, value & 0xFFFFFFFF,
                           ins.text if ins else '?', uc_.reg_read(UC_X86_REG_ESP)))

    uc.hook_add(UC_HOOK_MEM_WRITE, w)
    uc.reg_write(UC_X86_REG_ESP, entry)
    uc.reg_write(UC_X86_REG_ECX, inbuf)
    uc.reg_write(UC_X86_REG_EDX, len(payload))
    try:
        uc.emu_start(BASE + 0x66e6, 0x0BADF00D, timeout=10_000_000, count=300_000)
    except UcError as e:
        print('stopped: %s eip=%#010x' % (e, uc.reg_read(UC_X86_REG_EIP)))

    print('\nwrites near the sentinel slot:')
    for eip, addr, size, value, text, esp in caught:
        print('   eip=%#010x  [%#010x] <- %#0*x (size %d)   esp=%#010x   %s'
              % (eip, addr, size * 2, value, size, esp, text))

    # now redo with the sentinel placed where the store actually lands
    print('\n=== retry with sentinel at locals+0x18 ===')
    p2 = JiaguHarness('work/native/libjiagu_x86.so.b64.gz', verbose=False)
    uc2 = p2.uc
    o2 = p2._handle_stub

    def h2(name, uc_, addr):
        if name in MEM_FUNCS:
            n = p2._arg(uc_, 0)
            if n <= 0 or n > 1 << 22:
                n = 0x1000
            p2._ret(uc_, p2.heap.alloc(n))
            return
        o2(name, uc_, addr)

    p2._handle_stub = h2
    p2.write(inbuf, payload)
    uc2.mem_write(outbuf, b'\x00' * 0x878)
    SENT = lb + 0x18           # <-- where the code stores the alloc size
    block = [0, 0, 0, 0, 0, 0, 0x1024, inbuf, len(payload), outbuf, 0]
    for i, val in enumerate(block):
        uc2.mem_write(SENT + i * 4, struct.pack('<I', val))
    uc2.mem_write(SENT - 0x0C, struct.pack('<I', outbuf))
    uc2.mem_write(SENT - 0x08, struct.pack('<I', outbuf))
    uc2.reg_write(UC_X86_REG_ESP, entry)
    uc2.reg_write(UC_X86_REG_ECX, inbuf)
    uc2.reg_write(UC_X86_REG_EDX, len(payload))
    seen = []
    uc2.hook_add(UC_HOOK_CODE, lambda uc_, a, s, u: seen.append((a - BASE,
                  uc_.reg_read(UC_X86_REG_EAX))) if (a - BASE) in (0x673d, 0x6749, 0x6767) else None)
    try:
        uc2.emu_start(BASE + 0x66e6, 0x0BADF00D, timeout=10_000_000, count=300_000)
        print('returned eax=%#010x' % uc2.reg_read(UC_X86_REG_EAX))
    except UcError as e:
        print('stopped: %s eip=%#010x' % (e, uc2.reg_read(UC_X86_REG_EIP)))
    print('checkpoints:', [hex(o) for o, _ in seen[:12]])
    print('stub calls:', p2.calls)
    raw = p2.read(outbuf, 48)
    print('output buffer:', raw.hex(' '))
    if raw[:4] == b'dex\n':
        print('*** DEX MAGIC FOUND ***')


if __name__ == '__main__':
    main()
