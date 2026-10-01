#!/usr/bin/env python3
"""
Harvest everything relevant to why the travel app's install step failed.

Wide net: the app's own logs, PackageInstaller / PackageManager decisions, MDM
transaction errors, and any exception from the install path.

Usage: python tools/diagnose_install_failure.py <serial>
"""
import re
import subprocess
import sys

D = sys.argv[1]


def sh(*a, t=600):
    r = subprocess.run(['adb', '-s', D, 'shell'] + list(a), capture_output=True,
                       text=True, encoding='utf-8', errors='replace', timeout=t)
    return ((r.stdout or '') + (r.stderr or '')).strip()


KEYS = [
    'qiyecomm', 'plus.pro',
    'PackageInstaller', 'PackageManager', 'InstallPackage',
    'installPackage', 'DevicePackageManager', 'TransactionProcessor',
    'HwDevicePolicy', 'INSTALL_FAILED', 'SecurityException',
    'E ActivityThread', 'E AndroidRuntime',
    'FileProvider', 'FileUriExposed', 'ActivityNotFound',
    'com.android.packageinstaller', 'install_', 'InstallResult',
]

print('=' * 78)
print('DIAGNOSE install failure   device=%s' % D)
print('=' * 78)

print('\n[clock]      %s' % sh('date'))
print('[MDM]')
d = sh('dumpsys', 'package', 'com.qiyecomm')
for m in re.finditer(r'(com\.huawei\S*MDM\w*):\s*granted=(\w+)', d):
    print('   %-52s %s' % (m.group(1), m.group(2)))

print('\n[device admin]')
dp = sh('dumpsys', 'device_policy')
admins = sorted(set(re.findall(r'([a-z0-9_.]+/[A-Za-z0-9_.$]+):', dp)))
for a in admins:
    print('   %s' % a)
if not admins:
    print('   (none)')

print('\n[packages now]')
o = sh('pm', 'list', 'packages', '--user', '0')
for p in ('com.google.android.gms', 'com.google.android.gsf',
          'com.google.android.syncadapters.contacts', 'com.android.vending'):
    print('   %-46s %s' % (p, 'YES' if p in o else '-'))

print('\n[crash buffer]')
crash = sh('logcat', '-d', '-b', 'crash')
print('   contains qiyecomm: %s' % ('YES' if 'qiyecomm' in crash else 'no'))
if 'qiyecomm' in crash:
    i = crash.find('FATAL')
    for l in crash[max(0, i - 80):i + 1400].splitlines()[:18]:
        print('   %s' % l.strip()[:160])

print('\n[all buffers, filtered]')
log = sh('logcat', '-d', '-b', 'all', '-t', '6000')
seen = set()
count = 0
for l in log.splitlines():
    if any(k in l for k in KEYS):
        s = l.strip()[:180]
        if s in seen:
            continue
        seen.add(s)
        print('   %s' % s)
        count += 1
        if count > 90:
            print('   ... (truncated)')
            break
if count == 0:
    print('   (nothing matched)')
