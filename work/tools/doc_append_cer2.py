#!/usr/bin/env python3
"""Append the corrected CER validation analysis to the HUAWEI-CER document."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'docs', '01-lzplay', 'HUAWEI-CER-\u534e\u4e3a\u6388\u6743\u673a\u5236.md')

ADD = u"""

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

`SignatureV1Processor.generatePartlyContent()` 逐字段拼出规范化文本（`\\r\\n` 分隔），覆盖：

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
   adb shell "dumpsys package | grep -E 'sec\\.MDM[A-Za-z_]*: granted'"
   ```

## 七、修订后的下一步

### E1′（决定性，成本极低）—— 已脚本化

```powershell
& $py work\\tools\\run_e1.py --check     # 只检查前置条件，不动设备
# 手动把日期设到 2019-12-07（adb 改不了：Operation not permitted）
& $py work\\tools\\run_e1.py --install   # 装原始 APK 并读回 MDM 授权
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
"""

t = io.open(P, encoding='utf-8').read()
if u'\u5b8c\u6574\u7684 processor \u6821\u9a8c\u94fe' in t:
    print('already appended')
else:
    io.open(P, 'w', encoding='utf-8', newline='\n').write(t.rstrip('\n') + ADD)
    print('appended %d chars -> %d bytes total' % (len(ADD), os.path.getsize(P)))
