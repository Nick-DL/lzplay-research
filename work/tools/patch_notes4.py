#!/usr/bin/env python3
"""Append the round-5 decoder-entry findings to the unpacking notes."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'work', 'UNPACKING-NOTES.md')

ADD = u'''

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
'''

t = io.open(P, encoding='utf-8').read()
marker = u'\u89e3\u7801\u5668\u5165\u53e3\u7684\u7cbe\u786e\u7ea6\u675f'
if marker in t:
    print('notes: round-5 section already present')
else:
    io.open(P, 'w', encoding='utf-8', newline='\n').write(t.rstrip('\n') + ADD)
    print('notes: appended %d chars' % len(ADD))
raw = io.open(P, 'rb').read()
io.open(P, encoding='utf-8').read()
print('notes: %d bytes, utf8 OK, bom=%s' % (len(raw), raw[:3] == b'\xef\xbb\xbf'))
