#!/usr/bin/env python3
"""
Diagnose the decrypted backup blob: is it still ciphertext (wrong key/IV) or is it
real data in a container we have not identified yet?

Entropy ~8.0 across the whole file  -> decryption failed
Entropy clearly below 8, or obvious structure (SQLite/paths/XML)  -> decrypted fine,
                                        we just need the right parser
"""
import collections
import io
import math
import os
import re
import struct
import sys

PATH = sys.argv[1] if len(sys.argv) > 1 else r'work/dl/lzplay-data.tar'


def entropy(b):
    if not b:
        return 0.0
    c = collections.Counter(b)
    n = len(b)
    return -sum((v / n) * math.log2(v / n) for v in c.values())


def main():
    d = open(PATH, 'rb').read()
    print('file   : %s' % PATH)
    print('size   : %d bytes' % len(d))
    print()

    # entropy over several windows
    print('entropy:')
    for off in (0, 4096, 65536, len(d) // 2, max(0, len(d) - 8192)):
        w = d[off:off + 8192]
        print('   @%-8d %6.3f  (8.0 = random)' % (off, entropy(w)))
    print()

    # the first 16 bytes are the AES-CTR IV, so the first 16 bytes of output are
    # NOT independent of the key - only look from 16 onwards for structure
    print('looking for structure in the first 4 KB (after the first block):')
    head = d[16:4096]
    printable = sum(1 for b in head if 32 <= b < 127) / len(head)
    zeros = head.count(0) / len(head)
    print('   printable ASCII ratio : %.3f' % printable)
    print('   zero-byte ratio       : %.3f  (a real tar/file has many zeros)' % zeros)
    print()

    # known magics
    print('magic scan (whole file):')
    magics = {
        b'\x1f\x8b\x08': 'gzip',
        b'BZh': 'bzip2',
        b'\xfd7zXZ': 'xz',
        b'SQLite format 3\x00': 'sqlite',
        b'PK\x03\x04': 'zip',
        b'\x89PNG': 'png',
        b'<?xml': 'xml',
        b'\x03\x00\x08\x00': 'binary AXML',
        b'\x02\x00\x00\x00': 'arsc-ish',
        b'ustar': 'tar (mid-file)',
        b'\x00\x00\x00\x00\x00\x00\x00\x00': 'long zero run',
    }
    for m, name in magics.items():
        i = d.find(m)
        print('   %-14s at %s' % (name, i if i != -1 else '-'))
    print()

    # tar entries appear as "name\0..." in 512-byte blocks; search for likely names
    print('searching for path-like strings:')
    found = set()
    for m in re.finditer(rb'[ -~]{6,120}', d):
        s = m.group().decode('latin-1')
        if re.search(r'(shared_prefs|databases|files/|/data/|\.xml|\.db|\.apk)', s):
            found.add(s)
        if len(found) > 40:
            break
    if found:
        for s in sorted(found)[:40]:
            print('   %s' % s)
    else:
        print('   (none - the blob really does look like ciphertext)')
    print()

    # byte histogram summary
    c = collections.Counter(d)
    print('byte histogram: %d distinct values in use' % len(c))
    print('   most common: %s' % [(hex(k), v) for k, v in c.most_common(6)])
    print()

    # try to interpret as a Huawei "backup container": some versions prefix a header
    print('first 64 bytes:')
    print('   hex : %s' % d[:64].hex())
    print('   repr: %r' % d[:64])
    print()
    print('last 64 bytes:')
    print('   hex : %s' % d[-64:].hex())
    print('   repr: %r' % d[-64:])


if __name__ == '__main__':
    main()
