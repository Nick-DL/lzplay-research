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

---

# 追加：解码器入口的精确约束（模拟器已跑通到"解码器内部"）

## 1. Unicorn 环境确认可用

对 `__fun_a_18`（`0x66e6`）下 `UC_HOOK_CODE` 后 `emu_start`，**确实执行到了库内代码**
（而 `jiagu_trace_decoder.py` 里 trace 为 0 是脚本自身的问题，不是环境问题）：

```
exec 0x100066e6     <- 函数入口
exec 0x100066e7
exec 0x100066e8
exec 0x100066e9
exec 0x100066eb
ok, execs=20  eip=0xbadf00d  eax=0x0
```

**20 条指令后干净地 `ret` 到哨兵地址** —— 说明 emulation 是对的，只是走了提前返回分支。

## 2. 提前返回的确切原因

```
66f7  lea  esp, [esp-0x2c]
66fb  test ecx, ecx        ; 需要 ecx != 0
66fd  je   0x6703          ;   ecx==0 -> eax=0, ret
66ff  test edx, edx        ; 需要 edx != 0
6701  jne  0x670a
6703  xor  eax, eax
6705  jmp  0x6d17          ; 提前返回
670a  mov  [esp], 0x878
6711  mov  [esp+0x18], edx ; 把 edx 存到 [esp+0x18]
6715  call 0xf50           ; 分配 0x878 字节
671a  test eax, eax
671c  mov  ebp, eax
671e  je   0x6703          ; 分配失败也走提前返回
```

→ **`ecx` 和 `edx` 都必须非 0**。实测：`ecx=0, edx=payload_len` 时 20 条指令就返回 0。
这也解释了 `0x6067` 那个唯一静态调用点为什么传 `ecx=0, edx=0` —— 那是**清理/收尾**调用，
合法地走提前返回分支。

## 3. 走蹦床路径时的实际行为

用 `jiagu_probe_decoder.py` 的 ATTEMPT A（`ecx=payload, edx=len`，跳进 `.context` 蹦床）：

```
ecx=0x40001000 (payload)  edx=0x64018 (len)  esp=0x200fe000
  free(0x878)                                    <- 说明分配成功、走到了收尾
  [mem] UNMAPPED 19 at 0x0 size 4 (eip=0x10006d2f)
  stopped: Invalid memory read (UC_ERR_READ_UNMAPPED)  (eip=0x10006d2f)
```

指令流走到了蹦床的 `popfd`（`0x6d2f`）之后，紧接着 `mov ebx,[eax+8]` 去读地址 `0x8` ——
即**解码器的返回值 `eax` 是 0**。但 `free(0x878)` 被调用过，说明 `ebp`（上下文）非 0。

### 返回值路径（`0x6ce2` 收尾块，已完整反汇编）

```asm
6ce2  mov eax, [ebp+0x820]        ; ctx+0x820 是一个指针字段
6ce8  mov ecx, [ebp+0x824]        ; ctx+0x824 是一个值字段
6cee  mov [eax], ecx              ; *ptr = value
6cf0  xor eax, eax                ; i = 0
6cf2  mov esi, [eax+ebp]          ; esi = ctx[i]
6cf6  mov ecx, [ebp+0x828]        ; ctx+0x828 是输出缓冲指针
6cfc  mov [eax+ecx], esi          ; out[i] = ctx[i]
6cff  add eax, 4
6d02  cmp eax, 40                 ; 复制 40 字节（10 个 dword）
6d05  jne 0x6cf2
6d07  mov esi, [ebp+0x828]        ; esi = 输出缓冲
6d0d  mov [esp], ebp
6d10  call 0xf60                  ; free(ctx)
6d15  mov eax, esi                ; <<< 返回的是**输出缓冲指针**（10 个 dword）
6d17  lea esp, [esp+0x2c] / pop... / ret
```

**所以 `__fun_a_18` 的行为是**：

