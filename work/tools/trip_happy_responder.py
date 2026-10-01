#!/usr/bin/env python3
"""
Reference responder for 旅游必备's update endpoint:
    POST https://api.trip-happy.com/index.php/upgrade/info/

Every element below was read out of the original smali, not guessed:

  cipher        RC4Factory.a("abksfsijifefe")          -> RC4, key = key.getBytes()
  conf encoding Base64Util.a(byte[])                   -> Base64.NO_PADDING|NO_WRAP
  conf content  gson -> beans/upgrade/d { a: UpgradePackageModel }
  md5hex        StringUtil.b(String)                   -> MD5, lowercase hex
  request sign  update/c.a(HashMap)                    -> MD5( concat(k+"="+v for k in sorted(keys)) + "XPP" )
  resp sign     c$1.a(Object)                          -> MD5( md5hex(b64decode(conf)) + requestSign )

Verified separately: b64decode_then_rc4("assets/Xpp_Q.json") yields valid JSON.

This tool:
  * builds an upgradeConf containing the vendor's own apk list
  * computes the matching upgradeConfSign for a given request sign
  * can decode a captured request body and recompute the sign to check our rule
  * serves the endpoint over HTTP so a device proxy can point at it

Usage:
  python trip_happy_responder.py build --sign <requestSign> [--out response.json]
  python trip_happy_responder.py checksign --body '<request json>'
  python trip_happy_responder.py serve --port 8080 [--sign-from-request]
"""
import argparse
import base64
import hashlib
import io
import json
import os
import sys
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APK = os.path.join(BASE, 'work', 'originals', '旅游必备 travel essentials.apk')
KEY = b'abksfsijifefe'
CONF_FILE = 'assets/Xpp_Q.json'          # SDK != 28 -> Xpp_Q.json


# ----------------------------------------------------------------- crypto
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


def md5hex(s: str) -> str:
    return hashlib.md5(s.encode('utf-8')).hexdigest()


def b64_nopad_norap(b: bytes) -> str:
    """Android Base64.NO_PADDING | NO_WRAP"""
    return base64.b64encode(b).decode('ascii').rstrip('=')


def b64_decode_loose(s: str) -> bytes:
    """Android Base64.DEFAULT tolerates missing padding and whitespace."""
    s = ''.join(s.split())
    pad = (-len(s)) % 4
    return base64.b64decode(s + '=' * pad)


# ------------------------------------------------------------- vendor data
def load_conf() -> dict:
    """base64_decode(asset) -> RC4 -> JSON"""
    z = zipfile.ZipFile(APK)
    raw = z.read(CONF_FILE).decode('ascii')
    return json.loads(rc4(KEY, b64_decode_loose(raw)).decode('utf-8'))


def request_sign_from_body(body: str) -> str:
    """Reproduce update/c.a(HashMap): sort keys, join k=v, append XPP, MD5."""
    o = json.loads(body)
    parts = ''.join('%s=%s' % (k, o[k]) for k in sorted(o.keys()))
    return md5hex(parts + 'XPP')


def build_upgrade_conf(vendor: dict) -> str:
    """
    Wrap the vendor apk list in the UpgradePackageModel the app deserialises into
    beans/upgrade/d -> { a: UpgradePackageModel }.

    Fields seen in the beans:
      ApkBaseInfo          downUrl fileMd5 verCode pkgName fileSize downloadPath
                           sign_1 sign_256 number
      UpgradePackageModel  + backgroundUpdate{silent,notification{enable,message,title}}
                           + homeUpgrade{popPrompt,message,button}
      beans/upgrade/d      { a: UpgradePackageModel }
    """
    model = {
        "name": "Xpp",
        "timeStamp": vendor.get("timeStamp", 1569859200000),
        "apk": vendor["apk"],
        "backgroundUpdate": {
            "silent": True,
            "notification": {"enable": False, "message": "", "title": ""}
        },
        "homeUpgrade": {"popPrompt": False, "message": "", "button": ""}
    }
    return json.dumps({"a": model}, ensure_ascii=False, separators=(',', ':'))


def make_response(plain_conf: str, request_sign: str) -> dict:
    conf_b64 = b64_nopad_norap(rc4(KEY, plain_conf.encode('utf-8')))
    # what the app does: raw = Base64.decode(conf) ; md5hex(raw) + requestSign ; MD5
    raw = b64_decode_loose(conf_b64)
    sign = md5hex(md5hex_bytes(raw) + request_sign)
    return {"data": {"upgradeConf": conf_b64, "upgradeConfSign": sign}}


