# 未解之谜：Mate50 的 GSF 到底是被什么放行的

> **本文档记录一个我尚未解释清楚的观察。**
> 早先我写进文档的"闸门 1（应用启动管理）是关键"这个结论，
> **证据链已断，不应采信。**

---

## 一、事实清单（全部实测）

### 1.1 用户的两次操作说明（关键）

- **GSF 的"应用启动管理"被设为三个启动方式全部禁止**（不是放行）
- **卸载 Google Play 服务发生在更晚**（早上测试改版旅游必备时），
  而不是在 GSF 恢复之前

⇒ **我先前的两个候选解释（改设置放行 / 卸载 GMS 放行）都被排除。**

### 1.2 Mate50 现在的状态

```
$ adb shell logcat -d | grep -c "provider is prevented for iaware"     → 0
$ adb shell logcat -d | grep -c "provider is prevented for not-prevent" → 12
$ adb shell logcat -d | grep -c "shouldPreventStartProvider"            → 0

I ContentProviderHelper: Successfully start provider
    ContentProviderRecord{bf69de1 u0 com.google.android.gsf/.gservices.GservicesProvider}
    launchingApp=ProcessRecord{37ea1c4 5957:com.google.process.gservices/u0a363}
    caller pid= 27975
```

**`E ... shouldPreventStartProvider` 这条日志现在是 0 条。**
而本会话早先它曾经**一次会话里出现 888 次**。

⇒ **不是"拦截后放行"，而是那段判定逻辑现在对 GSF 完全不执行。**

GSF provider 探针（同时实测）：

```
open provider (null projection) = OK rows=0 cols=2
key android_id                  = 3885761887743418156
key checkin_interval            = 40600
key digest                      = 1-6b9cd222e10fbfe4f4f84c98ecab63d3d98fd2a5
key device_country              = cn
```

### 1.3 MatePad（对照，GSF 刚装上）的状态

```
E ContentProviderHelper: IAware or trustspace shouldPreventStartProvider
    name:com.google.android.gsf.gservices
    cpi:ContentProviderInfo{name:com.google.android.gsf.gservices
        className=com.google.android.gsf.gservices.GservicesProvider}

I HwActivityManagerServiceEx: provider is prevented for not-prevent

探针：READ_GSERVICES held: true
     open provider: NULL cursor  <-- BLOCKED
```

⇒ **平板照常被拦。两台设备行为不同，而拦截日志的 reason 字段都是 `not-prevent`。**

---

## 二、⚠️ 一个重要的方法论更正

**`provider is prevented for not-prevent` 这条日志的 `not-prevent` 不是"未拦截"的意思。**

证据：**平板上这句话和实际的拦截（`E shouldPreventStartProvider` + `NULL cursor`）同时出现。**
说明这个 reason 字符串是在判定**之前**打的，无论结果如何都会打。

**我早先把 Mate50 上 `for iaware` → `for not-prevent` 的变化当成"闸门放行"的证据 —— 这是错的。**

真正有判别力的是：
- `E ContentProviderHelper: IAware or trustspace shouldPreventStartProvider` **这条 E 行是否存在**
- `provider is prevented for <reason>` 里的 `<reason>` 是否为 `iaware`

Mate50 现在：E 行 0 条、`for iaware` 0 条 ⇒ **判定逻辑不再运行**
MatePad 现在：E 行有、reason 为 `not-prevent` ⇒ **判定逻辑运行中（虽然 reason 字面是 not-prevent）**

---

## 三、已排除的假说

| 假说 | 状态 | 排除依据 |
|---|---|---|
| 改"应用启动管理"放行 | ❌ **已排除** | 用户设的是**全部禁止**，反而通了 |
| 卸载 GMS 导致放行 | ❌ **已排除** | 卸载发生在更晚 |
| lzplay 用 MDM 特权调 `setSysAppList` 加白名单 | ❌ **已排除** | 全量 logcat 里**没有** `setSysAppList` / `addInstallPackageWhiteList` / `persistentApp` 的任何调用记录 |
| 关 `com.huawei.iaware` 包 | ❌ 早已排除 | 包已恢复启用，无影响 |
| 改 `is_trustspace_enabled` / `trust_space_switch` | ❌ 早已排除 | 打在了没触发的门上 |
| `MDM_INSTALL_SYS_APP` 授予本身 | ❓ 未排除 | 时间上吻合（09:19 授权 → 09:29 放行），但无直接证据 |

---

## 四、当前唯一的候选假说

**时间线吻合度最高的解释**：

```
09:19  备份恢复安装 lzplay（带应用数据）
09:21  激活设备管理器 → lzplay 获得 MDM_INSTALL_SYS_APP
09:25  复测：GSF provider 仍被拦（for iaware）
09:29  用户改"应用启动管理"（设 GSF 为全部禁止）
09:29  复测：GSF provider 【通了】← 变化点
```

**变化确实发生在用户改设置的前后几分钟内**，但用户设的是"禁止"而不是"放行"。

一个可能的反直觉解释：
**华为"应用启动管理"设为"手动管理 + 全部禁止"时，等于把该应用从 iAware 的
"自动管理"策略中【摘出来】，使 `getPackageAllowType()` 不再对它返回策略值，
从而绕过了闸门 1 的判定。**

这与"手动管理"的语义相符 —— 手动管理 = 用户接管，系统不再自行调度/限制。

**但这是推断，没有代码级证据。** 需要实验验证。

---

## 五、可做的验证实验（在平板上，不碰 Mate50）

平板是理想的实验台：
- 无关键数据
- GSF 已装、provider 被拦（`NULL cursor`）
- lzplay 因缺 `getSysAppList` 被判"不支持"，不会干扰

**实验设计（单变量）**：

| 步 | 操作 | 观察 |
|---|---|---|
| 1 | 装 `com.google.android.gms`，启动一次 | provider 是否解封？ |
| 2 | 若否，在平板上手改 GSF 的"应用启动管理"为**全部禁止** | provider 是否解封？ |
| 3 | 若否，恢复为**手动管理+三开关全开** | provider 是否解封？ |
| 4 | 若否，恢复为**自动管理** | provider 是否解封？ |

**判据**（必须用这三条，不能只看 reason 字符串）：
```powershell
# 1) E 行是否消失
adb -s <serial> logcat -d | Select-String "shouldPreventStartProvider"
# 2) reason 是否为 iaware
adb -s <serial> logcat -d | Select-String "provider is prevented for"
# 3) 探针结果
adb -s <serial> shell "cat /sdcard/Android/data/com.lzplay.revive/files/lzrevive.txt" |
    Select-String "open provider|android_id"
```

**注意**：实验 2/3/4 需要**手动点 UI**（adb 打不开"应用启动管理"界面）。

---

## 六、这个问题对项目结论的影响

**不影响已取得的成果** —— Mate50 上 GMS 确实可用（Play 商店正常、账号已登录）。

**但影响对"改包版是否有效"的判断**：

- 我原先的推理"改包版拿不到 MDM → 因此无用"**建立在一个已被证伪的机制解释上**
- 现在**无法确定** MDM 权限在成功路径中起了什么作用
- 也因此**无法确定**改包版（无 MDM 权限）能否复现成功

**唯一能回答这个问题的办法就是第五节的实验。**
