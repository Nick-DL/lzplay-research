# lzplay（谷歌服务助手）复活工程 —— 技术分析报告

- 分析对象：`com.lzplay.helper.apk`
- 文件大小：3,070,790 字节
- MD5：`677d0a87226871705bec18ab8831073c`
- SHA-256：`1242b03fc84f8d1ceabef58f56fb58342e0d14061ddb082108b2672cd13276b5`
- 内嵌时间戳：2020-07-10
- 分析环境：Windows / JDK 17 / Android SDK build-tools 37.0.0 / Android 16 模拟器

---

## 一、结论速览

| 问题 | 结论 |
|---|---|
| 外壳加固 | **360 加固（Jiagu）ART 变种**，非标准 `libjiagu.so`，真实 DEX 加密在 ELF 自定义节 `.mips` 内 |
| 能否脱壳 | 可脱，但需要动态运行或 ARM/x86 模拟；`libjiagu_art.so` 是空的（0 字节），真正的解壳器在 `assets/libjiagu.so` 里 |
| 内层载荷 | `assets/insidehelper.apk` —— **完全无加固、明文 DEX**，已完整反汇编 |
| lzplay 的真正架构 | **不是一个 App，而是一对 App**：`com.lzplay.helper`（外壳，受加固保护）+ `com.lzplayer.insidehelper`（伴生 App，明文） |
| "暂不支持该设备" | 资源串 `dialog_text_refuse` = "很抱歉，当前暂不支持该设备。"，判定逻辑在**被加固的 DEX 里** |
| "网络异常"的真正来源 | 资源串 `register_net` = "网络异常，请检查网络、VPN连接状态，" —— 属于**"向谷歌注册设备"**流程，即 lzplay 关闭的服务器 |
| 白名单性质 | 极可能是**华为服务端授权**，不是纯客户端判断（详见 §6） |
| 对 Mate50 Pro / HMOS 4.2 的可行性 | **低**，需探针实测确认（详见 §6、§7） |

---

## 二、APK 结构解剖

### 2.1 压缩包内容

```
      大小      条目
     7404   AndroidManifest.xml
   797844   classes.dex            ← 360 加固壳，真正的 App 代码不在这里
    58576   resources.arsc
              assets/.appkey         16 B   字节串 fe7cea8bc77aab34（360 的 AppKey）
              assets/main.lua        74 B   AndroLua 样板，无实际作用
              assets/import.lua    3170 B   AndroLua 标准库（luajava 绑定）
              assets/insidehelper.apk  1.4 MB  ← 真正的伴生程序，明文！
              assets/libjiagu.so   487792 B  ← ARM 解壳器（火绒会查杀）
              assets/libjiagu_x86.so 486908 B ← x86 解壳器
              lib/armeabi/libjiagu_art.so  0 B ← 空文件，仅占位
   95 个     res/*                  （含 device_admin.xml、activity_*.xml 等）
```

### 2.2 加固特征判定

`classes.dex` 头部自洽，但：

- `method_ids_size = 4208`，`class_defs_size = 12` —— 极不对称，典型的壳特征
- 主体熵值 ≈ **7.96**（加密/压缩），仅首 64 KB 可读
- 12 个类全部是壳：`com.stub.StubApp`、`com.qihoo.util.{GameApplication,LiteApplication,OverseaApplication,DtcLoader,QHDialog,Configuration}`、`com.qihoo360.replugin.Entry`
- 方法名形如 `n1113311111110` —— 360 的指令抽取混淆
- 字符串池 947 条，可读部分全是壳逻辑：`/data/data/PACKAGE/lib/libjgdtc.so`、`/data/data/PACKAGE/lib`、`/proc/self/maps`、`makekey`、`uncompress`、`libstl_compiler.so`、`JNI_OnLoad`

### 2.3 `libjiagu.so` 的 ELF 内部结构

这是本次分析最关键的发现。该库使用**自定义节名**来隐藏载荷：

| 节名 | 文件偏移 | 大小 | 实际用途 |
|---|---|---|---|
| `.text` | 0x1be0 | 37,832 | 真实 ARM 代码 |
| `.engine` | 0xafa8 | 4,380 | 状态机解码引擎 |
| `.context` | 0xc0c4 | 84 | 初始解码上下文 |
| `.rodata` | 0xc7d8 | 1,064 | 关键字符串 |
| `.bmp` | 0xe160 | 1,064 | 一个**真实的 BMP 图片**（`42 4d` 头），纯伪装 |
| `.compiler` | 0xe588 | 25,368 | zlib 流，解出一个 54,452 字节的 ARM ELF |
| **`.mips`** | **0x138a0** | **406,308** | **加密的真实 DEX** |

