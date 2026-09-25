#!/usr/bin/env python3
"""Dump DEX method bytecode as readable pseudo-smali (op names + operands + string refs)."""
import struct, sys, zipfile, os

OPNAMES = {
    0x00: 'nop', 0x01: 'move', 0x02: 'move/from16', 0x03: 'move/16', 0x04: 'move-wide',
    0x05: 'move-wide/from16', 0x06: 'move-wide/16', 0x07: 'move-object', 0x08: 'move-object/from16',
    0x09: 'move-object/16', 0x0a: 'move-result', 0x0b: 'move-result-wide', 0x0c: 'move-result-object',
    0x0d: 'move-exception', 0x0e: 'return-void', 0x0f: 'return', 0x10: 'return-wide',
    0x11: 'return-object', 0x12: 'const/4', 0x13: 'const/16', 0x14: 'const', 0x15: 'const/high16',
    0x16: 'const-wide/16', 0x17: 'const-wide/32', 0x18: 'const-wide', 0x19: 'const-wide/high16',
    0x1a: 'const-string', 0x1b: 'const-string/jumbo', 0x1c: 'const-class', 0x1d: 'monitor-enter',
    0x1e: 'monitor-exit', 0x1f: 'check-cast', 0x20: 'instance-of', 0x21: 'array-length',
    0x22: 'new-instance', 0x23: 'new-array', 0x24: 'filled-new-array', 0x25: 'filled-new-array/range',
    0x26: 'fill-array-data', 0x27: 'throw', 0x28: 'goto', 0x29: 'goto/16', 0x2a: 'goto/32',
    0x2b: 'packed-switch', 0x2c: 'sparse-switch', 0x2d: 'cmpl-float', 0x2e: 'cmpg-float',
    0x2f: 'cmpl-double', 0x30: 'cmpg-double', 0x31: 'cmp-long', 0x32: 'if-eq', 0x33: 'if-ne',
    0x34: 'if-lt', 0x35: 'if-ge', 0x36: 'if-gt', 0x37: 'if-le', 0x38: 'if-eqz', 0x39: 'if-nez',
    0x3a: 'if-ltz', 0x3b: 'if-gez', 0x3c: 'if-gtz', 0x3d: 'if-lez',
    0x44: 'aget', 0x45: 'aget-wide', 0x46: 'aget-object', 0x47: 'aget-boolean', 0x48: 'aget-byte',
    0x49: 'aget-char', 0x4a: 'aget-short', 0x4b: 'aput', 0x4c: 'aput-wide', 0x4d: 'aput-object',
    0x4e: 'aput-boolean', 0x4f: 'aput-byte', 0x50: 'aput-char', 0x51: 'aput-short',
    0x52: 'iget', 0x53: 'iget-wide', 0x54: 'iget-object', 0x55: 'iget-boolean', 0x56: 'iget-byte',
    0x57: 'iget-char', 0x58: 'iget-short', 0x59: 'iput', 0x5a: 'iput-wide', 0x5b: 'iput-object',
    0x5c: 'iput-boolean', 0x5d: 'iput-byte', 0x5e: 'iput-char', 0x5f: 'iput-short',
    0x60: 'sget', 0x61: 'sget-wide', 0x62: 'sget-object', 0x63: 'sget-boolean', 0x64: 'sget-byte',
    0x65: 'sget-char', 0x66: 'sget-short', 0x67: 'sput', 0x68: 'sput-wide', 0x69: 'sput-object',
    0x6a: 'sput-boolean', 0x6b: 'sput-byte', 0x6c: 'sput-char', 0x6d: 'sput-short',
    0x6e: 'invoke-virtual', 0x6f: 'invoke-super', 0x70: 'invoke-direct', 0x71: 'invoke-static',
    0x72: 'invoke-interface', 0x74: 'invoke-virtual/range', 0x75: 'invoke-super/range',
    0x76: 'invoke-direct/range', 0x77: 'invoke-static/range', 0x78: 'invoke-interface/range',
    0x7b: 'neg-int', 0x7c: 'not-int', 0x7d: 'neg-long', 0x7e: 'not-long', 0x7f: 'neg-float',
    0x80: 'neg-double', 0x81: 'int-to-long', 0x82: 'int-to-float', 0x83: 'int-to-double',
    0x84: 'long-to-int', 0x85: 'long-to-float', 0x86: 'long-to-double', 0x87: 'float-to-int',
    0x88: 'float-to-long', 0x89: 'float-to-double', 0x8a: 'double-to-int', 0x8b: 'double-to-long',
    0x8c: 'double-to-float', 0x8d: 'int-to-byte', 0x8e: 'int-to-char', 0x8f: 'int-to-short',
    0x90: 'add-int', 0x91: 'sub-int', 0x92: 'mul-int', 0x93: 'div-int', 0x94: 'rem-int',
    0x95: 'and-int', 0x96: 'or-int', 0x97: 'xor-int', 0x98: 'shl-int', 0x99: 'shr-int',
    0x9a: 'ushr-int', 0x9b: 'add-long', 0x9c: 'sub-long', 0x9d: 'mul-long', 0x9e: 'div-long',
    0x9f: 'rem-long', 0xa0: 'and-long', 0xa1: 'or-long', 0xa2: 'xor-long', 0xa3: 'shl-long',
    0xa4: 'shr-long', 0xa5: 'ushr-long', 0xa6: 'add-float', 0xa7: 'sub-float', 0xa8: 'mul-float',
    0xa9: 'div-float', 0xaa: 'rem-float', 0xab: 'add-double', 0xac: 'sub-double',
    0xad: 'mul-double', 0xae: 'div-double', 0xaf: 'rem-double', 0xb0: 'add-int/2addr',
    0xb1: 'sub-int/2addr', 0xb2: 'mul-int/2addr', 0xb3: 'div-int/2addr', 0xb4: 'rem-int/2addr',
    0xb5: 'and-int/2addr', 0xb6: 'or-int/2addr', 0xb7: 'xor-int/2addr', 0xb8: 'shl-int/2addr',
    0xb9: 'shr-int/2addr', 0xba: 'ushr-int/2addr', 0xbb: 'add-long/2addr', 0xbc: 'sub-long/2addr',
    0xbd: 'mul-long/2addr', 0xbe: 'div-long/2addr', 0xbf: 'rem-long/2addr', 0xc0: 'and-long/2addr',
    0xc1: 'or-long/2addr', 0xc2: 'xor-long/2addr', 0xc3: 'shl-long/2addr', 0xc4: 'shr-long/2addr',
    0xc5: 'ushr-long/2addr', 0xc6: 'add-float/2addr', 0xc7: 'sub-float/2addr', 0xc8: 'mul-float/2addr',
    0xc9: 'div-float/2addr', 0xca: 'rem-float/2addr', 0xcb: 'add-double/2addr',
    0xcc: 'sub-double/2addr', 0xcd: 'mul-double/2addr', 0xce: 'div-double/2addr',
    0xcf: 'rem-double/2addr', 0xd0: 'add-int/lit16', 0xd1: 'rsub-int', 0xd2: 'mul-int/lit16',
    0xd3: 'div-int/lit16', 0xd4: 'rem-int/lit16', 0xd5: 'and-int/lit16', 0xd6: 'or-int/lit16',
    0xd7: 'xor-int/lit16', 0xd8: 'add-int/lit8', 0xd9: 'rsub-int/lit8', 0xda: 'mul-int/lit8',
    0xdb: 'div-int/lit8', 0xdc: 'rem-int/lit8', 0xdd: 'and-int/lit8', 0xde: 'or-int/lit8',
    0xdf: 'xor-int/lit8', 0xe0: 'shl-int/lit8', 0xe1: 'shr-int/lit8', 0xe2: 'ushr-int/lit8',
}

