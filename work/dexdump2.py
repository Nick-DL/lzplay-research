#!/usr/bin/env python3
"""Deep-dump an APK's classes.dex: classes, methods, and app-namespace strings."""
import zipfile, struct, sys, os, re, json

class Dex:
    def __init__(self, data):
        self.d = data
        self.string_ids_size = self.u32(56); self.string_ids_off = self.u32(60)
        self.type_ids_size = self.u32(64);   self.type_ids_off = self.u32(68)
        self.proto_ids_size = self.u32(72);  self.proto_ids_off = self.u32(76)
        self.field_ids_size = self.u32(80);  self.field_ids_off = self.u32(84)
        self.method_ids_size = self.u32(88); self.method_ids_off = self.u32(92)
        self.class_defs_size = self.u32(96); self.class_defs_off = self.u32(100)
        self._scache = {}

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
        if idx in self._scache: return self._scache[idx]
        o = self.u32(self.string_ids_off + idx * 4)
        n, p = self.uleb(o)
        v = self.d[p:p + n].decode('utf-8', 'replace')
        self._scache[idx] = v
        return v
    def type_desc(self, idx):
        return self.string(self.u32(self.type_ids_off + idx * 4))
    def method_id(self, idx):
        b = self.method_ids_off + idx * 8
        return (self.type_desc(self.u16(b)), self.string(self.u32(b + 4)), self.u16(b + 2))
    def field_id(self, idx):
        b = self.field_ids_off + idx * 8
        return (self.type_desc(self.u16(b)), self.string(self.u32(b + 4)), self.type_desc(self.u16(b + 2)))
    def class_defs(self):
        out = []
        for i in range(self.class_defs_size):
            b = self.class_defs_off + i * 32
            out.append(dict(idx=i, class_idx=self.u32(b), access=self.u32(b + 4),
                            superclass_idx=self.u32(b + 8), source_file_idx=self.u32(b + 16),
                            annotations_off=self.u32(b + 20), class_data_off=self.u32(b + 24)))
        return out
    def class_data(self, off):
        if off == 0: return None
        sf, off = self.uleb(off); inf, off = self.uleb(off)
        dm, off = self.uleb(off); vm, off = self.uleb(off)
        def rf(off, n):
            res = []; idx = 0
            for _ in range(n):
                di, off = self.uleb(off); ai, off = self.uleb(off); idx += di
                res.append((idx, ai))
            return res, off
        def rm(off, n):
            res = []; idx = 0
            for _ in range(n):
                di, off = self.uleb(off); ai, off = self.uleb(off); co, off = self.uleb(off); idx += di
                res.append((idx, ai, co))
            return res, off
        s, off = rf(off, sf); i2, off = rf(off, inf)
        dm2, off = rm(off, dm); vm2, off = rm(off, vm)
        return s, i2, dm2, vm2


def main():
    apk = sys.argv[1]; outprefix = sys.argv[2]; onlypkg = sys.argv[3] if len(sys.argv) > 3 else ''
    z = zipfile.ZipFile(apk)
    d = z.read('classes.dex')
    dx = Dex(d)
    lines = []
    w = lines.append
    w('strings=%d types=%d methods=%d fields=%d classes=%d protos=%d'
      % (dx.string_ids_size, dx.type_ids_size, dx.method_ids_size, dx.field_ids_size,
         dx.class_defs_size, dx.proto_ids_size))
    w('')
    # all strings containing non-ascii (chinese) -> UI text
    w('=== NON-ASCII STRINGS (likely UI text) ===')
    for i in range(dx.string_ids_size):
        s = dx.string(i)
        if any(ord(c) > 0x7f for c in s):
            w('  %4d  %s' % (i, s.replace('\n', '\\n')))
    w('')
    w('=== APPLICATION CLASSES (non-library) ===')
    appclasses = []
    for cd in dx.class_defs():
        nm = dx.type_desc(cd['class_idx'])
        if any(nm.startswith(p) for p in (
                'Lcom/lzplayer', 'Lcom/lzplay', 'Lcom/helper', 'Lcom/gms', 'Lcom/huawei',
                'Lcom/google')):
            appclasses.append(cd)
    for cd in appclasses:
        nm = dx.type_desc(cd['class_idx'])
        sup = dx.type_desc(cd['superclass_idx']) if cd['superclass_idx'] != 0xffffffff else '-'
        src = dx.string(cd['source_file_idx']) if cd['source_file_idx'] != 0xffffffff else '-'
        w('')
        w('CLASS %s extends %s  (src=%s acc=%#x)' % (nm, sup, src, cd['access']))
        cdat = dx.class_data(cd['class_data_off'])
        if cdat:
            s, i2, dm, vm = cdat
            for f, a in s: w('   static  %s %s' % (dx.field_id(f), hex(a)))
            for f, a in i2: w('   field   %s %s' % (dx.field_id(f), hex(a)))
            for m, a, c in dm: w('   dm  %s  acc=%#x code=%s' % (dx.method_id(m), a, hex(c)))
            for m, a, c in vm: w('   vm  %s  acc=%#x code=%s' % (dx.method_id(m), a, hex(c)))
        else:
            w('   <no class data - likely marker/annotation interface>')
    w('')
    # raw printable runs filtered by pkg
    w('=== PRINTABLE RUNS matching %r ===' % onlypkg)
    if onlypkg:
        runs = re.findall(rb'[\x20-\x7e]{4,}', d)
        seen = set()
        for r in runs:
            s = r.decode('utf-8', 'replace')
            if onlypkg in s and s not in seen:
                seen.add(s); w('  ' + s[:300])
    with open(outprefix, 'w', encoding='utf-8') as fh:
        fh.write('\n'.join(lines))
    print('wrote', outprefix, len(lines), 'lines')

if __name__ == '__main__':
    main()
