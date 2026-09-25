#!/usr/bin/env python3
"""
Pass 5 (final): replace Huawei MDM installPackage with a standard Android install.

Crash being fixed (com.qiyecomm, on device):
    java.lang.SecurityException: Does not hava application management permission.:
        ... has com.huawei.permission.sec.MDM_APP_MANAGEMENT.
        at com.huawei.android.app.admin.DevicePackageManager.installPackage
        at com.x.plus.pro.e.c.a(InstallHelper.java:120)

InstallHelper.install(String apkPath) has two branches:

    sget v0, Build.VERSION.SDK_INT
    if-le v0, 0x1c, :cond_0                 ; SDK > 28 -> FileProvider URI branch
        ...build content:// URI, grantUriPermission...
        DevicePackageManager.installPackage(admin, uri.toString())     <-- CRASH
        goto :goto_0
    :cond_0                                  ; SDK <= 28 -> plain path branch
        DevicePackageManager.installPackage(admin, path)               <-- CRASH
    :goto_0
        ...postDelayed(timeout)...

Two edits, both tiny:

  E1.  sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
       -> const/16 v0, 0x1d          (29)
       makes `if-le v0, 0x1c` always true, so control always goes to :cond_0
       (the plain-path branch) - cancelling the first crash site.

  E2.  inside :cond_0, replace the Huawei install with a normal VIEW intent:
           i = new Intent(ACTION_VIEW)
           i.setDataAndType(Uri.fromFile(new File(path)), "application/vnd.android.package-archive")
           i.addFlags(FLAG_ACTIVITY_NEW_TASK)
           ctx.startActivity(i)

The user then gets the ordinary system installer and taps Install - which is exactly
"let the install proceed normally at the right moment".
"""
import io, os, re, shutil, sys

TARGET = 'work/travel_decoded/smali/com/x/plus/pro/e/c.smali'
BACKUP = 'work/travel_backup'

SDK_LINE = '    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I'
SDK_NEW = '    const/16 v0, 0x1d'

COND0_HDR = '    :cond_0'
HUAWEI_INSTALL_AT_COND0 = ('    invoke-virtual {v0, v1, p1}, '
                           'Lcom/huawei/android/app/admin/DevicePackageManager;'
                           '->installPackage(Landroid/content/ComponentName;Ljava/lang/String;)V')

REPLACEMENT = [
    '    const/16 v1, 0x3',
    '    invoke-static {p1, v1}, Landroid/content/Intent;->createViewIntent(Ljava/lang/String;I)Landroid/content/Intent;',  # placeholder, replaced below
]


def build_replacement():
    """Standard 'install this apk' intent, spelled out in smali."""
    return [
        '    const-string v0, "application/vnd.android.package-archive"',
        '    new-instance v1, Landroid/content/Intent;',
        '    const-string v2, "android.intent.action.VIEW"',
        '    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V',
        '    new-instance v2, Ljava/io/File;',
        '    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V',
        '    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;',
        '    move-result-object v2',
        '    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;',
        '    move-result-object v0',
        '    const/high16 v1, 0x10000000',
        '    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;',
        '    iget-object v1, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;',
        '    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V',
    ]


def main():
    src = io.open(TARGET, encoding='utf-8').read()
    lines = src.splitlines()
    changes = []

    # ---- E1: SDK_INT read -> constant 29 ----
    for i, ln in enumerate(lines):
        if ln == SDK_LINE:
            lines[i] = SDK_NEW
            changes.append('E1: line %d  SDK_INT -> const 29' % (i + 1))
            break
    else:
        print('E1 anchor not found')
        return 1

    # ---- E2: :cond_0's Huawei install -> standard install ----
    # There are several :cond_0 labels in this file; pick the one that owns the
    # installPackage call we care about (the plain-path branch, line ~456).
    hi = None
    for j, ln in enumerate(lines):
        if HUAWEI_INSTALL_AT_COND0 in ln:
            hi = j
            break
    if hi is None:
        print('E2 target (installPackage in :cond_0) not found')
        return 1
    ci = None
    for j in range(hi, max(-1, hi - 12), -1):
        if lines[j].strip().startswith(':cond_0'):
            ci = j
            break
    if ci is None:
        print('no :cond_0 immediately above the installPackage call; context:')
        for j in range(max(0, hi - 12), hi + 1):
            print('%5d  %r' % (j + 1, lines[j]))
        return 1
    print('E2 anchors: :cond_0 at line %d, installPackage at line %d'
          % (ci + 1, hi + 1))

    # replace the whole branch body: from :cond_0 (exclusive) up to :goto_0
    gi = None
    for j in range(hi, len(lines)):
        if lines[j].strip() == ':goto_0':
            gi = j
            break
    if gi is None:
        print(':goto_0 not found after the install call')
        return 1

    new_lines = lines[:ci + 1] + build_replacement() + [''] + lines[gi:]
    changes.append('E2: lines %d..%d  Huawei installPackage -> ACTION_VIEW intent'
                   % (ci + 2, gi))

    out = '\n'.join(new_lines) + ('\n' if src.endswith('\n') else '')

    os.makedirs(BACKUP, exist_ok=True)
    shutil.copy2(TARGET, os.path.join(BACKUP, 'e_c.smali.pass5.orig'))
    io.open(TARGET, 'w', encoding='utf-8', newline='\n').write(out)

    print('applied:')
    for c in changes:
        print('  ' + c)
    print('backup: %s' % os.path.join(BACKUP, 'e_c.smali.pass5.orig'))

    print('\n--- resulting method ---')
    ol = out.splitlines()
    for i, ln in enumerate(ol):
        if re.match(r'^\.method public final a\(Ljava/lang/String;\)V', ln):
            for k in range(i, min(i + 46, len(ol))):
                s = ol[k].rstrip()
                if s.strip() and not s.strip().startswith('.line'):
                    print(s)
            break
    return 0


if __name__ == '__main__':
    sys.exit(main())
