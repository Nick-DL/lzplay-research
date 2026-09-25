# HUAWEI.CER 与华为授权机制 —— 决定性发现

> 本文档记录对 `META-INF/HUAWEI.CER` 的完整解析，以及由此得出的
> **为什么改包版永远拿不到华为 MDM 权限** 的机制性解释。
> 所有结论均可本地复现（工具见 `work/tools/`）。

---

## 一、`HUAWEI.CER` 是完整的 PMS 校验清单，不只是一张证书

三个 App 的 `META-INF/HUAWEI.CER` 都是明文文本，字段如下：

```
DeveloperKey: 3082036d30820255a00302010202046ba63c17...        (证书 DER，hex)
ValidPeriod:  from 2019-07-25 03:25:58 to 2020-07-25 03:25:58  (GMT)
ApkHash:      8fc90fd182015846adc42981f1845ad290accb9954331a1343d48bdd3e43fc3d
Signature:    2d76cc811328d36925759d44fbc0084f4a5c0cdc2b864c168a9206b06d5c19ae...
PackageName:  com.lzplay.helper
```

华为 `PackageManagerService` 里有一组 `com.android.server.pm.auth.processor.*`
逐字段校验（从设备自带的 `hwServices.jar` 反编译得到）：

| 字段 | 处理器 | 校验内容 |
|---|---|---|
| `DeveloperKey` | `DeveloperKeyProcessor.verifyCert()` | 证书必须**等于 APK 的真实签名证书**，否则日志 `DK_VC not same!` |
| `ValidPeriod` | `ValidPeriodProcessor` | 设备时钟必须落在 from..to 之间，否则 `VP_VC date expired` |
| `ApkHash` | `ApkHashProcessor` | APK 的哈希必须匹配 |
| `Signature` | `SignatureProcessor` | 覆盖其它字段的签名（细节待解） |
| `PackageName` | — | 限定该 CER 只对这个包名有效 |

---

## 二、三把锁 —— 一把已经密码学证实

我对三个 App 逐一验证。

### LOCK 1：`DeveloperKey` == APK 真实签名证书 → **可本地验证**

| App | 结果 | 说明 |
|---|---|---|
| **lzplay（原始）** | ✅ **PASS** | `SHA-256 = da0140a74a63ff65952c34255f48ef55aaba94e292f5286894f5ea455f51e4b6`（MD5/SHA-1/SHA-256 三个指纹全部相等） |
| 旅游必备（原始） | ✅ **PASS** | 同上，自洽 |
| Chat Partner | ❌ FAIL | `DeveloperKey`=office，实际签名=`CN=Android, O=Android` |

**Chat Partner 的 FAIL 是极有价值的对照组** —— 用户说过它是汉化重签版，
签名变过而 `HUAWEI.CER` 没换。这证明我的检测方法**确实能区分真假**，不是废纸。

### LOCK 2：`ApkHash` == APK 的哈希 → **算法未知，但必然存在**

我试了 **20+ 种**候选算法，全部不匹配，**连原始未改动的 lzplay 也不匹配**：

```
SHA256(整个 .apk 文件)                1242b03fc84f8d1c...   ✗
SHA256(MANIFEST.MF 原始字节)          e110d5b3d93971e2...   ✗
SHA256(MANIFEST.MF LF 归一化)         58a56b14e91331b0...   ✗
SHA256(MANIFEST.MF 排除 HUAWEI.CER)   960e6b9234a69a0a...   ✗
SHA256(MANIFEST.MF 排除 CER+SF)       960e6b9234a69a0a...   ✗
SHA256(按 name 排序的 manifest 段)    079141e168ba2cd6...   ✗
SHA256(仅 Name+Digest 行)             01f2e8764a16f554...   ✗
SHA256(LZKEYSTO.SF 原始)              8d71b104cbdec8b0...   ✗
SHA256(zip 中央目录)                  edf05456f4742e6f...   ✗
SHA256(去掉 APK Signing Block)        ...                   ✗
SHA256(各条目 digest 拼接)            ...                   ✗
```

**但逻辑上算法必然存在** —— lzplay 官方教程在真机上成功过，
说明原始 `com.lzplay.helper.apk` 必然通过了 `ApkHashProcessor`。

从 `ApkHashProcessor.getService` 的方法引用可以确定它用了：

```
Utils.getManifestFileWithoutHwCer(...)   ← 取 manifest
Utils.getSfFileName(...)
Utils.isUsingSignatureSchemaV2(...)      ← 区分 v1/v2
EncryptionUtils.sha256(...)
日志串: "AH_G not V2."  "AH_G V2 sort manifest content."
```

⇒ 是 **SHA256**，覆盖对象与 manifest 相关，但**输入的确切字节范围/变换还没还原**。

