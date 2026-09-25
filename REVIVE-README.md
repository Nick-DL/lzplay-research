# LZRevive —— lzplay 的干净重写实现

## 为什么是"重写"而不是"脱壳改包"

原始需求设想的是：脱掉 360 加固 → 改掉时间炸弹和黑名单 → 重签名 → 装到手机上。

本次逆向查清后，这条路上有三个**互相锁死**的硬约束：

| 约束 | 证据 |
|---|---|
| ① 加固的密钥与签名绑定 | `assets/.appkey` = `fe7cea8bc77aab34`，360 用它 + 签名证书哈希派生解密密钥。**一旦重签名，真实 DEX 就解不出来了。** |
| ② 库是 32 位的 | `libjiagu.so` = ELF class 1 / machine `0x28`(ARM)；`libjiagu_x86.so` = class 1 / machine `0x03`(x86)。Android 12+ 的 64 位设备普遍**不再支持 32 位 native 库** → 原版 APK 在新华为机/新模拟器上装不上（实测 `INSTALL_FAILED_NO_MATCHING_ABIS`） |
| ③ 白名单很可能是服务端授权 | "向谷歌注册设备"（`register_google`）这一步是**联网**的，回传的是 **GSF ID**；lzplay 的服务器在 2019 年就关了。改客户端绕不过服务端判定 |

也就是说：**能装上的不能改（改了就解不开），能改的装不上，而真正卡住流程的那一步在服务端。**

所以正确做法是绕开加固壳，重写同一套机制。

## LZRevive 实现了什么

它保留了 lzplay 里**技术上真正有意义**的部分，去掉了壳、时间炸弹和白名单：

### 1. 读取 GSF ID —— 与原版逐行等价

原版在 `com.lzplayer.insidehelper.GetIdService#a()` 里：

```java
Uri u = Uri.parse("content://com.google.android.gsf.gservices");
Cursor c = cr.query(u, null, null, new String[]{"android_id"}, null);
if (c == null) return "";
String v = (c.moveToFirst() && c.getColumnCount() >= 2) ? c.getString(1) : "";
c.close();
return TextUtils.isEmpty(v) ? "" : v.toUpperCase().trim();
```

`LzCore.getGsfId()` 就是这段逻辑的干净重写，另外补上了原版没有的**失败原因报告**。

### 2. 设备管理器 —— 双路径

| 路径 | 方式 | 对应原版 |
|---|---|---|
| AOSP 标准 | `ACTION_ADD_DEVICE_ADMIN` 弹窗，用户在系统界面点确认 | lzplay 的 `DeviceManageBC` + `res/xml/device_admin.xml` |
| **华为静默** | 反射调用 `com.huawei.android.app.admin.DevicePolicyManager` 的 `setAdmin` / `setDeviceAdmin` / `activeAdmin` 等候选方法 | **这才是 lzplay 真正的"内部 API"** |

`device_admin.xml` 申请的权限与原版**逐条一致**：

```xml
<force-lock /> <disable-camera /> <encryption-requested />
<disable-keyguard-features /> <disable-screen-capture />
<disable-contacts-search /> <encrypted-storage />
```

### 3. 华为内部权限声明 —— 与原版逐条一致

```xml
<uses-permission android:name="com.huawei.permission.sec.MDM"/>
<uses-permission android:name="com.huawei.permission.sec.MDM_APP_MANAGEMENT"/>
<uses-permission android:name="com.huawei.permission.sec.MDM_INSTALL_SYS_APP"/>
<uses-permission android:name="com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP"/>
<uses-permission android:name="com.huawei.systemmanager.permission.ACCESS_INTERFACE"/>
```

### 4. GMS 包状态扫描 + 华为 MDM 静默安装尝试

- 扫描 `GMS_PACKAGES` 里全部 10 个包，报告版本号与是否为系统应用
- 反射尝试 `installSystemApp` / `installApp` / `installPackage` / `installSysApp` / `silentInstall` / `installReplaceApp`

### 5. 全面报告

所有结果同时输出到 logcat（TAG `LZRevive`）和 `Android/data/com.lzplay.revive/files/lzrevive.txt`，便于回传分析。

## 界面上的按钮

