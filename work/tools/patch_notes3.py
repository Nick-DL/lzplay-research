#!/usr/bin/env python3
"""Append the round-4 unpacking findings to work/UNPACKING-NOTES.md (UTF-8 exact)."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'work', 'UNPACKING-NOTES.md')

ADD = u'''

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
'''

t = io.open(P, encoding='utf-8').read()
if u'makekey' in t and u'\u4e0d\u662f\u5bc6\u94a5\u6d3e\u751f' in t:
    print('notes: already contain the makekey correction')
else:
    io.open(P, 'w', encoding='utf-8', newline='\n').write(t.rstrip('\n') + ADD)
    print('notes: appended %d chars' % len(ADD))
raw = io.open(P, 'rb').read()
io.open(P, encoding='utf-8').read()
print('notes: %d bytes, utf8 OK, bom=%s' % (len(raw), raw[:3] == b'\xef\xbb\xbf'))