### LOCK 3：设备时钟必须在 `ValidPeriod` 窗口内 → **窗口已确认**

| App | 窗口（GMT） |
|---|---|
| lzplay | **2019-07-25 03:25:58 → 2020-07-25 03:25:58** |
| 旅游必备 | 2019-10-14 12:20:59 → 2020-10-14 12:20:59 |
| Chat Partner | 2019-10-14 12:19:20 → 2020-10-14 12:19:20 |

**这终于解释了"改时间"的真正原因**，而且是硬证据：
- 官方教程说改到 2019 年 ✓ 落在窗口内
- 另一份教程说改到 2020 年 5 月 ✓ 也落在窗口内
- 用户自己的观察"运行 lzplay 时时间已恢复正常" ✓ 因为**权限在安装那一刻就已持久化**，
  之后时钟走出窗口不影响已授予的权限

---

## 三、由此得出的核心结论

### 3.1 为什么改包版永远拿不到 MDM 权限

```
LOCK 1  DeveloperKey 必须等于 APK 真实签名证书
        ⇒ 重签名 → 破坏了
LOCK 2  ApkHash 必须等于 APK 的哈希
        ⇒ 改内容 → 破坏了
```

**双重锁，改任何一个都过不去。** 这从机制上彻底解释了我们之前所有的观察：

| 观察 | 现在的解释 |
|---|---|
| LZRevive（我方重签）拿不到 MDM | LOCK 1 破坏 |
| `旅游必备-patched.apk` 拿不到 MDM | LOCK 1 + LOCK 2 都破坏 |
| `ChatPartner-patched.apk`（客户汉化版也是重签） | 同上 |
| lzplay 重签后 `.appkey` 失效 | LOCK 1 破坏的另一种表现 |

**我们之前一直在改一个"本来就有钥匙"的东西，而且每次改动都在毁掉那把钥匙。**

### 3.2 唯一可行的路径

```
用 ORIGINAL、未改动的 com.lzplay.helper.apk
   ↓
把设备时钟设进 2019-07-25 .. 2020-07-25
   ↓
通过 com.huawei.localBackup（系统应用，持 INSTALL_PACKAGES + MDM.v2）恢复安装
   ↓
PMS 校验 CER 通过 → 授予 MDM_APP_MANAGEMENT / MDM_INSTALL_SYS_APP
   ↓
lzplay 把 GSF 等装成系统应用 → 闸门 1 与闸门 3 同时失效 → GMS 可用
```

**关键：全程不能碰那个 APK 的一个字节。**

---

## 四、当前状态与风险

### 已验证可用
- ✅ `com.lzplay.helper.apk` 原始文件完好，SHA-256 `1242b03fc84f8d1ceabef58f56fb58342e0d14061ddb082108b2672cd13276b5`
- ✅ 已备份到 `work/originals/`（含 MANIFEST.json 记录哈希）
- ✅ LOCK 1 通过、LOCK 3 窗口已知

### 待解
- ❓ LOCK 2 的 `ApkHash` 算法（已派子 agent 反汇编字节码）
- ❓ `Signature` 字段的覆盖范围（决定 CER 能否被局部篡改）
- ❓ `Certificate: platform` 能否让第三方 APK 被当成平台签名（"核弹级"问题）
- ❓ 设备上 `/data/system/app_mdm_permissions` 是否存在（判断本机是否从未走通过 CER）

### ⚠️ 风险提示（来自备份链路调研）
1. 官方教程要求**先删掉原有的 `Backup` 文件夹** → **会毁掉用户自己的备份**。
   必须改为并存，或先 `adb pull` 备份。
2. 恢复时**只勾选"应用+数据"，绝不勾选系统数据**；**切勿恢复任何 GMS 包**
   （会清掉我们依赖的 GMS 数据）。
3. **绝不要卸载 `com.huawei.localBackup`** —— 鸿蒙 4.2 的 `checkUninstalledSystemApp`
   会让它装不回来。
4. 改时间会破坏 TLS 校验，需临时关闭纯净模式 / 隐私空间 / 应用分身。

---

## 五、复现命令

```powershell
$py = "C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\python.exe"

# CER 字段全量 + 有效期窗口
& $py work\tools\dump_huawei_cer.py

# LOCK 1（证书自洽性）逐包检测
& $py work\tools\verify_huawei_cert.py

# LOCK 2 假设检验
& $py work\tools\check_cer_locks.py
& $py work\tools\test_apkhash_algo.py
& $py work\tools\test_apkhash_round2.py

# 设备端 PMS 处理器反编译
& $py work\research-backup\dexinspect.py work\research-backup\hwServices_x\classes.dex ApkHashProcessor
& $py work\research-backup\dexinspect.py work\research-backup\hwServices_x\classes.dex ValidPeriodProcessor
```

