#!/usr/bin/env python3
"""
Patch Chat Partner (com.tyq.pro) by editing baksmali output, then reassemble with smali.

Why not apktool:  Chat Partner's resources.arsc has obfuscated resource type names
("unsupported res type name for bags. Found: c"), so apktool cannot decode - and with
-r it leaves a binary AndroidManifest.xml it cannot rebuild from.  So we bypass
resources entirely and only touch classes.dex:

    apktool.jar (bundled baksmali)  ->  smali tree
    patch 3 files
    apktool.jar (bundled smali)     ->  classes.dex
    rebuild the zip with Python, re-sign with apksigner

Bugs fixed (identical to the travel app's, line for line):

  1. AppInfo.a(Context)  - asset name built with Build.VERSION.SDK_INT, but only
                           _28/_29 assets exist -> FileNotFoundException on API 31
  2. InstallHelper.b(String) - two unguarded Huawei DevicePackageManager.installPackage
                           calls that throw SecurityException and crash the app
  3. InstallHelper.c(String) - unguarded DevicePackageManager.uninstallPackage

baksmali numbers labels per-DEX (:cond_27, :goto_2e, ...), so labels are discovered
dynamically rather than hard-coded.
"""
import io, os, re, shutil, sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
ROOT = os.path.join(BASE, 'work', 'chat_smali')
BACKUP = os.path.join(BASE, 'work', 'chat_backup_smali')

HELPER = os.path.join(ROOT, 'c', 's', 'a', 'e', 'h.smali')        # InstallHelper
APPINFO = os.path.join(ROOT, 'com', 'qiyetong', 'pro', 'models', 'AppInfo.smali')

INSTALL_SIG = '.method public b(Ljava/lang/String;)V'
UNINSTALL_SIG = '.method public c(Ljava/lang/String;)V'

report = []


def read(p):
    return io.open(p, encoding='utf-8').read()


def write(p, s):
    io.open(p, 'w', encoding='utf-8', newline='\n').write(s)


def backup(p, suffix):
    os.makedirs(BACKUP, exist_ok=True)
    d = os.path.join(BACKUP, os.path.basename(p) + suffix)
    if not os.path.exists(d):
        shutil.copy2(p, d)
    return d


def find_method(lines, sig):
    for i, ln in enumerate(lines):
        if ln.rstrip() == sig:
            return i
    return None


def method_end(lines, start):
    for j in range(start + 1, len(lines)):
        if lines[j].strip() == '.end method':
            return j
    return len(lines) - 1


def next_code(lines, start, end):
    for j in range(start, end):
        s = lines[j].strip()
        if s and not s.startswith('.line'):
            return j
    return None


# ------------------------------------------------------------------ 1. SDK filename
def patch_sdk_filename():
    src = read(APPINFO)
    lines = src.splitlines()
    hit = None
    for i, ln in enumerate(lines):
        if 'sget' in ln and 'Landroid/os/Build$VERSION;->SDK_INT:I' in ln:
            nxt = next_code(lines, i + 1, len(lines))
            if nxt is not None and 'StringBuilder;->append(I)' in lines[nxt]:
                hit = i
                break
    if hit is None:
        report.append('  [1] SDK_INT-for-filename NOT FOUND in AppInfo')
        return
    reg = re.search(r'sget\s+(\S+),', lines[hit]).group(1)
    report.append('  [1] AppInfo.smali:%d  %s  ->  const/16 %s, 0x1d'
                  % (hit + 1, lines[hit].strip(), reg))
    backup(APPINFO, '.sdk.orig')
    lines[hit] = '    const/16 %s, 0x1d' % reg
    write(APPINFO, '\n'.join(lines) + '\n')


# --------------------------------------------------- 2. install: Huawei MDM -> Intent
STD_INSTALL = [
    # v0 = mime type                 v1 = Intent
    # v2 = file, then the content Uri  v3 = Context     v4 = authority
    # The method declares .registers 6 == v0..v5 + p0,p1, so v0..v4 are all in scope.
    '    const-string v0, "application/vnd.android.package-archive"',
    '    new-instance v1, Landroid/content/Intent;',
    '    const-string v2, "android.intent.action.VIEW"',
    '    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V',
    '    new-instance v2, Ljava/io/File;',
    '    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V',
    '    iget-object v3, p0, Lc/s/a/e/h;->c:Landroid/content/Context;',
    '    sget-object v4, Lc/s/a/d/a;->a:Ljava/lang/String;',
    '    invoke-static {v3, v4, v2}, Landroidx/core/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;',
    '    move-result-object v2',
    '    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;',
    '    move-result-object v0',
    '    const/high16 v1, 0x10000000',
    '    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;',
    '    iget-object v1, p0, Lc/s/a/e/h;->c:Landroid/content/Context;',
    '    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V',
]


def registers_ok(mstart, mend):
    """.registers N means v0..v(N-1) plus p0.. ; need at least 5 for v0..v4."""
    for j in range(mstart, min(mstart + 4, mend)):
        m = re.match(r'\s*\.registers\s+(\d+)', lines_global[j])
        if m:
            return int(m.group(1)) >= 5, int(m.group(1))
    return False, 0