1. 入参 `ecx` / `edx` 必须非 0（推测是输入缓冲与长度）
2. 分配 `0x878` 字节上下文
3. 在栈上扫描哨兵 `0x1024` 来定位一个**栈上预置的上下文结构**，把它的字段拷进自己的 ctx
4. 执行字节码 VM（算子表在 `.rodata+0x12c`，`0x1d` 项跳转表 @ `0x6e90`）
5. 复制 **40 字节（10 个 dword）**到输出缓冲，`free(ctx)`，**返回输出缓冲指针**

蹦床随后把这 10 个 dword 当作寄存器/栈的恢复数据使用
（`[eax+8]→ebx, [eax+0xc]→ecx, [eax+0x10]→edx, [eax+0x14]→esi, [eax+0x1c]→edi,
[eax+0x20]→ebp, [eax+0x24]→esp, [eax+0x18]→跳转目标`）—— 这是**上下文切换式混淆**，
不是解密输出。

## 4. 修正后的下一步（更精确）

1. 让 `ecx`/`edx` **同时非 0**再进蹦床（ATTEMPT A 里 ecx/edx 都是非 0，
   但 `ebb` 说明 `[esp+0x18]` 存的 `edx` 与后面读回的字段对不上 —— 需要把**栈上那个
   预置上下文结构**按 `0x673d` 的扫描规则摆好：`0x1024` 哨兵必须落在
   `esp-0xc` / `esp-0x8` 这类位置，使 `[eax+4]…[eax+0x28]` 正好覆盖 11 个字段）
2. 扫描规则已完全明确：`eax ← esp`；`cmp [eax], 0x1024`；不等则 `eax += 4` 继续；
   相等则把该槽清 0，然后从 `[eax+4]`…`[eax+0x28]` 读 10 个 dword 作为字段
   → **所以栈上必须在某个 4 字节对齐位置开始，按 `[sentinel][f1..f10]` 的布局摆好数据**
3. 摆对之后，解码器会把 40 字节结果写进它自己的输出缓冲，**在 `0x6cfc` 那条
   `mov [eax+ecx], esi` 上挂写断点即可截获**
4. 真正解密 DEX 的更可能入口仍是 `0x5da7`（主例程，内部会调 `makekey` 解字符串、
   读文件、循环处理）；ATTEMPT C 显示它起步就调 `lseek` / `strncmp` / `free` 后返回 0，
   说明它需要一个已打开的**文件描述符**参数 —— 下一步应先 trace 它前 40 条指令的寄存器

## 5. 本轮新增工具

| 工具 | 作用 |
|---|---|
| `work/tools/jiagu_probe_decoder.py` | 三种入口尝试（蹦床 / 手工哨兵帧 / 主例程），并在 heap 上挂写断点记录解码器写出的结构 |
| `work/tools/jiagu_trace_decoder.py` | 定点指令 trace（快照 eax/ebp/ecx/edx/esi/esp），用于判定提前返回分支 |

---

# 追加：模拟器拿到 `eax=0` 的根因 —— 360 把符号表打乱了

## 1. 追踪过程

`jiagu_run_decoder.py` 一直返回 `eax=0`，我逐层排掉了三个嫌疑：

| 嫌疑 | 结论 |
|---|---|
| 栈布局 / 哨兵位置不对 | **排除**。按 `locals = entry_esp - 0x3c` 摆好 `[0x1024][f1..f10]` 后，指令流走到了 `mov [esp],0x878` → `call 0xf50`，说明两条 `test` 和分配都过了 |
| stub 区太小、后面的符号落到映射外 | **确认是真 bug 并已修**（原 16 页 → 256 页，`jiagu_emu.py` 的 `_stub_page`） |
| PIC 基址算错 | **排除**。实测运行时 `ebx = 0x10009f48`，即 `BASE + 0x9f48`，与 `add ebx, IMM` 的链接期模型一致 |

排完之后，`eax` 是 0 的原因锁定在第 4 项：**被调用的"分配器"其实是 `operator delete`。**

## 2. 铁证：GOT 槽与符号名对不上