WIDTHS = {}  # opcode -> instruction width in 16-bit units


def build_widths():
    """Width in 16-bit code units is the first digit of the DexOpcodes format."""
    for op in range(256):
        WIDTHS[op] = int(FMT[op][0])


# DexOpcodes format bytes
FMT = {
    0x00: '10x', 0x01: '12x', 0x02: '22x', 0x03: '32x', 0x04: '12x', 0x05: '22x', 0x06: '32x',
    0x07: '12x', 0x08: '22x', 0x09: '32x', 0x0a: '11x', 0x0b: '11x', 0x0c: '11x', 0x0d: '11x',
    0x0e: '10x', 0x0f: '11x', 0x10: '11x', 0x11: '11x', 0x12: '11n', 0x13: '21s', 0x14: '31i',
    0x15: '21h', 0x16: '21s', 0x17: '31i', 0x18: '51l', 0x19: '21h', 0x1a: '21c', 0x1b: '31c',
    0x1c: '21c', 0x1d: '11x', 0x1e: '11x', 0x1f: '21c', 0x20: '22c', 0x21: '12x', 0x22: '21c',
    0x23: '22c', 0x24: '35c', 0x25: '3rc', 0x26: '31t', 0x27: '11x', 0x28: '10t', 0x29: '20t',
    0x2a: '30t', 0x2b: '31t', 0x2c: '31t', 0x2d: '23x', 0x2e: '23x', 0x2f: '23x', 0x30: '23x',
    0x31: '23x', 0x32: '22t', 0x33: '22t', 0x34: '22t', 0x35: '22t', 0x36: '22t', 0x37: '22t',
    0x38: '21t', 0x39: '21t', 0x3a: '21t', 0x3b: '21t', 0x3c: '21t', 0x3d: '21t',
    0x44: '23x', 0x45: '23x', 0x46: '23x', 0x47: '23x', 0x48: '23x', 0x49: '23x', 0x4a: '23x',
    0x4b: '23x', 0x4c: '23x', 0x4d: '23x', 0x4e: '23x', 0x4f: '23x', 0x50: '23x', 0x51: '23x',
    0x52: '22c', 0x53: '22c', 0x54: '22c', 0x55: '22c', 0x56: '22c', 0x57: '22c', 0x58: '22c',
    0x59: '22c', 0x5a: '22c', 0x5b: '22c', 0x5c: '22c', 0x5d: '22c', 0x5e: '22c', 0x5f: '22c',
    0x60: '21c', 0x61: '21c', 0x62: '21c', 0x63: '21c', 0x64: '21c', 0x65: '21c', 0x66: '21c',
    0x67: '21c', 0x68: '21c', 0x69: '21c', 0x6a: '21c', 0x6b: '21c', 0x6c: '21c', 0x6d: '21c',
    0x6e: '35c', 0x6f: '35c', 0x70: '35c', 0x71: '35c', 0x72: '35c',
    0x74: '3rc', 0x75: '3rc', 0x76: '3rc', 0x77: '3rc', 0x78: '3rc',
    0x7b: '12x', 0x7c: '12x', 0x7d: '12x', 0x7e: '12x', 0x7f: '12x', 0x80: '12x',
    0x81: '12x', 0x82: '12x', 0x83: '12x', 0x84: '12x', 0x85: '12x', 0x86: '12x', 0x87: '12x',
    0x88: '12x', 0x89: '12x', 0x8a: '12x', 0x8b: '12x', 0x8c: '12x', 0x8d: '12x', 0x8e: '12x',
    0x8f: '12x',
    0x90: '23x', 0x91: '23x', 0x92: '23x', 0x93: '23x', 0x94: '23x', 0x95: '23x', 0x96: '23x',
    0x97: '23x', 0x98: '23x', 0x99: '23x', 0x9a: '23x', 0x9b: '23x', 0x9c: '23x', 0x9d: '23x',
    0x9e: '23x', 0x9f: '23x', 0xa0: '23x', 0xa1: '23x', 0xa2: '23x', 0xa3: '23x', 0xa4: '23x',
    0xa5: '23x', 0xa6: '23x', 0xa7: '23x', 0xa8: '23x', 0xa9: '23x', 0xaa: '23x', 0xab: '23x',
    0xac: '23x', 0xad: '23x', 0xae: '23x', 0xaf: '23x', 0xb0: '12x', 0xb1: '12x', 0xb2: '12x',
    0xb3: '12x', 0xb4: '12x', 0xb5: '12x', 0xb6: '12x', 0xb7: '12x', 0xb8: '12x', 0xb9: '12x',
    0xba: '12x', 0xbb: '12x', 0xbc: '12x', 0xbd: '12x', 0xbe: '12x', 0xbf: '12x', 0xc0: '12x',
    0xc1: '12x', 0xc2: '12x', 0xc3: '12x', 0xc4: '12x', 0xc5: '12x', 0xc6: '12x', 0xc7: '12x',
    0xc8: '12x', 0xc9: '12x', 0xca: '12x', 0xcb: '12x', 0xcc: '12x', 0xcd: '12x', 0xce: '12x',
    0xcf: '12x',
    0xd0: '22s', 0xd1: '22s', 0xd2: '22s', 0xd3: '22s', 0xd4: '22s', 0xd5: '22s', 0xd6: '22s',
    0xd7: '22s',
    0xd8: '22b', 0xd9: '22b', 0xda: '22b', 0xdb: '22b', 0xdc: '22b', 0xdd: '22b', 0xde: '22b',
    0xdf: '22b', 0xe0: '22b', 0xe1: '22b', 0xe2: '22b',
}
for op in range(256):
    FMT.setdefault(op, '10x')

