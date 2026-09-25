#!/usr/bin/env python3
"""
Find where the Jiagu bytecode VM actually writes.

Instead of guessing which context slot holds the output pointer, watch every write
into the heap and the arg window, then look for DEX/ZIP magic in whatever was written.
"""
import os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import UC_HOOK_CODE, UC_HOOK_MEM_WRITE, UcError
from unicorn.x86_const import (UC_X86_REG_EAX, UC_X86_REG_ECX, UC_X86_REG_EDX,
                               UC_X86_REG_EIP, UC_X86_REG_ESI, UC_X86_REG_ESP)
from jiagu_emu import ARG_BASE, BASE, HEAP_BASE, HEAP_SIZE, STACK_BASE, STACK_SIZE, JiaguHarness
from x86dis import disasm_one

MEM_FUNCS = ('_Znwj', '_ZdlPv', '_ZdaPv', '_Znaj', 'calloc', 'malloc', 'free')
MAGICS = {b'dex\n': 'DEX', b'PK\x03\x04': 'ZIP', b'\x7fELF': 'ELF',
          b'\x1f\x8b': 'GZIP', b'cdex': 'CDEX'}


def main():
    sent_off = int(sys.argv[1], 16) if len(sys.argv) > 1 else 0x04
    p = JiaguHarness('work/native/libjiagu_x86.so.b64.gz', verbose=False)
    uc = p.uc
    orig = p._handle_stub

    def handler(name, uc_, addr):
        if name in MEM_FUNCS:
            n = p._arg(uc_, 0)
            if n <= 0 or n > (1 << 22):
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
    uc.mem_write(outbuf, b'\xAA' * 0x878)

    entry = STACK_BASE + STACK_SIZE - 0x8000
    lb = entry - 0x3C
    uc.mem_write(entry, struct.pack('<I', 0x0BADF00D))
    SENT = lb + sent_off
    blk = [0x1024, inbuf, outbuf, len(payload), 0, 0, 0, 0, 0, 0]
    for i, v in enumerate(blk):
        uc.mem_write(SENT + i * 4, struct.pack('<I', v))
    uc.mem_write(SENT - 0x08, struct.pack('<I', inbuf))
    uc.mem_write(SENT - 0x04, struct.pack('<I', outbuf))

    print('sentinel at locals+%#x (%#x)' % (sent_off, SENT))

    touched = {}

    def w(uc_, access, address, size, value, user):
        if (HEAP_BASE <= address < HEAP_BASE + HEAP_SIZE
                or ARG_BASE <= address < ARG_BASE + 0x200000
                or BASE <= address < BASE + 0x80000):
            key = address & ~0xFFF
            touched[key] = touched.get(key, 0) + 1

    uc.hook_add(UC_HOOK_MEM_WRITE, w)
    uc.reg_write(UC_X86_REG_ESP, entry)
    uc.reg_write(UC_X86_REG_ECX, inbuf)
    uc.reg_write(UC_X86_REG_EDX, len(payload))

    ret = None
    try:
        uc.emu_start(BASE + 0x66e6, 0x0BADF00D, timeout=90_000_000, count=50_000_000)
        ret = uc.reg_read(UC_X86_REG_EAX)
        print('returned eax=%#010x' % ret)
    except UcError as e:
        print('stopped: %s eip=%#010x' % (e, uc.reg_read(UC_X86_REG_EIP)))

    print('\nstub calls: %s' % p.calls)

    print('\nwritten pages (top 25 by write count):')
    for page, n in sorted(touched.items(), key=lambda kv: -kv[1])[:25]:
        print('   %#010x  %d writes' % (page, n))

    # scan every touched page for magics
    print('\n=== magic scan ===')
    found = False
    for page in sorted(touched):
        try:
            blob = p.read(page, 0x1000)
        except UcError:
            continue
        for magic, label in MAGICS.items():
            idx = blob.find(magic)
            if idx >= 0:
                print('   %s at %#010x' % (label, page + idx))
                found = True
    if not found:
        print('   no DEX/ZIP/ELF/GZIP magic in any written page')

    # also scan the big windows wholesale
    print('\n=== windows scan ===')
    for lo, hi, name in ((ARG_BASE, ARG_BASE + 0x200000, 'ARG'),
                         (HEAP_BASE, HEAP_BASE + HEAP_SIZE, 'HEAP')):
        try:
            blob = p.read(lo, hi - lo)
        except UcError:
            continue
        for magic, label in MAGICS.items():
            idx = blob.find(magic)
            if idx >= 0:
                print('   %s in %s at %#010x' % (label, name, lo + idx))

    ob = p.read(outbuf, 32)
    print('\noutbuf@%#x: %s' % (outbuf, ob.hex(' ')))


if __name__ == '__main__':
    main()
