#!/usr/bin/env python3
"""
E1' - the decisive experiment, automated.

Hypothesis (proven from the device's own framework code):

    ValidPeriodProcessor.isCurrentDataExpired(to) = System.currentTimeMillis() > to

  lzplay's META-INF/HUAWEI.CER says

      ValidPeriod: from 2019-07-25 03:25:58 to 2020-07-25 03:25:58   (GMT)

  and the APK carries no `Version:` line, so the legacy v1 path applies and the
  period check is NOT skipped.  Therefore the CER is rejected purely because today's
  date (2026) is past the window, and every MDM permission is denied.

  Measured baseline on this device: MDM_INSTALL_SYS_APP has granted=true on
  exactly ZERO packages, including Huawei's own.

This script does the whole experiment:
    install the ORIGINAL, UNMODIFIED com.lzplay.helper.apk
    read back every com.huawei.permission.sec.MDM* grant
    if denied, pull the HwCertificationManager log lines that name the failed processor
    uninstall it again (unless --keep)

It does NOT change the system clock - that needs root, so you must set the date by
hand first (Settings > System & updates > Date & time > turn off 自动设置 > set
2019-12-07).  Run this script with --check first to see what it will do.

Usage:
    python run_e1.py --check        # prerequisites + baseline, changes nothing
    python run_e1.py --install      # the experiment (needs the date already set)
    python run_e1.py --status       # just print the current MDM grants
"""
import io
import os
import re
import subprocess
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APK = os.path.join(BASE, 'com.lzplay.helper.apk')
PKG = 'com.lzplay.helper'

# the window declared in the APK's own META-INF/HUAWEI.CER (GMT)
WINDOW_FROM = '2019-07-25 03:25:58'
WINDOW_TO = '2020-07-25 03:25:58'

MANDATORY = [
    'com.huawei.permission.sec.MDM',
    'com.huawei.permission.sec.MDM_APP_MANAGEMENT',
    'com.huawei.permission.sec.MDM_INSTALL_SYS_APP',
    'com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP',
    'com.huawei.permission.sec.MDM_DEVICE_MANAGER',
    'com.huawei.permission.sec.MDM_DEVICE_OWNER',
]

PROCESSOR_TAGS = ('HwCertificationManager', 'VP_VC', 'AH_VC', 'SN_VC', 'CF_VC',
                  'DK_VC', 'HC_VC', 'Sig_VC', 'HwCertificationProcessor')


