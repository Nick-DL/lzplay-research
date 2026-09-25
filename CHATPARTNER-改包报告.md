# Chat Partner（com.tyq.pro）改包报告

> 结论：**和旅游必备是同一套代码的换皮版本。同一组补丁全部适用，
> 已改包、重签、真机验证走到主界面 + 设备管理器激活成功。**

---

## 一、先看身份

| 项 | 旅游必备 | **Chat Partner** |
|---|---|---|
| 包名 | `com.qiyecomm` | **`com.tyq.pro`** |
| 核心包 | `com.x.plus.pro`（**混淆**） | **`com.qiyetong.pro`（真名！）** |
| 启动 Activity | `com.x.plus.pro.SplashActivity` | `com.qiyetong.pro.SplashActivity` |
| 主 Activity | `com.x.plus.pro.MainActivity` | `com.qiyetong.pro.MainActivity` |
| 设备管理接收器 | `dm.DeviceManageReceiver` | **`DeviceControlReceiver`** |
| 配置（Android 9） | `Xpp_P.json` | `tyq_resource.json` |
| 配置（Android 10） | `Xpp_Q.json`（**加密**） | **`tyq_resource_Q.json`（明文！）** |
| 内嵌 helper | `idhelper.apk` | `regtransfer.apk` |
| 服务器 | `api.trip-happy.com`（死） | `api.chat-kingdom.com`（死） |
| 加固 | 无 | 无 |
| 版本 | 9.0 (120) | 18.06 (1806) |
| 类总数 | 1634（单 dex） | **8330**（两个 dex） |

**命名规律**：`qiye`(企业) — `qiyecomm` = 企业通讯；`qiyetong` = 企业通；
`tyq.pro` = 通（t）易（y）企（q）。**同一个开发者的两个换皮产品。**

**Chat Partner 读起来容易得多** —— 类名、方法名、源文件名全部保留
（`InitializeManager.java`、`InstallHelper.java`、`GooglePlayFragment.java`…）。

---

## 二、🎯 最有价值的发现：明文包清单

旅游必备的 `Xpp_Q.json` 是 Base64 加密的，我们逆不出来。
**Chat Partner 的同款配置是明文 JSON**：

```json
{
  "app_name":"qiyetong",
  "time":1569960412345,
  "apk":[
    { "down_url":"http://cdn.chat-kingdom.com/chat_e88a…_003.apk",
      "pkg_name":"com.google.android.gms",
      "md5":"326f6514b2559a7d19c9971a2da70a1b",
      "ver_code":"17786048", "size":"100247804",
      "sign_1":"cde9f6208d672b54b1dacc0b7029f5eb",
      "sign_2":"f0fd6c5b410f25cb25c3b53346c8972fae30f8ee7411df910480ad6b2d60db83",
      "number":1 },
    { "pkg_name":"com.google.android.gsf",                   "ver_code":"29",       "size":"3923176",   … },
    { "pkg_name":"com.google.android.syncadapters.contacts", "ver_code":"29",       "size":"1457061",   … },
    { "pkg_name":"com.tyq.pro.gmapproxy",                    "ver_code":"193",      "size":"154343",    … },
    { "pkg_name":"com.android.vending",                      "ver_code":"81526700", "size":"32857746",  … }
  ]
}
```

### 实测验证（`work/tools/verify_chat_manifest.py`）

| manifest pkg | 内嵌 `_29` 文件 | size | **MD5** | **签名证书** |
|---|---|---|---|---|
| `com.google.android.gms` | ✓ | ✅ | ✅ | ✅ |
| `com.google.android.gsf` | ✓ | ✅ | ✅ | ✅ |
| `com.google.android.syncadapters.contacts` | ✓ | ✅ | ✅ | ✅ |
| `com.android.vending` | ✓ | ✅ | ✅ | ✅ |

**四个包的 MD5 与签名指纹全部吻合。**

同时确认了两个字段的含义（旅游必备里是混淆的）：
- **`sign_1` = 签名证书的 MD5**
- **`sign_2` = 签名证书的 SHA-256**

这正好对应旅游必备 `f/i;->b()` 算的那个 `md5(signatures[0].toByteArray())`。
`com.google.*` 四个包共用同一把 Google 签名，与 Google 官方发布一致。

> 附带发现：旅游必备的 `com.oversea.gmapjar_29.apk` (154359 B) 和
> Chat Partner 的 `com.tyq.pro.gmapproxy` (154343 B) **只差 16 字节** ——
> 同一个自研地图代理组件，换了个包名。

---

## 三、启动链路（与旅游必备逐行对应）

