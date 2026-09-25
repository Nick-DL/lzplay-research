# 静态脱壳研究记录（libjiagu / 360 Jiagu ART 变种）

本目录记录"从 `libjiagu` 里静态还原真实 DEX"这条线的进展与卡点，供后续继续。

## 已完成

### 1. 载荷定位

`assets/libjiagu.so`（ARM32）与 `assets/libjiagu_x86.so`（x86-32）都使用自定义节名伪装：

| 节 | ARM 版偏移/大小 | x86 版偏移/大小 | 内容 |
|---|---|---|---|
| `.text` | 0x1be0 / 37,832 | 0x1000 / 22,246 | 真实代码 |
| `.engine` | 0xafa8 / 4,380 | 0x66e6 / 1,594 | 状态机解码引擎 |
| `.context` | 0xc0c4 / 84 | 0x6d20 / 65 | 初始解码上下文 |
| `.rodata` | 0xc7d8 / 1,064 | 0x6d64 / 730 | 关键字符串 |
| `.bmp` | 0xe160 / 1,064 | 0x12470 / 1,062 | **真实 BMP 图片**（伪装） |
| `.compiler` | 0xe588 / 25,368 | 0x9004 / 37,993 | zlib 流 → 54 KB ARM ELF（**360 自带的 ART 运行时代码**） |
| **`.mips`** | **0x138a0 / 406,308** | **0x12898 / 409,624** | **加密的真实 DEX** |

已验证：`.compiler` 偏移 +0x4 是合法 zlib 流（`78 9c` 头），解出 54,452 字节 ARM ELF，内含
`-Ximage:/data/dalvik-cache/system@framework@boot.art`、`-compiler-filter:interpret-only`。
→ 说明 360 不修改系统 ART，而是**自带一个 ART 实例**加载解密后的 DEX。

### 2. 导出符号（x86 版动态符号表，71 项）

| 符号 | 地址 | 大小 | 推测用途 |
|---|---|---|---|
| `JNI_OnLoad` | 0x666b | 123 | 入口 |
| `__fun_a_18(unsigned char*, unsigned)` | 0x66e6 | 1,594 | 状态机解码器（`.engine` 节） |
| `__arm_a_1(JavaVM*, JNIEnv*, void*, int&)` | 0x63ea | 641 | 初始化 |
| `__arm_a_2(char*, char*, ...)` | 0x5f49 | 209 | **密钥编排 / 哈希核心**（见 §4） |
| `__arm_a_20` / `__arm_a_21` | 0x5c13 / 0x5b6c | 404 / 167 | |
| `__arm_c_1::__arm_c_0()` | 0x5312 | 895 | |

### 3. 【本轮突破】恢复 360 混淆掉的原函数名

x86 代码是 PIC 的，每个函数开头都是：

```
call __x86.get_pc_thunk.bx   ; ebx = 返回地址
add  ebx, IMM                ; ebx = PIC 基址
```

**实测所有 70 个函数的 PIC 基址都是 `0x9f48`**（即 `.got.plt` 起点）。常量一律以
`[ebx ± disp]` 引用。据此把 `.rodata`（0x6d64..0x703e）里的字符串全部还原，
函数名（原为 `__arm_a_N` 这种混淆名）就暴露了：

| 地址 | 恢复出的名字 |
|---|---|
| `lea eax, [ebx-0x30e7]` @ **0x6276** | **`makekey`** |
| `lea eax, [ebx-0x30df]` @ **0x62c8** | **`getSoName`** |

两个函数都走 `call 0x2f32`（`dlsym` 封装）再 `call 0xef0`，即
**`dlsym(NULL, "makekey")` / `dlsym(NULL, "getSoName")` —— 自解析自己的导出符号**。
`getSoName` 还读 `[ebx+0x6dafc]`（GOT 里的 `JNI_OnLoad`）来做**基址自定位**。

完整还原的字符串清单（24 条，含引用地址）：

```
000011d1  /proc/self/maps          00001e62  libmono.so
00001565  /system/lib/libz.so      00001ea9  dladdr
00001587  libz.so                  00001ecb  dl_iterate_phdr
000015a3  uncompress               000021df  libdl.so
00001e09  signal                   00002957  dlopen
00001e27  sigprocmask              0000297d  dlsym
00001e45  sigaction                000029a3  dlclose
00002bd4  function                 0000392e  ro.build.version.sdk
00002c45  DT_INIT                  000060d1  *.so
00002c73  DT_INIT_ARRAY            00006167  libstl_compiler.so
00006276  makekey                  000062c8  getSoName
0000635d  strcmp                   000063c7  libjiagu
```

