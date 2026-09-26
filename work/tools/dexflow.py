#!/usr/bin/env python3
"""
Minimal but *correct* DEX method dumper with branch targets and resolved references.

Why not work/tools/dexdis.py: when asked for --class ApkHashProcessor --method getService
it printed a method body containing ActivityManager.getRunningServices and
Animator.cancel - impossible for that class.  The output was serialised wrongly, so I
cannot trust it for control-flow questions.  This one is written from scratch and is
deliberately simple: resolve string / type / field / method ids via the DEX tables,
decode the instruction stream honouring the format widths, and print branch targets.

Usage:
    python dexflow.py <file.dex> <class-substring> <method-substring> [--all]
"""
import io
import os
import re
import struct
import sys
import zipfile

# ---- instruction format widths (in 16-bit code units) ---------------------------------
FMT = {
    0x00: ('10x', 1), 0x01: ('12x', 1), 0x02: ('22x', 1), 0x03: ('32x', 1),
    0x04: ('52x', 1), 0x05: ('22b', 1), 0x06: ('32x', 1), 0x07: ('22b', 1),
    0x08: ('22b', 1), 0x09: ('22b', 1), 0x0a: ('22b', 1), 0x0b: ('12x', 1),
    0x0c: ('11x', 1), 0x0d: ('11x', 1), 0x0e: ('11x', 1), 0x0f: ('11x', 1),
    0x10: ('11x', 1), 0x11: ('11x', 1), 0x12: ('11n', 1), 0x13: ('21s', 1),
    0x14: ('31i', 2), 0x15: ('21h', 1), 0x16: ('21s', 1), 0x17: ('21s', 1),
    0x18: ('51l', 3), 0x19: ('21h', 1), 0x1a: ('21c', 1), 0x1b: ('31c', 2),
    0x1c: ('21c', 1), 0x1d: ('11x', 1), 0x1e: ('11x', 1), 0x1f: ('21c', 1),
    0x20: ('22c', 1), 0x21: ('12x', 1), 0x22: ('21c', 1), 0x23: ('22c', 1),
    0x24: ('35c', 3), 0x25: ('3rc', 3), 0x26: ('31t', 2), 0x27: ('11x', 1),
    0x28: ('10t', 1), 0x29: ('20t', 1), 0x2a: ('30t', 2), 0x2b: ('31t', 2),
    0x2c: ('31t', 2), 0x2d: ('23x', 1), 0x2e: ('23x', 1), 0x2f: ('23x', 1),
    0x30: ('23x', 1), 0x31: ('23x', 1), 0x32: ('22x', 1), 0x33: ('22x', 1),
    0x34: ('22x', 1), 0x35: ('23x', 1), 0x36: ('23x', 1), 0x37: ('23x', 1),
    0x38: ('23x', 1), 0x39: ('22x', 1), 0x3a: ('22x', 1), 0x3b: ('22x', 1),
    0x3c: ('22x', 1), 0x3d: ('22x', 1), 0x3e: ('23x', 1), 0x3f: ('23x', 1),
    0x40: ('23x', 1), 0x41: ('23x', 1), 0x42: ('23x', 1), 0x43: ('23x', 1),
    0x44: ('23x', 2), 0x45: ('23x', 2), 0x46: ('23x', 2), 0x47: ('23x', 2),
    0x48: ('23x', 2), 0x49: ('23x', 2), 0x4a: ('23x', 2), 0x4b: ('23x', 2),
    0x4c: ('23x', 2), 0x4d: ('23x', 2), 0x4e: ('23x', 2), 0x4f: ('23x', 2),
    0x50: ('23x', 2), 0x51: ('23x', 2), 0x52: ('22c', 2), 0x53: ('22c', 2),
    0x54: ('22c', 2), 0x55: ('22c', 2), 0x56: ('22c', 2), 0x57: ('22c', 2),
    0x58: ('22c', 2), 0x59: ('22c', 2), 0x5a: ('22c', 2), 0x5b: ('22c', 2),
    0x5c: ('22c', 2), 0x5d: ('22c', 2), 0x5e: ('22c', 2), 0x5f: ('22c', 2),
    0x60: ('21c', 2), 0x61: ('21c', 2), 0x62: ('21c', 2), 0x63: ('21c', 2),
    0x64: ('21c', 2), 0x65: ('21c', 2), 0x66: ('21c', 2), 0x67: ('21c', 2),
    0x68: ('21c', 2), 0x69: ('21c', 2), 0x6a: ('21c', 2), 0x6b: ('21c', 2),
    0x6c: ('21c', 2), 0x6d: ('21c', 2), 0x6e: ('35c', 3), 0x6f: ('35c', 3),
    0x70: ('35c', 3), 0x71: ('35c', 3), 0x72: ('35c', 3), 0x74: ('3rc', 3),
    0x75: ('3rc', 3), 0x76: ('3rc', 3), 0x77: ('3rc', 3), 0x78: ('35c', 3),
    0x79: ('35c', 3), 0x7a: ('35c', 3), 0x7b: ('12x', 1), 0x7c: ('12x', 1),
    0x7d: ('12x', 1), 0x7e: ('12x', 1), 0x7f: ('12x', 1), 0x80: ('12x', 1),
    0x81: ('12x', 1), 0x82: ('12x', 1), 0x83: ('12x', 1), 0x84: ('12x', 1),
    0x85: ('12x', 1), 0x86: ('12x', 1), 0x87: ('12x', 1), 0x88: ('12x', 1),
    0x89: ('12x', 1), 0x8a: ('12x', 1), 0x8b: ('12x', 1), 0x8c: ('12x', 1),
    0x8d: ('12x', 1), 0x8e: ('12x', 1), 0x8f: ('12x', 1), 0x90: ('23x', 2),
    0x91: ('23x', 2), 0x92: ('23x', 2), 0x93: ('23x', 2), 0x94: ('23x', 2),
    0x95: ('23x', 2), 0x96: ('23x', 2), 0x97: ('23x', 2), 0x98: ('23x', 2),
    0x99: ('23x', 2), 0x9a: ('23x', 2), 0x9b: ('23x', 2), 0x9c: ('23x', 2),
    0x9d: ('23x', 2), 0x9e: ('23x', 2), 0x9f: ('23x', 2), 0xa0: ('23x', 2),
    0xa1: ('23x', 2), 0xa2: ('23x', 2), 0xa3: ('23x', 2), 0xa4: ('23x', 2),
    0xa5: ('23x', 2), 0xa6: ('23x', 2), 0xa7: ('23x', 2), 0xa8: ('23x', 2),
    0xa9: ('23x', 2), 0xaa: ('23x', 2), 0xab: ('23x', 2), 0xac: ('23x', 2),
    0xad: ('23x', 2), 0xae: ('23x', 2), 0xaf: ('23x', 2), 0xb0: ('12x', 1),
    0xb1: ('12x', 1), 0xb2: ('12x', 1), 0xb3: ('12x', 1), 0xb4: ('12x', 1),
    0xb5: ('12x', 1), 0xb6: ('12x', 1), 0xb7: ('12x', 1), 0xb8: ('12x', 1),
    0xb9: ('12x', 1), 0xba: ('12x', 1), 0xbb: ('12x', 1), 0xbc: ('12x', 1),
    0xbd: ('12x', 1), 0xbe: ('12x', 1), 0xbf: ('12x', 1), 0xc0: ('12x', 1),
    0xc1: ('12x', 1), 0xc2: ('12x', 1), 0xc3: ('12x', 1), 0xc4: ('12x', 1),
    0xc5: ('12x', 1), 0xc6: ('12x', 1), 0xc7: ('12x', 1), 0xc8: ('12x', 1),
    0xc9: ('12x', 1), 0xca: ('12x', 1), 0xcb: ('12x', 1), 0xcc: ('12x', 1),
    0xcd: ('12x', 1), 0xce: ('12x', 1), 0xcf: ('12x', 1), 0xd0: ('22s', 1),
    0xd1: ('22s', 1), 0xd2: ('22s', 1), 0xd3: ('22s', 1), 0xd4: ('22s', 1),
    0xd5: ('22s', 1), 0xd6: ('22s', 1), 0xd7: ('22s', 1), 0xd8: ('22b', 1),
    0xd9: ('22b', 1), 0xda: ('22b', 1), 0xdb: ('22b', 1), 0xdc: ('22b', 1),
    0xdd: ('22b', 1), 0xde: ('22b', 1), 0xdf: ('22b', 1), 0xe0: ('22b', 1),
    0xe1: ('22b', 1), 0xe2: ('22b', 1), 0xe3: ('22s', 1), 0xfa: ('45cc', 4),
    0xfb: ('4rcc', 4), 0xfc: ('35c', 3), 0xfd: ('3rc', 3), 0xfe: ('21c', 1),
    0xff: ('41c', 2),
}

