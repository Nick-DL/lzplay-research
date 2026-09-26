#!/usr/bin/env python3
"""
Compare the three Huawei devices to answer: is lzplay's "unsupported device" gate
a hard device/version whitelist, or just a consequence of the Huawei MDM API
refusing to answer?

The decisive probe is the FIRST thing lzplay does:

    com.lzplay.helper / 内层 DeviceManage.java
        new com.huawei.android.app.admin.DevicePackageManager()
            .getSysAppList(ComponentName(DeviceManageBC), [packageName])
        catch NoSuchMethodError / NoExtAPIException  -> unsupported
        catch anything else                          -> supported

If the framework class is present and getSysAppList() returns (even an empty list),
the gate says SUPPORTED.  If it is absent, or throws NoSuchMethodError /
NoExtAPIException, the gate says UNSUPPORTED and the app shows
"Your current device is not supported at this time."

We cannot run that from adb directly, but LZRevive already contains exactly this
probe (GateProbe.java).  Installing LZRevive on each device and reading its report
gives us the answer, plus the MDM permission baseline.

This script only INSPECTS.  It does not install anything unless --install-probe is
passed.

Usage:
    python device_probe.py                 # inspect every connected device
    python device_probe.py --install-probe # also install LZRevive and read its report
"""
import os
import re
import subprocess
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
LZREVIVE = os.path.join(BASE, 'LZRevive.apk')

PROPS = [
    'ro.product.model',
    'ro.build.display.id',
    'ro.build.version.release',
    'ro.build.version.sdk',
    'ro.build.version.emui',
    'hw_sc.build.platform.version',
    'ro.build.version.security_patch',
    'ro.product.cpu.abilist',
]

INTERESTING = [
    'com.lzplay.helper', 'com.lzplay.revive', 'com.lzplay.probe',
    'com.google.android.gsf', 'com.google.android.gms', 'com.android.vending',
    'com.qiyecomm', 'com.tyq.pro',
]

MDM_PERMS = [
    'com.huawei.permission.sec.MDM',
    'com.huawei.permission.sec.MDM_APP_MANAGEMENT',
    'com.huawei.permission.sec.MDM_INSTALL_SYS_APP',
    'com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP',
]


def devices():
    r = subprocess.run(['adb', 'devices'], capture_output=True, text=True,
                       encoding='utf-8', errors='replace')
    out = []
    for line in r.stdout.splitlines()[1:]:
        line = line.strip()
        if not line or '\t' not in line:
            continue
        serial, state = line.split('\t', 1)
        if state.strip() == 'device':
            out.append(serial.strip())
    return out


def adm(serial, *args, timeout=300):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(args), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def sh(serial, *args, timeout=300):
    return adm(serial, 'shell', *args, timeout=timeout)


def probe(serial, install_probe):
    print('=' * 78)
    print('DEVICE %s' % serial)
    print('=' * 78)

    for p in PROPS:
        v = sh(serial, 'getprop %s' % p).strip()
        print('  %-36s %s' % (p, v))

    # --- users (private space can hide packages) ---
    u = sh(serial, 'pm list users')
    print('\n  [users]')
    for line in u.splitlines():
        if 'UserInfo' in line:
            print('     %s' % line.strip())

    # --- which of our packages are present ---
    print('\n  [packages of interest]')
    for pkg in INTERESTING:
        got = sh(serial, 'pm list packages --user 0 | grep -c %s' % pkg).strip()
        ver = ''
        if got == '1':
            v = sh(serial, 'dumpsys package %s | grep -m1 versionName' % pkg)
            ver = v.strip().split('=', 1)[-1][:48] if '=' in v else ''
        print('     %-34s %s  %s' % (pkg, 'YES' if got == '1' else ' - ', ver))

    # --- MDM permission state for the packages that hold CERs ---
    print('\n  [MDM permissions]')
    for pkg in ('com.lzplay.helper', 'com.qiyecomm', 'com.tyq.pro'):
        if sh(serial, 'pm list packages --user 0 | grep -c %s' % pkg).strip() != '1':
            continue
        d = sh(serial, 'dumpsys package %s' % pkg)
        print('     %s:' % pkg)
        for perm in MDM_PERMS:
            m = re.search(re.escape(perm) + r':\s*granted=(true|false)', d)
            if m:
                star = '   <<<' if (m.group(1) == 'true' and 'INSTALL_SYS_APP' in perm) else ''
                print('        %-50s %s%s' % (perm, m.group(1), star))

    # --- device-wide count of the privileged grant ---
    allp = sh(serial, 'dumpsys package', timeout=600)
    n = len(re.findall(r'MDM_INSTALL_SYS_APP:\s*granted=true', allp))
    print('\n  [device-wide] packages holding MDM_INSTALL_SYS_APP = %d' % n)
    tot = len(re.findall(r'^\s*Package \[', allp, re.M))
    print('  [device-wide] total packages scanned = %d' % tot)

    # --- is the Huawei admin API even present? ---
    print('\n  [Huawei MDM API surface]')
    for cls in ('com.huawei.android.app.admin.DevicePackageManager',
                'com.huawei.android.app.admin.DeviceControlManager',
                'com.huawei.android.util.NoExtAPIException'):
        # a class is reachable if its jar is on the boot classpath; approximate by
        # asking whether any framework jar on the device mentions it
        r = sh(serial, 'ls /system/framework/ | grep -i -E "hwext|hwServices|hwframework"')
        break
    for line in r.splitlines():
        if line.strip():
            print('     /system/framework/%s' % line.strip())

    print('\n  [clock]  %s' % sh(serial, 'date').strip())

    if install_probe:
        print('\n  [installing LZRevive probe]')
        out = adm(serial, 'install', '-r', LZREVIVE, timeout=600)
        print('     %s' % out.strip().splitlines()[-1])
        if 'Success' in out:
            sh(serial, 'am', 'force-stop', 'com.lzplay.revive')
            sh(serial, 'am', 'start', '-n', 'com.lzplay.revive/.MainActivity')
            print('     launched; waiting 15s for the report...')
            import time
            time.sleep(15)
            rep = sh(serial, 'cat /sdcard/Android/data/com.lzplay.revive/files/lzrevive.txt')
            for key in ('DEVICE PACKAGE MANAGER PROBE', 'getSysAppList', 'GATE'):
                idx = rep.find(key)
                if idx != -1:
                    print('     --- %s ---' % key)
                    for line in rep[idx:idx + 900].splitlines()[:22]:
                        print('       %s' % line)
                    break
            with open(os.path.join(BASE, 'work',
                                   'lzrevive-%s.txt' % serial.replace(':', '_').replace('.', '_')),
                      'w', encoding='utf-8') as f:
                f.write(rep)
            print('     full report saved under work/')
    print()


def main():
    install_probe = '--install-probe' in sys.argv
    ds = devices()
    if not ds:
        print('no devices connected')
        return 1
    print('connected: %s\n' % ', '.join(ds))
    for s in ds:
        probe(s, install_probe)
    print('=' * 78)
    print('INTERPRETATION')
    print('  If the MatePad shows DevicePackageManager present and getSysAppList')
    print('  returning a list, then lzplay\'s "unsupported" verdict there is about')
    print('  PERMISSIONS, not about the model - i.e. it is a fail-open gate that the')
    print('  device is failing for another reason.')
    print('=' * 78)
    return 0


if __name__ == '__main__':
    sys.exit(main())
