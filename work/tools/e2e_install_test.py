#!/usr/bin/env python3
"""
End-to-end test: can the patched travel app actually install GMS on the Mate50?

This is the real deliverable check.  Setup that makes it interesting:

  * the clock is inside the CER ValidPeriod (2019), so the vendor apps are
    AUTHORISED - the original app now holds MDM_INSTALL_SYS_APP etc. (verified)
  * but the ORIGINAL app cannot run: it OOMs on startup computing an MD5 over an
    86 MB file (verified twice, unaffected by the clock)
  * so the PATCHED build is the only one that reaches the install flow

Question: does the patched build actually get GMS installed?

The patched build routes installs through the standard package installer (its
DevicePackageManager call was replaced), which means system dialogs appear and have
to be confirmed.  This script drives that with uiautomator taps.

Usage:
    python tools/e2e_install_test.py <serial> [--minutes N]
"""
import os
import re
import subprocess
import sys
import time

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
PKG = 'com.qiyecomm'
TARGETS = [
    'com.google.android.gms',
    'com.google.android.gsf',
    'com.google.android.syncadapters.contacts',
    'com.oversea.gmapjar',
    'com.android.vending',
    'com.x.idhelper',
]

# button labels that mean "let it install"
ALLOW = ['继续', '安装', '确定', '允许', '下一步', '仍要安装', '继续安装', 'OK',
         'Continue', 'Install', 'Allow', 'Next']


def adb(serial, *a, timeout=1800):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(a), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def sh(serial, *a, **k):
    return adb(serial, 'shell', *a, **k)


def focus(serial):
    d = sh(serial, 'dumpsys', 'window')
    m = re.search(r'mCurrentFocus=\S+\s+\S+\s+(\S+)', d)
    return m.group(1).rstrip('}') if m else '?'


def screen_nodes(serial):
    """Return list of (text, x, y) for visible tappable text."""
    sh(serial, 'uiautomator', 'dump', '/sdcard/_e2e.xml')
    x = sh(serial, 'cat', '/sdcard/_e2e.xml')
    out = []
    for m in re.finditer(r'<node\b([^>]*?)/?>', x):
        at = dict(re.findall(r'([\w-]+)="([^"]*)"', m.group(1)))
        t = (at.get('text') or '').strip()
        b = at.get('bounds') or ''
        if not t or not b:
            continue
        mm = re.match(r'\[(\d+),(\d+)\]\[(\d+),(\d+)\]', b)
        if not mm:
            continue
        x0, y0, x1, y1 = map(int, mm.groups())
        out.append((t, (x0 + x1) // 2, (y0 + y1) // 2, at.get('clickable')))
    return out


def installed(serial):
    out = sh(serial, 'pm', 'list', 'packages', '--user', '0')
    return {p for p in TARGETS if p in out}


def main():
    serial = sys.argv[1]
    minutes = 6
    if '--minutes' in sys.argv:
        minutes = int(sys.argv[sys.argv.index('--minutes') + 1])

    print('=' * 78)
    print('E2E: can the patched travel app install GMS?   device=%s' % serial)
    print('=' * 78)

    print('\n[clock]  %s' % sh(serial, 'date').strip())
    print('[auto ]  %s' % sh(serial, 'settings', 'get', 'global', 'auto_time').strip())

    base = installed(serial)
    print('\n[before] already installed: %s' % (', '.join(sorted(base)) or 'none'))

    # make sure the patched build is what is on the device
    r = sh(serial, 'dumpsys', 'package', PKG)
    v = re.search(r'versionName=(\S+)', r)
    print('[pkg]    %s  versionName=%s' % (PKG, v.group(1) if v else '?'))

    print('\n[launch]')
    sh(serial, 'am', 'force-stop', PKG)
    sh(serial, 'logcat', '-c')
    sh(serial, 'am', 'start', '-n', '%s/com.x.plus.pro.SplashActivity' % PKG)

    deadline = time.time() + minutes * 60
    taps = 0
    last_focus = ''
    while time.time() < deadline:
        time.sleep(3)
        f = focus(serial)
        if f != last_focus:
            print('   focus -> %s' % f[:80])
            last_focus = f
        # tap any "allow/install" button we can see
        try:
            nodes = screen_nodes(serial)
        except Exception:
            nodes = []
        for t, x, y, cl in nodes:
            bare = t.strip()
            if bare in ALLOW or any(bare.startswith(a) for a in ALLOW):
                print('   TAP %r at (%d,%d)' % (bare[:20], x, y))
                sh(serial, 'input', 'tap', str(x), str(y))
                taps += 1
                time.sleep(2)
                break

        now = installed(serial)
        if now != base:
            gained = now - base
            print('   + installed: %s' % ', '.join(sorted(gained)))
            base = now
        if len(base) == len(TARGETS):
            print('\n[OK] all targets installed')
            break

    print('\n' + '=' * 78)
    after = installed(serial)
    print('RESULT   taps=%d' % taps)
    print('  installed now : %s' % (', '.join(sorted(after)) or 'none'))
    missing = [t for t in TARGETS if t not in after]
    print('  missing       : %s' % (', '.join(missing) or 'none'))
    if not missing:
        print('  ==> SUCCESS')
    else:
        print('  ==> incomplete')
    print('=' * 78)
    return 0


if __name__ == '__main__':
    sys.exit(main())
