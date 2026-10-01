# lzplay 复活计划 — 研究总索引

> **研究对象**：三个同源的"谷歌服务助手"类 App —— `com.lzplay.helper`（lzplay）、
> `com.qiyecomm`（旅游必备）、`com.tyq.pro`（Chat Partner），
> 以及它们共同携带的华为平台签名授权渠道 `META-INF/HUAWEI.CER`。
>
> **目标设备**：华为 Mate50 Pro (DCO-AL00) / MatePad 2022 (GOT-W09) / Nova7 (JEF-AN00)
> 　全部 HarmonyOS 4.2 / SDK 31 / EmotionUI_14.2.0 / **未 root 零售机**

---

## ✅ 最终结果

> ### GMS 在 Mate50 Pro 上**完整可用** —— Google Play 正常打开、账号已登录、设置中出现 "Google" 子菜单

<img src="/gms_ok.png" width="300" alt="Google Play 正常运行">

**完成情况（对照 `00-原始需求.md`）**

| 原始需求 | 结果 |
|---|---|
| 对其脱壳 | ✅ 360 加固静态分析完成 |
| 反编译和修改 | ✅ 完成；**并证明改包对特权目标是死路** |
| 不再限制时间 | ✅ **不存在时间炸弹** —— 改时间是给华为 CER 的 `ValidPeriod` 用的 |
| 不再限制设备型号 | ✅ **不存在机型白名单** —— 门禁只是一个反射调用 |
| 不再限制软件版本 | ✅ 同上 |
| 测试该 API 是否还存在 | ✅ **存在** —— `DevicePackageManager` 35 个方法齐全 |
| lzplay 还能不能辅助安装 GMS | ✅ **能** —— 并且 GMS 真的跑起来了 |

---

## 📌 五条核心结论（先看这个）

### ① 不存在时间炸弹，也不存在机型白名单

"时间限制"是**华为 CER 的 `ValidPeriod`**，不是 lzplay 自己写的。
"机型限制"是 lzplay 里**一个反射调用**：检查 `getSysAppList` 方法存不存在。
两者都不是可"破解"的名单，而是**授权机制的外在表现**。

→ [HUAWEI-CER-华为授权机制.md](01-lzplay/HUAWEI-CER-华为授权机制.md) ·
[三台设备对照-白名单之谜.md](03-device/三台设备对照-白名单之谜.md)

### ② 改包 = 死路（实测 0/7）

改代码 → 必须重签 → 签名证书变了 → CER 里的 `DeveloperKey` 对不上 →
设备日志打出 `DK_VC not same!` → **整张 CER 判无效，所有声明权限作废**。

**单变量 A/B 实测**：同一 APK、同一 CER（逐字节相同）、同一时刻，
**唯一变量是签名证书** ⇒ 原装 `6/7` granted，改包 **`0/7`**。

**且不可逆**：`ValidPeriod` 是时间条件（走回来就恢复），
`DeveloperKey` 是密码学绑定（**永远** 0/7）。

→ [改包版MDM权限-实测结论.md](03-device/改包版MDM权限-实测结论.md)

### ③ 移植完整 lzplay 包是**唯一**可行路线

既然改包必死，就必须让**原始未改动的包**跑起来。而它卡在启动页的真正原因不是网络，
是**空的 `shared_prefs`** —— 所以要用**备份恢复**（带应用数据的还原）来"喂"它。

（讽刺的是：当年厂商设计备份恢复是为了方便用户，结果成了唯一的复活路径。）

→ [备份还原包分析.md](01-lzplay/备份还原包分析.md) ·
[lzplay复活成功-完整记录.md](01-lzplay/lzplay复活成功-完整记录.md)

### ④ 平板的"不支持"有两层原因，且都不是"机型白名单"

| # | 原因 | 性质 |
|---|---|---|
| 1 | lzplay / 旅游必备 的门禁检查 `getSysAppList` 在平板上不存在 | **App 的代码问题** |
| 2 | 平板固件**未定义** `MDM_INSTALL_SYS_APP`（34 个 MDM 权限 vs Mate50 的 36 个） | **固件能力限制** |

**但平板的华为框架完全支持 CER 授权** —— 实测拿到**六项** `signature|privileged` 权限
（`MDM_APP_MANAGEMENT`、`MDM_DEVICE_MANAGER`、`MDM_NETWORK_MANAGER`、
`MDM_PHONE_MANAGER`、`MDM_VPN`、`ACCESS_INTERFACE`）。

