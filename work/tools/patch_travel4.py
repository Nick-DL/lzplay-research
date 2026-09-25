#!/usr/bin/env python3
"""
Pass 4: stop the travel app from calling Huawei MDM uninstall, which crashes it.

Evidence (device logcat, com.qiyecomm):

    java.lang.SecurityException: Does not hava application management permission.:
        Neither user 10362 nor current process has
        com.huawei.permission.sec.MDM_APP_MANAGEMENT.
        at huawei.android.app.admin.TransactionSponsor.transactToUninstallPackage
        at huawei.android.app.admin.HwDevicePolicyManagerEx.uninstallPackage
        at com.huawei.android.app.admin.DevicePackageManager.uninstallPackage
        at com.x.plus.pro.e.c.b(InstallHelper.java:146)      <-- unguarded call
        at com.x.plus.pro.e.b.i(InitializeManager.java:258)  <-- no try/catch either

InstallHelper.uninstall(String pkg) has two branches:

    if (e/c.c(ctx, pkg)) {                       // NOT a system app
        g.uninstallPackage(admin, pkg, false);   // <-- Huawei MDM, signature-gated -> CRASH
        ...
    } else {                                     // IS a system app
        d.a(pkg);                                // <-- safe: shows the manual-uninstall dialog
    }

InitializeManager\$1.onClick already implements the safe behaviour for the GMS case
(it opens com.android.settings/.applications.InstalledAppDetailsTop).  So the fix is to
make InstallHelper always take the safe branch.

Patch: in com/x/plus/pro/e/c.smali, method b(Ljava/lang/String;)V, change

    if-eqz v0, :cond_0        (0x38 0x00 0x07 0x00)   ; if (!isSystemApp) -> cond_0
to
    goto :cond_0              (0xa8 0x00 0x00 0x00)   ; always go to the safe branch

which is possible because :cond_0 immediately follows the if.
"""
import io, os, re, shutil, sys

TARGET = 'work/travel_decoded/smali/com/x/plus/pro/e/c.smali'
BACKUP = 'work/travel_backup'

ANCHOR = 'uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;Z)V'
IF_LINE = re.compile(r'^(\s*)if-eqz(\s+)(v\d+)(\s*),(\s*)(:\w+)\s*$')


def main():
    if not os.path.exists(TARGET):
        print('MISSING %s' % TARGET)
        return 1
    src = io.open(TARGET, encoding='utf-8').read()
    lines = src.splitlines()

    # locate the uninstallPackage call
    call_idx = None
    for i, ln in enumerate(lines):
        if ANCHOR in ln:
            call_idx = i
            break
    if call_idx is None:
        print('ANCHOR NOT FOUND: %s' % ANCHOR)
        return 1

    print('found uninstallPackage call at line %d' % (call_idx + 1))
    # walk backwards for the guarding if-eqz
    if_idx = None
    for j in range(call_idx, max(-1, call_idx - 25), -1):
        m = IF_LINE.match(lines[j])
        if m:
            if_idx = j
            print('  guarding branch at line %d: %r' % (j + 1, lines[j].strip()))
            break
    if if_idx is None:
        print('no if-eqz found before the call; dumping context for manual patching:')
        for k in range(max(0, call_idx - 20), call_idx + 3):
            print('%5d  %s' % (k + 1, lines[k]))
        return 1

    m = IF_LINE.match(lines[if_idx])
    indent, sp1, reg, sp2, sp3, label = m.groups()
    new_line = '%sgoto%s%s' % (indent, sp1, label)
    print('  -> replacing with: %r' % new_line.strip())

    lines[if_idx] = new_line
    out = '\n'.join(lines) + ('\n' if src.endswith('\n') else '')

    os.makedirs(BACKUP, exist_ok=True)
    shutil.copy2(TARGET, os.path.join(BACKUP, 'e_c.smali.pass4.orig'))
    io.open(TARGET, 'w', encoding='utf-8', newline='\n').write(out)
    print('patched; backup at %s' % os.path.join(BACKUP, 'e_c.smali.pass4.orig'))

    print('\n--- resulting method ---')
    for i, ln in enumerate(out.splitlines()):
        if re.match(r'^\.method public final b\(Ljava/lang/String;\)V', ln):
            for k in range(i, min(i + 30, len(out.splitlines()))):
                s = out.splitlines()[k].rstrip()
                if s.strip() and not s.strip().startswith('.line'):
                    print(s)
            break
    return 0


if __name__ == '__main__':
    sys.exit(main())
