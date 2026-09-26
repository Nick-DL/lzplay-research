# 最终关卡：GSF provider 与 iaware 闸门

> lzplay 已复活并可交互，MDM 权限已到手且持久化。
> **但 GSF provider 仍被拦** —— 本文档记录最终状态、闸门定位、以及尚未尝试的路径。

---

## 一、当前设备状态（2026-09-26 09:25 实测）

```
时钟            : Sat Sep 26 09:25:12 CST 2026      ← 已恢复正常
auto_time       : 1（已恢复自动校时）

lzplay ：
  installerPackageName : com.huawei.localBackup    ← 备份恢复通道安装
  firstInstallTime     : 2019-12-07 08:33:16
  MDM_INSTALL_SYS_APP  : granted=true              ← ★ 时钟走出窗口后仍然保留
  MDM_APP_MANAGEMENT   : granted=true
  设备管理器            : 已激活（DeviceManageBC）
  界面                 : InstallActivityNew（完整 GMS 安装清单）

GSF ：
  codePath : /data/app/~~Bfk5eiEwN_9BTi-lyPAltQ==/…   ← 仍是【用户应用】
  flags    : [ HAS_CODE ALLOW_CLEAR_USER_DATA ]        ← 无 SYSTEM
  /product/priv-app/ : 空（lzplay 没有往那里装东西）
```

**结论：`MDM_INSTALL_SYS_APP` 的持久化被再次确认**（时钟走出 `ValidPeriod` 后依然 granted）。

---

## 二、GSF provider 仍然被拦 —— 但闸门定位精确了

```
I HwActivityManagerServiceEx: provider is prevented for not-prevent   ← 有些被放行
I HwActivityManagerServiceEx: provider is prevented for iaware        ← ★ 这次是闸门 1
E ContentProviderHelper: IAware or trustspace shouldPreventStartProvider
    name:com.google.android.gsf.gservices
    cpi:ContentProviderInfo{name=com.google.android.gsf.gservices
        className=com.google.android.gsf.gservices.GservicesProvider}
```

探针结果不变：

```
==== GSF PROVIDER RAW PROBE ====
  open provider (null projection)   = NULL cursor
  key android_id                    = null cursor
```

### 关键观察

1. **拦住它的是闸门 1（`iaware`），不是 sticky 闸门。**
   早先子 agent 从 `hwServices.jar` 反编译出三道闸门的判定：
   ```
   闸门 1 (iaware)   : AwareAppStartupPolicy.getPackageAllowType() <= 0
                      = 华为"应用启动管理"策略
   闸门 2 (trustspace): shouldPreventStartComponent(3, …)
   闸门 3 (sticky)   : caller 是系统应用 && 目标不是系统应用 ⇒ 一律拦截
   ```
2. **同一份日志里出现了 `not-prevent`** ⇒ 系统在**逐个 provider 判断**，
   不是对所有 provider 一刀切。这暗示**存在一个可配置的允许清单**。
3. **GSF 仍是用户应用** ⇒ 闸门 3 暂时不适用（它只在 caller 是系统应用时才拦）；
   当前纯粹是闸门 1 在起作用。

---

## 三、lzplay 的包源已彻底失效

用户提示 `47.94.248.68` **还能 ping 通（TCP 80 通）**，我实测了：

```
GET /                                          → 200  （阿里云停靠页）
  <head><meta http-equiv="refresh" content="1;
   url=https://wanwang.aliyun.com/hosting/ipvisit_stop"></head>

GET /index.html                                → 200  （同一停靠页）
GET /lzplay/                                   → 404
GET /lzplay/pkg-20190918063238/                → 404
GET /lzplay/pkg-20190918063238/cn/lzplay_Q/    → 404
GET …/v29-02.apk                               → 404
GET …/v100-app-release.apk                     → 404
GET /robots.txt                                → 404
GET /index.php                                 → 404
```

⇒ **IP 还活着，但服务器已经被阿里云回收**（`ipvisit_stop` = 未备案/未解析访问停止页），
lzplay 的包全部不存在了。

**所以 lzplay 的"开始下载"按钮确实无用**（与预测一致），
GMS 必须用教程附带的 `GMSAPKS/` 手动装。

---

## 四、尚未尝试的路径（按可行性排序）

### 路径 A：应用启动管理白名单（最直接，需手动 UI）

