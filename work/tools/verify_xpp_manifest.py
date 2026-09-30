#!/usr/bin/env python3
"""
Cross-check the decrypted Xpp manifest against the APKs we actually hold.

This matters a lot: if the manifest's fileMd5 values match our work/gms29 set
exactly, then the "user has to go collect the Google APKs" problem is already
solved - we ship the same bytes the vendor intended, and only the *download*
step needs replacing.

Usage: python tools/verify_xpp_manifest.py
"""
import hashlib
import io
import json
import os
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
XPP = os.path.join(BASE, 'work', 'xpp')

# candidate local files for each package
CANDIDATES = {
    'com.google.android.gms': ['work/gms29/com.google.android.gms_29.apk'],
    'com.google.android.gsf': ['work/gms29/com.google.android.gsf_29.apk'],
    'com.google.android.syncadapters.contacts':
        ['work/gms29/com.google.android.syncadapters.contacts_29.apk'],
    'com.oversea.gmapjar': ['work/gms29/com.oversea.gmapjar_29.apk'],
    'com.android.vending': ['work/gms29/com.android.vending_29.apk'],
    'com.google.android.gms.policy_sidecar_aps':
        ['work/gms29/com.google.android.gms.policy_sidecar_aps.apk'],
    'com.x.idhelper': ['work/gms29/idhelper.apk'],
}


def md5(path):
    h = hashlib.md5()
    with open(path, 'rb') as f:
        for b in iter(lambda: f.read(1 << 20), b''):
            h.update(b)
    return h.hexdigest()


def load_manifests():
    out = {}
    for name in os.listdir(XPP):
        if name.endswith('.json'):
            p = os.path.join(XPP, name)
            try:
                out[name] = json.load(io.open(p, encoding='utf-8'))
            except Exception as e:
                print('  (cannot parse %s: %s)' % (name, e))
    return out


def main():
    mans = load_manifests()
    if not mans:
        print('no decrypted manifests in %s - run decrypt_xpp.py first' % XPP)
        return 1

    for mname, man in sorted(mans.items()):
        apks = man.get('apk') or []
        print('=' * 80)
        print('MANIFEST  %s   name=%s  entries=%d' % (mname, man.get('name'), len(apks)))
        print('=' * 80)
        print('  %-42s %-12s %-12s %s' % ('pkgName', 'verCode', 'manifest md5', 'local match'))
        print('  ' + '-' * 92)

        for e in apks:
            pkg = e.get('pkgName', '?')
            ver = str(e.get('verCode', '?'))
            want = (e.get('fileMd5') or '').lower()
            size = e.get('fileSize')

            local = None
            for rel in CANDIDATES.get(pkg, []):
                p = os.path.join(BASE, rel)
                if os.path.exists(p):
                    local = (rel, p)
                    break

            if local is None:
                verdict = 'no local file'
            else:
                got = md5(local[1])
                if got == want:
                    verdict = 'MATCH  %s' % os.path.basename(local[0])
                else:
                    verdict = 'DIFFER %s (%s)' % (os.path.basename(local[0]), got[:16])

            print('  %-42s %-12s %-12s %s' % (pkg, ver, want[:12] or '?', verdict))

            if local and size:
                actual = os.path.getsize(local[1])
                if str(actual) != str(size):
                    print('  %-42s size: manifest=%s local=%s (ok if md5 matched)'
                          % ('', size, actual))
        print()

    # summary
    print('=' * 80)
    matched = 0
    total = 0
    for man in mans.values():
        for e in man.get('apk') or []:
            total += 1
            want = (e.get('fileMd5') or '').lower()
            for rel in CANDIDATES.get(e.get('pkgName'), []):
                p = os.path.join(BASE, rel)
                if os.path.exists(p) and md5(p) == want:
                    matched += 1
                    break
    print('LOCAL MATCHES: %d / %d manifest entries' % (matched, total))
    print('=' * 80)
    return 0


if __name__ == '__main__':
    sys.exit(main())
