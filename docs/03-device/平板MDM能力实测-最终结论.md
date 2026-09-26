# 平板 MDM 能力实测 —— 最终结论

> 两个问题一次回答：
> **① 平板能不能拿到华为 MDM 权限？** → **能，实测六项特权权限全授予。**
> **② 平板为什么不能用 lzplay？** → **两个独立原因，都不是"机型白名单"。**

---

## 一、实验设计（单变量 A/B）

平板上安装**原装未改动**的旅游必备（`com.qiyecomm`），
与 Mate50 上是**同一个 APK 文件、同一个 CER**。

| | 平板 | Mate50 |
|---|---|---|
| APK | `旅游必备 travel essentials.apk` | 同一个文件 |
| SHA-256 | `269c639a1d8f3b01d650b38c0781ffa1833974a0e72d69f820a511256db2c964` | 同 |
| 时钟 | **2019-09-26（在窗口内）** | 2026-09-26（窗口外） |
| CER 窗口 | `2019-10-14 12:20:59 .. 2020-10-14 12:20:59` | 同 |

**唯一受控变量 = 时钟。**

---

## 二、结果

### 2.1 平板：六项特权 MDM 权限全部授予

```
CER 声明的权限                          平板           Mate50
─────────────────────────────────────────────────────────────────
com.huawei.systemmanager.permission.ACCESS_INTERFACE   GRANTED    denied
com.huawei.permission.sec.MDM_NETWORK_MANAGER          GRANTED    absent
com.huawei.permission.sec.MDM_PHONE_MANAGER            GRANTED    absent
com.huawei.permission.sec.MDM_VPN                      GRANTED    absent
com.huawei.permission.sec.MDM_DEVICE_MANAGER           GRANTED    absent
com.huawei.permission.sec.MDM_APP_MANAGEMENT           GRANTED    denied
com.huawei.permission.sec.MDM_INSTALL_SYS_APP          absent     denied
```

**这些全是 `signature|privileged` 级权限**（实测 `prot=signature|privileged`, `uid=1000`）。

**⇒ 平板的华为框架完全支持 `HUAWEI.CER` 授权通道。** 时钟一进窗口，六项全给。

### 2.2 但 `MDM_INSTALL_SYS_APP` 在平板上**根本没被定义**

```
Mate50 : 36 个 com.huawei.permission.sec.MDM_* 权限定义
   MDM_INSTALL_SYS_APP            ✅ DEFINED
   MDM_INSTALL_UNDETACHABLE_APP   ✅ DEFINED

平板   : 34 个
   MDM_INSTALL_SYS_APP            ❌ NOT DEFINED
   MDM_INSTALL_UNDETACHABLE_APP   ❌ NOT DEFINED
```

**这是固件差异。** 旅游必备在清单里**申请了**它，但平板的权限注册表里
没有这个权限 —— 所以它连"申请"都不成立（dumpsys 里显示 `absent`，
而 Mate50 上能申请但被拒，显示 `granted=false`）。

---

## 三、回答你的两个问题

### ① 平板能不能调用 MDM 权限？

**能，而且实测拿到了六项特权权限。**

| 能力 | 平板 |
|---|---|
| `MDM_APP_MANAGEMENT`（应用管理、保活白名单） | ✅ GRANTED |
| `MDM_DEVICE_MANAGER`（设备管理） | ✅ GRANTED |
| `MDM_NETWORK_MANAGER` / `MDM_VPN` / `MDM_PHONE_MANAGER` | ✅ GRANTED |
| `ACCESS_INTERFACE` | ✅ GRANTED |
| **`MDM_INSTALL_SYS_APP`（静默装系统应用）** | ❌ **固件未定义** |
| `MDM_INSTALL_UNDETACHABLE_APP`（装不可卸载应用） | ❌ **固件未定义** |

**而平板可用的 `DevicePackageManager` 方法（33 个）里是有 `installPackage` 的** ——
所以"安装"这个动作本身**可能仍然可用**，只是不能用"装成系统应用"那个权限。

### ② 平板为什么不能用 lzplay？

**两个独立原因，都不是"机型白名单"：**

| # | 原因 | 性质 |
|---|---|---|
| **1** | lzplay 的门禁检查 `getSysAppList` 在平板上不存在 ⇒ 它自己判"不支持" | **lzplay 的代码问题** |
| **2** | 平板固件未定义 `MDM_INSTALL_SYS_APP` ⇒ 即使绕过门禁，也无法把 GMS 装成系统应用 | **固件能力限制** |

**而且旅游必备在平板上也弹了"暂时不支持该设备。"** ——
说明那个门禁检查是**这套 App 家族的共同代码**，不只是 lzplay 有。

---

## 四、这对 Mate50 成功路径的意义

Mate50 之所以成功，现在看是**多个条件同时满足**：

```
① 备份恢复通道（系统身份安装）
② 时钟在 CER 窗口内（或事后被 PMS 接受）
③ 固件定义了 MDM_INSTALL_SYS_APP
④ lzplay 的门禁因 getSysAppList 存在而通过
⑤ GMS / Play 商店最终带上 SYSTEM + PRIVILEGED 标志
```

**平板缺 ③ 和 ④，所以走不通同样的路。**

---

## 五、平板还有没有希望？

**有一条没被堵死的路**：平板**有** `MDM_APP_MANAGEMENT` 和 `installPackage` 方法。

| 可能性 | 评估 |
|---|---|
| 用 `DevicePackageManager.installPackage` 装 GMS（不追求系统应用） | ⚠️ **值得一试** —— 该方法存在，权限也有 |
| 让 GMS 变成系统应用 | ❌ 不可能（缺 `MDM_INSTALL_SYS_APP`） |
| 让 Play 商店自我升级以触发华为 PMS 的"预装识别" | ⚠️ **可能是平板唯一的出路** —— 不依赖任何 MDM 权限 |

**第三条最值得试**：Mate50 上 GMS 最终带上 `SYSTEM`/`PRIVILEGED` 是因为
`installerPackageName=com.android.vending` —— **是 Play 商店自己更新的**。
如果平板也能让 Play 商店完成自我升级 + 更新 GMS，
**有可能复现同样的标志**，而这条路**完全不需要 MDM 权限**。

---

## 六、复现命令

```powershell
$py = "C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\python.exe"

# A/B 对比两个设备的 MDM 授予情况
& $py work\tools\mdm_ab.py

# 在指定设备上安装原装旅游必备并读数
& $py work\tools\test_mdm_on_tablet.py <serial> --check
& $py work\tools\test_mdm_on_tablet.py <serial> --install

# 观察 SYSTEM 标志变化
& $py work\tools\watch_system_flag.py <serial> --wait-minutes 20
```