def patch_install():
    src = read(HELPER)
    lines = src.splitlines()
    mstart = find_method(lines, INSTALL_SIG)
    if mstart is None:
        report.append('  [2] install method not found')
        return
    mend = method_end(lines, mstart)

    # locate the SDK test and the label it jumps to
    sget_i = None
    for j in range(mstart, mend):
        if 'Landroid/os/Build$VERSION;->SDK_INT:I' in lines[j]:
            sget_i = j
            break
    if sget_i is None:
        report.append('  [2] SDK_INT test not found in install method')
        return
    ifle_i = None
    for j in range(sget_i, min(sget_i + 8, mend)):
        if 'if-le' in lines[j]:
            ifle_i = j
            break
    if ifle_i is None:
        report.append('  [2] if-le not found after SDK_INT')
        return
    m = re.search(r'if-le\s+\S+,\s*\S+,\s*(:\w+)', lines[ifle_i])
    cold_label = m.group(1)

    # the legacy branch label it falls through to
    goto_i = None
    for j in range(ifle_i, mend):
        if lines[j].strip().startswith('goto '):
            goto_i = j
            break
    if goto_i is None:
        report.append('  [2] goto label after the legacy branch not found')
        return
    warm_label = lines[goto_i].strip().split()[-1]

    # the first MDM install call (the one that crashes)
    call1 = None
    for j in range(ifle_i, mend):
        if 'DevicePackageManager;->installPackage' in lines[j]:
            call1 = j
            break
    if call1 is None:
        report.append('  [2] installPackage call not found')
        return

    report.append('  [2] install method: sdk test @%d, cold label %s, warm label %s'
                  % (sget_i + 1, cold_label, warm_label))
    report.append('  [2] replacing the whole SDK>28 branch (%d..%d) with a standard'
                  ' ACTION_VIEW install intent' % (sget_i + 1, goto_i))

    if True:
        backup(HELPER, '.install.orig')
        # keep everything up to (not including) the sget; drop through to goto_i
        new = lines[:sget_i] + STD_INSTALL + [''] + lines[goto_i:]
        write(HELPER, '\n'.join(new) + '\n')
        # the dead legacy branch still exists after goto; neutralise its MDM call
        s2 = read(HELPER)
        l2 = s2.splitlines()
        n = 0
        for j, ln in enumerate(l2):
            if 'DevicePackageManager;->installPackage' in ln:
                l2[j] = '    nop'
                l2[j - 1] = '    nop'
                n += 1
        write(HELPER, '\n'.join(l2) + '\n')
        report.append('  [2] neutralised %d remaining installPackage call(s) with nop' % n)


# ------------------------------------------------- 3. uninstall: route to safe path
def patch_uninstall():
    src = read(HELPER)
    lines = src.splitlines()
    mstart = find_method(lines, UNINSTALL_SIG)
    if mstart is None:
        report.append('  [3] uninstall method not found')
        return
    mend = method_end(lines, mstart)
    call = None
    for j in range(mstart, mend):
        if 'DevicePackageManager;->uninstallPackage' in lines[j]:
            call = j
            break
    if call is None:
        report.append('  [3] uninstallPackage call not found')
        return
    gi = None
    for j in range(call, max(mstart, call - 20), -1):
        mm = re.match(r'^(\s*)if-eqz(\s+\S+,\s*)(:\w+)\s*$', lines[j])
        if mm:
            gi = j
            new = '%sgoto%s%s' % (mm.group(1), mm.group(2), mm.group(3))
            break
    if gi is None:
        report.append('  [3] guarding if-eqz not found')
        return
    report.append('  [3] uninstall: %s  ->  %s' % (lines[gi].strip(), new.strip()))
    if True:
        backup(HELPER, '.uninstall.orig')
        lines[gi] = new
        # the MDM call is now unreachable but smali still has to assemble it: keep it
        write(HELPER, '\n'.join(lines) + '\n')


# ------------------------------------------------------------------------------ main
check = '--check' in sys.argv

print('=' * 78)
print('CHAT PARTNER PATCHER   root=%s%s' % (ROOT, '   [CHECK ONLY]' if check else ''))
print('=' * 78)

for p, label in ((APPINFO, 'AppInfo.smali'), (HELPER, 'InstallHelper (c/s/a/e/h)')):
    print('  %-28s %s' % (label, 'OK' if os.path.exists(p) else 'MISSING'))

print('\n[1] hardcoded SDK asset filename')
patch_sdk_filename()
for r in report: print(r)
report.clear()

print('\n[2] installPackage (Huawei MDM) -> system installer')
patch_install()
for r in report: print(r)
report.clear()

print('\n[3] uninstallPackage (Huawei MDM) -> safe branch')
patch_uninstall()
for r in report: print(r)

print('\n' + ('(check only - nothing written)' if check else 'patched.'))
