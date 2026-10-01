#!/usr/bin/env python3
"""
Prove the crypto chain end-to-end, independently of the Java code.

Chain found in the original app:

    RC4Factory.a("abksfsijifefe")          -> RC4 cipher, key bytes = key.getBytes()
    FileUtil.a(ctx, "Xpp_Q.json")          -> reads assets/Xpp_Q.json (text)
    cipher.a(assetText)                    -> decrypts to plain JSON
    gson.fromJson(plain, beans/config/a)   -> { a: List<ApkInfo> }

The network response uses the same cipher for `upgradeConf`:

    upgradeConf  = base64( RC4_encrypt(plainJson) )
    upgradeConfSign = MD5( md5hex( base64_decode(upgradeConf) ) + requestSign )

If RC4 decryption of the shipped asset yields valid JSON, the whole scheme is confirmed
and we can generate responses for the proxy.

Also re-derives the request signature to double-check the rule:
    sign = MD5( "".join( k + "=" + v  for k in sorted(keys) ) + "XPP" )
"""
import base64
import hashlib
import io
import json
import os
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APK = os.path.join(BASE, 'work', 'originals', '旅游必备 travel essentials.apk')
KEY = b'abksfsijifefe'


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


def md5hex(b: bytes) -> str:
    return hashlib.md5(b).hexdigest()


print('=' * 78)
print('1) RC4-decrypt assets/Xpp_Q.json with key %r' % KEY.decode())
print('=' * 78)
z = zipfile.ZipFile(APK)
for name in ('assets/Xpp_Q.json', 'assets/Xpp_P.json'):
    if name not in z.namelist():
        print('  %s : MISSING' % name)
        continue
    raw = z.read(name)
    # the asset is text; try utf-8 then ascii
    try:
        text = raw.decode('utf-8')
    except UnicodeDecodeError:
        text = raw.decode('latin-1')
    plain = rc4(KEY, text.encode('utf-8'))
    try:
        s = plain.decode('utf-8')
        ok = True
    except UnicodeDecodeError:
        s = plain.decode('latin-1')
        ok = False
    print('  %s : %d bytes ciphertext' % (name, len(raw)))
    print('    first 120 chars of plaintext: %r' % s[:120])
    valid = False
    try:
        obj = json.loads(s.rstrip('\x00').strip())
        valid = True
        print('    *** VALID JSON ***  top-level keys: %s' % list(obj.keys()))
        if 'apk' in obj:
            print('    apk entries: %d' % len(obj['apk']))
            print('    first: %s' % json.dumps(obj['apk'][0], ensure_ascii=False)[:200])
    except Exception as e:
        print('    not JSON: %s' % e)
    print('    utf8-decodable=%s  validJson=%s' % (ok, valid))
    print()

print('=' * 78)
print('2) verify the request-signature rule against a real sample')
print('=' * 78)
# the Chat Partner dotCache.txt holds a real sign we can test against
cp = os.path.join(BASE, 'work', 'cp_dotCache.txt')
if os.path.exists(cp):
    t = io.open(cp, encoding='utf-8', errors='replace').read()
    print('  sample: %s' % t.strip()[:220])
    print()
    print('  NOTE: that sample is Chat Partner and its data field is itself JSON,')
    print('        so a match is not guaranteed for this app. Printed for reference.')

print()
print('=' * 78)
print('3) round-trip: build a proxy upgradeConf and its sign')
print('=' * 78)
plain_obj = {
    "name": "Xpp",
    "timeStamp": 1569859200000,
    "apk": [],
}
plain_json = json.dumps(plain_obj, ensure_ascii=False, separators=(',', ':'))
ct = rc4(KEY, plain_json.encode('utf-8'))
b64 = base64.b64encode(ct).decode('ascii')
print('  plaintext      : %s' % plain_json)
print('  RC4+base64     : %s' % b64)
# what the app will do: raw = Base64.decode(upgradeConf); md5hex(raw); + sign; MD5
raw = base64.b64decode(b64)
mh = md5hex(raw)
request_sign = 'deadbeefdeadbeefdeadbeefdeadbeef'
resp_sign = md5hex((mh + request_sign).encode('utf-8'))
print('  md5hex(raw)    : %s' % mh)
print('  respSign       : MD5(%s + %s) = %s' % (mh, request_sign, resp_sign))
print()
print('  response body  :')
print('  %s' % json.dumps({"data": {"upgradeConf": b64,
                                   "upgradeConfSign": resp_sign}},
                             ensure_ascii=False)[:300])