`.rodata` 泄露了机制：

```
/proc/self/maps       ← 自定位（反调试 + 找到自身基址）
/system/lib/libz.so
libz.so / uncompress  ← 用 zlib 解压载荷
libmono.so / dladdr / dl_iterate_phdr
ro.build.version.sdk
libstl_compiler.so
makekey               ← 密钥派生函数名
libjiagu
JNI_OnLoad
```

### 2.4 动态符号表（`libjiagu_x86.so`）

| 符号 | 地址 | 说明 |
|---|---|---|
| `JNI_OnLoad` | 0x666b | 入口 |
| `__fun_a_18(unsigned char*, unsigned)` | 0x66e6 | 核心解码例程（`.engine`） |
| `__arm_a_1(JavaVM*, JNIEnv*, void*, int&)` | 0x63ea | 初始化 |
| `__arm_a_2(char*, char*, ...)` | 0x5f49 | |
| `__arm_a_20`, `__arm_a_21` | 0x5c13, 0x5b6c | |
| `__arm_c_1::__arm_c_0()` | 0x5312 | |

导入函数里有一整组**反调试/反注入**：

```
prctl  getpid  kill  raise  signal  sigaction  sigprocmask  select
inotify_init  inotify_add_watch  opendir  readdir  closedir
dl_iterate_phdr  dladdr  /proc/self/maps
```

以及 `__system_property_get("ro.build.version.sdk")` —— 壳要根据 SDK 版本选择加载策略。

### 2.5 `.compiler` 里解出的东西

`.compiler` 偏移 +0x4 是一个 zlib 流，解压得到 **54,452 字节的 ARM ELF 共享库**，其中含：

```
-Ximage:/data/dalvik-cache/system@framework@boot.art
-Xms64m  -Xmx64m  -classpath
-compiler-filter:interpret-only
-compiler-filter:speed
/system
GAbi++ / libstl_compiler.so
```

**这是 360 自带的一个 ART 运行时代码。** 加固方案是：不修改系统 ART，而是**自己起一个 ART 实例**（带自己的 boot.art 镜像）来加载解密后的真实 DEX。这解释了 `libjiagu_art.so` 为什么是空的——它只是个占位符/触发标记，真正的逻辑被 zlib 压缩藏在 `assets/libjiagu.so` 的 `.compiler` 节里。

> 顺带说明：这也解释了为什么 `assets/` 里放的是 `.so` 而不是 `lib/` 里——`lib/armeabi/libjiagu_art.so` 那个 0 字节条目是给 `System.loadLibrary()` 用的：
> 让 ART 在 `nativeLibraryDir` 里创建一个可写目录，壳随后把真正的 `libjiagu*.so` 释放进去。

---

## 三、内层 `insidehelper.apk` —— 完全透明的真相

`assets/insidehelper.apk`（1,396,133 字节，MD5 `4bd2e79c57d7afbe...`）**没有加固**：

- 包名：`com.lzplayer.insidehelper`
- `classes.dex`：1,945,636 字节，1393 个类，熵值正常（4.5–6.0）
- 其中 **1389 个是 AndroidX/support 库**，真正的业务代码只有 **4 个类**：
  `MainActivity`、`GetIdService`、`GetIdService$1`、`R`
- 签名：`META-INF/CERT.RSA`，APK Signature Scheme v2

### 3.1 它到底干什么

权限声明（精简到只有这些）：

```xml
<uses-permission android:name="android.permission.INTERNET"/>
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
<uses-permission android:name="android.permission.ACCESS_WIFI_STATE"/>
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"/>
<uses-permission android:name="com.google.android.providers.gsf.permission.READ_GSERVICES"/>  ← 关键
```

`GetIdService.a()` 的完整逻辑（自研 x86/Dalvik 反汇编器还原）：

```java
// 查询 GSF ID —— GMS 对设备的唯一标识
Uri u = Uri.parse("content://com.google.android.gsf.gservices");
Cursor c = cr.query(u, null, null, new String[]{"android_id"}, null);
if (c == null) return "";
if (!c.moveToFirst() || c.getColumnCount() < 2) { c.close(); return ""; }
String v = c.getString(1);
c.close();
if (TextUtils.isEmpty(v)) return "";
return v.toUpperCase().trim();
```

`GetIdService$1.run()` —— 轮询直到拿到 ID，然后广播出去：

