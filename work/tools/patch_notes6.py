#!/usr/bin/env python3
"""Append the round-7 findings (decoder now reaches the bytecode VM) to the notes."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'work', 'UNPACKING-NOTES.md')

ADD = u'''

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
   用 `dex\\n` 魔数扫描即可定位

## 5. 本轮新增/更新的工具

| 工具 | 作用 |
|---|---|
| `work/tools/jiagu_decoder_final.py` | **当前最接近成功的驱动脚本**：哨兵放 `locals+0x04`，能进入 VM 并干净返回 |
| `work/tools/jiagu_catch_sentinel.py` | 用写断点抓出"谁覆盖了哨兵槽"，是定位 clobber 的关键手段 |
| `work/tools/jiagu_sentinel_dbg.py` | 打印扫描过程中每次 `cmp [eax],0x1024` 的 `eax` 与实际值 |
| `work/tools/jiagu_force_alloc.py` | 强制所有内存管理 stub 走分配语义（绕开被 360 打乱的 `.rel.plt` 槽位映射） |
| `work/tools/jiagu_emu.py` | stub 区从 16 页扩到 256 页（原大小会让后面的符号落到映射外） |
'''

t = io.open(P, encoding='utf-8').read()
marker = u'\u5df2\u6210\u529f\u9a71\u52a8\u5230\u5b57\u8282\u7801 VM'
if marker in t:
    print('notes: round-7 section already present')
else:
    io.open(P, 'w', encoding='utf-8', newline='\n').write(t.rstrip('\n') + ADD)
    print('notes: appended %d chars' % len(ADD))
raw = io.open(P, 'rb').read()
io.open(P, encoding='utf-8').read()
print('notes: %d bytes, utf8 OK, bom=%s' % (len(raw), raw[:3] == b'\xef\xbb\xbf'))
