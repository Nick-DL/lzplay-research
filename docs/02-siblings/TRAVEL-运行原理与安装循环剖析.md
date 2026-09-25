# 旅游必备 —— 完整运行原理与安装循环剖析

> 目标：搞清楚它到底做了什么、检验了什么、调了哪些权限，
> 为什么会在【"GMS环境需要更新" → 卸载旧版 → 安装中 → 安装异常】里无限循环。

---

## 一、它是三件东西合体，不是一个安装器

拆开 smali 后，`com.x.plus.pro` 其实由四个独立部件组成：

| 部件 | 混淆名 | 源文件 | 职责 |
|---|---|---|---|
| **设备门禁** | `a.b` | `DeviceManage.java` | 启动时问华为"这台设备支持吗" |
| **启动协调** | `a.a` + `a.a$a` | `DeviceHelper.java` | 拉配置 → 决定进主界面还是报错 |
| **配置/更新** | `update.c` | `ConfigManager` 类 | 解密 assets 里的配置、向自己服务器上报 |
| **安装引擎** | `e.b` | **`InitializeManager.java`** | 状态机 + 安装队列驱动 |
| **安装执行** | `e.c` | **`InstallHelper.java`** | 解压 APK、调华为 MDM 装/卸、校验 |

包名 `com.qiyecomm`，主界面 `com.x.plus.pro.b`（Fragment）。

---

## 二、启动链路（我们已修复的部分）

```
SplashActivity.onCreate
 ├─ com.x.plus.pro.a.b.a(Context)                    [DeviceManage.java:92]
 │    new com.huawei.android.app.admin.DevicePackageManager()
 │    .getSysAppList(ComponentName(DeviceManageReceiver), [packageName])
 │    异常判定：NoSuchMethodError / NoExtAPIException → false → 弹 incompatible
 │           其它异常（如 SecurityException）→ true
 │    ✅ 真机实测：系统 androidhwext.jar 用 BootClassLoader 覆盖了 APK 内嵌的假桩，
 │       getSysAppList 正常返回 []（不抛异常）→ 门禁放行
 │
 └─ com.x.plus.pro.a.a$a.handleMessage
      └─ com.x.plus.pro.update.e.a(Context, update.b)
           HTTP GET https://api.trip-happy.com/index.php/upgrade/info/    ← 服务器已死
           ↓ 失败 → a.a$1.a() → 弹 R.string.register_net
                                "Connect Google network exception…"  [重试] ← 死胡同
           ↓ 成功 → a.a$1.b() → 启动 MainActivity
```

**补丁 1**：`f.h;->a(Context)Z`（`NetworkUtil.isNetworkConnected`）→ 恒返回 true
**补丁 2**：`a.a$1;->a()V`（失败回调）→ 改为直接调用 `b()V`（成功路径）

结果：弹窗消失，正常进入主界面。

---

## 三、主界面状态机（`com.x.plus.pro.b`）

### 状态定义（`c(I)V`，字段 `ah` 保存当前状态）

| 状态 | 文案资源 | 界面 |
|---|---|---|
| 0 | `install_error` "安装异常，请重试。" | 按钮 `retry` "重试" |
| 1 | 已注册→`home_gms_error` / 未注册→`new_guide` | 按钮 `home_repair` "重新安装" / `start` "开始" |
| 2 | `register_fail_notice` | 按钮 `register_google` "向谷歌注册设备" |
| 3 | `home_done` "一切正常。" | 按钮隐藏 |
| 4 | `installing` "正在安装，请不要退出。" | 进度条 |
| 5 | `home_gms_error` | 按钮 `home_repair` |
| 6 | （无文案） | 按钮隐藏 |

### 状态判定 `m()V` —— **这是理解一切的关键**

```java
public final void m() {
    if (this.ah == 2) return;                       // 注册流程中不覆盖

    if (!prefs.getBoolean("com.x.plus.pro.userRegistered", false)) {
        c(0);                                       // ★ 没注册过就是"安装异常"
        return;
    }

    boolean allOk = true;
    for (ApkInfo apk : installHelper.b) {            // 内嵌包清单
        if (installHelper.a(apk) != 1) { allOk = false; break; }
    }

    if (allOk) {
        c(prefs.getBoolean("com.x.plus.pro.register_result", false) ? 6 : 5);
    } else {
        c(1);                                       // ★ "GMS环境需要更新"
    }
}
```