逐字节核对（`0xf50` 处原始字节 `ff a3 88 00 00 00`）：

```
0xf50:  jmp [ebx+0x88]        ; ebx = 0x10009f48  ->  槽 = 0x10009fd0
```

`.rel.plt` 对 `0x9fd0` 的标注是 **`_ZdlPv`**（`operator delete(void*)`）。
但 `0x670a` 处的用法铁定是分配器：

```asm
670a  mov  [esp], 0x878       ; 参数 = 大小
6715  call 0xf50              ; 分配 0x878 字节
671a  test eax, eax
671c  mov  ebp, eax
671e  je   0x6703             ; 分配失败 -> 提前返回 0
```

**一个"分配"调用却打到 `operator delete` 的槽上** —— 而同一张 `.rel.plt` 里
`operator new`（`_Znwj`）明明在 `0x9fb0`（对应的 thunk 是 `0xed0`）：

```
0x9fb0  JMP  _Znwj      <- thunk 0xed0
0x9fd0  JMP  _ZdlPv     <- thunk 0xf50   <-- 代码在这里要"分配"
0x9fd4  JMP  calloc     <- thunk 0xf60
0x9fe0  JMP  _ZdaPv     <- thunk 0xf90
```

→ 结论：**360 故意把 `.rel.plt` 的槽位顺序与符号名错开**，让静态看符号表的分析者
把 `operator new` / `operator delete` 认反。这也解释了为什么直接照符号名实现 stub
会得到 `eax=0` 并走提前返回分支。

## 3. 附带确认的一个重要干扰项：指令流是错位的

这段代码**不是**能线性反汇编的 —— 中间夹着数据，线性扫描会把后面的字节拼成假指令：

```
0xf4c  00 fe ff ff ff      ; 数据（0xfffffe00，ARM 标记）
0xf50  ff a3 88 00 00 00   ; jmp [ebx+0x88]      <- 真正执行的指令，边界对齐
0xf56  68 f8 00 00 00      ; push 0xf8
0xf5b  e9 f0 fd ff ff      ; jmp 0xfdc9  <- 越界，是垃圾
```

所以**只有从已知入口点开始的反汇编才可信**；用线性扫描得到的
"函数边界 / 调用关系"会被污染。这也解释了本轮早期把 `0xf50` 的地址算错 0x20 的插曲。

## 4. 下一步（已非常具体）

1. 在 stub 分派里**不信任符号名**：把 `_Znwj` / `_ZdlPv` / `calloc` / `_ZdaPv` 四个槽
   全部实现成同一个真正的分配器（或在运行期先试 `_Znwj` 语义、失败再试别槽），
   再跑一次，看是否走到 `0x673d` 的哨兵比对成功分支
2. 更稳的做法：**给 `.rel.plt` 的每个槽分配一个"类型"而不是"名字"**
   （分配 / 释放 / 文件IO / 调试检测 / 其它），由调用点的参数形态决定
   （例如 `mov [esp], <size>` + `call` 即判为分配）
3. 走到成功分支后，在 `0x6cfc`（`mov [eax+ecx], esi`，输出 40 字节处）挂写断点，
   截获解码结果；再回到 `0x5da7` 主例程确认 `.mips` 的输入路径
4. 若最终确认 `.mips` 不是直接由这段 VM 解出，则去 trace `0x5da7` 前 40 条指令的
   寄存器（它起步就调 `lseek` / `strncmp` / `free` 后返回 0，说明需要已打开的 fd 参数）

## 5. 本轮新增工具

| 工具 | 作用 |
|---|---|
| `work/tools/resolve_plt.py` | 解析每个 PLT thunk 的 `[ebx+disp]` → GOT 槽 → 符号 |
| `work/tools/check_got.py` | 导出运行时 GOT（含 `.rel.plt` 标注与 thunk 归属），可一眼看出槽位与名字错开 |
| `work/tools/probe_picbase.py` | 打印关键指令处的 `ebx`/`eax`/`esp`，确认 PIC 基址模型 |
| `work/tools/jiagu_run_decoder.py` | 按正确栈布局驱动解码器成功路径，并在 heap / arg 区挂写断点 |