**这个技术本身是通用工具**：`work/tools/recover_symbols.py`，可对任何 PIC 化的 x86 ELF
恢复被混淆的字符串引用。用法：

```powershell
python work/tools/recover_symbols.py work/native/libjiagu_x86.so.b64.gz
```

### 4. 解码器调用约定（上轮的卡点，已解决）

`__fun_a_18` 全库只有 **1 个调用点：0x6067**，且传入 `ecx=0, edx=0`（清理路径）：

```
0000605f  31d2            xor edx, edx
00006061  8d6424e8        lea esp, [esp-0x18]
00006065  31c9            xor ecx, ecx
00006067  e87a060000      call 0x66e6        <<<< 唯一调用点
0000606c  e836fdffff      call 0x5da7        <<<< 主例程
```

函数入口处（0x66f7..0x6703）先 `test ecx,ecx / je 0x6703`，所以**参数通过 `ecx`/`edx`
传递（regparm 风格）**，`NULL` 是合法的"初始化/清理"调用。
且函数在栈上扫描 sentinel `0x1024` 来定位一个 11 字段（`[eax+4]`…`[eax+0x28]`）的
**解码上下文结构体** —— 这个结构体不是参数，而是**由调用方预先布置在栈上**的。

→ 结论：先前的失败（`eax=0` 提前返回）是因为直接构造 `ecx/edx` 而没布置栈上的上下文。
正确入口是 **0x5da7（主例程）**，不是直接调 `__fun_a_18`。

### 5. 密钥编排函数（`__arm_a_2` @ 0x5f49，209 字节）

两个循环，都是标准密码学结构：

- **循环一**：游走输入字节，累加式 `acc = (acc * 0x1f + byte) & 0xffff`
  —— 这是 **Java `String.hashCode()` 的逐字节变体**，用于把 key 折成一个 16 位值
- **循环二**：对 16 元素缓冲做 rot4/xor 混合，形如
  `out[16]` 表 + `(x>>4)^pad` / `(x&0xf)^pad` / `or` / `xor` —— 典型 SPN 密钥扩展

### 6. Unicorn 模拟环境已搭好并可用

`work/tools/jiagu_emu.py` + `work/tools/elfload32.py` + `work/tools/jiagu_analyze.py`：

- 按 `PT_LOAD` 映射段（本库 vaddr == file offset，identity mapping）
- 解析 `.rel.dyn` / `.rel.plt`，应用 `R_386_RELATIVE`(8) / `R_386_GLOB_DAT`(6) /
  `R_386_JMP_SLOT`(7) / `R_386_32`(1) —— 共 81 条
- 每个外部符号重定向到自动生成的 stub，stub 内模拟 libc：
  `malloc/calloc/free/memcpy/memset/memcmp/strcmp/strlen/strstr/strncpy/atoi/strtol`、
  `fopen/fgets/fclose/fread/fwrite/fseek/ftell/open/read/lseek/close/mmap/munmap/mprotect`、
  `dlopen/dlsym/dlclose/dl_iterate_phdr/dladdr`、
  `__system_property_get`（对 `ro.build.version.sdk` 返回 `"28"`）、
  `prctl/getpid/raise/kill/signal/sigaction/sigprocmask/select/inotify_*`、
  `pthread_create`（**内联同步执行线程函数**，保证确定性）
- 已验证可寻址并调用全部导出函数

## 卡点 / 下一步

调用 `JNI_OnLoad` 时在 `0x66a5` 处崩：`call [eax+0x18]` 读 `0x18` 未映射 ——
因为传进去的假 `JavaVM*` 是空指针表。需要构造一个**可用的假 JavaVM**：

1. `JavaVM*` 指向一个函数指针表；`[vm+0x18]` 是表中第 7 项
   （JNI 1.6 顺序：`DestroyJavaVM, AttachCurrentThread, DetachCurrentThread,
   GetEnv, AttachCurrentThreadAsDaemon` → 实际索引要按 `[vm + 4*i]` 算，
   `+0x18` = 第 6 项；JNI 1.2 表更短，需按实际偏移试探）
2. 优先实现 `GetEnv(JavaVM*, void**, jint)`，返回一个假的 `JNIEnv*`；
   `JNIEnv*` 本身也是函数指针表，壳大概率只用到
   `FindClass / GetStaticMethodID / CallStaticObjectMethod / NewStringUTF / GetStringUTFChars`
3. 壳接下来会经 `makekey` 派生密钥、读 `.mips`、用 `0x5da7` 解密；
   在 `__fun_a_18` / `0x5da7` 的输出缓冲区上挂内存写 hook，即可**截获解密后的 DEX**
