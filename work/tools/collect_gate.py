#!/usr/bin/env python3
"""
Collect LZGateProbe reports from every connected device, robustly.

logcat -s TAG filtering proved unreliable on these builds, so this pulls the whole
buffer and greps it, and also tries the on-device report files.

Usage:
    python collect_gate.py [serial ...]
"""
import os
import re
import subprocess
import sys
import time

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
APK = os.path.join(BASE, 'work', 'LZGateProbe.apk')
OUTDIR = os.path.join(BASE, 'work', 'gateprobe_out')
PKG = 'com.lzplay.gateprobe'


def adm(serial, *args, timeout=900):
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


def extract_report(text):
    """Pull the probe report out of a raw logcat dump."""
    lines = []
    started = False
    for ln in text.splitlines():
        i = ln.find('LZGate')
        if i == -1:
            continue
        # everything after the tag
        m = re.match(r'^.*?LZGate\s*:\s?(.*)$', ln)
        body = m.group(1) if m else ln[i:]
        if 'LZPLAY GATE PROBE' in body:
            started = True
        if started:
            lines.append(body.rstrip())
    return '\n'.join(lines)


def main():
    os.makedirs(OUTDIR, exist_ok=True)
    targets = sys.argv[1:] or devices()
    if not targets:
        print('no devices')
        return 1

    for s in targets:
        model = adm(s, 'shell', 'getprop ro.product.model').strip()
        print('=' * 78)
        print('DEVICE %-28s  model=%s' % (s, model))
        print('=' * 78)

        r = adm(s, 'install', '-r', '-g', APK)
        last = [l for l in r.strip().splitlines() if l.strip()]
        print('  install: %s' % (last[-1] if last else '?'))

        adm(s, 'shell', 'am', 'force-stop', PKG)
        adm(s, 'shell', 'logcat', '-c')
        adm(s, 'shell', 'am', 'start', '-n', '%s/.MainActivity' % PKG)
        time.sleep(10)

        # 1) from logcat
        raw = adm(s, 'shell', 'logcat', '-d')
        rep = extract_report(raw)

        # 2) from the files the probe writes
        if 'GATE PROBE' not in rep:
            for p in ('/sdcard/Android/data/%s/files/lzgate.txt' % PKG,
                      '/storage/emulated/0/Android/data/%s/files/lzgate.txt' % PKG):
                t = adm(s, 'shell', 'cat', p)
                if 'GATE PROBE' in t:
                    rep = t
                    break
        if 'GATE PROBE' not in rep:
            t = adm(s, 'shell', 'run-as', PKG, 'cat', 'files/lzgate.txt')
            if 'GATE PROBE' in t:
                rep = t

        if 'GATE PROBE' not in rep:
            print('  !! NO REPORT.  process state / crash:')
            print(adm(s, 'shell', 'ps', '-A')[:0] or '')
            cr = [l for l in raw.splitlines()
                  if 'gateprobe' in l and ('FATAL' in l or 'Exception' in l or 'died' in l)]
            for l in cr[:12]:
                print('     %s' % l.strip())
            continue

        fn = os.path.join(OUTDIR, 'lzgate-%s.txt' % model.replace(' ', '_'))
        with open(fn, 'w', encoding='utf-8') as f:
            f.write(rep)
        print('  report -> %s' % fn)
        # echo the parts that matter
        keep = False
        for line in rep.splitlines():
            if '---- 2.' in line or '---- 3.' in line or '---- 4.' in line:
                keep = True
            if '---- 5.' in line:
                keep = False
            if keep:
                print('    %s' % line)
        print()


if __name__ == '__main__':
    sys.exit(main())
