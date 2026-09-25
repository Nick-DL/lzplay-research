#!/usr/bin/env python3
"""Resolve every PLT-style thunk's GOT slot and report the libc symbol behind it."""
import os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import UcError
from jiagu_emu import BASE, JiaguHarness
from x86dis import disasm_one

PIC = 0x9f48


def safe_read(uc, addr, n=4):
    try:
        return struct.unpack('<I', uc.mem_read(addr, n))[0]
    except UcError:
        return None


def main():
    path = sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz'
    p = JiaguHarness(path, verbose=False)
    uc = p.uc
    stubrev = getattr(p, '_stub_rev', {})

    # which pages did we actually map?
    mapped = []
    for va, blob, w in p.elf.load_segments():
        mapped.append((va & ~0xFFF, (va + len(blob) + 0xFFF) & ~0xFFF))
    print('mapped segment pages:')
    for lo, hi in mapped:
        print('   %#010x .. %#010x' % (lo, hi))
    print('GOT/PLT area target: %#x .. %#x' % (0x9d70, 0x9d70 + 449752))
    print('  -> is %#x inside a mapped page? %s' % (PIC, any(lo <= PIC < hi for lo, hi in mapped)))
    print('  -> is %#x inside? %s' % (PIC + 0x88, any(lo <= PIC + 0x88 < hi for lo, hi in mapped)))
    print()

    print('--- thunks in 0xd50..0x1000 ---')
    a = 0xd50
    while a < 0x1000:
        ins = disasm_one(p.data, a)
        if ins is None or ins.size == 0:
            a += 1
            continue
        if ins.text.startswith('jmp [ebx+'):
            try:
                disp = int(ins.text.split('+')[1].rstrip(']'), 16)
            except Exception:
                a += ins.size
                continue
            va = (PIC + disp) & 0xFFFFFFFF
            val = safe_read(uc, va)
            name = stubrev.get(val, '?') if val is not None else '<unmapped>'
            print('  thunk %#06x  jmp [ebx+%#06x] -> slot %#010x = %s   %s'
                  % (a, disp, va,
                     ('%#010x' % val) if val is not None else 'UNMAPPED',
                     name))
        a += max(ins.size, 1)

    # direct: what does the thunk at 0xf50 do, and what does its slot hold?
    ins = disasm_one(p.data, 0xf50)
    print('\nthunk 0xf50: %s' % (ins.text if ins else '?'))
    if ins and 'ebx+' in ins.text:
        disp = int(ins.text.split('+')[1].rstrip(']'), 16)
        va = (PIC + disp) & 0xFFFFFFFF
        val = safe_read(uc, va)
        print('   slot %#x -> %s' % (va, ('%#010x = %s' % (val, stubrev.get(val, '?')))
                                     if val is not None else 'UNMAPPED'))
    # what is at 0x88 relative to .got.plt start (0x9f48)?
    for disp in (0x80, 0x84, 0x88, 0x8c):
        va = PIC + disp
        val = safe_read(uc, va)
        print('   [%#06x] = %s' % (va, ('%#010x %s' % (val, stubrev.get(val, ''))) if val is not None else 'UNMAPPED'))


if __name__ == '__main__':
    main()
