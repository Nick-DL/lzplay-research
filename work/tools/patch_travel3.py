#!/usr/bin/env python3
"""
Pass 3: make the travel app find its BUNDLED GMS APKs on Android 12.

Root cause of the endless loop:

    com/x/plus/pro/beans/config/ApkInfo.smali  (private a(Context)V)

        String name = apkInfo.d + "_" + Build.VERSION.SDK_INT + ".apk";
        String path = FileDownloader.getSoPath() + sep + name;
        boolean ok = f/c.a(ctx, name, path);      // AssetManager.open(name)
        ...

The APK ships only  *_28.apk  (Android 9 / API 28)  and  *_29.apk  (Android 10 / API 29).
Our target device is Android 12 = SDK 31, so it looks for "*_31.apk", open() throws
FileNotFoundException, f/c.a() returns false, and the install driver falls back to
downloading from https://api.trip-happy.com - which is dead.  Result:

    c(1) "GMS environment needs update"
      -> uninstall old -> c(4) "Installing, please do not exit"
      -> asset missing -> download fails -> c(0) "Install error, please retry"
      -> back to c(1) ... forever

Patch: hard-wire the SDK number used for the asset filename to 29 (the Android 10 set,
which is what the user selected).  One instruction changes:

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I     (4 bytes: 62 12 xx xx)
    ->
    const/16 v2, 0x1d                                  (3 bytes: 13 12 1d 00)

smali re-assembles and re-aligns automatically; nothing else in the method moves.
"""
import io, os, re, shutil, sys

TARGET = 'work/travel_decoded/smali/com/x/plus/pro/beans/config/ApkInfo.smali'
BACKUP = 'work/travel_backup'

OLD = '    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I\n'
NEW = '    const/16 v2, 0x1d\n'          # 0x1d = 29  -> picks the *_29.apk set


def main():
    if not os.path.exists(TARGET):
        print('MISSING %s' % TARGET)
        return 1
    src = io.open(TARGET, encoding='utf-8').read()
    if NEW in src and 'SDK_INT' not in src.split('.method private a(Landroid/content/Context;)V')[1][:1200]:
        print('already patched?')
    if OLD not in src:
        print('ANCHOR NOT FOUND - dumping surrounding lines to help locate it')
        for i, ln in enumerate(src.splitlines(), 1):
            if 'SDK_INT' in ln:
                print('  line %d: %s' % (i, ln))
        return 1

    n = src.count(OLD)
    out = src.replace(OLD, NEW)
    os.makedirs(BACKUP, exist_ok=True)
    shutil.copy2(TARGET, os.path.join(BACKUP, 'ApkInfo.smali.pass3.orig'))
    io.open(TARGET, 'w', encoding='utf-8', newline='\n').write(out)
    print('patched %d occurrence(s) of the SDK_INT read -> const 29' % n)
    print('backup: %s' % os.path.join(BACKUP, 'ApkInfo.smali.pass3.orig'))

    # show the resulting method head
    lines = out.splitlines()
    for i, ln in enumerate(lines):
        if '.method private a(Landroid/content/Context;)V' in ln:
            print('\n--- resulting method head ---')
            for j in range(i, min(i + 34, len(lines))):
                s = lines[j].rstrip()
                if s.strip() and not s.strip().startswith('.line'):
                    print(s)
            break
    return 0


if __name__ == '__main__':
    sys.exit(main())