4. 更省事的替代入口：直接调 **0x5da7（主例程）**，它自己会布置栈上的解码上下文；
   先把它的前 60 条指令 trace 出来，读出它从哪里取输入缓冲区

### 已排除的路线

- 直接 `__fun_a_18(ecx=payload, edx=len)` —— 上下文在栈上，会走 `0x6703` 提前返回 0
- 在 Android 16 x86_64 模拟器上装原版 APK —— `INSTALL_FAILED_NO_MATCHING_ABIS`
  （`libjiagu.so` 是 32 位 ARM；该镜像 abilist 只有 `x86_64,arm64-v8a`）
- 重签名后跑 —— `.appkey` 与签名绑定，解密必失败

## 复现

```powershell
# 解出 base64+gzip 副本（火绒会查杀原始的 .so）
python -c "import base64,gzip;open('work/native/an/lj_x86.bin','wb').write(gzip.decompress(base64.b64decode(open('work/native/libjiagu_x86.so.b64.gz','rb').read())))"

# ELF 结构
python work/tools/elfload32.py work/native/libjiagu_x86.so.b64.gz
# 恢复混淆的函数名 / 字符串引用
python work/tools/recover_symbols.py work/native/libjiagu_x86.so.b64.gz
# 找调用点 + 上下文
python work/tools/find_calls.py work/native/libjiagu_x86.so.b64.gz
# Unicorn harness
python work/tools/jiagu_emu.py work/native/libjiagu_x86.so.b64.gz
python work/tools/jiagu_analyze.py work/native/libjiagu_x86.so.b64.gz
```

依赖：`unicorn`（已解包在 `work/pylibs`，脚本用 `sys.path.insert` 引入，未装进系统 Python）。

---

# 追加：`makekey` 真相 + 反调试清单（本轮重大修正）

## 1. `makekey` **不是**密钥派生 —— 它是字符串混淆解码器

先前把 `makekey` 当成"密钥派生函数"是**错的**。反汇编 `0x5b44` 只有 19 字节：

```asm
5b44  8b542404        mov  edx, [esp+4]        ; buf
5b48  31c0            xor  eax, eax
5b4a  3b442408        cmp  eax, [esp+8]        ; len
5b4e  7407            je   5b57
5b50  803402a5        xor  byte [eax+edx], 0xa5 ; <<< 逐字节异或 0xa5
5b54  40              inc  eax
5b55  ebf3            jmp  5b4a
5b57  c3              ret
5b58  8b542404        mov  edx, [esp+4]        ; 同一个函数
5b5c  31c0            xor  eax, eax            ; 只是常量换成 0xd6
...
5b64  803402d6        xor  byte [eax+edx], 0xd6
```

所以 `makekey` / `0x5b58` 是**同一段代码的两个 XOR 变体**，密钥分别是 **`0xa5`** 和 **`0xd6`**。
360 故意把它命名为 `makekey` 来误导分析者。

**解出的 `.rodata` 密文（13 条 0xa5 + 2 条 0xd6）：**

| 地址 | 明文 | 用途 |
|---|---|---|
| `0x6f74` | `/proc/self/status` | 读进程状态 |
| `0x6f88` | `TracerPid` | **检测是否被调试器 attach** |
| `0x6f4a` | `/system/bin/linker` | 定位 linker |
| `0x6f60` | `rtld_db_dlactivity` | **检测 linker 是否被 hook** |
| `0x6fb4` | `_ZN3art3Dbg15gDebuggerActiveE` | **ART 调试器检测符号** |
| `0x6fd4` | `_ZN3artL15gDebuggerActiveE` | ART 调试器检测符号（变体） |
| `0x6ff0` | `/system/lib/libart.so` | 加载 ART 以 dlsym 上面的符号 |
| `0x7008` | `_Z25dvmDbgIsDebuggerConnectedv` | **Dalvik 调试连接检测** |
| `0x7028` | `/system/lib/libdvm.so` | 加载 Dalvik 以 dlsym 上面的符号 |
| `0x6f94` | `/proc/net/tcp` | 读 TCP 连接表 |
| `0x6fa4` | `00000000:5D8A` | **在 tcp 表里搜这个特征（抓 adb / frida 连接）** |

→ 得到结论：**这个样本里没有"密钥派生"逻辑**，`makekey` 只是字符串解码。
真正的 DEX 解密参数不在 `.rodata` 的明文串里。

**通用工具：`work/tools/deobf_rodata.py`**，对任意节试 `0x00 / 0xa5 / 0xd6` 三种键并列出可打印串：

```powershell
python work/tools/deobf_rodata.py work/native/libjiagu_x86.so.b64.gz
```

