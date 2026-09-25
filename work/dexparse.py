#!/usr/bin/env python3
"""Minimal DEX parser: dumps string pool, type/method/field ids, class defs, class data."""
import struct, sys, io, os

class Dex:
    def __init__(self, data):
        self.d = data
        self.string_ids_size = self.u32(56); self.string_ids_off = self.u32(60)
        self.type_ids_size = self.u32(64);   self.type_ids_off = self.u32(68)
        self.proto_ids_size = self.u32(72);  self.proto_ids_off = self.u32(76)
        self.field_ids_size = self.u32(80);  self.field_ids_off = self.u32(84)
        self.method_ids_size = self.u32(88); self.method_ids_off = self.u32(92)
        self.class_defs_size = self.u32(96); self.class_defs_off = self.u32(100)

    def u32(self, o): return struct.unpack_from('<I', self.d, o)[0]
    def u16(self, o): return struct.unpack_from('<H', self.d, o)[0]

    def uleb(self, off):
        r = 0; s = 0
        while True:
            b = self.d[off]; off += 1
            r |= (b & 0x7f) << s
            if not (b & 0x80): break
            s += 7
        return r, off

    def string(self, idx):
        o = self.u32(self.string_ids_off + idx * 4)
        n, p = self.uleb(o)
        return self.d[p:p + n].decode('utf-8', 'replace')

    def type_desc(self, idx):
        return self.string(self.u32(self.type_ids_off + idx * 4))

    def method_id(self, idx):
        b = self.method_ids_off + idx * 8
        cls = self.u16(b); proto = self.u16(b + 2); name = self.u32(b + 4)
        return self.type_desc(cls), self.string(name), proto

    def field_id(self, idx):
        b = self.field_ids_off + idx * 8
        cls = self.u16(b); typ = self.u16(b + 2); name = self.u32(b + 4)
        return self.type_desc(cls), self.string(name), self.type_desc(typ)

    def class_defs(self):
        out = []
        for i in range(self.class_defs_size):
            b = self.class_defs_off + i * 32
            out.append(dict(
                class_idx=self.u32(b), access=self.u32(b + 4), superclass_idx=self.u32(b + 8),
                interfaces_off=self.u32(b + 12), source_file_idx=self.u32(b + 16),
                annotations_off=self.u32(b + 20), class_data_off=self.u32(b + 24),
                static_values_off=self.u32(b + 28)))
        return out

    def class_data(self, off):
        if off == 0: return None
        sf, off = self.uleb(off)
        inf, off = self.uleb(off)
        dm, off = self.uleb(off)
        vm, off = self.uleb(off)
        def read_fields(off, n):
            res = []; idx = 0
            for _ in range(n):
                di, off = self.uleb(off); ai, off = self.uleb(off)
                idx += di; res.append((idx, ai))
            return res, off
        def read_methods(off, n):
            res = []; idx = 0
            for _ in range(n):
                di, off = self.uleb(off); ai, off = self.uleb(off); co, off = self.uleb(off)
                idx += di; res.append((idx, ai, co))
            return res, off
        sfields, off = read_fields(off, sf)
        ifields, off = read_fields(off, inf)
        dmethods, off = read_methods(off, dm)
        vmethods, off = read_methods(off, vm)
        return dict(static_fields=sfields, instance_fields=ifields,
                    direct_methods=dmethods, virtual_methods=vmethods)


def main():
    apk = sys.argv[1] if len(sys.argv) > 1 else r'com.lzplay.helper.apk'
    outdir = sys.argv[2] if len(sys.argv) > 2 else 'work'
    os.makedirs(outdir, exist_ok=True)
    import zipfile
    z = zipfile.ZipFile(apk)
    d = z.read('classes.dex')
    dx = Dex(d)
    lines = []
    w = lines.append
    w('=== STRINGS (%d) ===' % dx.string_ids_size)
    for i in range(dx.string_ids_size):
        w('%4d\t%s' % (i, dx.string(i)))
    w('')
    w('=== TYPES (%d) ===' % dx.type_ids_size)
    for i in range(dx.type_ids_size):
        w('%4d\t%s' % (i, dx.type_desc(i)))
    w('')
    w('=== METHODS (%d) ===' % dx.method_ids_size)
    for i in range(dx.method_ids_size):
        c, n, p = dx.method_id(i)
        w('%4d\t%s->%s' % (i, c, n))
    w('')
    w('=== FIELDS (%d) ===' % dx.field_ids_size)
    for i in range(dx.field_ids_size):
        c, n, t = dx.field_id(i)
        w('%4d\t%s->%s : %s' % (i, c, n, t))
    w('')
    w('=== CLASS DEFS (%d) ===' % dx.class_defs_size)
    for i, cd in enumerate(dx.class_defs()):
        nm = dx.type_desc(cd['class_idx']) if cd['class_idx'] != 0xffffffff else '<none>'
        sup = dx.type_desc(cd['superclass_idx']) if cd['superclass_idx'] != 0xffffffff else '<none>'
        src = dx.string(cd['source_file_idx']) if cd['source_file_idx'] != 0xffffffff else '<none>'
        w('[%d] %s  extends %s   access=%#x src=%s class_data_off=%#x annt=%#x staticvals=%#x'
          % (i, nm, sup, cd['access'], src, cd['class_data_off'], cd['annotations_off'], cd['static_values_off']))
        cdat = dx.class_data(cd['class_data_off'])
        if cdat:
            w('    static_fields: %s' % [(dx.field_id(f), hex(a)) for f, a in cdat['static_fields']])
            w('    instance_fields: %s' % [(dx.field_id(f), hex(a)) for f, a in cdat['instance_fields']])
            w('    direct_methods: %s' % [(dx.method_id(m), hex(a), hex(c)) for m, a, c in cdat['direct_methods']])
            w('    virtual_methods: %s' % [(dx.method_id(m), hex(a), hex(c)) for m, a, c in cdat['virtual_methods']])
        else:
            w('    <no class_data>')
    w('')
    # region map
    w('=== MAP/REGIONS ===')
    import collections, math
    def ent(b):
        if not b: return 0.0
        c = collections.Counter(b); n = len(b)
        return -sum((v / n) * math.log2(v / n) for v in c.values())
    for off in range(0, len(d), 65536):
        chunk = d[off:off + 65536]
        w('%#010x  ent=%.3f  %s' % (off, ent(chunk), ''.join(chr(b) if 32 <= b < 127 else '.' for b in chunk[:32])))
    open(os.path.join(outdir, 'classes_dex_dump.txt'), 'w', encoding='utf-8').write('\n'.join(lines))
    print('wrote', os.path.join(outdir, 'classes_dex_dump.txt'), len(lines), 'lines')

if __name__ == '__main__':
    main()
