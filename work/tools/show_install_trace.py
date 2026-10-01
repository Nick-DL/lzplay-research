#!/usr/bin/env python3
"""
Dump everything about the install attempt: the wm_ activity timeline plus any
installer/app errors.  This is the fastest way to tell whether the system installer
started, and if so why it bailed.

Usage: python tools/show_install_trace.py <serial>
"""
import re
import subprocess
import sys

D = sys.argv[1]


def sh(*a, t=600):
    r = subprocess.run(['adb', '-s', D, 'shell'] + list(a), capture_output=True,
                       text=True, encoding='utf-8', errors='replace', timeout=t)
    return ((r.stdout or '') + (r.stderr or '')).strip()


print('=' * 80)
print('INSTALL TRACE   device=%s' % D)
print('=' * 80)
print('[clock] %s' % sh('date'))

print('\n[packages]')
o = sh('pm', 'list', 'packages', '--user', '0')
for p in ('com.google.android.gms', 'com.google.android.gsf',
          'com.google.android.syncadapters.contacts', 'com.android.vending',
          'com.x.idhelper', 'com.oversea.gmapjar'):
    print('   %-46s %s' % (p, 'YES' if p in o else '-'))

log = sh('logcat', '-d', '-b', 'all', '-t', '40000')

print('\n[wm activity timeline - installers and the app]')
seen = set()
for l in log.splitlines():
    if not any(k in l for k in ('wm_create_activity', 'wm_finish_activity',
                                'wm_destroy_activity', 'wm_resume_activity',
                                'wm_set_resumed_activity', 'wm_pause_activity')):
        continue
    if not any(k in l for k in ('packageinstaller', 'qiyecomm', 'InstallStart',
                                'InstallStaging', 'PackageInstallerActivity')):
        continue
    s = l.strip()
    # trim to something readable
    m = re.search(r'\d\d:\d\d:\d\d\.\d+.*?(wm_\w+): \[([^\]]*)\]', s)
    key = m.group(0) if m else s
    if key in seen:
        continue
    seen.add(key)
    ts = s[:18]
    print('   %s %s' % (ts, key[-150:]))

print('\n[installer / package manager errors]')
n = 0
for l in log.splitlines():
    if not any(k in l for k in ('INSTALL_', 'installPackage', 'PackageInstaller',
                                'InstallStart', 'InstallStaging', 'PackageManager: ')):
        continue
    if any(k in l for k in ('checkQueryApps', 'getInstalledPackages')):
        continue
    print('   %s' % l.strip()[:175])
    n += 1
    if n > 40:
        print('   ...')
        break
if n == 0:
    print('   (none)')

print('\n[app-side exceptions / errors]')
n = 0
for l in log.splitlines():
    if 'qiyecomm' not in l and 'plus.pro' not in l:
        continue
    if not any(k in l for k in ('E ', 'W ', 'Exception', 'error', 'Error', 'fail', 'Fail')):
        continue
    if any(k in l for k in ('NetworkQoeProxy',)):
        continue
    print('   %s' % l.strip()[:175])
    n += 1
    if n > 40:
        print('   ...')
        break
if n == 0:
    print('   (none)')

print('\n[crash buffer]')
c = sh('logcat', '-d', '-b', 'crash')
print('   contains qiyecomm: %s' % ('YES' if 'qiyecomm' in c else 'no'))
if 'qiyecomm' in c:
    i = c.find('FATAL')
    for l in c[max(0, i - 60):i + 1200].splitlines()[:16]:
        print('   %s' % l.strip()[:165])
