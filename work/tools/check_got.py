#!/usr/bin/env python3
"""Check whether the GOT slots were relocated to stub addresses, and which libc
symbol each thunk actually reaches at runtime."""
import os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import UcError
from jiagu_emu import BASE, JiaguHarness
from x86dis import disasm_one

PIC = 0x9f48


def rd(uc, addr):
    try:
        return struct.unpack('<I', uc.mem_read(addr, 4))[0]
    except UcError:
        return None


def main():
    path = sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz'
    p = JiaguHarness(path, verbose=False)
    uc = p.uc
    stubrev = getattr(p, '_stub_rev', {})
    print('relocated GOT base (PIC) = %#x' % PIC)
    print('number of stub trampolines built: %d' % len(stubrev))
    print()
    print('%-10s %-12s %-12s %s' % ('thunk', 'slot(runtime)', 'value', 'symbol'))
    a = 0xd50
    while a < 0x1000:
        ins = disasm_one(p.data, a)
        if ins is None or ins.size == 0:
            a += 1
            continue
        if ins.text.startswith('jmp [ebx+'):
            disp = int(ins.text.split('+')[1].rstrip(']'), 16)
            slot = (PIC + disp) & 0xFFFFFFFF
            val = rd(uc, slot)
            name = stubrev.get(val, '') if val is not None else '<unmapped>'
            print('  %#06x   %#010x  %-12s %s' % (a, slot,
                                                  ('%#x' % val) if val is not None else 'UNMAPPED',
                                                  name))
        a += max(ins.size, 1)

    print('\n--- for cross-check, what the relocation loop computed ---')
    syms = p.elf.symbols()
    for off, typ, sym, secname in p.elf.relocations():
        nm = syms[sym][0] if sym < len(syms) else '?'
        if nm in ('_Znwj', '_Znaj', 'malloc', 'calloc', '_ZdlPv', '_ZdaPv', 'free'):
            va = BASE + off
            print('  %-9s off=%#08x type=%-3d sym=%-10s -> wrote stub at %#010x, runtime value=%s'
                  % (secname, off, typ, nm, va,
                     ('%#x' % rd(uc, va)) if rd(uc, va) is not None else 'UNMAPPED'))


if __name__ == '__main__':
    main()
