#!/usr/bin/env python3
"""
Chat Partner patch 4: skip the dead update server on startup.

SplashActivity.onCreate -> UpdateInstance.b(Context, IUpdateRequestCallback)
which does exactly one thing:

    sget-object v0, Lc/s/a/i/f;->a:Lc/s/a/i/a;
    const-string v1, "http://api.chat-kingdom.com/index.php/upgrade/checkinfo/"
    invoke-interface {v0, p0, v1, p1}, Lc/s/a/i/a;->a(Context;String;IUpdateRequestCallback;)V

api.chat-kingdom.com is gone, so the request fails, the callback's a(String) fires and
SplashActivity launches ErrorActivity - the app never reaches the login screen.

Fix: call the callback's onSuccess() straight away and skip the HTTP request.
This is the exact equivalent of travel-app patch 2 (a/a$1.a() -> b()).

Downstream, onSuccess() in SplashActivity starts:
    com.ssss.ss_im.login.LoginActivity
and the local package manifest is read from assets/tyq_resource_Q.json (UpdateImp.a(Context)),
which already matches the *_29 APKs - so no server is actually needed.
"""
import io, os, shutil, sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
TARGET = os.path.join(BASE, 'work', 'chat_smali', 'c', 's', 'a', 'i', 'f.smali')
BACKUP = os.path.join(BASE, 'work', 'chat_backup_smali')

OLD = [
    '    sget-object v0, Lc/s/a/i/f;->a:Lc/s/a/i/a;',
    '    const-string v1, "http://api.chat-kingdom.com/index.php/upgrade/checkinfo/"',
    '    invoke-interface {v0, p0, v1, p1}, Lc/s/a/i/a;->a(Landroid/content/Context;Ljava/lang/String;Lc/s/a/i/b;)V',
    '    return-void',
]

NEW = [
    '    if-eqz p1, :cond_skip',
    '    invoke-interface {p1}, Lc/s/a/i/b;->onSuccess()V',
    '    :cond_skip',
    '    return-void',
]


def main():
    src = io.open(TARGET, encoding='utf-8').read()
    lines = src.splitlines()

    # baksmali separates instructions with blank lines, so match on the
    # sequence of significant (non-blank, non-.line) lines instead.
    def significant(seq):
        return [l.strip() for l in seq if l.strip() and not l.strip().startswith('.line')]

    want = significant(OLD)
    idx = None
    for i, ln in enumerate(lines):
        if 'sget-object v0, Lc/s/a/i/f;->a:Lc/s/a/i/a;' not in ln:
            continue
        got, j = [], i
        while len(got) < len(want) and j < len(lines):
            s = lines[j].strip()
            if s and not s.startswith('.line'):
                got.append(s)
            j += 1
        if got == want:
            idx, end = i, j      # end = first line after the return-void
            break

    if idx is None:
        print('anchor not found; dumping the method:')
        for i, ln in enumerate(lines):
            if '.method public static b(Landroid/content/Context;Lc/s/a/i/b;)V' in ln:
                for k in range(i, min(i + 16, len(lines))):
                    print('%5d  %r' % (k + 1, lines[k]))
                break
        return 1

    os.makedirs(BACKUP, exist_ok=True)
    dst = os.path.join(BACKUP, 'f.smali.orig')
    if not os.path.exists(dst):
        shutil.copy2(TARGET, dst)

    # replace everything from the sget through the return-void (and any blank
    # lines in between) with the direct-callback sequence
    merged = lines[:idx] + NEW + lines[end:]
    out = '\n'.join(merged) + '\n'
    io.open(TARGET, 'w', encoding='utf-8', newline='\n').write(out)

    print('patched UpdateInstance.b(): HTTP request -> direct onSuccess()')
    for i, ln in enumerate(out.splitlines(), 1):
        if 160 <= i <= 180:
            print('%5d  %s' % (i, ln))
    return 0


if __name__ == '__main__':
    sys.exit(main())
