#!/usr/bin/env python3
"""
Compare the Huawei MDM permission situation for com.qiyecomm on the tablet vs Mate50.

Key question: the travel app's CER lists MDM_INSTALL_SYS_APP, and the tablet granted
six of the seven declared permissions - but not that one.  Why?

Reads dumpsys output already captured to work/.
"""
import io
import os
import re

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
FILES = {
    'tablet  (clock 2019, CER valid)': os.path.join(BASE, 'work', 'tab_q2.txt'),
    'Mate50  (clock 2026, CER expired)': os.path.join(BASE, 'work', 'm50_qiye.txt'),
}

CER_PERMS = [
    'com.huawei.permission.sec.MDM_INSTALL_SYS_APP',
    'com.huawei.permission.sec.MDM_APP_MANAGEMENT',
    'com.huawei.permission.sec.MDM_DEVICE_MANAGER',
    'com.huawei.permission.sec.MDM_NETWORK_MANAGER',
    'com.huawei.permission.sec.MDM_PHONE_MANAGER',
    'com.huawei.permission.sec.MDM_VPN',
    'com.huawei.systemmanager.permission.ACCESS_INTERFACE',
]


def analyse(path, label):
    if not os.path.exists(path):
        print('  %s: file missing (%s)' % (label, path))
        return None

    t = io.open(path, encoding='utf-8', errors='replace').read()

    # requested permissions block
    req = set()
    m = re.search(r'requested permissions:(.*?)(?:\n\s*\n|\Z)', t, re.S)
    if m:
        for ln in m.group(1).splitlines():
            ln = ln.strip()
            if ln.startswith('com.huawei') or ln.startswith('com.google'):
                req.add(ln)

    # install permissions block (the ones actually granted)
    inst = set()
    m2 = re.search(r'install permissions:(.*?)(?:\n\s*\n|\Z)', t, re.S)
    if m2:
        for ln in m2.group(1).splitlines():
            ln = ln.strip()
            if ln.startswith('com.huawei'):
                inst.add(ln.split(':')[0].strip())

    print('\n=== %s ===' % label)
    print('  %-56s %-10s %s' % ('CER-declared permission', 'requested', 'granted'))
    print('  ' + '-' * 84)
    for p in CER_PERMS:
        short = p.replace('com.huawei.permission.sec.', '').replace(
            'com.huawei.systemmanager.permission.', '')
        r = 'yes' if p in req else '-'
        g = 'YES' if p in inst else 'no'
        mark = ''
        if p.endswith('MDM_INSTALL_SYS_APP'):
            mark = '   <<< the odd one out'
        print('  %-56s %-10s %s%s' % (short, r, g, mark))

    # also show every granted huawei permission
    print('\n  all granted huawei permissions:')
    for p in sorted(inst):
        print('     %s' % p)
    return req, inst


def main():
    results = {}
    for label, path in FILES.items():
        results[label] = analyse(path, label)

    print('\n' + '=' * 88)
    print('INTERPRETATION')
    print('=' * 88)
    print("""  If MDM_INSTALL_SYS_APP is requested on both devices but granted ONLY on the
  one whose clock is inside the CER window, then the CER route works on both and
  the difference is purely the date.

  If it is NOT granted on either, then that one permission has an extra gate beyond
  the CER - e.g. it may only be conferred on apps installed as system apps, or it
  may need Certificate:platform rather than a developer certificate.""")


if __name__ == '__main__':
    main()