build_widths()


class Dex:
    def __init__(self, data):
        self.d = data
        self.string_ids_size = self.u32(56); self.string_ids_off = self.u32(60)
        self.type_ids_size = self.u32(64);   self.type_ids_off = self.u32(68)
        self.proto_ids_size = self.u32(72);  self.proto_ids_off = self.u32(76)
        self.field_ids_size = self.u32(80);  self.field_ids_off = self.u32(84)
        self.method_ids_size = self.u32(88); self.method_ids_off = self.u32(92)
        self.class_defs_size = self.u32(96); self.class_defs_off = self.u32(100)
        self._sc = {}
        self._tc = {}

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
    def string(self, i):
        if i in self._sc: return self._sc[i]
        o = self.string_ids_off + i * 4
        if i >= self.string_ids_size or o + 4 > len(self.d):
            v = '<str#%d OOB>' % i
        else:
            p0 = self.u32(o)
            if p0 + 5 > len(self.d):
                v = '<str#%d badptr %#x>' % (i, p0)
            else:
                n, p = self.uleb(p0)
                if p + n > len(self.d):
                    v = '<str#%d truncated>' % i
                else:
                    v = self.d[p:p + n].decode('utf-8', 'replace')
        self._sc[i] = v
        return v

    def type_desc(self, i):
        if i in self._tc: return self._tc[i]
        o = self.type_ids_off + i * 4
        if i >= self.type_ids_size or o + 4 > len(self.d):
            v = '<type#%d OOB>' % i
        else:
            v = self.string(self.u32(o))
        self._tc[i] = v
        return v

    def method_id(self, i):
        b = self.method_ids_off + i * 8
        if i >= self.method_ids_size or b + 8 > len(self.d):
            return ('<mcls#%d OOB>' % i, '<mname>', 0)
        return (self.type_desc(self.u16(b)), self.string(self.u32(b + 4)), self.u16(b + 2))

    def field_id(self, i):
        b = self.field_ids_off + i * 8
        if i >= self.field_ids_size or b + 8 > len(self.d):
            return ('<fcls#%d OOB>' % i, '<fname>', '<ftype>')
        return (self.type_desc(self.u16(b)), self.string(self.u32(b + 4)), self.type_desc(self.u16(b + 2)))
    def proto_shorty(self, i):
        b = self.proto_ids_off + i * 12
        return self.string(self.u32(b))

    def classes(self):
        for i in range(self.class_defs_size):
            b = self.class_defs_off + i * 32
            if b + 32 > len(self.d):
                break
            yield dict(class_idx=self.u32(b), access=self.u32(b + 4), superclass_idx=self.u32(b + 8),
                       source_file_idx=self.u32(b + 16), class_data_off=self.u32(b + 24))

    def methods_of(self, cdata_off):
        """Yields (method_idx, access, code_off, is_virtual)."""
        if cdata_off == 0 or cdata_off >= len(self.d): return
        off = cdata_off
        sf, off = self.uleb(off); inf, off = self.uleb(off)
        dm, off = self.uleb(off); vm, off = self.uleb(off)
        if dm > 5000 or vm > 5000 or sf > 5000 or inf > 5000:
            return  # not a real class_data (encrypted region)
        def skip_fields(off, n):
            idx = 0
            for _ in range(n):
                di, off = self.uleb(off); ai, off = self.uleb(off); idx += di
            return off
        try:
            off = skip_fields(off, sf); off = skip_fields(off, inf)
            idx = 0
            for is_v in (0, 1):
                n = dm if is_v == 0 else vm
                for _ in range(n):
                    di, off = self.uleb(off); ai, off = self.uleb(off); co, off = self.uleb(off)
                    idx += di
                    yield (idx, ai, co, bool(is_v))
        except (struct.error, IndexError):
            return

    def dump_code(self, code_off, insns_size=None, indent='    '):
        d = self.d
        if code_off == 0: return [indent + '<abstract/native: no code>']
        regs = self.u16(code_off)
        ins = self.u16(code_off + 2)
        outs = self.u16(code_off + 4)
        tries = self.u16(code_off + 6)
        dbg = self.u32(code_off + 8)
        n = self.u32(code_off + 12)
        out = ['%s; registers=%d ins=%d outs=%d tries=%d insns=%d @%#x'
               % (indent, regs, ins, outs, tries, n, code_off)]
        base = code_off + 16
        i = 0
        while i < n:
            u = self.u16(base + i * 2)
            op = u & 0xff
            fmt = FMT.get(op, '10x')
            width = WIDTHS.get(op, 1)
            raw = [self.u16(base + (i + k) * 2) for k in range(width)]
            txt = self._fmt(op, fmt, raw, base + i * 2)
            out.append('%s%06x: %-22s %s' % (indent, i * 2, OPNAMES.get(op, 'op%02x' % op), txt))
            i += width
        return out

    def _fmt(self, op, fmt, raw, addr):
        d = self.d
        u0 = raw[0]
        def sx(v, bits=16):
            m = 1 << (bits - 1)
            return (v ^ m) - m
        AA = (u0 >> 8) & 0xff
        A = (u0 >> 8) & 0xf
        B = (u0 >> 12) & 0xf
        if fmt == '10x': return ''
        if fmt == '12x': return 'v%d, v%d' % (A, B)
        if fmt == '11x': return 'v%d' % AA
        if fmt == '11n': return 'v%d, #%d' % (A, sx(B, 4))
        if fmt == '10t': return '-> %+d (0x%x)' % (sx(AA, 8), addr + sx(AA, 8) * 2)
        if fmt == '20t': return '-> %+d (0x%x)' % (sx(raw[1], 16), addr + sx(raw[1], 16) * 2)
        if fmt == '30t': return '-> %+d (0x%x)' % (struct.unpack('<i', struct.pack('<I', raw[1] | (raw[2] << 16)))[0],
                                                  addr + struct.unpack('<i', struct.pack('<I', raw[1] | (raw[2] << 16)))[0] * 2)
        if fmt == '21s': return 'v%d, #%+d' % (A, sx(raw[1], 16))
        if fmt == '21h': return 'v%d, #%+d' % (A, sx(raw[1], 16))
        if fmt == '22s': return 'v%d, v%d, #%+d' % (A, B, sx(raw[1], 16))
        if fmt == '22b': return 'v%d, v%d, #%+d' % (AA, (raw[1] >> 8) & 0xff, sx(raw[1] & 0xff, 8))
        if fmt == '21t': return 'v%d, -> %+d (0x%x)' % (AA, sx(raw[1], 16), addr + sx(raw[1], 16) * 2)
        if fmt == '22t': return 'v%d, v%d, -> %+d (0x%x)' % (A, B, sx(raw[1], 16), addr + sx(raw[1], 16) * 2)
        if fmt == '31i': return 'v%d, #%#x (%d)' % (AA, raw[1] | (raw[2] << 16), raw[1] | (raw[2] << 16))
        if fmt == '31t': return 'v%d, -> %#x' % (AA, addr + struct.unpack('<i', struct.pack('<I', raw[1] | (raw[2] << 16)))[0] * 2)
        if fmt == '31c':
            idx = raw[1] | (raw[2] << 16)
            return 'v%d, %s  ; idx=%d' % (AA, self._const_ref(op, idx), idx)
        if fmt == '21c':
            idx = raw[1]
            return 'v%d, %s  ; idx=%d' % (AA, self._const_ref(op, idx), idx)
        if fmt == '22c':
            idx = raw[1]
            return 'v%d, v%d, %s  ; idx=%d' % (A, B, self._const_ref(op, idx), idx)
        if fmt == '23x': return 'v%d, v%d, v%d' % (AA, (raw[1] >> 8) & 0xff, raw[1] & 0xff)
        if fmt == '32x': return 'v%d, v%d' % (raw[1], raw[2])
        if fmt == '51l':
            v = raw[1] | (raw[2] << 16) | (raw[3] << 32) | (raw[4] << 48)
            return 'v%d, #%#x' % (AA, v)
        if fmt in ('35c',):
            idx = raw[1]
            cnt = (u0 >> 12) & 0xf
            G = (u0 >> 8) & 0xf
            regs = [(raw[2] & 0xf), (raw[2] >> 4) & 0xf, (raw[2] >> 8) & 0xf, (raw[2] >> 12) & 0xf, G]
            arg = ', '.join('v%d' % r for r in regs[:cnt])
            return '{%s}, %s  ; idx=%d' % (arg, self._const_ref(op, idx), idx)
        if fmt == '3rc':
            idx = raw[1]; cnt = raw[2]; start = (u0 >> 8) & 0xff
            return '{v%d..v%d}, %s  ; idx=%d' % (start, start + cnt - 1, self._const_ref(op, idx), idx)
        return 'raw=' + ','.join(hex(x) for x in raw)

    def _const_ref(self, op, idx):
        try:
            if op in (0x1a, 0x1b): return '"%s"' % self.string(idx).replace('\n', '\\n')
            if op == 0x1c: return self.type_desc(idx)
            if op in (0x1f,): return self.type_desc(idx)
            if op == 0x20: return self.type_desc(idx)
            if op == 0x22: return self.type_desc(idx)
            if op == 0x23: return self.type_desc(idx)
            if op in (0x52, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59, 0x5a, 0x5b, 0x5c, 0x5d, 0x5e, 0x5f):
                return '%s->%s : %s' % self.field_id(idx)
            if op in (0x60, 0x61, 0x62, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69, 0x6a, 0x6b, 0x6c, 0x6d):
                return '%s->%s : %s' % self.field_id(idx)
            if op in (0x6e, 0x6f, 0x70, 0x71, 0x72, 0x74, 0x75, 0x76, 0x77, 0x78):
                c, n, p = self.method_id(idx)
                return '%s->%s' % (c, n)
        except Exception as e:
            return '<err %s>' % e
        return 'ref%d' % idx


