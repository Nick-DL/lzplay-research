#!/usr/bin/env python3
"""Append the GMS provenance + private-space notes to the device doc."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'docs', '03-device', 'GMS安装与卡点说明.md')

ADD = u"""

---

## 八、补充：GMS 包来源可信性（密码学验证）

详见 [GMS包来源可信性验证.md](GMS包来源可信性验证.md)。要点：

四个 Google 包的签名证书均为

```
certificate DN: CN=Android, OU=Android, O=Google Inc., L=Mountain View,
                ST=California, C=US
certificate SHA-1   digest: 38918a453d07199354f8b19af05ec6562ced5788
certificate SHA-256 digest: f0fd6c5b410f25cb25c3b53346c8972fae30f8ee7411df910480ad6b2d60db83
```

且与 Chat Partner 明文清单里声明的 `sign_2` **逐字节相等**
（`sign_1` = 证书 MD5，`sign_2` = 证书 SHA-256）。
MD5、文件大小也全部吻合。

**结论：这套 `_29` GMS 包是 Google 原版、未被改动。**
换言之，障碍**不是**我们不信任这些包，而是华为不让正品 GMS 在宿主系统里跑。

---

## 九、补充：一个易踩的坑 —— 隐私空间（user 11）

设备上存在第二个 Android 用户：

```
Users:
    UserInfo{0:机主:c13} running
    UserInfo{11:Adding music:410}
```

反复安装/卸载 GMS 时曾出现这种状态：

```
User 0:  installed=false      ← 主用户没有
User 11: installed=true       ← 只装进了隐私空间
```

而 `adb install` 仍然报告 `Success`。**排查 GMS 是否真的可用时必须按用户查：**

```powershell
adb shell pm list packages --user 0 | grep google.android.gms
adb shell dumpsys package com.google.android.gms | grep -E "User 0|User 11"
```

修复方式：先在所有用户卸载，再重新安装。

```powershell
adb uninstall --user 0  com.google.android.gms
adb shell pm uninstall --user 11 com.google.android.gms
adb install work\\gms29\\com.google.android.gms_29.apk
```

---

## 十、当前设备状态（本轮结束时）

```
主用户 user 0 上已安装（全部 OK）：
  com.google.android.gms                      v20.06.15 (100408-294478903)
  com.google.android.gsf                      v10
  com.android.vending                         v18.8.16-all [0] [PR] 294806574
  com.google.android.syncadapters.contacts    v10
  com.oversea.gmapjar                         v1.0
  com.x.idhelper                              v1.0

我方工具：
  com.lzplay.revive     设备管理器已激活
  com.qiyecomm          旅游必备（已改包，设备管理器已激活）
  com.tyq.pro           Chat Partner（已改包，设备管理器已激活）

系统设置（写入但无效，无害）：
  secure: is_trustspace_enabled = 0
  global: trust_space_switch    = 0
```

**GMS 六个包在主用户全部就位，且已确认是 Google 正品签名。**
唯一障碍仍是 trustspace 阻止 GSF provider 启动。
"""

t = io.open(P, encoding='utf-8').read()
if u'GMS包来源可信性验证' in t:
    print('already present, skipping')
else:
    io.open(P, 'w', encoding='utf-8', newline='\n').write(t.rstrip('\n') + ADD)
    print('appended %d chars' % len(ADD))
print('size now: %d' % os.path.getsize(P))
