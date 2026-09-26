#!/usr/bin/env python3
"""
Experiment: where does the SYSTEM / PRIVILEGED flag on com.google.android.gms
actually come from?

Mate50 facts (measured):
    com.google.android.gms      versionName=26.34.36
                                flags=[ SYSTEM HAS_CODE ... ]
                                privateFlags=[ ... PRIVILEGED ... ]
                                installerPackageName=com.android.vending     <-- Play Store
                                firstInstallTime=09:30:23
                                lastUpdateTime  =09:39:42
    com.android.vending         versionName=53.2.23
                                flags=[ SYSTEM HAS_CODE ... ]
                                privateFlags=[ ... PRIVILEGED ... ]
                                hwflags=[ PARSE_IS_REMOVABLE_PREINSTALLED_APK ]

So on the Mate50, GMS was updated BY PLAY STORE (not by lzplay), and the
SYSTEM+PRIVILEGED pair is present on both GMS and vending.
hwflags PARSE_IS_REMOVABLE_PREINSTALLED_APK marks them as "removable preinstalled".

The tablet is the clean A/B: lzplay has never run there.  Two hypotheses:

  H-A  the flags come from lzplay's MDM installPackage path
       -> on the tablet they will never appear
  H-B  the flags come from Play Store updating the packages itself
       (i.e. from Huawei PMS treating a Play-Store-installed update as a
        removable-preinstalled app)
       -> on the tablet they WILL appear after Play Store auto-updates

This script waits for and reports the tablet's flags.

Usage:
    python watch_system_flag.py <serial> [--wait-minutes N]
"""
import re
import subprocess
import sys
import time

PKGS = ('com.google.android.gms', 'com.android.vending', 'com.google.android.gsf')


def adb(serial, *args, timeout=300):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(args), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def snapshot(serial):
    out = {}
    for p in PKGS:
        d = adb(serial, 'shell', 'dumpsys', 'package', p)
        rec = {}
        for key, pat in (
            ('version', r'versionName=(\S+)'),
            ('codePath', r'codePath=(\S+)'),
            ('flags', r'^\s+flags=\[([^\]]*)\]'),
            ('hwflags', r'hwflags=\[([^\]]*)\]'),
            ('private', r'privateFlags=\[([^\]]*)\]'),
            ('installer', r'installerPackageName=(\S+)'),
            ('first', r'firstInstallTime=([^\n]*)'),
            ('last', r'lastUpdateTime=([^\n]*)'),
        ):
            m = re.search(pat, d, re.M)
            rec[key] = m.group(1).strip() if m else '-'
        out[p] = rec
    return out


def show(serial, snap, label):
    print('--- %s ---' % label)
    for p, r in snap.items():
        flags = r['flags']
        sysmark = '  <<< SYSTEM' if 'SYSTEM' in flags else ''
        priv = '  <<< PRIVILEGED' if 'PRIVILEGED' in r['private'] else ''
        print('  %s' % p)
        print('     version   : %s' % r['version'])
        print('     flags     : [%s]%s' % (flags, sysmark))
        print('     private   : %s' % ('PRIVILEGED present' + priv
                                       if 'PRIVILEGED' in r['private']
                                       else '(no PRIVILEGED)'))
        print('     hwflags   : [%s]' % r['hwflags'])
        print('     installer : %s' % r['installer'])
        print('     installed : %s   updated: %s' % (r['first'], r['last']))
    print()


def main():
    serial = sys.argv[1]
    wait = 0
    if '--wait-minutes' in sys.argv:
        wait = int(sys.argv[sys.argv.index('--wait-minutes') + 1])

    print('=' * 74)
    print('SYSTEM-FLAG WATCH  device=%s' % serial)
    print('=' * 74)

    snap = snapshot(serial)
    show(serial, snap, 'current state')

    if wait:
        print('waiting %d min, sampling every 60s for a flag change...' % wait)
        base = {p: snap[p]['flags'] for p in snap}
        for i in range(wait):
            time.sleep(60)
            snap = snapshot(serial)
            changed = [p for p in snap if snap[p]['flags'] != base[p]]
            if changed:
                print('\n>>> CHANGE DETECTED after %d min' % (i + 1))
                show(serial, snap, 'after change')
                return 0
            print('   +%d min: no change' % (i + 1))
        print('\nno flag change within %d minutes' % wait)
        show(serial, snap, 'final')
    return 0


if __name__ == '__main__':
    sys.exit(main())