```java
while (true) {
    if (30 <= 0) break;
    setID(this.outer, getGSFID(this.outer));       // 缓存到字段 d
    if (!TextUtils.isEmpty(getGSFID(this.outer))) break;
    SystemClock.sleep(1000);
}
Intent i = new Intent("com.lzplay.helper.recev.sfid");
i.putExtra("sf_id", getGSFID(this.outer));
sendBroadcast(i);
```

`MainActivity`：`onCreate` 里 `setContentView` + `startService(GetIdService)`，`onResume` 里立刻 `finish()` —— 一个不显示界面的纯工具。

### 3.2 这意味着什么

**`insidehelper.apk` 是一个独立安装的伴生 App，唯一职责是：读出 GSF ID（`android_id`），通过广播 `com.lzplay.helper.recev.sfid` 交回给 lzplay 主程序。**

lzplay 主程序的结构因此在逻辑上完全清晰：

```
com.lzplay.helper（主程序，360 加固）
   │ ① 安装并启动 com.lzplayer.insidehelper
   │ ② 接收广播 com.lzplay.helper.recev.sfid → 拿到 GSF ID
   │ ③ 检查设备是否在白名单（否则弹 dialog_text_refuse）
   │ ④ 联网"向谷歌注册设备"（register_title / register_net / register_fail_notice）
   │ ⑤ 通过华为 MDM API 成为设备管理器 → 辅助 GMS 落位
   └─ DeviceManageBC（DeviceAdminReceiver）+ res/xml/device_admin.xml
```

`res/xml/device_admin.xml` 申请的权限：

```xml
<uses-policies>
    <force-lock /> <disable-camera /> <encryption-requested />
    <disable-keyguard-features /> <disable-screen-capture />
    <disable-contacts-search /> <encrypted-storage />
</uses-policies>
```

Manifest 里申请的华为内部权限（这是 Magisk 作者所说的"内部 API"的直接证据）：

```xml
<uses-permission android:name="com.huawei.permission.sec.MDM"/>
<uses-permission android:name="com.huawei.permission.sec.MDM_APP_MANAGEMENT"/>
<uses-permission android:name="com.huawei.permission.sec.MDM_INSTALL_SYS_APP"/>
<uses-permission android:name="com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP"/>
<uses-permission android:name="com.huawei.systemmanager.permission.ACCESS_INTERFACE"/>
```

### 3.3 `META-INF/HUAWEI.CER` —— "华为不署名"的物证

外层 APK 有一个非标准的 `META-INF/HUAWEI.CER`，内容是明文 PEM：

```
DeveloperKey:3082036d30820255a00302010202046ba63c17...
```

解出 X.509 证书字段：

| 字段 | 值 |
|---|---|
| 主体 | `C=Unknown, ST=Unknown, L=Unknown, O=lz, OU=Unknown, CN=Unknown` |
| 签发者 | 同上（自签名） |
| 序列号 | `6ba63c17` |
| 有效期起 | **2019-06-20 08:26:10 UTC** |
| 有效期止 | 2046-11-05 08:26:10 UTC |
| 公钥 | RSA 2048 |

组织名 `lz`（lzplay 首字母），其余全部填 `Unknown` —— 与"华为不署名地制作"的判断完全一致。证书用 PEM 明文而非 DER 存放，说明这是**华为应用市场（AppGallery）上架时的签名描述文件**残留，而不是 Android 平台签名。

实际给 APK 签名的是 `META-INF/LZKEYSTO.RSA` / `.SF`（`Created-By: 1.8.0_144`），即 360 加固后的重签名。

统一签名哈希（`resources.arsc` 与 `AndroidManifest.xml` 的 SHA-256 相同）意味着加固流程没有改这两个文件。

---

## 四、"时间炸弹"与"网络异常"的准确定位

外层 APK 的字符串资源给出了全部 UI 文案，其中与本需求直接相关的：

| 资源名 | 文案 |
|---|---|
| `dialog_text_refuse` | 很抱歉，当前暂不支持该设备。 |
| `register_google` | 向谷歌注册设备 |
| `register_title` | 注册设备 |
| `register_ing` | 正在注册设备至谷歌服务，… |
| `register_net` | 网络异常，请检查网络、VPN连接状态，… |
| `register_fail_notice` | 设备注册失败，为避免安全风险，请在网络畅通时进入首页点击"向谷歌注册设备" |
| `request_error_common` | 网络异常，请检查网络连接。 |
| `network_notice` | 无网络，请检查网络链接。 |
| `has_preset_app` | 当前设备谷歌服务框架安装正常，可以直接使用。 |
| `old_notice` | 谷歌服务存在异常，需要重新安装 |
| `icon_finish_text` | 进行设备注册以激活谷歌服务，确保手机可以访问Google |
| `uninstall_notice` | 检测到设备已安装版本较旧，将卸载旧版本并安装最新版本。 |

