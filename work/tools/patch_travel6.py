#!/usr/bin/env python3
"""
Pass 6: fix the branch direction in InstallHelper.install(String).

Pass 5 set the two constants one way round and the branch went the wrong way:

    408  const/16 v0, 0x1d        ; 29
    410  const/16 v1, 0x1c        ; 28
    412  if-le v0, v1, :cond_0    ; "if v0 <= v1 goto :cond_0"  -> 29 <= 28 is FALSE
         ...falls through into the ORIGINAL Huawei branch (line 446) -> CRASH
    451  :cond_0                  ; <- the safe startActivity patch lives here

So the cold path was being taken.  Swapping the two constants makes the test true:

    408  const/16 v0, 0x1c        ; 28
    410  const/16 v1, 0x1d        ; 29
    412  if-le v0, v1, :cond_0    ; 28 <= 29 is TRUE -> jumps to :cond_0

and :cond_0 now contains the standard ACTION_VIEW install intent (from pass 5),
so the app hands the APK to the normal system installer instead of calling
Huawei MDM installPackage.

Note: `if-le` in Dalvik means "branch if vA <= vB".
"""
import io, os, re, shutil, sys

TARGET = 'work/travel_decoded/smali/com/x/plus/pro/e/c.smali'
BACKUP = 'work/travel_backup'

A = '    const/16 v0, 0x1d'
B = '    const/16 v1, 0x1c'
A2 = '    const/16 v0, 0x1c'
B2 = '    const/16 v1, 0x1d'


def main():
    src = io.open(TARGET, encoding='utf-8').read()
    lines = src.splitlines()

    # locate the install method and its two constants
    start = None
    for i, ln in enumerate(lines):
        if ln.startswith('.method public final a(Ljava/lang/String;)V'):
            start = i
            break
    if start is None:
        print('install method not found')
        return 1

    ai = bi = None
    for j in range(start, min(start + 20, len(lines))):
        if lines[j] == A and ai is None:
            ai = j
        elif lines[j] == B and bi is None:
            bi = j
    if ai is None or bi is None:
        print('constants not found; context:')
        for j in range(start, min(start + 16, len(lines))):
            print('%5d  %r' % (j + 1, lines[j]))
        return 1

    print('swapping constants at lines %d and %d' % (ai + 1, bi + 1))
    lines[ai] = A2
    lines[bi] = B2
    out = '\n'.join(lines) + ('\n' if src.endswith('\n') else '')

    os.makedirs(BACKUP, exist_ok=True)
    shutil.copy2(TARGET, os.path.join(BACKUP, 'e_c.smali.pass6.orig'))
    io.open(TARGET, 'w', encoding='utf-8', newline='\n').write(out)
    print('backup: %s' % os.path.join(BACKUP, 'e_c.smali.pass6.orig'))

    print('\n--- resulting branch ---')
    ol = out.splitlines()
    for j in range(ai - 2, min(ai + 8, len(ol))):
        s = ol[j].rstrip()
        if s.strip() and not s.strip().startswith('.line'):
            print('%5d  %s' % (j + 1, s))
    print()
    print('expected: 28 <= 29 -> TRUE -> jumps to :cond_0 (the startActivity patch)')
    return 0


if __name__ == '__main__':
    sys.exit(main())
