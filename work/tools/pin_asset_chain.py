#!/usr/bin/env python3
"""
Pin down the exact asset -> plaintext chain for Xpp_Q.json / Xpp_P.json.

First attempt (RC4 directly on the asset text) produced binary garbage, so the asset
is not raw RC4 ciphertext.  The candidate chains are:

  A. base64_decode(asset) -> RC4_decrypt            (my earlier note)
  B. RC4_decrypt(asset)   -> base64_decode
  C. base64_decode(asset) -> RC4_decrypt -> base64_decode
  D. RC4_decrypt(base64_decode(asset)) with the key NOT utf-8 encoded
  E. the cipher object does base64 itself: cipher.a(text) == rc4(b64decode(text))

We test them all and report which one yields valid JSON.
"""
import base64
import hashlib
import json
import os
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APK = os.path.join(BASE, 'work', 'originals', '旅游必备 travel essentials.apk')
KEYS = {
    'abksfsijifefe': b'abksfsijifefe',
}


def rc4(key: bytes, data: bytes) -> bytes:
    S = list(range(256))
    j = 0
    for i in range(256):
        j = (j + S[i] + key[i % len(key)]) & 0xFF
        S[i], S[j] = S[j], S[i]
    out = bytearray()
    i = j = 0
    for ch in data:
        i = (i + 1) & 0xFF
        j = (j + S[i]) & 0xFF
        S[i], S[j] = S[j], S[i]
        out.append(ch ^ S[(S[i] + S[j]) & 0xFF])
    return bytes(out)


def looks_like_json(b: bytes):
    for enc in ('utf-8', 'latin-1'):
        try:
            s = b.decode(enc).strip().rstrip('\x00').strip()
        except Exception:
            continue
        if s.startswith('{') or s.startswith('['):
            try:
                return json.loads(s)
            except Exception:
                return 'STARTS-BUT-INVALID'
    return None


z = zipfile.ZipFile(APK)
for asset in ('assets/Xpp_Q.json', 'assets/Xpp_P.json'):
    if asset not in z.namelist():
        continue
    raw = z.read(asset)
    print('=' * 78)
    print('%s   (%d bytes)' % (asset, len(raw)))
    print('=' * 78)
    print('  first 100 raw bytes: %r' % raw[:100])
    # is it even base64 text?
    try:
        txt = raw.decode('ascii')
        is_b64_text = True
        print('  ascii-decodable: yes')
    except UnicodeDecodeError:
        txt = raw.decode('latin-1')
        is_b64_text = False
        print('  ascii-decodable: NO (binary)')

    for kname, key in KEYS.items():
        print()
        print('  --- key %r ---' % kname)
        candidates = []

        # A: b64decode -> rc4
        try:
            candidates.append(('A b64->rc4', rc4(key, base64.b64decode(txt, validate=False))))
        except Exception as e:
            print('    A failed to build: %s' % e)

        # B: rc4 -> b64decode
        try:
            candidates.append(('B rc4->b64', base64.b64decode(rc4(key, raw), validate=False)))
        except Exception as e:
            print('    B failed to build: %s' % e)

        # B2: rc4(text) then strip and b64decode
        try:
            candidates.append(('B2 rc4(text)->b64',
                               base64.b64decode(rc4(key, txt.encode('latin-1')).decode('latin-1', 'ignore'),
                                                validate=False)))
        except Exception as e:
            print('    B2 failed to build: %s' % e)

        # D: rc4 raw bytes with key from different encodings
        for kenc, kb in (('utf8', key), ):
            candidates.append(('D rc4(raw) key=%s' % kenc, rc4(kb, raw)))

        for label, data in candidates:
            v = looks_like_json(data)
            tag = 'VALID JSON' if isinstance(v, dict) else ('invalid-ish' if v else '-')
            print('    %-24s %-12s %r' % (label, tag, data[:70]))
            if isinstance(v, dict):
                print('       *** keys: %s' % list(v.keys()))
                if 'apk' in v:
                    print('       apk entries: %d' % len(v['apk']))
                    print('       first: %s' % json.dumps(v['apk'][0], ensure_ascii=False)[:220])
    print()