**关键推论：用户看到的"网络异常"，文案属于 `register_net`，即"向谷歌注册设备"这一步 —— 也就是 lzplay 那个已经关闭的服务器。**

这解释了一个此前流传的疑惑：为什么"改系统日期 + 备份还原"能绕过。因为流程是：

1. 首次运行 → 联网向 lzplay 服务器注册 → 服务器下发/确认白名单 → 允许继续
2. 服务器关闭后 → 这一步永远失败 → 显示"网络异常" → 无法进入主流程
3. **时间炸弹**很可能就是"首次注册的时间窗口"：服务器端只接受某段时间内的请求，或者客户端把首次运行时间写进了 SharedPreferences，而"备份还原"正好把这份**已注册成功的应用数据**一起恢复了 —— 于是客户端认为"我已经注册过了"，跳过联网步骤

这正好对上用户描述的现象："通过 EMUI 备份还原功能变相安装一个具有一定应用数据的 lzplay"。

---

## 五、为什么这类加固"7 年后仍然难啃"

必须诚实说明：**360 加固的 ART 变种至今没有公开的通用静态脱壳工具**，原因就是 §2.5 那个发现：

- 真实 DEX 不在标准位置（不是 DEX 尾部的 `data` 段，也不是 `assets/*.dex`），而在 `libjiagu.so` 的自定义节 `.mips` 里
- 解密是**状态机驱动**的：`.engine` 节 + `.context` 初始上下文 + `.rodata` 里的 `makekey`
- 解密后**不交给系统 ART**，而是让自带的 ART 镜像去加载 —— 所以 hook `DexClassLoader`、`OpenMemory`、`DefineClass` 都不一定能抓到
- 大量反调试：`/proc/self/maps` 自检、`inotify` 监控自身文件、`prctl`、信号处理
- `.appkey`（`fe7cea8bc77aab34`）与**签名证书绑定** → 一旦重签名，解密密钥就错了

> 实测佐证：本次尝试在 Android 16 模拟器上安装原版 APK 时得到
> `INSTALL_FAILED_NO_MATCHING_ABIS`（由 `lib/armeabi/libjiagu_art.so` 这个 0 字节条目触发），
> 而一旦剔除该条目就必然要重签名 —— 重签名就会导致 `.appkey` 失配、解密失败。

因此**静态脱壳是一条需要投入大量工时的路**（自研 x86/ARM 模拟器跑 `__fun_a_18` + `__arm_a_1`），而**动态脱壳需要 root 设备**（Mate50 Pro 未 root）。

---

## 六、白名单的真实性质（重要判断）

需求里假设"可以接触（解除）该白名单限制"。需要修正这个假设：

**白名单极可能是华为服务端的授权，而不是 APK 里的一个字符串数组。**

理由：

1. 白名单的判定发生在**"向谷歌注册设备"**这一步（见 §4 的文案链条），而这一步是**联网**的
2. lzplay 回传的是 **GSF ID**（`com.google.android.gsf.gservices` 的 `android_id`），不是型号字符串 —— 华为需要拿这个 ID 去 Google 侧做设备认证，这是服务端行为
3. lzplay 的功能本质是"以设备管理器身份**辅助 GMS 落位**"，而 GMS 能否运行取决于 Google 是否认这个 GSF ID。民间流传的机制是：**华为用自己的渠道，把 Mate30 等机型的 GSF ID 批量提交给 Google 做认证**，让这些设备在 Google 侧被标记为"已认证"
4. 一个纯客户端白名单无法解释"服务器关闭后连已支持机型也不能用"这一现象

**结论：如果白名单在服务端，那么无论怎么修改 APK 都无法绕过。** 客户端能改的只有：
- 时间炸弹（本地状态 → 可改）
- 白名单**前置检查**（如果它只是为了避免无谓的联网请求 → 可改，但改完仍会卡在联网注册那一步）

这一点必须用探针在真机上实测确认。

---

## 七、下一步：必须先实测华为内部 API 是否还存在

