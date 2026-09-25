#!/usr/bin/env python3
"""Load a 32-bit ELF the way the Android dynamic linker would: map PT_LOAD segments,
apply R_386_RELATIVE / R_386_GLOB_DAT / R_386_32 relocations, and expose a
symbol -> address map.  Pure stdlib; used to prepare Unicorn emulation of
libjiagu's native unpacker."""
import struct, sys, os, base64, gzip


class Elf32:
    def __init__(self, data, base=0):
        self.d = data
        self.base = base
        assert data[:4] == b'\x7fELF', 'not ELF'
        self.is64 = data[4] == 2
        assert not self.is64, 'only 32-bit supported'
        self.e_shoff, = struct.unpack_from('<I', data, 0x20)
        self.e_shentsize, self.e_shnum, self.e_shstrndx = struct.unpack_from('<HHH', data, 0x2e)
        self.e_phoff, = struct.unpack_from('<I', data, 0x1c)
        self.e_phentsize, self.e_phnum = struct.unpack_from('<HH', data, 0x2a)
        self.e_entry, = struct.unpack_from('<I', data, 0x18)
        self.sections = {}
        self.section_list = []
        self._read_sections()
        self.segments = []
        self._read_segments()

    def _sh(self, i):
        o = self.e_shoff + i * self.e_shentsize
        name, typ, flags, addr, off, size, link, info, align, entsize = \
            struct.unpack_from('<IIIIIIIIII', self.d, o)
        return dict(name=name, type=typ, flags=flags, addr=addr, off=off, size=size,
                    link=link, info=info, align=align, entsize=entsize)

    def _read_sections(self):
        shstr = self._sh(self.e_shstrndx)
        for i in range(self.e_shnum):
            s = self._sh(i)
            p = shstr['off'] + s['name']
            e = self.d.index(b'\x00', p)
            nm = self.d[p:e].decode('ascii', 'replace')
            s['sname'] = nm
            self.section_list.append(s)
            if nm:
                self.sections[nm] = s

    def _read_segments(self):
        for i in range(self.e_phnum):
            o = self.e_phoff + i * self.e_phentsize
            p_type, p_off, p_va, p_pa, p_fsz, p_msz, p_flags, p_align = \
                struct.unpack_from('<IIIIIIII', self.d, o)
            self.segments.append(dict(type=p_type, off=p_off, va=p_va, fsz=p_fsz,
                                      msz=p_msz, flags=p_flags, align=p_align))

    def symbols(self):
        """(name, value, size, type, shndx) for .dynsym entries."""
        out = []
        dynsym = self.sections.get('.dynsym')
        dynstr = self.sections.get('.dynstr')
        if not dynsym or not dynstr:
            return out
        sd = self.d[dynstr['off']:dynstr['off'] + dynstr['size']]

        def s(o):
            e = sd.index(b'\x00', o)
            return sd[o:e].decode('ascii', 'replace')

        n = dynsym['size'] // 16
        for i in range(n):
            o = dynsym['off'] + i * 16
            name, val, sz, info, other, shndx = struct.unpack_from('<IIIBBH', self.d, o)
            if name == 0:
                continue
            out.append((s(name), val, sz, info & 0xf, shndx, info >> 4))
        return out

    def relocations(self):
        """Yield (offset, type, sym, addend) for .rel.dyn and .rel.plt."""
        out = []
        for secname in ('.rel.dyn', '.rel.plt'):
            sec = self.sections.get(secname)
            if not sec:
                continue
            n = sec['size'] // 8
            for i in range(n):
                o = sec['off'] + i * 8
                r_off, r_info = struct.unpack_from('<II', self.d, o)
                out.append((r_off, r_info & 0xff, r_info >> 8, secname))
        return out

    def load_segments(self):
        """(vaddr, bytes, writable) for each PT_LOAD, with filesz data + zero fill."""
        for s in self.segments:
            if s['type'] != 1:
                continue
            blob = self.d[s['off']:s['off'] + s['fsz']]
            if len(blob) < s['msz']:
                blob = blob + b'\x00' * (s['msz'] - len(blob))
            yield (self.base + s['va'], blob, bool(s['flags'] & 2))

    def vaddr_to_off(self, va):
        for s in self.sections:
            sec = self.sections[s]
            if sec['type'] != 8 and sec['addr'] <= va < sec['addr'] + max(sec['size'], 1):
                return sec['off'] + (va - sec['addr'])
        return None


def load(path):
    if path.endswith('.b64.gz'):
        return gzip.decompress(base64.b64decode(open(path, 'rb').read()))
    return open(path, 'rb').read()


def main():
    path = sys.argv[1]
    e = Elf32(load(path))
    print('entry %#x  sections %d  segments %d' % (e.e_entry, len(e.section_list), len(e.segments)))
    print('\n--- loadable segments ---')
    for va, blob, w in e.load_segments():
        print('  va=%#010x size=%-8d writable=%s' % (va, len(blob), w))
    print('\n--- symbols ---')
    for nm, val, sz, typ, shndx, bind in e.symbols():
        if val:
            print('  %-38s val=%#08x size=%-7d type=%d shndx=%d' % (nm, val, sz, typ, shndx))
    print('\n--- relocations ---')
    rels = e.relocations()
    print('  count', len(rels))
    syms = e.symbols()
    for off, typ, sym, secname in rels[:40]:
        nm = syms[sym][0] if sym < len(syms) else '?'
        print('  %-9s off=%#08x type=%-3d sym=%-34s' % (secname, off, typ, nm))


if __name__ == '__main__':
    main()
