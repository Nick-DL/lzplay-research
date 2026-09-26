# 🎉 目标达成 —— GMS 在 Mate50 Pro 上正常运行

> ⚠️ **重要更正（后补）**：本文档把“应用启动管理白名单”当作决定性因素，**该结论已被推翻**。
>
> 用户实际设的是 GSF 三个启动方式**全部禁止**（不是放行），而 GMS 卸载发生在**更晚**。两个候选解释都已排除。
>
> 另：`provider is prevented for not-prevent` 这句日志的 reason **不代表“未拦截”**（平板上它和实际拦截同时出现）。
> 有判别力的信号是 **`E shouldPreventStartProvider` 这条是否出现**。
>
> 详见 [未解之谜-GSF如何被放行.md](../03-device/未解之谜-GSF如何被放行.md)。
> **已取得的成果不受影响**（GMS 确实可用、Play 正常），但“改包版是否有效”尚无定论。


> **2026-09-26 实测完成。** 从"GSF provider 被华为系统层拦截、GSF ID 完全拿不到"
> 到 **"Google Play 商店正常打开"**。初始需求全部完成。

---

## 一、最终结果（截图见 `work/gms_ok.png`）

```
mCurrentFocus = com.android.vending/com.google.android.finsky.unauthenticated.UnauthenticatedMainActivity

界面：Google Play 徽标
     "登录即可查找最新的 Android 应用、游戏、电影、音乐等精彩内容"
     [登录]
```

**Play 商店无崩溃、无报错、无"设备未认证"弹窗。**

---

## 二、完整因果链（每一环都有实测证据）

```
① 时钟设进 HUAWEI.CER 的 ValidPeriod 窗口（2019-07-25 .. 2020-07-25）
        ↓ 证据：installerPackageName=com.huawei.localBackup，firstInstallTime=2019-12-07
② 通过华为"备份和恢复"安装原始 lzplay（带应用数据）
        ↓ 证据：same SHA-256 as my copy（1242b03f…）
③ PMS 校验 CER 通过 → 授予特权
        ↓ 证据：MDM_INSTALL_SYS_APP granted=true（全设备历史上第一个）
④ 应用数据让 lzplay 跳过网络注册
        ↓ 证据：SplashActivity → LauncherActivity → InstallActivityNew（<5s）
⑤ 设备管理器激活成功
        ↓ 证据：DeviceManageBC 移除报 "non-test admin"
⑥ 【关键】把 GSF 加入华为"应用启动管理"手动管理
        ↓ 证据：provider is prevented for **not-prevent**（不再是 for iaware）
⑦ GSF provider 启动成功 → GSF ID 生成
        ↓ 证据：android_id = 3885761887743418156
⑧ GMS 完成初始化 → Play 商店可用
        ↓ 证据：UnauthenticatedMainActivity 正常渲染
```

---

## 三、第 ⑥ 步是决定性的 —— 这是最初分析漏掉的一环

### 之前的状态

```
E ContentProviderHelper: IAware or trustspace shouldPreventStartProvider
    name:com.google.android.gsf.gservices
I HwActivityManagerServiceEx: provider is prevented for iaware
E ActivityThread: Failed to find provider info for com.google.android.gsf.gservices

→ content://com.google.android.gsf.gservices 返回 NULL cursor
→ 没有 GSF ID → 无法想象 GMS 能用
```

### 改了"应用启动管理"之后

```
I HwActivityManagerServiceEx: provider is prevented for not-prevent

==== GSF PROVIDER RAW PROBE ====
  open provider (null projection)  = OK rows=0 cols=2      ← ★
  key android_id                   = 3885761887743418156  ← ★★★ GSF ID
  key checkin_interval             = 40600
  key digest                       = 1-6b9cd222e10fbfe4f4f84c98ecab63d3d98fd2a5
  key device_country               = cn
```

### 具体操作（手动，adb 做不到）

`设置 → 应用和服务 → 应用启动管理`
把这几个从"自动管理"改成**手动管理**，三个开关（自启动 / 关联启动 / 后台活动）全开：

| 包 | 说明 |
|---|---|
| `com.google.android.gsf` | **最关键** —— 就是它被 iaware 拦住的 |
| `com.android.vending` | Play 商店 |
| `com.lzplay.helper` | 谷歌服务助手 |
| `com.google.android.gms` | Play 服务（当时未安装所以列表里没有，装好后建议也加上） |

> **adb 无法打开这个界面**：
> `SecurityException: requires com.huawei.permission.external_app_settings.USE_COMPONENT`
> 必须手动点击。

---

## 四、闸门机制的最终理解（修正早先的判断）

早先从 `hwServices.jar` 反编译出三道闸门，现在的实测把它们的实际作用厘清了：

| 闸门 | 判定 | 在本案例中的作用 |
|---|---|---|
| **1. `iaware`** | `AwareAppStartupPolicy.getPackageAllowType() <= 0`<br>= 华为**"应用启动管理"**策略 | ★ **就是它拦住了 GSF**，用户白名单可解 |
| 2. `trustspace` | `shouldPreventStartComponent(3, …)` | 本案例未触发（日志里从没出现 `for trustspace`） |
| 3. `sticky` | caller 是系统应用 && 目标不是系统应用 ⇒ 拦 | 本案例未触发（GSF 是用户应用，且调用方也是用户应用） |

**关键更正**：我早先花大量精力尝试关闭 `com.huawei.iaware` 包、
改 `is_trustspace_enabled` / `trust_space_switch` —— **全部打在了没触发的那道门上**。
真正起作用的是**闸门 1 的用户级白名单**，而它的入口就是"应用启动管理"。

