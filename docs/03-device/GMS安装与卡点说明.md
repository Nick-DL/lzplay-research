# GMS 安装结论（含重启复测）

> 本轮完整动作：装 6 个 `_29` 包 → 禁用 iaware/trustspace → 改两个 trustspace 设置
> → 重启 → 复测。**结论：GMS 装得上，但被华为 trustspace 硬拦在 provider 层，重启无效。**

---

## 一、已完成：GMS 六个包全部装好

按你的指示选 `_29`（**Android 10 / API 29**；`_28` 是 Android 9）：

| 包名 | 版本 | targetSdk |
|---|---|---|
| `com.google.android.gsf` | `10` | 29 |
| `com.google.android.gms` | 20.06.15 (100408-294478903) | 29 |
| `com.android.vending` | 18.8.16-all [0] [PR] 294806574 | 28 |
| `com.google.android.syncadapters.contacts` | `10` | 28 |
| `com.oversea.gmapjar` | 1.0 | 29 |
| `com.x.idhelper` | 1.0 | 29 |

全部一次 `Success`。**HarmonyOS 4.2 不执行 `targetSdk >= 30` 限制**，
所以既不用改系统版本号，也不用 `--bypass-low-target-sdk-block`。

---

## 二、卡点确诊：`GservicesProvider` 根本起不来

重新打包了一个原始探针（`GsfProbe`），把每种失败区分开。重启后的结果：

```
==== GSF PROVIDER RAW PROBE ====
  open provider (null projection)      = NULL cursor
  key android_id                       = null cursor
  key checkin_interval                 = null cursor
  key digest                           = null cursor
  key device_country                   = null cursor
  key google_login                     = null cursor

==== GSF / GMS HEALTH ====
  com.google.android.gsf       = v10  not-system  user-installed
  com.google.android.gms       = v20.06.15  not-system  user-installed
  com.android.vending          = v18.8.16  not-system  user-installed
```

**关键判读**：`open provider (null projection)` 用的是不带任何参数的
`query(uri, null, null, null, null)` —— 这是最宽松的调用，它返回 **`NULL cursor`**
（而不是抛 `SecurityException`），说明 **`GservicesProvider` 从未被成功启动**。

系统侧的对应日志：

```
E ContentProviderHelper: IAware or trustspace shouldPreventStartProvider
    name:com.google.android.gsf.gservices
    cpi:ContentProviderInfo{name=com.google.android.gsf.gservices
        className=com.google.android.gsf.gservices.GservicesProvider}
I HwActivityManagerServiceEx: provider is prevented for iaware
```

> 补充：早先有一次探针拿到了"非 null 游标 + 空值"，那是华为尚未开始拦截的短暂窗口；
> 现在是稳定拦截状态。

---

## 三、尝试过的所有绕过手段（均无效）

| 手段 | 命令 / 位置 | 结果 |
|---|---|---|
| 禁用 IAware 包 | `pm disable-user --user 0 com.huawei.iaware` | ✅ 命令成功，❌ 拦截照旧<br>（判定在 system_server 的 `HwActivityManagerServiceEx`，经 binder 调 IAware 服务） |
| 禁用 trustspace 包 | `pm disable-user --user 0 com.huawei.trustspace` | ✅ 命令成功，❌ 拦截照旧 |
| secure 开关 | `settings put secure is_trustspace_enabled 0` | ✅ 写入成功、✅ 重启后保留、❌ 无效 |
| global 开关 | `settings put global trust_space_switch 0` | ✅ 写入成功、✅ 重启后保留、❌ 无效 |
| **重启设备** | `adb reboot` | ❌ 拦截依旧（重启前 888 次 → 重启后仍有拦截） |
| 查 `TrustSpaceProvider` | `content query --uri content://com.huawei.android.trustspace.provider` | ❌ `not exported from UID 10140` |
| 查 `SecurityGuardMenuProvider` | `…trustspace.provider.MainMenuProvider` | ❌ 需要 `huawei.android.permission.HW_SIGNATURE_OR_SYSTEM` |

**信任列表需要系统签名或系统分区身份，adb 层无法配置。**

> 设备状态说明：两条 `pm disable-user` 我已经**重新 enable 恢复原状**；
> 两个 settings 写入保留（无害，重启后仍在，但不起作用）。

