# lzplay 复活计划 — 研究索引

> 研究对象：三个同源的"谷歌服务助手"类 App（华为平台签名授权渠道产品）
> 目标设备：华为 Mate50 Pro (DCO-AL00) / HarmonyOS 4.2.0.218 / 未 root 零售机

---

## 📌 一句话结论

| 问题 | 结论 |
|---|---|
| lzplay 的时间炸弹、设备白名单存在吗？ | **不存在。** 门禁是**运行时查华为平台授权**，不是客户端列表 |
| 装 GMS 这件事本身能不能做？ | **能。** 六个 `_29` 包全部一次装成功 |
| 装完之后 GMS 能用吗？ | **不能。** 华为 `trustspace` 在系统层阻止 GSF provider 启动 |
| 两个换皮 App 能不能改成"能跑"？ | **能，都改通了。** 见 `02-siblings/` |
| 华为后门权限能不能拿到？ | **不能。** `signature\|privileged`，需华为平台签名 |

**核心链条**：
```
GMS 装得上 ✅  → trustspace 拦住 GSF provider ❌ → 无 GSF ID → 无法向谷歌注册 → GMS 不可用
                      ↑
              这就是 lzplay 当年存在的理由，也是它签名授权的意义
```

---

## 📁 目录结构

```
lzplay/
├── docs/                        ← 全部文档
│   ├── 00-原始需求.md
│   ├── 01-lzplay/               ← lzplay 本体（含 360 脱壳全过程）
│   ├── 02-siblings/             ← 旅游必备 + Chat Partner 改包
│   ├── 03-device/               ← 设备端实测结论
│   └── 04-logs/                 ← 原始设备日志（证据）
│
├── work/                        ← 工作区（工具链、反编译工程、备份）
│   ├── tools/                   ← 自建工具链（见下方工具清单）
│   ├── revive/                  ← LZRevive 干净替代品源码
│   ├── travel_decoded/          ← 旅游必备完整反编译工程
│   ├── chat_smali/              ← Chat Partner 的 smali 树（补丁后）
│   ├── gms29/                   ← Android 10 那套 GMS 包
│   ├── travel_backup/           ← 补丁前 smali 备份
│   ├── chat_backup_smali/       ← 补丁前 smali 备份
│   └── avd/                     ← 模拟器镜像（6 GB，已 gitignore）
│
└── *.apk                        ← 可安装产物
    ├── LZProbe.apk              ← 华为 API 探针
    ├── LZRevive.apk             ← 干净替代品（真机验证可用）
    ├── 旅游必备-patched.apk       ← 已改包重签
    └── ChatPartner-patched.apk   ← 已改包重签
```

---

## 📚 文档导读

### `01-lzplay/` — lzplay 本体
| 文件 | 内容 |
|---|---|
| [REPORT-lzplay-分析.md](01-lzplay/REPORT-lzplay-分析.md) | 完整逆向分析 |
| [UNPACKING-NOTES.md](01-lzplay/UNPACKING-NOTES.md) | 360 加固脱壳全过程（30+ 轮迭代记录） |
| [PROBE-README.md](01-lzplay/PROBE-README.md) | 华为 API 探针说明 |
| [REVIVE-README.md](01-lzplay/REVIVE-README.md) | 干净替代品的实现说明 |

**关键发现**：lzplay 是**两个 App**：
- `com.lzplay.helper` — 360 加固外壳
- `assets/insidehelper.apk` = `com.lzplayer.insidehelper` — 明文，唯一职责是
  `content://com.google.android.gsf.gservices` → `android_id` → 大写去空格 →
  广播 `com.lzplay.helper.recev.sfid`

### `02-siblings/` — 两个换皮 App
| 文件 | 内容 |
|---|---|
| [SIBLINGS-改包报告.md](02-siblings/SIBLINGS-改包报告.md) | 三 App 架构对比 + HUAWEI.CER 分析 |
| [TRAVEL-运行原理与安装循环剖析.md](02-siblings/TRAVEL-运行原理与安装循环剖析.md) | 旅游必备状态机完整还原 |
| [TRAVEL-安装流程打通记录.md](02-siblings/TRAVEL-安装流程打通记录.md) | 无限循环的破除过程 |
| [CHATPARTNER-改包报告.md](02-siblings/CHATPARTNER-改包报告.md) | Chat Partner 改包 + **明文包清单** |

