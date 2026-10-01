# Chat Partner 分析（第二阶段）

> 起因：旅游必备的安装路径卡在清单缺 `REQUEST_INSTALL_PACKAGES`。
> 换 Chat Partner 分析，看它的安装机制是否不同。

---

## 一、核心发现：**它的安装路径纯粹依赖华为 MDM 特权**

`c/s/a/e/h.smali`（对应旅游必备的 `InstallHelper`）方法 `b(String)`：

```java
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x1c                    // 28
if-le v0, v1, :cond_0                // SDK > 28 走特权分支

    FileProvider.getUriForFile(ctx, c/s/a/d/a->a, file)     // 转 content:// URI
    grantUriPermission("android", uri, 1)                   // ★ 它自己做了授权
    DevicePackageManager.installPackage(cn, uri.toString()) // 华为特权安装
    goto :goto_0

:cond_0
    DevicePackageManager.installPackage(cn, path)           // 也是特权安装

:goto_0
    // 然后是 120 秒看门狗
    const-wide/32 v1, 0x1d4c0
    Handler.postDelayed(runnable, v1)
```

### 与旅游必备的对照

| | 旅游必备 | Chat Partner |
|---|---|---|
| **原版** SDK>28 | `installPackage(cn, content Uri)` | `installPackage(cn, content Uri)` |
| **原版** SDK≤28 | `installPackage(cn, path)` | `installPackage(cn, path)` |
| 有 `grantUriPermission` | ✅（第一分支） | ✅ |
| **原版是否有 `ACTION_VIEW`** | ❌ 没有 | ❌ **没有** |
| **我们改包后** | 被改成 `ACTION_VIEW` + 系统安装器 | — |

**⇒ 两个 App 的原版都只用华为特权安装，从不走系统安装器。**

**⇒ 我们早先的补丁把旅游必备的 SDK≤28 分支改成了 `ACTION_VIEW`** —— 那才是引入
`REQUEST_INSTALL_PACKAGES` 需求的原因。

---

## 二、它同样缺少 `REQUEST_INSTALL_PACKAGES`（但**不需要**）

权限清单（`aapt2 dump badging`）：

```
android.permission.INTERNET / ACCESS_NETWORK_STATE / ACCESS_WIFI_STATE
android.permission.WRITE_EXTERNAL_STORAGE / READ_EXTERNAL_STORAGE
com.google.android.providers.gsf.permission.READ_GSERVICES
com.huawei.systemmanager.permission.ACCESS_INTERFACE
com.huawei.permission.sec.MDM
com.huawei.permission.sec.MDM_APP_MANAGEMENT
com.huawei.permission.sec.MDM_INSTALL_SYS_APP                 ← 特权安装
com.huawei.permission.sec.MDM_INSTALL_UNTACHABLE_APP
... （通讯录/相机/录音等业务权限）
（没有 android.permission.REQUEST_INSTALL_PACKAGES）
```

**但因为安装走 `DevicePackageManager.installPackage()`，
特权路径绕开标准安装器，所以它不需要这个权限。**

我早先猜测"Chat Partner 用标准 Intent 安装，所以一定有该权限" ——
**这次分析证伪了这个假设。**

---

## 三、它也**同样有 OOM bug**

`c/s/a/j/c.smali`（对应旅游必备的 `com/x/plus/pro/f/c`），方法 `b(String)`：

```java
MessageDigest md5 = MessageDigest.getInstance("MD5");
byte[] all = FileUtil.a(new File(path));      // ★ 整包读入无上限的 ByteArrayOutputStream
md5.digest(all);
```

**逐行同构** —— 同一个方法名、同一个实现、同一个 bug。

**而且更严重**：Chat Partner 要哈希的 GMS 是
**100,247,804 字节（95.6 MB）**，比旅游必备那套（86.5 MB）**还大**。

⇒ **Chat Partner 会在同一位置、以同样方式崩溃。**

---

## 四、两个 App 的工作量对照

| | 旅游必备 `Xpp_Q.json` | Chat Partner `tyq_resource_Q.json` |
|---|---|---|
| 清单是否加密 | ✅ RC4（密钥 `abksfsijifefe`） | ❌ **明文** |
| GMS 版本 | 200615030（20.06.15） | 17786048（更旧） |
| GMS 大小 | 90,657,638 B（86.5 MB） | **100,247,804 B（95.6 MB）** |
| GSF / contacts-sync | 与 CP 共用同一份字节 | 与旅游必备共用 |
| 地图包 | `com.oversea.gmapjar` | `com.tyq.pro.gmapproxy`（自家） |
| 安装方式 | `installPackage`（两分支） | `installPackage`（两分支） |
| 缺 `REQUEST_INSTALL_PACKAGES` | 是 | 是 |