---

## 四、机制链条（现在完全闭合）

```
GMS 三件套装得上                          ✅ 已验证（6 个包全部 Success）
        ↓
GservicesProvider 被华为拦在启动前         ❌ trustspace / IAware，系统层，第三方不可解
        ↓
android_id（GSF ID）读不到                 ❌ 探针实测 NULL cursor
        ↓
无法向 Google 注册设备                     ❌ 没有 GSF ID 就没有注册凭据
        ↓
GMS 无法完成 checkin → 不能正常工作         ❌
```

**而这条链正是 lzplay 当年存在的理由**：它靠"设备管理器 + 华为内部授权"
（`MDM_DEVICE_MANAGER`，`signature|privileged`）让系统放行 Google 系进程。

我们前面已经用实测证明了这个权限只有华为平台签名能拿到 ——
**华为把钥匙收回去了，我们复制不了。**

这也解释了为什么社区后来的方案全都换了技术路线：不再试图让 GMS 在**宿主系统**里跑，
而是把它放进**隔离层**。

---

## 五、下一步的可行路线（按推荐度）

### 1. GBox / GSpace（隔离层）— 社区事实标准

在独立虚拟环境里跑 GMS，**完全不碰宿主系统的信任检查**。
- 优点：不需要 root、不触发 trustspace、安装即用
- 缺点：GMS 只在隔离层内生效（隔离层里装的应用才能用 Google 服务），不是全局

### 2. MicroG — 开源替代

用 microG 替代 GMS 三件套。它**不使用 Google 的签名校验链**，也大概率不触发
华为对"Google 系进程"的信任策略。
- 优点：开源可控，适合账号登录 / 推送 / 地图等基础能力
- 缺点：部分依赖 GMS 完整性的应用（某些游戏、银行类）可能不兼容

### 3. 应用启动管理手工放行（成本最低，值得一试）

`设置 → 应用和服务 → 应用启动管理`，把全部 Google 相关应用从"自动管理"
改为**手动管理**，勾选"自启动 / 关联启动 / 后台运行"。
这条针对的是**保活**问题，不解决 provider 拦截 —— 但如果拦截里有一部分
是"启动次数过多被 IAware 限流"造成的，可能有效。**成本为零，可以顺手试。**

### 4. 卸载本次安装（若要回到干净状态）

```powershell
adb uninstall com.google.android.syncadapters.contacts
adb uninstall com.oversea.gmapjar
adb uninstall com.x.idhelper
adb uninstall com.android.vending
adb uninstall com.google.android.gms
adb uninstall com.google.android.gsf
```

---

## 六、本轮的技术收获（对理解 lzplay 有价值）

1. **确认 GMS 包本身没问题** —— 版本、架构、安装全部通过。
   卡点不在包，而在华为的系统策略。
2. **确认 HarmonyOS 4.2 的 targetSdk 门槛不生效** —— 老包能直接装，
   这与"必须改系统版本号"的旧教程不同，说明华为放宽了安装侧、收紧了运行侧。
3. **定位到具体拦截函数**：`HwActivityManagerServiceEx` 里的
   `shouldPreventStartProvider`，配合 `IAware`/`trustspace`。
4. **证明 adb 层不可配置** —— 两个 Provider 一个不导出、一个要系统签名权限。
5. **印证了 lzplay 的必要性**：它解决的正是这个"系统不让 Google 进程启动"的问题，
   而它的解法依赖华为自己的签名授权。

---

## 七、当前设备状态

```
Google 侧（本次安装，均可正常卸载）
  com.google.android.gsf             v10
  com.google.android.gms             v20.06.15
  com.android.vending                v18.8.16
  com.google.android.syncadapters.contacts  v10
  com.oversea.gmapjar                v1.0
  com.x.idhelper                     v1.0

我方工具
  com.lzplay.revive   LZRevive（设备管理器已激活；含 MDM/GSF/Gate 三个探针）
  com.lzplay.probe    LZProbe

被改包的 App
  com.qiyecomm        旅游必备（网络+服务器补丁，设备管理器已激活）

系统设置（保留，无效但无害）
  secure: is_trustspace_enabled = 0
  global: trust_space_switch    = 0
```

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
adb install work\gms29\com.google.android.gms_29.apk
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
