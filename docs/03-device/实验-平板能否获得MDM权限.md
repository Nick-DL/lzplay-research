# 平板能否获得华为 MDM 权限 —— 实验方案

> 问题：**平板上的华为框架还认不认 `HUAWEI.CER` 这条授权通道？**
>
> 这决定了"lzplay 在平板说'不支持'"到底是
> **(A) lzplay 自己的门禁太死板**（平板其实有能力），还是
> **(B) 平板的华为框架根本不支持 CER 授权**（真的没办法）。

---

## 一、为什么这个实验有价值

### 已知事实

| 事实 | 证据 |
|---|---|
| 平板有 33 个 MDM 方法（`installPackage`、白名单、信任列表齐全） | LZGateProbe 实测 |
| 平板**只缺** `getSysAppList` / `setSysAppList` 两个 | 同上 |
| lzplay 的门禁**只检查 `getSysAppList` 是否存在** | `DeviceManage.java` 反编译 |
| 平板从未装过任何携带 CER 的 App | `pm list packages` 全量核对 |
| 旅游必备**原始包**的 CER 自洽（`DeveloperKey` == 真实签名证书） | `verify_huawei_cert.py` |
| 那个权限是 `signature\|privileged`，`sourcePackage=androidhwext` | Mate50 实测 |

### 缺口

**我们从来没在平板上试过装一个携带合法 CER 的 App。**
所以不知道平板的华为框架会不会授予 MDM 权限。

---

## 二、实验设计

**单变量**：在平板上安装**原装未改动**的旅游必备（`com.qiyecomm`），
时钟置于其 CER 的 `ValidPeriod` 窗口内。

| 项 | 值 |
|---|---|
| 测试包 | `work/originals/旅游必备 travel essentials.apk` |
| SHA-256 | `269c639a1d8f3b01d650b38c0781ffa1833974a0e72d69f820a511256db2c964` |
| 包名 | `com.qiyecomm` |
| CER 窗口 | **2019-10-14 12:20:59 .. 2020-10-14 12:20:59 (GMT)** |
| 目标时钟 | 2019-12-07 |
| 观察项 | 四个 `com.huawei.permission.sec.MDM*` 的 granted 值 |

### 为什么用旅游必备而不是 lzplay

- lzplay 在平板上连**启动**都会被门禁挡住（`getSysAppList` 缺失），
  根本走不到安装阶段，会污染实验
- 旅游必备**没有那个门禁**（它的 `DeviceManage` 用同样的 API 但
  **只有在运行时才调**，安装阶段不检查）
- 而且旅游必备的 CER 我已密码学验证自洽

### 对照组

| 组 | 条件 | 预期 |
|---|---|---|
| **实验组** | 时钟在窗口内（2019-12-07） | ? ← 要看的就是这个 |
| **对照组** | 时钟在窗口外（2026） | 应该**被拒**（`VP_VC date expired`） |

⚠️ 对照组不是必须的 —— 如果实验组通过就说明问题；如果实验组失败，
再跑对照组分清是"缺通道"还是"时间没设对"。

---

## 三、判据

### 成功（平板有能力）

```
com.huawei.permission.sec.MDM_INSTALL_SYS_APP        granted=true
com.huawei.permission.sec.MDM_APP_MANAGEMENT         granted=true
```

⇒ **平板的华为框架正常支持 CER 授权**
⇒ **lzplay 在平板说"不支持"纯粹是它自己门禁写死了（少查了一个方法而已）**
⇒ **只要绕开那个检查，平板完全可以走通同样的路线**

### 失败（平板无能力）

```
四个 MDM 权限全部 granted=false / absent
```

⇒ 需要看 logcat 里的 certificate processor 日志分辨原因：

| 日志 | 含义 |
|---|---|
| `VP_VC date expired` | 时间没设对（不是结论，重设时钟重试） |
| `DK_VC not same!` | 签名不匹配（说明我用的文件被改过 —— 但 SHA-256 已核对，不该发生） |
| `Sig_VC ...` | 华为签名验签失败 |
| **完全没有 certification 日志** | **CER 根本没被咨询** ⇒ 平板的 PMS 不认这条通道 |
| `HC_VC ...` | HwCertificationManager 层面的拒绝 |

---

## 四、执行

```powershell
$py = "C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\python.exe"
$P  = "192.168.1.109:5556"

# 前置检查（确认时钟与文件）
& $py work\tools\test_mdm_on_tablet.py $P --check

# 正式执行（要求时钟已在 2019 年内）
& $py work\tools\test_mdm_on_tablet.py $P --install
```

**前置手动步骤**（adb 改不了系统时间）：
`设置 → 系统和更新 → 日期和时间 → 关闭"自动设置" → 设为 2019-12-07`

---

## 五、结果的两种含义

### 若成功 ⇒ 对项目有重大意义

**Mate50 上 lzplay 那两个"拦路虎"（门禁、MDM 权限）其实都不构成平板上的障碍：**

| 障碍 | 真实性质 |
|---|---|
| "机型白名单" | ❌ 不存在 —— 只是 `getSysAppList` 的存在性检查 |
| "平板没 MDM 能力" | ❌ 若实验成功则证伪 —— 平板有能力，只是 lzplay 不认 |
| "必须华为平台签名" | ⚠️ **仍然成立** —— 只有携带合法 CER 的包能拿权限 |

**关键推论**：**平板需要的是一个"携带合法 CER 且不检查 `getSysAppList` 的安装器"。**
- 不能是改包的（改包破坏 `DeveloperKey`）
- 但**可以是原装的旅游必备或 Chat Partner**（它们的 CER 都自洽，且门禁逻辑不同）

### 若失败 ⇒ 平板的华为框架确实不支持

那 lzplay 的"不支持"在平板上就是**实质性正确**的，只能走 microG 路线。

---

## 六、附带价值

这个实验还能顺带回答另一个悬而未决的问题：

**Mate50 上 GMS 的 `SYSTEM` / `PRIVILEGED` 标志是谁给的？**

如果旅游必备在平板上拿到 `MDM_INSTALL_SYS_APP`，我就可以**用它去调
`DevicePackageManager.installPackage`**，直接观察：
- 装出来的包是否带 `SYSTEM` 标志
- `presetPath=/product/priv-app/` 的语义到底如何体现

**这是唯一能直接验证"lzplay 如何给 GMS 贴系统应用标签"的办法。**