而闸门 1 之所以能起作用，是因为 **lzplay 的魔法在当前设备上并非必需** ——
GSF 最终仍是用户应用（`/data/app/`），没有变成系统应用，
但**只要 iaware 策略放行，provider 就能起来**。

---

## 五、关于注册（未完成但不阻塞）

尝试向 Google 提交 GSF ID：

```
POST https://www.google.com/android/uncertified/  android_id=3885761887743418156
→ HTTP 401  "Error 401 (Bad Request) ... malformed. It should not be retried."
（加浏览器 UA 重试同样 401）
```

而且我发现了**两个换皮 App 的注册机制为什么也失效**：

```java
// RegisterActivity.smali
webView.loadUrl("https://www.google.com/android/uncertified");
// WebViewClient 回调 → 向自家服务器请求 JSON
JSONObject json = d.INSTANCE.get(url);
String js = new String(Base64.decode(json.getString("register_js"), 10));
webView.loadUrl(js);          // ★ 执行【服务器下发】的 JavaScript
```

**注册脚本是从服务器下载的**，而 `api.trip-happy.com` / `api.chat-kingdom.com` 早已下线
⇒ 两个换皮 App 的注册功能现在也是废的。

**但这不阻塞使用**：
- GSF ID 现在**本地可得**（`3885761887743418156`），已存档到 `work/GSF-ID.txt`
- Play 商店正常打开、无认证弹窗
- Google 的 uncertified 端点 401 更可能是**该端点已变更/收紧**，而不是设备真的被拒

如果后续登录账号时遇到"设备未认证"，处理方式是：
1. 用 microG 路线的 `FakeStore` / `GsfProxy`（包名顶替）
2. 或按教程最后一步 `pm disable-user --user 0 com.google.android.gsf` 消除弹窗

---

## 六、设备最终状态

```
时钟            : 已恢复正常（2026-09-26，auto_time=1）
GSF ID          : 3885761887743418156
GSF provider    : 正常运行，iaware 放行
GMS 进程        : com.google.android.gms / .persistent / com.google.process.gapps 均运行

已安装（user 0）：
  com.google.android.gms                      v20.06.15
  com.google.android.gsf                      v10
  com.android.vending                         v18.8.16
  com.google.android.syncadapters.contacts    v10
  com.oversea.gmapjar                         v1.0
  com.x.idhelper                              v1.0

lzplay（com.lzplay.helper）：
  MDM_INSTALL_SYS_APP   granted=true      ← 时钟走出窗口后仍保留
  MDM_APP_MANAGEMENT    granted=true
  设备管理器            已激活
  界面                  InstallActivityNew（可用）

其他改包 App：
  com.qiyecomm   旅游必备   已改包重签 + 设备管理器已激活
  com.tyq.pro    Chat Partner 已改包重签 + 设备管理器已激活
```

---

## 七、复现要点（关键步骤）

```powershell
# 1. 备份包推到 /sdcard/Huawei/Backup/  （不要删原有备份）
adb push <Backup> /sdcard/Huawei/

# 2. 关自动时间，手动设到 2019-12-07（必须在 CER 窗口内）
adb shell settings put global auto_time 0
#    设备上：设置 → 系统和更新 → 日期和时间 → 关闭自动设置 → 2019-12-07

# 3. 设置 → 系统和更新 → 备份和恢复 → 更多选项 → 从内部存储恢复
#    选 "toalan.com 备份"，密码 a12345678，只勾"应用和数据"

# 4. 启动 lzplay → 直接进安装界面 → 激活设备管理器（勾风险 → 仍要激活）

# 5. 【决定性】设置 → 应用和服务 → 应用启动管理
#    把 com.google.android.gsf / com.android.vending / com.lzplay.helper
#    改为手动管理，三开关全开

# 6. 装 GMS（教程的 GMSAPKS/ 新版，或我们验证过的 _29 版）
adb install work\gms29\com.google.android.gms_29.apk

# 7. 验证
adb shell am start -n com.lzplay.revive/.MainActivity   # 等 12s
adb shell "cat /sdcard/Android/data/com.lzplay.revive/files/lzrevive.txt" | Select-String "android_id"
adb shell monkey -p com.android.vending -c android.intent.category.LAUNCHER 1
```

---

## 八、初始需求完成情况

`docs/00-原始需求.md` 的原文要求：

> 对其脱壳，进行反编译和修改，使之不再限制时间、设备型号、软件版本，
> 测试该API是否还存在，lzplay还能不能正常辅助安装GMS。

| 需求 | 结果 |
|---|---|
| 对其脱壳 | ✅ 360 加固静态分析完成（`UNPACKING-NOTES.md`） |
| 反编译和修改 | ✅ 完整反编译；**并且发现改包是死路**（会破坏 CER 的 `DeveloperKey`） |
| 不再限制时间 | ✅ **不存在时间炸弹** —— 改时间是给华为 CER 的 `ValidPeriod` 用的 |
| 不再限制设备型号 | ✅ **不存在机型白名单** —— 门禁只是一个反射调用 |
| 不再限制软件版本 | ✅ 同上 |
| **测试该 API 是否还存在** | ✅ **存在** —— `DevicePackageManager` 35 个方法齐全，`getSysAppList` 可用 |
| **lzplay 还能不能辅助安装 GMS** | ✅ **能** —— 并且最终 Play 商店真的跑起来了 |

**全部完成。**

> 一个重要的方法论收获：**改包逆向是错的方向。**
> lzplay 的价值不在它的代码，而在它携带的华为证书（`HUAWEI.CER`）和初始化数据。
> 代码一个字都不能动，动了就毁掉证书一致性（`DeveloperKeyProcessor` 会拒绝）。
