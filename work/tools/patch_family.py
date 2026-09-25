#!/usr/bin/env python3
"""
Generic patch set for the "qiyetong" family of GMS-installer apps.

旅游必备 (com.qiyecomm / com.x.plus.pro)  and  Chat Partner (com.tyq.pro / com.qiyetong.pro)
are two skins of the same codebase; their bugs are literally line-for-line the same:

  1. Network gate          NetworkUtil.isNetworkConnected() -> false when offline
  2. Dead server           the app's own update API is gone -> "check failed" dialog
  3. Hardcoded SDK         asset name = pkg + "_" + Build.VERSION.SDK_INT + ".apk"
                           but only _28/_29 assets ship -> FileNotFoundException on API 31
  4. Unguarded Huawei MDM  DevicePackageManager.installPackage / uninstallPackage
                           throw SecurityException (MDM_APP_MANAGEMENT is signature-gated)
                           -> crashes the app
  5. FileUriExposed        Uri.fromFile() cannot leave the process since API 24
  6. Obfuscated FileProvider  the method is `a`, not `getUriForFile`

This script applies the equivalent of travel-app patches 1,3,4,5,6,7,8 to whichever
app you point it at, driven by a per-app "profile".

Usage:
    python patch_family.py travel    # com.x.plus.pro     (work/travel_decoded)
    python patch_family.py chat      # com.qiyetong.pro   (work/chat_decoded)
    python patch_family.py chat --check     # report only, change nothing
"""
import io, os, re, shutil, sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'


# --------------------------------------------------------------------------- profiles
PROFILES = {
    'travel': {
        'name': '旅游必备 (com.qiyecomm)',
        'root': os.path.join(BASE, 'work', 'travel_decoded'),
        'backup': os.path.join(BASE, 'work', 'travel_backup'),
        'tag': 'travel',
        # InstallHelper
        'helper': 'smali/com/x/plus/pro/e/c.smali',
        'install_method': '.method public final a(Ljava/lang/String;)V',
        'uninstall_method': '.method public final b(Ljava/lang/String;)V',
        # the asset-name builder that reads SDK_INT
        'sdkint_files': ['smali/com/x/plus/pro/beans/config/ApkInfo.smali'],
        # FileProvider authority constant holder (has a:String = pkg+".provider")
        'authority_class': 'Lcom/x/plus/pro/d/a;',
        # the Context field name used by InstallHelper
        'ctx_field': 'a',
        'install_file_uri_anchor':
            '    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;',
        'uninstall_branch': 'if-eqz v0, :cond_0',
        'provider_prefix': 'com/qiyecomm/provider/',
        # cache subdir that FileProvider exposes, used in comments only
        'cache_subdir': 'file',
    },
    'chat': {
        'name': 'Chat Partner (com.tyq.pro)',
        'root': os.path.join(BASE, 'work', 'chat_smali_only'),
        'backup': os.path.join(BASE, 'work', 'chat_backup_smali'),
        'tag': 'chat',
        'helper': 'smali/c/s/a/e/h.smali',
        'install_method': '.method public b(Ljava/lang/String;)V',
        'uninstall_method': '.method public c(Ljava/lang/String;)V',
        'sdkint_files': ['smali/com/qiyetong/pro/models/AppInfo.smali'],
        'authority_class': 'Lc/s/a/d/a;',
        'ctx_field': 'c',
        'install_file_uri_anchor': None,     # built below from the SDK branch
        'uninstall_branch': 'if-eqz v0, :cond_0',
        'provider_prefix': 'com/tyq.pro/provider/',
        'cache_subdir': 'file',
    },
}


# --------------------------------------------------------------------------- helpers
def read(p):
    return io.open(p, encoding='utf-8').read()


def write(p, s):
    io.open(p, 'w', encoding='utf-8', newline='\n').write(s)


def backup(prof, path, suffix):
    os.makedirs(prof['backup'], exist_ok=True)
    dst = os.path.join(prof['backup'], os.path.basename(path) + suffix)
    if not os.path.exists(dst):
        shutil.copy2(path, dst)
    return dst


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


def next_code(lines, start, limit=None):
    end = limit if limit is not None else len(lines)
    for j in range(start, end):
        s = lines[j].strip()
        if s and not s.startswith('.line'):
            return j
    return None