**为什么值得试**：闸门 1 就是"应用启动管理"，且日志显示存在 `not-prevent` 的允许情况。

**adb 无法打开该界面**：
```
adb shell am start -n com.huawei.systemmanager/.appcontrol.activity.StartupAppControlActivity
→ SecurityException: requires com.huawei.permission.external_app_settings.USE_COMPONENT
```
（`huawei.intent.action.HSM_STARTUPAPP_MANAGER` + CATEGORY_DEFAULT 也被解析到
`HwResolverActivity`，无匹配项）

**手动操作**：`设置 → 应用和服务 → 应用启动管理`
把下面这些从"自动管理"改为**手动管理**，三个开关（自启动 / 关联启动 / 后台活动）全开：

- 谷歌服务框架 `com.google.android.gsf` ← **最关键**
- Google Play 服务 `com.google.android.gms`
- Google Play 商店 `com.android.vending`
- 谷歌服务助手 `com.lzplay.helper`

改完立刻复测：
```powershell
adb -s <serial> logcat -c
adb -s <serial> shell am start -n com.lzplay.revive/.MainActivity
# 等 12 秒
adb -s <serial> shell "cat /sdcard/Android/data/com.lzplay.revive/files/lzrevive.txt" | Select-String "GSF ID" -Context 0,3
adb -s <serial> logcat -d | Select-String "provider is prevented for"
```
**判据**：日志变成 `for not-prevent`，且 `open provider` 不再是 `NULL cursor`。

### 路径 B：把 GSF 装成系统应用（治本，但做不到）

lzplay 的原始设计就是装到 `/product/priv-app/`（我从备份数据里的 `updateModel` 证实）。
装了之后闸门 1 和闸门 3 同时失效。

**但**：
- lzplay 的包已失联（服务器死了）
- 即使有包，往 `/product/`（只读系统分区）写需要 remount，未 root 做不到
- 教程自己也**放弃**了这条路，改为"手动装用户态 GMS + 禁用 GSF"

### 路径 C：禁用 GSF（教程的实际做法）

```powershell
adb shell pm disable-user --user 0 com.google.android.gsf
```
教程的原话："**新 GMS 不依赖 GSF**，禁用可消除'未获 Play 认证'弹窗"。

**这条路的逻辑**：既然 GSF provider 起不来、而现代 GMS 又不需要它，
索性禁用掉，让系统不再反复尝试启动那个 provider（也就没有拦截日志了）。

**这是目前最接近"能用"的路径，而且不需要绕过任何东西。**

### 路径 D：microG

microG 的 `GsfProxy` **包名就是** `com.google.android.gsf`，但**不实现 gservices**
⇒ 整条问题链消失。教程的另一篇（`archives/71`）就是这条路线。

注意：用户在 MatePad 上装的 microG 已被卸载（按用户要求）。

---

## 五、待办清单

- [ ] **路径 A**：手动把 GSF 加入应用启动管理白名单 → 复测 provider
- [ ] **路径 C**：若 A 无效，`pm disable-user com.google.android.gsf` 后装教程的
      `GMSAPKS/` 新版 GMS（`6-Google Play 服务.apk` 170 MB / 26.x 版）
- [ ] 装完验证 FCM：拨号 `*#*#426#*#*` 应显示 `Server:Connected`
- [ ] 若都失败 → **路径 D**（microG，包名顶替）

---

## 六、本次会话的完整成果

| 目标 | 状态 |
|---|---|
| lzplay 脱壳分析 | ✅ 静态分析完成（360 加固 ART 变体） |
| 弄清"时间炸弹/白名单" | ✅ **都不存在** —— 门禁只是一个反射调用 |
| 弄清 lzplay 运行原理 | ✅ CER 授权 + 应用数据，两道锁 |
| **让 lzplay 复活** | ✅ **成功** —— 卡启动页问题解决，进入安装界面 |
| 拿到华为后门权限 | ✅ `MDM_INSTALL_SYS_APP` granted=true，且持久化 |
| 换皮 App 改造 | ✅ 旅游必备 + Chat Partner 均改包重签并真机验证 |
| **让 GMS 真正可用** | ❌ **未完成** —— GSF provider 仍被 iaware 拦 |

**最后一项是唯一未解决的，而且现在有明确的下一步（路径 A / C）。**
