# 07 · 第二阶段：FileDownloader 缓存预置（能否让下载任务"直接算已完成"）

> 分析对象：`work/travel_decoded/`（华为「旅游必备」`com.qiyecomm`，`AndroidManifest.xml:2`）
> 涉及的库：`com.liulishuo.filedownloader` **v1.7.6**（`h/f.smali:1235-1256`
> 返回字面量 `"FileDownloader/1.7.6"`）。
> 文中所有结论均给出 smali 文件与行号；凡不能从 smali 直接证实的，一律在第八节列出。
>
> **结论先行：**
> 1. **可行** —— 库判断"任务已完成"的唯一条件是**目标路径上的文件存在**（且 `forceReDownload == false`）；
>    既不需要数据库记录，也不需要 `.temp` 文件，更不联网。
> 2. **但库根本不校验文件内容**（无长度、无 md5、无 ETag）—— 真正卡人的是 **App 自己的 md5 校验**：
>    md5 与清单 `fileMd5` 不符时，App 会把预置的文件**删掉**。
> 3. **本 App 的 GMS 流程连库都不会走到**：预置文件一旦命中，`e/b.h()` 直接跳过下载
>    （`c/a.a(path,md5)` 预检），FileDownloader 任务根本不会被创建。
> 4. ⚠️ **对 `docs/06` 的重要更正**：本 App **确实覆盖了 FileDownloader 的根目录**
>    （`BaseApp.smali:252-256` → `h/f.b(String)`）。Android 10+（`SDK_INT > 28`）时根目录是
>    **内部**缓存目录 `/data/data/com.qiyecomm/cache/file`，**不是** `getExternalCacheDir()`。

---

## 一、FileDownloader 初始化配置

### 1.1 唯一的初始化点：`BaseApp.onCreate`

`com/x/plus/pro/base/BaseApp.smali:209-295`（`onCreate`）中的三步（第 248-289 行）：

```smali
.line 2095
sput-boolean v0, Lcom/liulishuo/filedownloader/h/d;->a:Z          # 249: 关闭库内部日志（v0=0）
.line 2096
invoke-static {p0}, Lcom/x/plus/pro/f/c;->a(Landroid/content/Context;)Ljava/lang/String;  # 252
move-result-object v1
invoke-static {v1}, Lcom/liulishuo/filedownloader/h/f;->b(Ljava/lang/String;)V            # 256 ★ 覆盖"根目录"
.line 2097
invoke-static {p0}, Lcom/liulishuo/filedownloader/s;->a(Landroid/app/Application;)Lcom/liulishuo/filedownloader/services/c$a;  # 259 ★ setup
move-result-object p0
new-instance v1, Lcom/liulishuo/filedownloader/a/c$b;             # 263  URLConnection 工厂
new-instance v2, Lcom/liulishuo/filedownloader/a/c$a;             # 265
invoke-direct {v2}, Lcom/liulishuo/filedownloader/a/c$a;-><init>()V
const/16 v3, 0x3a98                                               # 269  15000
iput-object v4, v2, Lcom/liulishuo/filedownloader/a/c$a;->c:Ljava/lang/Integer;  # 276 connectTimeout=15000
iput-object v3, v2, Lcom/liulishuo/filedownloader/a/c$a;->b:Ljava/lang/Integer;  # 283 readTimeout=15000
invoke-direct {v1, v2}, Lcom/liulishuo/filedownloader/a/c$b;-><init>(Lcom/liulishuo/filedownloader/a/c$a;)V  # 286
iput-object v1, p0, Lcom/liulishuo/filedownloader/services/c$a;->d:Lcom/liulishuo/filedownloader/h/c$b;        # 289
```

