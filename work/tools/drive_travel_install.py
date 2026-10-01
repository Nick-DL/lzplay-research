#!/usr/bin/env python3
"""
Drive the travel app's install flow to completion on the Mate50.

The app now runs (the streaming-MD5 patch removed the startup OOM).  It shows
"检测到GMS环境需要更新 / 请先激活设备管理器 / [立即更新]".

This script taps through whatever the app and the system installer put on screen,
and reports which of the five GMS packages end up installed.

Usage:
    python tools/drive_travel_install.py <serial> [--minutes N]
"""
import re
import subprocess
import sys
import time
import html as _html

PKG = 'com.qiyecomm'
TARGETS = [
    'com.google.android.gms',
    'com.google.android.gsf',
    'com.google.android.syncadapters.contacts',
    'com.oversea.gmapjar',
    'com.android.vending',
    'com.x.idhelper',
]

# labels we are willing to tap, in priority order
TAP_WORDS = [
    '立即更新', '开始下载', '继续', '安装', '仍要安装', '继续安装',
    '确定', '允许', '下一步', '激活', '知道了', '完成',
    'Install', 'Continue', 'Allow', 'Next', 'OK', 'Activate',
]


def adb(serial, *a, timeout=1800):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(a), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def sh(serial, *a, **k):
    return adb(serial, 'shell', *a, **k)


def focus(serial):
    d = sh(serial, 'dumpsys', 'window')
    m = re.search(r'mCurrentFocus=\S+\s+\S+\s+(\S+)', d)
    return m.group(1).rstrip('}') if m else '?'


def nodes(serial):
    sh(serial, 'uiautomator', 'dump', '/sdcard/_drv.xml')
    x = sh(serial, 'cat', '/sdcard/_drv.xml')
    out = []
    for m in re.finditer(r'<node\b([^>]*?)/?>', x):
        at = dict(re.findall(r'([\w-]+)="([^"]*)"', m.group(1)))
        t = _html.unescape(at.get('text') or '').strip()
        d = _html.unescape(at.get('content-desc') or '').strip()
        b = at.get('bounds') or ''
        mm = re.match(r'\[(\d+),(\d+)\]\[(\d+),(\d+)\]', b)
        if not mm:
            continue
        x0, y0, x1, y1 = map(int, mm.groups())
        out.append(((t or d), (x0 + x1) // 2, (y0 + y1) // 2))
    return out


def installed(serial):
    o = sh(serial, 'pm', 'list', 'packages', '--user', '0')
    return {p for p in TARGETS if p in o}


def main():
    serial = sys.argv[1]
    minutes = 8
    if '--minutes' in sys.argv:
        minutes = int(sys.argv[sys.argv.index('--minutes') + 1])

    print('=' * 78)
    print('DRIVE travel-app install   device=%s' % serial)
    print('=' * 78)
    print('[clock] %s' % sh(serial, 'date').strip())

    base = installed(serial)
    print('[before] %s' % (', '.join(sorted(base)) or 'none'))

    deadline = time.time() + minutes * 60
    taps = 0
    seen_focus = ''
    while time.time() < deadline:
        time.sleep(3)
        f = focus(serial)
        if f != seen_focus:
            print('   focus -> %s' % f[:76])
            seen_focus = f
        try:
            ns = nodes(serial)
        except Exception:
            ns = []
        did = False
        for word in TAP_WORDS:
            for t, x, y in ns:
                if t == word or t.startswith(word):
                    print('   TAP %-14r (%d,%d)' % (t[:14], x, y))
                    sh(serial, 'input', 'tap', str(x), str(y))
                    taps += 1
                    did = True
                    time.sleep(2)
                    break
            if did:
                break
        now = installed(serial)
        if now != base:
            print('   + %s' % ', '.join(sorted(now - base)))
            base = now
        if len(base) == len(TARGETS):
            print('\n[OK] everything installed')
            break

    print('\n' + '=' * 78)
    after = installed(serial)
    print('taps = %d' % taps)
    print('installed : %s' % (', '.join(sorted(after)) or 'none'))
    miss = [t for t in TARGETS if t not in after]
    print('missing   : %s' % (', '.join(miss) or 'none'))
    print('=' * 78)
    return 0


if __name__ == '__main__':
    sys.exit(main())