---

# 附：完整的 processor 校验链（第二轮，含对上文的更正）

第二轮从设备 `hwServices.jar` 反编译出了 `com.android.server.pm.auth` **整包**源码。
以下结论均带类名与方法名依据。

## 一、六个 processor 的实际作用

| Processor | 字段 | 实际校验 |
|---|---|---|
| `CertificateProcessor` | `Certificate` | **只是类型标签**，值域 `{testkey, platform, shared, media, null}`。`verifyCert` 唯一实质判断是"certificate==null 且 permissions==null 才拒绝"，**不比对 APK 签名、不授予 platform 身份** |
| `DeveloperKeyProcessor` | `DeveloperKey` | 证书必须**逐字节等于** APK 真实签名证书，否则 `DK_VC not same!` |
| `ValidPeriodProcessor` | `ValidPeriod` | `System.currentTimeMillis() > to` 则失败，日志 `VP_VC date expired` |
| `ApkHashProcessor` | `ApkHash` | ⚠️ **见下文更正 —— 对本例根本不执行** |
| `SignatureV1/2/3Processor` | `Signature*` | 用**华为公钥**验签，覆盖整张 CER |
| `PermissionProcessor` | `Permissions` | 把 CER 批准的权限注入 APK |

## 二、⚠️ 重要更正：`ApkHash` 不参与校验

我上一节花了大量篇幅试 20+ 种哈希算法全部不中。**原因是我搞错了 —— 那个哈希根本没被验证。**

`ApkHashProcessor.verifyCert()` 的**第一句**就是：

```java
if (hwCert.isContainSpecialPermissions()) return true;   // 直接跳过
```

而 lzplay 的 `Permissions:` 行里含 `MDM_INSTALL_SYS_APP` ⇒ `isContainSpecialPermissions() == true`
⇒ **`ApkHash` 被无条件跳过。**

> 这也解释了为什么官方教程能在真机上成功，而我在本地怎么算都对不上 —— 因为没人算过它。

**所以封死改包的是另外两条，不是 ApkHash：**
1. `DeveloperKeyProcessor` —— 已密码学证实（重签必破坏）
2. **华为 `Signature`** —— 见下

## 三、`Signature` 覆盖整张 CER，没有华为私钥就改不了

`SignatureV1Processor.generatePartlyContent()` 逐字段拼出规范化文本（`\r\n` 分隔），覆盖：

```
Version / DeveloperKey / PackageName / Permissions / DeviceIds
ValidPeriod / ApkHash / Certificate / Extension
```

然后：

```java
byte[] digest = EncryptionUtils.sha256(contentFromText.getBytes(UTF_8));
PublicKey pk = DevicePublicKeyLoader.getPublicKey(context);   // V1: 资源 34340866 / 硬编码回退
// V2: 硬编码 DevicePublicKeyLoader.EMUI10_PK
// V3: 硬编码 EMUI11_PK
EncryptionUtils.verify(digest, pk, ...);
```

⇒ **改 `ValidPeriod` 或任何字段 ⇒ 被签内容变化 ⇒ 华为公钥验签必失败。**
⇒ **不是自校验，是华为签名的。这条路密码学封死。**

`Certificate: platform` **不能**让第三方 APK 变成平台签名（回答"能不能自己造钥匙"：**不能**）。

## 四、全有或全无，没有降级路径

`HwCertificationManager.checkHwCertification()` → 任一 processor 返回 false 即整体失败，
之后才 `addHwPermission()`。**不存在"只警告仍授予部分权限"的路径。**

两个"合法跳过"（是**华为签名认可的豁免**，不是我们能利用的降级）：
- `ApkHashProcessor`：`isContainSpecialPermissions()` 为真则跳过
- `ValidPeriodProcessor`：`"2".equals(version)` 则跳过 —— **但三个包都没有 `Version:` 行**，所以走 legacy v1，**有效期检查不跳过**

## 五、★ 真正的失败原因：裸挂钟比较 + 证书 2020 年就过期

```java
// ValidPeriodProcessor.java:112-116
private boolean isCurrentDataExpired(Date toDate) {
    return System.currentTimeMillis() > toDate.getTime();   // 无 NTP、无网络校时、无单调时钟
}
```

### 设备实测证据（429 个包全量 `dumpsys`，只读）

```
MDM_INSTALL_SYS_APP            granted=true 的包数量 = 0     ← 全设备无一，含华为自家
MDM_APP_MANAGEMENT             granted=true 只有 com.huawei.android.launcher / ohos.famanager
com.qiyecomm / com.tyq.pro     携带完整未改动 CER，装到本机，三项 MDM 全部 granted=false
```