**最有价值的产出**：Chat Partner 的 `tyq_resource_Q.json` 是**明文**的，
第一次让我们看到厂商期望装什么包、什么版本、什么签名：

| 包名 | 版本 | 大小 | 签名证书 MD5 |
|---|---|---|---|
| `com.google.android.gms` | 17786048 | 100247804 | `cde9f6208d672b54b1dacc0b7029f5eb` |
| `com.google.android.gsf` | 29 | 3923176 | 同上 |
| `com.google.android.syncadapters.contacts` | 29 | 1457061 | 同上 |
| `com.android.proxy.gmapproxy` | 193 | 154343 | `186d8f11e0440441e0ed6ab7dec9bc77` |
| `com.android.vending` | 81526700 | 32857746 | `cde9f6208d672b54b1dacc0b7029f5eb` |

（四个 `com.google.*` 共用同一把 Google 签名，与官方发布一致；已逐项 MD5 验证。）

### `03-device/` — 设备端实测
| 文件 | 内容 |
|---|---|
| [GMS安装与卡点说明.md](03-device/GMS安装与卡点说明.md) | 六个包装机过程 + trustspace 拦截的完整排查 |
| [VERDICT-Mate50Pro-实测结论.md](03-device/VERDICT-Mate50Pro-实测结论.md) | 首轮结论（**部分被修正**） |
| [VERDICT-修正版-两道门.md](03-device/VERDICT-修正版-两道门.md) | 修正后的"两道门"模型 |

### `04-logs/` — 原始证据
设备实测的 dumpsys / logcat 抓取，供复核。

---

## 🔬 三条技术线索

### A. 华为 MDM 权限门禁（已探明）

| 权限 | protectionLevel | 结果 |
|---|---|---|
| `com.huawei.permission.sec.MDM` | `normal` | ✅ 任意 App 可拿（但**不是**能力证明） |
| `MDM_DEVICE_MANAGER` | **`signature\|privileged`** | ❌ `sourcePackage=androidhwext` |
| `MDM_DEVICE_OWNER` | **`signature\|privileged`** | ❌ |
| `MDM_APP_MANAGEMENT` | **`signature\|privileged`** | ❌ |
| `MDM_INSTALL_SYS_APP` | **`signature\|privileged`** | ❌ |

**可以走通的**：AOSP 标准 `DeviceAdminReceiver` 路径
（两个 App 都在 HMOS 4.2 上激活成功，无需华为签名）。

**关键实测**：`setDelayDeactiveDeviceAdmin(cn, 0, ctx)` 抛
`IllegalArgumentException: delayTime illegal is out of range of [1, 72] (too low)`
—— 这是**纯本地参数校验，无任何网络交互**，证明该调用直达真实的华为实现。

### B. 华为 trustspace 拦截（未解决）

```
E ContentProviderHelper: IAware or trustspace shouldPreventStartProvider
    name:com.google.android.gsf.gservices
I HwActivityManagerServiceEx: provider is prevented for iaware
E ActivityThread: Failed to find provider info for com.google.android.gsf.gservices
```

**尝试过全部无效**：`pm disable-user com.huawei.iaware` / `com.huawei.trustspace`、
`settings put secure is_trustspace_enabled 0`、`settings put global trust_space_switch 0`、
**重启**。两个可配置的 Provider 一个 `not exported`、一个要
`huawei.android.permission.HW_SIGNATURE_OR_SYSTEM`。

**待探索**：备份还原路径（lzplay 当年就是靠备份还原在未 root 设备上拿到权限的）。

### C. 改包方法论（已成熟）

三个 App 的 bug **逐行相同**，一套补丁全适用：