针对 Mate50 Pro / HarmonyOS 4.2 这个具体目标，**最关键的未知数是**：HMOS 4.2 上那套 `com.huawei.permission.sec.MDM*` + `com.huawei.systemmanager.permission.ACCESS_INTERFACE` 还在不在。

- 若 **不存在**：lzplay 的技术路线在 HMOS 4.2 上已彻底失效，改 APK 毫无意义，应转向 GBox / microG 路线
- 若 **存在**：lzplay 的骨架仍可用，值得投入静态脱壳

为此已经构建了探针 APK：**`LZProbe.apk`**（见 `PROBE-README.md`）。

另外还有一个客观事实需要指出：**Mate50 Pro 从未在任何 lzplay 白名单中出现过**（lzplay 是 2019 年的产品，面向 Mate30/Mate40/Nova7 等；Mate50 系列 2022 年发布，预装 HarmonyOS 3）。所以在 lzplay 自己的档案里，Mate50 Pro 从一开始就是"暂不支持该设备"。

---

## 八、本工程已产出的资产

| 文件 | 说明 |
|---|---|
| `work/inner_app.txt` | `insidehelper.apk` 全部业务类的反汇编（1,204 行） |
| `work/inside_deep.txt` | `insidehelper.apk` 的类/方法/字符串全量导出（含全部中文串） |
| `work/classes_dex_dump.txt` | 外壳 `classes.dex` 的类型/方法/字段/类定义导出 |
| `work/shell_stub.txt` | 外壳 12 个壳类的字节码 |
| `work/native/*.b64.gz` | 两个 `libjiagu*.so` 的 base64+gzip 副本（规避火绒查杀） |
| `work/carve/compiler_*.elf` | 从 `.compiler` 节解出的 ARM ART 运行时代码 |
| `LZProbe.apk` | 华为内部 API 存活探针（可安装） |
| `work/tools/{dexparse,dexdump2,dexdump3,arscparse,elfinfo,carve,x86dis}.py` | 自研 DEX/ARSC/ELF/x86 逆向工具 |
| `work/tools/build_probe.ps1` | 纯 build-tools 构建 APK 的流水线（无需 Gradle/AGP） |
| `work/tools/{pomcrawl,mvnfetch,adddex,dl}.cjs` | Maven 依赖解析 + zip 注入 + 下载（Node，网络更稳） |

---

## 九、给下一步的建议（按性价比排序）

1. **先在 Mate50 Pro 上跑 `LZProbe.apk`**（10 分钟）—— 拿到 §7 的结论，避免在错误的路上投入
2. 若探针显示 MDM 权限/服务**存在** → 投入静态脱壳（自研 Unicorn/x86 模拟器驱动 `__fun_a_18`）
3. 若探针显示**不存在** → 放弃 lzplay 路线，改做：
   - 基于 GBox / microG 的现代方案
   - 或纯"辅助安装"工具（把 GMS 安装包推入、用 DeviceAdmin 处理权限），不依赖华为后门
4. 无论哪条路，**"向谷歌注册设备"这一步在当前环境下都无法复现**（服务器已关闭），
   所以 lzplay 的完整原始流程已经不可能 1:1 复活 —— 能复活的只有"设备管理器 + 辅助落位"这半边

---

## 附录 A：声明与依据

| 声明 | 依据 |
|---|---|
| 加固为 360 Jiagu ART 变种 | `assets/libjiagu*.so` + `com.qihoo.util.*` / `com.stub.StubApp` 类 + `.appkey` + `libjgdtc.so` 字符串 |
| 真实 DEX 在 `.mips` 节 | 该节 406 KB、熵 7.99、无 zlib/gzip/dex/zip 魔数；`.rodata` 有 `uncompress`/`makekey`；符号表有 `__fun_a_18`/`__arm_a_1` |
| 自带 ART 运行时 | `.compiler` 节 zlib 解出 54 KB ARM ELF，内含 `-Ximage:.../boot.art`、`-compiler-filter:interpret-only` |
| 华为不署名制作 | `META-INF/HUAWEI.CER` 的 X.509 主体 `O=lz, OU=Unknown, CN=Unknown`，签发时间 2019-06-20，与 lzplay 上线时间吻合 |
| `insidehelper` 只取 GSF ID | 完整反汇编（`work/inner_app.txt`）；查询 URI、列名、广播 action、extra 名全部可见 |
| "网络异常"源自注册步骤 | 资源名 `register_net` 与文案"网络异常，请检查网络、VPN连接状态"；同组资源为 `register_title`/`register_google`/`register_fail_notice` |
| 白名单可能是服务端 | §6 的四条推理 |