---

# 追加：已成功驱动到字节码 VM（本轮实质性突破）

## 1. 卡了多轮的那个 clobber，找到了

```asm
66f7  lea  esp, [esp-0x2c]     ; locals base
670a  mov  [esp], 0x878        ; <<< 把 locals+0x00 写成分配大小！
6715  call 0xf50               ; 分配
673b  mov  eax, esp            ; 扫描从 locals+0x00 开始
673d  cmp  [eax], 0x1024
```

**`locals+0x00` 永远不可能放哨兵** —— 它在扫描前 60 字节就被 `mov [esp],0x878` 覆盖了。
这就是为什么之前每次都"哨兵找不到、一路扫出栈外崩掉"。

**修正：哨兵放在 `locals+0x04`。**

实测（`jiagu_decoder_final.py`）：

```
sentinel at 0x200f7fc8 (locals+0x04)
=== emulating ===
returned eax=0x0000009c        <- 干净返回，不再提前返回 0

--- checkpoints ---
00673d  eax=200f7fc4  cmp [eax], 0x1024    ; locals+0x00 -> 0x878，不匹配
006743                jne 0x67f2
00673d  eax=200f7fc8  cmp [eax], 0x1024    ; locals+0x04 -> 命中
006749                mov [eax], 0x0       ; 清零哨兵槽
006767  ecx=200f7fbc  lea esi, [eax-0x8]   ; ctx+0x828 = 输出缓冲指针
006770                mov ecx, [eax+0x4]   ; ctx+0x00
0067b0                mov eax, [eax+0x28]  ; ctx+0x24（读到 0xfffffff9 = -7）
006817  eax=30000838  mov esi, [ebp+0x804] ; <<< 进入字节码 VM 主循环
```

**`0x6817` 就是 VM 的解释循环入口**（与 §3 里 `jmp [eax*4+ebx-0x30b8]` 的 0x1d 项跳转表呼应）。

## 2. 由于哨兵前移 4 字节，11 个字段的相对偏移全部前移

| ctx 字段 | 从 `[sentinel]` 起算 | 从 `[sentinel+4]` 起算 |
|---|---|---|
| ctx+0x820 | `[s-0x0c]` | `[s-0x10]` |
| ctx+0x824 | `[s-0x0c]` | `[s-0x10]` |
| **ctx+0x828（输出缓冲）** | `[s-0x08]` | `[s-0x0c]` |
| ctx+0x828 | `[s-0x08]` | `[s-0x0c]` |
| ctx+0x00 … +0x24 | `[s+0x04]` … `[s+0x28]` | `[s+0x00]` … `[s+0x24]` |

## 3. 现在唯一没对齐的地方：VM 的输出缓冲

把 `[s-0x08]`（按旧偏移算的输出缓冲）设成 `0x40100000` 并预先填 `0xAA` 标记，
VM 跑完后该处**一个字节都没被写**，函数返回 `eax=0x9c`（156）。

两种可能：

1. 输出缓冲的槽位还要再前移 4 字节（即 `[s-0x0c]`），我给的指针被当成了别的字段
2. `0x9c` 是某种状态码，VM 需要**多次调用**（每次处理一块）才产出完整结果
   —— 注意 `ctx+0x24` 被读成 `-7`，`[ebp+0x804]` 与 `[ebp+0x80c]`（长度）在 `0x6817`
   处共同决定循环，像是"剩余字节数"的语义

## 4. 下一步（很短）

1. 把两个候选输出槽（`[s-0x08]` 与 `[s-0x0c]`）**各试一次**，并在 `0x6cfc`
   （`mov [eax+ecx], esi`，复制 40 字节处）与 `0x6817` 之后的写指令上挂写断点，
   直接看 VM 往哪个地址写
2. 确认 VM 是否需要在 `0x6817` 处循环：给 `count=50_000_000` 已跑完，说明它自行退出了；
   检查 `eax=0x9c` 是否被当作"还需继续"的信号，尝试循环调用直到 `eax==0`
