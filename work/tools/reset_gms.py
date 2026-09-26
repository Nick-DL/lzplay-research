#!/usr/bin/env python3
"""
Clean the tablet of Google packages and install exactly the same set that works
on the Mate50.

Usage:
    python reset_gms.py <serial> [--dry]
"""
import os
import subprocess
import sys
import time

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
GMS29 = os.path.join(BASE, 'work', 'gms29')

# the exact set that is on the working Mate50
SET = [
    'com.google.android.gsf_29.apk',
    'com.google.android.gms_29.apk',
    'com.android.vending_29.apk',
    'com.google.android.syncadapters.contacts_29.apk',
    'com.oversea.gmapjar_29.apk',
    'idhelper.apk',
]

TARGETS = [
    'com.google.android.gms',
    'com.google.android.gsf',
    'com.android.vending',
    'com.google.android.syncadapters.contacts',
    'com.oversea.gmapjar',
    'com.x.idhelper',
    'com.google.android.gms.policy_sidecar_aps',
    'com.google.android.backuptransport',
    'com.google.android.gsf.login',
]


def adb(serial, *args, timeout=900):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(args), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def present(serial, pkg):
    out = adb(serial, 'shell', 'pm', 'path', pkg)
    return 'package:' in out


def main():
    serial = sys.argv[1]
    dry = '--dry' in sys.argv

    print('=' * 72)
    print('RESET GMS on %s' % serial)
    print('=' * 72)

    # users
    users = adb(serial, 'shell', 'pm', 'list', 'users')
    print('\n[users]')
    for ln in users.splitlines():
        if 'UserInfo' in ln:
            print('   %s' % ln.strip())

    print('\n[1] uninstall existing google packages')
    for p in TARGETS:
        if not present(serial, p):
            continue
        r = adb(serial, 'uninstall', p)
        last = [x for x in r.strip().splitlines() if x.strip()]
        print('   %-46s %s' % (p, last[-1] if last else '?'))
        time.sleep(1)

    print('\n[2] verify clean')
    left = []
    for p in TARGETS:
        if present(serial, p):
            left.append(p)
    if left:
        print('   STILL PRESENT: %s' % ', '.join(left))
    else:
        print('   clean - no google packages')

    if dry:
        print('\n(dry run - not installing)')
        return 0

    print('\n[3] install the Mate50 set')
    for f in SET:
        p = os.path.join(GMS29, f)
        if not os.path.exists(p):
            print('   %-46s MISSING FILE' % f)
            continue
        r = adb(serial, 'install', p)
        last = [x for x in r.strip().splitlines() if x.strip()]
        tag = last[-1] if last else '?'
        print('   %-46s %s' % (f, tag))
        time.sleep(1)

    print('\n[4] final state (user 0)')
    out = adb(serial, 'shell', 'pm', 'list', 'packages', '--user', '0')
    for p in ('com.google.android.gms', 'com.google.android.gsf',
              'com.android.vending', 'com.google.android.syncadapters.contacts',
              'com.oversea.gmapjar', 'com.x.idhelper'):
        print('   %-46s %s' % (p, 'OK' if p in out else 'MISSING'))
    return 0


if __name__ == '__main__':
    sys.exit(main())
