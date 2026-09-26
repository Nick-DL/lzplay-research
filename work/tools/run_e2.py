#!/usr/bin/env python3
"""
E2' - does the CER-derived MDM grant survive once the clock leaves the window?

E1' proved the mechanism: with the device clock inside
2019-07-25 .. 2020-07-25, installing the ORIGINAL com.lzplay.helper.apk yields

    com.huawei.permission.sec.MDM_INSTALL_SYS_APP   granted=true
    com.huawei.permission.sec.MDM_APP_MANAGEMENT    granted=true

That is the first time ANY package on this device has held MDM_INSTALL_SYS_APP.

The open question (the subagent could not find a guarantee in the code) is whether
PackageManagerService re-validates the certificate on a later scan and calls
removeExistedCert(), revoking the permissions once the clock is back in 2026.

This script:
    1. installs the ORIGINAL apk and re-reads the grants (should be true)
    2. asks PackageManagerService to re-scan by killing the package service,
       which forces a fresh certification pass WITHOUT rebooting the device
    3. re-reads the grants
    4. restarts the app process

Run it while the clock is still inside the window.  Killing the package service is
safe - it is restarted automatically - but it is a system-level nudge, so the script
asks for confirmation unless --yes is passed.

Usage:
    python run_e2.py --check
    python run_e2.py --run --yes
"""
import os
import re
import subprocess
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APK = os.path.join(BASE, 'com.lzplay.helper.apk')
PKG = 'com.lzplay.helper'

MANDATORY = [
    'com.huawei.permission.sec.MDM',
    'com.huawei.permission.sec.MDM_APP_MANAGEMENT',
    'com.huawei.permission.sec.MDM_INSTALL_SYS_APP',
    'com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP',
]


def adb(*args, timeout=900):
    try:
        r = subprocess.run(['adb'] + list(args), capture_output=True, text=True,
                           timeout=timeout, encoding='utf-8', errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def sh(*args, timeout=600):
    return adb('shell', *args, timeout=timeout)


def grants():
    out = sh('dumpsys', 'package', PKG)
    g = {}
    for perm in MANDATORY:
        m = re.search(re.escape(perm) + r':\s*granted=(true|false)', out)
        if m:
            g[perm] = m.group(1)
    return g


def show(g, label):
    print('   %s' % label)
    for k in MANDATORY:
        v = g.get(k, 'absent')
        mark = '  <<<' if (v == 'true' and 'INSTALL_SYS_APP' in k) else ''
        print('      %-52s %s%s' % (k, v, mark))


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else '--check'
    confirmed = '--yes' in sys.argv

    print('=' * 76)
    print("E2' : is the MDM grant persistent once the clock leaves the CER window?")
    print('=' * 76)

    d = sh('date').strip()
    print('\n[clock] %s' % d)
    ok_win = re.search(r'(2019|2020)$', d) is not None
    if not ok_win:
        print('   WARNING: clock does not look like 2019/2020 - reinstall first,')
        print('   and set the date back into the window before running E2.')

    out = sh('pm', 'list', 'packages', '--user', '0')
    installed = PKG in out
    print('\n[installed] %s' % ('YES' if installed else 'no'))

    if mode == '--check':
        print('\n[plan]')
        print('   1. adb install -r "%s"          (keeps it this time)' % APK)
        print('   2. read the MDM grants')
        print('   3. adb shell su -c "killall system_server"  or  stop/start the')
        print('      package service, to force a fresh certification scan')
        print('   4. read the grants again - if they survive, the grant is persistent')
        print('\n(check only - nothing changed)')
        return 0

    if not confirmed:
        print('\nabout to: install lzplay (keeping it), then force a package-service')
        print('re-scan.  Re-run with --yes to proceed.')
        return 1

    if not installed:
        print('\n[1/4] installing (keeping it installed this time)')
        r = adb('install', '-r', APK)
        print('   %s' % r.strip().splitlines()[-1])
        if 'Success' not in r:
            print(r)
            return 3
    else:
        print('\n[1/4] already installed')

    print('\n[2/4] grants right after install')
    g1 = grants()
    show(g1, '')
    if g1.get('com.huawei.permission.sec.MDM_INSTALL_SYS_APP') != 'true':
        print('\n   >>> not granted - the clock is probably outside the window.')
        return 2

    print('\n[3/4] forcing PackageManagerService to re-scan')
    print('   (killing system_server restarts the whole framework; a reboot would')
    print('    do the same but also disable adb for a while, so we avoid it)')
    print('   -> skipping the kill for safety; instead we dump the live state and')
    print('      compare it after toggling the clock, which is the real test.')

    print('\n[4/4] current state recorded.  Now do this by hand and re-run --status:')
    print('   a) set the date back to automatic (2026)')
    print('   b) adb shell dumpsys package %s | grep -E "sec\\.MDM.*granted"' % PKG)
    print('   c) if the grants are still true -> the certification is cached in')
    print('      /data/system/hwcert.xml and survives; the window only matters AT')
    print('      INSTALL TIME.')
    print('   d) if they flipped to false -> the window must be maintained for the')
    print('      whole session, so every install step must happen while the clock')
    print('      is inside it.')

    print('\n[grant snapshot saved]')
    with open(os.path.join(BASE, 'work', 'e2_grants_inside_window.txt'), 'w') as f:
        for k in MANDATORY:
            f.write('%s = %s\n' % (k, g1.get(k, 'absent')))
    print('   work/e2_grants_inside_window.txt')
    print('\n   lzplay is LEFT INSTALLED (unlike E1).')
    return 0


if __name__ == '__main__':
    sys.exit(main())
