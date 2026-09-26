#!/usr/bin/env python3
"""
Clean up the experiment artefacts left on the tablet.

Removes the apps installed purely for the MDM experiments, restores automatic
timekeeping, and reports the final state.

Usage:
    python cleanup_tablet.py <serial> [--dry]
"""
import re
import subprocess
import sys
import time

# apps installed only for experimentation
REMOVE = [
    'com.tyq.pro',              # Chat Partner (all three builds tested)
    'com.qiyecomm',             # 旅游必备 (genuine + repacked A/B)
    'com.lzplay.gateprobe',     # LZGateProbe instrumentation
    'com.lzplay.revive',        # LZRevive GSF-provider probe
]

# the Google stack we installed while experimenting
GOOGLE = [
    'com.google.android.gms',
    'com.google.android.gsf',
    'com.google.android.gsf.login',
    'com.android.vending',
    'com.google.android.syncadapters.contacts',
    'com.google.android.gms.policy_sidecar_aps',
    'com.oversea.gmapjar',
    'com.x.idhelper',
]


def adb(serial, *a, timeout=900):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(a), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def sh(serial, *a, **k):
    return adb(serial, 'shell', *a, **k)


def present(serial, pkg):
    return 'package:' in sh(serial, 'pm', 'path', pkg)


def main():
    serial = sys.argv[1]
    dry = '--dry' in sys.argv

    print('=' * 74)
    print('CLEANUP  device=%s' % serial)
    print('=' * 74)

    # --- state before ---
    print('\n[before]')
    print('  date      : %s' % sh(serial, 'date').strip())
    print('  auto_time : %s' % sh(serial, 'settings', 'get', 'global',
                                     'auto_time').strip())
    inst = [p for p in REMOVE if present(serial, p)]
    print('  experiment apps installed: %s' % (', '.join(inst) if inst else 'none'))

    if dry:
        print('\n[dry] would remove: %s' % ', '.join(inst))
        print('[dry] would set auto_time=1')
        return 0

    # --- 1. remove experiment apps ---
    print('\n[1] removing experiment apps')
    for p in REMOVE:
        if not present(serial, p):
            print('   %-30s (absent)' % p)
            continue
        r = adb(serial, 'uninstall', p)
        ls = [x for x in r.strip().splitlines() if x.strip()]
        print('   %-30s %s' % (p, ls[-1] if ls else '?'))
        time.sleep(1)

    # --- 2. optionally the Google stack ---
    print('\n[2] Google stack still present (left installed unless you ask):')
    for p in GOOGLE:
        if present(serial, p):
            print('   %-46s present' % p)

    # --- 3. restore automatic time ---
    print('\n[3] restoring automatic timekeeping')
    sh(serial, 'settings', 'put', 'global', 'auto_time', '1')
    time.sleep(5)
    print('   auto_time = %s' % sh(serial, 'settings', 'get', 'global',
                                   'auto_time').strip())
    print('   date      = %s' % sh(serial, 'date').strip())

    # --- 4. verify ---
    print('\n[4] verification')
    left = [p for p in REMOVE if present(serial, p)]
    print('   experiment apps remaining: %s' % (', '.join(left) if left else 'none'))
    print('   clock year: %s' % re.sub(r'.*?(\d{4})\s*$', r'\1',
                                       sh(serial, 'date').strip()))
    return 0


if __name__ == '__main__':
    sys.exit(main())
