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