| 问题 | 答案 | 证据 |
|---|---|---|
| 用的是 `setup` 还是 `init`？ | `FileDownloader.setupOnApplicationOnCreate(Application)`；库内方法 `s.a(Landroid/app/Application;)` | `s.smali:78-137`（第 87 行写 `h/c.a` 全局 Context，第 90-92 行 new `services/c$a`，第 95-125 行把 `services/c` 塞进 `c/c.a` 并清空 b/c/d/e 缓存） |
| 数据库（`DatabaseOpenHelper`）？ | **没有自定义**。`services/c$a.a`（数据库工厂 `h/c$c`）未被赋值 → `c/c.b()` 走默认 `b/c`（`RemitDatabase`），其内部用 `b/d`（`SqliteDatabaseImpl`）+ `b/e`（`SqliteDatabaseOpenHelper`） | `services/c$a.smali:18-30`（字段 a=数据库工厂）；`c/c.smali:263-355`（默认 new `b/c`）；`b/d.smali:23-46`（默认 new `b/e` 并 `getWritableDatabase`） |
| ID 生成器？ | **没有自定义** → 默认 `services/b`（`DefaultIdGenerator`） | `c/c.smali:160-261`（第 193/232 行 new `services/b`）；`services/b.smali:1-7`（`.source "DefaultIdGenerator.java"`） |
| 自定义 `FileDownloaderConfig`？ | **没有**。App 只设置了 `services/c$a.d` = `a/c$b`（**URL 连接工厂**，`FileDownloadUrlConnection.Creator`），并把 connect/read 超时都设为 **15000 ms** | `BaseApp.smali:263-289`；`a/c$a.smali:1-33`（`.source "FileDownloadUrlConnection.java"`，字段 b/c 为 Integer 超时）；`c/c.smali:40-141`（默认连接工厂也是 `a/c$b`，日志串"customize connection creator"） |
| 最大并发（maxNetworkThreadCount）？ | **未设置** → `services/c$a.b == null` → 取 `h/e` 属性 `e` 字段默认值 **3**（合法区间 1..12，超限自动钳制） | `services/g.smali:42-94`（第 50 行读 `c$a.b`，为 null 时第 86-90 行取 `h/e.e`）；`h/e.smali:566-588`（无属性时 `iput v14=3`）；`h/e.smali:1020-1102`（`a(I)` 把值钳到 1..12） |
| `filedownloader.properties`？ | **assets 里没有**（`work/travel_decoded/assets/` 只有 `Xpp_P.json`、`Xpp_Q.json`、`data.json` 与各 `*_28/_29.apk`）→ 全部走默认值：min-progress-step=65536、min-progress-time=2000ms、http.lenient=false、file.non-pre-allocation=false、broadcast.completed=false | `h/e.smali:69-194`（读 assets）、`h/e.smali:526-529/560-563/588/432/501/659/730/803` |
| 服务进程？ | `process.non-separate` 默认 **false** → 使用 `FileDownloadService$SeparateProcessService`，即 **`:filedownloader` 独立进程**（清单已声明） | `h/e.smali:435-501`（无属性时 `d=false`）；`n.smali:29-49`（false → `p`）；`o.smali:42` / `p.smali:28`（两个服务类）；`AndroidManifest.xml:47-48` |
| 根目录覆盖 | **有**：`h/f.b(String)` 写静态字段 `h/f.c`，`h/f.a()` 优先返回它 | `BaseApp.smali:252-256`；`h/f.smali:1001-1008`；`h/f.smali:153-206` |

App 未设置的可选组件（均为 null → 用默认实现）：输出流工厂 `h/c$e`、连接数适配器 `h/c$a`、前台服务配置 `services/i`（`services/c$a.smali:18-30`，`c/c.smali:1201-1302`、`c/c.smali:1098-1199`）。

---

## 二、缓存文件名生成规则（附 smali 证据与行号）

### 2.1 任务 ID（`_id`）= `md5hex(url + "p" + path).hashCode()`

`services/b.smali:32-88`（`DefaultIdGenerator.generateId`）：

```smali
.method public final b(Ljava/lang/String;Ljava/lang/String;Z)I
    if-eqz p3, :cond_0                      # 41: pathAsDirectory == true ?
    const-string p3, "%sp%s@dir"            # 43
    ... String.format(ENGLISH, url, path)   # 52
    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->d(Ljava/lang/String;)Ljava/lang/String;  # 56  md5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I     # 60  ← Java String.hashCode
    return p0
    :cond_0
    const-string p3, "%sp%s"                # 67
    ... String.format(ENGLISH, url, path)   # 76
    invoke-static {p0}, Lcom/liulishuo/filedownloader/h/f;->d(Ljava/lang/String;)Ljava/lang/String;  # 80  md5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I     # 84
```

* `h/f.d(String)` = **UTF-8 字符串的 MD5，小写十六进制**（`MessageDigest("MD5")` + 逐字节
  `and 0xff`、`<0x10` 补 `"0"`、`Integer.toHexString`）：`h/f.smali:1479-1576`。
* 两处调用点分别传"用户设的 path"：客户端 `c.smali:849-899`（`l()`，第 881-887 行传
  `g`=url / `h`=path / `j`=pathAsDirectory）；服务端 `services/g.smali:317-320`。
* 注意 `%s` 格式化用的是 `Locale.ENGLISH`：`h/f.smali:376-387`。

**本 App 只有一个任务用到这条 URL**（`Xpp_Q.json` 第 2 条），其 ID 取决于是哪条流程（见 2.3、2.4）。

### 2.2 目录/文件名拼接规则

| 规则 | 实现 | 说明 |
|---|---|---|
| `根目录 + File.separator + 名字` | `h/f.smali:1292-1345`（`c(dir,name)`） | 私有拼接函数 |
| 根目录 | `h/f.smali:153-206`：静态字段 `c` 非空则返回它；否则 `getExternalCacheDir()`；再否则 `Environment.getDownloadCacheDirectory()` | 本 App 走第一条（被 `BaseApp` 覆盖） |
| **默认目标路径**（没 `setPath` 时） | `h/f.smali:327-346`：`根目录 + sep + md5(url)`；调用点 `d.smali:1387-1402`（"save Path is null to %s"） | 本 App **两处都显式 `setPath`**，所以这条不生效 |
| **临时文件** | `model/FileDownloadModel.smali:260-285`：`b()` = `h/f.c(a())`；`h/f.smali:1271-1290` = `String.format("%s.temp", 目标路径)` | 即 `<目标文件>.temp`（**不是** md5(url)） |
| md5(url) 的真正用途 | 仅"未指定 path"时的默认落盘名 | 见上 |

### 2.3 GMS 安装流程的落盘名 = `根目录/<pkgName>.apk`

`com/x/plus/pro/e/b.smali:1074-1101`（在 `a()V` 里逐条装配）：

