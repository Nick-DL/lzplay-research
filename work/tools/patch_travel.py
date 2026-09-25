#!/usr/bin/env python3
"""
Surgical patch of 旅游必备 (com.qiyecomm).

Change 1 - bypass the network gate:
    com.x.plus.pro.f.h -> a(Context)Z      // NetworkUtil.isNetworkConnected()
    The whole body becomes `const/4 v0, 0x1 / return v0`.
    This is the check that produces the "No network detected" dialog.
    NetworkUtil.b() (the WiFi check used for the mobile-data download warning)
    is deliberately left untouched.

Change 2 - belt-and-braces on the device gate:
    com.x.plus.pro.a.b -> a(Context)Z      // DeviceManage.check()
    It already returns true on this device (the framework supplies the real
    DevicePackageManager, whose getSysAppList() returns an empty list without
    throwing), so this is only insurance: force `const/4 v1, 0x1`.

Both edits are recorded with their original text so they can be reverted.
"""
import io, os, re, shutil, sys

DEC = 'work/travel_decoded'
SMALI = os.path.join(DEC, 'smali')

FORCE_TRUE = """    .locals 1

    const/4 v0, 0x1

    return v0
"""

PATCHES = [
    (os.path.join(SMALI, 'com', 'x', 'plus', 'pro', 'f', 'h.smali'),
     'a', 'NetworkUtil.isNetworkConnected'),
    (os.path.join(SMALI, 'com', 'x', 'plus', 'pro', 'a', 'b.smali'),
     'a', 'DeviceManage.check'),
]

# the block that follows a method header, up to and including `.end method`
HEADER = re.compile(
    r'(?P<hdr>^\.method\s+[^\n]*?(?P<name>[\w$<>]+)\((?P<args>[^\n]*)\)(?P<ret>[^\n]*)\n)'
    r'(?P<body>.*?)'
    r'(?P<end>^\.end method)',
    re.S | re.M)


def patch_file(path, target_name, label, backup_dir):
    if not os.path.exists(path):
        print('  MISSING %s' % path)
        return False
    src = io.open(path, encoding='utf-8').read()
    orig = src

    def repl(m):
        name = m.group('name')
        args = m.group('args')
        ret = m.group('ret')
        if name != target_name:
            return m.group(0)
        if 'Context' not in args or ret.strip() != 'Z':
            return m.group(0)
        print('  patching %s -> %s(%s)%s   [%s]' % (os.path.basename(path), name, args, ret, label))
        return m.group('hdr') + FORCE_TRUE + m.group('end')

    out = HEADER.sub(repl, src)
    if out == orig:
        print('  NO CHANGE in %s (pattern did not match?)' % path)
        return False
    os.makedirs(backup_dir, exist_ok=True)
    shutil.copy2(path, os.path.join(backup_dir, os.path.basename(path) + '.orig'))
    io.open(path, 'w', encoding='utf-8', newline='\n').write(out)
    return True


def main():
    backup = 'work/travel_backup'
    print('patching %s' % DEC)
    n = 0
    for path, name, label in PATCHES:
        if patch_file(path, name, label, backup):
            n += 1
    print('patched %d method(s); originals backed up in %s' % (n, backup))

    # show the result for the primary patch
    p = PATCHES[0][0]
    if os.path.exists(p):
        print('\n--- resulting %s (first 30 lines) ---' % os.path.basename(p))
        for i, line in enumerate(io.open(p, encoding='utf-8').read().splitlines()[:30], 1):
            print('%3d  %s' % (i, line))


if __name__ == '__main__':
    main()
