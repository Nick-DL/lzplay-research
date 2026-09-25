#!/usr/bin/env python3
"""
Decisive experiment: treat the obfuscated table at .rodata+0x12c (0x6e90) as the
VM's bytecode program, and the .mips payload as its data.

Rationale (from the round-8 characterisation):
  * the VM dispatch table lives at .rodata+0x12c (0x6e90), indexed by a byte <= 0x1d
  * ctx+0x808 is the input buffer and ctx+0x80c its length
  * the packer's own code loads 19-byte chunks from .rodata near 0x6f4c / 0x6f60,
    which is exactly the region following that table
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
MAGICS = {b'dex\n': 'DEX', b'PK\x03\x04': 'ZIP', b'\x7fELF': 'ELF', b'\x1f\x8b': 'GZIP'}


def main():
    deobf = '--deobf' in sys.argv
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

    ro = p.elf.sections['.rodata']
    # VM program candidate: .rodata + 0x12c .. end
    prog_off = ro['off'] + 0x12C
    prog_len = ro['size'] - 0x12C
    prog = bytearray(p.data[prog_off:prog_off + prog_len])
    if deobf:
        prog = bytearray(b ^ 0xA5 for b in prog)
    print('VM program candidate: %d bytes from .rodata+0x12c (%s)'
          % (len(prog), 'deobfuscated with 0xa5' if deobf else 'raw'))
    print('   first 48 bytes: %s' % bytes(prog[:48]).hex(' '))

    mips = p.elf.sections['.mips']
    payload = p.data[mips['off']:mips['off'] + mips['size']]

    prog_buf = ARG_BASE + 0x2000
    p.write(prog_buf, bytes(prog))
    data_buf = ARG_BASE + 0x10000
    p.write(data_buf, payload)
    scratch = ARG_BASE + 0x100000
    uc.mem_write(scratch, b'\xAA' * 0x1000)
    slot4 = ARG_BASE + 0x108000
    uc.mem_write(slot4, b'\x00' * 4)

    entry = STACK_BASE + STACK_SIZE - 0x8000
    lb = entry - 0x3C
    uc.mem_write(entry, struct.pack('<I', 0x0BADF00D))
    SENT = lb + 0x04
    # [found-0x0c] -> slot4 (4-byte writable), [found-0x08] -> scratch (output)
    uc.mem_write(SENT - 0x0C, struct.pack('<I', slot4))
    uc.mem_write(SENT - 0x08, struct.pack('<I', scratch))
    # post-sentinel fields: [found+0x00] .. [found+0x24]
    blk = [0x1024, prog_buf, len(prog), data_buf, len(payload), 0, 0, 0, 0, 0]
    for i, v in enumerate(blk):
        uc.mem_write(SENT + i * 4, struct.pack('<I', v))

    print('\nlayout:')
    print('   [sent-0x0c] = %#x  (4-byte slot)' % slot4)
    print('   [sent-0x08] = %#x  (output scratch)' % scratch)
    for i, v in enumerate(blk):
        print('   [sent+%#04x] = %#010x' % (i * 4, v))

    hot = {}
    writes = []

    def h(uc_, a, s, u):
        off = a - BASE
        hot[off] = hot.get(off, 0) + 1

    def w(uc_, access, address, size, value, user):
        if ARG_BASE <= address < ARG_BASE + 0x200000:
            if len(writes) < 40:
                writes.append((address, size, value & 0xFFFFFFFF, uc_.reg_read(UC_X86_REG_EIP)))

    uc.hook_add(UC_HOOK_CODE, h)
    uc.hook_add(UC_HOOK_MEM_WRITE, w)
    uc.reg_write(UC_X86_REG_ESP, entry)
    uc.reg_write(UC_X86_REG_ECX, prog_buf)      # ctx+0x808
    uc.reg_write(UC_X86_REG_EDX, len(prog))     # ctx+0x80c

    try:
        uc.emu_start(BASE + 0x66e6, 0x0BADF00D, timeout=60_000_000, count=20_000_000)
        print('\nreturned eax=%#010x' % uc.reg_read(UC_X86_REG_EAX))
    except UcError as e:
        print('\nstopped: %s eip=%#010x' % (e, uc.reg_read(UC_X86_REG_EIP)))

    print('\nhot addresses:')
    for off, n in sorted(hot.items(), key=lambda kv: -kv[1])[:10]:
        ins = disasm_one(p.data, off)
        print('   %06x x%-9d %s' % (off, n, (ins.text if ins else '?')[:40]))

    print('\nwrites in arg window:')
    for a, s, v, e in writes[:20]:
        print('   %#010x <- %#0*x (size %d) @ %#x' % (a, s * 2, v, s, e))

    print('\nstub calls: %s' % p.calls)

    print('\nmagic scan:')
    for lo, hi, nm in ((ARG_BASE, ARG_BASE + 0x200000, 'ARG'),):
        blob = p.read(lo, hi - lo)
        for magic, label in MAGICS.items():
            i = blob.find(magic)
            if i >= 0:
                print('   %s at %#010x' % (label, lo + i))


if __name__ == '__main__':
    main()
