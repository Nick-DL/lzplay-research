#!/usr/bin/env python3
"""
Round-4 follow-up: drive the decoder the way the packer itself does.

Finding from static analysis: `.context` (0x6d20) is a 65-byte executable x86
trampoline:

    pushfd
    push 0x1024        ; the sentinel __fun_a_18 scans the stack for
    push edx           ; arg2
    push ecx           ; arg1
    call 0x66e6        ; __fun_a_18
    mov  esp, eax      ; returns a context struct pointer in eax
    popfd
    mov  ebx,[eax+8] / ecx,[eax+0xc] / edx,[eax+0x10] / esi,[eax+0x14]
    mov  edi,[eax+0x1c] / ebp,[eax+0x20] / esp,[eax+0x24] / eax,[eax+0x18]
    add  eax, 0x18
    jmp  eax

So the decoder is entered through a stack frame, not through ecx/edx alone.
This script calls the trampoline and dumps whatever context struct comes back.
"""
import io, os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))
sys.path.insert(0, HERE)

from unicorn import (Uc, UcError, UC_ARCH_X86, UC_MODE_32, UC_HOOK_CODE,
                     UC_HOOK_MEM_WRITE, UC_HOOK_MEM_UNMAPPED, UC_HOOK_MEM_INVALID,
                     UC_PROT_ALL)
from unicorn.x86_const import (UC_X86_REG_ESP, UC_X86_REG_EAX, UC_X86_REG_ECX,
                               UC_X86_REG_EDX, UC_X86_REG_EIP)
from jiagu_emu import (BASE, STACK_BASE, STACK_SIZE, ARG_BASE, ARG_SIZE,
                       HEAP_BASE, HEAP_SIZE, JiaguHarness)

TRAMPOLINE = 0x6d20
CONTEXT_SIZE = 0x878


class DecoderProbe(JiaguHarness):
    def __init__(self, libpath):
        self.writes = []
        super(DecoderProbe, self).__init__(libpath, verbose=True)
        # restore the original trampoline body (the generic loader is fine, but be explicit)
        ctx = self.elf.sections['.context']
        self.uc.mem_write(BASE + ctx['addr'], self.data[ctx['off']:ctx['off'] + ctx['size']])
        self.uc.hook_add(UC_HOOK_MEM_WRITE, self._hook_write)

    def _hook_write(self, uc, access, address, size, value, user):
        # only record writes inside the heap (i.e. the decoder's own structures)
        if HEAP_BASE <= address < HEAP_BASE + HEAP_SIZE:
            if len(self.writes) < 400:
                self.writes.append((address, size, value & 0xFFFFFFFF,
                                    uc.reg_read(UC_X86_REG_EIP)))

    def dump_writes(self, limit=80):
        print('  %d recorded heap writes (first %d):' % (len(self.writes), min(limit, len(self.writes))))
        for addr, size, value, eip in self.writes[:limit]:
            print('    %#010x <- %#0*x (size %d)  at eip=%#x'
                  % (addr, size * 2, value, size, eip))


def main():
    lib = sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz'
    p = DecoderProbe(lib)

    mips = p.elf.sections['.mips']
    payload = p.data[mips['off']:mips['off'] + mips['size']]
    buf = ARG_BASE + 0x1000
    p.write(buf, payload)
    print('payload at %#x, %d bytes' % (buf, len(payload)))

    # --- attempt A: enter the .context trampoline directly -------------------
    # Build a frame that looks like the packer's own:
    #   the trampoline does pushfd; push 0x1024; push edx; push ecx; call 0x66e6
    # so we only need ecx/edx set and a return address underneath.
    print('\n=== ATTEMPT A: jump into .context trampoline with ecx/edx set ===')
    uc = p.uc
    esp = STACK_BASE + STACK_SIZE - 0x2000
    ret_magic = 0x0BADF00D
    uc.mem_write(esp, struct.pack('<I', ret_magic))
    uc.reg_write(UC_X86_REG_ESP, esp)
    uc.reg_write(UC_X86_REG_ECX, buf)
    uc.reg_write(UC_X86_REG_EDX, len(payload))
    print('  ecx=%#x (payload)  edx=%#x (len)  esp=%#x' % (buf, len(payload), esp))
    try:
        uc.emu_start(BASE + TRAMPOLINE, ret_magic, timeout=30_000_000, count=5_000_000)
        print('  finished; eax=%#x' % uc.reg_read(UC_X86_REG_EAX))
    except UcError as e:
        print('  stopped: %s  (eip=%#x)' % (e, uc.reg_read(UC_X86_REG_EIP)))
    p.dump_writes()

    # --- attempt B: enter the decoder with a pre-built sentinel frame --------
    print('\n=== ATTEMPT B: hand-built sentinel frame -> call __fun_a_18 ===')
    dec = BASE + 0x66e6
    esp = STACK_BASE + STACK_SIZE - 0x4000
    # layout pushed by the trampoline, bottom to top:
    #   [ret_magic][arg_from_trampoline=edx][arg=ecx][0x1024][eflags]
    frame = [ret_magic, len(payload), buf, 0x1024, 0x202]
    for i, w in enumerate(frame):
        uc.mem_write(esp + i * 4, struct.pack('<I', w))
    uc.reg_write(UC_X86_REG_ESP, esp)
    uc.reg_write(UC_X86_REG_ECX, 0)
    uc.reg_write(UC_X86_REG_EDX, 0)
    print('  frame at %#x: %s' % (esp, ' '.join(hex(w) for w in frame)))
    try:
        uc.emu_start(dec, ret_magic, timeout=30_000_000, count=2_000_000)
        print('  finished; eax=%#x' % uc.reg_read(UC_X86_REG_EAX))
    except UcError as e:
        print('  stopped: %s  (eip=%#x)' % (e, uc.reg_read(UC_X86_REG_EIP)))
    p.dump_writes()

    # --- attempt C: the main routine ----------------------------------------
    print('\n=== ATTEMPT C: main routine 0x5da7 ===')
    esp = STACK_BASE + STACK_SIZE - 0x6000
    uc.mem_write(esp, struct.pack('<I', ret_magic))
    uc.reg_write(UC_X86_REG_ESP, esp)
    try:
        uc.emu_start(BASE + 0x5da7, ret_magic, timeout=20_000_000, count=1_000_000)
        print('  finished; eax=%#x' % uc.reg_read(UC_X86_REG_EAX))
    except UcError as e:
        print('  stopped: %s  (eip=%#x)' % (e, uc.reg_read(UC_X86_REG_EIP)))
    print('  stub call histogram:', p.calls)
    p.dump_writes()


if __name__ == '__main__':
    main()
