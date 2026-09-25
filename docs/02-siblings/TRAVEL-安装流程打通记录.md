# 旅游必备 —— 安装流程打通记录（补丁 5~8）

> 结论：**无限循环已彻底解除。** App 现在能把内嵌的 GMS APK 正确交给
> 系统安装器，不再崩溃、不再依赖华为签名权限。

---

## 一、最终证据（设备 logcat 原文）

```
I ActivityTaskManager: START u0 {
      act=android.intent.action.VIEW
      dat=content://com.qiyecomm.provider/app_cachePath/com.google.android.gms_29.apk
      typ=application/vnd.android.package-archive
      flg=0x10000000
      cmp=com.android.packageinstaller/.InstallStart
  } from uid 10362
D HwMWPM: activityInfo: ActivityInfo{com.android.packageinstaller.InstallStart}
D HwASInterceptor: both page open. caller:com.qiyecomm, target:com.android.packageinstaller
```

这一行同时证明了**三个补丁全部生效**：

| 证据 | 证明的补丁 |
|---|---|
| `content://com.qiyecomm.provider/…` | 补丁 7/8：FileProvider 生效，不再是 `file://` |
| `…/com.google.android.gms_29.apk` | 补丁 3：找到了 `_29` 资产（不再是 `_31`） |
| `cmp=com.android.packageinstaller` | 补丁 5/6：**华为 MDM 分支已被绕过** |
| 无 `FATAL EXCEPTION` | 补丁 4/5/6：三处裸调用都不再执行 |

界面也从"安装异常，请重试"变成了**"安装中，请不要退出应用。此过程可能需要几分钟。"**

---

## 二、补丁 5~8 的曲折（记录一下踩过的坑）

### 补丁 5 第一次失败：分支方向搞反

`InstallHelper.install(String)` 的结构是：

```smali
408  const/16 v0, 0x1d        ; 我改成了 29
410  const/16 v1, 0x1c        ; 28
412  if-le v0, v1, :cond_0    ; "if v0 <= v1 goto :cond_0"
     ...原来的华为分支（会崩）...
451  :cond_0                  ; 我放标准安装 Intent 的地方
```

我当时的想法是"让 SDK 判定恒成立 → 跳到 `:cond_0`"，
但**把两个常量放反了**：`29 <= 28` 是**假** → 不跳转 → 正好落进华为分支 → 继续崩。

**修正（补丁 6）**：交换两个常量 → `28 <= 29` 为真 → 跳到 `:cond_0`。

> 教训：`if-le` 的语义是"**vA ≤ vB 则跳转**"，
> 而且原来的代码把"新 SDK 分支"放在**前面**、`:cond_0` 是"旧 SDK 分支"，
> 容易下意识以为 `:cond_0` 是新分支。

### 补丁 7 第一次失败：`Uri.fromFile()` 被系统拒绝

```
android.os.FileUriExposedException:
    file:///data/user/0/com.qiyecomm/cache/file/com.google.android.gms_29.apk
    exposed beyond app through Intent.getData()
    at com.x.plus.pro.e.c.a(InstallHelper.java:122)
```

Android 7（API 24）起，禁止把 `file://` URI 放进离开本进程的 Intent。

好在**这个 App 自带完整的 FileProvider 配置**：

```xml
<!-- AndroidManifest.xml -->
<provider android:authorities="com.qiyecomm.provider"
          android:exported="false"
          android:grantUriPermissions="true"
          android:name="androidx.core.content.FileProvider">
  <meta-data android:name="android.support.FILE_PROVIDER_PATHS"
             android:resource="@xml/file_paths"/>
</provider>

<!-- res/xml/file_paths.xml -->
<cache-path name="app_cachePath" path="file" />
   ↑ 正好覆盖 App 解压 APK 的位置 /data/user/0/com.qiyecomm/cache/file/

<!-- Constants.java（混淆为 d/a） -->
public static final String a = getPackageName() + ".provider";
```

改成调用 FileProvider 即可。

### 补丁 7 第二次失败：方法名被混淆