def sh(*args, timeout=180):
    cmd = ['adb', 'shell'] + list(args)
    try:
        r = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout,
                              encoding='utf-8', errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def adb(*args, timeout=900):
    cmd = ['adb'] + list(args)
    try:
        r = subprocess.run(cmd, capture_output=True, text=True, timeout=timeout,
                              encoding='utf-8', errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def device_date():
    return sh('date').strip()


def baseline():
    out = sh('dumpsys', 'package')
    grants = {}
    for perm in MANDATORY:
        m = re.search(re.escape(perm) + r':\s*granted=(true|false)', out)
        grants[perm] = m.group(1) if m else 'absent'
    return grants


def global_install_sys_app_grants():
    """How many packages device-wide hold MDM_INSTALL_SYS_APP."""
    out = sh('dumpsys', 'package')
    n = len(re.findall(r'MDM_INSTALL_SYS_APP:\s*granted=true', out))
    return n


def pkg_grants(pkg):
    out = sh('dumpsys', 'package', pkg)
    g = {}
    for perm in MANDATORY:
        m = re.search(re.escape(perm) + r':\s*granted=(true|false)', out)
        if m:
            g[perm] = m.group(1)
    return g, out


def in_window(now_str):
    """now_str looks like 'Sat Dec  7 12:00:00 CST 2019'."""
    m = re.search(r'(\d{4})$', now_str)
    if not m:
        return None
    year = int(m.group(1))
    return 2019 <= year <= 2020, year


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else '--check'

    print('=' * 76)
    print('E1\' : does the original lzplay obtain MDM permissions when the clock')
    print('      is inside its CER ValidPeriod (%s .. %s GMT)?' % (WINDOW_FROM, WINDOW_TO))
    print('=' * 76)

    print('\n[device clock]')
    d = device_date()
    print('   %s' % d)
    win = in_window(d)
    if win is None:
        print('   (could not parse the year - check manually)')
    elif win[0]:
        print('   -> inside the window for lzplay (year %d)' % win[1])
        print('      NOTE: com.qiyecomm / com.tyq.pro use 2019-10-14..2020-10-14,')
        print('      which this year also satisfies.')
    else:
        print('   -> OUTSIDE the window (year %d).' % win[1])
        print('      The experiment will FAIL until you set the date by hand:')
        print('      Settings > System and updates > Date and time > turn OFF')
        print('      the automatic-time switch > set the date to 2019-12-07.')
        print('      (adb cannot set the clock:')
        print('      "date: cannot set date: Operation not permitted".)')

    print('\n[device-wide baseline: who holds MDM_INSTALL_SYS_APP]')
    n = global_install_sys_app_grants()
    print('   packages with granted=true : %d' % n)
    if n == 0:
        print('   -> clean baseline: no app on this device has ever passed CER auth')

    print('\n[is lzplay already installed?]')
    out = sh('pm', 'list', 'packages', '--user', '0')
    installed = PKG in out
    print('   %s' % ('YES' if installed else 'no'))
    if installed:
        g, _ = pkg_grants(PKG)
        for k, v in g.items():
            print('      %-52s %s' % (k, v))

    if mode == '--status':
        return 0

    if mode == '--check':
        print('\n[apk to install]')
        if os.path.exists(APK):
            import hashlib
            h = hashlib.sha256()
            with open(APK, 'rb') as f:
                for b in iter(lambda: f.read(1 << 20), b''):
                    h.update(b)
            print('   %s' % APK)
            print('   size   : %d' % os.path.getsize(APK))
            print('   sha256 : %s' % h.hexdigest())
            print('   NEVER   repack or re-sign this file - it would break the CER')
        else:
            print('   MISSING: %s' % APK)
            return 1
        print('\n[plan]')
        print('   adb install "%s"' % APK)
        print('   adb shell dumpsys package %s | grep -E "sec\\.MDM.*granted"' % PKG)
        print('   if any mandatory grant is false -> pull the processor log:')
        print('   adb logcat -d | grep -E "%s"' % '|'.join(PROCESSOR_TAGS[:6]))
        print('\n(check only - nothing installed)')
        return 0

    if mode == '--install':
        if not os.path.exists(APK):
            print('MISSING %s' % APK)
            return 1
        if win and not win[0]:
            print('\nREFUSING: the device clock is outside the window. Set the date first.')
            return 2

        print('\n[1/4] clearing logcat')
        sh('logcat', '-c')

        print('[2/4] installing the ORIGINAL apk')
        r = adb('install', '-r', APK)
        print('   %s' % r.strip().splitlines()[-1] if r.strip() else '   (no output)')
        if 'Success' not in r:
            print('   install failed; full output:')
            print(r)
            return 3

        print('[3/4] reading back the MDM grants')
        g, full = pkg_grants(PKG)
        ok = 0
        for perm in MANDATORY:
            v = g.get(perm, 'absent')
            if v == 'true' and perm != 'com.huawei.permission.sec.MDM':
                ok += 1
            print('   %-52s %s' % (perm, v))

        print('[4/4] verdict')
        if ok:
            print('   >>> SUCCESS: %d privileged MDM permission(s) granted.' % ok)
            print('   >>> The CER was accepted.  This is the route to installing GSF')
            print('   >>> as a system app (which defeats trustspace gates 1 and 3).')
        else:
            print('   >>> DENIED.  Pulling the certificate-processor log:')
            log = sh('logcat', '-d')
            hits = [l for l in log.splitlines()
                    if any(t in l for t in PROCESSOR_TAGS)]
            if hits:
                for l in hits[-25:]:
                    print('      %s' % l.strip())
            else:
                print('      (no processor log lines found - the CER may not have')
                print('       been consulted at all, meaning the install path used')
                print('       was not the one that honours HUAWEI.CER)')
            print('\n   Interpretation: if the log names ValidPeriod, the clock is')
            print('   still outside the window.  If it names DK_VC, the APK has been')
            print('   altered.  If there is no log at all, adb install simply does')
            print('   not go through the certified path - use 备份和恢复 instead.')

        print('\n[cleanup]')
        r = adb('uninstall', PKG)
        print('   %s' % r.strip())
        print('   (pass nothing to keep it: re-run manually if you want it left on)')
        return 0

    print('\nusage: run_e1.py [--check|--install|--status]')
    return 1


if __name__ == '__main__':
    sys.exit(main())
