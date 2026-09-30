#!/usr/bin/env python3
"""
Decrypt the travel app's embedded package manifest.

From com/x/plus/pro/update/c.smali (a(Context) -> List<ApkInfo>):

    sget-object v0, c->b                 ->  the key constant, "abksfsijifefe"
    invoke-static v0, b/b->a(String)     ->  com.x.plus.pro.b.b.a(key) = new RC4JavaxImpl(key)
    f/c->a(Context, "Xpp_Q.json")        ->  read assets/Xpp_Q.json  (SDK 28 uses Xpp_P.json)
    a->a(String)                         ->  decrypt
    Gson.fromJson(plain, beans/config/a) ->  List<ApkInfo>

com/x/plus/pro/b/c.smali (RC4JavaxImpl) reveals the cipher:

    static field a = new String(Base64.decode("UkM0", 0))   ==  "RC4"
    SecretKeySpec(key, "RC4"); Cipher.getInstance("RC4"); init(DECRYPT_MODE, k)

    public String a(String td):
        bytes = Base64.decode(td, 0)
        return new String(rc4(bytes))

So:  plaintext = RC4( base64_decode(file) )  with key "abksfsijifefe", no IV.

The whole GMS package list therefore ships INSIDE the APK - no server needed.

Usage:
    python tools/decrypt_xpp.py                       # dump to work/xpp/
    python tools/decrypt_xpp.py --show                # also pretty-print
"""
import base64
import io
import json
import os
import sys
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
OUT = os.path.join(BASE, 'work', 'xpp')

# com.x.plus.pro.update.c.b
KEY = b'abksfsijifefe'

TARGETS = [
    ('work/originals/旅游必备 travel essentials.apk', 'com.qiyecomm', 'Xpp_Q.json'),
    ('work/originals/旅游必备 travel essentials.apk', 'com.qiyecomm', 'Xpp_P.json'),
    ('work/originals/chatpartner.apk', 'com.tyq.pro', 'tyq_resource_Q.json'),
    ('work/originals/chat partner Chinese translated.apk', 'com.tyq.pro', 'tyq_resource_Q.json'),
]


def rc4(key: bytes, data: bytes) -> bytes:
    """Standard RC4.  No IV, no padding - matches javax.crypto 'RC4'."""
    S = list(range(256))
    j = 0
    klen = len(key)
    for i in range(256):
        j = (j + S[i] + key[i % klen]) & 0xFF
        S[i], S[j] = S[j], S[i]

    out = bytearray(len(data))
    i = j = 0
    for n, b in enumerate(data):
        i = (i + 1) & 0xFF
        j = (j + S[i]) & 0xFF
        S[i], S[j] = S[j], S[i]
        out[n] = b ^ S[(S[i] + S[j]) & 0xFF]
    return bytes(out)


def assets_in(apk):
    try:
        z = zipfile.ZipFile(apk)
    except Exception as e:
        return {}, 'cannot open: %s' % e
    names = [n for n in z.namelist() if n.startswith('assets/')]
    return z, names


def try_decrypt(apk, member):
    z = zipfile.ZipFile(apk)
    raw = z.read(member)
    # the file is base64 text
    txt = raw.decode('utf-8', 'replace').strip()
    try:
        blob = base64.b64decode(txt, validate=False)
    except Exception as e:
        return None, 'base64 failed: %s' % e
    plain = rc4(KEY, blob)
    return plain, None


def main():
    show = '--show' in sys.argv
    os.makedirs(OUT, exist_ok=True)

    seen = set()
    for apk_rel, pkg, member in TARGETS:
        apk = os.path.join(BASE, apk_rel)
        if not os.path.exists(apk):
            print('MISSING %s' % apk_rel)
            continue
        if (apk, member) in seen:
            continue
        seen.add((apk, member))

        z, names = assets_in(apk)
        target = 'assets/' + member
        print('=' * 78)
        print('%s   [%s]' % (os.path.basename(apk_rel), pkg))
        print('=' * 78)
        if target not in names:
            others = [n for n in names if n.lower().endswith('.json')]
            print('  %s not present' % target)
            print('  json assets found: %s' % (', '.join(others) or '(none)'))
            continue

        plain, err = try_decrypt(apk, target)
        if err:
            print('  ERROR %s' % err)
            continue

        text = plain.decode('utf-8', 'replace')
        print('  member      : %s' % target)
        print('  ciphertext  : %d bytes (base64)' % len(z.read(target)))
        print('  plaintext   : %d bytes' % len(plain))

        out_name = '%s__%s' % (pkg, member.replace('/', '_'))
        out_path = os.path.join(OUT, out_name)
        with io.open(out_path, 'w', encoding='utf-8', newline='\n') as f:
            f.write(text)
        print('  written     : %s' % os.path.relpath(out_path, BASE))

        # sanity: does it look like JSON?
        stripped = text.lstrip()
        if stripped.startswith('{') or stripped.startswith('['):
            print('  looks like JSON: yes')
            try:
                obj = json.loads(text)
                if isinstance(obj, dict):
                    print('  top-level keys: %s' % ', '.join(list(obj.keys())[:12]))
                elif isinstance(obj, list):
                    print('  list length   : %d' % len(obj))
                if show:
                    print()
                    print(json.dumps(obj, ensure_ascii=False, indent=2)[:4000])
            except Exception as e:
                print('  JSON parse failed: %s' % e)
        else:
            print('  looks like JSON: NO - first 200 chars:')
            print('    %r' % text[:200])
        print()

    print('output dir: %s' % os.path.relpath(OUT, BASE))


if __name__ == '__main__':
    main()
