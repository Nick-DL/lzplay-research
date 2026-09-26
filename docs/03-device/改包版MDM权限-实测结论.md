# 改包版能否获得 MDM 权限 —— 实测结论（含 Chat Partner 原版）

> 三个问题，全部用**设备实测**回答，不再依赖代码推断。

---

## 一、结论总表

| 包（平板上，时钟 2019，CER 窗口内） | `DeveloperKey` | `ValidPeriod` | `Signature` | **MDM 授权** |
|---|---|---|---|---|
| **旅游必备 原装** | ✅ 过 | ✅ 过 | ✅ 过 | **6/7 granted** |
| **旅游必备 改包** | ❌ `DK_VC not same!` | ✅ | — | **0/7** |
| **Chat Partner 原版**（刚拿到） | ✅ 过 | ✅ 过 | ❌ **`error tag is Signature`** | **0/7** |
| **Chat Partner 汉化版** | ❌ `DK_VC not same!` | ✅ | ❌ | **0/7** |
| **Chat Partner 改包版** | ❌ `DK_VC not same!` | ✅ | ❌ | **0/7** |

**唯一能拿到 MDM 权限的是「原装、未改动、且华为验签能过」的那一个包。**

---

## 二、旅游必备 原装 vs 改包：单变量 A/B

改包版是一个**近乎完美的探针**：

| 因素 | 状态 |
|---|---|
| `META-INF/HUAWEI.CER` | **与原版逐字节相同**（我们只改代码、只重签，没动 CER） |
| 清单里申请的权限 | **完全相同**（`MDM_INSTALL_SYS_APP` 等 5 项都在） |
| 时钟 | 同一时刻，同在窗口内 |
| **唯一差别** | **签名证书**（`CN=oversea` → `CN=LZRevive-siblings`） |

### 结果

```
permission               genuine    repacked
──────────────────────────────────────────────
MDM_APP_MANAGEMENT       true       false
MDM_DEVICE_MANAGER       true       absent
MDM_NETWORK_MANAGER      true       absent
MDM_PHONE_MANAGER        true       absent
MDM_VPN                  true       absent
ACCESS_INTERFACE         true       false
MDM_INSTALL_SYS_APP      absent     absent
──────────────────────────────────────────────
total granted            6/7        0/7
```

### 设备日志（决定性）

```
E HwCertificationManager: DK_VC not same!                          ← DeveloperKey 不匹配
E HwCertificationManager: HC_VC error error tag is DeveloperKey    ← 定位到具体字段
E HwCertificationManager: verify cert failed!
E HwCertificationManager: check HwCertification error, cert is null!
```

**`DK_VC not same!` 这个字符串是子 agent 从 `hwServices.jar` 反编译时预测的，实测一字不差。**

⇒ **6/7 → 0/7 的落差 100% 归因于 `DeveloperKey` 校验。**

---

## 三、Chat Partner 原版：一个意外发现

拿到原版后发现它**签名自洽**：

```
签名证书 DN        : CN=office, OU=office
签名 SHA-256       : 1b358a93bd97495ce7a6b49bb94de998cd265bbb66d51a0e9e45f3d3e378c8d4
CER DeveloperKey   : 1b358a93bd97495ce7a6b49bb94de998cd265bbb66d51a0e9e45f3d3e378c8d4
                     ↑ 完全相等
```

**但它仍然 0/7**，日志显示失败在**另一道校验**：

```
E HwCertificationManager: HC_VC error error tag is Signature
E HwCertificationManager: verify cert failed!
E HwCertificationManager: check HwCertification error, cert is null!
```

**没有** `DK_VC not same!`（DeveloperKey 过了）、**没有** `VP_VC date expired`（时间对了）。

### 而且是 Chat Partner 独有的问题

**同一台平板、同一时刻**：

| 包 | 校验日志 |
|---|---|
| 旅游必备原装 | **完全干净，零报错** |
| Chat Partner 原版 | `error tag is Signature` |

⇒ 不是平板的问题 —— **是这份 CER 在平板的华为框架上验签失败。**

### 三个 Chat Partner 版本的 CER 逐字节相同

