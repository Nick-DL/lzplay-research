#!/usr/bin/env python3
"""
Verify the single claim that decides whether the backup/restore route can work:

    Huawei's PackageManagerService reads META-INF/HUAWEI.CER, extracts
    "DeveloperKey:<hex DER>", and requires that this key's certificate EQUAL the
    certificate the APK is actually signed with.  If they match, the APK is treated
    as an authorised Huawei-channel app and may be granted the signature|privileged
    MDM permissions.  If not, PMS logs "DK_VC not same!" and refuses.

So: does com.lzplay.helper.apk's HUAWEI.CER DeveloperKey equal its real signing cert?

Outputs the comparison for all three apps in this project.
"""
import base64
import hashlib
import io
import os
import re
import struct
import subprocess
import sys
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
BT = r'D:\Android\Sdk\build-tools\37.0.0'
APKSIGNER = os.path.join(BT, 'apksigner.bat')

APPS = [
    ('com.lzplay.helper.apk', 'lzplay (360-packed shell)'),
    ('旅游必备 travel essentials.apk', '旅游必备'),
    ('chat partner Chinese translated.apk', 'Chat Partner'),
]


def parse_cer(blob):
    """META-INF/HUAWEI.CER is plaintext ASCII 'DeveloperKey:<hex DER>'."""
    txt = blob.decode('latin-1')
    out = {}
    for key in ('DeveloperKey', 'ReleaseKey', 'Key', 'DeveloperCertificate'):
        m = re.search(re.escape(key) + r'\s*[:=]\s*([0-9a-fA-F\s]+)', txt)
        if m:
            hexs = re.sub(r'\s+', '', m.group(1))
            if len(hexs) % 2 == 0 and len(hexs) >= 64:
                out[key] = bytes.fromhex(hexs)
    if not out:
        # maybe it is raw binary DER
        if blob[:1] == b'\x30':
            out['<raw DER>'] = blob
    return out, txt[:200]


def der_summary(der):
    """Minimal DER walk to pull the subject and serial out of an X.509 cert."""
    try:
        # find the tbsCertificate then walk for serial + subject
        # this is deliberately shallow - we only need a fingerprint + a few strings
        printable = re.findall(rb'[\x20-\x7e]{3,}', der)
        strings = [s.decode() for s in printable]
        return strings[:12]
    except Exception:
        return []


def apk_signing_cert(apk):
    """Return (sha256, sha1, md5, dn) of the APK's signing certificate, plus the raw DER."""
    try:
        r = subprocess.run([APKSIGNER, 'verify', '--print-certs', apk],
                           capture_output=True, text=True, timeout=300)
    except Exception as e:
        return None, 'apksigner failed: %s' % e
    out = r.stdout + r.stderr
    info = {}
    for line in out.splitlines():
        m = re.search(r'(SHA-256|SHA-1|MD5)\s+digest:\s*([0-9a-fA-F]+)', line)
        if m:
            info.setdefault(m.group(1), m.group(2).lower())
        m = re.search(r'certificate DN:\s*(.+)$', line)
        if m:
            info.setdefault('DN', m.group(1).strip())
    return info, out


def cert_from_v1_rsa(apk):
    """Extract the signer certificate from the v1 (JAR) signature block if present."""
    try:
        z = zipfile.ZipFile(apk)
    except Exception as e:
        return None, str(e)
    names = [n for n in z.namelist() if n.startswith('META-INF/') and n.upper().endswith(('.RSA', '.DSA', '.EC'))]
    if not names:
        return None, 'no v1 signature block'
    der = None
    for n in names:
        blob = z.read(n)
        # PKCS#7 SignedData - pull the first certificate via a crude length walk
        i = blob.find(b'\x30\x82')
        while i != -1 and i + 4 <= len(blob):
            ln = struct.unpack('>H', blob[i + 2:i + 4])[0]
            if i + 4 + ln <= len(blob):
                cand = blob[i:i + 4 + ln]
                if b'\x06\x09\x2a\x86\x48\x86\xf7\x0d\x01\x07\x01' in cand or len(cand) > 400:
                    der = cand
                    break
            i = blob.find(b'\x30\x82', i + 1)
    return (names, der), None


def main():
    print('=' * 78)
    print('HUAWEI.CER  DeveloperKey  vs  actual APK signing certificate')
    print('=' * 78)

    for fname, label in APPS:
        p = os.path.join(BASE, fname)
        print('\n' + '-' * 78)
        print('%s   [%s]' % (label, fname))
        print('-' * 78)
        if not os.path.exists(p):
            print('  MISSING')
            continue

        try:
            z = zipfile.ZipFile(p)
        except Exception as e:
            print('  not a zip: %s' % e)
            continue

        cer_name = None
        for n in z.namelist():
            if n.upper().endswith('HUAWEI.CER'):
                cer_name = n
                break

        info, raw = apk_signing_cert(p)
        print('  APK signing certificate (apksigner):')
        if isinstance(info, dict) and info:
            for k in ('DN', 'SHA-256', 'SHA-1', 'MD5'):
                if k in info:
                    print('     %-8s %s' % (k + ':', info[k]))
        else:
            print('     %s' % raw[:300])

        if not cer_name:
            print('  HUAWEI.CER: ABSENT')
            continue

        blob = z.read(cer_name)
        keys, head = parse_cer(blob)
        print('  %s (%d bytes)' % (cer_name, len(blob)))
        if not keys:
            print('     no DeveloperKey-style entry found; first 120 bytes: %r' % blob[:120])
            continue
        for k, der in keys.items():
            print('     %-22s %d bytes DER' % (k + ':', len(der)))
            print('       %-18s %s' % ('SHA-256:', hashlib.sha256(der).hexdigest()))
            print('       %-18s %s' % ('SHA-1:', hashlib.sha1(der).hexdigest()))
            print('       %-18s %s' % ('MD5:', hashlib.md5(der).hexdigest()))
            print('       subject strings: %s' % (der_summary(der)[:6],))

            if isinstance(info, dict) and info:
                match256 = hashlib.sha256(der).hexdigest() == info.get('SHA-256')
                match1 = hashlib.sha1(der).hexdigest() == info.get('SHA-1')
                print('       ==> %s' % (
                    'MATCH with the APK signing cert  <<< Huawei will accept this app'
                    if (match256 or match1) else
                    'MISMATCH - Huawei PMS would log "DK_VC not same!"'))

        v1, err = cert_from_v1_rsa(p)
        if err:
            print('  v1 signature block: %s' % err)
        else:
            print('  v1 signature files present: %s' % v1[0])

    print('\n' + '=' * 78)
    print('Interpretation:')
    print('  If DeveloperKey == APK signing cert, then com.lzplay.helper.apk is a')
    print('  self-consistent Huawei-channel package.  PMS should grant it the')
    print('  signature|privileged MDM permissions.  REPACKING IT WOULD BREAK THIS.')
    print('=' * 78)


if __name__ == '__main__':
    main()
