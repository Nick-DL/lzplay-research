# LZProbe —— 华为内部 MDM 接口存活探针

## 它是干什么的

lzplay 的全部能力都建立在两个前提上：

1. 华为在系统里保留了 `com.huawei.permission.sec.MDM*` 这套**内部权限**和对应的系统服务
2. lzplay 能通过 `com.huawei.systemmanager.permission.ACCESS_INTERFACE` 访问 SystemManager 的私有 AIDL 接口

**这个探针只做只读查询，不执行任何特权操作、不修改任何系统设置。** 它回答一个问题：

> 在一台具体设备上（例如 Mate50 Pro / HarmonyOS 4.2），这套内部接口还存在吗？

结论直接决定后续路线：

- 接口**还在** → lzplay 的骨架仍可用，值得投入脱壳和修补
- 接口**没了** → 改 APK 毫无意义，应当转向 GBox / microG

## 它检查什么

| 检查项 | 判读方式 |
|---|---|
| 设备/系统指纹 | `Build.*` + `ro.build.version.emui` / `ro.build.harmonyos.version` / `hw_sc.build.platform.version` 等属性 |
| 内部权限是否被平台声明 | `PackageManager.checkPermission()`。**返回 `DENIED` 就说明该权限名在系统里根本不存在**（不是"没授予"） |
| 华为相关包是否安装 | `com.huawei.systemmanager`、`com.huawei.devicepolicy`、`com.huawei.hwid` 等 |
| `getSystemService()` 能否拿到 MDM 服务 | 反射 `mdm`、`huawei.mdm`、`systemmanager`、`hwsecurity` 等名字 |
| **ServiceManager 里究竟注册了哪些服务** | 反射 `android.os.ServiceManager.listServices()`，列出名字含 `huawei`/`mdm`/`enterprise`/`devicepolicy` 的全部服务，并逐个 `getService()` 探测 |
| MDM AIDL 类是否存在 | `Class.forName()` 探测 `com.huawei.android.app.admin.DevicePolicyManager` 等，命中则**反射列出全部方法签名** |
| GSF ID 能否读到 | 查询 `content://com.google.android.gsf.gservices` 的 `android_id` |
| 设备管理器可用性 | `ADD_DEVICE_ADMIN` intent 是否可解析 |

## 怎么用（Mate50 Pro）

### 方式 A：ADB（推荐，能拿到完整日志）

1. 手机打开「设置 → 关于手机 → 版本号」连点 7 次开启开发者选项，再打开 **USB 调试**
2. 数据线连电脑，手机上允许调试授权
3. 在工程目录执行：

```powershell
adb install -r LZProbe.apk
adb logcat -c
adb shell am start -n com.lzplay.probe/.MainActivity
# 等 10 秒
adb logcat -d -s LZProbe:I > lzprobe-Mate50Pro.txt
```

4. 把 `lzprobe-Mate50Pro.txt` 发回来即可

### 方式 B：没有 ADB

1. 把 `LZProbe.apk` 传到手机安装（需要在「设置 → 安全 → 更多安全设置」里允许安装未知来源应用）
2. 点开 **LZProbe**，屏幕上会直接显示完整报告
3. 报告同时写入 `Android/data/com.lzplay.probe/files/lzprobe.txt`

## 怎么判读结果

重点看这两段：

```
==== REQUESTED PERMISSIONS (is the permission even declared by the platform?) ====
  com.huawei.permission.sec.MDM                     = ???
  com.huawei.systemmanager.permission.ACCESS_INTERFACE = ???
```

```
==== ServiceManager reflection ====
  interesting services (N):
     <这里列出的服务名>
```

| 现象 | 含义 |
|---|---|
| MDM 权限 = `GRANTED` 或至少权限名被系统识别 | 系统仍声明了这套权限 → 路线可行 |
| 权限 = `DENIED` 且 ServiceManager 里没有任何 huawei/mdm 服务 | **华为已移除该后门** → lzplay 路线在 HMOS 4.2 上不可行 |
| 权限 = `DENIED` 但 ServiceManager 里有 `huawei.*` 服务 | 权限被收紧，需要进一步确认是哪种服务 |
| `MDM AIDL classes by name` 里出现 `FOUND class ...` 并列出方法 | 接口还在，且能看到完整方法签名 → 可直接照着重写 |

## 已经验证过的东西

本探针在 **Android 16（SDK 37）x86_64 模拟器** 上完整跑通，全流程无崩溃，输出示例（模拟器当然没有华为服务）：

```
Build.MANUFACTURER                 = Google
com.huawei.permission.sec.MDM      = DENIED (not defined or not held)
com.huawei.systemmanager           installed=false
total services: 326
interesting services (0):
ServiceManager.getService(device_policy) -> android.os.BinderProxy
```

这证明探针本身工作正常：它能正确区分"权限存在但未授予"和"权限根本不存在"，也能正确枚举系统服务。

## 构建方式（可复现）

```powershell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass -Force
Invoke-Expression (Get-Content work\tools\build_probe.ps1 -Raw)
```

不需要 Gradle / Android Gradle Plugin，只用 SDK build-tools：

```
aapt2 compile → aapt2 link (生成 R.java) → javac → d8
  → adddex.cjs 注入 classes.dex 到 APK 根 → zipalign → apksigner
```

源码在 `work/probe/src/com/lzplay/probe/MainActivity.java`。

> 说明：`aapt2 link -A` 会把 dex 放进 `assets/`，Android 不认；所以用 `work/tools/adddex.cjs`
> 直接把 `classes.dex` 追加到 APK 根目录（重写中央目录，通过 `zipfile.testzip()` 校验）。