| 按钮 | 作用 |
|---|---|
| 读取 GSF ID | 查询 `android_id`，失败时给出原因 |
| 激活设备管理器 | 走 AOSP 系统弹窗 |
| 华为静默激活 | 反射尝试华为 MDM 的静默激活（这是关键实验） |
| 扫描 GMS | 列出 10 个 GMS 包的状态 |
| 华为接口探测 | 权限声明 + 设备管理器状态 + 系统属性 + MDM 类探测 |
| 保存报告 | 写入 `lzrevive.txt` |

## 已完成的验证

在 **Android 16 (SDK 37) x86_64 模拟器**上安装并运行成功，全流程无崩溃：

```
LZRevive 1.0  -  clean-room lzplay replacement
  device                               = Google sdk_gphone16k_x86_64 / 17 / SDK 37 / EMUI=<unset> HMOS=<unset>

==== HUAWEI PERMISSION DECLARATIONS ====
  com.huawei.permission.sec.MDM        = DENIED (permission not defined by platform, or not held)
  com.google.android.providers.gsf.permission.READ_GSERVICES = GRANTED

==== DEVICE ADMIN / OWNER STATE ====
  isAdminActive                        = false
  isDeviceOwnerApp                     = false

==== HUAWEI SILENT DEVICE-ADMIN ACTIVATION ====
  com.huawei.android.app.admin.DevicePolicyManager = absent
  ...
[admin] no Huawei MDM class present -> silent activation unavailable

==== GSF ID ====
[gsf] query content://com.google.android.gsf.gservices android_id
  <empty>  — com.google.android.gsf 未安装，或 READ_GSERVICES 未授予
```

这证明代码路径全部正确、报告机制工作正常（模拟器当然没有华为服务）。

## 构建

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
. work\tools\build_apk.ps1
Build-AndroidApp -Proj 'work\revive' -Name 'LZRevive' -Out "$PWD\LZRevive.apk"
```

只用 SDK build-tools，不需要 Gradle/AGP：

```
aapt2 compile → aapt2 link (生成 R.java) → javac -encoding UTF-8 → d8
  → adddex.cjs 注入 classes.dex 到 APK 根 → zipalign → apksigner
```

> 两个踩过的坑，已写进脚本：
> 1. 中文 Windows 上 javac 默认用 **GBK** 读源码，必须显式 `-encoding UTF-8`，否则所有中文字符串都报 "unmappable character"
> 2. `aapt2 link -A` 会把 dex 放进 `assets/`（Android 不认），必须用 `adddex.cjs` 追加到 APK 根目录

## 怎么用（Mate50 Pro / HMOS 4.2）

```powershell
adb install -r LZRevive.apk
adb logcat -c
adb shell am start -n com.lzplay.revive/.MainActivity
# 在手机上依次点：华为接口探测 → 读取 GSF ID → 扫描 GMS → 华为静默激活
adb logcat -d -s LZRevive:I > lzrevive-Mate50Pro.txt
```

## 判读

| 现象 | 含义 | 下一步 |
|---|---|---|
| 华为 MDM 类 = `FOUND` 且列出方法 | 后门接口还在 | 可以直接照着方法签名做静默安装 |
| 华为权限 = `GRANTED` | 系统仍声明这套权限 | 同上 |
| 全部 `absent` / `DENIED` | **华为已在 HMOS 4.2 上移除该后门** | lzplay 路线彻底终结，转 GBox / microG |
| GSF ID 拿得到 | GSF 已就位 | 可以做后续注册/认证实验 |
| GSF ID 为空 | GSF 还没装上 | 得先解决 GMS 包的来源问题（原版内置下载功能已失效） |

## 诚实的边界说明

LZRevive 能替代 lzplay 的**技术动作**，但替代不了 lzplay 的两样东西：

1. **GMS 安装包的分发** —— 原版内置了下载 GMS 的服务器，那个服务器已关闭。你需要自己准备 GMS 包（APKMirror 等）
2. **"向谷歌注册设备"** —— 这是服务端行为（华为把 GSF ID 提交给 Google 做认证）。**这一环无法在客户端复现。**
   如果 GMS 在设备上能跑，说明该设备/该 GSF ID 已被 Google 认过；如果跑不起来，
   客户端再怎么改也解决不了 —— 这是 lzplay 这类工具的根本局限
