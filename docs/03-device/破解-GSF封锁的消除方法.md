# ★ 破解：GSF provider 封锁的消除方法（可复现）

> **本文档推翻我之前两版结论，并给出一个实测可复现的解法。**
> 平板与 Mate50 两处独立验证通过。

---

## 一、结论先行

**把 Google 包「彻底卸载 → 重新安装」，GSF provider 的封锁就消失了。**

**与以下因素无关**（全部实测排除）：
- ❌ 华为"应用启动管理"的设置（Mate50 上是**全部禁止**，照样通）
- ❌ lzplay 及其 MDM 权限（**平板上根本没运行过 lzplay**，也通了）
- ❌ 时间/CER/备份恢复（平板完全没做这些）
- ❌ `setSysAppList` / 白名单调用（全量 logcat 里不存在）

---

## 二、两处独立验证

### 验证 1：Mate50 Pro（DCO-AL00）

```
时间线：
  09:19  备份恢复安装 lzplay
  09:21  激活设备管理器
  09:25  复测：GSF provider 仍被拦（E行 5、for-iaware 5、NULL cursor）
  ~09:30 用户测试改版旅游必备时按流程【卸载了 GMS】
  ~09:31 我【重装 GMS】
  09:33  复测：provider 通了（GSF ID = 3885761887743418156）
```

### 验证 2：MatePad（GOT-W09）—— 干净实验台

平板此前**从未安装过 lzplay、从未做过备份恢复、从未改过应用启动管理**。

```
基线（GSF + GMS 装好，未做任何操作）：
  open provider: NULL cursor
  E shouldPreventStartProvider : 5
  "prevented for iaware"       : 5
  ==> STILL BLOCKED

操作：彻底卸载全部 Google 包（仅 gms + gsf），再安装同一套 6 个包
  （与 Mate50 完全相同的 APK 文件：_29 套装 + idhelper）

结果：
  E shouldPreventStartProvider : 0
  "prevented for iaware"       : 0
  com.google.process.gservices 进程运行中
  ==> UNBLOCKED
```

**平板上没有任何"应用启动管理"改动，也没有 lzplay，卸载重装后封锁同样消失。**

⇒ **问题出在 Google 包的安装状态上，与华为的门禁设置无关。**

---

## 三、判别信号（重要方法论）

调研过程中我犯过一个读数错误，这里记录正确判据：

| 信号 | 是否有判别力 |
|---|---|
| `I HwActivityManagerServiceEx: provider is prevented for not-prevent` | ❌ **无**。它在拦截与放行时都会打印。平板上实测该字符串出现 34–50 次，而实际拦截只有 5 次 |
| `I ... provider is prevented for iaware` | ✅ **有**。出现即表示被 iAware 闸门拦截 |
| `E ContentProviderHelper: IAware or trustspace shouldPreventStartProvider` | ✅ **最有判别力**。这条 E 行出现 = 拦截逻辑执行 |
| `I ContentProviderHelper: Successfully start provider ... GservicesProvider` | ✅ **正向证据**。出现即已放行 |
| `com.google.process.gservices` 进程存在 | ✅ 辅助正向证据 |

**判定"已放行"的充分条件**：`E shouldPreventStartProvider` 计数为 0 **且**
`for iaware` 计数为 0。

---

## 四、机制推测（未证实，仅作方向）

最可能的原因是 **iAware 的拦截决策被缓存，且缓存不会因包被替换而失效**：

```
首次安装 GSF（或某次安装顺序）
      ↓
iAware 对该包做了一次策略判定，结果固化（可能是"未在启动管理名单中"⇒ 拦）
      ↓
此后无论改设置、禁用包、重启，缓存都不刷新   ← 这解释了早先"四招全废"
      ↓
卸载该包 + 重新安装 ⇒ 触发重新判定 ⇒ 放行
```

**这也解释了为什么早先所有尝试都失败**：我一直在改"策略输入"，
而没有触发"策略重新评估"。

> ⚠️ 这是推测，没有代码级证据。但**解法本身已被两处独立验证**。

---

## 五、复现步骤

```powershell
$py = "C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\python.exe"
$S  = "<设备序列号或 ip:port>"

# 一条命令完成：卸载全部 Google 包 → 重装与 Mate50 相同的 6 个包
& $py work\tools\reset_gms.py $S

# 然后验证（触发探针 + 读三个判别信号）
& $py work\tools\tabtest.py $S "卸载重装后"
```

`reset_gms.py` 卸载的目标包：
```
com.google.android.gms / .gsf / .gsf.login
com.android.vending
com.google.android.syncadapters.contacts
com.oversea.gmapjar
com.google.android.gms.policy_sidecar_aps
com.google.android.backuptransport
com.x.idhelper
```

**注意**：装完后如果探针 App 报 `READ_GSERVICES` 权限不足，
**重装一次探针**（`READ_GSERVICES` 的权限声明来自 GSF，
探针若在 GSF 之前安装则拿不到该声明）。

---

## 六、这对"改包版是否有用"的影响

**这是好消息，而且直接回答了你最初的疑问。**

既然封锁的消除**完全不需要**：
- 华为平台签名
- MDM 特权权限
- lzplay

那么一台设备要跑通 GMS，实际上只需要：

| 步骤 | 是否需要改包/特权 |
|---|---|
| 装 Google 包（用户态即可） | ❌ 不需要 |
| **卸载重装以解除 iAware 封锁** | ❌ 不需要 |
| 设备管理器（AOSP 标准路径） | ❌ 不需要（改包版也能激活，已实测三个） |
| 应用启动管理白名单 | ⚠️ 可能不需要（本次实验显示与它无关） |
| 静默装**系统**应用到 `/product/priv-app/` | ✅ 需要 `MDM_INSTALL_SYS_APP` |

⇒ **改包的旅游助手 / Chat Partner 完全可以起到"装 GMS 并让它可用"的作用。**
它们唯一确定做不到的，是把 GMS 静默装成**系统应用**（那需要华为平台签名）。

**而这在本次成功路径里根本没被用到** —— GSF 至今仍是 `/data/app/` 用户应用，
Play 商店照常工作。

### 对平板的结论也要更正

我早先说"平板缺 `getSysAppList` 所以不能用 lzplay" —— **这只说明 lzplay 的门禁会拒绝它，
不代表平板不能跑 GMS**。

**实测：平板的 GSF provider 现在完全正常。** 平板的 MDM API 有 33 个方法
（静默装/卸、安装白名单、信任列表齐全），只是少了 lzplay 用来做检查的那 2 个。

⇒ **平板可以跑 GMS**，只是需要绕开 lzplay 那个过于死板的门禁。

---

## 七、两处"未解之谜"文档的处置

| 文档 | 处置 |
|---|---|
| `未解之谜-GSF如何被放行.md` | 保留（记录了排除过程与正确判据），但**结论已被本文档取代** |
| `目标达成-GMS正常运行.md` 的撤回声明 | 保留（撤回"应用启动管理是关键"） |
| 本文档 | ✅ **最终解** |
