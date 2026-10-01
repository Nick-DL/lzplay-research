# 第二阶段核心结论：为什么必须改包，以及"卡 88%"的真正原因

> **本文档修正了一个从第一阶段延续下来的误解。**
>
> 我们一直以为旅游必备"卡在 88%"是因为**下载失败**（CDN 已死）。
> 实测证明：**根因是内存溢出（OOM），与网络无关。**

---

## 一、崩溃现场

在 Mate50 Pro（Android 12 / SDK 31 / 无 root）上安装**原装未改动**的旅游必备，
点击启动后立即崩溃：

```
FATAL EXCEPTION: main
Process: com.qiyecomm
java.lang.OutOfMemoryError: Failed to allocate a 268435472 byte allocation
        with 25165824 free bytes and 254MB until OOM
    at java.util.Arrays.copyOf(Arrays.java:3161)
    at java.io.ByteArrayOutputStream.grow(ByteArrayOutputStream.java:118)
    at java.io.ByteArrayOutputStream.write(ByteArrayOutputStream.java:153)
    at com.x.plus.pro.f.c.a(FileUtil.java:34)
    at com.x.plus.pro.f.c.b(FileUtil.java:178)
    at com.x.plus.pro.update.c.e(UpdateImp.java:146)
```

系统弹窗：**"旅行必备屡次停止运行"**。

**`268435472` = 256 MB** —— 它想要一次性分配 256 MB 连续内存。

---

## 二、根因：算一次 MD5 就要把整个 APK 读进内存

`com/x/plus/pro/f/c.smali` 的 `b(String)`（即 `FileUtil.b`，行 680 起）：

```java
// FileUtil.java:172-178
public static String b(String path) {
    File f = new File(path);
    if (!f.exists() || !f.isFile()) return null;
    MessageDigest md5 = MessageDigest.getInstance("MD5");
    byte[] all = FileUtil.a(new File(path));   // ★ 把【整个文件】读进内存
    md5.update(all);
    ...
}
```

而 `FileUtil.a(File)`（smali 行 485 起）与 `a(InputStream)`（行 591 起）都是
**经典的"读到 EOF 为止"实现**：

```java
byte[] buf = new byte[0x1000];
ByteArrayOutputStream bos = new ByteArrayOutputStream();
while ((n = in.read(buf)) != -1) bos.write(buf, 0, n);   // 无上限地堆积
return bos.toByteArray();
```

### 为什么在 2019 年没事，现在必崩

被算 MD5 的是 `com.google.android.gms_29.apk` —— **90,657,638 字节（86.5 MB）**。

```
读入 ByteArrayOutputStream 的过程中会反复扩容：
  86 MB → 扩容到 128 MB → 再扩到 256 MB
最终需要一块 256 MB 的连续数组
```

Mate50 上该进程的堆上限约为 512 MB，但**可用连续空间只剩 254 MB**，
所以在申请 256 MB 时失败。

**这是原版 App 的一个内存缺陷，不是网络问题。**

---

## 三、这条路径在哪里被触发

```
com.x.plus.pro.a.a$a.handleMessage(DeviceHelper.java:91)
  └─ com.x.plus.pro.update.e.a(UpdateInstance.java:1100)
       └─ com.x.plus.pro.update.c.a(UpdateImp.java:6126)
            └─ com.x.plus.pro.update.c.a(UpdateImp.java:115)
                 └─ com.x.plus.pro.update.c.e(UpdateImp.java:146)
                      └─ FileUtil.b(path)      ← 算已存在 APK 的 MD5
                           └─ FileUtil.a(File)
                                └─ OOM
```

即：**Splash 阶段的更新检查兜底路径**。它去检查某个文件（很可能是缓存目录里
已存在的 `gms_29.apk`）的 MD5，于是整包入内存。

---

## 四、关键推论：**预置缓存这条替代路线也是死的**

我们（和我派出的两个子 agent）都曾把"预置 APK 到缓存目录"当作绕开下载的方案。
子 agent 的结论是"可行，因为库只看文件是否存在"。

**但他们都漏了一个环节。** App 侧的"文件已就绪"预检是这样写的
（`com/x/plus/pro/c/a.smali` 行 36-93）：

```java
// Downloader.a(path, expectedMd5)   —— Downloader.java:57-61
if (TextUtils.isEmpty(path)) return false;
File f = new File(path);
if (!f.exists() || !f.isFile()) return false;
String actual = FileUtil.b(path);        // ★ 又是它！
if (TextUtils.isEmpty(actual)) return false;
return actual.equals(expectedMd5);
```

**预检本身就要算 MD5 → 就要把 86 MB 读进内存 → 照样 OOM。**

所以：

> **只要 App 尝试校验 gms_29.apk 的 MD5，无论文件从哪来（assets 解包 / 预置缓存 /
> 下载完成），都会崩溃。预置缓存不能解决问题。**

