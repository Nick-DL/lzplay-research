#!/usr/bin/env python3
"""dexdis.py - standalone DEX bytecode disassembler (no external deps).

Usage:
    python dexdis.py <file.dex|file.jar|file.apk> [--class SUBSTR] [--method SUBSTR]
                     [--list] [--raw]

Accepts a .dex directly, or a .jar/.apk (uses the first classes*.dex found).
Prints, per matching method, the full decoded instruction stream with resolved
string / type / field / method references and computed branch targets.

Written for the lzplay Huawei-CER investigation.
"""
import io
import os
import struct
import sys
import zipfile

# ---------------------------------------------------------------- opcode table
# opcode: (name, format)
OPS = {
    0x00: ('nop', '10x'), 0x01: ('move', '12x'), 0x02: ('move/from16', '22x'),
    0x03: ('move/16', '32x'), 0x04: ('move-wide', '12x'), 0x05: ('move-wide/from16', '22x'),
    0x06: ('move-wide/16', '32x'), 0x07: ('move-object', '12x'), 0x08: ('move-object/from16', '22x'),
    0x09: ('move-object/16', '32x'), 0x0a: ('move-result', '11x'), 0x0b: ('move-result-wide', '11x'),
    0x0c: ('move-result-object', '11x'), 0x0d: ('move-exception', '11x'), 0x0e: ('return-void', '10x'),
    0x0f: ('return', '11x'), 0x10: ('return-wide', '11x'), 0x11: ('return-object', '11x'),
    0x12: ('const/4', '11n'), 0x13: ('const/16', '21s'), 0x14: ('const', '31i'),
    0x15: ('const/high16', '21h'), 0x16: ('const-wide/16', '21s'), 0x17: ('const-wide/32', '31i'),
    0x18: ('const-wide', '51l'), 0x19: ('const-wide/high16', '21h'), 0x1a: ('const-string', '21c'),
    0x1b: ('const-string/jumbo', '31c'), 0x1c: ('const-class', '21c'), 0x1d: ('monitor-enter', '11x'),
    0x1e: ('monitor-exit', '11x'), 0x1f: ('check-cast', '21c'), 0x20: ('instance-of', '22c'),
    0x21: ('array-length', '12x'), 0x22: ('new-instance', '21c'), 0x23: ('new-array', '22c'),
    0x24: ('filled-new-array', '35c'), 0x25: ('filled-new-array/range', '3rc'),
    0x26: ('fill-array-data', '31t'), 0x27: ('throw', '11x'), 0x28: ('goto', '10t'),
    0x29: ('goto/16', '20t'), 0x2a: ('goto/32', '30t'), 0x2b: ('packed-switch', '31t'),
    0x2c: ('sparse-switch', '31t'), 0x2d: ('cmpl-float', '23x'), 0x2e: ('cmpg-float', '23x'),
    0x2f: ('cmpl-double', '23x'), 0x30: ('cmpg-double', '23x'), 0x31: ('cmp-long', '23x'),
    0x32: ('if-eq', '22t'), 0x33: ('if-ne', '22t'), 0x34: ('if-lt', '22t'),
    0x35: ('if-ge', '22t'), 0x36: ('if-gt', '22t'), 0x37: ('if-le', '22t'),
    0x38: ('if-eqz', '21t'), 0x39: ('if-nez', '21t'), 0x3a: ('if-ltz', '21t'),
    0x3b: ('if-gez', '21t'), 0x3c: ('if-gtz', '21t'), 0x3d: ('if-lez', '21t'),
    0x44: ('aget', '23x'), 0x45: ('aget-wide', '23x'), 0x46: ('aget-object', '23x'),
    0x47: ('aget-boolean', '23x'), 0x48: ('aget-byte', '23x'), 0x49: ('aget-char', '23x'),
    0x4a: ('aget-short', '23x'), 0x4b: ('aput', '23x'), 0x4c: ('aput-wide', '23x'),
    0x4d: ('aput-object', '23x'), 0x4e: ('aput-boolean', '23x'), 0x4f: ('aput-byte', '23x'),
    0x50: ('aput-char', '23x'), 0x51: ('aput-short', '23x'), 0x52: ('iget', '22c'),
    0x53: ('iget-wide', '22c'), 0x54: ('iget-object', '22c'), 0x55: ('iget-boolean', '22c'),
    0x56: ('iget-byte', '22c'), 0x57: ('iget-char', '22c'), 0x58: ('iget-short', '22c'),
    0x59: ('iput', '22c'), 0x5a: ('iput-wide', '22c'), 0x5b: ('iput-object', '22c'),
    0x5c: ('iput-boolean', '22c'), 0x5d: ('iput-byte', '22c'), 0x5e: ('iput-char', '22c'),
    0x5f: ('iput-short', '22c'), 0x60: ('sget', '21c'), 0x61: ('sget-wide', '21c'),
    0x62: ('sget-object', '21c'), 0x63: ('sget-boolean', '21c'), 0x64: ('sget-byte', '21c'),
    0x65: ('sget-char', '21c'), 0x66: ('sget-short', '21c'), 0x67: ('sput', '21c'),
    0x68: ('sput-wide', '21c'), 0x69: ('sput-object', '21c'), 0x6a: ('sput-boolean', '21c'),
    0x6b: ('sput-byte', '21c'), 0x6c: ('sput-char', '21c'), 0x6d: ('sput-short', '21c'),
    0x6e: ('invoke-virtual', '35c'), 0x6f: ('invoke-super', '35c'), 0x70: ('invoke-direct', '35c'),
    0x71: ('invoke-static', '35c'), 0x72: ('invoke-interface', '35c'),
    0x74: ('invoke-virtual/range', '3rc'), 0x75: ('invoke-super/range', '3rc'),
    0x76: ('invoke-direct/range', '3rc'), 0x77: ('invoke-static/range', '3rc'),
    0x78: ('invoke-interface/range', '3rc'),
    0x7b: ('neg-int', '12x'), 0x7c: ('not-int', '12x'), 0x7d: ('neg-long', '12x'),
    0x7e: ('not-long', '12x'), 0x7f: ('neg-float', '12x'), 0x80: ('neg-double', '12x'),
    0x81: ('int-to-long', '12x'), 0x82: ('int-to-float', '12x'), 0x83: ('int-to-double', '12x'),
    0x84: ('long-to-int', '12x'), 0x85: ('long-to-float', '12x'), 0x86: ('long-to-double', '12x'),
    0x87: ('float-to-int', '12x'), 0x88: ('float-to-long', '12x'), 0x89: ('float-to-double', '12x'),
    0x8a: ('double-to-int', '12x'), 0x8b: ('double-to-long', '12x'), 0x8c: ('double-to-float', '12x'),
    0x8d: ('int-to-byte', '12x'), 0x8e: ('int-to-char', '12x'), 0x8f: ('int-to-short', '12x'),
    0x90: ('add-int', '23x'), 0x91: ('sub-int', '23x'), 0x92: ('mul-int', '23x'),
    0x93: ('div-int', '23x'), 0x94: ('rem-int', '23x'), 0x95: ('and-int', '23x'),
    0x96: ('or-int', '23x'), 0x97: ('xor-int', '23x'), 0x98: ('shl-int', '23x'),
    0x99: ('shr-int', '23x'), 0x9a: ('ushr-int', '23x'), 0x9b: ('add-long', '23x'),
    0x9c: ('sub-long', '23x'), 0x9d: ('mul-long', '23x'), 0x9e: ('div-long', '23x'),
    0x9f: ('rem-long', '23x'), 0xa0: ('and-long', '23x'), 0xa1: ('or-long', '23x'),
    0xa2: ('xor-long', '23x'), 0xa3: ('shl-long', '23x'), 0xa4: ('shr-long', '23x'),
    0xa5: ('ushr-long', '23x'), 0xa6: ('add-float', '23x'), 0xa7: ('sub-float', '23x'),
    0xa8: ('mul-float', '23x'), 0xa9: ('div-float', '23x'), 0xaa: ('rem-float', '23x'),
    0xab: ('add-double', '23x'), 0xac: ('sub-double', '23x'), 0xad: ('mul-double', '23x'),
    0xae: ('div-double', '23x'), 0xaf: ('rem-double', '23x'),
    0xb0: ('add-int/2addr', '12x'), 0xb1: ('sub-int/2addr', '12x'), 0xb2: ('mul-int/2addr', '12x'),
    0xb3: ('div-int/2addr', '12x'), 0xb4: ('rem-int/2addr', '12x'), 0xb5: ('and-int/2addr', '12x'),
    0xb6: ('or-int/2addr', '12x'), 0xb7: ('xor-int/2addr', '12x'), 0xb8: ('shl-int/2addr', '12x'),
    0xb9: ('shr-int/2addr', '12x'), 0xba: ('ushr-int/2addr', '12x'), 0xbb: ('add-long/2addr', '12x'),
    0xbc: ('sub-long/2addr', '12x'), 0xbd: ('mul-long/2addr', '12x'), 0xbe: ('div-long/2addr', '12x'),
    0xbf: ('rem-long/2addr', '12x'), 0xc0: ('and-long/2addr', '12x'), 0xc1: ('or-long/2addr', '12x'),
    0xc2: ('xor-long/2addr', '12x'), 0xc3: ('shl-long/2addr', '12x'), 0xc4: ('shr-long/2addr', '12x'),
    0xc5: ('ushr-long/2addr', '12x'), 0xc6: ('add-float/2addr', '12x'), 0xc7: ('sub-float/2addr', '12x'),
    0xc8: ('mul-float/2addr', '12x'), 0xc9: ('div-float/2addr', '12x'), 0xca: ('rem-float/2addr', '12x'),
    0xcb: ('add-double/2addr', '12x'), 0xcc: ('sub-double/2addr', '12x'), 0xcd: ('mul-double/2addr', '12x'),
    0xce: ('div-double/2addr', '12x'), 0xcf: ('rem-double/2addr', '12x'),
    0xd0: ('add-int/lit16', '22s'), 0xd1: ('rsub-int', '22s'), 0xd2: ('mul-int/lit16', '22s'),
    0xd3: ('div-int/lit16', '22s'), 0xd4: ('rem-int/lit16', '22s'), 0xd5: ('and-int/lit16', '22s'),
    0xd6: ('or-int/lit16', '22s'), 0xd7: ('xor-int/lit16', '22s'), 0xd8: ('add-int/lit8', '22b'),
    0xd9: ('rsub-int/lit8', '22b'), 0xda: ('mul-int/lit8', '22b'), 0xdb: ('div-int/lit8', '22b'),
    0xdc: ('rem-int/lit8', '22b'), 0xdd: ('and-int/lit8', '22b'), 0xde: ('or-int/lit8', '22b'),
    0xdf: ('xor-int/lit8', '22b'), 0xe0: ('shl-int/lit8', '22b'), 0xe1: ('shr-int/lit8', '22b'),
    0xe2: ('ushr-int/lit8', '22b'),
    0xfa: ('invoke-polymorphic', '45cc'), 0xfb: ('invoke-polymorphic/range', '4rcc'),
    0xfc: ('invoke-custom', '35c'), 0xfd: ('invoke-custom/range', '3rc'),
    0xfe: ('const-method-handle', '21c'), 0xff: ('const-method-type', '21c'),
}

