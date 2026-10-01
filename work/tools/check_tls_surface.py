#!/usr/bin/env python3
"""
Determine exactly what URL/scheme the update request uses, and whether the app ever
weakens TLS. This decides whether a self-contained VPN proxy can serve the endpoint,
or whether a CA certificate is unavoidable.

Also check the manifest for usesCleartextTraffic / networkSecurityConfig, because a
user CA is only honoured for apps that do not opt out.
"""
import os
import re
import zipfile
import subprocess

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APK = os.path.join(BASE, 'work', 'originals', '旅游必备 travel essentials.apk')
BT = r'D:\Android\Sdk\build-tools\37.0.0'

print('=' * 78)
print('1) every URL string in the app (smali, deobfuscated names)')
print('=' * 78)
seen = set()
for root, dirs, files in os.walk(os.path.join(BASE, 'work', 'orig_smali')):
    for f in files:
        if not f.endswith('.smali') or not f.startswith('c'):
            pass
        if not f.endswith('.smali'):
            continue
        p = os.path.join(root, f)
        t = open(p, encoding='utf-8', errors='replace').read()
        for m in re.finditer(r'const-string [vp]\d+, "(https?://[^"]+)"', t):
            u = m.group(1)
            if 'schemas.android' in u or 'github.com' in u or 'w3.org' in u:
                continue
            key = (u, os.path.relpath(p, BASE))
            if key in seen:
                continue
            seen.add(key)
            print('  %-58s %s' % (u[:58], os.path.relpath(p, BASE)))

print()
print('=' * 78)
print('2) manifest flags that matter for a user CA')
print('=' * 78)
r = subprocess.run([os.path.join(BT, 'aapt2.exe'), 'dump', 'xmltree', APK,
                    '--file', 'AndroidManifest.xml'],
                   capture_output=True, text=True, encoding='utf-8', errors='replace')
txt = (r.stdout or '') + (r.stderr or '')
for kw in ('usesCleartextTraffic', 'networkSecurityConfig', 'debuggable',
           'targetSdkVersion', 'minSdkVersion'):
    hits = [l.strip() for l in txt.splitlines() if kw in l]
    print('  %-24s %s' % (kw, hits[0][:110] if hits else '(absent)'))

print()
print('=' * 78)
print('3) does the apk bundle a network security config?')
print('=' * 78)
z = zipfile.ZipFile(APK)
nsc = [n for n in z.namelist() if 'network_security' in n.lower() or n == 'res/xml/network_security_config.xml']
print('  %s' % (nsc if nsc else '(none)'))

print()
print('=' * 78)
print('4) TLS usage in the app (does it ever bypass validation?)')
print('=' * 78)
pats = ('X509TrustManager', 'checkServerTrusted', 'setDefaultSSLSocketFactory',
        'setSSLSocketFactory', 'HostnameVerifier', 'setHostnameVerifier',
        'ALLOW_ALL_HOSTNAME', 'SSLContext', 'TrustManager')
found = False
for root, dirs, files in os.walk(os.path.join(BASE, 'work', 'orig_smali')):
    for f in files:
        if not f.endswith('.smali'):
            continue
        p = os.path.join(root, f)
        t = open(p, encoding='utf-8', errors='replace').read()
        hits = [x for x in pats if x in t]
        if hits:
            print('  %-52s %s' % (os.path.relpath(p, BASE), ', '.join(hits)))
            found = True
if not found:
    print('  (none - the app relies on the platform default trust store)')

print()
print('=' * 78)
print('5) HTTP client used for the update call')
print('=' * 78)
p = os.path.join(BASE, 'work', 'orig_smali', 'com', 'x', 'plus', 'pro', 'f', 'd.smali')
t = open(p, encoding='utf-8', errors='replace').read()
for kw in ('HttpURLConnection', 'HttpsURLConnection', 'OkHttp', 'okhttp3',
           'openConnection', 'SSLSocketFactory', 'setSSLSocketFactory'):
    n = t.count(kw)
    if n:
        print('  %-24s %d occurrence(s)' % (kw, n))
