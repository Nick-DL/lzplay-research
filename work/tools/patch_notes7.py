#!/usr/bin/env python3
"""Append the round-8 findings (VM entered and characterised) to the notes."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'work', 'UNPACKING-NOTES.md')

ADD = u'''

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
'''

t = io.open(P, encoding='utf-8').read()
marker = u'VM \u5df2\u8fdb\u5165\u5e76\u5b8c\u6210\u7279\u5f81\u523b\u753b'
if marker in t:
    print('notes: round-8 section already present')
else:
    io.open(P, 'w', encoding='utf-8', newline='\n').write(t.rstrip('\n') + ADD)
    print('notes: appended %d chars' % len(ADD))
raw = io.open(P, 'rb').read()
io.open(P, encoding='utf-8').read()
print('notes: %d bytes, utf8 OK, bom=%s' % (len(raw), raw[:3] == b'\xef\xbb\xbf'))
