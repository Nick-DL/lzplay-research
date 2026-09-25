#!/usr/bin/env python3
"""Parse a binary Android resources.arsc and dump packages/types/entries/values."""
import struct, sys, zipfile, os

RES_STRING_POOL = 0x0001
RES_TABLE = 0x0002
RES_TABLE_PACKAGE = 0x0200
RES_TABLE_TYPE = 0x0201
RES_TABLE_TYPE_SPEC = 0x0202

def u16(d, o): return struct.unpack_from('<H', d, o)[0]
def u32(d, o): return struct.unpack_from('<I', d, o)[0]
def i32(d, o): return struct.unpack_from('<i', d, o)[0]

class StringPool:
    def __init__(self, d, off):
        self.d = d
        self.off = off
        typ = u16(d, off); hsz = u16(d, off + 2); sz = u32(d, off + 4)
        self.count = u32(d, off + 8)
        self.style_count = u32(d, off + 12)
        self.flags = u32(d, off + 16)
        self.strings_start = u32(d, off + 20)
        self.styles_start = u32(d, off + 24)
        self.utf8 = bool(self.flags & (1 << 8))
        self.offsets = [u32(d, off + hsz + i * 4) for i in range(self.count)]
        self._cache = {}

    def get(self, i):
        if i in self._cache: return self._cache[i]
        if i >= self.count:
            return '<OOB:%d>' % i
        base = self.off + self.strings_start + self.offsets[i]
        d = self.d
        if self.utf8:
            # utf8: uleb16 char len, uleb16 byte len, bytes, 0x00
            p = base
            n, p = self._uleb(p)
            blen, p = self._uleb(p)
            v = d[p:p + blen].decode('utf-8', 'replace')
        else:
            n = u16(d, base)
            v = d[base + 2:base + 2 + n * 2].decode('utf-16-le', 'replace')
        self._cache[i] = v
        return v

    def _uleb(self, p):
        d = self.d
        if d[p] & 0x80:
            v = ((d[p] & 0x7f) << 8) | d[p + 1]
            return v, p + 2
        return d[p], p + 1


def parse_value(d, o):
    """Return (dataType, data)."""
    size = u16(d, o)
    res0 = d[o + 2]
    dtype = d[o + 3]
    data = u32(d, o + 4)
    return dtype, data, size


TYPE_NAMES = {0x00: 'NULL', 0x01: 'REFERENCE', 0x02: 'ATTRIBUTE', 0x03: 'STRING',
              0x04: 'FLOAT', 0x05: 'DIMENSION', 0x06: 'FRACTION', 0x07: 'DYNAMIC_REF',
              0x08: 'INT_DEC', 0x09: 'INT_HEX', 0x0a: 'INT_BOOLEAN', 0x0b: 'INT_COLOR_ARGB8',
              0x0c: 'INT_COLOR_RGB8', 0x0d: 'INT_COLOR_ARGB4', 0x0e: 'INT_COLOR_RGB4',
              0x10: 'INT_DEC', 0x11: 'INT_HEX', 0x12: 'INT_BOOLEAN', 0x1c: 'INT_COLOR_ARGB8'}

TYPEABLE_NAMES = ['ATTR', 'DRAWABLE', 'STRING', 'DIMEN', 'COLOR', 'BOOL', 'STYLE',
                  'INT', 'INT', 'INT', 'INT', 'INT', 'ID', 'INT', 'INT', 'INT',
                  'INT', 'INT', 'INT', 'INT', 'INT', 'INT', 'INT', 'INT', 'INT',
                  'INT', 'INT', 'INT', 'INT', 'ARRAY', 'PLURALS', 'INT', 'XML']


