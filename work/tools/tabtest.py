#!/usr/bin/env python3
"""
Tablet experiment: single-variable test of the Huawei "应用启动管理" (app startup
manager) setting against the GSF provider block.

Run this AFTER each manual UI change.  It reports the three discriminating signals:

  1. the probe's own result   (open provider / android_id)
  2. the E line count         "shouldPreventStartProvider"     <- the real signal
  3. the reason count         "provider is prevented for iaware"

Baseline already measured (GSF installed, GMS installed, no setting change):
      NULL cursor | E=5 | iaware=5

Usage:
    python tabtest.py <serial> <label>
"""
import re
import subprocess
import sys
import time

PKG = 'com.lzplay.gateprobe'
PROBE = 'com.lzplay.revive'


def adm(serial, *args, timeout=300):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(args), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def run(serial, label):
    print('=' * 74)
    print('RUN: %s' % label)
    print('=' * 74)

    # trigger the probe
    adm(serial, 'shell', 'logcat', '-c')
    adm(serial, 'shell', 'am', 'force-stop', PKG)
    adm(serial, 'shell', 'am', 'start', '-n', '%s/.MainActivity' % PKG)
    time.sleep(12)
    out = adm(serial, 'shell', 'logcat', '-d')

    body = []
    for ln in out.splitlines():
        m = re.match(r'^.*?LZGate\s*:\s?(.*)$', ln)
        if m:
            body.append(m.group(1))

    probe = {}
    for ln in body:
        for k in ('READ_GSERVICES held', 'open provider', 'android_id'):
            if ln.strip().startswith(k):
                probe[k] = ln.strip()

    e_lines = len(re.findall(r'shouldPreventStartProvider', out))
    iaware = len(re.findall(r'provider is prevented for iaware', out))
    notprev = len(re.findall(r'provider is prevented for not-prevent', out))
    success = len(re.findall(r'Successfully start provider.*gservices', out))
    gsid = re.search(r'android_id\s*=\s*(\d+)', '\n'.join(body))

    print('  READ_GSERVICES  : %s' % probe.get('READ_GSERVICES held', '?'))
    print('  open provider   : %s' % probe.get('open provider', '?'))
    print('  android_id      : %s' % (gsid.group(1) if gsid else '(none)'))
    print()
    print('  E shouldPreventStartProvider : %d   <- real signal (0 = unblocked)' % e_lines)
    print('  "prevented for iaware"       : %d' % iaware)
    print('  "prevented for not-prevent"  : %d' % notprev)
    print('  "Successfully start provider ... gservices" : %d' % success)
    print()

    verdict = 'UNBLOCKED' if (e_lines == 0 or success > 0) else 'STILL BLOCKED'
    print('  ==> %s' % verdict)
    return {'label': label, 'e_lines': e_lines, 'iaware': iaware,
            'success': success, 'android_id': gsid.group(1) if gsid else None,
            'verdict': verdict}


if __name__ == '__main__':
    serial = sys.argv[1] if len(sys.argv) > 1 else '192.168.1.109:5556'
    label = sys.argv[2] if len(sys.argv) > 2 else 'unlabelled'
    run(serial, label)
