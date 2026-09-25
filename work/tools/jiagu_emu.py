#!/usr/bin/env python3
"""
Unicorn harness for 360 Jiagu's native unpacker.

Maps libjiagu_x86.so the way the Android linker would, resolves the PLT/GOT via the
ELF relocation table, stubs out libc, then lets us drive the packer's own routines:

    JNI_OnLoad(JavaVM*)                       -> __arm_a_1(JavaVM*, JNIEnv*, void*, int&)
    __fun_a_18(uint8_t* buf, unsigned len)    -> the state-machine decoder

Every external call is logged, so we can see exactly what the packer tries to do.
"""
import base64, gzip, os, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))          # workspace root
sys.path.insert(0, os.path.join(WS, 'work', 'pylibs'))   # unicorn lives here
sys.path.insert(0, HERE)

from unicorn import (Uc, UcError, UC_ARCH_X86, UC_MODE_32, UC_HOOK_CODE,
                     UC_HOOK_MEM_UNMAPPED, UC_HOOK_MEM_INVALID, UC_PROT_ALL)
from unicorn.x86_const import (UC_X86_REG_ESP, UC_X86_REG_EBP, UC_X86_REG_EIP,
                               UC_X86_REG_EAX, UC_X86_REG_EBX, UC_X86_REG_ECX,
                               UC_X86_REG_EDX, UC_X86_REG_ESI, UC_X86_REG_EDI)

from elfload32 import Elf32, load as load_lib

# ---------------------------------------------------------------- memory layout
BASE        = 0x10000000          # where we map the library
STACK_BASE  = 0x20000000
STACK_SIZE  = 0x00100000
HEAP_BASE   = 0x30000000
HEAP_SIZE   = 0x01000000
ARG_BASE    = 0x40000000          # buffers we hand to the packer
ARG_SIZE    = 0x00400000

PAGE = 0x1000

MAGIC_RET = 0x7A11BEEF           # sentinel returned by "unimplemented" stubs


def align_down(x): return x & ~(PAGE - 1)
def align_up(x):   return (x + PAGE - 1) & ~(PAGE - 1)


class StubAllocator:
    """Simple bump allocator standing in for malloc/calloc/realloc."""

    def __init__(self, uc, base, size):
        self.uc = uc
        self.cur = base
        self.end = base + size
        self.live = {}

    def alloc(self, n):
        n = (n + 15) & ~15
        if self.cur + n > self.end:
            raise UcError('stub heap exhausted')
        p = self.cur
        self.cur += n
        self.live[p] = n
        self.uc.mem_write(p, b'\x00' * n)
        return p

    def free(self, p):
        self.live.pop(p, None)