def md5hex_bytes(b: bytes) -> str:
    return hashlib.md5(b).hexdigest()


# ----------------------------------------------------------------- self-test
def selftest():
    print('=' * 78)
    print('SELF TEST')
    print('=' * 78)
    vendor = load_conf()
    print('  vendor conf loaded: %d apk entries' % len(vendor['apk']))
    for a in vendor['apk']:
        print('    %-46s %s' % (a['pkgName'], a['verCode']))

    plain = build_upgrade_conf(vendor)
    print()
    print('  upgradeConf plaintext (%d bytes):' % len(plain))
    print('    %s' % plain[:220])

    req_sign = md5hex('brand=HUAWEI' + 'product=Trip' + 'XPP')
    resp = make_response(plain, req_sign)
    print()
    print('  upgradeConf (base64 NO_PADDING|NO_WRAP, %d chars):' % len(resp['data']['upgradeConf']))
    print('    %s' % resp['data']['upgradeConf'][:120] + '...')
    print('  upgradeConfSign: %s' % resp['data']['upgradeConfSign'])

    # --- verify the app would accept it ---
    conf = resp['data']['upgradeConf']
    raw = b64_decode_loose(conf)
    decoded = rc4(KEY, raw).decode('utf-8')
    expect = md5hex(md5hex_bytes(raw) + req_sign)
    print()
    print('  --- simulating the app ---')
    print('    b64decode ok        : %s' % (decoded == plain))
    print('    RC4 round trip ok   : %s' % (decoded == plain))
    print('    json parses         : %s' % (json.loads(decoded) is not None))
    print('    sign matches        : %s' % (expect == resp['data']['upgradeConfSign']))
    print('    contains apk list   : %s' % ('apk' in json.loads(decoded)['a']))
    print()
    ok = (decoded == plain and expect == resp['data']['upgradeConfSign'])
    print('  RESULT: %s' % ('PASS - the app would accept this response' if ok else 'FAIL'))
    return 0 if ok else 1


def main():
    ap = argparse.ArgumentParser()
    sub = ap.add_subparsers(dest='cmd', required=True)

    b = sub.add_parser('build')
    b.add_argument('--sign', required=True)
    b.add_argument('--out')

    c = sub.add_parser('checksign')
    c.add_argument('--body', required=True)

    s = sub.add_parser('serve')
    s.add_argument('--port', type=int, default=8080)

    sub.add_parser('selftest')

    a = ap.parse_args()

    if a.cmd == 'selftest':
        return selftest()

    if a.cmd == 'checksign':
        print('computed sign = %s' % request_sign_from_body(a.body))
        try:
            print('body sign     = %s' % json.loads(a.body).get('sign'))
        except Exception:
            pass
        return 0

    if a.cmd == 'build':
        vendor = load_conf()
        resp = make_response(build_upgrade_conf(vendor), a.sign)
        txt = json.dumps(resp, ensure_ascii=False)
        if a.out:
            io.open(a.out, 'w', encoding='utf-8', newline='\n').write(txt)
            print('wrote %s (%d bytes)' % (a.out, len(txt)))
        else:
            print(txt)
        return 0

    if a.cmd == 'serve':
        from http.server import BaseHTTPRequestHandler, HTTPServer

        class H(BaseHTTPRequestHandler):
            def do_POST(self):
                n = int(self.headers.get('Content-Length', 0))
                body = self.rfile.read(n).decode('utf-8', 'replace')
                print('--- %s' % self.path)
                print('    body: %s' % body[:300])
                try:
                    sign = json.loads(body).get('sign') or ''
                except Exception:
                    sign = ''
                print('    sign from body: %s' % sign)
                resp = make_response(build_upgrade_conf(load_conf()), sign)
                payload = json.dumps(resp, ensure_ascii=False).encode('utf-8')
                self.send_response(200)
                self.send_header('Content-Type', 'application/json; charset=utf-8')
                self.send_header('Content-Length', str(len(payload)))
                self.end_headers()
                self.wfile.write(payload)

            def log_message(self, *args):
                pass

        print('serving on 0.0.0.0:%d  (POST /index.php/upgrade/info/)' % a.port)
        HTTPServer(('0.0.0.0', a.port), H).serve_forever()

    return 0


if __name__ == '__main__':
    sys.exit(main())
