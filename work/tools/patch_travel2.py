#!/usr/bin/env python3
"""
Second-pass patch for 旅游必备: defeat the dead-server startup gate.

Finding: the splash flow calls
    update.e.a(Context, update.b)          -> HTTP GET
        https://api.trip-happy.com/index.php/upgrade/info/   <-- server is DEAD
    and the callback is DeviceHelper's com.x.plus.pro.a.a$1:
        a()  = failure -> shows R.string.register_net
               ("Connect Google network exception, Please check your network connection.")
               with a Retry button -> dead end
        b()  = success -> starts MainActivity

So the app is bricked at startup purely because its own (now offline) update
server is unreachable - not because of any Google or Huawei check.

Patch: rewrite a() so it delegates straight to b().  The startup flow then
continues exactly as it does on a successful update check, which is the closest
possible emulation of "the server answered".
"""
import io, os, re, shutil, sys

SMALI = 'work/travel_decoded/smali'
TARGET = os.path.join(SMALI, 'com', 'x', 'plus', 'pro', 'a', 'a$1.smali')
BACKUP = 'work/travel_backup'

NEW_A = """    .locals 4

    .line 46
    invoke-virtual {p0}, Lcom/x/plus/pro/a/a$1;->b()V

    return-void
"""

HEADER = re.compile(
    r'(?P<hdr>^\.method\s+[^\n]*?(?P<name>[\w$<>]+)\((?P<args>[^\n]*)\)(?P<ret>[^\n]*)\n)'
    r'(?P<body>.*?)'
    r'(?P<end>^\.end method)',
    re.S | re.M)


def main():
    if not os.path.exists(TARGET):
        print('MISSING %s' % TARGET)
        return 1
    src = io.open(TARGET, encoding='utf-8').read()
    orig = src

    def repl(m):
        if m.group('name') != 'a':
            return m.group(0)
        if m.group('args').strip() != '' or m.group('ret').strip() != 'V':
            return m.group(0)
        print('  patching a/a$1;->a()V  -> delegate to b()V')
        return m.group('hdr') + NEW_A + m.group('end')

    out = HEADER.sub(repl, src)
    if out == orig:
        print('NO CHANGE - pattern did not match')
        return 1

    os.makedirs(BACKUP, exist_ok=True)
    shutil.copy2(TARGET, os.path.join(BACKUP, 'a$1.smali.pass2.orig'))
    io.open(TARGET, 'w', encoding='utf-8', newline='\n').write(out)
    print('  backup: %s' % os.path.join(BACKUP, 'a$1.smali.pass2.orig'))

    print('\n--- resulting a() and b() ---')
    for i, line in enumerate(io.open(TARGET, encoding='utf-8').read().splitlines(), 1):
        if i <= 42:
            print('%3d  %s' % (i, line))
    return 0


if __name__ == '__main__':
    sys.exit(main())