NAMES = {
    0x00: 'nop', 0x01: 'move', 0x02: 'move/from16', 0x03: 'move/16',
    0x04: 'move-wide', 0x05: 'move-wide/from16', 0x06: 'move-wide/16',
    0x07: 'move-object', 0x08: 'move-object/from16', 0x09: 'move-object/16',
    0x0a: 'move-result', 0x0b: 'move-result-wide', 0x0c: 'move-result-object',
    0x0d: 'move-exception', 0x0e: 'return-void', 0x0f: 'return',
    0x10: 'return-wide', 0x11: 'return-object', 0x12: 'const/4', 0x13: 'const/16',
    0x14: 'const', 0x15: 'const/high16', 0x16: 'const-wide/16', 0x17: 'const-wide/32',
    0x18: 'const-wide', 0x19: 'const-wide/high16', 0x1a: 'const-string',
    0x1b: 'const-string/jumbo', 0x1c: 'const-class', 0x1d: 'monitor-enter',
    0x1e: 'monitor-exit', 0x1f: 'check-cast', 0x20: 'instance-of',
    0x21: 'array-length', 0x22: 'new-instance', 0x23: 'new-array',
    0x24: 'filled-new-array', 0x25: 'filled-new-array/range',
    0x26: 'fill-array-data', 0x27: 'throw', 0x28: 'goto', 0x29: 'goto/16',
    0x2a: 'goto/32', 0x2b: 'packed-switch', 0x2c: 'sparse-switch',
    0x2d: 'cmpl-float', 0x2e: 'cmpg-float', 0x2f: 'cmpl-double', 0x30: 'cmpg-double',
    0x31: 'cmp-long', 0x32: 'if-eq', 0x33: 'if-ne', 0x34: 'if-lt', 0x35: 'if-ge',
    0x36: 'if-gt', 0x37: 'if-le', 0x38: 'if-eqz', 0x39: 'if-nez', 0x3a: 'if-ltz',
    0x3b: 'if-gez', 0x3c: 'if-gtz', 0x3d: 'if-lez',
}