BRANCH_10t = {0x28}
BRANCH_20t = {0x29}
BRANCH_30t = {0x2a}
BRANCH_21t = {0x38, 0x39, 0x3a, 0x3b, 0x3c, 0x3d}
BRANCH_22t = {0x32, 0x33, 0x34, 0x35, 0x36, 0x37}
SWITCH = {0x2b, 0x2c}
KIND_TYPE = {0x1c, 0x1f, 0x20, 0x22, 0x23, 0x24, 0x25, 0xfe, 0xff}
KIND_FIELD = set(range(0x52, 0x6e))
KIND_STRING = {0x1a, 0x1b}
KIND_METHOD = set(range(0x6e, 0x79)) | {0xfa, 0xfb, 0xfc, 0xfd}


class Dex:
    def __init__(self, data):
        self.d = data
        self.string_ids_size = self.u32(0x38); self.string_ids_off = self.u32(0x3C)
        self.type_ids_size = self.u32(0x40); self.type_ids_off = self.u32(0x44)
        self.proto_ids_size = self.u32(0x48); self.proto_ids_off = self.u32(0x4C)
        self.field_ids_size = self.u32(0x50); self.field_ids_off = self.u32(0x54)
        self.method_ids_size = self.u32(0x58); self.method_ids_off = self.u32(0x5C)
        self.class_defs_size = self.u32(0x60); self.class_defs_off = self.u32(0x64)
        self._s = {}

    def u32(self, o): return struct.unpack_from('<I', self.d, o)[0]
    def u16(self, o): return struct.unpack_from('<H', self.d, o)[0]

    def string(self, idx):
        if idx in self._s: return self._s[idx]
        off = self.u32(self.string_ids_off + idx * 4)
        i = off; shift = 0; ln = 0
        while True:
            b = self.d[i]; i += 1
            ln |= (b & 0x7f) << shift; shift += 7
            if not (b & 0x80): break
        raw = self.d[i:i + ln]
        out = bytearray(); j = 0
        while j < len(raw):
            c = raw[j]
            if c == 0: out.append(0); j += 1
            elif c < 0x80: out.append(c); j += 1
            elif (c & 0xE0) == 0xC0:
                out.append(((c & 0x1F) << 6) | (raw[j+1] & 0x3F)); j += 2
            elif (c & 0xF0) == 0xE0:
                out.append(((c & 0x0F) << 12) | ((raw[j+1] & 0x3F) << 6) | (raw[j+2] & 0x3F)); j += 3
            else:
                out.append(0x3F); j += 1
        s = out.decode('utf-8', 'replace')
        self._s[idx] = s
        return s

    def type_str(self, idx):
        return self.string(self.u32(self.type_ids_off + idx * 4))

    def field_str(self, idx):
        b = self.field_ids_off + idx * 8
        return '%s.%s' % (self.type_str(self.u16(b)), self.string(self.u32(b + 4)))

    def method_str(self, idx, with_proto=True):
        b = self.method_ids_off + idx * 8
        cls = self.type_str(self.u16(b))
        proto = self.u16(b + 2)
        name = self.string(self.u32(b + 4))
        if not with_proto:
            return '%s.%s' % (cls, name)
        pb = self.proto_ids_off + proto * 12
        ret = self.type_str(self.u32(pb + 4))
        params_off = self.u32(pb + 8)
        if params_off == 0:
            params = []
        else:
            n = self.u32(params_off)
            params = [self.type_str(self.u16(params_off + 4 + 2 * k)) for k in range(n)]
        return '%s.%s(%s)%s' % (cls, name, ''.join(params), ret)

    def type_list(self, off):
        if off == 0:
            return []
        n = self.u32(off)
        return [self.type_str(self.u16(off + 4 + 2 * k)) for k in range(n)]

    def classes(self):
        for ci in range(self.class_defs_size):
            base = self.class_defs_off + ci * 32
            yield self.type_str(self.u32(base)), base

    def methods_of(self, base):
        """yield (kind, method_idx, code_off). method_idx_diff is a delta."""
        cdo = self.u32(base + 24)
        if cdo == 0: return
        p = [cdo]
        def uleb():
            q = p[0]; res = 0; shift = 0
            while True:
                b = self.d[q]; q += 1
                res |= (b & 0x7f) << shift; shift += 7
                if not (b & 0x80): break
            p[0] = q
            return res
        sf = uleb(); inf = uleb(); dm = uleb(); vm = uleb()
        for _ in range(sf + inf):
            uleb(); uleb()
        for kind, cnt in (('direct', dm), ('virtual', vm)):
            idx = 0
            for _ in range(cnt):
                idx += uleb()          # method_idx_diff
                uleb()                 # access_flags
                code = uleb()
                yield kind, idx, code


