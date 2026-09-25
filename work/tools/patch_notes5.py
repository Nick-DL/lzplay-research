#!/usr/bin/env python3
"""Append the round-6 findings (shuffled symbol table) to the unpacking notes."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'work', 'UNPACKING-NOTES.md')

ADD = u'''

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
'''

t = io.open(P, encoding='utf-8').read()
marker = u'\u7b26\u53f7\u8868\u6253\u4e71'
if marker in t:
    print('notes: round-6 section already present')
else:
    io.open(P, 'w', encoding='utf-8', newline='\n').write(t.rstrip('\n') + ADD)
    print('notes: appended %d chars' % len(ADD))
raw = io.open(P, 'rb').read()
io.open(P, encoding='utf-8').read()
print('notes: %d bytes, utf8 OK, bom=%s' % (len(raw), raw[:3] == b'\xef\xbb\xbf'))