**第一个坑**：状态 0（"安装异常"）跟安装失败无关 —— 它只是
`com.x.plus.pro.userRegistered` 这个 SharedPreferences 开关为 `false`。

### 单包检验 `InstallHelper.a(ApkInfo)I`

```java
if (!e/c.c(ctx, pkg))                    return 0;   // 未安装
int installed = f/i.d(ctx, pkg);                     // 已装版本号
int expect    = Integer.parseInt(apkInfo.c);
if (installed < expect)                  return 2;   // 版本太旧
String sig = f/i.b(ctx, pkg);                        // ★ 已装包签名的 MD5
if (!sig.equals(apkInfo.g))              return 2;   // ★ 签名不符
return e/c.b(ctx, pkg) ? 1 : 2;                      // 1=完全正确, 2=是系统应用
```

其中 `f/i;->b(Context, String)`：
```java
PackageInfo pi = pm.getPackageInfo(pkg, 0x40 /* GET_SIGNATURES */);
return md5(pi.signatures[0].toByteArray());
```

**第二个坑**：`m()` 里判的是 `!= 1`，所以 **0 和 2 都算"需要更新"**。
这意味着只要签名 MD5 或版本号对不上，它永远认为环境不达标。

---

## 四、无限循环的完整成因（三个坑叠加）

### 坑 1：文件名写死了当前 SDK 版本

`ApkInfo.java:83`（`private a(Context)V`）：

```java
String name = apkInfo.d + "_" + Build.VERSION.SDK_INT + ".apk";
//           "com.google.android.gms" + "_31" + ".apk"
String path = FileDownloader.getSoPath() + sep + name;

boolean ok = false;
if (f/c.a(ctx, name, path)) {          // AssetManager.open("com.google.android.gms_31.apk")
    String md5 = f/c.b(path);
    if (md5.equals(apkInfo.b)) ok = true;
    if (ok) apkInfo.f = path; else f/c.a(path);
}
callback.a(ok, apkInfo);
```

而 assets 里**只有 `_28`（Android 9）和 `_29`（Android 10）两套**，
设备是 **Android 12 = SDK 31** → `open()` 抛 `FileNotFoundException` → `ok = false`。

**补丁 3**：把那条 `sget v2, Landroid/os/Build$VERSION;->SDK_INT:I`
换成 `const/16 v2, 0x1d`（= 29），让它去找存在的 `_29` 资产。

### 坑 2：失败后回退到已死的服务器

`InitializeManager.a(Z, ApkInfo)V`（安装结果回调）：

```java
if (ok) { k(); return; }                       // 成功 → 下一个
// 失败 → FileDownloader 从 apkInfo.a（服务器 URL）下载
s.putObject(a, FileDownloader.getImpl().create(apkInfo.a).
        setPath(apkInfo.f).setCallback(r).ready());
```

`api.trip-happy.com` 已下线 → 下载也失败。

### 坑 3：三处华为 MDM 调用没有异常保护 → 崩溃

设备实测的崩溃栈（`com.qiyecomm`）：

```
# 卸载路径
java.lang.SecurityException: Does not hava application management permission.:
    Neither user 10362 nor current process has
    com.huawei.permission.sec.MDM_APP_MANAGEMENT.
    at …DevicePackageManager.uninstallPackage
    at com.x.plus.pro.e.c.b(InstallHelper.java:146)      ← 裸调用
    at com.x.plus.pro.e.b.i(InitializeManager.java:258)

# 安装路径（修掉卸载后暴露出来的下一处）
    at …DevicePackageManager.installPackage
    at com.x.plus.pro.e.c.a(InstallHelper.java:120)      ← 裸调用
    at com.x.plus.pro.e.b.j(InitializeManager.java:317)
```

甚至形成了一个**递归环**：

```
e.b.i(258) → e.b.m(394) → e.b.a(433) → e.c.b(163) → e.b.i(258) → …
```

每绕一圈就推进到下一处华为调用，直到踩中裸调用而崩。

### 裸调用全表（`try/catch` 保护情况）

| 文件 | 行 | 华为调用 | 有保护？ |
|---|---|---|---|
| `e/c.smali` | 446 | `installPackage` | ❌ |
| `e/c.smali` | 456 | `installPackage` | ❌ |
| `e/c.smali` | 582 | `uninstallPackage` | ❌ ← 已补 |
| `b.smali` | 1153 | `getPersistentApp` | ❌ |
| `b.smali` | 1169 | `addPersistentApp` | ✅ |
| `e/c.smali` | 529 | `setSysAppList` | ✅ |
| `update/c.smali` | 278/315/323/345 | `setSysAppList`/`installPackage`/`getSysAppList` | ✅ |