```smali
sget-object v3, Lcom/x/plus/pro/e/b;->h:Ljava/lang/String;   # 1078  静态字段 h = 根目录（见下）
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(...)
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String; # 1082
iget-object v3, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->d:Ljava/lang/String;   # 1087 pkgName
const-string v3, ".apk"                                      # 1092
iput-object v2, v1, Lcom/x/plus/pro/beans/ApkBaseInfo;->f:Ljava/lang/String;   # 1101 downloadPath
```

`e/b` 的静态字段 `h` 就是库的根目录：`e/b.smali:91-101`（`invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->a()Ljava/lang/String;` → `sput-object v0, Lcom/x/plus/pro/e/b;->h`）。
随后建任务时 `setPath` 用的就是这个 `ApkBaseInfo.f`：`e/b.smali:1155-1182`。

### 2.4 自身升级流程的落盘名 = `根目录/updatefile.apk`

`com/x/plus/pro/update/c.smali:1453-1474`：

```smali
invoke-static {}, Lcom/liulishuo/filedownloader/h/f;->a()Ljava/lang/String;   # 1458 根目录
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;                 # 1464
const-string v2, "updatefile.apk"                                            # 1468
...
invoke-interface {v0, v6}, Lcom/liulishuo/filedownloader/a;->b(Ljava/lang/String;)...   # 1484 setPath
```

### 2.5 现算出的具体值（本仓库 Python 复算，公式见 2.1）

URL = `http://cdn.trip-happy.com/d_568628e0d993b1973adc718237da6e93_006.apk`

| 流程 | path | `md5hex("url"+"p"+path)` | `_id = hashCode` |
|---|---|---|---|
| GMS（SDK>28，内部缓存） | `/data/user/0/com.qiyecomm/cache/file/com.google.android.gsf.apk` | `c059c0aac21ab9593f53234990c05d72` | **-1238475459** |
| GMS（SDK≤28，外部缓存） | `/storage/emulated/0/Android/data/com.qiyecomm/cache/com.google.android.gsf.apk` | `f5bfcf6a0b22a93f72e033cc02a6d38c` | **1356392597** |
| 自身升级（SDK>28） | `/data/user/0/com.qiyecomm/cache/file/updatefile.apk` | `6dad43ec7afe207354a4e858f8e6ba49` | **-1534137600** |
| 未 setPath 的默认路径 | `<根目录>/1bcbcf8a8ffe3a556fe9e3576f29f1c0` | `4d848d057aed9b0d2933319fe9e74dac` | -1737032179 |

（"真实路径"与 path 相同：`c.smali:955-973` 的 `s()` 调 `h/f.a(path, pathAsDirectory, filename)`，
而 `h/f.smali:348-374` 在 `pathAsDirectory==false` 时**原样返回 path**。
本 App 只调 `setPath(String)`（`c.smali:628-668`，第 654 行 `j=false`），所以 `pathAsDirectory` 恒为 false。）

---

## 三、缓存目录与文件布局

### 3.1 根目录（关键，与 `docs/06` 的结论不同）

`com/x/plus/pro/f/c.smali:56-152`（`FileUtil.a(Context)`，被 `BaseApp.smali:252` 调用）：

```smali
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I     # 60
const/16 v1, 0x1c                                  # 62  28
if-le v0, v1, :cond_2                              # 64  SDK_INT > 28 → 走内部缓存分支
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;   # 71
const-string p0, "file"                            # 85
... → p0 = "<getCacheDir()>/file"，并 mkdir()        # 93-120
:cond_2                                            # 123  SDK_INT <= 28
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;  # 124
if-nez v0, → Environment.getDownloadCacheDirectory()                                # 130-139
否则 → getExternalCacheDir().getAbsolutePath()                                      # 142-151
```

因此：

| 设备 | FileDownloader 根目录 | 说明 |
|---|---|---|
| **Android 10 及以上（`SDK_INT > 28`）** | `/data/data/com.qiyecomm/cache/file`（即 `getCacheDir()+"/file"`） | **内部**存储，非 root / 非本 App uid 不可写；换用户后是 `/data/user/0/...` |
| Android 9 及以下（`SDK_INT ≤ 28`） | `/storage/emulated/0/Android/data/com.qiyecomm/cache` | 外部缓存目录（Android 11+ 受分区存储限制） |

作为旁证：同一个函数算出的 `<cacheDir>/file/idhelper.apk`（`e/b.smali:1260-1290`）
与 `docs/06` 第 4.2 节表格里"idhelper → `<cacheDir>/file/idhelper.apk`"完全一致，
说明 `f/c.a()` 确实就是本 App 的"下载目录"定义。

### 3.2 每个任务的落盘文件

| 用途 | 目标文件（`setPath` 传入） | 临时文件（下载中） |
|---|---|---|
| GMS：`com.google.android.gsf`（本条 URL） | `<根目录>/com.google.android.gsf.apk` | `<根目录>/com.google.android.gsf.apk.temp` |
| GMS：assets 离线解包（不经过库） | `<根目录>/com.google.android.gsf_29.apk` | — |
| 自身升级 | `<根目录>/updatefile.apk` | `<根目录>/updatefile.apk.temp` |
| idhelper（assets 解包） | `<根目录>/idhelper.apk` | — |

