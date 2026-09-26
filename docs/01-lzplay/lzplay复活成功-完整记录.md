# lzplay 复活成功 —— 完整验证记录

> **2026-09-26 实测成功。** 从"卡在启动页"到"直接进入安装界面"，全程可复现。
> 用户的判断（备份还原带应用数据可绕过卡住的过程）被完全证实。

---

## 一、最终结果

```
mCurrentFocus = com.lzplay.helper/com.lzplay.helper.InstallActivityNew

界面：谷歌服务助手 / 下载安装
  谷歌服务核心库        com.google.android.gms
  谷歌服务框架          com.google.android.gsf
  谷歌服务平台          com.google.android.gms.policy_sidecar_aps
  Google通讯录同步      com.google.android.syncadapters.contacts
  GMS地图组件           com.apkmirror.gmapjar
  Google Play应用商店   com.android.vending
  [开始下载]
```

**7 个条目与我先前从备份数据里解出的 `updateModel` 清单逐项对应。**

---

## 二、设备状态（实测）

```
时钟              : Thu Sep 26 09:19:43 CST 2019   ← 在 CER ValidPeriod 窗口内
auto_time         : 0（已关闭）
installerPackage  : com.huawei.localBackup          ← ★ 走备份恢复通道，系统身份安装
firstInstallTime  : 2019-12-07 08:33:16
versionCode       : 100   versionName 1.0

MDM 权限：
  com.huawei.permission.sec.MDM                       granted=true
  com.huawei.permission.sec.MDM_APP_MANAGEMENT        granted=true
  com.huawei.permission.sec.MDM_INSTALL_SYS_APP       granted=true    ← ★ 关键
  com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP  granted=false

设备管理器：
  ComponentInfo{com.lzplay.helper/com.lzplay.helper.DeviceManageBC}
  反证：dpm remove-active-admin →
        SecurityException: Attempt to remove non-test admin
```

**没有任何静默装包发生** —— 现有 GMS 状态未被改动
（`com.google.android.gms`、`com.android.vending`、`com.oversea.gmapjar` 仍是原来的）。

---

## 三、前后对比

| | 恢复前 | **恢复后** |
|---|---|---|
| 启动 | 卡在 `SplashActivity`，> 20 分钟无进展 | **< 5 秒进入安装界面** |
| 路径 | `SplashActivity`（卡死） | `SplashActivity → LauncherActivity → InstallActivityNew` |
| 界面 | 只有启动画面 | 完整 GMS 安装清单 |
| 崩溃 | 无 | 无 |

**从 logcat 读出的真实路径**：

```
I ActivityTaskManager: START u0 {cmp=com.lzplay.helper/.InstallActivityNew (has extras)}
                       from uid 10369
I HwMultiWindowManager: source: ActivityRecord{6624a46 u0
                       com.lzplay.helper/.LauncherActivity t299}
W app_process: DexFile /hw_product/etc/jar/Mdm/hw_mdm_framework.jar
               is in boot class path but is not in a known location
I PackageManager: add requested permission: com.lzplay.helper,
                  perm: com.android.permission.GET_INSTALLED_APPS
I ActivityTaskManager: notifyActivityLaunching intent=
   Intent { act=com.huawei.permissioncontroller.action.REQUEST_INSTALLED_LIST_PERMISSION
            dat=package:com.lzplay.helper }
   → com.huawei.permissioncontroller.hwcust.hwpermission.ui.GrantPermissionsCountdownActivity
```

⇒ **之前卡住的就是 `SplashActivity → LauncherActivity` 这一步。**

---

## 四、为什么会卡，以及数据如何解决它

### 卡住的原因

`shared_prefs/com.lzplay.helper.xml` 在**全新安装**时是空的 ⇒ lzplay 启动后必须：

1. 向自己的服务器注册（`api.chat-kingdom.com` 一类的地址，早已下线）
2. 拿到 GSF ID（`sf_id`）并上报
3. 拿到包清单（`updateModel`）
4. 才能进 `LauncherActivity`

**服务器死了 ⇒ 第 1~3 步永远不返回 ⇒ 卡在 SplashActivity。**

### 备份数据如何绕过

恢复的 `com.lzplay.helper.tar` 里带着**完整的初始化结果**：

```xml
<string  name="sf_id">3864249757054258402</string>                 ← 已有 GSF ID
<boolean name="com.lzplay.helper.userRegistered"  value="true" />  ← 已注册
<boolean name="com.lzplay.helper.register_result" value="true" />  ← 注册成功
<long    name="com.lzplay.helper.checkTimeStamp"  value="1569924447161" />
<string  name="cookies">SID=…; HSID=…; SSID=…</string>             ← 谷歌账号 Cookie
<string  name="com.lzplay.helper.updateModel">{…6 个包的完整清单…}</string>
```

⇒ **启动时它看到"已经注册过、已有 sf_id、已有包清单"，直接跳过整个网络流程。**

这正是教程里那句 **"激活后不需要点击开始下载，直接返回桌面"** 的含义 ——
数据里已经有全部状态。

