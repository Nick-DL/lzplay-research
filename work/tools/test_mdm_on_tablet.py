#!/usr/bin/env python3
"""
Can the tablet grant Huawei MDM permissions at all?

The Mate50 got them because it installed com.lzplay.helper through the backup-restore
channel with the clock inside the CER ValidPeriod window.  The tablet has never had
ANY CER-bearing app installed, so we do not actually know whether its Huawei
framework still honours the HUAWEI.CER route.

This is a clean test: install the GENUINE (never repacked) sibling app
com.qiyecomm - 旅游必备 - whose HUAWEI.CER we already verified is self-consistent
(DeveloperKey == its real signing certificate), with the clock inside its window.

旅游必备's window:  2019-10-14 12:20:59 .. 2020-10-14 12:20:59 (GMT)

If it gets MDM_INSTALL_SYS_APP / MDM_APP_MANAGEMENT, the tablet CAN grant MDM
permissions, and lzplay's "unsupported" verdict is purely a display bug in
lzplay - not a platform limitation.

Usage:
    python test_mdm_on_tablet.py <serial> --check
    python test_mdm_on_tablet.py <serial> --install
"""
import os
import re
import subprocess
import sys
import time

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APK = os.path.join(BASE, 'work', 'originals', '旅游必备 travel essentials.apk')
PKG = 'com.qiyecomm'

PERMS = [
    'com.huawei.permission.sec.MDM',
    'com.huawei.permission.sec.MDM_APP_MANAGEMENT',
    'com.huawei.permission.sec.MDM_INSTALL_SYS_APP',
    'com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP',
]


def adb(serial, *args, timeout=1200):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(args), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def sh(serial, *a, **k):
    return adb(serial, 'shell', *a, **k)


def clock_ok(serial):
    d = sh(serial, 'date').strip()
    m = re.search(r'(\d{4})\s*$', d)
    year = int(m.group(1)) if m else 0
    return (2019 <= year <= 2020), d, year


def grants(serial):
    out = sh(serial, 'dumpsys', 'package', PKG)
    g = {}
    for p in PERMS:
        m = re.search(re.escape(p) + r':\s*granted=(true|false)', out)
        if m:
            g[p] = m.group(1)
    return g, out


def main():
    serial = sys.argv[1]
    mode = sys.argv[2] if len(sys.argv) > 2 else '--check'

    print('=' * 76)
    print('CAN THE TABLET GRANT HUAWEI MDM PERMISSIONS?')
    print('device: %s' % serial)
    print('=' * 76)

    ok, d, year = clock_ok(serial)
    print('\n[clock] %s' % d)
    if ok:
        print('   -> inside 旅游必备 CER window (2019-10-14 .. 2020-10-14)')
    else:
        print('   -> OUTSIDE the window (year %d)' % year)
        print('      旅游必备 will be REJECTED.  Set the date to 2019-12-07 first:')
        print('      adb shell settings put global auto_time 0')
        print('      Settings > System and updates > Date and time > off automatic')
        print('      -> 2019-12-07')

    print('\n[apk] %s' % APK)
    if not os.path.exists(APK):
        print('   MISSING - need the genuine, never-repacked file')
        return 1
    import hashlib
    h = hashlib.sha256()
    with open(APK, 'rb') as f:
        for b in iter(lambda: f.read(1 << 20), b''):
            h.update(b)
    print('   sha256: %s' % h.hexdigest())
    print('   (this file must NOT be repacked - its CER binds to its own signature)')

    present = PKG in sh(serial, 'pm', 'list', 'packages')
    print('\n[installed] %s' % ('YES' if present else 'no'))

    if mode == '--check':
        print('\n[plan]')
        print('   1. (ensure clock is inside the window)')
        print('   2. adb install "%s"' % APK)
        print('   3. adb shell dumpsys package %s | grep "sec.MDM"' % PKG)
        print('\n   SUCCESS  => the tablet CAN grant MDM -> lzplay\'s "unsupported"')
        print('              is just its own gate bug, and a replacement installer')
        print('              could work on the tablet')
        print('   FAILURE  => the tablet\'s Huawei framework refuses CER apps, and')
        print('              only the genuine lzplay-on-Mate50 route exists')
        print('\n(check only - nothing installed)')
        return 0

    if not ok:
        print('\nREFUSING: clock is outside the CER window, the test would be meaningless.')
        return 2

    print('\n[1/3] clearing logcat')
    sh(serial, 'logcat', '-c')

    print('[2/3] installing the GENUINE 旅游必备')
    r = adb(serial, 'install', '-r', APK)
    lines = [x for x in r.strip().splitlines() if x.strip()]
    print('   %s' % (lines[-1] if lines else '?'))

    print('[3/3] reading the Huawei MDM grants')
    g, _ = grants(serial)
    win = 0
    for p in PERMS:
        v = g.get(p, 'absent')
        if v == 'true' and 'INSTALL_SYS_APP' in p:
            win += 1
        print('   %-52s %s' % (p, v))

    print()
    if win:
        print('   >>> SUCCESS: the tablet DOES grant MDM permissions.')
        print('   >>> lzplay\'s "device not supported" on the tablet is purely its own')
        print('   >>> gate check (getSysAppList missing).  A replacement installer')
        print('   >>> without that check could work here.')
    else:
        print('   >>> DENIED.  Look at the certificate processor log:')
        log = sh(serial, 'logcat', '-d')
        hits = [l for l in log.splitlines()
                if any(t in l for t in ('HwCertificationManager', 'VP_VC', 'DK_VC',
                                        'Sig_VC', 'CertificationManager'))]
        for l in hits[-20:]:
            print('      %s' % l.strip())
        if not hits:
            print('      (no certification log lines at all - the CER was never consulted)')
    return 0


if __name__ == '__main__':
    sys.exit(main())
