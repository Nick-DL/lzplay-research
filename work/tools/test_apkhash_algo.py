#!/usr/bin/env python3
"""
Test the ApkHash algorithm recovered from the device's own ApkHashProcessor.

Disassembling com.android.server.pm.auth.processor.ApkHashProcessor.getService out of
hwServices.jar shows it calls, in order:

    Utils.getManifestFileWithoutHwCer(...)      -> the JAR manifest
    Utils.getSfFileName(...)                    -> the .SF entry name
    Utils.isUsingSignatureSchemaV2(...)         -> v1 or v2 signing?
    EncryptionUtils.sha256(...)                 -> the hash
  with log strings:
    "AH_G not V2."                       (v1 branch)
    "AH_G V2 sort manifest content."     (v2 branch: sorts the manifest contents)
    "AH_G cert is null!"
    "META-INF/MANIFEST.MF"

So ApkHash is the SHA-256 of the JAR manifest (META-INF/MANIFEST.MF), and for v2-signed
APKs the manifest content is sorted first.  This script tries the plausible variants
against the value declared in each app's HUAWEI.CER.

If a variant matches for an UNMODIFIED apk, the algorithm is confirmed and we know
exactly what a repack would have to reproduce.
"""
import hashlib
import io
import os
import re
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APPS = [
    ('com.lzplay.helper.apk', 'lzplay 原始'),
    ('旅游必备 travel essentials.apk', '旅游必备 原始'),
    ('chat partner Chinese translated.apk', 'Chat Partner 汉化重签'),
    ('旅游必备-patched.apk', '旅游必备 我方改包'),
    ('ChatPartner-patched.apk', 'Chat Partner 我方改包'),
]


def declared_hash(apk):
    z = zipfile.ZipFile(apk)
    for n in z.namelist():
        if n.upper().endswith('HUAWEI.CER'):
            txt = z.read(n).decode('latin-1')
            m = re.search(r'ApkHash\s*[:=]\s*([0-9a-fA-F]+)', txt)
            if m:
                return m.group(1).lower()
    return None


def variants(apk):
    """Yield (label, sha256hex) for every plausible reading of 'the manifest'."""
    z = zipfile.ZipFile(apk)
    names = z.namelist()

    mf = None
    for n in names:
        if n.upper() == 'META-INF/MANIFEST.MF':
            mf = n
            break
    if mf is None:
        return

    raw = z.read(mf)
    yield ('SHA256(META-INF/MANIFEST.MF raw bytes)', hashlib.sha256(raw).hexdigest())

    text = raw.decode('utf-8', 'replace')

    # line-ending normalisations
    for label, t in (
        ('SHA256(MANIFEST.MF, LF normalised)', text.replace('\r\n', '\n')),
        ('SHA256(MANIFEST.MF, CRLF normalised)', text.replace('\r\n', '\n').replace('\n', '\r\n')),
    ):
        yield (label, hashlib.sha256(t.encode('utf-8')).hexdigest())

    # the "V2 sort manifest content" branch: sort the per-entry sections
    lines = text.replace('\r\n', '\n').split('\n')
    # JAR manifest = a main section, then per-entry sections separated by blank lines
    sections, cur = [], []
    for ln in lines:
        if ln.strip() == '':
            if cur:
                sections.append(cur)
                cur = []
        else:
            cur.append(ln)
    if cur:
        sections.append(cur)

    if sections:
        for label, key in (
            ('SHA256(manifest sections sorted by name)',
             lambda s: sorted(s, key=lambda sec: '\n'.join(sec))),
            ('SHA256(name: lines sorted)',
             lambda s: sorted(s, key=lambda sec: sec[0] if sec else '')),
        ):
            flat = []
            for sec in key(sections):
                flat.extend(sec)
                flat.append('')
            joined = '\n'.join(flat)
            yield (label + ' LF', hashlib.sha256(joined.encode('utf-8')).hexdigest())
            yield (label + ' CRLF',
                   hashlib.sha256(joined.replace('\n', '\r\n').encode('utf-8')).hexdigest())

    # SHA256 of the manifest digest lines only (the "Name: ... / SHA-256-Digest: ..." pairs)
    digests = [ln for ln in lines if 'Digest' in ln or ln.startswith('Name:')]
    if digests:
        yield ('SHA256(manifest Name/Digest lines)',
               hashlib.sha256('\n'.join(digests).encode('utf-8')).hexdigest())
        yield ('SHA256(manifest Name/Digest lines CRLF)',
               hashlib.sha256('\r\n'.join(digests).encode('utf-8')).hexdigest())

    # concatenation of the per-entry digests
    dig = [ln.split(':', 1)[1].strip() for ln in lines if 'Digest:' in ln and ':' in ln]
    if dig:
        yield ('SHA256(concat of entry digests)', hashlib.sha256(''.join(dig).encode()).hexdigest())


def main():
    for fname, label in APPS:
        p = os.path.join(BASE, fname)
        print('=' * 78)
        print('%s   [%s]' % (label, fname))
        print('=' * 78)
        if not os.path.exists(p):
            print('  MISSING\n')
            continue
        want = declared_hash(p)
        print('  declared ApkHash : %s' % want)
        hit = None
        try:
            for vlabel, v in variants(p):
                mark = ''
                if v == want:
                    mark = '   <<<< MATCH'
                    hit = vlabel
                print('    %-46s %s%s' % (vlabel, v[:32], mark))
        except Exception as e:
            print('    error: %s' % e)
        print('  ==> %s' % ('CONFIRMED: %s' % hit if hit else 'no variant matched'))
        print()


if __name__ == '__main__':
    main()
