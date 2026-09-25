#!/usr/bin/env python3
"""
Final decoder driver.

The clobber that stalled every previous attempt:

    66f7  lea  esp, [esp-0x2c]     ; locals base
    670a  mov  [esp], 0x878        ; <-- WRITES locals+0x00 (the alloc size)
    6715  call 0xf50               ; allocator
    673b  mov  eax, esp            ; scan starts at locals+0x00
    673d  cmp  [eax], 0x1024

so locals+0x00 can never hold the sentinel - it is overwritten with 0x878 one
instruction earlier.  The sentinel therefore has to live at locals+0x04, and the
field block is read from [found+4] .. [found+0x28].
"""
import os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import UC_HOOK_CODE, UC_HOOK_MEM_WRITE, UcError
from unicorn.x86_const import (UC_X86_REG_EAX, UC_X86_REG_ECX, UC_X86_REG_EDX,
                               UC_X86_REG_EBP, UC_X86_REG_EIP, UC_X86_REG_ESI,
                               UC_X86_REG_ESP)
from jiagu_emu import ARG_BASE, BASE, HEAP_BASE, HEAP_SIZE, STACK_BASE, STACK_SIZE, JiaguHarness
from x86dis import disasm_one

MEM_FUNCS = ('_Znwj', '_ZdlPv', '_ZdaPv', '_Znaj', 'calloc', 'malloc', 'free')
CP = (0x673d, 0x6743, 0x6749, 0x6767, 0x6770, 0x67b0, 0x6817, 0x6ce2, 0x6d15)


def build(force_mem_alloc=True):
    p = JiaguHarness('work/native/libjiagu_x86.so.b64.gz', verbose=False)
    uc = p.uc
    orig = p._handle_stub

    def handler(name, uc_, addr):
        if force_mem_alloc and name in MEM_FUNCS:
            n = p._arg(uc_, 0)
            if n <= 0 or n > 1 << 22:
                n = 0x1000
            p._ret(uc_, p.heap.alloc(n))
            return
        orig(name, uc_, addr)

    p._handle_stub = handler
    return p, uc


def main():
    p, uc = build()
    mips = p.elf.sections['.mips']
    payload = p.data[mips['off']:mips['off'] + mips['size']]
    inbuf = ARG_BASE + 0x1000
    p.write(inbuf, payload)
    outbuf = ARG_BASE + 0x100000
    uc.mem_write(outbuf, b'\x00' * 0x878)
    print('input  %#x (%d bytes)' % (inbuf, len(payload)))
    print('output %#x' % outbuf)

    entry = STACK_BASE + STACK_SIZE - 0x8000
    lb = entry - 0x3C
    uc.mem_write(entry, struct.pack('<I', 0x0BADF00D))

    # locals+0x00 gets clobbered with 0x878; put the sentinel at locals+0x04
    SENT = lb + 0x04
    block = [0x1024, inbuf, len(payload), outbuf, 0, 0, 0, 0]
    for i, val in enumerate(block):
        uc.mem_write(SENT + i * 4, struct.pack('<I', val))
    uc.mem_write(SENT - 0x10, struct.pack('<I', outbuf))   # [found-0xc]
    uc.mem_write(SENT - 0x0C, struct.pack('<I', outbuf))   # [found-0x8]
    print('\nsentinel at %#010x; block:' % SENT)
    for i, val in enumerate(block):
        print('   [%#010x] = %#010x' % (SENT + i * 4, val))

    seen = []
    writes = []

    def h(uc_, a, s, u):
        off = a - BASE
        if off in CP and len(seen) < 80:
            seen.append((off, uc_.reg_read(UC_X86_REG_EAX), uc_.reg_read(UC_X86_REG_ECX),
                         uc_.reg_read(UC_X86_REG_EDX), uc_.reg_read(UC_X86_REG_EBP),
                         uc_.reg_read(UC_X86_REG_ESI)))

    def w(uc_, access, address, size, value, user):
        if (ARG_BASE <= address < ARG_BASE + 0x200000 or HEAP_BASE <= address < HEAP_BASE + HEAP_SIZE):
            if len(writes) < 60:
                writes.append((address, size, value & 0xFFFFFFFF, uc_.reg_read(UC_X86_REG_EIP)))

    uc.hook_add(UC_HOOK_CODE, h)
    uc.hook_add(UC_HOOK_MEM_WRITE, w)
    uc.reg_write(UC_X86_REG_ESP, entry)
    uc.reg_write(UC_X86_REG_ECX, inbuf)
    uc.reg_write(UC_X86_REG_EDX, len(payload))

    print('\n=== emulating ===')
    try:
        uc.emu_start(BASE + 0x66e6, 0x0BADF00D, timeout=90_000_000, count=50_000_000)
        print('returned eax=%#010x' % uc.reg_read(UC_X86_REG_EAX))
    except UcError as e:
        print('stopped: %s  eip=%#010x' % (e, uc.reg_read(UC_X86_REG_EIP)))

    print('\n--- checkpoints ---')
    print('%-8s %-10s %-10s %-10s %-10s %-10s' % ('addr', 'eax', 'ecx', 'edx', 'ebp', 'esi'))
    for off, eax, ecx, edx, ebp, esi in seen[:40]:
        ins = disasm_one(p.data, off)
        print('%06x  %08x %08x %08x %08x %08x   %s'
              % (off, eax, ecx, edx, ebp, esi, (ins.text if ins else '?')[:34]))

    print('\n--- stub calls ---')
    for k, v in sorted(p.calls.items()):
        print('   %-32s x%d' % (k, v))

    print('\n--- writes (first 24) ---')
    for addr, size, value, eip in writes[:24]:
        print('   %#010x <- %#0*x (size %d) @ eip=%#x' % (addr, size * 2, value, size, eip))

    raw = p.read(outbuf, 64)
    print('\n--- output buffer ---')
    print('   ' + raw.hex(' '))
    if raw[:4] == b'dex\n':
        print('   *** DEX MAGIC FOUND ***')


if __name__ == '__main__':
    main()