## 2. `.context` 是可执行的 x86 蹦床，不是数据

65 字节，逐字节就是合法 x86 代码：

```asm
6d20  9c                  pushfd
6d21  6824100000          push 0x1024          ; <<< 就是解码器在栈上扫的那个 sentinel
6d26  52                  push edx
6d27  51                  push ecx
6d28  e8b9f9ffff          call 0x66e6          ; <<< 调用解码器 __fun_a_18
6d2d  89c4                mov  esp, eax
6d2f  9d                  popfd
6d30  8b5808              mov  ebx, [eax+0x8]
6d33  8b480c              mov  ecx, [eax+0xc]
6d36  8b5010              mov  edx, [eax+0x10]
6d39  8b7014              mov  esi, [eax+0x14]
6d3c  8b781c              mov  edi, [eax+0x1c]
6d3f  8b6820              mov  ebp, [eax+0x20]
6d42  8b6024              mov  esp, [eax+0x24]
6d45  8b4018              mov  eax, [eax+0x18]
6d48  83c018              add  eax, 0x18
6d4b  ffe0                jmp  eax
6d4d  90 x16              nop
6d60  c3                  ret
```

**这才是 `__fun_a_18` 的真实调用方式**：先把 sentinel `0x1024` 和参数压栈，
再 `call 0x66e6`；解码器返回一个**指向 0x878 字节上下文字结构体的指针**（放在 eax），
蹦床随后从该结构体恢复 8 个寄存器并 `jmp [eax+0x18]+0x18`。

→ 这就解释了"为什么直接构造 `ecx`/`edx` 会走提前返回"：**参数要通过栈上的 sentinel 帧传**。

## 3. `.rodata` 尾部是 VM 程序表

`0x6e90..0x7040` 用 0xa5 解出来后是这种形态：

```
0x6e90  +hZZDmZZDmZZDmZZDmZZDmZZDmZZDmZZ.lZZ.lZZ.lZZ.lZZ2lZZDmZZ.lZZ.oZZ
0x6eb4  .lZZ.lZZ.lZZ2lZZDmZZ.lZZ.oZZ.oZZ.nZZ.lZZ.lZZ.lZZ.lZZ.lZZ.mZZ.iZZ
```

`Dm` / `lZ` / `oZ` 这些**两字节一组**的符号在 `.engine` 的 `jmp [eax*4+ebx-0x30b8]` 跳转表里被索引 ——
配合 `__fun_a_18` 里的字节分派：

```asm
6803  mov al, [esi+edi+1]     ; 取下一个字节
6809  je  0x6aca              ; 若 == 0x40 ('@')
6811  je  0x6b25              ; 若 == 0x41 ('A')
683b  ja  0x6829              ; 若 > 0x1d 继续取
683d  mov eax, [eax*4+ebx-0x30b8]   ; 否则查 0x1d 项跳转表
6846  jmp eax
```

→ **`__fun_a_18` 是一个字节码 VM 解释器**，`.rodata` 尾部那张表就是它的算子表。

## 4. 修正后的下一步

1. **走 `.context` 蹦床的路径**：构造 `pushfd / push 0x1024 / push edx / push ecx / call 0x66e6`
   的栈帧，让解码器自己建立上下文（不要手工构造 `ecx`/`edx`）
2. **给 `__fun_a_18` 下内存写断点**，观察它写出的 0x878 字节上下文结构体，
   读出其中 11 个字段的真实含义（缓冲区指针 / 长度 / 状态）
3. VM 算子表在 `.rodata+0x12c`（即 `0x6e90`），`0x1d` 个表项，每项 4 字节相对偏移，
   基址是 `ebx-0x30b8`（= `0x9f48-0x30b8` = `0x6e90`）—— **表就在 `.rodata` 尾部**，
   可以静态提取全部算子并还原 VM 语义
4. 若 VM 的输入仍是 `.mips`，则在 VM 的输出缓冲上挂钩即可截获解密后的 DEX

## 5. 本轮新增工具

| 工具 | 作用 |
|---|---|
| `work/tools/recover_symbols.py` | 反推 PIC 基址（全库统一 `0x9f48`），恢复 `[ebx±disp]` 引用的 `.rodata` 字符串 → 还原被混淆的函数名 |
| `work/tools/deobf_rodata.py` | 用 `0x00/0xa5/0xd6` 三种键解混淆任意节，列出全部可打印串 |
| `work/tools/find_calls.py` | 定位任意函数的所有调用点并打印上下文，用于反推调用约定 |
| `work/tools/jiagu_analyze.py` | Unicorn 之上的分析层：常量串解析 + 定点指令 trace |
