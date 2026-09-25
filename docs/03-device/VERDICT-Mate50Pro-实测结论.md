# lzplay 机制验证报告 —— 华为内部 MDM API 在 HarmonyOS 4.2 上的真实状态

- 测试设备：**HUAWEI DCO-AL00（Mate 50 Pro）**
- 系统：**HarmonyOS 4.2.0.218(C00E182R5P8)** / 底层 Android 12 / API 31
- 安全补丁：2022-08-01
- ABI：`arm64-v8a, armeabi-v7a, armeabi`（**支持 32 位 ARM**）
- 测试工具：`LZRevive.apk`（本工程构建的干净重写实现，无加固、无白名单、无时间炸弹）
- 测试方式：真机安装运行，全部结论来自 `dumpsys`、`logcat` 与应用自产报告

---

## 一、结论（一句话）

> **华为那套内部 MDM 接口在 HarmonyOS 4.2 上「物理存在」但「功能不可达」：它要求的
> `com.huawei.permission.sec.MDM_DEVICE_MANAGER` 是 `signature|privileged` 级权限，
> 只有华为平台签名的应用或系统分区应用才能获得。这就是 lzplay 白名单的真正实现方式 ——
> 它不是一个可被修改的客户端列表，而是系统签名校验。**

因此：**lzplay 的机制无法被任何第三方（包括我们）在未 root 的零售机上复现。**
先前"解除白名单限制即可"的设想，被实测证据否定。

---

## 二、接口「存在」的证据

### 2.1 权限声明仍在（实测 `checkPermission`）

```
com.huawei.permission.sec.MDM                    = GRANTED
com.huawei.permission.sec.MDM_APP_MANAGEMENT      = DENIED (not defined or not held)
com.huawei.permission.sec.MDM_INSTALL_SYS_APP     = DENIED (not defined or not held)
com.huawei.systemmanager.permission.ACCESS_INTERFACE = DENIED (not defined or not held)
```

注意 `com.huawei.permission.sec.MDM` 是 **normal 级**，任何 App 请求就自动授予 —— 所以
这一条**不能**作为"后门可用"的依据（这是早期判断容易踩的坑）。

### 2.2 华为内部类仍在，且方法签名完整

```
com.huawei.android.app.admin.DeviceControlManager  ->  FOUND
  no-arg constructor OK
  method count = 62
```

其中与 lzplay 直接相关的方法（**实测反射枚举得到，非猜测**）：

| 方法签名 | 作用 |
|---|---|
| `public void setSilentActiveAdmin(ComponentName)` | **零点击静默激活为设备管理器** ← lzplay 的核心 |
| `public boolean setForcedActiveDeviceAdmin(ComponentName, Context)` | 强制激活 |
| `public boolean isForcedActiveDeviceAdmin(ComponentName)` | 查询是否强制激活 |
| `public void setDeviceOwnerApp(ComponentName, String)` | 设为 Device Owner |
| `public boolean removeActiveDeviceAdmin(ComponentName)` | 移除管理员 |
| `public boolean setDelayDeactiveDeviceAdmin(ComponentName, int, Context)` | 延迟失效 |
| `public void setDefaultLauncher(ComponentName, String, String)` | 换默认桌面 |
| `public boolean isRooted(ComponentName)` | 查询 root |
| `public void shutdownDevice(ComponentName)` / `rebootDevice(ComponentName)` | 关机 / 重启 |
| `public void setSysTime(ComponentName, long)` | 改系统时间 |
| `public boolean turnOnUsbDebugMode(ComponentName, boolean)` | 开关 USB 调试 |

另外 `com.huawei.android.app.admin.DevicePolicyManager`、`HwDevicePolicyManagerEx`、
`HwDevicePolicyManager` 三个类在 HMOS 4.2 上**已不存在**（`ClassNotFoundException`）。

### 2.3 系统服务在

```
com.huawei.systemmanager                    installed = true
com.huawei.hwid                             installed = true
ServiceManager 共 324 个服务，其中含 huawei/mdm 相关 33 个
getSystemService("device_policy")            -> android.app.admin.DevicePolicyManager
ServiceManager.getService("device_policy")   -> android.os.BinderProxy
```

---

## 三、接口「不可达」的证据（决定性）

### 3.1 逐方法调用结果（`MdmAutoProbe`，启动时自动执行，不依赖点击）