→ [平板MDM能力实测-最终结论.md](03-device/平板MDM能力实测-最终结论.md)

### ⑤ GSF provider 封锁的解除条件

华为 iAware 会阻止 `com.google.android.gsf.gservices` 启动 ⇒ 拿不到 GSF ID ⇒ GMS 不可用。

**解法：必须允许「Google 服务框架」自启动与后台运行。**

```
设置 → 应用和服务 → 应用启动管理
  → com.google.android.gsf
  → 手动管理，且【自启动】【关联启动】【后台活动】三个开关全部打开
```

⚠️ **把 GSF 设为"全部禁止"是错的** —— 用户实测那一次提权失败。
GSF provider 是按需拉起的，不允许它自启动/后台运行，provider 进程就起不来。

**同样放行**：`com.google.android.gms`、`com.android.vending`、`com.lzplay.helper`

→ [破解-GSF封锁的消除方法.md](03-device/破解-GSF封锁的消除方法.md)（含我两次错误结论的撤回记录）

---

## 🧭 研究过程（按时间顺序）

### 阶段一 · 脱壳与静态分析

360 加固（`libjiagu.so` + VM 解释器）静态分析，30+ 轮迭代。
同时探明 lzplay 调用的华为 API 面。

**关键发现**：lzplay 其实是**两个 App** ——
`com.lzplay.helper`（加固外壳）+ `assets/insidehelper.apk` = `com.lzplayer.insidehelper`
（明文）。后者的**唯一职责**是读 `content://com.google.android.gsf.gservices` 的
`android_id`，转大写去空格后广播 `com.lzplay.helper.recev.sfid`。

→ [UNPACKING-NOTES.md](01-lzplay/UNPACKING-NOTES.md) ·
[REPORT-lzplay-分析.md](01-lzplay/REPORT-lzplay-分析.md)

### 阶段二 · 发现 `HUAWEI.CER`：真正的钥匙

在三个 App 里都发现 `META-INF/HUAWEI.CER`。
**密码学验证证实**：lzplay 原始包 CER 里的 `DeveloperKey` 与它的真实签名证书
**逐字节相等**。

⇒ **`com.lzplay.helper.apk` 本身就是华为授权通道。**
⇒ **绝不能重打包或重签名它** —— 那会毁掉唯一的那把钥匙。

CER 的四道校验（`com.android.server.pm.auth.processor.*`）：

| 校验 | 行为 |
|---|---|
| `DeveloperKeyProcessor` | 比对 CER 的 DeveloperKey vs APK 真实签名证书。**无 special 短路** |
| `ValidPeriodProcessor` | `System.currentTimeMillis() > to` ⇒ 过期 |
| `SignatureProcessor` | 华为 RSA 对整张 CER 验签 |
| `ApkHashProcessor` | **被短路跳过** —— 因为 CER 含 `MDM_INSTALL_SYS_APP` 等特殊权限 |
| `CertificateProcessor` | 空标签，不做事 |

→ [HUAWEI-CER-华为授权机制.md](01-lzplay/HUAWEI-CER-华为授权机制.md)

### 阶段三 · 改包（当时的判断，后来被证明是弯路）

三个 App 的 bug **逐行相同**，一套补丁全适用，共 6 类坑。
旅游必备破除了无限安装循环，Chat Partner 走到了主界面。

**最有价值的副产物**：Chat Partner 的 `tyq_resource_Q.json` 是**明文**的，
第一次让我们看到厂商期望装什么包、什么版本、什么签名。

→ [SIBLINGS-改包报告.md](02-siblings/SIBLINGS-改包报告.md) ·
[TRAVEL-运行原理与安装循环剖析.md](02-siblings/TRAVEL-运行原理与安装循环剖析.md) ·
[TRAVEL-安装流程打通记录.md](02-siblings/TRAVEL-安装流程打通记录.md) ·
[CHATPARTNER-改包报告.md](02-siblings/CHATPARTNER-改包报告.md)

### 阶段四 · 拿到 Mate50 Pro，开始设备端实测

在真机上实测 CER 授权：**时钟设进窗口后，`MDM_INSTALL_SYS_APP` granted=true 且持久**
（走出窗口仍保留）。

但撞上 **GSF provider 被拦** —— 这是当时认为的最终阻塞点。