替代方案还有两个，但都有硬障碍：

| 方案 | 障碍 |
|---|---|
| 预置到内部缓存 `/data/data/com.qiyecomm/cache/file/` | **需要 root**（实测 `Permission denied`；设备无 root，`run-as` 也因非 debuggable 不可用） |
| 给 App 加 `android:largeHeap`（manifest 里已有 `largeHeap="true"` 也没用） | **必须重打包 → 破坏 CER 授权**（第一阶段已实测 0/7） |

---

## 五、因此第一阶段的改包是**必需**的，而且没有替代

```
原版 App 在 Android 12 上无法完成安装流程（OOM）
        ↓ 要修好，只能改 FileUtil.b 的读取方式
        ↓ 改代码 → 必须重签 → DeveloperKey 不匹配
        ↓ CER 授权全部失效（改包版 0/7，已实测）
```

**但这不致命** —— 因为第一阶段的结论是：**GMS 作为普通用户应用也能工作**
（Mate50 上的 `SYSTEM`/`PRIVILEGED` 标志是 Play 商店自我升级时由华为 PMS 给的，
不是 lzplay 灌进去的）。

⇒ **改包版旅游必备 = 一个"用户态的 GMS 安装向导"**，这已经够用了。

---

## 六、附带收获：**用户不需要自己收集 Google 的 APK**

这是原需求里明确要消除的一步。而它**本来就已经被解决了**：

**原版 APK 自己就内置了整套 GMS 包。**

```
旅游必备 travel essentials.apk  (134 MB —— 大就大在这里)
  assets/com.google.android.gms_29.apk                  90,657,638 B
  assets/com.android.vending_29.apk                     21,168,579 B
  assets/com.google.android.gsf_29.apk                   3,923,176 B
  assets/com.google.android.syncadapters.contacts_29.apk  1,457,061 B
  assets/com.oversea.gmapjar_29.apk                         154,359 B
  assets/com.google.android.idhelper.apk                  1,603,995 B
  ...外加整套 _28（SDK 28 设备用），共 13 个 APK
```

实测与解密出的清单 `work/xpp/com.qiyecomm__Xpp_Q.json` **5/5 MD5 完全一致、大小也一致**。

⇒ **任何人只要拿到这个 134 MB 的 APK，就已经拿到了那一套原版 GMS 包。**
⇒ **"让用户收集几个 APK"这件事可以直接取消。**

（我们自己的 `work/gms29/` 与它逐字节相同，就是这个来源。）

---

## 七、安装流程全貌（供后续参考）

`com/x/plus/pro/e/b`（`InitializeManager`），状态字段 `f`：

| f | 阶段 | 行为 |
|---|---|---|
| 0 | 准备 | 复位；`n()` 调 `DevicePackageManager.setSysAppList` 登记系统应用；逐条设路径；`o()` 按 `round(size/总字节×50)` 算权重 |
| 1 | 下载 | `b()` 发 msg11（基数 0）→ 逐条：已装且版本+签名匹配→跳过；`Downloader.a(path,md5)` 命中→跳过；否则 `ApkInfo.a()` 从 assets 解包 `<pkg>_29.apk` 并校验 MD5；**全失败才建 FileDownloader 任务** |
| 2 | 卸载 | 需卸载旧版本时 |
| 3 | 安装 | `d()` 发 msg12（**基数 50**）→ 逐条安装 + 心跳 msg9 |
| 4 | 收尾 | 删除已下载 APK + msg8 + 跳 `RegisterActivity` |

**"88%" 的来源**：`f==3` 阶段基数 50，升序第一条是 `com.google.android.gms`
（权重 39），心跳 `2i < 39` 最后一次 tick `arg1=38` → **50 + 38 = 88%**。
装完发 msg5 → 89%。**下载阶段只可能 0–50%。**

⇒ 我们看到的"卡 88%"其实是**安装阶段卡住**，不是下载卡住。
现在有了崩溃栈，这个现象完全解释得通了：进程在 88% 处 OOM 死掉。

---

## 八、待办 / 未验证

1. **OOM 的确切触发文件**未直接确认（推测是缓存目录里的 `gms_29.apk`）。
   可通过在崩溃前抓 `/proc/<pid>/maps` 或加 `dumpsys meminfo` 确认。
2. 改包版的 `FileUtil.b` 是否已被改成分块读取 —— 需 diff `旅游必备-patched.apk`。
3. **SafeNet 认证**：用户已在 <https://www.google.com/android/uncertified/> 手动注册
   GSF ID `3885761887743418156`，但通知**仍在**（见 `08-` 文档）。
4. 原版 App 在**更低版本的 Android**（如 SDK 28 / Android 9）上是否就不会 OOM —— 未验证。
   若能，则"装到旧机器再迁移"也是一种路线，但价值存疑。
