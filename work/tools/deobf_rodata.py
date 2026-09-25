#!/usr/bin/env python3
"""
Deobfuscate libjiagu's .rodata.

Finding: the function the packer calls "makekey" (0x5b44 / 0x5b58) is not a key
derivation at all - it is a byte-wise XOR string decoder:

    0x5b44:  for (i = 0; i < len; i++) buf[i] ^= 0xa5;
    0x5b58:  for (i = 0; i < len; i++) buf[i] ^= 0xd6;

So .rodata holds a mix of plain strings and XOR-obfuscated ones.  This script
recovers every printable run under each key, and also scans the whole file
(not just .rodata) in case other sections hide strings the same way.
"""
import os, re, struct, sys

HERE = os.path.dirname(os.path.abspath(__file__))
WS = os.path.dirname(os.path.dirname(HERE))
sys.path.insert(0, HERE)
from recover_symbols import sections, cstr  # noqa: E402
from x86dis import load                      # noqa: E402

KEYS = [0xa5, 0xd6]
MINLEN = 5


def printable_runs(blob, minlen=MINLEN):
    """Yield (offset, text) for ASCII runs, allowing a trailing NUL."""
    out = []
    for m in re.finditer(rb'[\x20-\x7e]{%d,}' % minlen, blob):
        out.append((m.start(), m.group().decode('ascii')))
    return out


def xored_printable_runs(blob, key, minlen=MINLEN):
    dec = bytes(b ^ key for b in blob)
    return printable_runs(dec, minlen)


def main():
    path = sys.argv[1] if len(sys.argv) > 1 else 'work/native/libjiagu_x86.so.b64.gz'
    d = load(path)
    secs = sections(d)

    for secname in ('.rodata', '.data', '.data.rel.ro', '.context', '.engine', '.text'):
        sec = secs.get(secname)
        if not sec or sec['size'] == 0:
            continue
        blob = d[sec['off']:sec['off'] + sec['size']]
        plain = printable_runs(blob)
        print('=' * 78)
        print('%s  (%#x..%#x, %d bytes)' % (secname, sec['addr'],
                                            sec['addr'] + sec['size'], sec['size']))
        print('-' * 78)
        print('PLAINTEXT RUNS (%d):' % len(plain))
        for off, s in plain:
            print('   %#08x  %s' % (sec['addr'] + off, s))
        for key in KEYS:
            runs = xored_printable_runs(blob, key)
            # drop runs that are also plain (i.e. produced by chance)
            plain_set = set(s for _, s in plain)
            runs = [(o, s) for o, s in runs if s not in plain_set]
            print('\nXOR %#04x RUNS (%d):' % (key, len(runs)))
            for off, s in runs:
                print('   %#08x  %s' % (sec['addr'] + off, s))


if __name__ == '__main__':
    main()