证据：GMS 目标路径 `e/b.smali:1074-1101`；assets 解包名 `ApkInfo.smali:94-138`
（第 104-110 行 `pkgName + "_" + 29 + ".apk"`，并把结果写回 `ApkBaseInfo.f`：`ApkInfo.smali:173-174`）；
自身升级 `update/c.smali:1454-1474`；idhelper `e/b.smali:1260-1290`。

其它固定文件：
* `<filesDir>/filedownloader/.old_file_converted`（旧版目录结构迁移标记）：`h/f.smali:941-999`。
* 数据库文件：`<dataDir>/databases/filedownloader.db`（+ WAL/SHM，见第四节）。

---

## 四、元数据存储（数据库表结构 / 状态值）

### 4.1 是 SQLite，不是 journal 文件

`b/e.smali:7-20`（`.source "SqliteDatabaseOpenHelper.java"`）：

```smali
const-string v0, "filedownloader.db"     # 10
const/4 v2, 0x3                          # 14  version = 3
invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(...)V
```

物理位置 = 系统默认 `/data/data/com.qiyecomm/databases/filedownloader.db`（`SQLiteOpenHelper`
按 name 落在 `databases/` 下，此路径由框架决定，smali 里没有第二处路径）。
`onOpen` 开启 WAL：`b/e.smali:58-91`。真正打开可写库：`b/d.smali:23-46`。

### 4.2 表结构（`onCreate` / `onUpgrade`）

`b/e.smali:24-38`：

```sql
CREATE TABLE IF NOT EXISTS filedownloader(
  _id INTEGER PRIMARY KEY, url VARCHAR, path VARCHAR, status TINYINT(7),
  sofar INTEGER, total INTEGER, errMsg VARCHAR, etag VARCHAR,
  pathAsDirectory TINYINT(1) DEFAULT 0, filename VARCHAR, connectionCount INTEGER DEFAULT 1)

CREATE TABLE IF NOT EXISTS filedownloaderConnection(
  id INTEGER, connectionIndex INTEGER, startOffset INTEGER, currentOffset INTEGER,
  endOffset INTEGER, PRIMARY KEY ( id, connectionIndex ))
```

升级路径：`b/e.smali:93-126`（`<2` 加 `pathAsDirectory`、`filename`；`<3` 加 `connectionCount` 与
`filedownloaderConnection`）；降级清表：`b/e.smali:40-56`。

### 4.3 列 ↔ 字段映射

写：`model/FileDownloadModel.smali:358-480`（`e()` 构造 `ContentValues`）——`_id`=a、`url`=b、
`path`=c、`status`=`c()`、`sofar`=f、`total`=g、`errMsg`=h、`etag`=i、`connectionCount`=j、
`pathAsDirectory`=d；仅当 `pathAsDirectory==1` 时才写 `filename`（`FileDownloadModel.smali:475-480`）。
读：`b/d.smali:95-264`。`filename` 字段只在 `pathAsDirectory=1` 时参与真实路径计算
（`model/FileDownloadModel.smali:206-224` → `h/f.smali:348-374`）。

### 4.4 状态值（本库实际会写进 DB 的值）

| 值 | 含义 | 写入点 |
|---|---|---|
| 2 | connected | `b/d.smali:443-485`（同时写 `total`/`etag`/`filename`） |
| 3 | progress | `b/d.smali:409-441`（同时写 `sofar`） |
| 5 | retry | `b/d.smali:533-565`（+`errMsg`） |
| -1 | error | `b/d.smali:567-608`（+`errMsg`+`sofar`） |
| -2 | paused | `b/d.smali:801-833`（+`sofar`） |
| **-3** | **completed** | **从不写库**——只在内存里设置：`c/f.smali:634-636` |

### 4.5 ★ 完成时库会**删除**DB 记录（所以预置 DB 行没有意义）

`c/f.smali:625-679`（下载完成处理，`.source "FileDownloadRunnable.java"`）：

```smali
.method private f()V
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/c/f;->e()V        # 629 临时文件 rename 成目标文件
    const/4 v1, -0x3
    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/model/FileDownloadModel;->a(B)V  # 636 status=-3（仅内存）
    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/b/a;->f(I)V   # 647 ★ 删除 filedownloader 行
    invoke-interface {v0, v2}, Lcom/liulishuo/filedownloader/b/a;->d(I)V   # 658 ★ 删除该 id 的 connection 行
    invoke-virtual {p0, v1}, Lcom/liulishuo/filedownloader/c/f;->a(B)V      # 661 通知监听器 completed
```

`b/a.f(I)` → `b/d.smali:1059-1066` → `e(I)`（`b/d.smali:1024-1057`，`DELETE FROM filedownloader WHERE _id=?`）；
`b/a.d(I)` → `b/d.smali:1003-1022`（`DELETE FROM filedownloaderConnection WHERE id=?`）。
`c/f.smali:437-560` 还显示：完成时先把 `.temp` 文件 `renameTo` 目标文件，
**若目标文件已存在会先 delete 再 rename**（第 470-490 行日志
"The target file([%s], [%d]) will be replaced with the new downloaded file[%d]"）。

此外，库**每次打开数据库时都会"清库"**（`c/c.smali:392-760`，`RemitDatabase` 构造时）：

* 第 410-461 行：`status ∈ {3,2,-1}` 或 `{1 且 sofar>0}` 的记录一律改写成 **-2（paused）**；
* 第 600-640 行：`status==1 且 sofar<=0` → 删除；
* 第 630-640 行：`h/f.a(id, model)`（能否续传，`h/f.smali:447-522` → `524-743`）为 false
  （= `.temp` 文件不存在/不合法）→ **删除**；