→ [GMS安装与卡点说明.md](03-device/GMS安装与卡点说明.md) ·
[GMS包来源可信性验证.md](03-device/GMS包来源可信性验证.md)

### 阶段五 · 备份恢复 —— lzplay 复活

**卡启动页的真正原因**：冷安装的 `shared_prefs` 是空的 ⇒ 它必须联网注册 ⇒ 服务器已死。

**解法**：用华为"备份和恢复"还原**带应用数据**的备份包，
直接供给 `sf_id=3864249757054258402`、`userRegistered=true` 等状态。

```
SplashActivity → LauncherActivity → InstallActivityNew   （< 5 秒）
```

两把锁同时满足才有效：

| 锁 | 内容 |
|---|---|
| 锁 1 | CER 的 `ValidPeriod` 窗口 `2019-07-25 .. 2020-07-25`（靠改时钟） |
| 锁 2 | 应用数据（靠备份恢复，绕过网络注册） |

→ [备份还原包分析.md](01-lzplay/备份还原包分析.md) ·
[lzplay复活成功-完整记录.md](01-lzplay/lzplay复活成功-完整记录.md)

### 阶段六 · 目标达成 —— GMS 正常运行

GSF provider 的封锁解除后，GSF ID 生成（`3885761887743418156`），
GMS 完成初始化，**Play 商店正常打开、账号登录成功**。

> ⚠️ **这一阶段的机制解释我曾给错三次，全部撤回。**
> - ❌ "应用启动管理白名单是关键" —— **其实这条是对的，是我读反了用户的话**：
>   用户说的是"初期设错了（全部禁止），那次失败"，而非"现在设成禁止却通了"
> - ❌ "lzplay 的 MDM 特权加白名单" —— 全量 logcat 里**没有** `setSysAppList` 调用
> - ❌ "卸载重装 Google 包即可解除" —— 卸载发生在恢复**之后**，只是时间相邻；
>   且平板复测又变回被拦，说明不是它
>
> **最终定位：必须允许「Google 服务框架」自启动与后台运行。**
> 真正有判别力的信号是探针能否读出 `android_id`；
> `provider is prevented for not-prevent` 这条日志**拦截与放行都会打印**，不可用。

→ [目标达成-GMS正常运行.md](01-lzplay/目标达成-GMS正常运行.md) ·
[破解-GSF封锁的消除方法.md](03-device/破解-GSF封锁的消除方法.md) ·
[未解之谜-GSF如何被放行.md](03-device/未解之谜-GSF如何被放行.md)（记录了排除过程）

### 阶段七 · 平板对照实验（回答"改包到底有没有用"）

用平板做干净实验台，得到三个实测结论：

1. **平板能拿 MDM 权限** —— 单变量 A/B，时钟是唯一变量，六项 `signature|privileged` 全授予
2. **改包版 0/7** —— 旅游必备 `6/7 → 0/7`，日志 `DK_VC not same!`（与反编译预测一字不差）
3. **Chat Partner 原版也 0/7** —— 但它卡在**另一道**校验（`error tag is Signature`），
   而同一设备上旅游必备的 CER **零报错通过** ⇒ 那份 CER 在此框架版本上验不过

→ [改包版MDM权限-实测结论.md](03-device/改包版MDM权限-实测结论.md) ·
[平板MDM能力实测-最终结论.md](03-device/平板MDM能力实测-最终结论.md)

---

## 📚 子文档目录

### `01-lzplay/` — lzplay 本体

| 文档 | 内容 |
|---|---|
| [REPORT-lzplay-分析.md](01-lzplay/REPORT-lzplay-分析.md) | 完整逆向分析 |
| [UNPACKING-NOTES.md](01-lzplay/UNPACKING-NOTES.md) | 360 加固脱壳全过程 |
| [HUAWEI-CER-华为授权机制.md](01-lzplay/HUAWEI-CER-华为授权机制.md) | **★ CER 四道校验解析** |
| [备份还原包分析.md](01-lzplay/备份还原包分析.md) | 备份包格式（KoBackup v4）与数据解密 |
| [lzplay复活成功-完整记录.md](01-lzplay/lzplay复活成功-完整记录.md) | **★★ 两道锁的完整解 + 可复现步骤** |
| [目标达成-GMS正常运行.md](01-lzplay/目标达成-GMS正常运行.md) | **★★ 最终结果与完整因果链** |
| [PROBE-README.md](01-lzplay/PROBE-README.md) | 华为 API 探针说明 |
| [REVIVE-README.md](01-lzplay/REVIVE-README.md) | 干净替代品 `LZRevive` 实现说明 |

