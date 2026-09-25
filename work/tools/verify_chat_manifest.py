#!/usr/bin/env python3
"""
Chat Partner ships tyq_resource_Q.json in PLAINTEXT - the full package manifest with
expected version codes, MD5s and signing-certificate fingerprints.  That is exactly the
config the travel app keeps encrypted in Xpp_Q.json.

This script verifies, for every entry:
  * does the APK bundled in assets/ match the recorded MD5?
  * does its signing certificate match sign_1 / sign_2?
and identifies what sign_1 / sign_2 actually are (MD5 / SHA-1 / SHA-256 of the cert).
"""
import glob, hashlib, io, json, os, re, subprocess, sys, zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
ASSETS = os.path.join(BASE, 'work', 'chat_decoded', 'assets')
CFG = os.path.join(ASSETS, 'tyq_resource_Q.json')
BT = r'D:\Android\Sdk\build-tools\37.0.0\apksigner.bat'


def md5_file(p, chunk=1 << 20):
    h = hashlib.md5()
    with open(p, 'rb') as f:
        while True:
            b = f.read(chunk)
            if not b:
                break
            h.update(b)
    return h.hexdigest()


def cert_of(apk):
    """Return (md5, sha1, sha256) of the signing certificate via apksigner."""
    try:
        out = subprocess.run([BT, 'verify', '--print-certs', apk],
                             capture_output=True, text=True, timeout=180).stdout
    except Exception as e:
        return None, str(e)
    d = {}
    for line in out.splitlines():
        m = re.search(r'(SHA-1|SHA-256|MD5)\s+digest:\s*([0-9a-fA-F]+)', line)
        if m:
            d.setdefault(m.group(1), m.group(2).lower())
    return d, out


def main():
    cfg = json.load(io.open(CFG, encoding='utf-8'))
    print('config: %s   app_name=%s' % (os.path.basename(CFG), cfg.get('app_name')))
    print()
    print('%-42s %-11s %-10s %-11s %s' % ('package', 'ver_code', 'size', 'md5 match', 'cert match'))
    print('-' * 108)

    bundled = {os.path.basename(p): p for p in glob.glob(os.path.join(ASSETS, '*.apk'))}

    for e in cfg['apk']:
        pkg = e['pkg_name']
        # best-effort map to the bundled _29 file
        guess = None
        for name, path in bundled.items():
            if name.startswith(pkg + '_'):
                guess = path
                break
        if guess is None:
            print('%-42s %-11s %-10s %-11s %s' % (pkg, e['ver_code'], e['size'],
                                                  'NO BUNDLED FILE', '-'))
            continue
        size = os.path.getsize(guess)
        got = md5_file(guess)
        want = e['md5']
        size_ok = 'OK' if str(size) == e['size'] else 'size %d != %s' % (size, e['size'])
        md5_ok = 'YES' if got == want else 'NO (%s)' % got[:12]
        certs, raw = cert_of(guess)
        if isinstance(certs, dict):
            s1 = e.get('sign_1', '')
            s2 = e.get('sign_2', '')
            which = []
            if certs.get('MD5') == s1 or certs.get('MD5') == s2:
                which.append('MD5')
            if certs.get('SHA-1') == s1 or certs.get('SHA-1') == s2:
                which.append('SHA-1')
            if certs.get('SHA-256') == s1 or certs.get('SHA-256') == s2:
                which.append('SHA-256')
            cmatch = ','.join(which) if which else 'NO'
        else:
            cmatch = 'err'
        print('%-42s %-11s %-10s %-11s %s' % (pkg, e['ver_code'], size_ok, md5_ok, cmatch))
        if md5_ok == 'YES':
            print('%-42s   ^ bundled file %s is byte-identical to the CDN original'
                  % ('', os.path.basename(guess)))
    print()
    print('sign_1 / sign_2 identification (from the GMS entry):')
    gms = [e for e in cfg['apk'] if e['pkg_name'] == 'com.google.android.gms'][0]
    print('  sign_1 = %s  (len %d)' % (gms['sign_1'], len(gms['sign_1'])))
    print('  sign_2 = %s  (len %d)' % (gms['sign_2'], len(gms['sign_2'])))
    print('  32 hex chars -> MD5 ; 40 -> SHA-1 ; 64 -> SHA-256')
    print('  => sign_1 looks like MD5 (32), sign_2 looks like SHA-256 (64)')


if __name__ == '__main__':
    main()
