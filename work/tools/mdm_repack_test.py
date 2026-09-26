#!/usr/bin/env python3
"""
Does a REPACKED (re-signed) build of 旅游必备 obtain Huawei MDM permissions?

This has never been tested directly.  We know from code analysis that
DeveloperKeyProcessor.verifyCert() compares the CER's DeveloperKey against the APK's
real signing certificate and has NO special-permission short-circuit, so it *should*
fail.  But "should" is not "measured".

The repacked build is an almost perfect probe for this question because:
  * it keeps the ORIGINAL META-INF/HUAWEI.CER byte for byte
    (so DeveloperKey / Signature / ValidPeriod / ApkHash are all unchanged)
  * only the signing certificate differs (CN=oversea -> CN=LZRevive-siblings)
  * it still declares the same huawei permissions in its manifest

So any difference in the granted permissions is attributable purely to the
DeveloperKey check.

A/B on the same device, same clock:
   run A: install the GENUINE 旅游必备   -> expect 6 grants (already measured)
   run B: install the REPACKED 旅游必备  -> the question

Usage:
    python mdm_repack_test.py <serial> --check
    python mdm_repack_test.py <serial> --run
"""
import os
import re
import subprocess
import sys
import time

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
GENUINE = os.path.join(BASE, 'work', 'originals', '旅游必备 travel essentials.apk')
REPACKED = os.path.join(BASE, '旅游必备-patched.apk')
PKG = 'com.qiyecomm'

CER_PERMS = [
    'com.huawei.permission.sec.MDM_INSTALL_SYS_APP',
    'com.huawei.permission.sec.MDM_APP_MANAGEMENT',
    'com.huawei.permission.sec.MDM_DEVICE_MANAGER',
    'com.huawei.permission.sec.MDM_NETWORK_MANAGER',
    'com.huawei.permission.sec.MDM_PHONE_MANAGER',
    'com.huawei.permission.sec.MDM_VPN',
    'com.huawei.systemmanager.permission.ACCESS_INTERFACE',
]

PROC_TAGS = ('HwCertificationManager', 'DeveloperKeyProcessor', 'VP_VC', 'DK_VC',
             'Sig_VC', 'ApkHashProcessor', 'AH_VC', 'CertificationManager',
             'not same')


def adb(serial, *a, timeout=1200):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(a), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def sh(serial, *a, **k):
    return adb(serial, 'shell', *a, **k)


def clock_year(serial):
    d = sh(serial, 'date').strip()
    m = re.search(r'(\d{4})\s*$', d)
    return (int(m.group(1)) if m else 0), d


def grants(serial, pkg=PKG):
    d = sh(serial, 'dumpsys', 'package', pkg)
    res = {}
    for p in CER_PERMS:
        m = re.search(re.escape(p) + r':\s*granted=(true|false)', d)
        res[p] = m.group(1) if m else 'absent'
    return res, d


def uninstall(serial):
    if PKG in sh(serial, 'pm', 'list', 'packages'):
        r = adb(serial, 'uninstall', PKG)
        ls = [x for x in r.strip().splitlines() if x.strip()]
        return ls[-1] if ls else '?'
    return '(not installed)'


def run_one(serial, apk, label):
    print('\n' + '-' * 76)
    print('RUN: %s' % label)
    print('    apk: %s' % os.path.basename(apk))
    print('-' * 76)

    print('  uninstall previous: %s' % uninstall(serial))
    time.sleep(1)
    sh(serial, 'logcat', '-c')

    r = adb(serial, 'install', '-r', apk)
    ls = [x for x in r.strip().splitlines() if x.strip()]
    print('  install: %s' % (ls[-1] if ls else '?'))

    g, _ = grants(serial)
    granted = 0
    for p in CER_PERMS:
        short = (p.replace('com.huawei.permission.sec.', '')
                  .replace('com.huawei.systemmanager.permission.', ''))
        v = g[p]
        if v == 'true':
            granted += 1
        print('     %-24s %s' % (short, v))
    print('  => %d/%d granted' % (granted, len(CER_PERMS)))

    # certificate processor log
    log = sh(serial, 'logcat', '-d')
    hits = [l.strip() for l in log.splitlines()
            if any(t in l for t in PROC_TAGS)]
    if hits:
        print('  -- certificate processor log --')
        for l in hits[-12:]:
            print('     %s' % l[:150])
    else:
        print('  -- no certificate processor log lines --')

    return granted, g, None


def main():
    serial = sys.argv[1]
    mode = sys.argv[2] if len(sys.argv) > 2 else '--check'

    year, dd = clock_year(serial)
    print('=' * 76)
    print('REPACKED vs GENUINE  -- MDM permission A/B')
    print('device: %s   clock: %s' % (serial, dd))
    print('=' * 76)

    for apk, label in ((GENUINE, 'GENUINE (never repacked)'),
                       (REPACKED, 'REPACKED (re-signed by us)')):
        if not os.path.exists(apk):
            print('  MISSING: %s' % apk)
            return 1

    if year not in (2019, 2020):
        print('\nWARNING: clock year is %d - outside the CER ValidPeriod' % year)
        print('         (2019-10-14 .. 2020-10-14).  The genuine run would fail too,')
        print('         making the comparison meaningless.')
        print('         Set the date to 2019-12-07 first.')

    if mode == '--check':
        print('\n[plan]')
        print('   run A: uninstall, install the GENUINE apk, read grants')
        print('   run B: uninstall, install the REPACKED apk, read grants')
        print('   difference => attributable purely to the DeveloperKey check')
        print('\n(check only - nothing installed)')
        return 0

    ga_n, ga, _ = run_one(serial, GENUINE, 'A - GENUINE')
    gb_n, gb, _ = run_one(serial, REPACKED, 'B - REPACKED')

    print('\n' + '=' * 76)
    print('VERDICT')
    print('=' * 76)
    print('  %-24s %-10s %s' % ('permission', 'genuine', 'repacked'))
    print('  ' + '-' * 56)
    for p in CER_PERMS:
        short = (p.replace('com.huawei.permission.sec.', '')
                  .replace('com.huawei.systemmanager.permission.', ''))
        print('  %-24s %-10s %s' % (short, ga[p], gb[p]))
    print()
    print('  total granted:  genuine %d/7    repacked %d/7' % (ga_n, gb_n))
    print()
    if gb_n > 0:
        print('  ==> The REPACKED build DID obtain %d permission(s).' % gb_n)
        print('      DeveloperKey is NOT the whole story - investigate further.')
    else:
        print('  ==> The REPACKED build obtained NOTHING.')
        print('      Confirms: re-signing voids the CER authorization entirely.')
    return 0


if __name__ == '__main__':
    sys.exit(main())
