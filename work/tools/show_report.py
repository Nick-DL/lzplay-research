#!/usr/bin/env python3
"""
Print a compact, greppable view of the LZRevive report sections we care about,
so results can be inspected without pulling the whole 35 KB file every time.

Usage:  python work/tools/show_report.py [section-substring ...]
"""
import io
import os
import subprocess
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
SERIAL = os.environ.get('LZSERIAL', '192.168.3.35:5555')
LOCAL = os.path.join(BASE, 'work', 'lzrevive.txt')

SECTION_MARK = '==== '


def pull(remote, local):
    r = subprocess.run(['adb', '-s', SERIAL, 'pull', remote, local],
                       capture_output=True, text=True, encoding='utf-8', errors='replace')
    return r.returncode == 0


def sections(text):
    """Yield (title, body) pairs."""
    out = []
    cur = None
    buf = []
    for line in text.splitlines():
        if line.startswith(SECTION_MARK):
            if cur is not None:
                out.append((cur, buf))
            cur = line[len(SECTION_MARK):].strip().rstrip('= ').strip()
            buf = []
        else:
            buf.append(line)
    if cur is not None:
        out.append((cur, buf))
    return out


def main():
    want = sys.argv[1:]
    for name in ('lzrevive.txt', 'lzrevive-tls.txt', 'lzrevive-net.txt'):
        remote = '/sdcard/Android/data/com.lzplay.revive/files/' + name
        local = os.path.join(BASE, 'work', name)
        if pull(remote, local):
            print('pulled %s  (%d B)' % (name, os.path.getsize(local)))
    print()

    if not os.path.exists(LOCAL):
        print('no report')
        return 1
    text = io.open(LOCAL, encoding='utf-8', errors='replace').read()
    for title, body in sections(text):
        if want and not any(w.lower() in title.lower() for w in want):
            continue
        print('==== %s ====' % title)
        for line in body:
            if line.strip():
                print(line)
        print()
    return 0


if __name__ == '__main__':
    sys.exit(main())
