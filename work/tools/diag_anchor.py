#!/usr/bin/env python3
"""Diagnose the exact text of the installPackage tail so the patch anchor matches."""
import io

F = 'work/travel_decoded/smali/com/x/plus/pro/e/c.smali'
lines = io.open(F, encoding='utf-8').read().splitlines()

print('--- repr of lines 440..450 ---')
for i in range(439, 450):
    print('%4d  %r' % (i + 1, lines[i]))

print()
print('--- repr of lines 450..460 ---')
for i in range(449, 460):
    print('%4d  %r' % (i + 1, lines[i]))

print()
target = '    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;'
print('looking for: %r' % target)
hits = [i + 1 for i, ln in enumerate(lines) if ln == target]
print('exact matches at lines: %s' % hits)

prefix = 'Lcom/huawei/android/app/admin/DevicePackageManager;->installPackage'
ip = [i + 1 for i, ln in enumerate(lines) if prefix in ln]
print('installPackage at lines: %s' % ip)