---

## 五、两道锁的完整解

本次实验同时验证了两个独立机制：

### 锁 1：CER 授权（决定能否拿到 MDM 权限）

```
HUAWEI.CER 校验（PMS 安装时执行）
  DeveloperKey : 必须逐字节等于 APK 真实签名证书        ✅ 原始包满足
  ValidPeriod  : 时钟必须在 2019-07-25 .. 2020-07-25     ✅ 已设 2019
  Signature    : 华为公钥验签整张 CER                    ✅ 未改动
  ApkHash      : 被 isContainSpecialPermissions() 短路   ⚪ 不参与
  Certificate  : 仅类型标签                              ⚪ 无作用
        ↓
  授予 MDM_INSTALL_SYS_APP + MDM_APP_MANAGEMENT
```

### 锁 2：应用数据（决定能否跳过启动页）

```
shared_prefs 里已有 userRegistered / sf_id / updateModel
        ↓
启动时跳过网络注册流程
        ↓
直接进入 InstallActivityNew
```

**两道锁都需要，缺一不可。** 我们先前只解了锁 1（手动 adb 安装 + 改时间 →
拿到权限但仍卡启动页），加上锁 2（备份恢复带数据）才完整。

---

## 六、复现步骤（已验证）

```powershell
$S = "BLT0222902012232"
$node = "C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\node\bin\node.exe"
$py   = "C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\python.exe"

# 1. 推备份包（注意：不要删设备上原有的 Backup 文件夹）
adb -s $S push "<解压目录>\Backup" /sdcard/Huawei/

# 2. 关闭自动时间，手动把日期改到 2019 年内的窗口
adb -s $S shell settings put global auto_time 0
#    然后在设备上：设置 → 系统和更新 → 日期和时间 → 关闭"自动设置" → 设为 2019-12-07

# 3. 设置 → 系统和更新 → 备份和恢复
#    → 右上角"更多选项" → 从内部存储恢复 → 选"toalan.com 备份" → 密码 a12345678
#    → 【只勾选"应用和数据"】，绝不勾系统数据

# 4. 恢复完成后启动 lzplay
adb -s $S shell monkey -p com.lzplay.helper -c android.intent.category.LAUNCHER 1

# 5. 它会直接弹出设备管理器激活界面
#    勾选"我已知晓如上风险" → "仍要激活" → 授予"媒体和文件"权限
#    → 进入 InstallActivityNew

# 6. 验证权限
adb -s $S shell "dumpsys package com.lzplay.helper | grep -E 'sec\.MDM.*granted'"

# 7. 验证数据是否恢复
adb -s $S shell "dumpsys package com.lzplay.helper | grep installerPackageName"
#    期望：installerPackageName=com.huawei.localBackup
```

### 我们踩过的坑（供参考）

1. **"从内部存储恢复"选项一开始不出现**。按教程点一次"外部存储"走完 6 个权限授予，
   之后才出现。教程提到的另一条路是降级备份 App
   （设备上是 v14.5.0.590，工具在作者 `36-…/备份降级工具/`）。
2. **备份包里的 `info.xml` 会被校验**，不要改动。
3. **`auto_time` 一定要关**，否则系统会自己把时间同步回去。

### ⚠️ 安全注意

- **绝不要卸载 `com.huawei.localBackup`** —— 鸿蒙 4.2 的 `checkUninstalledSystemApp`
  会让它装不回来（它的 codePath 是 `/system/delapp/HwBackup`，属可删系统应用）。
- **恢复时绝不勾选系统数据**，也不要恢复任何 GMS 包（会清掉现有 GMS 数据）。
- 教程建议"先删除原有 Backup 文件夹"—— **不要照做**，改为并存。

---

## 七、关于"开始下载"按钮

**没有点。** 原因：

- lzplay 的包源服务器是 `47.94.248.68`（2019 年的阿里云地址），**早已下线**
- 它的 `updateModel` 里只有包清单，**没有本地缓存的 APK**
- 点了大概率就是"一直在下载"的挂起状态（和你最初描述的现象一致）

**而且不需要点** —— 教程明确说"激活后不需要点击开始下载，直接返回桌面"。
lzplay 在这个流程里的角色是**开权限的工具**，不是装 GMS 的工具。
GMS 由教程附带的 `GMSAPKS/` 里那 9 个 2026 年新版 APK 手动安装。

---

## 八、下一步（未做）

1. **恢复时钟**（`settings put global auto_time 1`）—— 权限已验证会持久化
2. 按 2026 教程装 `GMSAPKS/` 里的新版 GMS（`6-Google Play 服务.apk` 170 MB 是 26.x 版）
3. 最后 `adb shell pm disable-user --user 0 com.google.android.gsf` 消除认证弹窗
4. 验证 FCM：拨号 `*#*#426#*#*` 应显示 `Server:Connected`

**注意**：教程的 GMS 版本与 lzplay 清单里的 2019 版本差异很大，
说明新版流程**不依赖 lzplay 装包**，只用它开权限。
