#!/usr/bin/env python3
"""
Decide, without touching the device, whether the Huawei CER route is guaranteed to work.

META-INF/HUAWEI.CER carries a set of fields that Huawei's PackageManagerService
validates through individual "processors" (com.android.server.pm.auth.processor.*):

    DeveloperKey : the developer certificate (DER hex)
    ValidPeriod  : "from ... to ..." (GMT)              -> ValidPeriodProcessor
    ApkHash      : a hash of the APK                      -> ApkHashProcessor
    Signature    : a signature over the other fields
    PackageName  : the package this CER authorises

Two of those are checkable entirely offline:

  LOCK 1  DeveloperKey must equal the certificate the APK is actually signed with
  LOCK 2  ApkHash      must equal a hash of the actual APK file
  LOCK 3  the device clock must be inside ValidPeriod AT INSTALL TIME

This script tests LOCK 1 and LOCK 2 by trying every plausible hash algorithm and
input (whole file, or the zip's non-META-INF entries), and prints the exact time
window LOCK 3 demands.
"""
import hashlib
import io
import os
import re
import struct
import subprocess
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
BT = r'D:\Android\Sdk\build-tools\37.0.0'
APKSIGNER = os.path.join(BT, 'apksigner.bat')

APPS = [
    ('com.lzplay.helper.apk', 'lzplay 原始'),
    ('旅游必备 travel essentials.apk', '旅游必备 原始'),
    ('chat partner Chinese translated.apk', 'Chat Partner (汉化重签)'),
]


def read_cer(apk):
    z = zipfile.ZipFile(apk)
    for n in z.namelist():
        if n.upper().endswith('HUAWEI.CER'):
            txt = z.read(n).decode('latin-1')
            out = {}
            for key in ('DeveloperKey', 'ValidPeriod', 'ApkHash', 'Signature', 'PackageName'):
                m = re.search(re.escape(key) + r'\s*[:=]\s*([^\r\n]+)', txt)
                if m:
                    out[key] = m.group(1).strip()
            return out
    return {}


def apk_cert_fingerprints(apk):
    try:
        r = subprocess.run([APKSIGNER, 'verify', '--print-certs', apk],
                           capture_output=True, text=True, timeout=300)
    except Exception:
        return {}
    info = {}
    for line in (r.stdout + r.stderr).splitlines():
        m = re.search(r'(SHA-256|SHA-1|MD5)\s+digest:\s*([0-9a-fA-F]+)', line)
        if m:
            info.setdefault(m.group(1), m.group(2).lower())
    return info


def hashes_of_file(path):
    h = {a: hashlib.new(a) for a in ('md5', 'sha1', 'sha256', 'sha512')}
    with open(path, 'rb') as f:
        for b in iter(lambda: f.read(1 << 20), b''):
            for x in h.values():
                x.update(b)
    return {k: v.hexdigest() for k, v in h.items()}


def hashes_of_zip_content(path, skip_meta=True):
    """Hash the concatenation of entry names + entry bytes, in zip order."""
    h = {a: hashlib.new(a) for a in ('md5', 'sha1', 'sha256', 'sha512')}
    z = zipfile.ZipFile(path)
    for item in z.infolist():
        n = item.filename
        if skip_meta and n.upper().startswith('META-INF/'):
            continue
        for x in h.values():
            x.update(n.encode('utf-8'))
            x.update(z.read(n))
    return {k: v.hexdigest() for k, v in h.items()}


def main():
    for fname, label in APPS:
        p = os.path.join(BASE, fname)
        print('=' * 78)
        print('%s   [%s]' % (label, fname))
        print('=' * 78)
        if not os.path.exists(p):
            print('  MISSING\n')
            continue

        cer = read_cer(p)
        want_hash = cer.get('ApkHash', '')
        want_pkg = cer.get('PackageName', '')
        print('  CER PackageName : %s' % want_pkg)
        print('  CER ApkHash     : %s  (%d hex chars => %s)'
              % (want_hash, len(want_hash),
                 {32: 'MD5', 40: 'SHA-1', 64: 'SHA-256', 128: 'SHA-512'}.get(len(want_hash), '?')))

        # ---- LOCK 1 ----
        certs = apk_cert_fingerprints(p)
        devkey = cer.get('DeveloperKey', '')
        lock1 = 'UNKNOWN'
        if devkey and certs:
            der = bytes.fromhex(devkey)
            if hashlib.sha256(der).hexdigest() == certs.get('SHA-256'):
                lock1 = 'PASS'
            else:
                lock1 = 'FAIL'
        print('  LOCK 1 DeveloperKey == APK signing cert : %s' % lock1)
        if lock1 == 'FAIL':
            print('         (expected for a repacked/translated APK)')

        # ---- LOCK 2 ----
        print('  LOCK 2 ApkHash == hash of the APK file  :')
        cands = {
            'whole file': hashes_of_file(p),
            'zip content (non-META-INF)': hashes_of_zip_content(p, skip_meta=True),
            'zip content (all entries)': hashes_of_zip_content(p, skip_meta=False),
        }
        lock2 = 'FAIL'
        for cname, hs in cands.items():
            for algo, val in hs.items():
                if val == want_hash:
                    print('         PASS  <- %s, %s' % (cname, algo.upper()))
                    lock2 = 'PASS'
        if lock2 == 'FAIL':
            # show the closest candidates so the reader can see what it is NOT
            for cname, hs in cands.items():
                print('         %-28s sha256=%s' % (cname, hs['sha256'][:32]))
            print('         => no candidate matches; this APK has been modified')

        # ---- LOCK 3 ----
        vp = cer.get('ValidPeriod', '')
        m = re.search(r'from\s*([0-9-]+ [0-9:]+)\s*to\s*([0-9-]+ [0-9:]+)', vp)
        if m:
            print('  LOCK 3 install window (device clock must be inside):')
            print('         %s  ..  %s  (GMT)' % (m.group(1), m.group(2)))

        verdict = 'CAN GET MDM PERMISSIONS' if (lock1 == 'PASS' and lock2 == 'PASS') \
            else 'CANNOT - the CER will be rejected'
        print('  ==> %s' % verdict)
        print()


if __name__ == '__main__':
    main()