* 第 642-651 行：目标文件已存在 → **删除**；
* 第 679-759 行：id 变了就改 `_id`。

⇒ 一条 `status = -3` 的记录**不可能存活**（`.temp` 不存在 → 被删；目标文件存在 → 也被删）。
**DB 里根本没有"已完成"这个状态**，"已完成"完全由"目标文件是否存在"表达。

### 4.6 库判定"已完成"的唯一条件（两处，都是文件存在性）

`h/c.smali:116-159`（`FileDownloadHelper.checkReusedFile`）：

```smali
.method public static a(ILjava/lang/String;ZZ)Z
    if-eqz p2, :cond_0                 # 121  p2 = forceReDownload → 强制重下则不复用
    return v0
    :cond_0
    if-eqz p1, :cond_1                 # 126  p1 = path
    new-instance p2, Ljava/io/File;  <init>(p1)   # 129-131
    invoke-virtual {p2}, Ljava/io/File;->exists()Z  # 134
    if-eqz p1, :cond_1
      invoke-static {}, Lcom/liulishuo/filedownloader/message/c$a;->a()...     # 141  消息站
      invoke-static {p0, p2, p3}, Lcom/liulishuo/filedownloader/message/d;->a(ILjava/io/File;Z)...  # 146 造快照
      invoke-virtual {p1, p0}, Lcom/liulishuo/filedownloader/message/c;->a(...)V # 151
      const/4 p0, 0x1
      return p0
    :cond_1
    return v0
```

**不看长度、不看 md5、不看 `total`、不查数据库。** 快照长度直接取 `file.length()`
（`message/d.smali:570-624`，第 574 行；`>2GB` 走 Large 变体，否则 Small 变体；
`pathAsDirectory==true` 时用 `CompletedFlowDirectlySnapshot`。
注意两处调用点传入的第 4 个参数都是常量 `true`：客户端 `d.smali:2132`（v5=1，见 `d.smali:1986`），
服务端 `services/g.smali:470`（v12=1，见 `services/g.smali:288`）。

调用链（客户端，先于联网/建库）：

```
BaseDownloadTask.start()  c.smali:774-816 (j) → c.smali:168-266 (W, 第 258 行 y->d())
  → d.smali:1255-1313 (d() = 进启动池, 第 1311 行 status=10 toLaunchPool)
  → q.smali:39-71 / q$c.smali:74-90 (启动池线程 run → y$b->m())
  → d.smali:1972-2140 (m()): 第 2132 行 h/c.a(id, task.s(), task.z(), true) == true → return（直接投 completed 消息）
                             第 2194 行 n.a(...) 才真正请求服务
```

服务端还有一道同样的闸门（当客户端那道被绕过时）：
`services/g.smali:469-500`（第 470 行同样的 `h/c.a(...)` → 命中则日志
"has already completed downloading %d" 并 return）。

---

## 五、预置 APK 的完整步骤（可行）

### 5.1 本 App 的实际入口（比库更靠前）

`com/x/plus/pro/e/b.smali:416-474`（`h()`，下载阶段每步的调度）：

```smali
iget-object v0, p0, Lcom/x/plus/pro/e/b;->m:Ljava/util/Queue;   # 420  下载队列
invoke-interface {v0}, Ljava/util/Queue;->peek()...            # 422
if-nez v0, → c()                                               # 428-433 队列空 → 进入卸载阶段
iget v1, v0, Lcom/x/plus/pro/beans/config/ApkInfo;->j:I        # 437
if-ne v1, v2(=1) → k()                                         # 441-446 （见下：j==1 实际不可达）
iget-object v1, v0, ...ApkBaseInfo;->f:Ljava/lang/String;      # 450  downloadPath
iget-object v2, v0, ...ApkBaseInfo;->b:Ljava/lang/String;      # 453  fileMd5
invoke-static {v1, v2}, Lcom/x/plus/pro/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Z   # 456 ★ 本地文件预检
if-eqz v1, → k()                                               # 460-465 命中 → 跳过下载
invoke-virtual {v0, v1, p0}, Lcom/x/plus/pro/beans/config/ApkInfo;->a(...)V              # 471 否则 assets 解包
```

`com/x/plus/pro/c/a.smali:36-93`（`Downloader.a(path, md5)`）：

```smali
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(...)   # 40  path 空 → false
new-instance v0, Ljava/io/File;  <init>(p0)                  # 49-51
invoke-virtual {v0}, Ljava/io/File;->exists()Z               # 54
invoke-virtual {v0}, Ljava/io/File;->isFile()Z               # 60
invoke-static {p0}, Lcom/x/plus/pro/f/c;->b(Ljava/lang/String;)Ljava/lang/String;  # 67 文件 MD5
invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z           # 78 == fileMd5
```

⇒ **只要 `<根目录>/<pkgName>.apk` 存在且 md5 == 清单 `fileMd5`，App 在创建 FileDownloader
任务之前就跳过了下载**（`k()` → 安装阶段）。此时既没有任务、也没有 DB 记录，什么都无需伪造。

### 5.2 针对本任务（GSF，`d_568628e0d993b1973adc718237da6e93_006.apk`）的确切配方