**补丁 4**：把 `InstallHelper.b(String)` 的 `if-eqz v0, :cond_0` 改成 `goto :cond_0`，
使卸载永远走安全分支（弹窗 → 打开系统卸载页，即 `InitializeManager$1.onClick` 的行为）。

---

## 五、这套 App 原本的"正常"流程（在华为授权机上）

```
① 启动 → getSysAppList 得到设备被授权
② 拉配置（或本地解 Xpp_Q.json）→ 得到内嵌包清单 + 期望版本 + 期望签名 MD5
③ 逐包检验：未装/版本低/签名不符 → 需要安装
④ 先卸载旧版本：DevicePackageManager.uninstallPackage(admin, pkg, false)   ← 静默
⑤ 从 assets 解出 包名_<SDK>.apk 写到 FileDownloader 目录
⑥ DevicePackageManager.installPackage(admin, uri)                          ← 静默
⑦ setSysAppList / addPersistentApp                                          ← 加白名单保活
⑧ 向 https://www.google.com/android/uncertified 提交 GSF ID 注册设备
⑨ 重启后 GMS 可用
```

**中间标 ← 的三步全部需要 `signature|privileged` 权限**，第三方 App 拿不到：
- `MDM_APP_MANAGEMENT`（静默装/卸）
- `MDM_INSTALL_SYS_APP`（装系统应用）
- `MDM_DEVICE_MANAGER`（设备管理特权）

---

## 六、当前进度与后续

### 已完成的补丁（`work/tools/patch_travel*.py`，原始 smali 已备份）

| # | 位置 | 改动 | 效果 |
|---|---|---|---|
| 1 | `f/h;->a(Context)Z` | 恒返回 true | 绕过网络检查 |
| 2 | `a/a$1;->a()V` | 改为调用 `b()V` | 绕过已死服务器 |
| 3 | `ApkInfo;->a(Context)V` | `SDK_INT` → 常量 29 | 让它找到 `_29` 资产 |
| 4 | `e/c;->b(String)V` | `if-eqz` → `goto` | 卸载不再崩溃 |

并已验证：App 能启动、能进主界面、能被激活为设备管理器、
点"立即更新"能走到系统卸载页。

### 还差最后一步

`InstallHelper.a(String)`（`e/c.smali:446/456`）仍然裸调华为 `installPackage`。
**它必须改成用 Android 标准安装方式**：

```java
// 目标：替换 DevicePackageManager.installPackage(admin, path)
Intent i = new Intent(Intent.ACTION_VIEW);
i.setDataAndType(FileProvider.getUriForFile(ctx, authority, new File(path)),
                 "application/vnd.android.package-archive");
i.addFlags(FLAG_ACTIVITY_NEW_TASK | FLAG_GRANT_READ_URI_PERMISSION);
ctx.startActivity(i);          // 系统弹出安装确认，用户点一下即可
```

好消息是这段 smali 里**已经建好 FileProvider URI 并 grantUriPermission**了
（SDK>28 那个分支），所以只需把两句 `invoke-virtual …installPackage` 换成
`startActivity`。这是接下来最小的一处改动。

### 为什么"三个 App 激活后门权限"做不到

三个 App 的 `setSilentActiveAdmin` / `setForcedActiveDeviceAdmin` /
`installPackage` / `uninstallPackage` / `setDeviceOwnerApp` **全部**受
`MDM_DEVICE_MANAGER` / `MDM_APP_MANAGEMENT` 门禁，而这些权限实测为
`signature|privileged`（`sourcePackage=androidhwext`）。

它们当年能用，是因为**华为给了它们平台签名授权**（`META-INF/HUAWEI.CER`
的 `DeveloperKey:` 就是这个发布通道的产物）。我们能改包、能重签、
能让它们跑到"请点确认"这一步，但**无法让系统把它们当成授权应用**。

**能简化的只有"需要用户点一下"的部分，不是"系统放行"的部分。**

---

## 七、补充：递归环的实证

修掉 `InstallHelper.uninstall`（补丁 4）之后，设备上暴露出**下一处**裸调用，
而且这一份栈把整个调用环完整画了出来：