### `02-siblings/` — 两个换皮 App 改包

| 文档 | 内容 |
|---|---|
| [SIBLINGS-改包报告.md](02-siblings/SIBLINGS-改包报告.md) | 三 App 架构对比 + CER 分析 |
| [TRAVEL-运行原理与安装循环剖析.md](02-siblings/TRAVEL-运行原理与安装循环剖析.md) | 旅游必备状态机完整还原 |
| [TRAVEL-安装流程打通记录.md](02-siblings/TRAVEL-安装流程打通记录.md) | 无限循环破除过程 |
| [CHATPARTNER-改包报告.md](02-siblings/CHATPARTNER-改包报告.md) | Chat Partner 改包 + **明文包清单** |

### `03-device/` — 设备端实测结论

**核心结论类**

| 文档 | 内容 |
|---|---|
| [改包版MDM权限-实测结论.md](03-device/改包版MDM权限-实测结论.md) | **★ 改包 0/7 vs 原装 6/7（单变量 A/B）** |
| [平板MDM能力实测-最终结论.md](03-device/平板MDM能力实测-最终结论.md) | **★ 平板能拿六项特权权限；固件缺 `MDM_INSTALL_SYS_APP`** |
| [破解-GSF封锁的消除方法.md](03-device/破解-GSF封锁的消除方法.md) | **★ 必须允许 GSF 自启动/后台运行**（含两次错误结论的撤回） |
| [三台设备对照-白名单之谜.md](03-device/三台设备对照-白名单之谜.md) | **推翻机型白名单假说** |

**过程记录类**

| 文档 | 内容 |
|---|---|
| [GMS安装与卡点说明.md](03-device/GMS安装与卡点说明.md) | 六个包装机过程 + 排查记录 |
| [GMS包来源可信性验证.md](03-device/GMS包来源可信性验证.md) | GMS 包签名与来源核验 |
| [实验-平板能否获得MDM权限.md](03-device/实验-平板能否获得MDM权限.md) | 实验方案设计 |
| [未解之谜-GSF如何被放行.md](03-device/未解之谜-GSF如何被放行.md) | 排除过程 + **正确判别信号** |
| [最终关卡-GSF与iaware闸门.md](03-device/最终关卡-GSF与iaware闸门.md) | 当时的阻塞点分析（**部分已修正**） |

**历史结论（已被修正，保留供追溯）**

| 文档 | 状态 |
|---|---|
| [VERDICT-Mate50Pro-实测结论.md](03-device/VERDICT-Mate50Pro-实测结论.md) | 首轮结论，**部分被修正** |
| [VERDICT-修正版-两道门.md](03-device/VERDICT-修正版-两道门.md) | "两道门"模型，**机制解释已被推翻** |

### `04-logs/` — 原始设备日志
`dumpsys` / `logcat` 抓取，供复核。

---

## 🚧 第二阶段（进行中）

目标：**(1)** 找到取代"备份还原 + 用户手工收集 APK"的方案；
**(2)** 解决 SafeNet /"此设备未获得 Play 保护机制认证"。

