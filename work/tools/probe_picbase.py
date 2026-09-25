#!/usr/bin/env python3
"""Determine the actual runtime PIC base (ebx) so the GOT relocation model is clear."""
import os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import UC_HOOK_CODE, UcError
from unicorn.x86_const import (UC_X86_REG_EAX, UC_X86_REG_EBX, UC_X86_REG_ECX,
                               UC_X86_REG_EDX, UC_X86_REG_EIP, UC_X86_REG_ESP)
from jiagu_emu import ARG_BASE, BASE, STACK_BASE, STACK_SIZE, JiaguHarness
from x86dis import disasm_one


def main():
    p = JiaguHarness('work/native/libjiagu_x86.so.b64.gz', verbose=False)
    uc = p.uc
    mips = p.elf.sections['.mips']
    payload = p.data[mips['off']:mips['off'] + mips['size']]
    inbuf = ARG_BASE + 0x1000
    p.write(inbuf, payload)
    outbuf = ARG_BASE + 0x100000
    uc.mem_write(outbuf, b'\x00' * 0x878)

    WATCH = (0x100066ec, 0x100066f1, 0x10006715, 0x10000f50, 0x10000f52,
             0x1000671a, 0x1000673b, 0x1000673d, 0x10006d15)
    watch = {}

    def h(uc_, a, s, u):
        if a in WATCH:
            watch[a] = (uc_.reg_read(UC_X86_REG_EBX), uc_.reg_read(UC_X86_REG_EAX),
                        uc_.reg_read(UC_X86_REG_ESP))

    uc.hook_add(UC_HOOK_CODE, h)

    entry = STACK_BASE + STACK_SIZE - 0x8000
    lb = entry - 0x3C
    uc.mem_write(entry, struct.pack('<I', 0x0BADF00D))
    for i, w in enumerate([0x1024, inbuf, len(payload), outbuf, 0, 0, 0, 0, 0, 0, 0]):
        uc.mem_write(lb + i * 4, struct.pack('<I', w))
    uc.mem_write(lb - 0x0C, struct.pack('<I', outbuf))
    uc.mem_write(lb - 0x08, struct.pack('<I', outbuf))
    uc.reg_write(UC_X86_REG_ESP, entry)
    uc.reg_write(UC_X86_REG_ECX, inbuf)
    uc.reg_write(UC_X86_REG_EDX, len(payload))

    try:
        uc.emu_start(BASE + 0x66e6, 0x0BADF00D, timeout=30_000_000, count=5_000_000)
    except UcError as e:
        print('stopped: %s' % e)

    print('BASE                = %#010x' % BASE)
    print('BASE + 0x9f48 (GOT) = %#010x' % (BASE + 0x9f48))
    print('0x9f48 (raw)        = %#010x' % 0x9f48)
    print()
    print('%-12s %-12s %-12s %-12s  %s' % ('at', 'ebx', 'eax', 'esp', 'instruction'))
    for a in sorted(watch):
        ins = disasm_one(p.data, a - BASE)
        ebx, eax, esp = watch[a]
        print('%#010x  %#010x  %#010x  %#010x  %s'
              % (a, ebx, eax, esp, ins.text if ins else '?'))
    print()
    print('stub calls: %s' % p.calls)


if __name__ == '__main__':
    main()