清单依据（`work/xpp/com.qiyecomm__Xpp_Q.json`，即 `assets/Xpp_Q.json` 的 RC4 解密结果，
密钥 `abksfsijifefe`：`update/c.smali:1083` + `update/c.smali:20` + `b/c.smali:127-183`）：

| 字段 | 值 |
|---|---|
| `downUrl` | `http://cdn.trip-happy.com/d_568628e0d993b1973adc718237da6e93_006.apk` |
| `pkgName` | `com.google.android.gsf` |
| `fileMd5` | `95a3c04f3fa1bef6ed41d749ab507966` |
| `fileSize` | `3923176` |
| `sign_1` / `sign_256` | `cde9f6208d672b54b1dacc0b7029f5eb` / `f0fd6c5b410f25cb25c3b53346c8972fae30f8ee7411df910480ad6b2d60db83` |

本仓库 `work/gms29/com.google.android.gsf_29.apk` 实测：**3923176 字节，md5 = `95a3c04f3fa1bef6ed41d749ab507966`**
（与清单 `fileMd5` 完全一致；与 URL 文件名里的 `568628e0…` 无关——那只是 CDN 的命名 token）。

**步骤：**

1. 把文件放到**根目录**、文件名 `<pkgName>.apk`：
   * 设备 `SDK_INT > 28`（Android 10+）：
     `/data/data/com.qiyecomm/cache/file/com.google.android.gsf.apk`
     （等价路径 `/data/user/0/com.qiyecomm/cache/file/com.google.android.gsf.apk`）
   * 设备 `SDK_INT ≤ 28`（Android 9-）：
     `/storage/emulated/0/Android/data/com.qiyecomm/cache/com.google.android.gsf.apk`
   * 目录若不存在需先建（`f/c.smali:93-120` 会 `mkdir()`，但只在 App 自己跑时；预置时自己建）。
2. 权限/属主：内部目录需 root（`adb root`/Magisk/`run-as` 不可用，App 非 debuggable）；
   `chown` 给 App uid 并保证 `0644`（同 uid 读写即可）。外部目录在 Android 10 及以下可用
   adb/文件管理器写入。
3. **不需要**做的事：
   * ❌ 不需要 `<根目录>/com.google.android.gsf.apk.temp`；
   * ❌ 不需要 `filedownloader.db` 的任何行（见 4.5：完成态不入库，且打开即被清理）；
   * ❌ 不需要伪造任何网络响应。
4. （可选，若想同时命中 assets 路径，避免 `ApkInfo.a()` 再解包一次）把同一份文件复制到
   `<根目录>/com.google.android.gsf_29.apk`；`f/c.smali:296-323` 看到目标已存在且长度 >0 会直接复用。
5. 期望结果：`e/b.h()` → `c/a.a()` 命中 → `k()` → `e/b` 进入安装阶段，
   由 `e/c` 调安装接口（原始逻辑是华为 `DevicePackageManager.installPackage`，
   本仓库的树已被补丁改成 `ACTION_VIEW`——见第八节）。

**若坚持要"让库的任务自身算完成"**（例如文件名不是 `<pkgName>.apk`，或想让任务被创建后再短路）：
把文件放到 `setPath` 传入的那个路径即可，例如 GMS 流程就是同一个
`<根目录>/com.google.android.gsf.apk`；此时 `h/c.a`（5.1 之外的第二道闸门）命中，
任务被创建但立刻投递 `completed`，`e/b$4.a(task)` 再做一次 md5 校验。
**库不校验文件内容**（4.6），但 **App 会**（第六节）——所以文件内容依旧必须是清单期望的那一份。

### 5.3 另一条流程（自身升级 `updatefile.apk`）：技术上能"算完成"，但实际没用

* 落盘名 `<根目录>/updatefile.apk`（`update/c.smali:1454-1474`），
  任务创建处 `update/c.smali:1476-1533`（`setListener(new c$2(...))`）。
* 但完成回调 `update/c$2.smali:51-101` 会：
  ① 调 `update/c.b(c,ctx,path)Z`（`update/c.smali:696-772`）校验
  `文件 md5 == UpgradePackageModel.fileMd5` **且** `已安装的 model.pkgName 的签名 md5 == model.sign_1`；
  ② 通过才安装（`update/c.smali:228-380`，华为 `DevicePackageManager`，并按 travel App 自己的包名登记系统应用）；
  ③ **不通过 → `f/c.a(path)` 删除文件**（`update/c$2.smali:96-100`）。
* 而 `model` 来自 SharedPreferences `com.x.plus.pro.update` / key
  `com.x.plus.pro.update.updateUpgrade`（`update/c.smali:974-1000`、`1737-1791`），
  该值只在**服务器响应成功**时写入（`update/c.smali:391-443`，调用点 `c$1.smali:179`）。
  服务器 `api.trip-happy.com` 已下线（`docs/05` 第一节；`update/e.smali:64/79`），
  且该任务只在响应成功后才被创建（`c$1.smali:230-278`）。
  ⇒ 只预置 `updatefile.apk` 不会被安装，最坏情况是被删掉；必须同时伪造服务器清单（内部 SharedPreferences），
  或直接补丁 App。

---

## 六、md5 校验的位置与时机