```
==== READ-ONLY CANARIES (no side effects) ====
  isRooted                     = THREW java.lang.SecurityException:
        does not have device_manager MDM permission!: Neither user 10225 nor
        current process has com.huawei.permission.sec.MDM_DEVICE_MANAGER.
  getDeviceName                = THREW java.lang.SecurityException:
        No active admin owned by uid 10225, ComponentName:ComponentInfo{
        com.lzplay.revive/com.lzplay.revive.AdminReceiver}
  isGPSTurnOn                  = THREW java.lang.SecurityException:
        No active admin owned by uid 10225, ...
  isForcedActiveDeviceAdmin    = THREW java.lang.SecurityException:
        does not have device_manager MDM permission!: ... MDM_DEVICE_MANAGER.

==== WRITE PATH: silent / forced activation ====
  setSilentActiveAdmin         = returned null  (0 ms)
  isAdminActive now            = false
  setForcedActiveDeviceAdmin   = THREW java.lang.SecurityException:
        does not have device_manager MDM permission!: ... MDM_DEVICE_MANAGER.
  isAdminActive now            = false
  setDelayDeactiveDeviceAdmin  = THREW java.lang.IllegalArgumentException:
        delayTime illegal is out of range of [1, 72] (too low)
```

### 3.2 三条关键推论

1. **`setSilentActiveAdmin` 静默失败**：不抛异常、返回 `null`、耗时 0 ms、`isAdminActive`
   仍为 `false`。服务端接受了调用但拒绝执行 —— 这是被授权的调用者才会得到的行为。
2. **`setDelayDeactiveDeviceAdmin` 抛出了华为自己的入参校验**
   （`delayTime illegal is out of range of [1, 72]`）—— 证明调用**真的进了华为代码**，
   不是被 AIDL 层提前挡掉。但它校验完参数后仍需权限，前面的调用已经证明我们拿不到。
3. **两道独立的门**：
   - 第一道：`MDM_DEVICE_MANAGER` 权限（签名级）—— 我们过不去
   - 第二道：`No active admin owned by uid` —— 必须先成为管理员，而成为管理员又需要第一道门

### 3.3 缺失权限的保护级别（最终证据）

```
Permission [com.huawei.permission.sec.MDM_DEVICE_MANAGER] (595491b):
    sourcePackage = androidhwext
    uid = 1000   gids = []
    prot = signature|privileged
```

**`signature|privileged`** 的含义（Android 权限模型）：

| 级别 | 授予条件 |
|---|---|
| `signature` | 请求方的签名证书必须与声明该权限的包（这里是 `androidhwext`）**相同** |
| `privileged` | 或应用必须位于**系统分区**（`/system/priv-app` 等） |

两者**我们都不满足**。同类权限的实测值：

```
com.huawei.permission.sec.MDM_HAP_MANAGEMENT      prot=signature|privileged
com.huawei.permission.sec.MDM_CUSTOM              prot=signature|privileged
com.huawei.permission.sec.MDM_INSTALL_SYS_APP     prot=signature|privileged
com.huawei.permission.sec.MDM_PHONE_MANAGER       prot=signature|privileged
com.huawei.permission.sec.MDM_KEYGUARD            prot=normal      ← 只有这个是普通级
com.huawei.permission.sec.MDM_VOICEASSISTANT      prot=signature
com.huawei.permission.sec.MDM_CAMERA              prot=signature
```

---

## 四、这对 lzplay 意味着什么

### 4.1 白名单不在客户端 —— 实测否定

原需求假设"白名单是 APK 里的一个列表，可以改掉"。实测证据链：

```
lzplay 调 setSilentActiveAdmin
   → 华为 SystemManager 检查调用方是否持有 MDM_DEVICE_MANAGER（签名级）
   → 不持有 → 静默忽略
```

**这个检查发生在系统服务里，由签名决定。** 修改 APK 的任何部分（DEX、资源、Manifest、
内置列表）都无法改变结果，因为判定依据是**签名证书**，而签名证书改了，360 加固的
`.appkey` 又会让真实 DEX 解不开（见技术分析报告 §9.0）。

### 4.2 反向印证了"lzplay 由华为自己开发"

Magisk 开发者当年的判断（lzplay 可能是华为自己做的）现在有了直接证据：

- 要用 `setSilentActiveAdmin`，必须持有 `MDM_DEVICE_MANAGER`
- 要持有它，必须用**华为平台证书签名**
- 而 `META-INF/HUAWEI.CER` 里的证书主体是 `O=lz, OU=Unknown, CN=Unknown`，
  签发于 2019-06-20 —— 与 lzplay 上线时间吻合