| 文档 | 内容 |
|---|---|
| [04-第二阶段需求.md](05-phase2/04-第二阶段需求.md) | 委托原文 |
| [05-第二阶段-联网流程研究.md](05-phase2/05-第二阶段-联网流程研究.md) | **★ 全部联网点、请求协议、内置清单、注册 JS** |
| [06-第二阶段-安装状态机与下载缓存.md](05-phase2/06-第二阶段-安装状态机与下载缓存.md) | 安装状态机（f=0..4）、88% 的由来、FileDownloader 缓存 |
| [07-第二阶段-FileDownloader缓存预置.md](05-phase2/07-第二阶段-FileDownloader缓存预置.md) | 预置缓存的完整配方（**但被 08 否定**） |
| [08-第二阶段-原版OOM与必须改包的原因.md](05-phase2/08-第二阶段-原版OOM与必须改包的原因.md) | **★★ 卡 88% 的真正原因：OOM，不是网络** |
| [09-第二阶段-原版必然崩溃的精确定位.md](05-phase2/09-第二阶段-原版必然崩溃的精确定位.md) | **★★ 精确定位到代码行：`UpdateImp.e()` 给已装 APK 算 MD5** |
| [10-第二阶段-OOM修复与流程跑通.md](05-phase2/10-第二阶段-OOM修复与流程跑通.md) | **★★ OOM 已修复，App 跑通并显示安装界面** |
| [11-第二阶段-安装失败的两个根因.md](05-phase2/11-第二阶段-安装失败的两个根因.md) | Intent 缺 `FLAG_GRANT_READ_URI_PERMISSION` + FileProvider 路径包名残留 |
| [12-第二阶段-安装失败的第3个原因.md](05-phase2/12-第二阶段-安装失败的第3个原因.md) | 清单缺 `REQUEST_INSTALL_PACKAGES` —— **仅改包版有此问题，原版走 MDM 不受影响** |
| [13-第二阶段-进展与卡点存档.md](05-phase2/13-第二阶段-进展与卡点存档.md) | **★ 已排除的 6 个假设 + 调试手法（接手必读）** |
| [14-第二阶段-ChatPartner分析.md](05-phase2/14-第二阶段-ChatPartner分析.md) | Chat Partner 安装路径剖析（**只走 MDM，无 ACTION_VIEW 兜底**） |
| [15-第二阶段-ChatPartner实测结果.md](05-phase2/15-第二阶段-ChatPartner实测结果.md) | 原版实测：不崩、卡死服务器、**CER 验签失败 ⇒ 此路不通** |
| [16-第二阶段-网络门禁的真相.md](05-phase2/16-第二阶段-网络门禁的真相.md) | **★ 真机探针实测：证伪两个流行假设** |
| [17-第二阶段-代理设计.md](05-phase2/17-第二阶段-代理设计.md) | **★★ 完整协议逆向（RC4/base64/MD5/签名），全部从原版 smali 读出** |
| [18-第二阶段-代理实现.md](05-phase2/18-第二阶段-代理实现.md) | **★★ 响应器内建到 LZRevive，真机自检 PASS** |
| [19-第二阶段-证书基础设施.md](05-phase2/19-第二阶段-证书基础设施.md) | 用 NDC 根证书签发服务端证书，TLS 握手自验通过 |
| [20-第二阶段-代理方案最终结论.md](05-phase2/20-第二阶段-代理方案最终结论.md) | **★★★ 四项受控实验裁定：无 root 时 TLS 中间人不可行** |

### 第二阶段已确定的结论

**① 用户不需要自己收集 Google APK —— 原版 APK 自带整套。**

```
旅游必备 travel essentials.apk (134 MB)
  assets/com.google.android.gms_29.apk                  90,657,638 B
  assets/com.android.vending_29.apk                     21,168,579 B
  assets/com.google.android.gsf_29.apk                   3,923,176 B
  assets/com.google.android.syncadapters.contacts_29.apk  1,457,061 B
  assets/com.oversea.gmapjar_29.apk                         154,359 B
  ...外加整套 _28，共 13 个 APK
```
实测与解密出的清单 **5/5 MD5 与大小完全一致**。

**② OOM 只在「GMS 已安装」时发生 —— 全新安装场景下原版不崩。**

`FileUtil.b()` 为算 MD5 把**整个文件**读进内存，而被算的是**已安装 APK**的路径。
⇒ **GMS 没装就没有 86.5 MB 的东西可哈希，不会崩。**

**⚠️ 这条修正了早先的错误结论。** 实测（Mate50 / GMS 四个包全部未装）：

```
旅游助手签名 1241a3cf（原版未改动）
MDM_INSTALL_SYS_APP / APP_MANAGEMENT / DEVICE_MANAGER / NETWORK_MANAGER
  / VPN / PHONE_MANAGER / ACCESS_INTERFACE   全部 true
启动 90 秒无崩溃，停在 SplashActivity 等待服务器
```

⇒ **原版在全新安装环境下持有完整 MDM 特权，可以用 `installPackage()` 静默安装。**

**③ 唯一卡点：`api.trip-happy.com` 已死。**

域名仍注册（解析到 Cloudflare 占位页），拿不到合法更新列表 ⇒ App 停在启动页
或弹「连接谷歌网络异常」。

**④ 「改包」与「MDM 特权」互斥，而全新安装不需要改包。**

