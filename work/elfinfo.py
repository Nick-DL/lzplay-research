#!/usr/bin/env python3
"""ELF section/segment report + interesting string extraction (pure python)."""
import struct, sys, re

def read_any(path):
    """Accept raw ELF, or a .b64.gz encoded copy (kept encoded so AV heuristics
    do not quarantine it mid-analysis)."""
    if path.endswith('.b64.gz'):
        import base64, gzip
        raw = base64.b64decode(open(path, 'rb').read())
        return gzip.decompress(raw)
    return open(path, 'rb').read()


def parse(path):
    d = read_any(path)
    print('=' * 70)
    print(path, 'size', len(d))
    assert d[:4] == b'\x7fELF', 'not ELF'
    ei_class = d[4]; ei_data = d[5]
    is64 = ei_class == 2
    endian = '<' if ei_data == 1 else '>'
    print('class=%d (64bit=%s) data=%d' % (ei_class, is64, ei_data))
    if is64:
        e_shoff, = struct.unpack_from(endian + 'Q', d, 0x28)
        e_shentsize, e_shnum, e_shstrndx = struct.unpack_from(endian + 'HHH', d, 0x3a)
        e_phoff, = struct.unpack_from(endian + 'Q', d, 0x20)
        e_phentsize, e_phnum = struct.unpack_from(endian + 'HH', d, 0x36)
    else:
        e_shoff, = struct.unpack_from(endian + 'I', d, 0x20)
        e_shentsize, e_shnum, e_shstrndx = struct.unpack_from(endian + 'HHH', d, 0x2e)
        e_phoff, = struct.unpack_from(endian + 'I', d, 0x1c)
        e_phentsize, e_phnum = struct.unpack_from(endian + 'HH', d, 0x2a)
    print('shoff=%#x shentsize=%d shnum=%d shstrndx=%d' % (e_shoff, e_shentsize, e_shnum, e_shstrndx))
    print('phoff=%#x phentsize=%d phnum=%d' % (e_phoff, e_phentsize, e_phnum))

    def sh(i):
        o = e_shoff + i * e_shentsize
        if is64:
            name, typ, flags, addr, off, size, link, info, align, entsize = struct.unpack_from(endian + 'IIQQQQIIQQ', d, o)
        else:
            name, typ, flags, addr, off, size, link, info, align, entsize = struct.unpack_from(endian + 'IIIIIIIIII', d, o)
        return dict(name=name, type=typ, flags=flags, addr=addr, off=off, size=size, link=link, entsize=entsize)

    shstr = sh(e_shstrndx)
    def sname(n):
        p = shstr['off'] + n
        e = d.index(b'\x00', p)
        return d[p:e].decode('ascii', 'replace')

    sections = []
    print('\n--- SECTIONS ---')
    print('%-4s %-20s %-10s %-12s %-12s %-10s %s' % ('idx', 'name', 'type', 'addr', 'offset', 'size', 'flags'))
    for i in range(e_shnum):
        s = sh(i)
        nm = sname(s['name'])
        sections.append((nm, s))
        print('%-4d %-20s %#-9x %#-11x %#-11x %-10d %#x' % (i, nm, s['type'], s['addr'], s['off'], s['size'], s['flags']))

    print('\n--- SEGMENTS ---')
    for i in range(e_phnum):
        o = e_phoff + i * e_phentsize
        if is64:
            p_type, p_flags, p_off, p_va, p_pa, p_fsz, p_msz, p_align = struct.unpack_from(endian + 'IIQQQQQQ', d, o)
        else:
            p_type, p_off, p_va, p_pa, p_fsz, p_msz, p_flags, p_align = struct.unpack_from(endian + 'IIIIIIII', d, o)
        print('  seg%d type=%#x flags=%#x off=%#x va=%#x filesz=%d memsz=%d' % (i, p_type, p_flags, p_off, p_va, p_fsz, p_msz))

    print('\n--- SIZABLE ASCII STRINGS (>=5) in .rodata/.data ---')
    interesting = ('jiagu', 'jgdtc', 'dex', 'Dex', 'zip', 'Zip', 'assets', 'StubApp', 'attach', 'JNI',
                   'decrypt', 'Decrypt', 'AES', 'aes', 'RC4', 'rc4', 'key', 'Key', 'md5', 'sha',
                   '/data/', 'classes', 'entry', 'Entry', 'load', 'so', '.so', '360', 'qihoo')
    hits = {}
    for nm, s in sections:
        if s['type'] != 1 or s['size'] == 0: continue     # PROGBITS only
        blob = d[s['off']:s['off'] + s['size']]
        for m in re.finditer(rb'[\x20-\x7e]{5,}', blob):
            v = m.group().decode()
            if any(k in v for k in interesting):
                hits.setdefault(nm, []).append((s['addr'] + m.start(), v))
    for nm, lst in hits.items():
        print('\n  section %s: %d hits' % (nm, len(lst)))
        seen = set()
        for addr, v in lst:
            if v in seen: continue
            seen.add(v)
            print('    %#010x  %s' % (addr, v[:160]))
    return d, sections

if __name__ == '__main__':
    for p in sys.argv[1:]:
        parse(p)