`com.qiyecomm` / `com.tyq.pro` 是**原装、未改动、CER 完整有效**的包，2026 年被装上却全被拒。
在所有 processor 里，**唯一能解释这个结果的只有 `ValidPeriodProcessor`**：

```
2026-09-26  >  2020-10-14   ⇒ 致命失败
```

> 这是**单变量对照**：DeveloperKey 已验证自洽、ApkHash 被跳过、CER 未改动所以 Signature 应能过。
> 排除到只剩有效期。

### 这终于硬证了"改时间"的真正原因

社区说法（"华谷套件作者的 2019 谷歌制裁论"）是民间解释。
**真实原因是字面意义上的**：让 `System.currentTimeMillis()` 落进 CER 的 `ValidPeriod` 窗口。

| 教程说法 | 是否落在窗口内 |
|---|---|
| 改到 2019 年 | ✅ （lzplay 窗口 2019-07-25 .. 2020-07-25） |
| 改到 2020 年 5 月 | ✅ |
| 备份目录命名 `2019-12-07` | ✅ |

而用户自己观察到的"运行 lzplay 时时间已恢复正常"也解释了：
**权限在安装那一刻就持久化进 `/data/system/hwcert.xml`，之后时钟走出窗口不影响已授予的权限。**

## 六、两个必须纠正的误读

1. **`com.huawei.permission.sec.MDM: granted=true` 不是授权成功的证据。**
   该权限实测 `protectionLevel = normal`（sourcePackage=androidhwext）
   ⇒ **任何应用都能拿到，它只是"门铃"**（`isSupportHwCertification` 靠它判断要不要查 CER）。
   判据必须看 `MDM_APP_MANAGEMENT` / `MDM_INSTALL_SYS_APP` 这些 `signature|privileged` 的包。

2. **`/data/system/app_mdm_permissions` 这个路径不存在。**
   真实路径是 `/data/system/hwcert.xml`（通过校验的缓存）与 `hwCertBlacklist.xml`（吊销名单）。
   而且**设计上不可探测**：`/data/system` 是 0700，shell 连目录都穿不过去，
   文件存在与否都返回同样的 `Permission denied`。

   **正确的功能性探针**：
   ```powershell
   adb shell "dumpsys package | grep -E 'sec\.MDM[A-Za-z_]*: granted'"
   ```

## 七、修订后的下一步

### E1′（决定性，成本极低）—— 已脚本化

```powershell
& $py work\tools\run_e1.py --check     # 只检查前置条件，不动设备
# 手动把日期设到 2019-12-07（adb 改不了：Operation not permitted）
& $py work\tools\run_e1.py --install   # 装原始 APK 并读回 MDM 授权
```

脚本会：装**原始未改动**的 `com.lzplay.helper.apk` → 读回全部 `sec.MDM*` 授权 →
若被拒则抓 `HwCertificationManager|VP_VC|AH_VC|DK_VC` 日志（**日志会直接点名是哪个 processor 挂了**）
→ 卸载收尾。

### 更干净的因果 A/B

拿 `com.qiyecomm` / `com.tyq.pro`（**同一份 APK 字节**）：
- 时间在窗口外装一次 → 已知 `granted=false`
- 时间在窗口内再装一次 → 若翻成 `true`，ValidPeriod 假说被**单变量证实**

### E2′（开放问题，需实测）

权限成功后把时间改回自动、重启，`granted` 是否还在？
成功证书会缓存进 `hwcert.xml`，但**"时钟回到 2026 后 PMS 重新扫描是否会 `removeExistedCert()` 收回权限"在代码里没找到保证**。
若会收回，则**激活与装 GMS 期间必须一直停在窗口内**。

### 若 E1′ 失败，三条不依赖 CER 的备选

1. 应用启动管理手动白名单（直接喂闸门 1）
2. **microG `GsfProxy`** —— 包名**就是** `com.google.android.gsf` 但不实现 gservices ⇒ 整条问题链消失
3. GBox / 出境易（容器隔离，宿主 IAware 策略不适用）

---

## 附：本轮新增工具

| 工具 | 用途 |
|---|---|
| `work/tools/run_e1.py` | E1′ 实验自动化（`--check` / `--install` / `--status`） |
| `work/tools/dump_huawei_cer.py` | 打印 CER 全部字段与有效期窗口 |
| `work/tools/verify_huawei_cert.py` | LOCK 1：DeveloperKey vs APK 真实签名证书 |
| `work/tools/check_cer_locks.py` | 三把锁的离线检测 |
| `work/research-backup/dexinspect.py` | 零依赖 DEX 方法引用检查器（jadx 在本机会卡死） |
| `work/tools/dexdis.py` | DEX 字节码反汇编器（子 agent 产出） |