def decode(dx, code, insns_size):
    """Yield (addr, mnemonic_text, opcode, size_units)"""
    i = 0
    while i < insns_size:
        addr = i
        unit = struct.unpack_from('<H', code, i * 2)[0]
        op = unit & 0xFF
        hi = (unit >> 8) & 0xFF
        if op == 0x00 and hi in (1, 2, 3):
            # payload
            if hi == 1:
                size = struct.unpack_from('<H', code, i * 2 + 2)[0]
                n = (size * 2) + 4
                yield addr, 'packed-switch-payload size=%d' % size, -1, n
            elif hi == 2:
                size = struct.unpack_from('<H', code, i * 2 + 2)[0]
                n = (size * 4) + 2
                yield addr, 'sparse-switch-payload size=%d' % size, -1, n
            else:
                elem_width = struct.unpack_from('<H', code, i * 2 + 2)[0]
                size = struct.unpack_from('<I', code, i * 2 + 4)[0]
                n = ((size * elem_width + 1) // 2) + 4
                yield addr, 'fill-array-data-payload width=%d size=%d' % (elem_width, size), -1, n
            i += n
            continue

        if op not in OPS:
            yield addr, 'UNKNOWN_OP_0x%02x' % op, op, 1
            i += 1
            continue

        name, fmt = OPS[op]
        a = (unit >> 8) & 0xF
        b = (unit >> 12) & 0xF
        aa = (unit >> 8) & 0xFF

        def u(off): return struct.unpack_from('<H', code, (i + off) * 2)[0]
        def s16(off): return struct.unpack_from('<h', code, (i + off) * 2)[0]
        def s32(off): return struct.unpack_from('<i', code, (i + off) * 2)[0]
        def u32at(off): return struct.unpack_from('<I', code, (i + off) * 2)[0]

        txt = ''
        sz = 1

        if fmt == '10x':
            txt = ''
        elif fmt == '12x':
            txt = 'v%d, v%d' % (a, b)
        elif fmt == '11n':
            sv = b - 16 if b >= 8 else b          # const/4 is a SIGNED nibble
            txt = 'v%d, #%d' % (a, sv)
        elif fmt == '11x':
            txt = 'v%d' % aa
        elif fmt == '10t':
            off = (unit >> 8) & 0xFF
            off = off - 256 if off > 127 else off
            txt = '-> %04x' % (addr + off)
        elif fmt == '20t':
            off = s16(1); sz = 2
            txt = '-> %04x' % (addr + off)
        elif fmt == '30t':
            off = s32(1); sz = 3
            txt = '-> %04x' % (addr + off)
        elif fmt == '22x':
            txt = 'v%d, v%d' % (aa, u(1)); sz = 2
        elif fmt == '21t':
            off = s16(1); sz = 2
            txt = 'v%d, -> %04x' % (aa, addr + off)
        elif fmt == '21s':
            txt = 'v%d, #%d' % (aa, s16(1)); sz = 2
        elif fmt == '21h':
            txt = 'v%d, #0x%x' % (aa, s16(1) << 16); sz = 2
        elif fmt == '21c':
            idx = u(1); sz = 2
            if op in KIND_STRING: txt = 'v%d, "%s"' % (aa, dx.string(idx))
            elif op in KIND_TYPE: txt = 'v%d, %s' % (aa, dx.type_str(idx))
            else: txt = 'v%d, %s' % (aa, dx.field_str(idx))
        elif fmt == '22c':
            idx = u(1); sz = 2
            if op in KIND_TYPE: txt = 'v%d, v%d, %s' % (a, b, dx.type_str(idx))
            else: txt = 'v%d, v%d, %s' % (a, b, dx.field_str(idx))
        elif fmt == '22s':
            txt = 'v%d, v%d, #%d' % (a, b, s16(1)); sz = 2
        elif fmt == '22b':
            c = (u(1) >> 8) & 0xFF
            c = c - 256 if c > 127 else c
            txt = 'v%d, v%d, #%d' % (aa, u(1) & 0xFF, c); sz = 2
        elif fmt == '22t':
            off = s16(1); sz = 2
            txt = 'v%d, v%d, -> %04x' % (a, b, addr + off)
        elif fmt == '23x':
            txt = 'v%d, v%d, v%d' % (aa, u(1) & 0xFF, (u(1) >> 8) & 0xFF); sz = 2
        elif fmt == '32x':
            txt = 'v%d, v%d' % (u(1), u(2)); sz = 3
        elif fmt == '31i':
            txt = 'v%d, #0x%x' % (aa, u32at(1)); sz = 3
        elif fmt == '31t':
            off = s32(1); sz = 3
            txt = 'v%d, -> %04x' % (aa, addr + off)
        elif fmt == '31c':
            txt = 'v%d, "%s"' % (aa, dx.string(u32at(1))); sz = 3
        elif fmt == '35c':
            # A|G|op BBBB F|E|D|C   (3 units)
            idx = u(1); sz = 3
            cnt = (unit >> 12) & 0xF
            greg = (unit >> 8) & 0xF
            u2 = u(2)
            regs = [u2 & 0xF, (u2 >> 4) & 0xF, (u2 >> 8) & 0xF, (u2 >> 12) & 0xF]
            if cnt == 5: regs.append(greg)
            regs = regs[:cnt]
            if op in KIND_TYPE: rtxt = dx.type_str(idx)
            elif op in KIND_METHOD: rtxt = dx.method_str(idx)
            else: rtxt = dx.type_str(idx)
            txt = '{%s}, %s' % (', '.join('v%d' % r for r in regs), rtxt)
        elif fmt == '3rc':
            # AA|op BBBB CCCC   (3 units)
            idx = u(1); sz = 3
            cnt = aa; first = u(2)
            if op in KIND_TYPE: rtxt = dx.type_str(idx)
            elif op in KIND_METHOD: rtxt = dx.method_str(idx)
            else: rtxt = 'site@%d' % idx
            txt = '{v%d..v%d}, %s' % (first, first + cnt - 1, rtxt)
        elif fmt == '51l':
            lo = u32at(1); hi2 = u32at(3)
            txt = 'v%d, #0x%x' % (aa, (hi2 << 32) | lo); sz = 5
        elif fmt == '45cc':
            # A|G|op BBBB F|E|D|C HHHH  (4 units)
            idx = u(1); sz = 4
            cnt = (unit >> 12) & 0xF
            greg = (unit >> 8) & 0xF
            u2 = u(2)
            regs = [u2 & 0xF, (u2 >> 4) & 0xF, (u2 >> 8) & 0xF, (u2 >> 12) & 0xF]
            if cnt == 5: regs.append(greg)
            regs = regs[:cnt]
            txt = '{%s}, %s, proto@%d' % (', '.join('v%d' % r for r in regs), dx.method_str(idx), u(3))
        elif fmt == '4rcc':
            # AA|op BBBB CCCC HHHH  (4 units)
            idx = u(1); sz = 4
            cnt = aa; first = u(2)
            txt = '{v%d..v%d}, %s, proto@%d' % (first, first + cnt - 1, dx.method_str(idx), u(3))
        else:
            txt = '<fmt %s>' % fmt

        yield addr, txt, op, sz
        i += sz


def load_dex(path):
    with open(path, 'rb') as f:
        head = f.read(8)
    if head[:4] == b'dex\n':
        return [open(path, 'rb').read()]
    if head[:2] == b'PK':
        out = []
        with zipfile.ZipFile(path) as z:
            names = sorted(n for n in z.namelist() if n.endswith('.dex'))
            for n in names:
                out.append(z.read(n))
        return out
    raise SystemExit('not a dex or zip: %s' % path)


def main():
    args = sys.argv[1:]
    if not args:
        print(__doc__); return
    path = args[0]
    cls_filter = None; meth_filter = None; list_only = False
    i = 1
    while i < len(args):
        if args[i] == '--class': cls_filter = args[i+1].lower(); i += 2
        elif args[i] == '--method': meth_filter = args[i+1].lower(); i += 2
        elif args[i] == '--list': list_only = True; i += 1
        else: i += 1

    for raw in load_dex(path):
        dx = Dex(raw)
        for name, base in dx.classes():
            if cls_filter and cls_filter not in name.lower():
                continue
            if list_only:
                print(name); continue
            printed_header = False
            for kind, midx, code in dx.methods_of(base):
                mname = dx.method_str(midx)
                if meth_filter and meth_filter not in mname.lower():
                    continue
                if not printed_header:
                    print('=' * 78); print('CLASS', name); printed_header = True
                print('  --- [%s] %s   code_off=%d' % (kind, mname, code))
                if not code:
                    print('      (abstract/native)'); continue
                registers = dx.u16(code)
                ins_size = dx.u16(code + 2)
                outs_size = dx.u16(code + 4)
                tries = dx.u16(code + 6)
                insns_size = dx.u32(code + 12)
                print('      registers=%d ins=%d outs=%d tries=%d insns=%d'
                      % (registers, ins_size, outs_size, tries, insns_size))
                cbuf = raw[code + 16: code + 16 + insns_size * 2]
                for addr, txt, op, sz in decode(dx, cbuf, insns_size):
                    if op == -1:
                        print('      %04x: [payload] %s' % (addr, txt))
                        continue
                    mn = OPS[op][0] if op in OPS else 'op_%02x' % op
                    line = ('%s %s' % (mn, txt)).rstrip()
                    print('      %04x: %-58s' % (addr, line))


if __name__ == '__main__':
    main()