class JiaguHarness:
    def __init__(self, libpath, verbose=True):
        self.verbose = verbose
        self.data = load_lib(libpath)
        self.elf = Elf32(self.data, base=BASE)
        self.uc = Uc(UC_ARCH_X86, UC_MODE_32)
        self._map()
        self.heap = StubAllocator(self.uc, HEAP_BASE, HEAP_SIZE)
        self.calls = {}
        self.strings = {}       # addr -> python str we placed
        # stubs are materialised on demand from the relocation table
        self.uc.hook_add(UC_HOOK_CODE, self._hook_code)
        self.uc.hook_add(UC_HOOK_MEM_UNMAPPED | UC_HOOK_MEM_INVALID, self._hook_badmem)

    # ------------------------------------------------------------- mapping
    def _map(self):
        uc = self.uc
        for va, blob, writable in self.elf.load_segments():
            start = align_down(va)
            end = align_up(va + len(blob))
            size = end - start
            uc.mem_map(start, size, UC_PROT_ALL)
            pad = va - start
            uc.mem_write(start, b'\x00' * pad + blob)
        # stack
        uc.mem_map(STACK_BASE, STACK_SIZE, UC_PROT_ALL)
        # arg/scratch area
        uc.mem_map(ARG_BASE, ARG_SIZE, UC_PROT_ALL)
        # heap
        uc.mem_map(HEAP_BASE, HEAP_SIZE, UC_PROT_ALL)
        # apply relocations
        self._relocate()

    def _relocate(self):
        uc = self.uc
        syms = self.elf.symbols()
        plt_names = {}
        for off, typ, sym, secname in self.elf.relocations():
            va = BASE + off
            if typ == 8:      # R_386_RELATIVE
                cur = struct.unpack('<I', uc.mem_read(va, 4))[0]
                uc.mem_write(va, struct.pack('<I', BASE + cur))
            elif typ == 6:    # R_386_GLOB_DAT
                name = syms[sym][0] if sym < len(syms) else '?'
                stub = self._stub_for(name)
                uc.mem_write(va, struct.pack('<I', stub))
            elif typ == 7:    # R_386_JMP_SLOT
                name = syms[sym][0] if sym < len(syms) else '?'
                stub = self._stub_for(name)
                uc.mem_write(va, struct.pack('<I', stub))
                plt_names[stub] = name
            elif typ == 1:    # R_386_32
                cur = struct.unpack('<I', uc.mem_read(va, 4))[0]
                uc.mem_write(va, struct.pack('<I', BASE + cur))
        self.plt_names = plt_names

    # --------------------------------------------------------------- stubs
    def _stub_page(self):
        if not hasattr(self, '_stub_cur'):
            self._stub_cur = 0x50000000
            self.uc.mem_map(0x50000000, PAGE * 16, UC_PROT_ALL)
        p = self._stub_cur
        if p + 16 > 0x50000000 + PAGE * 16:
            raise UcError('stub area exhausted')
        self._stub_cur += 16
        # int3; ret  -> we intercept at the hook and skip
        self.uc.mem_write(p, b'\xcc' + b'\xc3' + b'\x00' * 14)
        return p

    def _stub_for(self, name):
        if not hasattr(self, '_stub_map'):
            self._stub_map = {}
        if name not in self._stub_map:
            a = self._stub_page()
            self._stub_map[name] = a
            self._stub_rev = getattr(self, '_stub_rev', {})
            self._stub_rev[a] = name
        return self._stub_map[name]

    def put_string(self, s):
        p = self.heap.alloc(len(s) + 1)
        self.uc.mem_write(p, s.encode() + b'\x00')
        self.strings[p] = s
        return p

    # -------------------------------------------------------------- hooks
    def _hook_badmem(self, uc, access, address, size, value, user):
        print('  [mem] UNMAPPED %s at %#x size %d (eip=%#x)' % (
            {1: 'READ', 2: 'WRITE', 4: 'FETCH'}.get(access, access), address, size,
            uc.reg_read(UC_X86_REG_EIP)))
        return False

    def _hook_code(self, uc, address, size, user):
        rev = getattr(self, '_stub_rev', {})
        if address in rev:
            name = rev[address]
            self.calls[name] = self.calls.get(name, 0) + 1
            self._handle_stub(name, uc, address)
            # emulate "ret": pop eip
            esp = uc.reg_read(UC_X86_REG_ESP)
            ret = struct.unpack('<I', uc.mem_read(esp, 4))[0]
            uc.reg_write(UC_X86_REG_ESP, esp + 4)
            uc.reg_write(UC_X86_REG_EIP, ret)
            return

    def _arg(self, uc, idx):
        """cdecl argument #idx (0-based) relative to the stub's entry esp."""
        esp = uc.reg_read(UC_X86_REG_ESP)
        return struct.unpack('<I', uc.mem_read(esp + 4 + idx * 4, 4))[0]

    def _ret(self, uc, v):
        uc.reg_write(UC_X86_REG_EAX, v & 0xFFFFFFFF)

    def _read_cstr(self, uc, p, maxlen=512):
        try:
            raw = bytes(uc.mem_read(p, maxlen))
        except UcError:
            return '<?>'
        z = raw.find(b'\x00')
        return raw[:z if z >= 0 else maxlen].decode('utf-8', 'replace')

    def _handle_stub(self, name, uc, addr):
        v = self.verbose
        if name in ('malloc', '_Znwj', '_Znaj'):
            n = self._arg(uc, 0)
            p = self.heap.alloc(n if n else 1)
            if v: print('    %-22s(%d) -> %#x' % (name, n, p))
            self._ret(uc, p)
        elif name in ('calloc',):
            n, sz = self._arg(uc, 0), self._arg(uc, 1)
            p = self.heap.alloc((n * sz) or 1)
            if v: print('    %-22s(%d,%d) -> %#x' % (name, n, sz, p))
            self._ret(uc, p)
        elif name in ('free', '_ZdlPv', '_ZdaPv'):
            if v: print('    free(%#x)' % self._arg(uc, 0))
            self._ret(uc, 0)
        elif name in ('memcpy',):
            d, s, n = self._arg(uc, 0), self._arg(uc, 1), self._arg(uc, 2)
            try:
                uc.mem_write(d, bytes(uc.mem_read(s, n)))
            except UcError as e:
                print('    memcpy FAILED', e)
            if v: print('    memcpy(%#x,%#x,%d)' % (d, s, n))
            self._ret(uc, d)
        elif name in ('memset', str()):
            pass
        elif name == 'memset':
            d, c, n = self._arg(uc, 0), self._arg(uc, 1), self._arg(uc, 2)
            uc.mem_write(d, bytes([c & 0xff]) * n)
            if v: print('    memset(%#x,%d,%d)' % (d, c, n))
            self._ret(uc, d)
        elif name in ('memcmp', 'strcmp', 'strncmp'):
            a, b = self._arg(uc, 0), self._arg(uc, 1)
            sa, sb = self._read_cstr(uc, a), self._read_cstr(uc, b)
            if name == 'memcmp':
                n = self._arg(uc, 2)
                ra = bytes(uc.mem_read(a, n)); rb = bytes(uc.mem_read(b, n))
                r = 0 if ra == rb else (1 if ra > rb else -1)
                if v: print('    memcmp(%#x,%#x,%d)' % (a, b, n))
            else:
                r = 0 if sa == sb else (1 if sa > sb else -1)
                if v: print('    %s("%s","%s") -> %d' % (name, sa[:60], sb[:60], r))
            self._ret(uc, r)
        elif name in ('strlen',):
            s = self._read_cstr(uc, self._arg(uc, 0))
            self._ret(uc, len(s))
        elif name in ('strstr',):
            h = self._read_cstr(uc, self._arg(uc, 0))
            n = self._read_cstr(uc, self._arg(uc, 1))
            if v: print('    strstr("%s","%s")' % (h[:60], n[:30]))
            self._ret(uc, 0)
        elif name in ('strncpy', 'strcpy'):
            d, s = self._arg(uc, 0), self._arg(uc, 1)
            v2 = self._read_cstr(uc, s)
            uc.mem_write(d, v2.encode() + b'\x00')
            if v: print('    %s(%#x,"%s")' % (name, d, v2[:60]))
            self._ret(uc, d)
        elif name in ('atoi', 'strtol'):
            s = self._read_cstr(uc, self._arg(uc, 0))
            try:
                r = int(s.strip() or '0', 0)
            except ValueError:
                r = 0
            if v: print('    %s("%s") -> %d' % (name, s[:60], r))
            self._ret(uc, r)
        elif name in ('__system_property_get',):
            key = self._read_cstr(uc, self._arg(uc, 0))
            buf = self._arg(uc, 1)
            val = {'ro.build.version.sdk': '28'}.get(key, '')
            # if the packer asks for a known property give a plausible answer
            uc.mem_write(buf, val.encode() + b'\x00')
            if v: print('    __system_property_get("%s") -> "%s"' % (key, val))
            self._ret(uc, len(val))
        elif name in ('fopen',):
            path = self._read_cstr(uc, self._arg(uc, 0))
            mode = self._read_cstr(uc, self._arg(uc, 1))
            if v: print('    fopen("%s","%s")' % (path, mode))
            # pretend /proc/self/maps is readable, everything else fails
            if path == '/proc/self/maps':
                self._ret(uc, self.put_string('maps'))
            else:
                self._ret(uc, 0)
        elif name in ('fgets',):
            self._ret(uc, 0)
        elif name in ('fclose', 'fseek', 'fwrite', 'fread', 'close', 'munmap', 'dlclose'):
            self._ret(uc, 0)
        elif name in ('ftell',):
            self._ret(uc, 0)
        elif name in ('open',):
            if v: print('    open("%s")' % self._read_cstr(uc, self._arg(uc, 0)))
            self._ret(uc, 0xFFFFFFFF)
        elif name in ('lseek',):
            self._ret(uc, 0)
        elif name in ('read',):
            self._ret(uc, 0)
        elif name in ('mmap',):
            n = self._arg(uc, 1)
            p = self.heap.alloc(n)
            if v: print('    mmap(%d) -> %#x' % (n, p))
            self._ret(uc, p)
        elif name in ('mprotect',):
            self._ret(uc, 0)
        elif name in ('dlopen',):
            if v: print('    dlopen("%s")' % self._read_cstr(uc, self._arg(uc, 0)))
            self._ret(uc, 0)
        elif name in ('dlsym',):
            sym = self._read_cstr(uc, self._arg(uc, 1))
            if v: print('    dlsym(_, "%s")' % sym)
            self._ret(uc, self._stub_for(sym))
        elif name in ('dl_iterate_phdr', 'dladdr'):
            self._ret(uc, 0xFFFFFFFF)
        elif name in ('prctl', 'getpid', 'raise', 'kill', 'signal', 'sigaction',
                      'sigprocmask', 'select', 'inotify_init', 'inotify_add_watch',
                      'opendir', 'closedir', 'time', 'pthread_create', 'pthread_detach',
                      '__cxa_atexit', '__cxa_finalize', '__cxa_guard_acquire',
                      '__cxa_guard_release', '__stack_chk_fail', '__cxa_pure_virtual',
                      'snprintf', 'strerror', 'strdup'):
            if name == 'opendir' and v:
                print('    opendir("%s")' % self._read_cstr(uc, self._arg(uc, 0)))
            if name == 'prctl' and v:
                print('    prctl(%d,...)' % self._arg(uc, 0))
            if name == 'pthread_create':
                # run the thread function synchronously for determinism
                fn = self._arg(uc, 2)
                arg = self._arg(uc, 3)
                if v: print('    pthread_create -> running %#x(%#x) inline' % (fn, arg))
                try:
                    self.call(fn, [arg], log=False)
                except Exception as e:
                    print('    inline thread failed:', e)
            if name == 'strdup':
                s = self._read_cstr(uc, self._arg(uc, 0))
                self._ret(uc, self.put_string(s))
            elif name == 'snprintf':
                self._ret(uc, 0)
            else:
                self._ret(uc, 0)
        elif name in ('readdir',):
            self._ret(uc, 0)
        elif name in ('__errno',):
            self._ret(uc, self.heap.alloc(4))
        else:
            if v: print('    [unimpl] %s()' % name)
            self._ret(uc, 0)

    # -------------------------------------------------------------- driving
    def call(self, addr, args, log=True, max_insns=2_000_000, timeout_us=30_000_000):
        uc = self.uc
        esp = STACK_BASE + STACK_SIZE - 0x1000
        # push args right-to-left, then a fake return address
        ret_magic = 0x0BADF00D
        frame = [ret_magic] + list(args)
        esp -= 4 * len(frame)
        for i, a in enumerate(frame):
            uc.mem_write(esp + i * 4, struct.pack('<I', a & 0xFFFFFFFF))
        uc.reg_write(UC_X86_REG_ESP, esp)
        uc.reg_write(UC_X86_REG_EBP, esp)
        if log:
            print('  -> call %#x(%s)' % (addr, ', '.join(hex(a) for a in args)))
        try:
            uc.emu_start(addr, ret_magic, timeout=timeout_us, count=max_insns)
            r = uc.reg_read(UC_X86_REG_EAX)
            if log:
                print('  <- returned eax=%#x' % r)
            return r
        except UcError as e:
            print('  !! emulation stopped: %s  (eip=%#x)' % (e, uc.reg_read(UC_X86_REG_EIP)))
            return None

    def write(self, addr, data):
        self.uc.mem_write(addr, data)

    def read(self, addr, n):
        return bytes(self.uc.mem_read(addr, n))


def main():
    lib = sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz'
    h = JiaguHarness(lib)
    print('mapped. symbols:')
    for nm, val, sz, typ, shndx, bind in h.elf.symbols():
        if val:
            print('   %-38s %#08x size=%d' % (nm, BASE + val, sz))

    syms = {nm: BASE + val for nm, val, sz, t, s, b in h.elf.symbols() if val}

    # ---- test 1: just call the decoder with the .mips payload
    mips = h.elf.sections['.mips']
    payload = h.data[mips['off']:mips['off'] + mips['size']]
    buf = ARG_BASE + 0x1000
    h.write(buf, payload)
    print('\n=== TEST 1: __fun_a_18(.mips payload, %d bytes) ===' % len(payload))
    if '_Z10__fun_a_18Phj' in syms:
        h.call(syms['_Z10__fun_a_18Phj'], [buf, len(payload)])
    print('\ncall histogram:', h.calls)


if __name__ == '__main__':
    main()