改包必重签 ⇒ 签名 ≠ `HUAWEI.CER` 的 DeveloperKey ⇒ 特权全失（改包版永远 0/7）。
`REQUEST_INSTALL_PACKAGES` 只是**改包版**的连锁后果，**与不改包的原版无关**。

**⑤ 无 root 时无法伪造 TMS 响应 —— 这是整条代理路线的硬约束。**

四项受控实验（Mate50 / 未 root / 服务端证书 SAN 同时含域名与 IP）：

| 用例 | 结果 |
|---|---|
| 真 CA（Google） | **HTTP 204** ✅ 基线有效 |
| NDC 用户 CA 签发 | `Trust anchor for certification path not found` (91ms) ❌ |
| 自签证书 | 同上 (29ms) ❌ |
| **明文 HTTP 发到 TLS 端口** | `SSLException: Unable to parse TLS packet header` (13ms) ❌ |

13 毫秒**不是超时** ⇒ 字节到达了 App，是 TLS 协议层拒绝的。
根因：`default TrustManager` 只有 **125 条系统 CA**，而用户装的 NDC 根证书虽在
`AndroidCAStore`（`user:4325b699.0`）里，**对 `targetSdk ≥ 24` 且无
`networkSecurityConfig` 的 App 不可见**。

**⑥ 协议侧已完全解决 —— 一旦能控制 TLS 端点，响应可任意伪造。**

`upgradeConfSign = MD5hex( Base64_NO_WRAP(UTF8(upgradeConf)) + sign )`，
**没有服务器密钥参与**。响应器 `TripHappyResponder` 已在真机自检 PASS。

### 📍 第二阶段当前状态

```
① 用户不需要收集 APK      ✅ 已解决（助手包自带全套，5/5 MD5 一致）
② 原版在全新安装下不崩     ✅ 已实测（并持有完整 MDM 特权）
③ 不需要改包              ✅ 已修正（早先"必须改包"的结论是错的）
④ 代理协议侧              ✅ 已解决（响应器真机自检 PASS）
⑤ 代理 TLS 侧             ❌ 【当前卡点】用户 CA 不可见于 App
⑥ SafeNet 设备认证        ❌ 未解决（手动注册后通知仍在）
```

**卡点性质**：唯一障碍是「如何让 App 信任我们的证书」。

| 出路 | 需要 | 说明 |
|---|---|---|
| **① 拿到 root** | 解锁 bootloader / 工程机 | ⭐ 装系统 CA ⇒ **原版完全不动**，整条链立刻通 |
| ② 换一台可 root 的华为设备 | 任意可 root 机型 | 同样有效 |
| ③ 厂商测试入口 | `adb root`（零售机不给） | 值得一试 |
| ④ 回到改包路线 | 接受丢 MDM 特权 | 需同时解决清单权限（二进制补丁） |
| ⑤ 接受现状 | — | 第一阶段目标已达成 |

**Chat Partner 这条路已排除**：它的 CER 在 HMOS 4.2 上**验签失败**
（`HC_VC error tag is Signature`），拿不到 MDM 特权；而它的安装路径**只有**
MDM 两条分支，无标准路径兜底。

### 其他

| 文档 | 内容 |
|---|---|
| [00-原始需求.md](00-原始需求.md) | 最初的委托原文 |
| [SESSION-STATE-暂停存档.md](SESSION-STATE-暂停存档.md) | 会话中间存档 |

---

## 🔬 技术要点速查

### 华为 MDM 权限门禁

| 权限 | protectionLevel | 结果 |
|---|---|---|
| `com.huawei.permission.sec.MDM` | `normal` | ✅ 任意 App 可拿（**但这不是能力证明**） |
| `MDM_APP_MANAGEMENT` | `signature\|privileged` | 需合法 CER |
| `MDM_DEVICE_MANAGER` / `MDM_VPN` / `MDM_NETWORK_MANAGER` / `MDM_PHONE_MANAGER` | `signature\|privileged` | 需合法 CER |
| `MDM_INSTALL_SYS_APP` | `signature\|privileged` | 需合法 CER；**平板固件未定义** |
| `MDM_INSTALL_UNDETACHABLE_APP` | `signature\|privileged` | 同上 |

**可以走通的（与签名无关）**：AOSP 标准 `DeviceAdminReceiver` 路径
—— 三个改包版在 HMOS 4.2 上**都激活成功**。

### 正确判别 GSF provider 是否被拦