3. 若 VM 的输入确实取自 `.mips`，则输出必然是一个 DEX 头（`64 65 78 0a`）；
   在 Unicorn 里对 `HEAP_BASE..HEAP_BASE+HEAP_SIZE` 与 `ARG_BASE` 全区挂写断点，
   用 `dex\n` 魔数扫描即可定位

## 5. 本轮新增/更新的工具

| 工具 | 作用 |
|---|---|
| `work/tools/jiagu_decoder_final.py` | **当前最接近成功的驱动脚本**：哨兵放 `locals+0x04`，能进入 VM 并干净返回 |
| `work/tools/jiagu_catch_sentinel.py` | 用写断点抓出"谁覆盖了哨兵槽"，是定位 clobber 的关键手段 |
| `work/tools/jiagu_sentinel_dbg.py` | 打印扫描过程中每次 `cmp [eax],0x1024` 的 `eax` 与实际值 |
| `work/tools/jiagu_force_alloc.py` | 强制所有内存管理 stub 走分配语义（绕开被 360 打乱的 `.rel.plt` 槽位映射） |
| `work/tools/jiagu_emu.py` | stub 区从 16 页扩到 256 页（原大小会让后面的符号落到映射外） |

---

# 追加：VM 已进入并完成特征刻画（含一处重要更正）

## 1. 成功进入 VM 的完整现场

`jiagu_decoder_final.py` 用哨兵放 `locals+0x04` 的方式，把函数从入口一路带到 VM：

```
00673d  eax=200f7fc4  cmp [eax], 0x1024    ; locals+0x00 = 0x878，不匹配
006743                jne 0x67f2
00673d  eax=200f7fc8  cmp [eax], 0x1024    ; locals+0x04 命中
006749                mov [eax], 0x0       ; 清零哨兵槽
006767                lea esi, [eax-0x8]   ; ctx+0x828 = 通用缓冲指针
006770                mov ecx, [eax+0x4]   ; ctx+0x00
0067b0                mov eax, [eax+0x28]  ; ctx+0x24（实测 -7）
006817  eax=30000838  mov esi, [ebp+0x804] ; <<< VM 解释循环入口
returned eax=0x0000009c
```

## 2. VM 的内核循环（实测热区）

```
006829  mov   edi, [ebp+0x808]     ; 输入缓冲基址
00682f  movzx eax, [esi+edi]       ; 取一个字节：eax = inbuf[esi]
006833  mov   [ebp+0x834], al      ; 存到 ctx+0x834
006839  cmp   al, 0x1d  / ja 0x6829   ; 字节 > 0x1d 就重新取同一个字节
00683d  mov   eax, [eax*4 + ebx - 0x30b8]
006844  add   eax, ebx
006846  jmp   eax                  ; 0x1d 项算子表跳转
```

**实测计数**：`0x6829` 被执行 **3,999,876 次**，其余算子代码一次都没进 —— 因为取到的字节
是 `0x00`（见下），`ja` 分支每次都走，于是空转到指令上限。

## 3. 一处重要更正：VM 的输入**不是** `.mips`

先前推断"VM 直接解析 `.mips` 密文"是**错的**。实测现场：

```
loop state at 0x6829: esi=0x0  edi=0x30000878  ebp=0x30000000
   -> 读取地址 = esi + edi = 0x30000878
   -> 该处 16 字节全为 0x00
ctx+0x808 = 0x40001000   (输入缓冲 = 我传入的 .mips，匹配)
ctx+0x80c = 0x00064018   (长度 = .mips 大小，匹配)
```

也就是说：`ctx+0x808/0x80c` 确实指向我传入的 `.mips`，但 VM 在第一次取指时
**`esi` 已经越过了 `ctx+0x878` 上下文块的尾部**（`edi = 0x30000878`，而块只有 `0x878` 字节），
所以它读到的是块外的零字节。

