#!/usr/bin/env python3
"""
Patch FileUtil.b(String) to compute the MD5 by STREAMING instead of slurping.

The bug (see docs/05-phase2/09-*):

    com/x/plus/pro/f/c.smali  method b(Ljava/lang/String;)Ljava/lang/String;   (smali line 680)

        MessageDigest md5 = MessageDigest.getInstance("MD5");
        byte[] all = FileUtil.a(new File(path));   // <-- reads the ENTIRE file
        md5.update(all);

FileUtil.a(File) grows an unbounded ByteArrayOutputStream, so hashing
com.google.android.gms (86.5 MB on the test device) asks for a 256 MB contiguous
allocation and the process dies with OutOfMemoryError.

UpdateImp.e(Context) calls this for every package in the manifest while building the
update request body, so the crash happens on every launch, before anything network
related, and pm clear does not help because it hashes the INSTALLED apk under the
data/app tree.

The fix: add a private static streaming helper and make b() call it.

    private static void a(File f, MessageDigest md)   // reads 8 KB at a time

This keeps peak memory at ~8 KB regardless of file size.

Usage:
    python tools/patch_travel_fileutil.py --check
    python tools/patch_travel_fileutil.py --run
"""
import io
import os
import re
import shutil
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
TREE = os.path.join(BASE, 'work', 'travel_decoded')
BACKUP = os.path.join(BASE, 'work', 'travel_backup_fileutil')
TARGET = os.path.join(TREE, 'smali', 'com', 'x', 'plus', 'pro', 'f', 'c.smali')

BMETHOD = '.method public static b(Ljava/lang/String;)Ljava/lang/String;'

# ---------------------------------------------------------------- new smali

NEW_METHOD = r'''.method private static a(Ljava/io/File;Ljava/security/MessageDigest;)V
    .locals 4

    # 流式读取文件并喂给 MessageDigest，峰值内存恒定为 8 KB。
    # 这是为了替换原先"把整个文件读进 byte[]"的写法 —— 对 86 MB 的 GMS 包会 OOM。
    const/16 v0, 0x2000

    new-array v0, v0, [B

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, v0, p0, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    invoke-static {v2}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V

    return-void

    :catch_2
    move-exception p0

    :try_start_3
    invoke-static {v2}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catch_0
    move-exception p0

    :try_start_4
    invoke-static {v1}, Lcom/x/plus/pro/f/e;->a(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception p0

    return-void
.end method


'''

# the old slurp sequence inside b()
OLD = '''    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/x/plus/pro/f/c;->a(Ljava/io/File;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B'''

NEW = '''    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    # 流式喂入，不再整包读入内存（原写法对 86 MB 的文件会 OOM）
    invoke-static {v2, v1}, Lcom/x/plus/pro/f/c;->a(Ljava/io/File;Ljava/security/MessageDigest;)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B'''


def main():
    run = '--run' in sys.argv

    print('=' * 74)
    print('PATCH FileUtil.b -> streaming MD5')
    print('=' * 74)
    print('  tree  : %s' % TREE)
    print('  target: %s' % os.path.relpath(TARGET, BASE))

    if not os.path.exists(TARGET):
        print('  ERROR: target not found')
        return 1

    src = io.open(TARGET, encoding='utf-8').read()

    has_new = 'Ljava/security/MessageDigest;)V' in src and '0x2000' in src
    has_old = OLD in src

    print('\n[state]')
    print('  streaming helper present : %s' % ('YES' if has_new else 'no'))
    print('  old slurp sequence present: %s' % ('YES' if has_old else 'NO'))

    if has_new and not has_old:
        print('\n  already patched - nothing to do')
        return 0

    if not has_old:
        print('\n  ERROR: the expected slurp sequence was not found.')
        print('  The tree may differ from what this script was written against.')
        print('  Searching for the digest call to help locate it...')
        for m in re.finditer(r'MessageDigest;->digest\(\[B\)\[B', src):
            ln = src[:m.start()].count('\n') + 1
            print('    digest([B)[B at line %d' % ln)
        return 1

    if not run:
        print('\n  would insert the streaming helper before %s' % BMETHOD)
        print('  and replace the slurp sequence inside b()')
        print('\n(dry run - pass --run to apply)')
        return 0

    # backup once
    if not os.path.isdir(BACKUP):
        os.makedirs(BACKUP)
    bak = os.path.join(BACKUP, 'c.smali.orig')
    if not os.path.exists(bak):
        shutil.copy2(TARGET, bak)
        print('\n  backed up -> %s' % os.path.relpath(bak, BASE))

    # 1) replace the slurp inside b()
    src2 = src.replace(OLD, NEW, 1)
    if src2 == src:
        print('  ERROR: replacement did not apply')
        return 1

    # 2) insert the helper right before b()
    idx = src2.find(BMETHOD)
    if idx < 0:
        print('  ERROR: could not find %s' % BMETHOD)
        return 1
    out = src2[:idx] + NEW_METHOD + src2[idx:]

    io.open(TARGET, 'w', encoding='utf-8', newline='\n').write(out)

    # verify
    chk = io.open(TARGET, encoding='utf-8').read()
    print('\n[applied]')
    print('  helper inserted          : %s' % ('YES' if 'Ljava/security/MessageDigest;)V' in chk else 'NO'))
    print('  8 KB buffer              : %s' % ('YES' if 'const/16 v0, 0x2000' in chk else 'NO'))
    print('  slurp removed            : %s' % ('YES' if OLD not in chk else 'NO'))
    print('  digest() call now no-arg : %s'
          % ('YES' if 'MessageDigest;->digest()[B' in chk else 'NO'))
    print('  file size %d -> %d bytes' % (len(src), len(chk)))
    return 0


if __name__ == '__main__':
    sys.exit(main())