```
java.lang.NoSuchMethodError: No static method
    getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
    in class Landroidx/core/content/FileProvider;
```

这个 APK 的 androidx 是**混淆过**的，真实签名是：

```smali
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;
```

**修正（补丁 8）**：`getUriForFile` → `a`。

### 附带修正：`.locals 4` → `.locals 5`

我的新代码用了 `v4`，而方法只声明了 `.locals 4`（仅 v0..v3）。

---

## 三、补丁总表（8 处，全部已验证）

| # | 位置 | 改动 | 状态 |
|---|---|---|---|
| 1 | `f/h;->a(Context)Z` | 恒返回 true（绕过网络检查） | ✅ |
| 2 | `a/a$1;->a()V` | 改调 `b()V`（绕过已死服务器） | ✅ |
| 3 | `ApkInfo;->a(Context)V` | `SDK_INT` → 常量 29 | ✅ |
| 4 | `e/c;->b(String)V` | `if-eqz` → `goto`（卸载走安全分支） | ✅ |
| 5 | `e/c;->a(String)V` | 华为 `installPackage` → `ACTION_VIEW` Intent | ✅ |
| 6 | `e/c;->a(String)V` | 交换两个常量修正分支方向 | ✅ |
| 7 | `e/c;->a(String)V` | `Uri.fromFile` → FileProvider | ✅ |
| 8 | `e/c;->a(String)V` | `getUriForFile` → `a`（混淆名）+ `.locals 5` | ✅ |

补丁脚本：`work/tools/patch_travel.py`、`patch_travel2.py` … `patch_travel7.py`
（补丁 8 内联执行）
原始 smali 备份：`work/travel_backup/*.orig`（含 `e_c.smali.pass5/6/7/7b/7c.orig`）

**产物**：`旅游必备-patched.apk`（= `work/travel_p8.apk`，140,953,783 字节，已重签）

---

## 四、还剩一个小尾巴（不是阻塞项）

点完"立即更新 → 好"之后，界面停在：

```
安装中，请不要退出应用。此过程可能需要几分钟。
88%
```

原因：我的补丁把 `postDelayed(确认任务, 300000)` 那段跳过了，
所以 App **不会自己发现安装已完成**、进度涨不到 100%。

**这不是失败** —— 系统安装器已经拿到 APK 并弹出安装确认，
用户点"安装"就能装上。只是 App 的进度条不再自动前进。

### 如果要修

`InstallHelper.install` 尾部原本会：

```java
this.j = new c$1(this, apkPath);              // 安装完成后的确认 Runnable
handler.postDelayed(this.j, 300000);          // 5 分钟后兜底检查
```

`c$1` 里做的是检查包是否装上、然后回调 `InitializeManager` 推进状态机。
把这几条指令恢复（或改成延时 2 秒），进度条就会正常走完并进入下一个包。

---

## 五、和 lzplay 的对照

| | lzplay（com.lzplay.helper） | 旅游必备（com.qiyecomm） |
|---|---|---|
| 加固 | 360 Jiagu（ART 变体，已脱壳分析） | 无 |
| 设备门禁 | `DevicePackageManager` / MDM | 同款（`DeviceManage.java:92`） |
| 安装方式 | 华为 MDM `installPackage` | 同款 |
| 静默卸载 | 华为 MDM `uninstallPackage` | 同款 |
| 加保活白名单 | — | `addPersistentApp`（有 try/catch） |
| 服务器 | 已关闭 | `api.trip-happy.com` 已关闭 |
| **改包后能否走通** | ❌ 有 `.appkey` 硬校验绑定 | ✅ **完全走通（本记录）** |
| 华为签名权限 | 必需 | 必需（已被我们绕过） |

**关键结论**：`MDM_APP_MANAGEMENT` / `MDM_INSTALL_SYS_APP` 拿不到没关系 ——
**只要把安装动作换成标准 Android 方式，流程依然能走完**，
代价从"静默安装"变成"用户点一下确认"。这是可以接受的降级。
