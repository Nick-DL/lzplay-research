#!/usr/bin/env python3
"""Step through __fun_a_18 and snapshot registers so the failure path is visible."""
import os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import UcError
from unicorn.x86_const import (UC_X86_REG_EAX, UC_X86_REG_EBP, UC_X86_REG_ECX,
                               UC_X86_REG_EDX, UC_X86_REG_EIP, UC_X86_REG_ESI,
                               UC_X86_REG_ESP)
from jiagu_emu import BASE, STACK_BASE, STACK_SIZE, ARG_BASE, JiaguHarness
from x86dis import disasm_one

DEC = 0x66e6
REGIONS = [(0x66e6, 0x6720), (0x6ce2, 0x6d20)]


def main():
    lib = sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz'
    p = JiaguHarness(lib, verbose=False)
    uc = p.uc

    mips = p.elf.sections['.mips']
    payload = p.data[mips['off']:mips['off'] + mips['size']]
    buf = ARG_BASE + 0x1000
    p.write(buf, payload)

    trace = []

    def hook(uc_, addr, size, user):
        for lo, hi in REGIONS:
            if lo <= addr < hi:
                trace.append((addr,
                              uc_.reg_read(UC_X86_REG_EAX),
                              uc_.reg_read(UC_X86_REG_EBP),
                              uc_.reg_read(UC_X86_REG_ECX),
                              uc_.reg_read(UC_X86_REG_EDX),
                              uc_.reg_read(UC_X86_REG_ESI),
                              uc_.reg_read(UC_X86_REG_ESP)))
                break

    from unicorn import UC_HOOK_CODE
    uc.hook_add(UC_HOOK_CODE, hook)

    # frame exactly as the .context trampoline would leave it, plus the sentinel
    esp = STACK_BASE + STACK_SIZE - 0x4000
    ret_magic = 0x0BADF00D
    frame = [ret_magic, len(payload), buf, 0x1024]
    for i, w in enumerate(frame):
        uc.mem_write(esp + i * 4, struct.pack('<I', w))
    uc.reg_write(UC_X86_REG_ESP, esp)
    uc.reg_write(UC_X86_REG_ECX, 0)
    uc.reg_write(UC_X86_REG_EDX, 0)
    print('frame @%#x: %s' % (esp, ' '.join(hex(w) for w in frame)))

    try:
        uc.emu_start(BASE + DEC, ret_magic, timeout=20_000_000, count=500_000)
        print('returned eax=%#x  ebp=%#x' % (uc.reg_read(UC_X86_REG_EAX),
                                             uc.reg_read(UC_X86_REG_EBP)))
    except UcError as e:
        print('stopped: %s eip=%#x' % (e, uc.reg_read(UC_X86_REG_EIP)))

    print('\n%-10s %-24s %-10s %-10s %-10s %-10s %-10s' %
          ('addr', 'insn', 'eax', 'ebp', 'ecx', 'edx', 'esi'))
    for row in trace:
        ins = disasm_one(p.data, row[0])
        print('%08x  %-24s %08x %08x %08x %08x %08x' %
              (row[0], (ins.text if ins else '?')[:24], row[1], row[2], row[3], row[4], row[5]))
        if row[0] == DEC and len(trace) > 1:
            pass
    print('\ntotal traced: %d' % len(trace))
    print('stub calls:', p.calls)


if __name__ == '__main__':
    main()