| 信号 | 判别力 |
|---|---|
| `I ... provider is prevented for not-prevent` | ❌ **无** —— 拦截与放行**都会**打印 |
| `I ... provider is prevented for iaware` | ✅ 有 |
| `E ContentProviderHelper: ... shouldPreventStartProvider` | ✅ **最强** —— 出现即拦截逻辑执行 |
| `I ContentProviderHelper: Successfully start provider ... GservicesProvider` | ✅ 正向证据 |
| `com.google.process.gservices` 进程存在 | ✅ 辅助 |

### 改包六类坑（一套补丁通用）

| 坑 | 症状 | 修法 |
|---|---|---|
| 1 网络检查 | 提示"连接谷歌网络异常" | `NetworkUtil.a()` 恒返回 true |
| 2 死服务器 | 卡启动页 | 失败回调改走成功路径 |
| 3 `SDK_INT` 拼文件名 | 找不到 `_31.apk` | 常量改成 29 |
| 4 华为裸调用 | `SecurityException` 崩溃 | 换成标准 `ACTION_VIEW` Intent |
| 5 `Uri.fromFile` | `FileUriExposedException` | 改用 FileProvider `content://` |
| 6 混淆的 FileProvider | `NoSuchMethodError` | 方法名是 `a` 不是 `getUriForFile` |

**两个结构性坑**：
- `if-le` 是"**≤ 则跳转**"，分支方向极易搞反
- `.registers N` 下 `p0/p1` 就是 `v(N-2)/v(N-1)`，改写时**绝不能碰参数寄存器**（否则 `VerifyError`）

### lzplay 期望安装的包（从备份 `updateModel` 解出）

| 包名 | versionCode | md5 | presetPath |
|---|---|---|---|
| `com.google.android.gms` | 18381046 | `d317fb438ce900c138196c1954f03c18` | `/product/priv-app/` |
| `com.google.android.gsf` | 29 | — | `/product/priv-app/` |
| `com.google.android.gms.policy_sidecar_aps` | 2052073 | `52c60fbbc3c4e03edeb5d72dd7fbd718` | `/product/priv-app/` |
| `com.google.android.syncadapters.contacts` | 29 | — | `/product/priv-app/` |
| `com.android.vending` | 81601500 | `6b0389822e8b95ea86cc18b6f42f92e9` | `/product/priv-app/` |

签名指纹（Google 官方）：`sign` = `cde9f6208d672b54b1dacc0b7029f5eb`，
`sign256` = `f0fd6c5b410f25cb25c3b53346c8972fae30f8ee7411df910480ad6b2d60db83`

### 设备状态（研究结束时）

| 设备 | 状态 |
|---|---|
| **Mate50 Pro** `BLT0222902012232` | ✅ **GMS 可用**，Play 已登录；lzplay 已激活且持 MDM 权限；时钟正常 |
| **MatePad 2022** `192.168.1.109:5556` | 实验残留已清理，时钟已恢复自动校时 |
| **Nova7** `192.168.1.105:5557` | 仅装了探针 |

---

## 🛠 目录结构与工具

```
lzplay/
├── docs/                        ← 全部文档（本文件为总索引）
│   ├── 00-原始需求.md
│   ├── 01-lzplay/               ← lzplay 本体
│   ├── 02-siblings/             ← 两个换皮 App 改包
│   ├── 03-device/               ← 设备端实测结论
│   └── 04-logs/                 ← 原始设备日志
│
├── work/
│   ├── originals/               ← ★ 原装 APK 备份（不可替代，见下）
│   ├── tools/                   ← 自建工具链
│   ├── gateprobe/  revive/      ← 探针源码
│   ├── travel_decoded/  chat_smali/   ← 反编译工程
│   ├── gms29/                   ← Android 10 那套 GMS 包
│   └── dl/lzplay-data/          ← 解密后的备份应用数据
│
└── *.apk                        ← 可安装产物
```

### ★ 不可替代的资产（**绝不要重打包或重签名**）

| 文件 | SHA-256 | 说明 |
|---|---|---|
| `work/originals/com.lzplay.helper.apk` | `1242b03fc84f8d1c…` | lzplay 原版，CER 自洽 |
| `work/originals/旅游必备 travel essentials.apk` | `269c639a1d8f3b01…` | CER 自洽，平板实测 6/7 |
| `work/originals/chatpartner.apk` | `8d8b53afcb0f7bc1…` | 原版，CER 自洽但 `Signature` 验签失败 |