```
原版        CER sha256 = 20a491d88b069a5d  (3051 B, Signature + Signature2 都在)
汉化版      CER sha256 = 20a491d88b069a5d
改包版      CER sha256 = 20a491d88b069a5d
```

⇒ **不是谁改坏了** —— 这份 CER 本身在这个框架版本上就验不过。
可能原因：华为颁发时的密钥版本差异（`EMUI10_PK` vs `EMUI11_PK`），
或该证书已被吊销。**未证实。**

---

## 四、直接回答"改包的旅游必备能不能获取 MDM 权限"

# ❌ 不能。实测 0/7。

**原因链（不可逆）：**

```
改了代码 → 必须重签 → 签名证书变了
    ↓
HUAWEI.CER 里的 DeveloperKey 仍是原开发者的证书
    ↓
DeveloperKeyProcessor 比对：不相等 → DK_VC not same!
    ↓
整张 CER 被判无效（cert is null）→ 所有声明权限全部作废
```

**且 `DeveloperKeyProcessor` 没有任何 special 短路**（子 agent 反编译确认 + 本次实测印证）。

### 与"时间锁"的关键区别

| 校验 | 可逆性 |
|---|---|
| `ValidPeriod` | ✅ **可逆** —— 时钟走出窗口失效，走回来又有效 |
| `DeveloperKey` | ❌ **不可逆** —— 签名硬绑定，改包版无论时钟怎么设都永远是 0/7 |

---

## 五、但"改包版毫无用处"是错的

改包版**拿不到 MDM 权限**，但仍能做很多事（均为实测）：

| 能力 | 改包版 | 证据 |
|---|---|---|
| 正常启动并引导用户 | ✅ | **改包版 Chat Partner 在平板上直接进 `LoginActivity`**（原版反而卡在死服务器） |
| 设备管理器激活 | ✅ | 三个改包版实测均成功 |
| 交系统安装器装 APK | ✅ | 旅游必备走到 `com.android.packageinstaller` |
| 读 GSF ID / 引导注册 | ✅ | 需要 GSF 可用 |
| 引导用户改设置（应用启动管理等） | ✅ | 实测有效 |
| **静默装系统应用 / 保活白名单** | ❌ | 需要 MDM 权限 |
| **把 GMS 装成 `SYSTEM`/`PRIVILEGED` 应用** | ❌ | 同上 |

**⇒ 改包版能当"用户态安装向导"，当不了"特权安装器"。**

---

## 六、附带修正我之前的一个错误结论

我早先看过旅游必备在平板上弹"暂时不支持该设备。"，就说**"那个门禁是这套 App 家族的共同代码"**。

**错的。** Chat Partner 在平板上**没有**任何"不支持"提示，直接进登录界面。

⇒ **那个门禁是旅游必备特有的**，不是家族共性。

| | 旅游必备 | Chat Partner |
|---|---|---|
| 平板上启动 | ❌ 弹"暂时不支持该设备" | ✅ 正常进入 |

---

## 七、复现命令

```powershell
$py = "C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\python.exe"
$P  = "192.168.1.109:5556"

# 原装 vs 改包 A/B（旅游必备）
& $py work\tools\mdm_repack_test.py $P --run

# 三版 Chat Partner 对照（原版 / 汉化 / 改包）
& $py work\tools\chatpartner_test.py $P --run

# 平板能否拿 MDM（单包）
& $py work\tools\test_mdm_on_tablet.py $P --install

# 两设备 MDM 授权 A/B
& $py work\tools\mdm_ab.py
```

---

## 八、资产清单

| 文件 | SHA-256 | 说明 |
|---|---|---|
| `work/originals/com.lzplay.helper.apk` | `1242b03fc84f8d1c…` | lzplay 原版，CER 自洽 |
| `work/originals/旅游必备 travel essentials.apk` | `269c639a1d8f3b01…` | CER 自洽，**平板实测 6/7** |
| `work/originals/chatpartner.apk` | `8d8b53afcb0f7bc1…` | **刚拿到**，CER 自洽但 Signature 验签失败 |
| `work/originals/chat partner Chinese translated.apk` | `b8bf356986578008…` | 汉化版（已重签，CER 失效） |

**⚠️ 这四个文件都不可替代 —— 绝不要重打包或重签名。**