for i in range(0x44, 0x52):
    NAMES.setdefault(i, 'aget/aput')
for i in range(0x52, 0x60):
    NAMES.setdefault(i, 'iget/iput')
for i in range(0x60, 0x6e):
    NAMES.setdefault(i, 'sget/sput')
for i in range(0x6e, 0x73):
    NAMES.setdefault(i, 'invoke')
NAMES[0x74] = 'invoke-virtual/range'
NAMES[0x75] = 'invoke-super/range'
NAMES[0x76] = 'invoke-direct/range'
NAMES[0x77] = 'invoke-static/range'
NAMES[0x78] = 'invoke-interface/range'
for i in range(0x7b, 0x90):
    NAMES.setdefault(i, 'unop')
for i in range(0x90, 0xb0):
    NAMES.setdefault(i, 'binop')
for i in range(0xb0, 0xd0):
    NAMES.setdefault(i, 'binop/2addr')
for i in range(0xd0, 0xd8):
    NAMES.setdefault(i, 'binop/lit16')
for i in range(0xd8, 0xe3):
    NAMES.setdefault(i, 'binop/lit8')
NAMES[0xfa] = 'invoke-polymorphic'
NAMES[0xfb] = 'invoke-polymorphic/range'
NAMES[0xfc] = 'invoke-custom'
NAMES[0xfd] = 'invoke-custom/range'
NAMES[0xfe] = 'const-method-handle'
NAMES[0xff] = 'const-method-type'


