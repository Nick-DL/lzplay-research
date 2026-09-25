#!/usr/bin/env python3
"""Find out why the sentinel scan at 0x673d does not match the value we planted."""
import os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import UC_HOOK_CODE, UcError
from unicorn.x86_const import (UC_X86_REG_EAX, UC_X86_REG_ECX, UC_X86_REG_EDX,
                               UC_X86_REG_EBP, UC_X86_REG_EIP, UC_X86_REG_ESP)
from jiagu_emu import ARG_BASE, BASE, HEAP_BASE, STACK_BASE, STACK_SIZE, JiaguHarness
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
            q = p.heap.alloc(n)
            p._ret(uc_, q)
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
    print('entry_esp (frame) = %#010x' % entry)
    print('locals base       = %#010x' % lb)
    uc.mem_write(entry, struct.pack('<I', 0x0BADF00D))
    for i, val in enumerate([0x1024, inbuf, len(payload), outbuf, 0, 0, 0, 0, 0, 0, 0]):
        uc.mem_write(lb + i * 4, struct.pack('<I', val))
    uc.mem_write(lb - 0x0C, struct.pack('<I', outbuf))
    uc.mem_write(lb - 0x08, struct.pack('<I', outbuf))

    # verify what is actually in memory right now
    print('\nmemory check before run:')
    for i in range(3):
        v = struct.unpack('<I', uc.mem_read(lb + i * 4, 4))[0]
        print('   [%#010x] = %#010x' % (lb + i * 4, v))

    hits = []

    def h(uc_, a, s, u):
        off = a - BASE
        if off in (0x66f7, 0x673b, 0x673d):
            esp = uc_.reg_read(UC_X86_REG_ESP)
            val = struct.unpack('<I', uc_.mem_read(uc_.reg_read(UC_X86_REG_EAX), 4))[0] \
                if off == 0x673d else None
            hits.append((off, esp, uc_.reg_read(UC_X86_REG_EAX), val))
            if off == 0x673d and len(hits) < 6:
                print('   at 0x673d: esp=%#010x eax=%#010x [eax]=%s'
                      % (esp, uc_.reg_read(UC_X86_REG_EAX),
                         ('%#x' % val) if val is not None else '?'))

    uc.hook_add(UC_HOOK_CODE, h)
    uc.reg_write(UC_X86_REG_ESP, entry)
    uc.reg_write(UC_X86_REG_ECX, inbuf)
    uc.reg_write(UC_X86_REG_EDX, len(payload))
    try:
        uc.emu_start(BASE + 0x66e6, 0x0BADF00D, timeout=10_000_000, count=200_000)
    except UcError as e:
        print('\nstopped: %s eip=%#010x' % (e, uc.reg_read(UC_X86_REG_EIP)))

    print('\nfirst checkpoints (offset, esp, eax, [eax]):')
    for off, esp, eax, val in hits[:10]:
        ins = disasm_one(p.data, off)
        print('   %06x  esp=%#010x eax=%#010x [eax]=%-12s %s'
              % (off, esp, eax, ('%#x' % val) if val is not None else '-',
                 ins.text if ins else '?'))


if __name__ == '__main__':
    main()
