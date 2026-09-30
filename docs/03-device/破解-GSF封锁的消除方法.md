# GSF provider 封锁 —— 修正后的结论

> ## ⚠️ 本文档已重写
>
> **我原先的结论是"彻底卸载 + 重装 Google 包即可解除封锁"。该结论已被推翻。**
>
> 用户的补充说明澄清了关键事实：他在**初期研究时**不小心把"Google 服务框架"的
> **三个启动方式设为全部禁止，那一次提权是失败的**。
>
> 也就是说 —— **"全部禁止"是被证伪的做法，不是解药**。
> 真正必要的是 **允许自启动 / 后台运行**。

---

## 一、事实时间线（以用户说明为准）

| 时间 | 事件 | 结果 |
|---|---|---|
| **初期研究时** | 用户把 GSF 三个启动方式设为**全部禁止** | ❌ **提权失败** ← 用户明确说明 |
| 09:19 | 备份恢复安装 lzplay（带应用数据） | — |
| 09:21 | 激活设备管理器 | lzplay 获得 MDM 权限 |
| 09:25 | 复测 | GSF provider **仍被拦** |
| **09:29 前后** | 用户在"应用启动管理"里**允许** GSF 自启动 / 后台运行 | ✅ **provider 通了** |
| ~09:30 | 用户测试改版旅游必备时卸载了 GMS | 与本次问题**无关** |
| ~09:31 | 我重装了 GMS | — |
| 09:33+ | 复测 | provider 正常 |

**关键**：provider 恢复可用发生在**用户修正启动管理设置之后**，
而 GMS 的卸载/重装发生在那之后 —— **不是原因**。

---

## 二、我犯的错误

### 错误 1：把用户的"更正说明"读反了

用户原话：

> "闸门 1 这一块，我之前好像在你初期研究时设置错了 ——
> 我的手动管理当时好像设置了 gsf 全部禁止。"

我把这句读成了"用户当前把它设成了全部禁止，而 provider 却通了，所以设置无关"。
**实际意思是"初期设错了（全部禁止），那是失败的一次"** ——
用户在陈述一个**错误配置**，不是在陈述当前状态。

### 错误 2：把"卸载重装"当成了因果，而它只是巧合

GMS 的卸载发生在 09:30 左右，**晚于** provider 恢复（09:29 前后）。
我把两件时间相邻的事拼成了因果链。

### 错误 3：用平板的观察去支持一个它并不支持的结论

我在平板上"卸载重装 Google 包"后测到 `E shouldPreventStartProvider = 0`，
就宣称两处独立验证。但**同一次会话稍后复测，平板又变回被拦（E行 11）**。
说明那次"0"只是**暂时状态**，不是"重装解除了封锁"的证据。

---

## 三、修正后的结论

### ✅ 正确的做法

**必须允许 "Google 服务框架"（`com.google.android.gsf`）自启动与后台运行。**

```
设置 → 应用和服务 → 应用启动管理
  → "Google 服务框架" / com.google.android.gsf
  → 手动管理，且【自启动】【关联启动】【后台活动】三个开关都要打开
```

**理由**：GSF provider 是**按需拉起**的。如果系统不允许它自启动/后台运行，
provider 进程起不来，`content://com.google.android.gsf.gservices` 就打不开，
也就拿不到 GSF ID。这正好解释了闸门 1（iAware 的"应用启动管理"策略）为什么是拦路虎。

**同理需要放行的还有**：
- `com.google.android.gms`（Google Play 服务）
- `com.android.vending`（Google Play 商店）
- `com.lzplay.helper`（谷歌服务助手，安装阶段需要）

### ❌ 已被证伪的做法

| 做法 | 状态 |
|---|---|
| 把 GSF 设为"全部禁止" | ❌ **用户实测失败**，这才是错误配置 |
| 卸载 + 重装 Google 包 | ❌ **不是解药**（发生时间晚于恢复点，且平板复测仍被拦） |
| 关闭 `com.huawei.iaware` 包 | ❌ 早已排除 |
| 改 `is_trustspace_enabled` / `trust_space_switch` | ❌ 打在了没触发的门上 |
| lzplay 用 MDM 特权调 `setSysAppList` 加白名单 | ❌ 全量 logcat 里没有此调用 |

---

## 四、判别信号（这部分结论仍然有效）

调研中我确实读错过一个信号，这点仍值得记录：

| 信号 | 判别力 |
|---|---|
| `I HwActivityManagerServiceEx: provider is prevented for not-prevent` | ❌ **弱**。拦截与放行**都会**打印 |
| `I ... provider is prevented for iaware` | ✅ 有 —— 明确指向 iAware 闸门 |
| `E ContentProviderHelper: IAware or trustspace shouldPreventStartProvider` | ✅ **最强** —— 出现即拦截逻辑执行 |
| `I ContentProviderHelper: Successfully start provider ... GservicesProvider` | ✅ 正向证据 |
| `com.google.process.gservices` 进程存在 | ✅ 辅助正向证据 |
| 探针读到 `android_id` | ✅ **最终判据** |

**判定"已放行"的充分条件**：探针能读出 `android_id`。

---

## 五、复现步骤（修正版）

```powershell
# 1. 时钟设进 lzplay CER 的 ValidPeriod 窗口
#    设置 → 系统和更新 → 日期和时间 → 关闭自动 → 2019-12-07

# 2. 设置 → 系统和更新 → 备份和恢复 → 从内部存储恢复
#    选 toalan.com 备份，密码 a12345678，只勾"应用和数据"

# 3. 启动 lzplay → 进入安装界面 → 激活设备管理器

# 4. ★ 设置 → 应用和服务 → 应用启动管理
#    把以下四个全部设为【手动管理】且三个开关【全部打开】（不是禁止！）
#      com.google.android.gsf       ← 最关键
#      com.google.android.gms
#      com.android.vending
#      com.lzplay.helper

# 5. 安装 GMS

# 6. 验证
adb -s <serial> shell am force-stop com.lzplay.revive
adb -s <serial> shell am start -n com.lzplay.revive/.MainActivity
Start-Sleep 13
adb -s <serial> shell "cat /sdcard/Android/data/com.lzplay.revive/files/lzrevive.txt" |
    Select-String "open provider|android_id"
# 期望：open provider = OK，android_id = <数字>
```

---

## 六、对"改包版是否有用"的影响

**不受影响。** 改包版的结论是**独立的实测**（单变量 A/B + Chat Partner 三版对照）：

- 改包 → 签名变 → `DeveloperKey` 不匹配 → `DK_VC not same!` → **MDM 权限 0/7**
- 见 [改包版MDM权限-实测结论.md](改包版MDM权限-实测结论.md)

**而"应用启动管理"是纯用户级设置**，与 App 签名无关 —— 所以：

> **改包版 App 完全可以引导用户完成"应用启动管理"的配置**，
> 它唯一做不到的是需要华为平台签名的特权安装（把 GMS 装成系统应用）。

---

## 七、教训

**这个错误和前面几次是同一类**：我把"时间上相邻"当成了"因果"，
并且**没有回到用户的原话去核对**。

用户的说明里已经明确写了"设置错了"和"失败"，
我却因为先入为主地认为"改设置不可能有效"，把关键信息读成了它的反面。

**记录在此，作为方法论警告。**
