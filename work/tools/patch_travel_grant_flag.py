#!/usr/bin/env python3
"""
Add FLAG_GRANT_READ_URI_PERMISSION to the travel app's installer intent.

Why the install was failing (measured on the Mate50):

    08:57:51.368  wm_create_activity: [... com.android.packageinstaller/.InstallStart,
                                      android.intent.action.VIEW,
                                      application/vnd.android.package-archive]
    08:57:51.437  wm_finish_activity: [... com.android.packageinstaller/.InstallStart,
                                      app-request]        <-- 2 ms later, self-finish
    08:57:53.392  wm_destroy_activity: [... InstallStart, finish-idle]

The installer launches and immediately rejects the content:// URI, because the intent
carries no read grant for it.  Then the app's 120 s watchdog fires and it shows
"安装异常，请重试。"

InstallHelper's original privileged branch did grant access explicitly:

    .line 119
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->grantUriPermission(
            Ljava/lang/String;Landroid/net/Uri;I)V      // "android", uri, FLAG_GRANT_READ

The ACTION_VIEW branch our earlier patch routes through has:

    const/high16 v1, 0x10000000
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

i.e. only FLAG_ACTIVITY_NEW_TASK (0x10000000).  It needs FLAG_GRANT_READ_URI_PERMISSION
(0x00000001) as well, so the fix is to OR both:

    const v1, 0x10000001

Since `const/high16 v1, 0x10000000` materialises the value in the high 16 bits, the
cleanest edit is to replace that pair of instructions with a single `const v1, 0x10000001`.

Usage:
    python tools/patch_travel_grant_flag.py --check
    python tools/patch_travel_grant_flag.py --run
"""
import io
import os
import shutil
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
TREE = os.path.join(BASE, 'work', 'travel_decoded')
TARGET = os.path.join(TREE, 'smali', 'com', 'x', 'plus', 'pro', 'e', 'c.smali')
BACKUP = os.path.join(BASE, 'work', 'travel_backup_grantflag')

OLD = """    const/high16 v1, 0x10000000
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    iget-object v1, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"""

NEW = """    # FLAG_ACTIVITY_NEW_TASK | FLAG_GRANT_READ_URI_PERMISSION
    # 缺了后者，系统安装器读不到 content:// URI，会在 2 毫秒内自己退出，
    # 表现为"安装异常，请重试"（120 秒看门狗超时）。
    const v1, 0x10000001
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    iget-object v1, p0, Lcom/x/plus/pro/e/c;->a:Landroid/content/Context;
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V"""


def main():
    run = '--run' in sys.argv

    print('=' * 76)
    print('PATCH installer intent: add FLAG_GRANT_READ_URI_PERMISSION')
    print('=' * 76)
    print('  target: %s' % os.path.relpath(TARGET, BASE))

    if not os.path.exists(TARGET):
        print('  ERROR: not found')
        return 1

    src = io.open(TARGET, encoding='utf-8').read()

    already = '0x10000001' in src
    present = OLD in src

    print('\n[state]')
    print('  already patched (0x10000001 present): %s' % ('YES' if already else 'no'))
    print('  patch anchor found                  : %s' % ('YES' if present else 'NO'))

    if already and not present:
        print('\n  nothing to do')
        return 0
    if not present:
        print('\n  ERROR: could not find the addFlags sequence.')
        print('  Showing every addFlags call in the file for reference:')
        for i, ln in enumerate(src.splitlines(), 1):
            if 'addFlags' in ln or '0x10000000' in ln or 'const/high16 v1' in ln:
                print('    %4d: %s' % (i, ln.strip()))
        return 1

    if not run:
        print('\n  would replace:')
        print('    const/high16 v1, 0x10000000')
        print('  with:')
        print('    const v1, 0x10000001     # NEW_TASK | GRANT_READ_URI_PERMISSION')
        print('\n(dry run - pass --run to apply)')
        return 0

    if not os.path.isdir(BACKUP):
        os.makedirs(BACKUP)
    bak = os.path.join(BACKUP, 'c.smali.orig')
    if not os.path.exists(bak):
        shutil.copy2(TARGET, bak)
        print('\n  backed up -> %s' % os.path.relpath(bak, BASE))

    out = src.replace(OLD, NEW, 1)
    io.open(TARGET, 'w', encoding='utf-8', newline='\n').write(out)

    chk = io.open(TARGET, encoding='utf-8').read()
    print('\n[applied]')
    print('  0x10000001 present : %s' % ('YES' if '0x10000001' in chk else 'NO'))
    print('  old high16 form gone: %s' % ('YES' if OLD not in chk else 'NO'))
    print('  size %d -> %d' % (len(src), len(chk)))
    return 0


if __name__ == '__main__':
    sys.exit(main())
