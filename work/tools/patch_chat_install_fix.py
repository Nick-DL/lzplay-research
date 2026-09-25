#!/usr/bin/env python3
"""
Chat Partner patch 2 (fixed): rewrite InstallHelper.b(String) safely.

The first attempt produced a VerifyError:

    Verifier rejected class c.s.a.e.h: void c.s.a.e.h.b(java.lang.String) failed to verify:
    [0x1F] cannot access instance field android.content.Context c.s.a.e.h.c
    from object of type Precise Reference: java.lang.String

Root cause: `.registers 6` in this method means only v0..v3 are true locals; p0 and p1
are v4/v5.  The leftover cold branch (Huawei install for SDK<=28) began with
`iget-object v0, p0, ...` whose *result* lands in v0, but the branch also left p0
holding a String on one path, so at the `:goto_2e` merge the verifier could not agree
on p0's type.

Fix: rewrite the whole method with a register allocation that never touches p0/p1, and
turn the now-dead cold branch into a plain `goto :goto_2e` (no MDM code at all).

  v0 = mime type / Intent result      v1 = Intent / flags
  v2 = File -> content Uri            v3 = Context -> authority String
"""
import io, os, shutil, sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
TARGET = os.path.join(BASE, 'work', 'chat_smali', 'c', 's', 'a', 'e', 'h.smali')
BACKUP = os.path.join(BASE, 'work', 'chat_backup_smali')

WARM = [
    '    const-string v0, "application/vnd.android.package-archive"',
    '',
    '    new-instance v1, Landroid/content/Intent;',
    '',
    '    const-string v2, "android.intent.action.VIEW"',
    '',
    '    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V',
    '',
    '    iget-object v3, p0, Lc/s/a/e/h;->c:Landroid/content/Context;',
    '',
    '    sget-object v2, Lc/s/a/d/a;->a:Ljava/lang/String;',
    '',
    '    new-instance v1, Ljava/io/File;',
    '',
    '    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V',
    '',
    '    invoke-static {v3, v2, v1}, Landroidx/core/content/FileProvider;->a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;',
    '',
    '    move-result-object v1',
    '',
    '    const-string v0, "application/vnd.android.package-archive"',
    '',
    '    const-string v2, "android.intent.action.VIEW"',
    '',
    '    new-instance v3, Landroid/content/Intent;',
    '',
    '    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V',
    '',
    '    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;',
    '',
    '    move-result-object v0',
    '',
    '    const/high16 v1, 0x10000000',
    '',
    '    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;',
    '',
    '    iget-object v1, p0, Lc/s/a/e/h;->c:Landroid/content/Context;',
    '',
    '    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V',
    '',
    '    goto :goto_2e',
]

COLD = [
    '    :cond_27',
    '',
    '    goto :goto_2e',
]


def main():
    src = io.open(TARGET, encoding='utf-8').read()
    lines = src.splitlines()

    mstart = None
    for i, ln in enumerate(lines):
        if ln.rstrip() == '.method public b(Ljava/lang/String;)V':
            mstart = i
            break
    if mstart is None:
        print('install method not found')
        return 1
    mend = None
    for j in range(mstart + 1, len(lines)):
        if lines[j].strip() == '.end method':
            mend = j
            break

    # find the tail anchor (:goto_2e) that the rest of the method depends on
    tail = None
    for j in range(mstart, mend):
        if lines[j].strip() == ':goto_2e':
            tail = j
            break
    if tail is None:
        print(':goto_2e not found')
        return 1
    # the label is preceded by a blank line and a .line directive - keep from the
    # label itself onward
    print('install method: lines %d..%d, :goto_2e at %d' % (mstart + 1, mend + 1, tail + 1))

    os.makedirs(BACKUP, exist_ok=True)
    dst = os.path.join(BACKUP, 'h.smali.pre_install_fix.orig')
    shutil.copy2(TARGET, dst)

    new = (lines[:mstart + 1]
           + ['    .registers 6', '']
           + WARM + ['']
           + COLD + ['']
           + lines[tail:])
    out = '\n'.join(new) + '\n'
    io.open(TARGET, 'w', encoding='utf-8', newline='\n').write(out)

    print('rewrote InstallHelper.b(String): standard install intent, MDM branch removed')
    ol = out.splitlines()
    for i, ln in enumerate(ol):
        if ln.rstrip() == '.method public b(Ljava/lang/String;)V':
            for k in range(i, min(i + len(WARM) + len(COLD) + 6, len(ol))):
                print('%5d  %s' % (k + 1, ol[k]))
            break
    return 0


if __name__ == '__main__':
    sys.exit(main())
