# 修正版结论 —— 两道门必须分开看

> 本文修正 `VERDICT-Mate50Pro-实测结论.md`。
> 上一版结论（"华为 MDM 接口功能不可达 → lzplay 机制无法复现"）**只对了一半**：
> 它把"华为专有的静默特权"和"设备管理器基本能力"混为一谈了。
> 用户指出的"备份还原法"实际操作流程，以及随后的真机实验，纠正了这个错误。

---

## 一、把机制拆成两半

lzplay 做的事其实是两个独立的部分，门禁也完全不同：

| 部分 | 具体动作 | 所需权限 | Mate50 Pro 实测 |
|---|---|---|---|
| **A. 成为设备管理器** | `DeviceAdminReceiver` + `device_admin.xml` + 用户点一次系统弹窗 | 只需 Android 标准能力 | ✅ **可复现**，已实测激活成功 |
| **B. 华为专有静默特权** | `setSilentActiveAdmin` / `setForcedActiveDeviceAdmin` / `setDeviceOwnerApp` / `MDM_INSTALL_SYS_APP` | `MDM_DEVICE_MANAGER` = `signature\|privileged` | ❌ 签名门禁，第三方拿不到 |

**A 才是 lzplay 起作用的真正原因**（这也与用户描述的"激活设备管理器的覆盖界面会展示出来，激活后……"完全吻合）：
lzplay 是在**用户手动点了系统弹窗**之后才拿到设备管理器权限的，之后就靠这个身份 +
手动安装 GMS 包让 GMS 跑起来。华为那套 MDM 特权是用来自动化/增强的，不是必需的。

---

## 二、A 部分的真机证据（已复现）

用本工程的 `LZRevive.apk` 在 Mate50 Pro 上走标准 AOSP 路径：

```
[admin] starting ADD_DEVICE_ADMIN intent (AOSP dialog)
[admin] ADD_DEVICE_ADMIN result = OK
isAdminActive = true
```

并且系统侧确认它确实注册为活跃管理员 —— 用 `dpm remove-active-admin` 反证：

```
Exception: java.lang.SecurityException:
    Attempt to remove non-test admin
    ComponentInfo{com.lzplay.revive/com.lzplay.revive.AdminReceiver}
```

（只有**已注册的 admin** 才会被"移除"操作命中；系统只是拒绝强制移除非测试管理员。）

之后完整探测的实测输出：

```
==== WRITE PATH: silent / forced activation ====
  setSilentActiveAdmin        = returned null  (0 ms)
  isAdminActive now           = true            ← 已是管理员
  setForcedActiveDeviceAdmin  = THREW SecurityException: does not have
        device_manager MDM permission! ... MDM_DEVICE_MANAGER.
  setDelayDeactiveDeviceAdmin = THREW IllegalArgumentException:
        delayTime illegal is out of range of [1, 72] (too low)

==== WRITE PATH: device owner ====
  setDeviceOwnerApp           = THREW SecurityException: does not have
        device_manager MDM permission! ... MDM_DEVICE_OWNER.
```

**结论：A 部分在 HarmonyOS 4.2 上完全可用，且不需要华为签名。**

---

## 三、B 部分的门禁仍然存在（保留上一版证据）

`MDM_DEVICE_MANAGER` / `MDM_DEVICE_OWNER` 的保护级别：

```
Permission [com.huawei.permission.sec.MDM_DEVICE_MANAGER]:
    sourcePackage = androidhwext      uid = 1000
    prot = signature|privileged
```

= 只有华为平台签名或系统分区应用可得。所以 B 部分（静默激活、Device Owner、
静默装系统应用）**第三方无法复现**。

---

## 四、关于"本地白名单"（回应你的第 2 点）

你的更正很重要：

> "如果型号/系统版本不支持，就会弹出'当前暂不支持该设备'，由于 lzplay 服务端已经关闭，
> 这个判断过程我估计是离线的"

我重新核了一遍，结论是：

1. **这个判断确实是本地的** —— 它在启动界面阶段、立即弹出，没有网络超时的停顿。
   服务端已经关闭却仍能弹出，只能说明它是本地判断。
2. **但判定表不在 APK 的明文里。** 我对 `resources.arsc`、全部 `assets/`、以及整个 APK
   原始字节做了型号名扫描：
   - `resources.arsc` 里只有文案资源名 `dialog_text_refuse`，**没有任何型号列表**
   - 全部 assets、libjiagu、shell dex 里都没有型号白名单
   - → 说明这张表（或其生成逻辑）**在被 360 加密的真实 DEX 里**

3. 因此"改白名单"在客户端**理论上是可行的**（去掉本地型号判断），
   但它**换不来 B 部分的能力** —— 因为 B 部分卡的是签名，不是型号。

**所以两个门要分开修：本地型号表可以改（需先脱壳），签名权限改不了。**

---

## 五、关于 `setDelayDeactiveDeviceAdmin` 是否联网（回应你的第 3 点）

**没有联网确认，也不需要。**

`delayTime illegal is out of range of [1, 72]` 是华为
`DevicePolicyManagerService` 里的**纯本地参数校验**（延迟失效时间的小时数范围），
在权限检查**之后**、任何跨进程业务逻辑之前执行。它跟网络没有任何关系。

