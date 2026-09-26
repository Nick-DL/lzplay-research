#!/usr/bin/env python3
"""
Drive the Huawei Backup UI over adb.

Reusable helper: reads a uiautomator dump, finds a node by its text (exact or
substring), and taps the centre of its bounds.  Handles the escaped forms Android
emits (&#10; etc.) and both attribute orderings.

Usage:
    python uitap.py <serial> dump                 # dump + list every text node
    python uitap.py <serial> tap "text"           # tap node whose text matches
    python uitap.py <serial> tap "text" --sub     # substring match
    python uitap.py <serial> wait "text" [secs]   # poll until the node appears
"""
import html
import os
import re
import subprocess
import sys
import time

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
DUMP_DIR = os.path.join(BASE, 'work', 'uidump')


def adm(serial, *args, timeout=180):
    try:
        r = subprocess.run(['adb', '-s', serial] + list(args), capture_output=True,
                           text=True, timeout=timeout, encoding='utf-8',
                           errors='replace')
        return (r.stdout or '') + (r.stderr or '')
    except Exception as e:
        return 'ERROR: %s' % e


NODE_RE = re.compile(r'<node\b([^>]*?)/?>')


def parse_nodes(xml):
    out = []
    for m in NODE_RE.finditer(xml):
        attrs = {}
        for a in re.finditer(r'(\w[\w-]*)="([^"]*)"', m.group(1)):
            attrs[a.group(1)] = html.unescape(a.group(2))
        b = attrs.get('bounds', '')
        mb = re.match(r'\[(\d+),(\d+)\]\[(\d+),(\d+)\]', b)
        if mb:
            x1, y1, x2, y2 = map(int, mb.groups())
            attrs['cx'] = (x1 + x2) // 2
            attrs['cy'] = (y1 + y2) // 2
        out.append(attrs)
    return out


def dump(serial):
    os.makedirs(DUMP_DIR, exist_ok=True)
    adm(serial, 'shell', 'uiautomator', 'dump', '/sdcard/ui.xml')
    txt = adm(serial, 'shell', 'cat', '/sdcard/ui.xml')
    p = os.path.join(DUMP_DIR, 'ui-%d.xml' % int(time.time()))
    with open(p, 'w', encoding='utf-8') as f:
        f.write(txt)
    return txt, p


def find(nodes, needle, sub=False):
    for n in nodes:
        t = n.get('text', '')
        if not t:
            continue
        if (needle in t) if sub else (t == needle):
            return n
    return None


def main():
    if len(sys.argv) < 3:
        print(__doc__)
        return 1
    serial, cmd = sys.argv[1], sys.argv[2]

    if cmd == 'dump':
        txt, p = dump(serial)
        nodes = parse_nodes(txt)
        print('dumped %d nodes -> %s\n' % (len(nodes), p))
        for n in nodes:
            t = n.get('text', '')
            d = n.get('content-desc', '')
            if t or d:
                print('  %-12s %-46s click=%s  (%s,%s)' % (
                    n.get('class', '').split('.')[-1][:12],
                    (t or ('desc:' + d))[:46],
                    n.get('clickable', '?'), n.get('cx', '?'), n.get('cy', '?')))
        return 0

    if cmd == 'wait':
        needle = sys.argv[3]
        secs = int(sys.argv[4]) if len(sys.argv) > 4 else 40
        sub = '--sub' in sys.argv
        for i in range(secs):
            txt, p = dump(serial)
            n = find(parse_nodes(txt), needle, sub)
            if n:
                print('found after %ds at (%s,%s)' % (i, n['cx'], n['cy']))
                return 0
            time.sleep(1)
        print('timed out waiting for %r' % needle)
        return 2

    if cmd == 'tap':
        needle = sys.argv[3]
        sub = '--sub' in sys.argv
        txt, p = dump(serial)
        nodes = parse_nodes(txt)
        n = find(nodes, needle, sub)
        if not n:
            print('%r not found in %s' % (needle, p))
            print('available texts:')
            for x in nodes:
                if x.get('text'):
                    print('   %r' % x['text'][:60])
            return 3
        print('tap %r at (%d,%d)' % (n['text'], n['cx'], n['cy']))
        adm(serial, 'shell', 'input', 'tap', str(n['cx']), str(n['cy']))
        return 0

    print('unknown command %r' % cmd)
    return 1


if __name__ == '__main__':
    sys.exit(main())
