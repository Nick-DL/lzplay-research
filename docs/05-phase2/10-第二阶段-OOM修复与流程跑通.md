# 第二阶段突破：OOM 已修复，原版流程跑通

> **`FileUtil.b()` 的流式改造已应用并实测成功。**
> App 从"启动即崩"变成"正常运行并显示安装界面"。

---

## 一、修复内容

### 问题

`com/x/plus/pro/f/c.smali` 的 `b(String)`（`FileUtil.b`，算文件 MD5）：

```java
MessageDigest md5 = MessageDigest.getInstance("MD5");
byte[] all = FileUtil.a(new File(path));   // ← 把整个文件读进无上限的 ByteArrayOutputStream
md5.update(all);
```

被哈希的是 `PackageUtil.f(ctx, pkgName)` 返回的**已安装 APK 路径**，第一个是
`com.google.android.gms`（本机 86.5 MB）⇒ 缓冲区膨胀到 256 MB ⇒ OOM。

`UpdateImp.e(Context)` 在构造更新请求体时对清单里每个包都调用它，
所以**每次启动必崩**。

### 修法

新增一个**流式**私有方法，`b()` 改为调用它：

```smali
.method private static a(Ljava/io/File;Ljava/security/MessageDigest;)V
    const/16 v0, 0x2000                 # 8 KB 缓冲，恒定内存
    new-array v0, v0, [B
    new-instance v1, Ljava/io/FileInputStream;
    ...
    new-instance v2, Ljava/io/BufferedInputStream;
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/BufferedInputStream;->read([B)I
    move-result v3
    if-lez v3, :cond_0
    const/4 p0, 0x0
    invoke-virtual {p1, v0, p0, v3}, Ljava/security/MessageDigest;->update([BII)V
    goto :goto_0
    ...
```

`b()` 里的两行改为：

```diff
-    invoke-static {v2}, Lcom/x/plus/pro/f/c;->a(Ljava/io/File;)[B
-    move-result-object p0
-    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B
+    # 流式喂入，不再整包读入内存
+    invoke-static {v2, v1}, Lcom/x/plus/pro/f/c;->a(Ljava/io/File;Ljava/security/MessageDigest;)V
+    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
```

**这一个改动同时修好了 5 个调用点**：
`ApkInfo:145`、`c/a:67`、`e/b$4:60`、`update/c:717`、`update/c:946`。

### 工具

| 工具 | 作用 |
|---|---|
| `work/tools/patch_travel_fileutil.py` | 应用补丁（带 `--check` 干跑 + 自动备份） |
| `work/tools/rebuild_travel_apk.py` | 从 smali 树重建 APK（含 zipalign + apksigner） |

**产物**：`旅游必备-nostream-oom.apk`（140,950,628 字节）

---

## 二、实测结果

**环境**：Mate50 Pro `DCO-AL00` / Android 12 / 时钟 `2019-10-01 08:45`（CER 窗口内）

```
卸载旧版 → 安装修复版 → pm clear → 启动

t+ 5s  main=True  com.qiyecomm/com.x.plus.pro.MainActivity
t+10s  main=True  com.qiyecomm/com.x.plus.pro.MainActivity
...
t+70s  main=True  com.qiyecomm/com.x.plus.pro.MainActivity

崩溃检查: crash 缓冲区含 qiyecomm: 【否】✅
```

**界面**（截图 `work/qiye_fixed.png`）：

```
        【旅行必备】

        [ 盾牌 + 感叹号 ]

    检测到GMS环境需要更新

      请先激活设备管理器

    [      立即更新      ]
```

**从"启动即崩"到"稳定运行并显示安装界面"。**

---

## 三、重建流程（可复现）

```powershell
$py = "C:\Users\NickDL\.dsh\dsh-runtimes\dsh-primary-runtime\dependencies\python\python.exe"

# 1) 应用流式 MD5 补丁（幂等，带备份）
& $py work\tools\patch_travel_fileutil.py --check     # 先看
& $py work\tools\patch_travel_fileutil.py --run       # 再改

# 2) 重建 APK（smali -> dex -> 重打包 -> zipalign -> 签名）
& $py work\tools\rebuild_travel_apk.py

# 3) 安装测试
adb -s <serial> install -r "旅游必备-nostream-oom.apk"
adb -s <serial> shell pm clear com.qiyecomm
adb -s <serial> shell am start -n com.qiyecomm/com.x.plus.pro.SplashActivity
```

### 重建要点

- **只替换 `classes.dex`**，其余 504 个条目（含 120 MB 的 assets）从原 APK 逐字节复制
  —— 这样才避开了 aapt2 处理超大 assets 的问题
- **`META-INF/HUAWEI.CER` 必须保留**（它不是 JAR 签名的一部分，是华为发布者描述符）
- 只丢弃 3 个 JAR 签名文件（`MANIFEST.MF` / `.SF` / `.RSA`），apksigner 会重新生成
- 签名用 `work/siblings.jks`（口令 `lzplay123`）

---

## 四、仍未验证的关键一环

**"从零安装"没有被真正测过。**

原因：Mate50 上那 5 个 GMS 包**一直处于已安装状态**（整个项目期间都是），
所以驱动脚本每次都报 "all installed" —— 这是**假阳性**，不能作为安装成功的证据。

### 需要一个干净的验证环境

| 选项 | 可行性 |
|---|---|
| **Mate50 卸载全部 GMS 再测** | ⚠️ 有风险（会丢掉当前可用的 GMS），但最真实 |
| 平板 | ❌ 固件未定义 `MDM_INSTALL_SYS_APP` |
| 其他设备 | 需用户提供 |

**建议**：先在 Mate50 上只卸载 **`com.google.android.gms`** 一个包
（其余保留），然后跑驱动脚本，看它能否被重新装上。
这样风险最小，且足以验证"下载/解包 → 安装"这条链是否通。

---

## 五、这条修复对整体方案的意义

```
原版 App 启动即 OOM
      ↓ 流式 MD5 修复
App 正常运行、显示安装界面、可走完流程
      ↓ 但重签导致 CER 失效
拿不到 MDM_INSTALL_SYS_APP（改包版 0/7，第一阶段实测）
      ↓ 因此
只能作为【用户态安装向导】—— 而这已经足够，因为
GMS 作为普通用户应用也能工作（第一阶段已证实）
```

**⇒ 第二阶段的第一个问题（取代备份还原 + 手工收集 APK）现在有了完整答案：**

1. **用户不需要收集 APK** —— 助手包自带全部 5 个原版包（5/5 MD5 匹配）
2. **不需要 VPN 代理** —— 安装流程从 assets 本地解包，不联网
3. **需要一个修好 OOM 的改包版** —— 本文档给出了补丁与重建流程
4. 用户只需：安装助手包 → 激活设备管理器 → 点【立即更新】