class Dex(object):
    def __init__(self, data):
        self.d = data
        self.string_ids_size = self.u32(0x38)
        self.string_ids_off = self.u32(0x3C)
        self.type_ids_size = self.u32(0x40)
        self.type_ids_off = self.u32(0x44)
        self.proto_ids_size = self.u32(0x48)
        self.proto_ids_off = self.u32(0x4C)
        self.field_ids_size = self.u32(0x50)
        self.field_ids_off = self.u32(0x54)
        self.method_ids_size = self.u32(0x58)
        self.method_ids_off = self.u32(0x5C)
        self.class_defs_size = self.u32(0x60)
        self.class_defs_off = self.u32(0x64)

    def u32(self, o):
        return struct.unpack_from('<I', self.d, o)[0]

    def u16(self, o):
        return struct.unpack_from('<H', self.d, o)[0]

    def uleb(self, o):
        r = 0
        s = 0
        while True:
            b = self.d[o]
            o += 1
            r |= (b & 0x7F) << s
            if not (b & 0x80):
                break
            s += 7
        return r, o

    def string(self, idx):
        if idx >= self.string_ids_size:
            return '?str%d' % idx
        o = self.u32(self.string_ids_off + idx * 4)
        n, o = self.uleb(o)
        end = o + n
        raw = self.d[o:end]
        # MUTF-8 -> str, tolerating the 0xC0 0x80 surrogate
        try:
            return raw.decode('utf-8', 'replace')
        except Exception:
            return repr(raw)

    def type_desc(self, idx):
        if idx == 0xFFFFFFFF or idx >= self.type_ids_size:
            return '?type'
        return self.string(self.u32(self.type_ids_off + idx * 4))

    def field_id(self, idx):
        if idx >= self.field_ids_size:
            return '?field%d' % idx
        o = self.field_ids_off + idx * 8
        cls, typ, nam = struct.unpack_from('<HHI', self.d, o)
        return '%s->%s:%s' % (self.type_desc(cls), self.string(nam), self.type_desc(typ))

    def method_id(self, idx):
        if idx >= self.method_ids_size:
            return '?method%d' % idx
        o = self.method_ids_off + idx * 8
        cls, proto, nam = struct.unpack_from('<HHI', self.d, o)
        return '%s->%s%s' % (self.type_desc(cls), self.string(nam),
                             self.proto_desc(proto))

    def proto_desc(self, idx):
        if idx >= self.proto_ids_size:
            return '()?'
        o = self.proto_ids_off + idx * 12
        shorty, ret, params = struct.unpack_from('<III', self.d, o)
        n = (params >> 8) if params else 0
        po = (params & 0xFFFFFF) if params else 0
        args = ','.join(self.type_desc(self.u16(po + i * 2)) for i in range(n))
        return '(%s)%s' % (args, self.type_desc(ret))

    def classes(self):
        out = []
        for i in range(self.class_defs_size):
            o = self.class_defs_off + i * 32
            cls, acc, sup, ifc, src, ado, cdo, svo = struct.unpack_from('<IIIIIIII', self.d, o)
            out.append({'idx': i, 'class_idx': cls, 'access': acc, 'class_data_off': cdo,
                        'source': src})
        return out

    def methods_of(self, cdo):
        """Yield (method_idx, access, code_off)."""
        if cdo == 0:
            return
        o = cdo
        sf, o = self.uleb(o)
        inf, o = self.uleb(o)
        dm, o = self.uleb(o)
        vm, o = self.uleb(o)
        for _ in range(sf):
            _, o = self.uleb(o)
            _, o = self.uleb(o)
        for _ in range(inf):
            _, o = self.uleb(o)
            _, o = self.uleb(o)
        idx = 0
        for is_virtual, cnt in ((0, dm), (1, vm)):
            for _ in range(cnt):
                di, o = self.uleb(o)
                acc, o = self.uleb(o)
                co, o = self.uleb(o)
                idx += di
                yield idx, acc, co


def insns_of(dex, code_off):
    """Return [(addr, word0, words[])] for a code item."""
    d = dex.d
    if code_off == 0:
        return []
    regs = struct.unpack_from('<H', d, code_off)[0]
    ins = struct.unpack_from('<H', d, code_off + 12)[0]
    base = code_off + 16
    out = []
    a = 0
    while a < ins:
        w0 = struct.unpack_from('<H', d, base + a * 2)[0]
        op = w0 & 0xFF
        fmt, width = FMT.get(op, ('??', 1))
        words = [struct.unpack_from('<H', d, base + (a + k) * 2)[0] for k in range(width)]
        out.append((a, w0, words, fmt))
        a += width
    return out, regs, ins