def parse(d, out):
    w = out.append
    typ = u16(d, 0); hsz = u16(d, 2); sz = u32(d, 4)
    pkg_count = u32(d, 8)
    w('RES_TABLE size=%d headerSize=%d packages=%d' % (sz, hsz, pkg_count))
    global_pool = StringPool(d, 12)
    w('global string pool: %d strings (utf8=%s)' % (global_pool.count, global_pool.utf8))
    off = 12 + hsz  # hsz == sizeof(ResTable_header) == 12, so package starts at 12
    off = u32(d, 12 + 4) if hsz > 12 else 12
    w('first package chunk offset = %d' % off)
    for pi in range(pkg_count):
        if off >= len(d): break
        pt = u16(d, off); phsz = u16(d, off + 2); psz = u32(d, off + 4)
        pkg_id = u32(d, off + 8)
        name = d[off + 12:off + 12 + 256].decode('utf-16-le', 'replace').split('\x00')[0]
        type_strings_off = u32(d, off + 268)
        last_pub_type = u32(d, off + 272)
        key_strings_off = u32(d, off + 276)
        last_pub_key = u32(d, off + 280)
        w('')
        w('PACKAGE id=%#x name=%r size=%d typeStrings@%d keyStrings@%d'
          % (pkg_id, name, psz, type_strings_off, key_strings_off))
        type_pool = StringPool(d, off + type_strings_off)
        key_pool = StringPool(d, off + key_strings_off)
        w('  types: %s' % [type_pool.get(i) for i in range(type_pool.count)])
        # iterate chunks
        coff = off + phsz
        while coff < off + psz:
            ct = u16(d, coff); chsz = u16(d, coff + 2); csz = u32(d, coff + 4)
            if csz == 0: break
            if ct == RES_TABLE_TYPE:
                tid = d[coff + 8]
                flags = d[coff + 9]
                entry_count = u32(d, coff + 12)
                entries_start = u32(d, coff + 16)
                cfg_off = coff + 20
                cfg_size = u32(d, cfg_off)
                # locale / density
                lc = d[cfg_off + 8:cfg_off + 12] if cfg_size >= 12 else b''
                try:
                    lang = lc[:2].decode('ascii').strip('\x00')
                    reg = lc[2:4].decode('ascii').strip('\x00')
                except Exception:
                    lang = reg = ''
                density = u16(d, cfg_off + 14) if cfg_size >= 16 else 0
                locale = (lang + ('-' + reg if reg else '')) or '-'
                tname = type_pool.get(tid - 1) if tid - 1 < type_pool.count else '?'
                idoff = coff + entries_start
                offsets = [u32(d, idoff + i * 4) for i in range(entry_count)]
                shown = 0
                for ei in range(entry_count):
                    eo = offsets[ei]
                    if eo == 0xffffffff: continue
                    ep = idoff + eo
                    esize = u16(d, ep); eflags = u16(d, ep + 2); ekey = u32(d, ep + 4)
                    if eflags & 1:
                        # complex
                        w('    [%s/%s density=%d] #%d %s = <COMPLEX>' % (tname, locale, density, ei, key_pool.get(ekey)))
                        continue
                    dsz = u16(d, ep + 8)
                    if dsz == 0:
                        w('    [%s/%s density=%d] #%d %s = <empty>' % (tname, locale, density, ei, key_pool.get(ekey)))
                        continue
                    vo = ep + esize
                    dtype, data, vsz = parse_value(d, vo)
                    tn = TYPE_NAMES.get(dtype & 0xff, hex(dtype))
                    if dtype == 0x03:
                        val = repr(global_pool.get(data))
                    elif dtype in (0x01,):
                        val = '@%#010x (pkg %#x type %#x entry %#x)' % (data, data >> 24, (data >> 16) & 0xff, data & 0xffff)
                    else:
                        val = '%s(%#x)' % (tn, data)
                    w('    [%s/%s density=%d] #%d %s = %s' % (tname, locale, density, ei, key_pool.get(ekey), val))
            coff += csz
        off += psz


def main():
    apk = sys.argv[1]; outfile = sys.argv[2]
    z = zipfile.ZipFile(apk)
    d = z.read('resources.arsc')
    out = []
    parse(d, out)
    with open(outfile, 'w', encoding='utf-8') as f:
        f.write('\n'.join(out))
    print('wrote', outfile, len(out), 'lines')

if __name__ == '__main__':
    main()
