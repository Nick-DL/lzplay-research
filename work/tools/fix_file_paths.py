#!/usr/bin/env python3
"""
Fix the stale package name in the travel app's FileProvider paths.

res/xml/file_paths.xml declares:

    <external-path name="download_path"
                   path="Android/data/com.x.plus.pro/cache/" />

The released package is com.qiyecomm, so FileProvider.getUriForFile() refuses any file
under that declared root and the install step quietly fails.

This stayed dormant in the original app because it installed via
DevicePackageManager.installPackage() -- a privileged path that never needs a content
URI.  Our patch reroutes installation through ACTION_VIEW + FileProvider, which exposes
it: the app gets all the way to the install screen and then sits until the 120 s
watchdog in InstallHelper.a(String) fires and it shows "安装异常，请重试。"

The fix is a straight byte substitution: "com.x.plus.pro" and "com.qiyecomm" are both
12 characters, so in the binary XML string pool the UTF-16 payload is the same length
and no chunk size or offset needs touching.

Usage:
    python tools/fix_file_paths.py --check
    python tools/fix_file_paths.py --run
"""
import os
import re
import shutil
import sys
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'

# both are 12 chars -> length-preserving in the UTF-16 string pool
OLD = b'com.x.plus.pro'
NEW = b'com.qiyecomm'
assert len(OLD) == len(NEW), 'must be equal length for an in-place edit'

ENTRY = 'res/xml/file_paths.xml'


def patch_apk(apk, run):
    print('=' * 76)
    print('FIX FileProvider paths   %s' % os.path.relpath(apk, BASE))
    print('=' * 76)
    if not os.path.exists(apk):
        print('  ERROR: not found')
        return 1

    z = zipfile.ZipFile(apk)
    if ENTRY not in z.namelist():
        print('  ERROR: %s missing' % ENTRY)
        return 1

    data = z.read(ENTRY)
    # binary XML stores strings as UTF-16LE
    needle = OLD.decode().encode('utf-16-le')
    repl = NEW.decode().encode('utf-16-le')
    hits = data.count(needle)

    print('  entry  : %s (%d bytes)' % (ENTRY, len(data)))
    print('  looking for %r as UTF-16LE' % OLD.decode())
    print('  occurrences: %d' % hits)

    # also show any other package-looking strings for context
    for m in re.finditer(rb'(?:[\x20-\x7e]\x00){6,}', data):
        s = m.group(0).decode('utf-16-le', 'replace')
        if '.' in s and ('com.' in s or 'Android' in s or 'cache' in s):
            print('    string: %r' % s)

    if hits == 0:
        print('\n  nothing to patch (already fixed?)')
        return 0

    if not run:
        print('\n  would replace %d occurrence(s), same byte length -> no other edits'
              % hits)
        print('\n(dry run - pass --run to apply)')
        return 0

    newdata = data.replace(needle, repl)
    assert len(newdata) == len(data), 'length changed unexpectedly'

    tmp = apk + '.tmp'
    with zipfile.ZipFile(tmp, 'w', zipfile.ZIP_DEFLATED, compresslevel=6) as zo:
        for item in z.infolist():
            payload = newdata if item.filename == ENTRY else z.read(item.filename)
            zi = zipfile.ZipInfo(item.filename, date_time=item.date_time)
            zi.compress_type = item.compress_type
            zi.external_attr = item.external_attr
            zi.internal_attr = item.internal_attr
            zi.create_system = item.create_system
            zo.writestr(zi, payload)
    z.close()
    shutil.move(tmp, apk)

    print('\n  replaced %d occurrence(s)' % hits)
    print('  wrote %s (%d bytes)' % (os.path.relpath(apk, BASE), os.path.getsize(apk)))
    print('\n  NOTE: now unsigned - re-run zipalign + apksigner')
    return 0


def main():
    run = '--run' in sys.argv
    rc = 0
    for name in ('旅游必备-nostream-oom.apk', '旅游必备-patched.apk'):
        p = os.path.join(BASE, name)
        if os.path.exists(p):
            rc |= patch_apk(p, run)
            print()
    return rc


if __name__ == '__main__':
    sys.exit(main())
