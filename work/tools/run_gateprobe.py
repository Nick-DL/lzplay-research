#!/usr/bin/env python3
"""
Install LZGateProbe on every connected device, run it, and pull the gate report.

LZGateProbe calls exactly the API lzplay's device gate uses:

    com.huawei.android.app.admin.DevicePackageManager
        .getSysAppList(ComponentName, List<String>)

and records which classloader the class came from, whether the method exists, what the
live call returns, and which Throwable class it throws.  From that we can say
definitively whether a device fails lzplay's gate because

    (a) the Huawei class/method is genuinely missing  -> lzplay shows "not supported"
    (b) it throws a permission error                  -> lzplay treats it as SUPPORTED
    (c) it returns normally                           -> SUPPORTED

Usage:
    python run_gateprobe.py [serial ...]
"""
import os
import subprocess
import sys
import time

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APK = os.path.join(BASE, 'work', 'LZGateProbe.apk')
OUTDIR = os.path.join(BASE, 'work', 'gateprobe_out')


def adm(serial, *args, timeout=600):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(args), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def devices():
    r = subprocess.run(['adb', 'devices'], capture_output=True, text=True,
                       encoding='utf-8', errors='replace')
    out = []
    for line in r.stdout.splitlines()[1:]:
        line = line.strip()
        if line and '\t' in line:
            s, st = line.split('\t', 1)
            if st.strip() == 'device':
                out.append(s.strip())
    return out


def main():
    os.makedirs(OUTDIR, exist_ok=True)
    targets = sys.argv[1:] or devices()
    if not targets:
        print('no devices')
        return 1

    for s in targets:
        print('=' * 76)
        print('DEVICE %s' % s)
        print('=' * 76)

        model = adm(s, 'shell', 'getprop ro.product.model').strip()
        print('  model: %s' % model)

        r = adm(s, 'install', '-r', '-g', APK)
        print('  install: %s' % r.strip().splitlines()[-1])
        if 'Success' not in r:
            print(r)
            continue

        adm(s, 'shell', 'am', 'force-stop', 'com.lzplay.gateprobe')
        adm(s, 'shell', 'rm', '-f', '/sdcard/lzgate.txt')
        r = adm(s, 'shell', 'am', 'start', '-n',
                'com.lzplay.gateprobe/.MainActivity')
        print('  start: %s' % r.strip().splitlines()[0][:80])
        time.sleep(9)

        txt = adm(s, 'shell', 'cat', '/sdcard/lzgate.txt')
        if 'LZPLAY GATE PROBE' not in txt:
            print('  !! no report; trying app-private path')
            txt = adm(s, 'shell', 'run-as', 'com.lzplay.gateprobe',
                      'cat', 'files/lzgate.txt')
        if 'LZPLAY GATE PROBE' not in txt:
            print('  !! still no report. logcat:')
            log = adm(s, 'shell', 'logcat', '-d', '-s', 'LZGate:I', '*:S')
            print(log[:1500])
            continue

        fn = os.path.join(OUTDIR, 'lzgate-%s.txt' % model.replace(' ', '_'))
        with open(fn, 'w', encoding='utf-8') as f:
            f.write(txt)
        print('  ---- report (%s) ----' % fn)
        for line in txt.splitlines():
            print('    %s' % line)
        print()


if __name__ == '__main__':
    sys.exit(main())
