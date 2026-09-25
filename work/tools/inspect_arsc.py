#!/usr/bin/env python3
"""
Inspect Chat Partner's resources.arsc.

apktool refuses to decode it with:

    unsupported res type name for bags. Found: c

i.e. the resource *type* names have been obfuscated to single letters, which breaks
apktool's bag/attribute handling.  If that is all that is wrong we can rename the type
back to a legal name in place and let apktool decode normally - which is much cheaper
than rebuilding the APK by patching DEX bytes directly.
"""
import struct, sys, io

ARSC = sys.argv[1] if len(sys.argv) > 1 else r'work/chat_decoded/resources.arsc'


def main():
    d = open(ARSC, 'rb').read()
    print('file %s  (%d bytes)' % (ARSC, len(d)))

    t, hs, sz = struct.unpack_from('<HHI', d, 0)
    print('RES_TABLE type=%#x headerSize=%d size=%d' % (t, hs, sz))

    # ---- global string pool ----
    off = hs
    t, hs2, sz2 = struct.unpack_from('<HHI', d, off)
    print('chunk@%d type=%#x headerSize=%d size=%d' % (off, t, hs2, sz2))
    cnt, styc, flags, sstart, stystart = struct.unpack_from('<IIIII', d, off + 8)
    utf8 = bool(flags & (1 << 8))
    print('  stringCount=%d styleCount=%d flags=%#x utf8=%s stringsStart=%d'
          % (cnt, styc, flags, utf8, sstart))

    base = off + hs2 + sstart
    strings = []
    for i in range(cnt):
        o = struct.unpack_from('<I', d, off + hs2 + i * 4)[0]
        p = base + o
        if utf8:
            n = d[p]; p += 1
            if n & 0x80:
                n = ((n & 0x7f) << 8) | d[p]; p += 1
            bl = d[p]; p += 1
            if bl & 0x80:
                bl = ((bl & 0x7f) << 8) | d[p]; p += 1
            strings.append(d[p:p + bl].decode('utf-8', 'replace'))
        else:
            n = struct.unpack_from('<H', d, p)[0]
            strings.append(d[p + 2:p + 2 + n * 2].decode('utf-16-le', 'replace'))
    print('  parsed %d strings' % len(strings))

    singles = [(i, s) for i, s in enumerate(strings) if len(s) == 1 and s.isalpha()]
    print('\nsingle-letter strings: %d' % len(singles))
    for i, s in singles:
        print('   idx=%5d  %r' % (i, s))

    print('\nfirst 30 strings:')
    for i, s in enumerate(strings[:30]):
        print('   %5d  %r' % (i, s))

    # ---- packages ----
    print('\n--- packages ---')
    p = off + sz2
    while p + 8 <= len(d):
        ct, chs, csz = struct.unpack_from('<HHI', d, p)
        if csz == 0:
            break
        if ct == 0x0200:
            pid = struct.unpack_from('<I', d, p + 8)[0]
            nm = d[p + 12:p + 12 + 256].decode('utf-16-le').split('\x00')[0]
            print('RES_TABLE_PACKAGE @%d id=%#x name=%r size=%d' % (p, pid, nm, csz))
            q = p + chs
            end = p + csz
            type_names = {}
            while q < end:
                st, shs, ssz = struct.unpack_from('<HHI', d, q)
                if ssz == 0:
                    break
                if st == 0x0202:  # TYPE_TYPE
                    tid = d[q + 8]
                    tname = struct.unpack_from('<I', d, q + 12)[0]
                    nmv = strings[tname] if tname < len(strings) else '?'
                    type_names.setdefault(tid, nmv)
                q += ssz
            print('  typeId -> name:')
            for k in sorted(type_names):
                print('     %#04x  %r' % (k, type_names[k]))
            p = end
        else:
            print('chunk @%d type=%#x size=%d (skipped)' % (p, ct, csz))
            p += csz


if __name__ == '__main__':
    main()
