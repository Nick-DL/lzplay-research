#!/usr/bin/env python3
"""Update docs/README.md with the HUAWEI.CER findings."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'docs', 'README.md')

t = io.open(P, encoding='utf-8').read()
orig_len = len(t)

PIPE = chr(124)  # avoid escaping headaches

# 1. prominent pointer near the top
if u'\u6700\u91cd\u8981\u7684\u5355\u70b9\u53d1\u73b0' not in t:
    old = u'**\u6838\u5fc3\u94fe\u6761**\uff1a'
    new = (
        u'**\u2605 \u6700\u91cd\u8981\u7684\u5355\u70b9\u53d1\u73b0**\uff1a'
        u'`com.lzplay.helper.apk` **\u672c\u8eab**\u5c31\u662f\u534e\u4e3a\u6388\u6743\u901a\u9053 \u2014\u2014\n'
        u'\u5b83\u7684 `META-INF/HUAWEI.CER` \u91cc\u7684 `DeveloperKey` \u4e0e\u5b83\u7684\u771f\u5b9e\u7b7e\u540d\u8bc1\u4e66'
        u'**\u9010\u5b57\u8282\u76f8\u7b49**\uff08\u5bc6\u7801\u5b66\u8bc1\u5b9e\uff09\u3002\n'
        u'**\u7edd\u4e0d\u80fd\u91cd\u6253\u5305\u6216\u91cd\u7b7e\u540d\u5b83**\uff0c'
        u'\u90a3\u4f1a\u6bc1\u6389\u552f\u4e00\u7684\u90a3\u628a\u94a5\u5319\u3002\n'
        u'\u8be6\u89c1 [HUAWEI-CER-\u534e\u4e3a\u6388\u6743\u673a\u5236.md](01-lzplay/HUAWEI-CER-\u534e\u4e3a\u6388\u6743\u673a\u5236.md)\u3002\n\n'
        + old
    )
    if old in t:
        t = t.replace(old, new, 1)

# 2. add the doc to the 01-lzplay table
anchor = u'| [REVIVE-README.md](01-lzplay/REVIVE-README.md) | \u5e72\u51c0\u66ff\u4ee3\u54c1\u7684\u5b9e\u73b0\u8bf4\u660e |'
row = (u'\n| [HUAWEI-CER-\u534e\u4e3a\u6388\u6743\u673a\u5236.md]'
       u'(01-lzplay/HUAWEI-CER-\u534e\u4e3a\u6388\u6743\u673a\u5236.md) | '
       u'**\u2605 \u51b3\u5b9a\u6027\u53d1\u73b0**\uff1aCER \u7684\u4e09\u628a\u9501\u3001'
       u'\u4e3a\u4ec0\u4e48\u6539\u5305\u7248\u6c38\u8fdc\u62ff\u4e0d\u5230 MDM \u6743\u9650 |')
if u'HUAWEI-CER-' not in t and anchor in t:
    t = t.replace(anchor, anchor + row, 1)

# 3. verdict table row
old3 = (u'| \u534e\u4e3a\u540e\u95e8\u6743\u9650\u80fd\u4e0d\u80fd\u62ff\u5230\uff1f | '
        u'**\u4e0d\u80fd\u3002** `signature' + PIPE + u'privileged`\uff0c\u9700\u534e\u4e3a\u5e73\u53f0\u7b7e\u540d |')
new3 = (u'| \u534e\u4e3a\u540e\u95e8\u6743\u9650\u80fd\u4e0d\u80fd\u62ff\u5230\uff1f | '
        u'**\u539f\u59cb\u5305\u80fd\uff0c\u6539\u5305\u7248\u4e0d\u80fd\u3002** '
        u'\u89c1 `01-lzplay/HUAWEI-CER-\u534e\u4e3a\u6388\u6743\u673a\u5236.md` |')
if old3 in t:
    t = t.replace(old3, new3, 1)

# 4. completed list
old4 = u'- [x] Chat Partner \u660e\u6587\u5305\u6e05\u5355\u6062\u590d\uff08\u542b\u7248\u672c/MD5/\u7b7e\u540d\u6307\u7eb9\uff09'
add4 = (u'\n- [x] **HUAWEI.CER \u4e09\u628a\u9501\u89e3\u6790**\uff1a\u8bc1\u5b9e lzplay \u539f\u59cb\u5305\u8bc1\u4e66\u81ea\u6d3d'
        u'\uff08LOCK 1 PASS\uff09\uff0c\u786e\u8ba4\u5b89\u88c5\u65f6\u95f4\u7a97'
        u'\uff08LOCK 3 = 2019-07-25..2020-07-25\uff09\uff0c\u89e3\u91ca\u4e86"\u6539\u65f6\u95f4"\u7684\u771f\u6b63\u539f\u56e0'
        u'\n- [x] \u786e\u8ba4\u6539\u5305\u91cd\u7b7e**\u5fc5\u7136**\u5bfc\u81f4 CER \u6821\u9a8c\u5931\u8d25 '
        u'\u21d2 \u539f\u59cb\u5305\u662f\u552f\u4e00\u8def\u5f84')
if u'HUAWEI.CER \u4e09\u628a\u9501\u89e3\u6790' not in t and old4 in t:
    t = t.replace(old4, old4 + add4, 1)

# 5. todo list
old5 = u'- [ ] **\u63a2\u7d22\u5907\u4efd\u8fd8\u539f\u8def\u5f84\u80fd\u5426\u7ed5\u8fc7 trustspace** \u2190 \u4e0b\u4e00\u6b65'
new5 = (u'- [ ] **HUAWEI.CER LOCK 2\uff08`ApkHash`\uff09\u7b97\u6cd5\u8fd8\u539f** '
        u'\u2190 \u8fdb\u884c\u4e2d\uff08\u5b50 agent \u53cd\u6c47\u7f16\u5b57\u8282\u7801\uff09'
        u'\n- [ ] \u8fd8\u539f `SignatureProcessor` / `CertificateProcessor`\uff0c'
        u'\u786e\u8ba4 CER \u80fd\u5426\u88ab\u5c40\u90e8\u7be1\u6539'
        u'\n- [ ] \u8d70\u901a\u5907\u4efd\u8fd8\u539f\uff1a\u539f\u59cb APK + \u65f6\u95f4\u7a97 + `com.huawei.localBackup`')
if old5 in t:
    t = t.replace(old5, new5, 1)

if len(t) == orig_len:
    print('NO CHANGES - anchors did not match')
else:
    io.open(P, 'w', encoding='utf-8', newline='\n').write(t)
    print('README updated: %d -> %d bytes' % (orig_len, len(t)))
