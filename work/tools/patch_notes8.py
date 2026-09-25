#!/usr/bin/env python3
"""Append the definitive round-8 conclusion to the unpacking notes."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'work', 'UNPACKING-NOTES.md')

ADD = u'''

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
'''

t = io.open(P, encoding='utf-8').read()
marker = u'\u8df3\u8f6c\u8868\uff0c\u4e0d\u662f\u5b57\u8282\u7801'
if marker in t:
    print('notes: final section already present')
else:
    io.open(P, 'w', encoding='utf-8', newline='\n').write(t.rstrip('\n') + ADD)
    print('notes: appended %d chars' % len(ADD))
raw = io.open(P, 'rb').read()
io.open(P, encoding='utf-8').read()
print('notes: %d bytes, utf8 OK, bom=%s' % (len(raw), raw[:3] == b'\xef\xbb\xbf'))
