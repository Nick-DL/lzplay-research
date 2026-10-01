#!/usr/bin/env python3
"""
Recreate work/siblings.jks, the keystore used to sign the repacked travel app.

It is deliberately NOT tracked in git (it contains a private key).  If it is missing,
run this script to regenerate it - the only consequence is that the repacked APK gets a
new signing identity, which does not matter because a repacked build can never satisfy
HUAWEI.CER anyway (the DeveloperKey check requires a byte-identical certificate).

Usage:
    python work/tools/make_keystore.py
"""
import os
import subprocess
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
KS = os.path.join(BASE, 'work', 'siblings.jks')
KEYTOOL = r'C:\Users\NickDL\.jdks\jbr-17.0.14\bin\keytool.exe'
PASS = 'lzplay123'


def main():
    if os.path.exists(KS):
        print('exists already: %s' % KS)
        return 0
    print('generating %s' % KS)
    r = subprocess.run([KEYTOOL, '-genkeypair', '-keystore', KS,
                        '-storepass', PASS, '-keypass', PASS,
                        '-alias', 'siblings', '-keyalg', 'RSA', '-keysize', '2048',
                        '-validity', '10950',
                        '-dname', 'CN=siblings, OU=research, O=lzplay, C=Unknown'],
                       capture_output=True, text=True, encoding='utf-8', errors='replace')
    print(r.stdout or '', r.stderr or '')
    print('ok' if os.path.exists(KS) else 'FAILED')
    return 0 if os.path.exists(KS) else 1


if __name__ == '__main__':
    sys.exit(main())
