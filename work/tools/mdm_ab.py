#!/usr/bin/env python3
"""
Fresh, side-by-side comparison of the Huawei MDM grants for com.qiyecomm (旅游必备)
on both devices.

Both devices carry the SAME unmodified APK with the SAME CER, whose Permissions
list is:

    com.huawei.systemmanager.permission.ACCESS_INTERFACE
    com.huawei.permission.sec.MDM_NETWORK_MANAGER
    com.huawei.permission.sec.MDM_PHONE_MANAGER
    com.huawei.permission.sec.MDM_VPN
    com.huawei.permission.sec.MDM_DEVICE_MANAGER
    com.huawei.permission.sec.MDM_APP_MANAGEMENT
    com.huawei.permission.sec.MDM_INSTALL_SYS_APP

The only controlled difference is the clock (tablet 2019 = inside ValidPeriod,
Mate50 2026 = outside).

Usage:
    python mdm_ab.py <serialA> <labelA> <serialB> <labelB>
"""
import re
import subprocess
import sys

CER_PERMS = [
    'com.huawei.permission.sec.MDM_INSTALL_SYS_APP',
    'com.huawei.permission.sec.MDM_APP_MANAGEMENT',
    'com.huawei.permission.sec.MDM_DEVICE_MANAGER',
    'com.huawei.permission.sec.MDM_NETWORK_MANAGER',
    'com.huawei.permission.sec.MDM_PHONE_MANAGER',
    'com.huawei.permission.sec.MDM_VPN',
    'com.huawei.systemmanager.permission.ACCESS_INTERFACE',
]


def adb(serial, *args, timeout=600):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(args), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def probe(serial, pkg='com.qiyecomm'):
    d = adb(serial, 'shell', 'dumpsys', 'package', pkg)
    ver = re.search(r'versionName=(\S+)', d)
    clock = adb(serial, 'shell', 'date').strip()

    out = {'clock': clock, 'version': ver.group(1) if ver else '?', 'perms': {}}

    # every "perm: granted=true/false" line
    for p in CER_PERMS:
        m = re.search(re.escape(p) + r':\s*granted=(true|false)', d)
        if m:
            out['perms'][p] = m.group(1)
        else:
            # requested but no grant line => denied/not applicable
            out['perms'][p] = 'ABSENT'

    # also grab the raw install-permission block for context
    m = re.search(r'install permissions:(.*?)(?:\n\s*\n|\Z)', d, re.S)
    out['install_block'] = m.group(1).strip() if m else ''
    m = re.search(r'requested permissions:(.*?)(?:\n\s*\n|\Z)', d, re.S)
    out['request_block'] = m.group(1).strip() if m else ''
    return out


def show(label, serial):
    r = probe(serial)
    print('\n=== %s  (%s) ===' % (label, serial))
    print('  clock   : %s' % r['clock'])
    print('  version : %s' % r['version'])
    print()
    for p in CER_PERMS:
        short = (p.replace('com.huawei.permission.sec.', '')
                  .replace('com.huawei.systemmanager.permission.', ''))
        v = r['perms'][p]
        mark = '   <<< INSTALL_SYS_APP' if p.endswith('INSTALL_SYS_APP') else ''
        flag = {'true': 'GRANTED', 'false': 'denied ', 'ABSENT': 'absent '}[v]
        print('  %-24s %s%s' % (short, flag, mark))

    print('\n  raw "install permissions" block mentioning huawei/google:')
    found = False
    for ln in r['install_block'].splitlines():
        s = ln.strip()
        if s.startswith(('com.huawei', 'com.google')):
            print('     %s' % s)
            found = True
    if not found:
        print('     (none)')

    print('\n  raw "requested permissions" block mentioning huawei:')
    found = False
    for ln in r['request_block'].splitlines():
        s = ln.strip()
        if s.startswith('com.huawei'):
            print('     %s' % s)
            found = True
    if not found:
        print('     (none - the app does not declare any huawei permission!)')
    return r


def main():
    if len(sys.argv) >= 5:
        a, la, b, lb = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]
    else:
        a, la = '192.168.1.109:5556', 'TABLET (clock 2019, CER valid)'
        b, lb = 'BLT0222902012232', 'MATE50 (clock 2026, CER expired)'

    print('=' * 80)
    print('A/B: same APK, same CER, different clock')
    print('=' * 80)
    ra = show(la, a)
    rb = show(lb, b)

    print('\n' + '=' * 80)
    print('VERDICT')
    print('=' * 80)
    diff = []
    for p in CER_PERMS:
        va, vb = ra['perms'][p], rb['perms'][p]
        if va != vb:
            diff.append((p, va, vb))
    if diff:
        print('  permissions that differ between the two devices:')
        for p, va, vb in diff:
            print('     %-50s tablet=%-7s mate50=%s' % (
                p.replace('com.huawei.permission.sec.', ''), va, vb))
    else:
        print('  no difference - both devices grant exactly the same set')
        print('  => the clock/CER is NOT what gates these permissions on these devices')


if __name__ == '__main__':
    main()
