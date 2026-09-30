#!/usr/bin/env python3
"""
Extract and decode the device-registration JavaScript that both helper apps carry.

Where it lives (Chat Partner):
    c/s/a/g/i.smali  method d()  -> a big base64 string constant
    c/s/a/g/i.smali  method c()  -> String.format(template, gsfId) then re-base64

Why this matters: earlier I assumed the register_js payload was downloaded from the
vendor's (now dead) server.  It is not - it is a hardcoded constant, and the only
dynamic part is the GSF id substituted into a %s placeholder.

The script is a WebView automation payload: it runs inside Google's
/android/uncertified page, types the id into the form and clicks the button.

Usage:
    python tools/extract_register_js.py
"""
import base64
import io
import os
import re
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
OUT = os.path.join(BASE, 'work', 'register')

# (label, smali file that holds the base64 constant)
SOURCES = [
    ('ChatPartner (com.tyq.pro)',
     'work/chat_decoded/smali/c/s/a/g/i.smali'),
    ('旅游必备 (com.qiyecomm)',
     'work/travel_decoded/smali/com/x/plus/pro/register/c.smali'),
    ('旅游必备 alt',
     'work/travel_decoded/smali/com/x/plus/pro/register/d.smali'),
]

B64 = re.compile(r'const-string\s+v\d+,\s*"([A-Za-z0-9+/=]{200,})"')


def main():
    os.makedirs(OUT, exist_ok=True)
    found_any = False

    for label, rel in SOURCES:
        p = os.path.join(BASE, rel)
        print('=' * 78)
        print(label)
        print('  source: %s' % rel)
        print('=' * 78)

        if not os.path.exists(p):
            print('  FILE NOT PRESENT - searching for alternatives...\n')
            continue

        text = io.open(p, encoding='utf-8', errors='replace').read()
        hits = B64.findall(text)
        if not hits:
            print('  no long base64 constant found here\n')
            continue

        for i, b64 in enumerate(hits):
            found_any = True
            try:
                raw = base64.b64decode(b64)
            except Exception as e:
                print('  [%d] base64 decode failed: %s' % (i, e))
                continue

            try:
                js = raw.decode('utf-8')
            except Exception:
                print('  [%d] not UTF-8 (binary, %d bytes)' % (i, len(raw)))
                continue

            print('  [%d] %d bytes base64 -> %d bytes' % (i, len(b64), len(raw)))
            print('      starts with: %r' % js[:60])
            if '%s' in js:
                print('      contains a %%s placeholder  <-- GSF id is substituted here')
            print()

            name = label.split()[0] + '_register_%d.js' % i
            out = os.path.join(OUT, name)
            with io.open(out, 'w', encoding='utf-8', newline='\n') as f:
                f.write(js)
            print('      written -> %s' % os.path.relpath(out, BASE))
            print()
            print('  ---- decoded JavaScript ----')
            for ln in js.splitlines():
                print('    %s' % ln)
            print('  ----------------------------')
            print()

    if not found_any:
        print('nothing extracted')
        return 1

    # dump every file in the dir for inspection
    print('=' * 78)
    print('extracted files in %s:' % os.path.relpath(OUT, BASE))
    for n in sorted(os.listdir(OUT)):
        print('   %s  (%d bytes)' % (n, os.path.getsize(os.path.join(OUT, n))))
    return 0


if __name__ == '__main__':
    sys.exit(main())
