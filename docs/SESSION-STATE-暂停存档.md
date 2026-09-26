# 会话中断存档 —— 2026-09-26

> 用户去找备份还原包，研究暂停。恢复时从本文档接上。

---

## 一、本轮的两个重要更正

### 更正 1：GSF provider 被拦 ≠ GMS 不可用（我之前判断错了）

**官方 2026 教程明确要求主动禁用 GSF：**

```powershell
adb shell pm disable-user --user 0 com.google.android.gsf
```

原文（[toalan.com/archives/184](https://www.toalan.com/archives/184/)）：

> **通过ADB停用GSF【重要步骤！】**
> …**新 GMS 不依赖 GSF**，禁用可消除"未获 Play 认证"弹窗

**所以我之前把"华为 trustspace 拦住 GSF provider"当成不可逾越的障碍，这个结论是错的。**
现代 GMS（Play 服务 26.x）不再依赖 `com.google.android.gsf`。

### 更正 2：备份里的应用数据（`com.lzplay.helper.tar`）确实存在

从教程的文件结构确认：

```
Backup/backupFiles/2019-12-07_02-08-38-841/
├── com.lzplay.helper.apk        ← APK
├── com.lzplay.helper.tar        ← ★ 应用数据（用户猜测的那个东西）
└── info.xml
```

而教程的激活步骤写道：

> 从内部存储恢复…输入密码 `a12345678` 恢复
> 5. 激活谷歌服务助手…点击 `激活`，并给权限
> **激活后不需要点击开始下载，直接返回桌面**

**"不需要点开始下载"** ⇒ 暗示卡住的那一步被绕过了 ⇒ 支持用户的假设。

---

## 二、教程的关键情报（按重要性）

| 项 | 内容 |
|---|---|
| 适配范围 | HarmonyOS **2.0–4.3**，**支持平板**（"部分型号"） |
| GMS 版本 | Play 服务 **26.09.31**、Play 商店 **50.4.17**（2026 年版本，不是我们手上的 2019 版） |
| 备份包路径 | `/Huawei/Backup/backupFiles/2019-12-07_02-08-38-841/` |
| 备份密码 | `a12345678` |
| 备份名 | `toalan.com 备份` |
| **必须改日期** | **2019 年**（与我们的 `ValidPeriod` 结论完全一致 ✅） |
| 推荐 GMS 版本 | 优先 **V12**（谷歌通讯录 / 服务框架各有两个版本），装不上再退 V10 |
| 激活失败判据 | 弹"当前设备不支持"→ 放弃；弹"网络连接异常"→ 仍可支持，需**降级"备份和恢复"** |
| 独立工具 | `36-…（手机+电脑+进阶版）` 里有 **`备份降级工具`**(15.7 MB)，专门解决上面的降级问题 |

### 教程列出的安装步骤（供后续验证）

```
0. 关闭：悬浮导航 / 纯净模式增强防护 / 隐私空间 / 应用分身 / 省电模式
1. 清除谷歌应用数据（含"谷歌服务助手"、microG）
2. 【必做】激活谷歌服务助手
   - Backup 文件夹拷到 /Huawei/
   - 日期改 2019
   - 备份和恢复 → 从内部存储恢复 → 密码 a12345678
   - 恢复自动日期
   - 打开"谷歌服务助手"→ 点"激活"→ 给权限
   - ★ 激活后不要点"开始下载"，直接返回桌面
3. 装 1-google账户管理 / 2-V12谷歌通讯录 / 3-Policy sidecar / 4-Shared Library
   再装 5-V12谷歌服务框架 / 6-Google Play 服务
4. 登录谷歌账号（设置 → Google）
5. (跳过)
6. 【重要】用 adb 停用 GSF
   - 装 7-Google Play 商店，跳过"正在更新"
   - 从备忘录链接进 Play 详情页点更新，进度过 50% 时执行：
     adb shell pm disable-user --user 0 com.google.android.gsf
7. 最终设置：Play 服务权限（位置、媒体和文件必开）；
   应用启动管理 → Play 服务/商店 设为手动管理全选
8. FCM：拨号 *#*#426#*#* 检查 Connected
```

---

## 三、三台设备对照结论（已完成）

`docs/03-device/三台设备对照-白名单之谜.md`

**"机型白名单"不存在。** lzplay 门禁只是一个反射调用：

```java
try { new DevicePackageManager().getSysAppList(cn, [pkg]); return true; }
catch (Throwable t) {
    if (t instanceof NoSuchMethodError || class == NoSuchFieldException...) return false;
    return true;   // ← 其它一切异常都算"支持"
}
```

| 设备 | 方法数 | `getSysAppList` | lzplay 判定 |
|---|---|---|---|
| Mate50 Pro (DCO-AL00) | 35 | ✅ | **SUPPORTED** |
| Nova7 (JEF-AN00) | 35 | ✅ | **SUPPORTED** |
| MatePad 2022 (GOT-W09) | **33** | ❌ 不存在 | **UNSUPPORTED** |

⇒ 平板弹"不支持"是**技术性正确**的（华为砍了那 2 个方法），不是 lzplay 太严。
⇒ Mate50 卡启动页**与门禁无关**（门禁判 SUPPORTED）。

**但按更正 1 的视角重看**：Mate50 卡启动页很可能就是**那个 HTTP 请求超时**，
而教程用备份数据（+ 可能的降级工具）绕过了它。

---

## 四、已完成的重大成果（勿丢）

### `com.lzplay.helper.apk` 持有了特权权限 ✅

```
MDM_INSTALL_SYS_APP   granted=true    ← 全设备历史上第一个
MDM_APP_MANAGEMENT    granted=true
```

**而且时钟回到 2026 后权限仍在**（证书缓存进 `/data/system/hwcert.xml`）。

**完整机制**（`docs/01-lzplay/HUAWEI-CER-华为授权机制.md`）：

| Processor | 状态 |
|---|---|
| `DeveloperKeyProcessor` | ✅ 生效 —— 证书必须逐字节等于 APK 真实签名证书（已密码学证实） |
| `ValidPeriodProcessor` | ✅ 生效 —— 裸挂钟比较，窗口 `2019-07-25 .. 2020-07-25` |
| `ApkHashProcessor` | ❌ **被跳过**（`isContainSpecialPermissions()` 短路）⇒ 改包不影响这一项 |
| `SignatureProcessor` | ✅ 生效 —— 华为公钥验签，无华为私钥改不了 |
| `CertificateProcessor` | ⚪ 仅类型标签，`platform` 不授予任何东西 |

**⇒ 必须用原始未改动的 APK。任何改包/重签都会破坏 `DeveloperKey`。**

---

## 五、设备当前状态

| 设备 | 状态 |
|---|---|
| **Mate50 Pro** (USB `BLT0222902012232`) | GMS 六包就位；lzplay **已装且持权**；时钟已恢复 2026；旅游必备 + Chat Partner 已改包并激活设备管理器 |
| **Nova7** (`192.168.1.105:5557`) | 已装 `LZGateProbe`（诊断用），无 GMS |
| **MatePad 2022** (`192.168.1.109:5556`) | microG **已按用户要求卸载**；已装 `LZGateProbe` |

---

## 六、恢复研究时的第一步

用户带回备份包后：

1. **解压看 `info.xml`** —— 确认里面只有 `com.lzplay.helper`（作者说只放这一个）
2. **解开 `com.lzplay.helper.tar`** —— 看它含什么文件
   （Huawei 的 tar 是 PBKDF2→AES-GCM→AES-CTR 加密的；密码 `a12345678`）
   - 若含 `shared_prefs/*.xml` 且有个"已完成初始化"标志 ⇒ **用户的假设成立**
   - 若只含普通数据 ⇒ 假设不成立，卡启动页另有原因
3. 如果 tar 解不开，**直接按教程走一遍**，观察 lzplay 是否跳过卡住的那步

### 下载受阻情况（供用户参考）

作者的 alist（`alist.toalan.com`）**直链流量已耗尽**，API 返回：

```
failed link: failed get link: 当前暂无可用直链流量
```

`/d/` 端点返回 401。**所有文件都取不到**，需要用户手动下载（浏览器点 Download，
或走 123网盘 / OneDrive 镜像）。

需要的文件：

| 文件 | 大小 | 用途 |
|---|---|---|
| `184-…/2026华为鸿蒙最新安装谷歌原生框架（不弹窗）.zip` | 119.3 MB | ★ 含备份包 + 全部 GMS APK |
| `36-…/备份降级工具/` | 15.7 MB | 若卡在"网络连接异常"时需要 |
| `36-…/搞机工具箱V9.10.zip` | 6.9 MB | 教程推荐的 adb 图形工具（我们直接用 adb 即可，非必需） |

---

## 七、本轮新增工具

| 工具 | 用途 |
|---|---|
| `work/gateprobe/` | LZGateProbe 探针源码（打印类加载器 + 全部方法 + lzplay 判定） |
| `work/tools/collect_gate.py` | 批量安装/运行/收集门禁报告 |
| `work/tools/device_probe.py` | 三设备指纹 + 包 + MDM 权限对照 |
| `work/tools/alist_find_get.cjs` / `alist_dl.cjs` / `walk_alist.cjs` | alist 探索与下载 |
| `work/tools/run_e1.py` / `run_e2.py` | CER 授权实验（E1 已成功，E2 已验证权限持久） |
| `work/tools/check_cer_locks.py` / `dump_huawei_cer.py` / `verify_huawei_cert.py` | CER 三把锁离线检测 |
| `work/tools/dexflow.py` | 自写 DEX 反汇编器（**有 bug，方法名解析串行**，勿依赖） |

**已知工具坑**：
- `jadx` 在本机必然卡死（>18 分钟无输出）—— 用 `work/research-backup/dexinspect.py`
- 系统 `python` 是 WindowsApps 占位符，必须用
  `C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\python.exe`
- 解析 CER 的 `Permissions:` 必须对每项 `strip()`（CRLF 会让最后一项带上 `\r`）
