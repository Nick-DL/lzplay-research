#!/usr/bin/env python3
"""
Install the tutorial's 2026 GMS set on a device (instead of the 2019 _29 set).

Rationale: the old com.google.android.gms 20.06.15 (targetSdk 29, built for
Android 10) crashes on Android 12 with

    SecurityException: Component com.google.android.gms/.chimera.container.SharedModuleProvider
    requests FLAG_SINGLE_USER, but app does not hold
    android.permission.INTERACT_ACROSS_USERS

The 184- tutorial ships 9 APKs from 2026 (Play services 26.x) precisely because the
old builds do not run on HarmonyOS 4.x.

Order matters, per the tutorial: account manager -> contacts -> sidecar -> shared
library -> GSF -> GMS -> vending.

Usage:
    python install_tutorial_gms.py <serial> [--dry]
"""
import os
import subprocess
import sys
import time

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'


def find_src():
    """
    Locate the tutorial's GMSAPKS folder.

    The folder name contains CJK characters, and passing it through a PowerShell ->
    Python command line mangles it (the console codepage is GBK).  So we glob for it
    instead of hard-coding the path.
    """
    import glob
    for pat in ('work/2026*/GMSAPKS', 'work/*/GMSAPKS'):
        hits = glob.glob(os.path.join(BASE, pat))
        if hits:
            return hits[0]
    return os.path.join(BASE, 'work', 'GMSAPKS')


SRC = find_src()

# tutorial order
ORDER = [
    '1-google账户管理.apk',
    '2-V12谷歌通讯录.apk',
    '3-Policy sidecar aps.apk',
    '4-Shared Library.apk',
    '5-V12谷歌服务框架.apk',
    '6-Google Play 服务.apk',
    '7-Google Play 商店.apk',
]

# fallbacks if the preferred variant will not install
FALLBACKS = {
    '2-V12谷歌通讯录.apk': ['2-V10谷歌通讯录.apk'],
    '5-V12谷歌服务框架.apk': ['5-V10谷歌服务框架.apk'],
}


def adb(serial, *args, timeout=1200):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(args), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def try_install(serial, name):
    p = os.path.join(SRC, name)
    if not os.path.exists(p):
        return 'MISSING FILE'
    r = adb(serial, 'install', '-r', p)
    lines = [x for x in r.strip().splitlines() if x.strip()]
    for ln in lines:
        if 'Success' in ln:
            return 'Success'
        if 'Failure' in ln or 'Error' in ln:
            return ln.strip()[:90]
    return (lines[-1] if lines else '?')[:90]


def main():
    serial = sys.argv[1]
    dry = '--dry' in sys.argv

    print('=' * 76)
    print('INSTALL TUTORIAL 2026 GMS SET -> %s' % serial)
    print('=' * 76)
    print('source: %s' % SRC)
    print()

    if not os.path.isdir(SRC):
        print('source dir missing')
        return 1

    if dry:
        for n in ORDER:
            p = os.path.join(SRC, n)
            print('  %-40s %s' % (n, '%.1f MB' % (os.path.getsize(p) / 1048576)
                                  if os.path.exists(p) else 'MISSING'))
        print('\n(dry run)')
        return 0

    # remove the old 2019 set first
    print('[0] remove the old 2019 builds')
    for p in ('com.google.android.gms', 'com.google.android.gsf',
              'com.android.vending',
              'com.google.android.syncadapters.contacts',
              'com.google.android.gms.policy_sidecar_aps'):
        r = adb(serial, 'shell', 'pm', 'path', p)
        if 'package:' not in r:
            continue
        out = adb(serial, 'uninstall', p)
        lines = [x for x in out.strip().splitlines() if x.strip()]
        print('   %-46s %s' % (p, lines[-1] if lines else '?'))

    print('\n[1] install in tutorial order')
    results = {}
    for n in ORDER:
        res = try_install(serial, n)
        print('   %-40s %s' % (n, res))
        results[n] = res
        if res != 'Success':
            for fb in FALLBACKS.get(n, []):
                print('   -> fallback %s' % fb)
                res2 = try_install(serial, fb)
                print('   %-40s %s' % (fb, res2))
                results[fb] = res2
        time.sleep(2)

    print('\n[2] final state (user 0)')
    out = adb(serial, 'shell', 'pm', 'list', 'packages', '--user', '0')
    for p in ('com.google.android.gms', 'com.google.android.gsf',
              'com.android.vending',
              'com.google.android.syncadapters.contacts',
              'com.google.android.gms.policy_sidecar_aps'):
        print('   %-46s %s' % (p, 'OK' if p in out else 'MISSING'))

    print('\n[3] versions')
    for p in ('com.google.android.gms', 'com.google.android.gsf',
              'com.android.vending'):
        d = adb(serial, 'shell', 'dumpsys', 'package', p)
        v = ''
        for ln in d.splitlines():
            if 'versionName=' in ln:
                v = ln.split('versionName=')[1].strip()[:50]
                break
        print('   %-46s %s' % (p, v))
    return 0


if __name__ == '__main__':
    sys.exit(main())