```
java.lang.SecurityException: Does not hava application management permission.:
    Neither user 10362 nor current process has
    com.huawei.permission.sec.MDM_APP_MANAGEMENT.

  at huawei.android.app.admin.TransactionSponsor.transactToExecCommand(…:166)
  at huawei…HwDevicePolicyManagerEx.installPackage(…:251)
  at com.huawei…DevicePackageManager.installPackage(…:69)
  at com.x.plus.pro.e.c.a(InstallHelper.java:120)        ← 裸调用（install）
  at com.x.plus.pro.e.b.j(InitializeManager.java:317)
  at com.x.plus.pro.e.b.d(InitializeManager.java:299)
  at com.x.plus.pro.e.b.i(InitializeManager.java:253)
  at com.x.plus.pro.e.b.m(InitializeManager.java:394)
  at com.x.plus.pro.e.b.a(InitializeManager.java:433)
  at com.x.plus.pro.e.c.b(InstallHelper.java:163)
  at com.x.plus.pro.e.b.i(InitializeManager.java:258)     ┐
  at com.x.plus.pro.e.b.m(InitializeManager.java:394)     │
  at com.x.plus.pro.e.b.a(InitializeManager.java:433)     │ 同一个环
  at com.x.plus.pro.e.c.b(InstallHelper.java:163)         │ 重复出现
  at com.x.plus.pro.e.b.i(InitializeManager.java:258)     ┘
  …
```

### 读法

```
                ┌──────────────────────────────────────────┐
                ↓                                          │
   InitializeManager.i()  ──→  .m()  ──→  .a()  ──→  InstallHelper.b()
        (装/卸队列驱动)      (状态判定)   (上报结果)     (完成回调)
                ↑                                          │
                └──────────────────────────────────────────┘
```

`i()` 每轮从队列取出一个包 → 判定 → 让 `InstallHelper` 去装/卸 →
`InstallHelper` 完成后回调 `InitializeManager.a()` → 又驱动 `i()` 处理下一个包。

**这既是正常的工作循环，也是崩溃的放大器**：因为 `InstallHelper` 里
装/卸都是裸调华为 MDM，循环每绕一圈就逼近下一处未保护的调用，
直到某一次参数走到 `installPackage` 而直接抛出 `SecurityException`。

### 结论

`MDM_APP_MANAGEMENT` 缺失不仅让**装/卸**失败，还让整个**状态机无法推进** ——
因为每一次尝试都以异常终止，队列头部那个包永远处理不掉，
`m()` 重新判定时看到的依然是"未装/版本不符"，于是 `c(1)` → 循环。
这就是"看不到尽头"的机械原因。

---

## 八、补丁清单（最终）

| # | 位置 | 改动 | 脚本 | 状态 |
|---|---|---|---|---|
| 1 | `f/h;->a(Context)Z` | 恒 true | `patch_travel.py` | ✅ 已验证 |
| 2 | `a/a$1;->a()V` | 改调 `b()V` | `patch_travel2.py` | ✅ 已验证 |
| 3 | `ApkInfo;->a(Context)V` | `SDK_INT` → 常量 29 | `patch_travel3.py` | ✅ 已验证 |
| 4 | `e/c;->b(String)V` | `if-eqz` → `goto`（卸载走安全分支） | `patch_travel4.py` | ✅ 已验证 |
| 5 | `e/c;->a(String)V` | 华为 `installPackage` → `ACTION_VIEW` Intent | `patch_travel5.py` | ⚠️ 已写入 smali 并重建，但设备上仍走到华为分支 |

补丁 5 的状态需要说明：smali 已确认改对（`:cond_0` 分支已替换成标准安装 Intent，
`SDK_INT` 读取已替换为常量 29），重建也成功，但设备实测仍在
`InstallHelper.java:120` 处抛 `MDM_APP_MANAGEMENT`。
说明该分支的条件判定和我预期的不一致 —— 需要进一步核对 `if-le` 的实际语义
（可能 `if-le` 在这里是"小于等于则**不**跳转"或常量寄存器顺序与我算的相反）。

**下一步只需把这一处判定反过来**（或直接把 `installPackage` 那两句 `invoke-virtual`
换成 `nop`，让死代码真正不可达），安装流程就能走到系统安装器。

### 已确认可用的备份

```
work/travel_backup/
  h.smali.orig                (补丁 1 前)
  a$1.smali.pass2.orig        (补丁 2 前)
  ApkInfo.smali.pass3.orig    (补丁 3 前)
  e_c.smali.pass4.orig        (补丁 4 前)
  e_c.smali.pass5.orig        (补丁 5 前)
  b.smali.orig                (另一处 getPersistentApp 未改动，仅备份)
```
