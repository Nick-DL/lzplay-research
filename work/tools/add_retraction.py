#!/usr/bin/env python3
"""Insert a retraction notice into the goal-reached document."""
import glob
import io
import os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'

# find the file by a stable ASCII-ish substring
cands = glob.glob(os.path.join(BASE, 'docs', '01-lzplay', '*GMS*.md'))
if not cands:
    print('target doc not found')
    raise SystemExit(1)
P = cands[0]
print('target: %s' % P)

WARN = (
    u'> \u26a0\ufe0f **\u91cd\u8981\u66f4\u6b63\uff08\u540e\u8865\uff09**\uff1a'
    u'\u672c\u6587\u6863\u628a\u201c\u5e94\u7528\u542f\u52a8\u7ba1\u7406\u767d\u540d\u5355\u201d'
    u'\u5f53\u4f5c\u51b3\u5b9a\u6027\u56e0\u7d20\uff0c**\u8be5\u7ed3\u8bba\u5df2\u88ab\u63a8\u7ffb**\u3002\n'
    u'>\n'
    u'> \u7528\u6237\u5b9e\u9645\u8bbe\u7684\u662f GSF \u4e09\u4e2a\u542f\u52a8\u65b9\u5f0f'
    u'**\u5168\u90e8\u7981\u6b62**\uff08\u4e0d\u662f\u653e\u884c\uff09\uff0c\u800c GMS \u5378\u8f7d'
    u'\u53d1\u751f\u5728**\u66f4\u665a**\u3002\u4e24\u4e2a\u5019\u9009\u89e3\u91ca\u90fd\u5df2\u6392\u9664\u3002\n'
    u'>\n'
    u'> \u53e6\uff1a`provider is prevented for not-prevent` \u8fd9\u53e5\u65e5\u5fd7\u7684 reason '
    u'**\u4e0d\u4ee3\u8868\u201c\u672a\u62e6\u622a\u201d**\uff08\u5e73\u677f\u4e0a\u5b83\u548c\u5b9e\u9645'
    u'\u62e6\u622a\u540c\u65f6\u51fa\u73b0\uff09\u3002\n'
    u'> \u6709\u5224\u522b\u529b\u7684\u4fe1\u53f7\u662f **`E shouldPreventStartProvider` '
    u'\u8fd9\u6761\u662f\u5426\u51fa\u73b0**\u3002\n'
    u'>\n'
    u'> \u8be6\u89c1 [\u672a\u89e3\u4e4b\u8c1c-GSF\u5982\u4f55\u88ab\u653e\u884c.md]'
    u'(../03-device/\u672a\u89e3\u4e4b\u8c1c-GSF\u5982\u4f55\u88ab\u653e\u884c.md)\u3002\n'
    u'> **\u5df2\u53d6\u5f97\u7684\u6210\u679c\u4e0d\u53d7\u5f71\u54cd**'
    u'\uff08GMS \u786e\u5b9e\u53ef\u7528\u3001Play \u6b63\u5e38\uff09\uff0c'
    u'\u4f46\u201c\u6539\u5305\u7248\u662f\u5426\u6709\u6548\u201d\u5c1a\u65e0\u5b9a\u8bba\u3002'
)

t = io.open(P, encoding='utf-8').read()
if u'\u8be5\u7ed3\u8bba\u5df2\u88ab\u63a8\u7ffb' in t:
    print('already present, skipping')
else:
    lines = t.split('\n')
    out = []
    inserted = False
    for ln in lines:
        out.append(ln)
        if not inserted and ln.startswith('# '):
            out.append('')
            for wl in WARN.split('\n'):
                out.append(wl)
            out.append('')
            inserted = True
    io.open(P, 'w', encoding='utf-8', newline='\n').write('\n'.join(out))
    print('inserted retraction (%d chars)' % len(WARN))
print('file size now: %d' % os.path.getsize(P))