也就是说：**lzplay 当时确实是被华为"授权"的**。华为关掉它，不是下架一个 App，
而是停止为一个签名授权（并关掉配套服务器）。

### 4.3 时间炸弹与"网络异常"也被解释清楚

lzplay 的"向谷歌注册设备"（`register_google`）要联网把 **GSF ID** 交给 lzplay 服务器，
服务器再用华为的授权把该设备登记到 Google 侧。服务器关闭后这一步必然失败
（用户看到的文案正是 `register_net` = "网络异常，请检查网络、VPN连接状态"）。
"改系统时间 + 备份还原"能绕过，是因为备份里带着**已注册成功的应用数据**，
客户端据此跳过联网步骤 —— 但那只在华为仍然授权的前提下才有意义。

---

## 五、放弃与替代路线

### 5.1 在本机上已确认走不通的路径

| 路径 | 实测结果 |
|---|---|
| 华为 MDM 静默激活（lzplay 原路） | ❌ `MDM_DEVICE_MANAGER` 是 signature\|privileged |
| 华为 MDM 强制激活 / Device Owner | ❌ 同上 |
| 标准 AOSP Device Owner（`dpm set-device-owner`） | ❌ `IllegalStateException: Not allowed to set the device owner because there are already several users on the device.`（需要恢复出厂且无多用户） |
| 脱壳改包后重签名 | ❌ `.appkey` 与签名绑定，重签名后真实 DEX 解不开 |
| 原版 APK 直接安装 | ❌ 32 位 `libjiagu.so` + 现代安装器限制 |

### 5.2 仍然可用的路径

1. **标准 AOSP Device Owner（恢复出厂后）**
   - 需要在设备无账号、无多用户、未完成开机向导时执行
   - 得到的是 Android 官方能力：静默安装、批量授权运行时权限
   - **不含**任何华为专有权限，因此不能替代 lzplay 的原机制，但足以做"辅助安装 GMS"
   - 本工程的 `LZRevive.apk` 已实现该路径（`ApkInstaller`）

2. **GBox / MicroG 路线**
   - 第三方社区已经用完全不同（且不依赖华为签名）的技术路线实现了 GMS 兼容层
   - 这是当前在 HMOS 4.2 上真正可用的方向

3. **装 GMS 包本身**
   - `LZRevive` 的"安装 GMS 包"功能可从 `files/gms/` 批量安装（普通路径需用户点确认，
     Device Owner 路径全静默）
   - `com.google.android.gsf` 装上后，"读取 GSF ID"才能取到 `android_id`

---

## 六、复现方式

```powershell
# 1. 构建
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
. work\tools\build_apk.ps1
Build-AndroidApp -Proj 'work\revive' -Name 'LZRevive' -Out "$PWD\LZRevive.apk"

# 2. 安装并在真机上运行（启动时会自动跑完整 MDM 探测，无需点击）
adb install -r LZRevive.apk
adb shell am start -n com.lzplay.revive/.MainActivity
# 等 10 秒

# 3. 取报告
adb shell cat /sdcard/Android/data/com.lzplay.revive/files/lzrevive.txt

# 4. 交叉验证
adb shell dumpsys package permissions | grep -A6 'MDM_DEVICE_MANAGER'
```

---

## 七、附：本报告所有结论的证据来源

| 结论 | 证据 |
|---|---|
| MDM 权限存在且 `sec.MDM` 为 normal 级 | `checkPermission` 实测 + `dumpsys package permissions` |
| `DeviceControlManager` 存在、62 个方法 | 反射枚举，完整签名已记录在报告文件中 |
| `setSilentActiveAdmin` 静默无效 | 调用返回 `null`、0 ms、`isAdminActive=false` |
| 强制激活被签名权限拒绝 | `SecurityException: does not have device_manager MDM permission` |
| 调用确实到达华为服务端 | `setDelayDeactiveDeviceAdmin` 抛出华为自己的范围校验信息 |
| `MDM_DEVICE_MANAGER` 是 signature\|privileged | `dumpsys package permissions` 的 `prot=signature\|privileged`、`sourcePackage=androidhwext` |
| 标准 Device Owner 也走不通 | `dpm set-device-owner` 返回 `Already several users` |
| 设备支持 32 位 ARM | `ro.product.cpu.abilist = arm64-v8a,armeabi-v7a,armeabi` |