另外：我那一轮的所有调用都是一次进程内连续执行的，没有做任何联网前置动作。
唯一涉及网络的是 App 在**启动时自动下载**过系统字体（日志里有 1.1 K/s 的记录），
与 MDM 调用无关。

那一轮的调用顺序是（`MdmAutoProbe.runAll`，启动时自动跑）：
只读 canary → `setSilentActiveAdmin` → `setForcedActiveDeviceAdmin` →
`setDelayDeactiveDeviceAdmin` → `setDeviceOwnerApp`，全部在同一个进程里连续完成。

---

## 六、修正后的可行性判断

| 目标 | 可行性 |
|---|---|
| 在 Mate50 Pro / HMOS 4.2 上获得设备管理器权限 | ✅ 已实现并验证 |
| 用该身份**辅助**安装 GMS（用户手动确认每个包） | ✅ 路径已实现（`ApkInstaller`，实测会话提交成功） |
| **静默**安装（无用户确认） | ❌ 需 Device Owner；华为的 `setDeviceOwnerApp` 要签名，AOSP 的 `dpm set-device-owner` 要求恢复出厂且无多用户 |
| 复现华为专有的静默激活 | ❌ `MDM_DEVICE_MANAGER` 是签名权限 |
| 去掉本地型号白名单 | ⚠️ 需先脱壳（表在加密 DEX 里）；但即使去掉也换不来静默能力 |

**对"复活 lzplay"而言，A 部分（真正起作用的那一半）是可以在新机型上复现的。**
这正是 `LZRevive` 已经做到的：它在 Mate50 Pro 上拿到了设备管理器身份，
并且能引导安装 GMS 包 —— 与原版 lzplay 在原支持机型上的效果一致，
只是没有华为那套自动化加成。

---

## 七、三个 App 互相印证（你的第 1 点）

| 检查项 | lzplay | Chat Partner | 旅游必备 |
|---|---|---|---|
| `META-INF/HUAWEI.CER` | ✅ 3160 B | ✅ 3051 B | ✅ 3060 B |
| 格式 | `DeveloperKey:<hex>` | 同 | 同 |
| 证书主体 | `O=lz, OU/CN/L/ST/C=Unknown` | `CN=office, OU=office` | `CN=oversea, OU=oversea` |
| 序列号 | `6ba63c17` | `75a92ce6` | `0bfa80a5` |
| 有效期起 | 2019-06-20 | 2019-07-14 | 2018-11-11 |
| 五个华为 MDM 权限 | ✅ 全部 | ✅ 全部 | ✅ 全部 |
| `DeviceAdminReceiver` + `device_admin.xml` | ✅ | ✅ | ✅ |
| GSF ID 查询（`gsf.gservices` / `android_id`） | ✅ | ✅ | ✅ |
| `register_google`（向谷歌注册） | ✅ | ✅ | ✅ |
| 内嵌 GMS 安装包 | 无（只内嵌伴生 App） | ✅ 13 个 | ✅ 13 个 |
| 自带服务器 | 已关闭 | `api.chat-kingdom.com` | `api.trip-happy.com` + `google.com/android/uncertified` |
| 360 加固 | ✅ | ❌ | ❌ |

**三个 App 结构同源，全部携带华为的 `DeveloperKey` 签名描述文件 —— 你的判断成立。**

补充两点：

1. **签名各不相同**（序列号/有效期/RSA 公钥都不同），说明它们各自用了独立的开发者身份，
   不是同一把证书 —— 但**都走了华为的 `DeveloperKey` 发布通道**，且都用占位主体名
   （`Unknown` / `office` / `oversea`）刻意匿名化。这与"华为不署名地制作"一致。
2. **Chat Partner / 旅游必备把 13 个 GMS 安装包直接内嵌在 assets 里**
   （`com.google.android.gms_28/29.apk`、`vending`、`gsf`、`syncadapters`…）。
   所以"点一键安装后卡住"的那个请求**不是在取安装包**，而是去自己服务器做注册/更新。
   这解释了你观察到的"一直卡着，但手动装 GMS 就能用"。
3. 旅游必备还内嵌了 `assets/idhelper.apk`，并且 DEX 里出现 lzplay 的广播名
   `recev.sfid` —— 与 lzplay 的 `insidehelper` 是同一套"伴生 App 取 GSF ID"设计。

---

## 八、下一步建议

1. **A 部分已可用**：`LZRevive.apk` 已在 Mate50 Pro 上取得设备管理器身份。
   把 GMS 包推进 `files/gms/` 就会自动装（每个包需你点一次系统确认）。
2. 若想要**全静默**安装：只有 AOSP Device Owner 路线
   （需恢复出厂、不登录账号、不多用户），`adb shell dpm set-device-owner com.lzplay.revive/.AdminReceiver`。
3. **脱壳仍有价值**：它能给出①本地型号白名单的真实内容、②lzplay 内部到底还能做什么。
   但它**不会**解锁 B 部分。
4. 想在 HMOS 4.2 上用 GMS 而完全不依赖华为通道，GBox / microG 是成熟得多的选择。