→ 说明 VM 的**程序流指针**（`esi`）不是靠我摆的那 10 个字段建立的，而是由
`ctx+0x820` / `ctx+0x824` / `ctx+0x828` 三个字段（在 `0x674f`..`0x6767` 处初始化）
决定。我把它们都指向了同一个缓冲区，导致程序计数器落到了块的末尾。

## 4. 三个字段的真实语义（现在可以基本确定）

| ctx 字段 | 初始化代码 | 语义 |
|---|---|---|
| `ctx+0x820` | `lea ecx, [found-0xc]; mov [ebp+0x820], ecx` | 指向一个 4 字节槽，收尾时 `mov [eax], ecx` 写入 |
| `ctx+0x824` | `mov esi, [found-0xc]; mov [ebp+0x824], esi` | 该槽的初始值 |
| `ctx+0x828` | `lea esi, [found-0x8]; mov [ebp+0x828], esi` | **输出/结果缓冲**（收尾时从这里复制 40 字节并返回） |
| `ctx+0x804` | 变化中（`0x6817` 处读入 `esi`） | VM 的程序计数器 / 当前位置 |
| `ctx+0x808` | 入参 ecx（`mov [ebp+0x808], esi` @ `0x672f`） | **输入缓冲基址** |
| `ctx+0x80c` | 入参 edx（`mov [ebp+0x80c], edx` @ `0x6735`） | **输入长度** |
| `ctx+0x834` | 当前操作码字节 | 分派用 |

注意 `0x820` / `0x824` / `0x828` 全部来自 `[found-0x0c]` 与 `[found-0x8]` —— 即
**哨兵前两个 dword**，而不是哨兵后面的字段。真正需要摆对的是**哨兵之前**的这两个槽，
它们各自应当指向一个独立的、可写的 4 字节/缓冲结构。

## 5. 下一步（已经非常具体）

1. 把 `[found-0x0c]` 指向一块**独立的 4 字节可写内存**（不是 outbuf），
   `[found-0x8]` 指向一块**独立的输出缓冲**；两者与 `inbuf` 分开
2. 观察 `ctx+0x804` 的初值 —— 它决定 VM 从输入缓冲的哪个偏移开始取指；
   如果它是 0，VM 就会从 `inbuf[0]` 开始，而 `inbuf[0]` 是 `.mips` 的密文首字节 `0x9c`，
   同样大于 `0x1d`，所以还需要一个**真正的 VM 程序**（很可能就是
   `.rodata+0x12c` 那张 `0x1d` 项算子表所在区域，即 `0x6e90` 起、用 `0xa5` 解出的那张表）
3. 也就是说：**VM 的程序字节码 = `.rodata` 尾部那段 0xa5 混淆数据**，
   输入数据才是 `.mips`。下一步应把 `inbuf` 设为解混淆后的 `0x6e90` 段，
   而把 `.mips` 放到 `.mips` 该去的数据槽
4. 这解释了 §4 里"`__arm_a_21` 从 `ebx-0x2ffc/0x2fe8` 加载两段 19 字节"的行为 ——
   它是在准备 VM 的上下文，而非解密密钥

## 6. 本轮新增工具

| 工具 | 作用 |
|---|---|
| `work/tools/jiagu_find_output.py` | 全窗口写断点 + DEX/ZIP/ELF 魔数扫描，定位 VM 真实输出位置 |
| `work/tools/jiagu_vm_trace.py` | 统计 `.engine` 节的热点指令，直接暴露 VM 内核循环 |

---

# 追加（决定性）：`.rodata+0x12c` 是跳转表，不是字节码；VM 起步位置仍未对齐

## 1. 一次干净的判决性实验

把 `.rodata+0x12c`（`0x6e90`，430 字节）当作 VM 程序、`.mips` 当作数据送进去，
分别用**原始字节**和**0xa5 解混淆后**两种版本各跑一次：

