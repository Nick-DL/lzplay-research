#!/usr/bin/env python3
"""
Auto-tap the Huawei/Android permission dialogs until they stop appearing.

Why a dedicated tool: the uiautomator XML escapes non-ASCII (&#x5141;&#x8bb8; for
"允许"), and PowerShell's pipeline mangles both the escaping and the CJK text, so
matching must happen in Python.

Usage:
    python autogrant.py <serial> [maxDialogs]
"""
import html
import re
import subprocess
import sys
import time

ALLOW = '\u5141\u8bb8'          # 允许
ALWAYS = '\u59cb\u7ec8\u5141\u8bb8'  # 始终允许
NODE_RE = re.compile(r'<node\b([^>]*?)/?>')
ATTR_RE = re.compile(r'([\w-]+)="([^"]*)"')
BOUNDS_RE = re.compile(r'\[(\d+),(\d+)\]\[(\d+),(\d+)\]')


def adm(serial, *args, timeout=180):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(args), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


def screen(serial):
    adm(serial, 'shell', 'uiautomator', 'dump', '/sdcard/ag.xml')
    return adm(serial, 'shell', 'cat', '/sdcard/ag.xml')


def nodes(xml):
    out = []
    for m in NODE_RE.finditer(xml):
        at = dict(ATTR_RE.findall(m.group(1)))
        at = {k: html.unescape(v) for k, v in at.items()}
        b = BOUNDS_RE.match(at.get('bounds', ''))
        if b:
            x1, y1, x2, y2 = map(int, b.groups())
            at['cx'] = (x1 + x2) // 2
            at['cy'] = (y1 + y2) // 2
        out.append(at)
    return out


def main():
    serial = sys.argv[1]
    maxd = int(sys.argv[2]) if len(sys.argv) > 2 else 15

    for i in range(maxd):
        xml = screen(serial)
        ns = nodes(xml)

        # never grant the "deny" button; only ever press an allow-ish one
        target = None
        for want in (ALLOW, ALWAYS):
            for n in ns:
                t = (n.get('text') or '').strip()
                if t == want and n.get('clickable') == 'true':
                    target = (t, n['cx'], n['cy'])
                    break
            if target:
                break

        if not target:
            texts = [n.get('text', '') for n in ns if n.get('text')]
            print('[%d] no allow button. visible: %s' % (i, texts[:6]))
            break

        print('[%d] tap %r at (%d,%d)' % (i, target[0], target[1], target[2]))
        adm(serial, 'shell', 'input', 'tap', str(target[1]), str(target[2]))
        time.sleep(2.5)

    print('\ncurrent focus:')
    print('  ' + adm(serial, 'shell', 'dumpsys', 'window').split('mCurrentFocus')[-1][:120]
          if 'mCurrentFocus' in adm(serial, 'shell', 'dumpsys', 'window') else '  ?')


if __name__ == '__main__':
    main()
