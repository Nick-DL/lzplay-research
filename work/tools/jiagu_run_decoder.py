#!/usr/bin/env python3
"""
Drive __fun_a_18 along its SUCCESS path.

The frame arithmetic that matters (derived from the prologue):

    66e6  push ebp            (4)
    66e7  push edi            (4)
    66e8  push esi            (4)
    66eb  push ebx            (4)
    66f7  lea  esp, [esp-0x2c]
    -> locals base = entry_esp - 0x3c

    66f7  lea  esp, [esp-0x2c]
    66fb  test ecx, ecx   / je 0x6703     ; ecx must be non-zero
    66ff  test edx, edx   / jne 0x670a    ; edx must be non-zero
    670a  mov  [esp], 0x878               ; alloc 0x878
    6711  mov  [esp+0x18], edx            ; save edx at locals+0x18
    6715  call 0xf50                      ; allocator
    673b  mov  eax, esp                   ; locals base (== locals+0x00)
    673d  cmp  [eax], 0x1024              ; scan for the sentinel
    6743  jne  0x67f2                     ;   miss -> eax += 4, loop
    6749  mov  [eax], 0
    674f  lea  ecx, [eax-0xc]  -> ctx+0x820
    6758  mov  esi, [eax-0xc]  -> ctx+0x824
    6767  lea  esi, [eax-0x8]  -> ctx+0x828   ; <- output buffer pointer
    6770  mov  ecx, [eax+0x4]  -> ctx+0x00
    ...
    67b0  mov  eax, [eax+0x28] -> ctx+0x24
    ... then the bytecode VM runs ...
    6cf2  copy 40 bytes ctx[0..0x27] -> *(ctx+0x828)
    6d15  return *(ctx+0x828)

So we lay [0x1024][f1..f10] at locals+0x00 and put an output buffer at locals-0x08.
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
from jiagu_emu import (ARG_BASE, BASE, HEAP_BASE, HEAP_SIZE, STACK_BASE,
                       STACK_SIZE, JiaguHarness)
from x86dis import disasm_one

DEC = 0x66e6
LOCAL_OFF = 0x3C          # entry_esp - locals_base


def main():
    lib = sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz'
    p = JiaguHarness(lib, verbose=True)
    uc = p.uc

    mips = p.elf.sections['.mips']
    payload = p.data[mips['off']:mips['off'] + mips['size']]
    inbuf = ARG_BASE + 0x1000
    p.write(inbuf, payload)
    outbuf = ARG_BASE + 0x100000          # 0x878 bytes of scratch for the decoder output
    uc.mem_write(outbuf, b'\x00' * 0x878)
    print('input  buffer %#x (%d bytes)' % (inbuf, len(payload)))
    print('output buffer %#x' % outbuf)

    trace = []

    def hook(uc_, addr, size, user):
        if addr in (DEC, 0x6703, 0x670a, 0x6715, 0x673b, 0x673d, 0x6743, 0x6749,
                    0x674f, 0x6767, 0x67b0, 0x6817, 0x6ce2, 0x6d15):
            trace.append((addr, uc_.reg_read(UC_X86_REG_EAX), uc_.reg_read(UC_X86_REG_ECX),
                          uc_.reg_read(UC_X86_REG_EDX), uc_.reg_read(UC_X86_REG_EBP),
                          uc_.reg_read(UC_X86_REG_ESP), uc_.reg_read(UC_X86_REG_ESI)))

    uc.hook_add(UC_HOOK_CODE, hook)

    writes = []

    def w_hook(uc_, access, address, size, value, user):
        if HEAP_BASE <= address < HEAP_BASE + HEAP_SIZE or ARG_BASE <= address < ARG_BASE + 0x200000:
            if len(writes) < 200:
                writes.append((address, size, value & 0xFFFFFFFF, uc_.reg_read(UC_X86_REG_EIP)))

    uc.hook_add(UC_HOOK_MEM_WRITE, w_hook)

    # ---------------- build the frame -------------------------------------
    entry_esp = STACK_BASE + STACK_SIZE - 0x8000
    locals_base = entry_esp - LOCAL_OFF
    ret_magic = 0x0BADF00D
    uc.mem_write(entry_esp, struct.pack('<I', ret_magic))

    # the scanned block: [sentinel][f1..f10] starting exactly at locals_base
    fields = [0x1024, inbuf, len(payload), outbuf, 0, 0, 0, 0, 0, 0, 0]
    for i, w in enumerate(fields):
        uc.mem_write(locals_base + i * 4, struct.pack('<I', w))
    # [locals-0x0c] and [locals-0x08]: the decoder reads these into ctx+0x820/0x824/0x828
    uc.mem_write(locals_base - 0x0C, struct.pack('<I', outbuf))
    uc.mem_write(locals_base - 0x08, struct.pack('<I', outbuf))

    print('\nlocals base %#x ; sentinel block:' % locals_base)
    for i, w in enumerate(fields):
        print('   [locals+%#04x] = %#010x' % (i * 4, w))
    print('   [locals-0x0c] = %#010x' % outbuf)
    print('   [locals-0x08] = %#010x' % outbuf)

    uc.reg_write(UC_X86_REG_ESP, entry_esp)
    uc.reg_write(UC_X86_REG_ECX, inbuf)        # non-zero
    uc.reg_write(UC_X86_REG_EDX, len(payload))  # non-zero

    print('\n=== emulating __fun_a_18 (ecx=%#x, edx=%#x) ===' % (inbuf, len(payload)))
    try:
        uc.emu_start(BASE + DEC, ret_magic, timeout=60_000_000, count=20_000_000)
        print('returned eax=%#x' % uc.reg_read(UC_X86_REG_EAX))
    except UcError as e:
        print('stopped: %s  eip=%#x' % (e, uc.reg_read(UC_X86_REG_EIP)))

    print('\n--- key checkpoints ---')
    print('%-10s %-10s %-10s %-10s %-10s %-10s %-10s' %
          ('addr', 'eax', 'ecx', 'edx', 'ebp', 'esp', 'esi'))
    for row in trace:
        ins = disasm_one(p.data, row[0])
        print('%08x  %08x %08x %08x %08x %08x %08x   %s' %
              (row[0], row[1], row[2], row[3], row[4], row[5], row[6],
               (ins.text if ins else '?')[:34]))

    print('\n--- stub calls ---')
    for k, v in sorted(p.calls.items()):
        print('   %-30s x%d' % (k, v))

    print('\n--- recorded writes (first 40) ---')
    for addr, size, value, eip in writes[:40]:
        print('   %#010x <- %#0*x (size %d) @ eip=%#x' % (addr, size * 2, value, size, eip))

    print('\n--- output buffer first 64 bytes ---')
    raw = p.read(outbuf, 64)
    print('   ' + raw.hex(' '))
    if raw[:4] == b'dex\n':
        print('   *** DEX MAGIC FOUND ***')


if __name__ == '__main__':
    main()
