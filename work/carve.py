#!/usr/bin/env python3
"""Try to inflate candidate zlib streams inside libjiagu sections and report
anything that decompresses to DEX / ZIP / ELF."""
import base64, gzip, re, zlib, sys, os

def load(path):
    if path.endswith('.b64.gz'):
        return gzip.decompress(base64.b64decode(open(path, 'rb').read()))
    return open(path, 'rb').read()

SECTIONS = {
    '.compiler': (0xd588, 25368),
    '.mips':     (0x138a0, 406308),
    '.engine':   (0xafa8, 4380),
    '.bmp':      (0xd160, 1064),
    '.data':     (0xd000, 352),
    '.context':  (0xc0c4, 84),
}

def probe(blob, base_off, label):
    """Find every 78 xx byte pair and try raw+headerless inflate."""
    hits = []
    for m in re.finditer(rb'\x78[\x01\x9c\xda\x5e]', blob):
        p = m.start()
        for wbits, tag in ((15, 'zlib'), (-15, 'raw')):
            try:
                o = zlib.decompressobj(wbits)
                out = o.decompress(blob[p:])
                out += o.flush()
            except Exception:
                continue
            if len(out) < 64:
                continue
            kind = '?'
            if out[:4] == b'dex\n': kind = 'DEX'
            elif out[:4] == b'PK\x03\x04': kind = 'ZIP'
            elif out[:4] == b'\x7fELF': kind = 'ELF'
            elif out[:3] == b'\x1f\x8b': kind = 'GZIP'
            hits.append((p, tag, len(out), kind, out[:16].hex()))
            print('  HIT %s @ +%#x (%s) -> %d bytes [%s] head=%s'
                  % (label, p, tag, len(out), kind, out[:16].hex()))
            if kind in ('DEX', 'ZIP', 'ELF'):
                safe = {'DEX': 'dex', 'ZIP': 'zip', 'ELF': 'elf'}[kind]
                fn = 'work/carve/%s_%#x_%s.bin' % (label.strip('.'), base_off + p, safe)
                os.makedirs('work/carve', exist_ok=True)
                open(fn, 'wb').write(out)
                print('     -> saved %s' % fn)
    return hits

def main():
    d = load(sys.argv[1])
    print('lib size', len(d))
    for nm, (off, sz) in SECTIONS.items():
        blob = d[off:off + sz]
        print('\n=== %s (off=%#x size=%d) ===' % (nm, off, sz))
        hits = probe(blob, off, nm)
        if not hits:
            print('  (no successful inflate)')

if __name__ == '__main__':
    main()
