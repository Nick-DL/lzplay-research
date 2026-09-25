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

已验证：`.compiler` 偏移 +0x4 是合法 zlib 流，解出 54,452 字节 ARM ELF，内含
`-Ximage:/data/dalvik-cache/system@framework@boot.art`、`-compiler-filter:interpret-only`。
→ 说明 360 不修改系统 ART，而是**自带一个 ART 实例**加载解密后的 DEX。

`.rodata` 字符串（x86 版，730 字节全部导出）：

```
/proc/self/maps            ← 自定位 + 反调试
/system/lib/libz.so
libz.so / uncompress       ← 用 zlib 解压
libmono.so / dladdr / dl_iterate_phdr / libdl.so / dlopen / dlsym / dlclose
function / DT_INIT / DT_INIT_ARRAY / DT_FINI_ARRAY / DT_FINI
ro.build.version.sdk
*.so
libstl_compiler.so
makekey                    ← 密钥派生函数名
getSoName
strcmp
libjiagu
JNI_OnLoad
```

### 2. 导出符号（x86 版动态符号表，71 项）

| 符号 | 地址 | 大小 | 推测用途 |
|---|---|---|---|
| `JNI_OnLoad` | 0x666b | 123 | 入口 |
| `__fun_a_18(unsigned char*, unsigned)` | 0x66e6 | 1,594 | **核心解码器**（`.engine` 节） |
| `__arm_a_1(JavaVM*, JNIEnv*, void*, int&)` | 0x63ea | 641 | 初始化 |
| `__arm_a_2(char*, char*, ...)` | 0x5f49 | 209 | |
| `__arm_a_20` / `__arm_a_21` | 0x5c13 / 0x5b6c | 404 / 167 | |
| `__arm_c_1::__arm_c_0()` | 0x5312 | 895 | |
| `strcmp` | 0x6312 | 138 | 被重写过的 strcmp |

导入函数里有一整组反调试/反注入：`prctl`、`getpid`、`kill`、`raise`、`signal`、
`sigaction`、`sigprocmask`、`select`、`inotify_init`、`inotify_add_watch`、`opendir`、
`readdir`、`closedir`、`dl_iterate_phdr`、`dladdr`、`/proc/self/maps`。

### 3. Unicorn 模拟环境已搭好

`work/tools/jiagu_emu.py` + `work/tools/elfload32.py`：

- 按 `PT_LOAD` 映射段（vaddr == file offset，本库是 identity mapping）
- 解析 `.rel.dyn` / `.rel.plt`，应用 `R_386_RELATIVE`(8) / `R_386_GLOB_DAT`(6) /
  `R_386_JMP_SLOT`(7) / `R_386_32`(1)
- 把每个外部符号重定向到自动生成的 stub，stub 里拦截并模拟 libc：
  `malloc/calloc/free/memcpy/memset/memcmp/strcmp/strlen/strstr/strncpy/atoi/strtol`
  `fopen/fgets/fclose/fread/fwrite/fseek/ftell/open/read/lseek/close/mmap/munmap/mprotect`
  `dlopen/dlsym/dlclose/dl_iterate_phdr/dladdr`
  `__system_property_get`（对 `ro.build.version.sdk` 返回 "28"）
  `prctl/getpid/raise/kill/signal/sigaction/sigprocmask/select/inotify_*`
  `pthread_create`（**内联同步执行线程函数**，保证确定性）
- 已验证可以寻址并调用所有导出函数（`__fun_a_18`、`JNI_OnLoad`、`__arm_a_1`）

## 卡点

`__fun_a_18` **不使用标准 cdecl**。反汇编显示它是 `regparm` 风格：

```
66e6  push ebp / push edi / push esi
66e9  mov esi, ecx          ← 参数通过 ecx / edx 传入
66eb  push ebx
66ec  call 0x10b0           ← __x86.get_pc_thunk.bx
66f1  add ebx, 0x3857       ← PIC base
66f7  lea esp, [esp-0x2c]
66fb  test ecx, ecx         ← 检查参数
66fd  je 0x6703
66ff  test edx, edx
6701  jne 0x670a
6703  xor eax, eax / jmp 0x6d17     ← 提前返回 0
670a  mov [esp], 0x878              ← 申请 0x878 字节
6715  call 0xf50                    ← 分配器
...
673b  mov eax, esp
673d  cmp [eax], 0x1024             ← 在栈上搜索 sentinel 0x1024
6743  jne 0x67f2                    ← 找不到就 eax+=4 继续找
```

`0x1024` 这个 sentinel 在栈上扫描，说明**解码上下文是通过栈传递的一个结构体**，
而不是普通参数。直接用 `ecx=payload, edx=len` 调用会走到 `6703` 提前返回。

### 下一步该做什么

1. **不要猜调用约定，去找真实调用点**：在 `.text` 里搜索 `call 0x66e6`，把调用点前面的
   寄存器/栈准备指令还原出来。库自身一定有调用它的地方（`.engine` 就是它）。
2. 用 Unicorn 的 `UC_HOOK_CODE` 记录调用点前 40 条指令的执行轨迹（记 eax/ebx/ecx/edx/esp），
   从真实运行路径反推那个 `0x1024` 上下文结构体的构造方式。
3. 那个上下文结构体有 11 个 dword 字段（`[eax+4]` … `[eax+0x28]`），且 `[eax+0x28] += 0x600`，
   看起来是"输入缓冲区指针 / 输入长度 / 输出缓冲区指针 / 输出长度 / 状态"这一类的编解码上下文。
4. 若上下文必须由 `JNI_OnLoad` → `__arm_a_1` 链路构造，那就得给 `JNI_OnLoad` 一个可用的
   假 `JavaVM`（实现 `GetEnv` 等 3~4 个函数指针即可，哈希表顺序：`JNI_OnLoad` 里用
   `[eax+0x18]` 调用，即 vtable 第 7 项）。

## 复现

```powershell
# 解出 base64+gzip 副本（火绒会查杀原始的 .so）
python -c "import base64,gzip;open('work/native/an/lj_x86.bin','wb').write(gzip.decompress(base64.b64decode(open('work/native/libjiagu_x86.so.b64.gz','rb').read())))"

# 用现成的 ELF 解析器看结构
python work/tools/elfload32.py work/native/libjiagu_x86.so.b64.gz

# 跑 Unicorn harness
python work/tools/jiagu_emu.py work/native/libjiagu_x86.so.b64.gz
```

依赖：`unicorn`（已解包在 `work/pylibs`，用 `sys.path.insert` 引入，未安装到系统 Python）。