def main():
    apk = sys.argv[1]; outfile = sys.argv[2]
    cls_filter = sys.argv[3] if len(sys.argv) > 3 else None
    z = zipfile.ZipFile(apk)
    name = 'classes.dex'
    if len(sys.argv) > 4: name = sys.argv[4]
    dx = Dex(z.read(name))
    out = []
    w = out.append
    for cd in dx.classes():
        cname = dx.type_desc(cd['class_idx'])
        if cls_filter and cls_filter not in cname:
            continue
        sup = dx.type_desc(cd['superclass_idx']) if cd['superclass_idx'] != 0xffffffff else '-'
        w('')
        w('#' * 78)
        w('CLASS %s extends %s  (access=%#x, class_data_off=%#x)' % (cname, sup, cd['access'], cd['class_data_off']))
        w('#' * 78)
        for mi, acc, co, is_v in dx.methods_of(cd['class_data_off']):
            c, n, proto = dx.method_id(mi)
            w('')
            w('  .method %s%s %s->%s' % ('public ' if is_v else '', 'virtual' if is_v else 'direct', c, n))
            for line in dx.dump_code(co, indent='      '):
                w(line)
    with open(outfile, 'w', encoding='utf-8') as f:
        f.write('\n'.join(out))
    print('wrote', outfile, len(out), 'lines')


if __name__ == '__main__':
    main()
