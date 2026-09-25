#!/usr/bin/env python3
"""
Full dynamic analysis of libjiagu_x86 under Unicorn.

Adds to jiagu_emu.py:
  - constant-string resolution: for every disp32 reference into .rodata, print the
    C++ string that lives there (this is how we recover 360's real symbol names)
  - instruction tracing with configurable focus regions
  - a fake JavaVM so JNI_OnLoad can actually run
"""
import os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))              # workspace root
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))   # unicorn lives here
sys.path.insert(0, HERE)

from unicorn import (Uc, UcError, UC_ARCH_X86, UC_MODE_32, UC_HOOK_CODE,
                     UC_HOOK_MEM_UNMAPPED, UC_HOOK_MEM_INVALID, UC_PROT_ALL)
from unicorn.x86_const import (UC_X86_REG_ESP, UC_X86_REG_EBP, UC_X86_REG_EIP,
                               UC_X86_REG_EAX, UC_X86_REG_EBX, UC_X86_REG_ECX,
                               UC_X86_REG_EDX, UC_X86_REG_ESI, UC_X86_REG_EDI)
from elfload32 import Elf32, load as load_lib
from jiagu_emu import (BASE, STACK_BASE, STACK_SIZE, HEAP_BASE, HEAP_SIZE,
                       ARG_BASE, ARG_SIZE, JiaguHarness, PAGE)


class Analyzer(JiaguHarness):
    """JiaguHarness with introspection helpers."""

    def __init__(self, libpath, verbose=False):
        self.focus = []
        self.trace = []
        self.const_cache = {}
        super(Analyzer, self).__init__(libpath, verbose=verbose)

    # ---------------------------------------------------------- const strings
    def _const_string(self, disp):
        """Resolve a .rodata address to the C string stored there."""
        if disp in self.const_cache:
            return self.const_cache[disp]
        ro = self.elf.sections.get('.rodata')
        val = None
        if ro and ro['addr'] <= disp < ro['addr'] + ro['size']:
            off = ro['off'] + (disp - ro['addr'])
            raw = self.data[off:off + 200]
            z = raw.find(b'\x00')
            s = raw[:z if z >= 0 else len(raw)]
            if s and all(32 <= c < 127 for c in s):
                val = s.decode('ascii')
        self.const_cache[disp] = val
        return val

    def scan_const_strings(self, lo, hi):
        """Walk an address range and list every (addr, instruction, constant string)."""
        from x86dis import disasm_one
        out = []
        a = lo
        while a < hi:
            ins = disasm_one(self.data, a)
            if ins is None or ins.size == 0:
                a += 1
                continue
            s = None
            # look for a disp32 immediate in the rendered text
            import re as _re
            for m in _re.finditer(r'0x([0-9a-f]{4,8})', ins.text):
                cand = int(m.group(1), 16)
                c = self._const_string(cand)
                if c:
                    s = c
                    break
            if s:
                out.append((ins.addr, ins.text, s))
            a += ins.size
        return out

    # ------------------------------------------------------------------ trace
    def _hook_code(self, uc, address, size, user):
        # stubs first
        rev = getattr(self, '_stub_rev', {})
        if address in rev:
            name = rev[address]
            self.calls[name] = self.calls.get(name, 0) + 1
            if self.verbose:
                print('    stub %s' % name)
            self._handle_stub(name, uc, address)
            esp = uc.reg_read(UC_X86_REG_ESP)
            ret = struct.unpack('<I', uc.mem_read(esp, 4))[0]
            uc.reg_write(UC_X86_REG_ESP, esp + 4)
            uc.reg_write(UC_X86_REG_EIP, ret)
            return
        if not self.focus:
            return
        lo, hi = self.focus[0]
        if lo <= address < hi:
            self.trace.append((address,
                               uc.reg_read(UC_X86_REG_EAX), uc.reg_read(UC_X86_REG_EBX),
                               uc.reg_read(UC_X86_REG_ECX), uc.reg_read(UC_X86_REG_EDX),
                               uc.reg_read(UC_X86_REG_ESI), uc.reg_read(UC_X86_REG_EDI),
                               uc.reg_read(UC_X86_REG_ESP)))

    def dump_trace(self, limit=200):
        from x86dis import disasm_one
        for row in self.trace[:limit]:
            a = row[0]
            ins = disasm_one(self.data, a)
            print('%08x  %-24s | eax=%08x ebx=%08x ecx=%08x edx=%08x esi=%08x edi=%08x esp=%08x'
                  % (a, ins.text if ins else '?', row[1], row[2], row[3], row[4], row[5], row[6], row[7]))


def main():
    lib = sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz'
    a = Analyzer(lib)
    syms = {nm: BASE + val for nm, val, sz, t, s, b in a.elf.symbols() if val}
    print('library mapped at %#x' % BASE)

    # ---- 1. recover 360's real C++ symbol names from constant string references
    print('\n' + '=' * 78)
    print('REAL C++ SYMBOL NAMES (recovered from .rodata constant references)')
    print('=' * 78)
    for nm, sec in (('.text', a.elf.sections['.text']), ('.engine', a.elf.sections['.engine']),
                    ('.context', a.elf.sections['.context'])):
        lo, hi = sec['addr'], sec['addr'] + sec['size']
        hits = a.scan_const_strings(lo, hi)
        print('\n--- %s: %d constant-string references ---' % (nm, len(hits)))
        seen = set()
        for addr, text, s in hits:
            if s in seen:
                continue
            seen.add(s)
            print('  %08x  %-34s -> %s' % (addr, text, s))

    # ---- 2. trace JNI_OnLoad
    print('\n' + '=' * 78)
    print('TRACE OF JNI_OnLoad (0x666b)')
    print('=' * 78)
    fake_vm = a.heap.alloc(64)
    a.uc.mem_write(fake_vm, struct.pack('<I', 0) * 16)
    a.focus = [(0x666b, 0x666b + 0x100)]
    a.trace = []
    a.call(syms['JNI_OnLoad'], [fake_vm], max_insns=200000)
    a.dump_trace(60)
    print('stub calls:', a.calls)


if __name__ == '__main__':
    main()
