#!/usr/bin/env python3
"""Sample the VM's behaviour: what opcodes it executes and what it writes where."""
import os, struct, sys
from collections import Counter

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import UC_HOOK_CODE, UC_HOOK_MEM_WRITE, UcError
from unicorn.x86_const import (UC_X86_REG_EAX, UC_X86_REG_ECX, UC_X86_REG_EDX,
                               UC_X86_REG_EIP, UC_X86_REG_EBP, UC_X86_REG_ESI,
                               UC_X86_REG_ESP)
from jiagu_emu import ARG_BASE, BASE, HEAP_BASE, HEAP_SIZE, STACK_BASE, STACK_SIZE, JiaguHarness
from x86dis import disasm_one

MEM_FUNCS = ('_Znwj', '_ZdlPv', '_ZdaPv', '_Znaj', 'calloc', 'malloc', 'free')


def main():
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
    SENT = lb + 0x04
    blk = [0x1024, inbuf, outbuf, len(payload), 0, 0, 0, 0, 0, 0]
    for i, v in enumerate(blk):
        uc.mem_write(SENT + i * 4, struct.pack('<I', v))
    uc.mem_write(SENT - 0x08, struct.pack('<I', inbuf))
    uc.mem_write(SENT - 0x04, struct.pack('<I', outbuf))

    # sample the engine's own instruction addresses, and the byte the VM is reading
    engine_hits = Counter()
    first_hits = []
    mem_reads = []

    def h(uc_, a, s, u):
        off = a - BASE
        if 0x66e6 <= off < 0x6d20:          # .engine
            engine_hits[off] += 1
            if len(first_hits) < 40:
                first_hits.append((off, uc_.reg_read(UC_X86_REG_ESI),
                                   uc_.reg_read(UC_X86_REG_EAX),
                                   uc_.reg_read(UC_X86_REG_EBP)))

    uc.hook_add(UC_HOOK_CODE, h)
    uc.reg_write(UC_X86_REG_ESP, entry)
    uc.reg_write(UC_X86_REG_ECX, inbuf)
    uc.reg_write(UC_X86_REG_EDX, len(payload))
    try:
        uc.emu_start(BASE + 0x66e6, 0x0BADF00D, timeout=60_000_000, count=20_000_000)
        print('returned eax=%#x' % uc.reg_read(UC_X86_REG_EAX))
    except UcError as e:
        print('stopped: %s eip=%#x' % (e, uc.reg_read(UC_X86_REG_EIP)))

    print('\nengine instruction samples (first 40):')
    for off, esi, eax, ebp in first_hits:
        ins = disasm_one(p.data, off)
        print('   %06x  esi=%#010x eax=%#010x ebp=%#010x   %s'
              % (off, esi, eax, ebp, (ins.text if ins else '?')[:34]))

    print('\nhottest engine addresses (the VM inner loop):')
    for off, n in engine_hits.most_common(15):
        ins = disasm_one(p.data, off)
        print('   %06x  x%-9d %s' % (off, n, (ins.text if ins else '?')[:40]))

    print('\ntotal engine instructions executed: %d' % sum(engine_hits.values()))


if __name__ == '__main__':
    main()
