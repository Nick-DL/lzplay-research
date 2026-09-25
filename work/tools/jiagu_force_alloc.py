#!/usr/bin/env python3
"""
Empirical decoder driver.

The library's .rel.plt slot/symbol pairing cannot be trusted (360 shuffles it), so
instead of implementing libc by name we make every memory-management stub behave as
an allocator.  That is harmless if the name is right and unblocks us if it is wrong -
and it tells us whether the bogus allocator is the only thing standing between us and
the decoder's success path.
"""
import os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import UC_HOOK_CODE, UC_HOOK_MEM_WRITE, UcError
from unicorn.x86_const import (UC_X86_REG_EAX, UC_X86_REG_EBP, UC_X86_REG_ECX,
                               UC_X86_REG_EDX, UC_X86_REG_EIP, UC_X86_REG_ESI,
                               UC_X86_REG_ESP)
from jiagu_emu import ARG_BASE, BASE, HEAP_BASE, HEAP_SIZE, STACK_BASE, STACK_SIZE, JiaguHarness
from x86dis import disasm_one

MEM_FUNCS = ('_Znwj', '_ZdlPv', '_ZdaPv', '_Znaj', 'calloc', 'malloc', 'free')
CHECKPOINTS = (0x66e6, 0x6703, 0x670a, 0x6715, 0x671a, 0x671e, 0x673b, 0x673d,
               0x6743, 0x6749, 0x6767, 0x67b0, 0x6817, 0x6ce2, 0x6d15)


def main():
    path = sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz'
    p = JiaguHarness(path, verbose=False)
    uc = p.uc

    # --- force every memory-management stub to allocate -------------------
    patched = []
    for name, stub in getattr(p, '_stub_map', {}).items():
        if name in MEM_FUNCS:
            patched.append(name)
    print('memory-management stubs found: %s' % patched)

    orig = p._handle_stub
    force = set()

    def handler(name, uc_, addr):
        if name in MEM_FUNCS:
            n = p._arg(uc_, 0)
            if n < 0 or n > 1 << 22:
                n = 0x1000
            q = p.heap.alloc(n)
            force.add(name)
            print('    [mem] %-8s(%#x) -> %#x' % (name, n, q))
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

    seen = []
    writes = []

    def h(uc_, a, s, u):
        off = a - BASE
        if off in CHECKPOINTS and len(seen) < 60:
            seen.append((off, uc_.reg_read(UC_X86_REG_EAX), uc_.reg_read(UC_X86_REG_ECX),
                         uc_.reg_read(UC_X86_REG_EDX), uc_.reg_read(UC_X86_REG_EBP),
                         uc_.reg_read(UC_X86_REG_ESI), uc_.reg_read(UC_X86_REG_ESP)))

    def w(uc_, access, address, size, value, user):
        if (HEAP_BASE <= address < HEAP_BASE + HEAP_SIZE
                or ARG_BASE <= address < ARG_BASE + 0x200000):
            if len(writes) < 120:
                writes.append((address, size, value & 0xFFFFFFFF, uc_.reg_read(UC_X86_REG_EIP)))

    uc.hook_add(UC_HOOK_CODE, h)
    uc.hook_add(UC_HOOK_MEM_WRITE, w)

    entry = STACK_BASE + STACK_SIZE - 0x8000
    lb = entry - 0x3C
    uc.mem_write(entry, struct.pack('<I', 0x0BADF00D))
    for i, val in enumerate([0x1024, inbuf, len(payload), outbuf, 0, 0, 0, 0, 0, 0, 0]):
        uc.mem_write(lb + i * 4, struct.pack('<I', val))
    uc.mem_write(lb - 0x0C, struct.pack('<I', outbuf))
    uc.mem_write(lb - 0x08, struct.pack('<I', outbuf))
    uc.reg_write(UC_X86_REG_ESP, entry)
    uc.reg_write(UC_X86_REG_ECX, inbuf)
    uc.reg_write(UC_X86_REG_EDX, len(payload))

    print('\n=== running decoder with allocator-forcing stub ===')
    try:
        uc.emu_start(BASE + 0x66e6, 0x0BADF00D, timeout=60_000_000, count=30_000_000)
        print('returned eax=%#010x' % uc.reg_read(UC_X86_REG_EAX))
    except UcError as e:
        print('stopped: %s  eip=%#010x' % (e, uc.reg_read(UC_X86_REG_EIP)))

    print('\n--- checkpoints ---')
    print('%-8s %-10s %-10s %-10s %-10s %-10s' %
          ('addr', 'eax', 'ecx', 'edx', 'ebp', 'esi'))
    for off, eax, ecx, edx, ebp, esi, esp in seen:
        ins = disasm_one(p.data, off)
        print('%06x  %08x %08x %08x %08x %08x   %s'
              % (off, eax, ecx, edx, ebp, esi, (ins.text if ins else '?')[:32]))

    print('\n--- stub call histogram ---')
    for k, v in sorted(p.calls.items()):
        print('   %-32s x%d' % (k, v))

    print('\n--- writes (first 30) ---')
    for addr, size, value, eip in writes[:30]:
        print('   %#010x <- %#0*x (size %d) @ eip=%#x'
              % (addr, size * 2, value, size, eip))

    raw = p.read(outbuf, 64)
    print('\n--- output buffer ---')
    print('   ' + raw.hex(' '))
    if raw[:4] == b'dex\n':
        print('   *** DEX MAGIC FOUND ***')


if __name__ == '__main__':
    main()