| 送入的"程序"首字节 | 返回值 `eax` | 热点指令计数 |
|---|---|---|
| `0x8e`（原始 `.rodata`） | **`0x8e`** | `0x6829` 执行 3,999,876 次 |
| `0x2b`（`^0xa5` 解混淆） | **`0x2b`** | 同上 |

**返回值恰好等于第一个字节** —— 这证明 VM 一进门就命中 `cmp al,0x1d / ja 0x6829`
的"字节超出算子表"分支，无限重试同一个字节直到指令上限，然后把这个字节当作返回值返回。

## 2. 由此得到的两个确定结论

### (a) `.rodata+0x12c` 是**跳转表**，不是字节码

它的结构是**每 4 字节一组的小端相对偏移**：

```
原始字节        : 8e cd ff ff  e1 c8 ff ff  e1 c8 ff ff ...
按 dword 解释   : -0x3272      -0x371f      -0x371f
```

这正是 `0x683d` 那条指令要的东西：

```asm
683d  mov eax, [eax*4 + ebx - 0x30b8]   ; ebx-0x30b8 = 0x9f48-0x30b8 = 0x6e90
6844  add eax, ebx                       ; 转成绝对地址
6846  jmp eax                            ; 分派
```

也就是说：**跳转表在 `0x6e90`，表项基址就是 `0x6e90`，共 0x1d 项**。
（本轮早期用线性反汇编把这段数据误读成".rodata 里的字节码表"，现予更正。）

### (b) VM 的**程序流指针**不是靠哨兵后面的 10 字段块建立的

`0x6829` 处的 `esi` 始终是 0（实测 `esi=0x0, edi=<缓冲区基址>`），
说明指令流位置由 `ctx+0x820` / `ctx+0x824` 这一对字段决定，而不是 `ctx+0x00` 附近的字段。

回顾初始化代码：

```asm
6749  mov [eax], 0                     ; 清零哨兵槽
674f  lea ecx, [eax-0xc]
6752  mov [ebp+0x820], ecx             ; ctx+0x820 = &[sentinel-0xc]
6758  mov esi, [eax-0xc]               ; esi = [sentinel-0xc] 的**内容**
675b  mov [ebp+0x82c], ecx
6761  mov [ebp+0x824], esi             ; ctx+0x824 = 那个内容
6767  lea esi, [eax-0x8]
676a  mov [ebp+0x828], esi             ; ctx+0x828 = &[sentinel-0x8]
```

注意 `0x6758`：它把 `[sentinel-0xc]` 的**内容**（不是地址）存进 `ctx+0x824`。
我把 `[sentinel-0xc]` 设成了一个地址常量，于是 `ctx+0x824` = 那个地址，
而 VM 大概把 `ctx+0x824` 当作**程序计数器初值**去用 —— 如果它期望的是一个**偏移**而不是指针，
那么 `esi` 就会从一个巨大的值开始（实测确实 `esi` 落在缓冲区之外）。

## 3. 因此下一步只需试两个值

`ctx+0x824` 的初值来自 `[sentinel-0xc]` 的内容。VM 的 `esi` 是"加到 `edi`（缓冲区基址）上的量"，
所以 `[sentinel-0xc]` 应当是一个**小偏移**，而不是指针。下一次实验：

1. 用**解混淆后的 `.rodata+0x12c` 段**作为 VM 程序，`[sentinel-0xc] = 0`（偏移 0）
2. 若不行，令 `[sentinel-0xc] = 0x1d` 起跳（跳过跳转表本身），
   并把真正的指令流放在那之后 —— 很可能紧邻跳转表的就是用 `0xa5` 解出的指令字节
3. 判定标准：热点不再集中在 `0x6829`，而是散布到 `0x6849`..`0x6ce2` 的各个算子处理块

这一步做完基本就能确定 VM 的字节码格式，进而把它跑完拿到输出。

## 4. 本轮新增工具

| 工具 | 作用 |
|---|---|
| `work/tools/jiagu_vm_program.py` | 把任意候选数据当作 VM 程序送入，支持 `--deobf` 用 0xa5 解混淆；输出热点指令分布与返回值 |
