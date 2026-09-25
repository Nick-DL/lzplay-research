#!/usr/bin/env python3
"""
Locate every Huawei-MDM call in the travel app and show whether it is wrapped in
try/catch.  That distinction is exactly why the quick-uninstall path shows a friendly
"please uninstall manually" dialog while the InitializeManager path crashes with
SecurityException.
"""
import io, os, re, glob

ROOT = 'work/travel_decoded/smali/com/x/plus/pro'
CALLS = [
    'uninstallPackage', 'installPackage', 'getSysAppList', 'setSysAppList',
    'getPersistentApp', 'addPersistentApp', 'addInstallPackageWhiteList',
    'enableInstallPackage', 'installBundle', 'setSilentActiveAdmin',
    'setForcedActiveDeviceAdmin', 'setDeviceOwnerApp',
]

print('%-46s %-8s %-26s %s' % ('file', 'line', 'huawei call', 'guarded by try?'))
print('-' * 110)

for f in sorted(glob.glob(os.path.join(ROOT, '**', '*.smali'), recursive=True)):
    lines = io.open(f, encoding='utf-8', errors='replace').read().splitlines()
    for i, ln in enumerate(lines):
        if 'Lcom/huawei/android/app/admin/' not in ln and 'Lhuawei/android/app/admin/' not in ln:
            continue
        m = re.search(r'->(\w+)\(', ln)
        if not m:
            continue
        name = m.group(1)
        if name not in CALLS:
            continue
        # is this call inside a :try_start .. :try_end region?
        guarded = False
        for j in range(i - 1, max(-1, i - 40), -1):
            s = lines[j].strip()
            if s.startswith(':try_start'):
                guarded = True
                break
            if s.startswith(':try_end'):
                break
        print('%-46s %-8d %-26s %s' % (
            os.path.relpath(f, ROOT), i + 1, name, 'YES' if guarded else 'NO  <-- crash risk'))