```
SplashActivity.onCreate
 ├─ r()   淡入动画
 └─ q()   UpdateInstance.a(ctx, callback)
            └─ UpdateInstance.b(ctx, callback)
                 └─ HTTP GET http://api.chat-kingdom.com/index.php/upgrade/checkinfo/
                      ↓ 失败 → callback.a(String) → runOnUiThread → startActivity(ErrorActivity)
                      ↓ 成功 → callback.onSuccess() → startActivity(LoginActivity) + finish()
```

回调接口 `IUpdateRequestCallback`：

```java
public interface IUpdateRequestCallback {
    void a(String message);   // 失败
    void onSuccess();         // 成功
}
```

服务端响应处理（`c/s/a/i/c.smali`）：

```java
String config = json.getJSONObject("data").getString("config");
String sign   = json.getJSONObject("data").getString("sign");
String calc   = md5(base64decode(config) + SECRET);      // ★ 服务端签名校验
if (!empty(calc) && calc.equals(sign)) {
    save(config);
    callback.onSuccess();                                 // ← 好消息
    ...
} else {
    callback.a(resources.getString(0x7f12011c));          // 校验失败
}
```

**签名校验需要 app 内置密钥**，所以伪造配置不可行 —— 但我们不需要伪造，
因为它本地就有 `tyq_resource_Q.json`。

### 本地配置怎么用（`UpdateImp.a(Context)`）

```java
public List<AppInfo> a(Context ctx) {
    String file = (Build.VERSION.SDK_INT == 28)      // ← 注意是"等于"
                ? "tyq_resource.json"                 // Android 9
                : "tyq_resource_Q.json";              // ★ 其它一切版本
    String json = c.a(ctx, file);                     // 从 assets 读
    if (empty(json)) return null;
    return gson.fromJson(json, d.class).a();          // 包清单
}
```

**设备 SDK 31 ≠ 28，所以走 else → 读 `tyq_resource_Q.json`** —— 就是 `_29` 那套。
完美匹配。

---

## 四、改包遇到的两个技术障碍

### 障碍 1：apktool 无法解码资源

```
brut.androlib.exceptions.AndrolibException:
    unsupported res type name for bags. Found: c
```

`resources.arsc` 的**资源类型名被混淆成单字母**，apktool 的 bag 处理直接拒绝。
用 `-r` 跳过资源解码后，manifest 保持**二进制 AXML**，apktool 又无法用它重建。

**解法：完全绕开资源，只改 DEX。**

```
apktool.jar 内置的 baksmali   →  smali 树（6785 个文件）
打 4 处补丁
apktool.jar 内置的 smali      →  classes.dex
Python 按原样复制 zip 条目，只替换 classes.dex
apksigner 重签
```

关键是 **apktool 的 jar 里就捆绑了 smali/baksmali**：

```
com/android/tools/smali/baksmali/Main.class   ← 可直接调用
com/android/tools/smali/smali/Main.class
```

```powershell
java -cp apktool-2.11.1.jar com.android.tools.smali.baksmali.Main d classes.dex -o out
java -cp apktool-2.11.1.jar com.android.tools.smali.smali.Main    a out -o classes.dex
```

> 附带教训：之前下载的 `baksmali.jar`(123 KB) / `smali.jar`(300 KB) 是**残缺文件**
> （`没有主清单`）。以后直接用 apktool 自带的。

重建后 **1406 个条目原样保留，只替换了 1 个 `classes.dex`，删掉 3 个签名文件**。

### 障碍 2：VerifyError（我自己引入的）

第一次改完运行报：

```
java.lang.VerifyError: Verifier rejected class c.s.a.e.h:
    void c.s.a.e.h.b(java.lang.String) failed to verify:
    [0x1F] cannot access instance field android.content.Context c.s.a.e.h.c
    from object of type Precise Reference: java.lang.String
```

**原因**：该方法 `.registers 6`，意味着只有 `v0..v3` 是真正的局部寄存器，
`p0`/`p1` 就是 `v4`/`v5`。我改写时把 `p0` 当 Context 用，而残留的冷分支
里 `iget-object v0, p0, …` 又把结果落进 p0 的槽位 ——
验证器在 `:goto_2e` 汇合处无法统一 `p0` 的类型。

**修正**：重新分配寄存器，**绝不碰 p0/p1**，并把死分支改成纯 `goto`。