| # | 位置（smali 与行号） | 时机 | 校验内容 | 不通过时 |
|---|---|---|---|---|
| 1 | `c/a.smali:36-93`（`a(path,md5)`），调用点 `e/b.smali:449-465` | **创建下载任务之前** | 文件 md5 == 清单 `fileMd5`（`ApkBaseInfo.b`） | 返回 false → 走 assets 解包 / 建 FileDownloader 任务 |
| 2 | `ApkInfo.smali:83-206`（第 138 行解包、145 行算 md5、160 行比较、174 行改 `f`、180 行删除） | assets 解包之后 | 解包出的 `<pkgName>_29.apk` md5 == `fileMd5` | 删文件 + 回调 `a(false,apk)`（`ApkInfo.smali:195-202`）→ 回落下载 |
| 3 | `e/b$4.smali:35-102`（第 60 行 `FileUtil.b`、75 行 equals、84 行 `i()`、93 行删除） | 下载 `completed` 回调 | 下载文件的 md5 == `fileMd5` | 删文件 + `g()`（失败计数+1，`e/b.smali:365-404` 发 what=2） |
| 4 | `update/c$2.smali:51-101` + `update/c.smali:696-772`（第 717 行文件 md5、732 行比较、742/757 行已装签名比较） | 自身升级包下载完成后 | ①文件 md5 == `fileMd5`；②`f/i.b(ctx,pkgName)`（已装包的**签名 md5**，`f/i.smali:194-234`）== `sign_1` | 通过 → `update/c.smali:228-380` 安装；不通过 → `update/c$2.smali:96-100` **删文件** |
| 5 | `update/c$1.smali:113-159`（第 138 行 `md5(base64(upgradeConf)+密钥)`、155 行比较） | 更新检查响应解析时 | 响应签名 `upgradeConfSign` | 视为失败（回调 `update/b.a()`） |
| 6 | `e/b.smali:1296-1313` | 安装 idhelper 之前 | APK 文件签名 SHA-256 == `6260FABB…`（`f/i.c`，`f/i.smali:236-287`） | 不安装 |
| 7 | `e/b.smali:985-1015` | 流程开始时判断"要不要装" | 已装包 versionCode ≥ 清单 `verCode` 且已装签名 == `sign_1` | 返回 2 → 走卸载/重装 |

md5 实现：`f/c.smali:680-806`（`MessageDigest("MD5")` + 小写十六进制，表在 `f/c.smali:11-53`）。

**结论（回答"App 是否自己再校验 md5"）：是，而且校验点比库更晚/更严。**
库的 reuse 分支只认"文件存在"（4.6），校验发生在 App 收到 `completed` 之后（#3、#4），
**不通过就把文件删掉**——所以"随便放一个文件骗过库"没有收益，反而会被删除并计一次失败。

---

## 七、结论：预置方案是否可行，以及不可行时的替代方案

### 7.1 可行性判定

* **在库这一层：完全可行。** "任务算已完成"= 目标文件存在 + `forceReDownload == false`
  （`h/c.smali:116-159`；本 App 的 `d()` = `setForceReDownload(false)`，见 `c.smali:690-699`
  + `e/b.smali:1197`/`update/c.smali:1499`）。**不需要数据库、不需要 `.temp`、不需要网络。**
* **在 App 这一层：可行但有硬约束**——文件必须与清单 `fileMd5` **逐字节一致**，
  否则被删除（第六节）。对本条 URL（GSF），`work/gms29/com.google.android.gsf_29.apk`
  与清单 `fileMd5` 一致，**可以直接用**。
* **对这套 App 来说，预置甚至不是必需的**：同样的字节就在 `assets/com.google.android.gsf_29.apk` 里，
  `ApkInfo.a(Context)`（`ApkInfo.smali:83-206`）会把它解包到根目录并校验 md5 后直接使用；
  而 `update/c.smali:1052-1128` 的清单也是从 assets 读的，与服务器无关。
  ⇒ 走 assets 路径（"做法 A"）与走预置（"做法 B"）最终落到同一个文件、同一套校验。