def set_locals(lines, mstart, need, report):
    for j in range(mstart, mstart + 6):
        m = re.match(r'\s*\.locals\s+(\d+)', lines[j])
        if m:
            cur = int(m.group(1))
            if cur < need:
                lines[j] = '    .locals %d' % need
                report.append('  .locals %d -> %d (line %d)' % (cur, need, j + 1))
            return


# --------------------------------------------------------------------------- patches
def patch_sdkint(prof, report, check):
    """Asset filename: pkg + '_' + Build.VERSION.SDK_INT + '.apk'  ->  fixed 29."""
    for rel in prof['sdkint_files']:
        p = os.path.join(prof['root'], rel)
        if not os.path.exists(p):
            report.append('  SKIP (missing) %s' % rel)
            continue
        src = read(p)
        lines = src.splitlines()
        hit = None
        for i, ln in enumerate(lines):
            if 'sget' in ln and 'Landroid/os/Build$VERSION;->SDK_INT:I' in ln:
                # only the one feeding a StringBuilder append right after
                nxt = next_code(lines, i + 1)
                if nxt is not None and 'StringBuilder;->append(I)' in lines[nxt]:
                    hit = i
                    reg = re.search(r'sget\s+(\S+),', ln).group(1)
                    break
        if hit is None:
            report.append('  SDK_INT-for-filename not found in %s' % rel)
            continue
        reg = re.search(r'sget\s+(\S+),', lines[hit]).group(1)
        new = '    const/16 %s, 0x1d' % reg
        report.append('  %s:%d  %s -> %s' % (rel, hit + 1, lines[hit].strip(), new.strip()))
        if not check:
            backup(prof, p, '.sdkint.orig')
            lines[hit] = new
            write(p, '\n'.join(lines) + '\n')


def patch_helper_install(prof, report, check):
    """Huawei installPackage -> ACTION_VIEW intent via FileProvider; fix branch direction."""
    p = os.path.join(prof['root'], prof['helper'])
    if not os.path.exists(p):
        report.append('  helper not found: %s' % prof['helper'])
        return
    src = read(p)
    lines = src.splitlines()
    mstart = find_method(lines, prof['install_method'])
    if mstart is None:
        report.append('  install method not found in %s' % prof['helper'])
        return
    mend = method_end(lines, mstart)

    # --- E1: make the SDK test always take the :cond_0 branch -----------------
    #  sget vX, SDK_INT ; const/16 vY, 0x1c ; if-le vX, vY, :cond_0
    #  -> const/16 vX, 0x1c ; const/16 vY, 0x1d  (28 <= 29 -> true -> jumps)
    sget_i = cond_i = None
    for j in range(mstart, mend):
        if 'Landroid/os/Build$VERSION;->SDK_INT:I' in lines[j]:
            sget_i = j
        m = re.match(r'\s*const/16\s+(\S+),\s*0x1c\s*$', lines[j])
        if m and sget_i is not None:
            cond_i = j
            cond_reg = m.group(1)
        if 'if-le' in lines[j] and cond_i is not None:
            ifle_i = j
            break
    else:
        ifle_i = None
    if sget_i is None or cond_i is None or ifle_i is None:
        report.append('  SDK branch pattern not found in install method')
        return
    sreg = re.search(r'sget\s+(\S+),', lines[sget_i]).group(1)
    report.append('  %s:%d  %s -> const/16 %s, 0x1c' %
                  (prof['helper'], sget_i + 1, lines[sget_i].strip(), sreg))
    report.append('  %s:%d  %s -> const/16 %s, 0x1d' %
                  (prof['helper'], cond_i + 1, lines[cond_i].strip(), cond_reg))
    if not check:
        backup(prof, p, '.install.orig')
        lines[sget_i] = '    const/16 %s, 0x1c' % sreg
        lines[cond_i] = '    const/16 %s, 0x1d' % cond_reg

    # --- E2: replace the whole :cond_0 body (Huawei install) with a VIEW intent --
    cond0 = None
    for j in range(mstart, mend):
        if lines[j].strip() == ':cond_0':
            cond0 = j
            break
    goto0 = None
    if cond0 is not None:
        for j in range(cond0, mend):
            if lines[j].strip() == ':goto_0':
                goto0 = j
                break
    if cond0 is None or goto0 is None:
        report.append('  :cond_0 / :goto_0 not found in install method')
        return

    ctx = prof['ctx_field']
    rep = [
        '    const-string v0, "application/vnd.android.package-archive"',
        '    new-instance v1, Landroid/content/Intent;',
        '    const-string v2, "android.intent.action.VIEW"',
        '    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V',
        '    new-instance v2, Ljava/io/File;',
        '    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V',
        '    iget-object v3, p0, %s->%s:Landroid/content/Context;' % (prof['helper_class'], ctx),
        '    sget-object v4, %s->a:Ljava/lang/String;' % prof['authority_class'],
        '    invoke-static {v3, v4, v2}, Landroidx/core/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;',
        '    move-result-object v2',
        '    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;',
        '    move-result-object v0',
        '    const/high16 v1, 0x10000000',
        '    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;',
        '    iget-object v1, p0, %s->%s:Landroid/content/Context;' % (prof['helper_class'], ctx),
        '    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V',
    ]
    report.append('  %s:%d..%d  :cond_0 body -> standard ACTION_VIEW install intent'
                  % (prof['helper'], cond0 + 2, goto0))
    if not check:
        lines = lines[:cond0 + 1] + rep + [''] + lines[goto0:]
        set_locals(lines, mstart, 5, report)
        write(p, '\n'.join(lines) + '\n')