```smali
# v0=mime / v1=Intent / v2=File→Uri / v3=Context→authority
const-string v0, "application/vnd.android.package-archive"
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lc/s/a/e/h;->c:Landroid/content/Context;
sget-object v2, Lc/s/a/d/a;->a:Ljava/lang/String;      # authority = pkg + ".provider"
new-instance v1, Ljava/io/File;
invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v3, v2, v1}, Landroidx/core/content/FileProvider;->a(...)Landroid/net/Uri;
move-result-object v1
const-string v0, "application/vnd.android.package-archive"
const-string v2, "android.intent.action.VIEW"
new-instance v3, Landroid/content/Intent;
invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->setDataAndType(...)Landroid/content/Intent;
move-result-object v0
const/high16 v1, 0x10000000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lc/s/a/e/h;->c:Landroid/content/Context;
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_2e
:cond_27
goto :goto_2e
```

---

## 五、四处补丁

| # | 文件 | 方法 | 改动 | 目的 |
|---|---|---|---|---|
| 1 | `com/qiyetong/pro/models/AppInfo.smali` | `a(Context)Z` | `sget SDK_INT` → `const/16 0x1d` | 找到 `_29` 资产而不是不存在的 `_31` |
| 2 | `c/s/a/e/h.smali` | `b(String)V` | 华为 `installPackage` ×2 → 标准 `ACTION_VIEW` Intent | 绕开 `MDM_APP_MANAGEMENT`，交系统安装器 |
| 3 | `c/s/a/e/h.smali` | `c(String)V` | `if-eqz` → `goto` | 卸载不再调华为裸接口 |
| 4 | `c/s/a/i/f.smali` | `b(Context, i/b)V` | 跳过 HTTP，直接 `callback.onSuccess()` | 绕开已死的 `api.chat-kingdom.com` |

补丁脚本：`work/tools/patch_chat.py`、`patch_chat_net.py`、`patch_chat_install_fix.py`、
`rebuild_chat_apk.py`
原始备份：`work/chat_backup_smali/*.orig`

**产物**：`ChatPartner-patched.apk`（154,144,517 字节，已重签）

---

## 六、真机验证（Mate50 Pro / HarmonyOS 4.2.0.218）

| 步骤 | 结果 |
|---|---|
| 安装改包后的 APK | ✅ `Success` |
| 启动 | ✅ `SplashActivity` → **不再卡住** |
| 进入登录页 | ✅ `com.ssss.ss_im.login.LoginActivity`<br>"请输入用户名 / 请输入密码 / 登录 / 检测设备" |
| 点「检测设备」 | ✅ 进入 `com.qiyetong.pro.MainActivity`<br>"您的设备当前还不能使用 Google 相关的服务。现在使用此工具修复它。请先激活设备管理器" |
| 点「立即修复」 | ✅ **唤起系统设备管理器**<br>`com.android.settings/…DeviceAdminAdd`<br>"是否激活设备管理器？Chat Partner" |
| 点「激活」 | ✅ **激活成功**<br>反证：`dpm remove-active-admin` → `SecurityException: Attempt to remove non-test admin ComponentInfo{com.tyq.pro/com.qiyetong.pro.DeviceControlReceiver}` |
| 全程崩溃 | ❌ 无（修复 VerifyError 后 logcat 干净） |

---

## 七、两个 App 的对照总结

| | 旅游必备 | Chat Partner |
|---|---|---|
| 改包难度 | 中（类名混淆） | **低（类名保留）** |
| 资源解码 | ✅ 正常 | ❌ 需绕开（类型名混淆） |
| 配置可读性 | ❌ Base64 加密 | ✅ **明文 JSON** |
| 服务器 | 死 | 死 |
| 需要的补丁 | 8 处（踩了 4 个坑） | **4 处**（复用经验） |
| 结果 | 走到系统安装器，安装中 88% | **走到主界面 + 设备管理器激活** |
| 华为签名权限 | 拿不到（已绕过） | 拿不到（已绕过） |

**共同结论**：`MDM_APP_MANAGEMENT` / `MDM_INSTALL_SYS_APP` 拿不到没关系 ——
把静默安装/卸载换成标准 Android 调用，流程照样走通，
代价只是从"静默"变成"用户点一下确认"。

---

## 八、对 lzplay 路线的意义

三件事现在都清楚了：

1. **三个 App 是同一家（qiye/qiyetong）的产品线**，架构、门禁、
   安装流程、华为权限清单**完全一致**。lzplay 是其中最老的一个
   （2019 年，360 加固），旅游必备和 Chat Partner 是后来者（无加固）。

2. **Chat Partner 的明文配置把整个机制解密了** —— 我们第一次完整看到
   "厂商期望装什么包、什么版本、什么签名"。这份清单可以直接用来
   手工安装 GMS，不依赖 App 跑通。

3. **"让安装流程正常进行"这个问题已经解决**（两个 App 都验证了）。
   剩下唯一没解决的是最初那个：**华为 trustspace 在系统层阻止
   GSF provider 启动**。装得上 ≠ 用得了。
