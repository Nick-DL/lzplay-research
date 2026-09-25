#!/usr/bin/env python3
"""
Pass 7: use FileProvider so the APK can actually be handed to the system installer.

Pass 5/6 got the flow all the way to InstallHelper.install(String) handing the APK to a
VIEW intent - the Huawei MDM branch is no longer executed.  What remains is a pure
Android API-level rule:

    android.os.FileUriExposedException: file:///data/user/0/com.qiyecomm/cache/file/
        com.google.android.gms_29.apk exposed beyond app through Intent.getData()
        at com.x.plus.pro.e.c.a(InstallHelper.java:122)

Since Android 7 (API 24) an app may not put a `file://` URI into an Intent that leaves
the process; it must use a content:// URI from a FileProvider.

Everything needed already exists in this app:

    manifest : <provider android:authorities="com.qiyecomm.provider"
                         android:name="androidx.core.content.FileProvider"
                         android:grantUriPermissions="true">
                   <meta-data android:name="android.support.FILE_PROVIDER_PATHS"
                              android:resource="@xml/file_paths"/>
               </provider>

    file_paths.xml : <cache-path name="app_cachePath" path="file" />
                     -> matches exactly where the app unpacks the APK
                        (/data/user/0/com.qiyecomm/cache/file/<pkg>_29.apk)

    Constants.java : public static final String a = getPackageName() + ".provider"
                     -> com/x/plus/pro/d/a;->a

So we only replace the one line that builds the URI:

    -   invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    +   iget-object v3, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;
    +   sget-object v4, Lcom/x/plus/pro/d/a;->a:Ljava/lang/String;
    +   invoke-static {v3, v4, v2},
    +       Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

The existing `Context.grantUriPermission("android", uri, FLAG_GRANT_READ_URI_PERMISSION)`
line in the FileProvider branch (dead now) is not needed: the install intent carries
FLAG_GRANT_READ_URI_PERMISSION, and the installer (com.android.packageinstaller) gets
access through it.
"""
import io, os, re, shutil, sys

TARGET = 'work/travel_decoded/smali/com/x/plus/pro/e/c.smali'
BACKUP = 'work/travel_backup'

OLD = [
    '    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;',
    '    move-result-object v2',
]
NEW = [
    '    iget-object v3, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;',
    '    sget-object v4, Lcom/x/plus/pro/d/a;->a:Ljava/lang/String;',
    '    invoke-static {v3, v4, v2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;',
    '    move-result-object v2',
]


OLD_INSN = '    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;'


def next_code_line(lines, start):
    """Index of the next non-empty, non-.line line at/after start."""
    for j in range(start, len(lines)):
        s = lines[j].strip()
        if s and not s.startswith('.line'):
            return j
    return None


def main():
    src = io.open(TARGET, encoding='utf-8').read()
    lines = src.splitlines()

    start = None
    for i, ln in enumerate(lines):
        if ln.startswith('.method public final a(Ljava/lang/String;)V'):
            start = i
            break
    if start is None:
        print('install method not found')
        return 1

    idx = None
    for j in range(start, min(start + 90, len(lines))):
        if lines[j] == OLD_INSN:
            idx = j
            break
    if idx is None:
        print('fromFile anchor not found near the install method; context:')
        for j in range(start, min(start + 70, len(lines))):
            if 'fromFile' in lines[j] or 'Uri' in lines[j]:
                print('%5d  %r' % (j + 1, lines[j]))
        return 1

    nxt = next_code_line(lines, idx + 1)
    print('patching fromFile at line %d (next code line: %d)' % (idx + 1, nxt + 1))

    new_lines = lines[:idx] + NEW + lines[nxt + 1:]
    out = '\n'.join(new_lines) + ('\n' if src.endswith('\n') else '')

    os.makedirs(BACKUP, exist_ok=True)
    shutil.copy2(TARGET, os.path.join(BACKUP, 'e_c.smali.pass7.orig'))
    io.open(TARGET, 'w', encoding='utf-8', newline='\n').write(out)
    print('backup: %s' % os.path.join(BACKUP, 'e_c.smali.pass7.orig'))

    # .locals must cover v0..v4 now
    print('\n--- resulting :cond_0 block ---')
    ol = out.splitlines()
    for j, ln in enumerate(ol):
        if ln.strip() == ':cond_0' and j > start:
            for k in range(j, min(j + 24, len(ol))):
                s = ol[k].rstrip()
                if s.strip() and not s.strip().startswith('.line'):
                    print('%5d  %s' % (k + 1, s))
            break

    # check .locals
    for j in range(start, start + 4):
        if '.locals' in ol[j]:
            print('\n%s   <- must be >= 5 for v0..v4' % ol[j].strip())
    return 0


if __name__ == '__main__':
    sys.exit(main())
