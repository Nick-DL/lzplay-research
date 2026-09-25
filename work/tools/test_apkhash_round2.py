#!/usr/bin/env python3
"""
Second round of ApkHash hypotheses.

The ApkHashProcessor calls `Utils.getManifestFileWithoutHwCer(...)` - the name suggests
the manifest is used *with the HUAWEI.CER entry excluded*.  Round 1 only tried the
manifest as-is.  This round adds:

  * manifest text with the HUAWEI.CER / LZKEYSTO.RSA / *.SF sections removed
  * hashes over the .SF file and over the signature block
  * hashes over the whole zip central directory / entry table
  * hash of the APK minus the signing block (v2)

The oracle is the original com.lzplay.helper.apk, whose declared ApkHash is
    8fc90fd182015846adc42981f1845ad290accb9954331a1343d48bdd3e43fc3d
and which we know passed this check in the real world (the official tutorial works).
"""
import hashlib
import io
import os
import re
import struct
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
TARGET = os.path.join(BASE, 'com.lzplay.helper.apk')
WANT = '8fc90fd182015846adc42981f1845ad290accb9954331a1343d48bdd3e43fc3d'


def declared(apk):
    z = zipfile.ZipFile(apk)
    for n in z.namelist():
        if n.upper().endswith('HUAWEI.CER'):
            m = re.search(r'ApkHash\s*[:=]\s*([0-9a-fA-F]+)',
                          z.read(n).decode('latin-1'))
            if m:
                return m.group(1).lower()
    return None


def h(b):
    if isinstance(b, str):
        b = b.encode('utf-8')
    return hashlib.sha256(b).hexdigest()


def candidates(apk):
    z = zipfile.ZipFile(apk)
    names = z.namelist()
    out = []

    # ---- manifest variants, with signature-related sections stripped ----
    mf_name = next((n for n in names if n.upper() == 'META-INF/MANIFEST.MF'), None)
    sf_name = next((n for n in names if n.upper().startswith('META-INF/')
                    and n.upper().endswith('.SF')), None)
    cer_name = next((n for n in names if n.upper().endswith('HUAWEI.CER')), None)

    if mf_name:
        raw = z.read(mf_name)
        text = raw.decode('utf-8', 'replace')
        out.append(('SHA256(MANIFEST.MF raw)', h(raw)))

        # split into sections (main + per-entry)
        norm = text.replace('\r\n', '\n')
        blocks, cur = [], []
        for ln in norm.split('\n'):
            if ln.strip() == '':
                if cur:
                    blocks.append(cur)
                    cur = []
            else:
                cur.append(ln)
        if cur:
            blocks.append(cur)

        def drop(names_to_drop):
            keep = []
            for b in blocks:
                head = (b[0] if b else '')
                name = head.split(':', 1)[1].strip() if head.startswith('Name:') else ''
                if name and name in names_to_drop:
                    continue
                keep.append(b)
            flat = []
            for b in keep:
                flat.extend(b)
                flat.append('')
            return '\n'.join(flat)

        drop_sets = {
            'HUAWEI.CER only': {cer_name} if cer_name else set(),
            'HUAWEI.CER+SF': {x for x in (cer_name, sf_name) if x},
        }
        for label, ds in drop_sets.items():
            if not ds:
                continue
            t = drop(ds)
            out.append(('SHA256(MANIFEST.MF excluding %s) LF' % label, h(t)))
            out.append(('SHA256(MANIFEST.MF excluding %s) CRLF' % label,
                        h(t.replace('\n', '\r\n'))))

    # ---- the .SF file ----
    if sf_name:
        sf = z.read(sf_name)
        out.append(('SHA256(%s raw)' % sf_name, h(sf)))
        txt = sf.decode('latin-1')
        out.append(('SHA256(%s, digest lines only)' % sf_name,
                    h('\n'.join(l for l in txt.replace('\r\n', '\n').split('\n')
                                if 'Digest' in l))))

    # ---- zip layout hashes ----
    raw = open(apk, 'rb').read()
    out.append(('SHA256(entire .apk file)', h(raw)))

    # find the APK Signing Block (v2/v3) and hash everything before it
    magic = b'APK Sig Block 42'
    idx = raw.rfind(magic)
    if idx != -1:
        out.append(('SHA256(apk minus APK Signing Block)',
                    h(raw[:idx - 8])))  # -8 skips the size field preceding the magic
        out.append(('SHA256(APK Signing Block)',
                    h(raw[idx - 8:])))

    # central directory
    eocd = raw.rfind(b'PK\x05\x06')
    if eocd != -1:
        cdoff = struct.unpack_from('<I', raw, eocd + 16)[0]
        out.append(('SHA256(zip central directory)', h(raw[cdoff:eocd])))
        out.append(('SHA256(apk minus central directory + EOCD)', h(raw[:cdoff])))

    # concatenation of every non-signature entry's bytes
    cat = hashlib.sha256()
    for item in z.infolist():
        if item.filename.upper().startswith('META-INF/'):
            continue
        cat.update(z.read(item.filename))
    out.append(('SHA256(concat of non-META-INF entry bytes)', cat.hexdigest()))

    # concatenation of every entry's sha256 digest (hex string, then bytes)
    digs = []
    for item in sorted(z.infolist(), key=lambda i: i.filename):
        d = hashlib.sha256(z.read(item.filename)).hexdigest()
        digs.append(d)
    out.append(('SHA256(concat of per-entry sha256 hex, sorted)', h(''.join(digs))))
    out.append(('SHA256(concat of per-entry sha256 raw bytes, sorted)',
                h(b''.join(bytes.fromhex(d) for d in digs))))

    return out, names


def main():
    print('oracle: %s' % os.path.basename(TARGET))
    want = declared(TARGET)
    print('declared ApkHash: %s' % want)
    print('expected        : %s' % WANT)
    print('(they agree: %s)' % (want == WANT))
    print()

    cands, names = candidates(TARGET)
    print('META-INF entries in this apk:')
    for n in names:
        if n.upper().startswith('META-INF/'):
            print('   %s' % n)
    print()

    hit = None
    for label, val in cands:
        mark = ''
        if val == want:
            mark = '   <<<<<< MATCH'
            hit = label
        print('  %-58s %s%s' % (label, val[:32], mark))

    print()
    print('==> %s' % ('MATCH: %s' % hit if hit else 'still no match'))


if __name__ == '__main__':
    main()