def fmt_insn(dex, addr, op, words, fmt):
    name = NAMES.get(op, 'op%02x' % op)
    def s16(x):
        return x - 0x10000 if x & 0x8000 else x
    if fmt in ('11x',):
        return '%s v%d' % (name, (words[0] >> 8) & 0xFF)
    if fmt in ('12x',):
        return '%s v%d, v%d' % (name, (words[0] >> 8) & 0xF, (words[0] >> 12) & 0xF)
    if fmt in ('22x',):
        return '%s v%d, v%d' % (name, (words[0] >> 8) & 0xFF, words[1])
    if fmt in ('32x',):
        return '%s v%d, v%d' % (name, words[1], words[2])
    if fmt in ('11n',):
        return '%s v%d, #%d' % (name, (words[0] >> 8) & 0xF, s16((words[0] >> 12) << 12) >> 12)
    if fmt in ('21s', '21h'):
        return '%s v%d, #%d' % (name, (words[0] >> 8) & 0xFF, s16(words[1]))
    if fmt in ('31i', '31c'):
        val = struct.unpack('<i', struct.pack('<I', (words[1] << 16) | words[2]))[0]
        if fmt == '31c':
            return '%s v%d, %s' % (name, (words[0] >> 8) & 0xFF, dex.string(val))
        return '%s v%d, #%d' % (name, (words[0] >> 8) & 0xFF, val)
    if fmt == '51l':
        val = struct.unpack('<q', struct.pack('<Q', (words[1] << 48) | (words[2] << 32) |
                                              (words[3] << 16) | words[4]))[0]
        return '%s v%d, #%d' % (name, (words[0] >> 8) & 0xFF, val)
    if fmt in ('21c', '22c', '35c', '3rc', '23x', '22b', '22s', '10t', '20t',
               '30t', '31t', '45cc', '4rcc', '41c'):
        return '%s raw[%s]' % (name, ' '.join('%04x' % w for w in words))
    return name


def main():
    path = sys.argv[1]
    cls_pat = sys.argv[2].lower() if len(sys.argv) > 2 else ''
    m_pat = sys.argv[3].lower() if len(sys.argv) > 3 else ''

    if path.lower().endswith(('.jar', '.apk', '.zip')):
        z = zipfile.ZipFile(path)
        dexnames = [n for n in z.namelist() if n.endswith('.dex')]
        print('archive contains: %s' % ', '.join(dexnames))
        for n in dexnames:
            print('\n########## %s ##########' % n)
            run(z.read(n), cls_pat, m_pat)
    else:
        run(open(path, 'rb').read(), cls_pat, m_pat)


def run(data, cls_pat, m_pat):
    dex = Dex(data)
    for cd in dex.classes():
        cn = dex.type_desc(cd['class_idx'])
        if cls_pat and cls_pat not in cn.lower():
            continue
        print('\n' + '=' * 72)
        print('CLASS %s   (access=%#x)' % (cn, cd['access']))
        print('=' * 72)
        for mi, acc, co in dex.methods_of(cd['class_data_off']):
            mid = dex.method_id(mi)
            mname = mid.split('->')[-1].split('(')[0]
            if m_pat and m_pat not in mname.lower():
                continue
            print('\n  .method %s   code_off=%#x' % (mid, co))
            if not co:
                print('     (abstract/native)')
                continue
            insns, regs, count = insns_of(dex, co)
            print('     registers=%d insns=%d' % (regs, count))
            # index by addr for branch label printing
            addrs = [x[0] for x in insns]
            for addr, w0, words, fmt in insns:
                op = w0 & 0xFF
                txt = fmt_insn(dex, addr, op, words, fmt)
                suffix = ''
                # branch targets
                if fmt in ('10t',):
                    t = addr + (w0 >> 8 if (w0 >> 8) < 0x80 else (w0 >> 8) - 0x100)
                    suffix = '   -> %04x' % t
                elif fmt == '20t':
                    suffix = '   -> %04x' % (addr + words[1])
                elif fmt in ('30t',):
                    v = struct.unpack('<i', struct.pack('<I', (words[1] << 16) | words[2]))[0]
                    suffix = '   -> %04x' % (addr + v)
                elif fmt in ('21t', '31t'):
                    suffix = '   -> %04x' % (addr + words[1])
                print('     %04x: %-24s%s' % (addr, txt, suffix))


if __name__ == '__main__':
    main()