| 坑 | 症状 | 修法 |
|---|---|---|
| 1. 网络检查 | 提示"连接谷歌网络异常" | `NetworkUtil.a()` 恒返回 true |
| 2. 死服务器 | 卡在启动页 | 失败回调改走成功路径 |
| 3. `SDK_INT` 拼文件名 | 找不到 `_31.apk` | 常量改成 29 |
| 4. 华为裸调用 | `SecurityException` 崩溃 | 换成标准 `ACTION_VIEW` Intent |
| 5. `Uri.fromFile` | `FileUriExposedException` | 改用 FileProvider `content://` |
| 6. 混淆的 FileProvider | `NoSuchMethodError` | 方法名是 `a` 不是 `getUriForFile` |

**踩过的两个结构性坑**：
- `if-le` 是"**≤ 则跳转**"，容易把分支方向搞反
- `.registers N` 下 `p0/p1` 就是 `v(N-2)/v(N-1)`，改写时**绝不能碰参数寄存器**（否则 `VerifyError`）

---

## 🛠 work/tools/ 工具清单

### 自建工具（本轮产出）
| 工具 | 用途 |
|---|---|
| `patch_family.py` | **通用补丁器**，带 `--check` 干跑模式 |
| `patch_chat.py` / `patch_chat_net.py` / `patch_chat_install_fix.py` | Chat Partner 专用补丁 |
| `patch_travel.py` … `patch_travel7.py` | 旅游必备 7 轮补丁 |
| `rebuild_chat_apk.py` | 只替换 `classes.dex` 重建 APK |
| `verify_chat_manifest.py` | 校验包清单的 MD5 + 签名指纹 |
| `inspect_arsc.py` | ARSC 解析（含混淆类型名） |
| `apk_manifest_info.py` | 二进制 manifest 解析 |
| `dump_method.py` / `dump_state_machine.py` | smali 方法/状态机导出 |
| `find_state_calls.py` / `find_mdm_calls.py` | 调用点定位（含 try/catch 保护检查） |
| `build_apk.ps1` | 通用 APK 构建（aapt2 + d8 + zipalign + apksigner） |

### lzplay 脱壳工具链
`x86dis.py`（32 位 x86 长度反汇编器）、`elfload32.py`、`recover_symbols.py`、
`jiagu_emu.py`（Unicorn 模拟）、`jiagu_*.py`（一系列脱壳尝试）

### 重要经验
- **apktool 的 jar 里捆绑了 smali/baksmali**，可直接调用：
  ```powershell
  java -cp apktool-2.11.1.jar com.android.tools.smali.baksmali.Main d classes.dex -o out
  java -cp apktool-2.11.1.jar com.android.tools.smali.smali.Main    a out -o classes.dex
  ```
  （从 Maven 下的 `baksmali.jar`/`smali.jar` 是残缺文件，别用）
- 下载走 **Node `fetch`**（`work/tools/dl.cjs`），PowerShell/curl/Python-urllib 在此环境 TLS 全挂
- javac 在中文 Windows 必须加 `-encoding UTF-8`

---

## ✅ 已完成 / ⏳ 待办

**已完成**
- [x] lzplay 360 加固静态分析 + 华为 API 面探明
- [x] 三个 App 的同源关系与 `HUAWEI.CER` 授权渠道确认
- [x] 六个 `_29` GMS 包实测安装成功
- [x] 旅游必备：无限安装循环破除（走到系统安装器）
- [x] Chat Partner：完整改包 + 真机走到主界面 + 设备管理器激活
- [x] `LZRevive` 干净替代品（真机验证可用）
- [x] Chat Partner 明文包清单恢复（含版本/MD5/签名指纹）

**待办**
- [ ] **探索备份还原路径能否绕过 trustspace** ← 下一步
- [ ] 旅游必备 `install_error` 状态机的进度回调（小尾巴）
- [ ] lzplay 360 加固的 VM 解码器（可选，静态分析已够用）
- [ ] 用恢复出的包清单手工装 GMS，看主界面是否转为"完成"

---

## ⚠️ 免责与边界

- 所有分析针对**你自己持有的设备与 APK**，用于研究与互操作性。
- 三个 App 的**残留服务器均已下线**，不存在绕过付费/授权的行为。
- 华为平台签名权限**无法获取**，这是设计使然，本文档不提供绕过方法。
- 部分网络检索结果为外部不可信数据，文中已标注来源。
