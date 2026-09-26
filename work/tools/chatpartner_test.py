#!/usr/bin/env python3
"""
Chat Partner (com.tyq.pro) on the tablet.

Two things worth measuring, neither of which we have data for:

  1. Does it show the same "device not supported" gate as 旅游必备?
     (旅游必备 DOES show it on the tablet -> "暂时不支持该设备。")
     If Chat Partner starts normally on the tablet, its gate differs, which matters
     for anyone trying to use it as a carrier app there.

  2. Can ANY build of Chat Partner obtain Huawei MDM permissions?
     Both available builds fail LOCK 1 by construction:
        user's translated apk : signed a40da80a..., CER DeveloperKey 1b358a93...
        our repacked apk      : signed 123f0be4..., CER DeveloperKey 1b358a93...
     So the prediction is 0/7.  Measuring confirms it and captures the log line.

Usage:
    python chatpartner_test.py <serial> --check
    python chatpartner_test.py <serial> --run
"""
import os
import re
import subprocess
import sys
import time

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
BUILDS = [
    ('chatpartner.apk', 'GENUINE original (CER self-consistent)'),
    ('chat partner Chinese translated.apk', "user's translated build (re-signed)"),
    ('ChatPartner-patched.apk', 'our repacked build'),
]
PKG = 'com.tyq.pro'

CER_PERMS = [
    'com.huawei.permission.sec.MDM_INSTALL_SYS_APP',
    'com.huawei.permission.sec.MDM_APP_MANAGEMENT',
    'com.huawei.permission.sec.MDM_DEVICE_MANAGER',
    'com.huawei.permission.sec.MDM_NETWORK_MANAGER',
    'com.huawei.permission.sec.MDM_PHONE_MANAGER',
    'com.huawei.permission.sec.MDM_VPN',
    'com.huawei.systemmanager.permission.ACCESS_INTERFACE',
]

PROC_TAGS = ('HwCertificationManager', 'DK_VC', 'HC_VC', 'VP_VC', 'Sig_VC',
             'verify cert failed', 'cert is null')


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


def clock(serial):
    d = sh(serial, 'date').strip()
    m = re.search(r'(\d{4})\s*$', d)
    return (int(m.group(1)) if m else 0), d


def grants(serial, pkg=PKG):
    d = sh(serial, 'dumpsys', 'package', pkg)
    return {p: (re.search(re.escape(p) + r':\s*granted=(true|false)', d).group(1)
                if re.search(re.escape(p) + r':\s*granted=(true|false)', d) else 'absent')
            for p in CER_PERMS}


def focus(serial):
    d = sh(serial, 'dumpsys', 'window')
    m = re.search(r'mCurrentFocus=\S+\s+\S+\s+(\S+)', d)
    return m.group(1).rstrip('}') if m else '?'


def screen_texts(serial):
    import html
    sh(serial, 'uiautomator', 'dump', '/sdcard/cp.xml')
    x = sh(serial, 'shell' if False else 'cat', '/sdcard/cp.xml') \
        if False else sh(serial, 'cat', '/sdcard/cp.xml')
    out = []
    for m in re.finditer(r'<node\b([^>]*?)/?>', x):
        at = dict(re.findall(r'([\w-]+)="([^"]*)"', m.group(1)))
        t = html.unescape(at.get('text', '') or '')
        if t.strip():
            out.append(t.strip())
    return out


def main():
    serial = sys.argv[1]
    mode = sys.argv[2] if len(sys.argv) > 2 else '--check'
    y, dd = clock(serial)

    print('=' * 78)
    print('CHAT PARTNER (com.tyq.pro) TEST')
    print('device: %s   clock: %s' % (serial, dd))
    print('=' * 78)

    if mode == '--check':
        for f, lab in BUILDS:
            p = os.path.join(BASE, f)
            print('  %-44s %s' % (lab, '%.1f MB' % (os.path.getsize(p) / 1048576)
                                  if os.path.exists(p) else 'MISSING'))
        print('\n  clock year %d -> %s' % (
            y, 'inside CER window 2019-10-14..2020-10-14'
            if y in (2019, 2020) else 'OUTSIDE the window'))
        print('\n(check only)')
        return 0

    if y not in (2019, 2020):
        print('\nWARNING: clock outside the CER window - results will be confounded')

    for f, lab in BUILDS:
        apk = os.path.join(BASE, f)
        if not os.path.exists(apk):
            print('\nMISSING %s' % apk)
            continue

        print('\n' + '-' * 78)
        print('BUILD: %s   (%s)' % (lab, f))
        print('-' * 78)

        if PKG in sh(serial, 'pm', 'list', 'packages'):
            r = adb(serial, 'uninstall', PKG)
            ls = [x for x in r.strip().splitlines() if x.strip()]
            print('  uninstall: %s' % (ls[-1] if ls else '?'))
            time.sleep(1)

        sh(serial, 'logcat', '-c')
        r = adb(serial, 'install', '-r', apk)
        ls = [x for x in r.strip().splitlines() if x.strip()]
        print('  install  : %s' % (ls[-1] if ls else '?'))

        g = grants(serial)
        n = sum(1 for v in g.values() if v == 'true')
        for p in CER_PERMS:
            short = (p.replace('com.huawei.permission.sec.', '')
                      .replace('com.huawei.systemmanager.permission.', ''))
            print('     %-24s %s' % (short, g[p]))
        print('  => %d/7 granted' % n)

        log = sh(serial, 'logcat', '-d')
        hits = [l.strip() for l in log.splitlines() if any(t in l for t in PROC_TAGS)]
        print('  certificate log:')
        for l in (hits[-8:] if hits else ['     (none)']):
            print('     %s' % l[:150])

        # does it show the same gate as 旅游必备?
        print('  launching to check the device gate...')
        sh(serial, 'monkey', '-p', PKG, '-c', 'android.intent.category.LAUNCHER', '1')
        time.sleep(14)
        print('     focus : %s' % focus(serial))
        texts = screen_texts(serial)
        for t in texts[:8]:
            print('     text  : %s' % t[:70])
        if any('不支持' in t or 'not supported' in t for t in texts):
            print('     >>> shows the "device not supported" gate (same as 旅游必备)')
        else:
            print('     >>> no "device not supported" text seen')
        sh(serial, 'am', 'force-stop', PKG)
    return 0


if __name__ == '__main__':
    sys.exit(main())