---

## 五、这条路线的**真正价值**（重要）

Chat Partner 的安装路径**不经过系统安装器**，所以**不需要**
`REQUEST_INSTALL_PACKAGES`。而特权安装只在**有 MDM 权限**时可用。

于是出现一个组合可能：

```
原版 Chat Partner（改动为零，签名完好）
   + 时钟在 CER 窗口内（2019）
        ⇒ 拿到 MDM_INSTALL_SYS_APP
        ⇒ installPackage() 可用
        ⇒ 静默安装 GMS，且【不需要 REQUEST_INSTALL_PACKAGES】
```

**但前提是它得先能跑起来** —— 而它因为同一个 OOM bug 跑不起来。

### ⚠️ 这里有一个必须注意的陷阱

**如果为了修 OOM 而给 Chat Partner 打补丁重签，就会丢掉 CER 授权 ⇒ 丢掉 MDM 特权
⇒ 安装路径彻底失效。**

**也就是说：对 Chat Partner 做"修 OOM 的改包"是自我否定的** ——
和旅游必备的情况不同：

| | 旅游必备 | Chat Partner |
|---|---|---|
| 原版安装路径 | MDM 特权 | MDM 特权 |
| 我们改包后的路径 | 改成 ACTION_VIEW（**丢特权也能装，但差权限**） | **未改** ⇒ 仍需特权 |
| 修 OOM 的代价 | 丢特权，但路径已改，勉强可用 | **丢特权后完全不能用** |

**⇒ 对 Chat Partner，"改包修 OOM"这条路是死的。**

### 那么唯一可行的思路是：**不改包，让它不 OOM**

OOM 的触发条件是：`UpdateImp/c.e()` 在构造请求体时，对**清单里每个包**取
`PackageUtil.f(ctx, pkgName)`（**已安装 APK 的路径**）算 MD5。

**⇒ 如果 GMS 已安装且体积大，就崩；如果没装，路径为空，`FileUtil.b()` 提前返回 null，不崩。**

**⚠️ 但这与"要用它装 GMS"直接矛盾** —— 没装才不会崩，而没装正是我们要它去装的状态。

**除非**：崩溃只发生在**第一次启动**（此时 GMS 未装、不崩），
而安装过程中 GMS 逐渐装上，**后续启动**才会崩。

**这值得实测**：

1. 时钟设 2019，装**原版** Chat Partner
2. GMS 保持未安装状态（当前正是）
3. 启动 → **预期不崩**（因为没有已装的大包可哈希）
4. 让它走完流程 → **它应该能用特权静默装 GMS**
5. 装完后再启动可能会崩 —— **但那时已经不需要它了**

**⚠️ 注意**：早先在旅游必备上的实测里，GMS **全部卸载**后原版**仍然崩**
（2026-10-01 09:08 那次）。所以上面第 3 步的预期**可能是错的**。

需要再想清楚它到底在哈希什么文件。可能不是"已安装包"而是**缓存里已解包的 APK**
（`<cache>/<pkg>_29.apk`）—— 那个文件在**解包阶段**就会产生，
即使 GMS 没装。若如此，则第 3 步的预期不成立。

**这正是下一轮要验证的第一个问题。**

---

## 六、下一轮的具体待办

1. **搞清 OOM 到底在哈希哪个文件**
   - 在崩溃前抓 `/proc/<pid>/maps`、或用 `strace`（无 root 可能不行）
   - 或者：**给 Chat Partner 加日志探针**（改包，仅用于诊断，不用它安装）
     —— 用一个**改包版做探针**、**原版做实际安装**，两者分工
2. **实测原版 Chat Partner 在 GMS 未安装状态下是否崩溃**
3. 若确实不崩 ⇒ **这条路线成立**，且完全不需要：
   - 备份还原
   - VPN 代理
   - 用户收集 APK
   - 修改清单

---

## 七、可复用的产物

| 工具 | 说明 |
|---|---|
| `work/chat_decoded/` | Chat Partner 完整反编译树（已含早先的补丁） |
| `work/originals/chatpartner.apk` | **原版**（签名自洽，CER 里 `CN=office`） |
| `work/xpp/com.tyq.pro__tyq_resource_Q.json` | **明文**包清单（无需解密） |
| `work/register/ChatPartner_register_0.js` | 内置注册 JS（与旅游必备逐字节相同） |