* **预置真正有用的两种场合**：
  1. assets 路径失败（例如树被补丁写死了 `_29.apk`、或目标目录不可写）时的兜底；
  2. 想**替换**成另一份 APK（例如更新版 GMS）——此时必须同时改掉"期望 md5"，
     即重新 RC4 加密 `assets/Xpp_Q.json`（密钥 `abksfsijifefe`，`update/c.smali:1083`/`20`、
     `b/b.smali:7-19`、`b/c.smali:127-183`，算法 `Base64 → RC4(key)`，见 `docs/05` 第二节），
     否则 `c/a.a`(#1)、`ApkInfo.a`(#2)、`e/b$4.a`(#3) 三处都会判失败并删文件。

### 7.2 现实约束

* **可写性**：`SDK_INT > 28` 时根目录在**内部**缓存（`/data/data/com.qiyecomm/cache/file`），
  非 root 无法预置；`SDK_INT ≤ 28` 时才在 `/sdcard/Android/data/...`（Android 10 及以下可写）。
  ⚠️ 另外：即使"外部缓存目录"能写，Android 10+ 的 App 也不会去那里找文件（第一节/第三节）。
* **`SDK_INT == 28` 的设备读的是 `Xpp_P.json`**（另一套包、另一组 md5，见 `work/xpp/com.qiyecomm__Xpp_P.json`），
  预置 `_29` 那套文件反而不匹配 → 会被删。**清单与文件必须成对**。
* 安装阶段结束后会**清理**：`e/b.smali:548-606` 在队列空时遍历清单删除 `ApkBaseInfo.f` 指向的文件，
  所以每次流程前都要重新预置。

### 7.3 替代方案（按推荐度）

1. **什么都不做，靠 assets**（本 App 设计如此）：`assets/<pkg>_29.apk` 与 `Xpp_Q.json` 的 md5 逐条一致
   （本仓库已核对 5/5），`ApkInfo.a()` 离线解包即可完成"下载"阶段。
2. **预置到 `<根目录>/<pkgName>.apk`**（5.2 配方）：最稳，连 assets 解包都省掉。
3. **本地代理接管 CDN 域名**：只需返回与清单 md5 完全一致的字节即可（库不做校验，
   App 才校验 md5，所以代理必须给"正确的那一份"；`Content-Length` 只要与实际一致即可）。
   适合"文件拿不到、但能从别处取到同一份 APK"的场景。
4. **补丁 App**：改 `c/a.a`（#1）、`ApkInfo.a`（#2）、`e/b$4.a`（#3）的 md5 比较为恒真，
   或改 `f/c.a(Context)`（`f/c.smali:56-152`）把根目录指向可写的外部路径，
   以便预置任意 APK。若目标是替换 GMS 版本，还需要重加密 `Xpp_Q.json`（7.1）。
5. **不走 App，直接用 MDM**：安装动作本身是华为 `DevicePackageManager.installPackage`
   （`update/c.smali:276-323`、`e/c` 里的安装封装），只要有设备管理员/系统应用登记，
   可绕过整套下载逻辑（属于本项目 LZRevive 的路线，不在本文范围）。

---

## 八、未能确定的事项

1. **`work/travel_decoded/` 是被人为打过补丁的树**（`docs/06` 第七节列出了
   `work/travel_backup/*.orig`：`f/h`、`a/b`、`e/c`、`ApkInfo`、`a$1`）。
   本文所有"App 侧"结论反映**当前（补丁后）代码**；例如 `ApkInfo.smali:104-110` 的
   asset 名被写死为 `_29.apk`，原始逻辑应为 `pkgName + "_" + SDK_INT + ".apk"`。
   我**没有**把 `com/liulishuo/filedownloader/**`（库本身）与原始 APK
   （`work/originals/旅游必备 travel essentials.apk`、`work/research-trustspace/qiyecomm.apk`）
   做逐文件 diff，因此"库未被补丁"这一点只是**未发现证据**，不是已证事实。
2. **未在真机验证预置方案**（本环境无法运行 Android）。5.2 的每一步都能从 smali 读出，
   但"文件权限/属主是否被系统接受""安装阶段是否被华为 MDM 放行"无法静态判定。
   建议实测顺序：先什么都不放跑一次（验证 assets 解包）→ 再按 5.2 预置 `com.google.android.gsf.apk`
   → 抓 `e/b$4` 的日志/界面百分比变化。
3. **根目录路径的最终形态未在真机确认**：`f/c.a()` 用 `Context.getCacheDir()`
   （smali 只看得到方法名），因此我按 Android 规范写为 `/data/data/com.qiyecomm/cache/file`；
   多用户/直接启动（Direct Boot）下可能是 `/data/user/...` 或 `createDeviceProtectedStorageContext`
   的等价目录。设备厂商定制也可能改变 `getExternalCacheDir()` 的挂载点。
4. **`e/b` 里 `ApkInfo.j == 1` 的快捷分支疑似死代码**（`e/b.smali:1065-1070` 把非 0 一律
   改写成 2），与 `docs/06` 第七节第 2 条同一观察；我未进一步验证是否为内联造成的假象。
5. **库的方法语义是按上游 v1.7.6 反推的**（被 R8 混淆、常量内联）：例如
   `c.a()/b()/c()/d()/e()/f()` 分别对应 `setMinIntervalUpdateSpeed/setCallbackProgressTimes/
   setCallbackProgressMinInterval/setForceReDownload/setAutoRetryTimes/setWifiRequired`。
   本文只依赖**能从 smali 直接读出**的部分：`b(String)` 确认写 path 字段（`c.smali:628-668`）、
   `d()` 确认写 `s` 字段而 `z()` 读 `s`（`c.smali:690-699`、`1126-1133`）、
   `h/c.a` 的第 2 个布尔参数就是 `z()`（`d.smali:2127-2132`、`services/g.smali:419-470`）。
   `forceReDownload == false` 这一结论不依赖上游源码：字段初值即 0（`c.smali:102-108`），
   App 调用的 `d()` 又显式写 0。
6. **`update/c.e(Context)`（`update/c.smali:230-300`）会删除 `<根目录>/updatefile.apk`**：
   仅当 `model.verCode == 本机 versionCode` 时触发；因为没有服务器清单时 `model == null`，
   所以在"服务器全死"的前提下它不会被触发——但这一点依赖"SharedPreferences 里确实没有旧值"，
   未在真机确认。
7. **DB 文件是否真的只在 `:filedownloader` 进程被打开**：客户端进程也会通过
   `c/c.b()` 打开同一个 `filedownloader.db`（`d.smali` → `c/c.a().b()` 路径），
   多进程 WAL 并发行为未验证；对本文结论（不需要 DB）无影响。