def patch_helper_uninstall(prof, report, check):
    """uninstallPackage is unguarded -> route to the safe branch instead."""
    p = os.path.join(prof['root'], prof['helper'])
    if not os.path.exists(p):
        return
    src = read(p)
    lines = src.splitlines()
    mstart = find_method(lines, prof['uninstall_method'])
    if mstart is None:
        report.append('  uninstall method not found')
        return
    mend = method_end(lines, mstart)
    call = None
    for j in range(mstart, mend):
        if 'DevicePackageManager;->uninstallPackage' in lines[j]:
            call = j
            break
    if call is None:
        report.append('  uninstallPackage call not found')
        return
    # the guarding if-eqz just above it
    gi = None
    for j in range(call, max(mstart, call - 20), -1):
        m = re.match(r'^(\s*)if-eqz(\s+)(\S+)(\s*),(\s*)(:\w+)\s*$', lines[j])
        if m:
            gi = j
            new = '%sgoto%s%s' % (m.group(1), m.group(2), m.group(6))
            break
    if gi is None:
        report.append('  guarding if-eqz not found before uninstallPackage')
        return
    report.append('  %s:%d  %s -> %s' % (prof['helper'], gi + 1, lines[gi].strip(), new.strip()))
    if not check:
        backup(prof, p, '.uninstall.orig')
        lines[gi] = new
        write(p, '\n'.join(lines) + '\n')


# --------------------------------------------------------------------------- main
def main():
    which = sys.argv[1] if len(sys.argv) > 1 else 'travel'
    check = '--check' in sys.argv
    if which not in PROFILES:
        print('usage: patch_family.py {%s} [--check]' % '|'.join(PROFILES))
        return 2
    prof = PROFILES[which]
    prof['helper_class'] = 'L' + prof['helper'].replace('smali/', '').replace('/', '.')[:-6] + ';'

    print('=' * 78)
    print('PATCH PROFILE: %s%s' % (prof['name'], '   [CHECK ONLY]' if check else ''))
    print('root: %s' % prof['root'])
    print('=' * 78)

    report = []
    print('\n[1] SDK-hardcoded asset filename')
    patch_sdkint(prof, report, check)
    for r in report: print(r)
    report.clear()

    print('\n[2] InstallHelper.install : Huawei MDM -> system installer')
    patch_helper_install(prof, report, check)
    for r in report: print(r)
    report.clear()

    print('\n[3] InstallHelper.uninstall : avoid unguarded MDM call')
    patch_helper_uninstall(prof, report, check)
    for r in report: print(r)

    print('\n' + ('(check only - nothing written)' if check else 'done.'))
    return 0


if __name__ == '__main__':
    sys.exit(main())