### 设备实测/诊断工具

| 工具 | 用途 |
|---|---|
| `reset_gms.py` | 一键卸载重装 Google 包（**注意：这不是 GSF 封锁的解药**，仅用于重置版本） |
| `tabtest.py` | 读 GSF provider 三个判别信号 |
| `mdm_repack_test.py` | **原装 vs 改包 MDM 权限 A/B** |
| `mdm_ab.py` | 两设备 MDM 授权对比 |
| `test_mdm_on_tablet.py` | 单设备 CER 授权测试 |
| `chatpartner_test.py` | Chat Partner 三版对照 |
| `watch_system_flag.py` | 监视 `SYSTEM` / `PRIVILEGED` 标志变化 |
| `cleanup_tablet.py` | 清理实验残留 |
| `collect_gate.py` | 采集设备门禁报告 |

### 分析/构建工具

| 工具 | 用途 |
|---|---|
| `patch_family.py` | **通用补丁器**（带 `--check` 干跑） |
| `rebuild_chat_apk.py` | 只替换 `classes.dex` 重建 APK |
| `verify_chat_manifest.py` | 校验包清单 MD5 + 签名指纹 |
| `dump_huawei_cer.py` / `verify_huawei_cert.py` / `check_cer_locks.py` | **CER 解析与密码学验证** |
| `hwbackup_dec.cjs` / `extract_lzplay_backup.py` | 备份包（KoBackup v4）解密 |
| `build_apk.ps1` | 通用 APK 构建（aapt2 + d8 + zipalign + apksigner） |
| `x86dis.py` / `jiagu_emu.py` 等 | lzplay 脱壳工具链 |

### 重要经验

- **apktool 的 jar 里捆绑了 smali/baksmali**，可直接调用：
  ```powershell
  java -cp apktool-2.11.1.jar com.android.tools.smali.baksmali.Main d classes.dex -o out
  java -cp apktool-2.11.1.jar com.android.tools.smali.smali.Main    a out -o classes.dex
  ```
  （从 Maven 下的 `baksmali.jar`/`smali.jar` 是残缺文件，别用）
- 下载走 **Node `fetch`**（`work/tools/dl.cjs`）—— PowerShell/curl/Python-urllib 在此环境 TLS 全挂
- `javac` 在中文 Windows 必须加 `-encoding UTF-8`
- **`adb` 参数不要经 PowerShell 传递** —— 它会把包名误解析成设备名。用 Python `subprocess` 列表形式
- **不要用 PowerShell 处理含中文/正则/引号的字符串** —— 会静默损坏。写 `.py` / `.mjs` 文件执行

### 关于本站（VitePress）

`docs/` 是一份 VitePress 站点，部署在 GitHub Pages：<https://nickdl.site/lzplay-research/>

**构建不修改任何文档**：`tools/stage-docs.mjs` 在构建时把 `docs/`（含 `.vitepress/`）
复制到 `.vitepress-src/`，VitePress 在副本上工作。`docs/` 的 Markdown 保持原样。

```powershell
npm install
npm run dev      # 本地开发
npm run build    # 产出 .vitepress-src/.vitepress/dist
npm run preview  # 预览构建结果（默认 4173）
```

只有一个文件为了站点做过改动：`docs/README.md` 里的截图从
`../work/gms_ok.png` 改成 `/gms_ok.png`，图片同时复制进 `docs/public/`
（`work/` 在 `.gitignore` 里，站点构建不到那里）。

**⚠️ 本机网络注意**：`github.com` 与 `codeload.github.com` 的直连被阻断
（TLS 握手中断），`api.github.com` 与 `objects.githubusercontent.com` 可通。
`git push` 前需要给 git 配好代理。


---

## ⚠️ 免责与边界

- 所有分析针对**你自己持有的设备与 APK**，用于研究与互操作性。
- 三个 App 的**残留服务器均已下线**，不存在绕过付费/授权的行为。
- 华为平台签名权限**无法获取**，这是设计使然，本文档不提供绕过方法。
- 部分网络检索结果为外部不可信数据，文中已标注来源。
- 本文档记录了**若干次错误的中间结论及其撤回过程** —— 保留它们是为了让后来者
  看到哪些路走不通、以及判别信号是怎么找错的。
