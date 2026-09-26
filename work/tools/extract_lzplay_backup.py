#!/usr/bin/env python3
"""
Extract and summarise the decrypted lzplay backup tar.

The question this answers: the tutorial restores not just the APK but also the app's
DATA.  Does that data contain something that lets lzplay skip the step it hangs on?
"""
import io
import os
import re
import sys
import tarfile

TAR = sys.argv[1] if len(sys.argv) > 1 else \
    r'work/2026华为鸿蒙最新安装谷歌原生框架（不弹窗）/Backup/backupFiles/plain-F.tar'
OUT = sys.argv[2] if len(sys.argv) > 2 else r'work/dl/lzplay-data'


def main():
    print('tar: %s' % TAR)
    tf = tarfile.open(TAR)
    members = tf.getmembers()
    print('entries: %d\n' % len(members))

    dirs = 0
    files = []
    for m in members:
        if m.isdir():
            dirs += 1
        elif m.isfile():
            files.append(m)

    print('%-72s %10s' % ('name', 'size'))
    print('-' * 84)
    for m in members:
        if m.isdir():
            print('%-72s %10s' % (m.name + '/', '<DIR>'))

    print('\n---- files ----')
    for m in sorted(files, key=lambda x: -x.size):
        print('%-72s %10d' % (m.name, m.size))

    print('\ntotal files: %d, dirs: %d, bytes: %d'
          % (len(files), dirs, sum(m.size for m in files)))

    # extract
    os.makedirs(OUT, exist_ok=True)
    tf.extractall(OUT)
    print('\nextracted to %s' % OUT)

    # highlight anything that looks like state / prefs / config
    print('\n==== interesting files ====')
    for m in files:
        n = m.name.lower()
        if any(k in n for k in ('shared_prefs', '.xml', 'databases', '.db',
                                'config', 'setting', 'pref')):
            p = os.path.join(OUT, m.name)
            print('\n--- %s (%d bytes) ---' % (m.name, m.size))
            try:
                raw = io.open(p, 'rb').read()
            except Exception as e:
                print('   read failed: %s' % e)
                continue
            if raw[:2] == b'\x03\x00' or raw[:5] == b'<?xml':
                try:
                    print('   %s' % raw.decode('utf-8', 'replace')[:2500])
                except Exception as e:
                    print('   %s' % e)
            elif raw[:16] == b'SQLite format 3\x00':
                print('   (SQLite database)')
                print('   first 200 bytes: %r' % raw[:200])
            else:
                print('   (binary, first 200 bytes)')
                print('   %r' % raw[:200])


if __name__ == '__main__':
    main()
