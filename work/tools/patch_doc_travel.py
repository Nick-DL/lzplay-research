#!/usr/bin/env python3
"""Append the recursive-stack discovery to the travel-app analysis."""
import io, os

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
P = os.path.join(BASE, 'TRAVEL-运行原理与安装循环剖析.md')

ADD = u'''

---

## 七、补充：递归环的实证

修掉 `InstallHelper.uninstall`（补丁 4）之后，设备上暴露出**下一处**裸调用，
而且这一份栈把整个调用环完整画了出来：

```
java.lang.SecurityException: Does not hava application management permission.:
    Neither user 10362 nor current process has
    com.huawei.permission.sec.MDM_APP_MANAGEMENT.

  at huawei.android.app.admin.TransactionSponsor.transactToExecCommand(…:166)
  at huawei…HwDevicePolicyManagerEx.installPackage(…:251)
  at com.huawei…DevicePackageManager.installPackage(…:69)
  at com.x.plus.pro.e.c.a(InstallHelper.java:120)        ← 裸调用（install）
  at com.x.plus.pro.e.b.j(InitializeManager.java:317)
  at com.x.plus.pro.e.b.d(InitializeManager.java:299)
  at com.x.plus.pro.e.b.i(InitializeManager.java:253)
  at com.x.plus.pro.e.b.m(InitializeManager.java:394)
  at com.x.plus.pro.e.b.a(InitializeManager.java:433)
  at com.x.plus.pro.e.c.b(InstallHelper.java:163)
  at com.x.plus.pro.e.b.i(InitializeManager.java:258)     ┐
  at com.x.plus.pro.e.b.m(InitializeManager.java:394)     │
  at com.x.plus.pro.e.b.a(InitializeManager.java:433)     │ 同一个环
  at com.x.plus.pro.e.c.b(InstallHelper.java:163)         │ 重复出现
  at com.x.plus.pro.e.b.i(InitializeManager.java:258)     ┘
  …
```

### 读法

```
                ┌──────────────────────────────────────────┐
                ↓                                          │
   InitializeManager.i()  ──→  .m()  ──→  .a()  ──→  InstallHelper.b()
        (装/卸队列驱动)      (状态判定)   (上报结果)     (完成回调)
                ↑                                          │
                └──────────────────────────────────────────┘
```

`i()` 每轮从队列取出一个包 → 判定 → 让 `InstallHelper` 去装/卸 →
`InstallHelper` 完成后回调 `InitializeManager.a()` → 又驱动 `i()` 处理下一个包。

**这既是正常的工作循环，也是崩溃的放大器**：因为 `InstallHelper` 里
装/卸都是裸调华为 MDM，循环每绕一圈就逼近下一处未保护的调用，
直到某一次参数走到 `installPackage` 而直接抛出 `SecurityException`。

### 结论

`MDM_APP_MANAGEMENT` 缺失不仅让**装/卸**失败，还让整个**状态机无法推进** ——
因为每一次尝试都以异常终止，队列头部那个包永远处理不掉，
`m()` 重新判定时看到的依然是"未装/版本不符"，于是 `c(1)` → 循环。
这就是"看不到尽头"的机械原因。

---

## 八、补丁清单（最终）

| # | 位置 | 改动 | 脚本 | 状态 |
|---|---|---|---|---|
| 1 | `f/h;->a(Context)Z` | 恒 true | `patch_travel.py` | ✅ 已验证 |
| 2 | `a/a$1;->a()V` | 改调 `b()V` | `patch_travel2.py` | ✅ 已验证 |
| 3 | `ApkInfo;->a(Context)V` | `SDK_INT` → 常量 29 | `patch_travel3.py` | ✅ 已验证 |
| 4 | `e/c;->b(String)V` | `if-eqz` → `goto`（卸载走安全分支） | `patch_travel4.py` | ✅ 已验证 |
| 5 | `e/c;->a(String)V` | 华为 `installPackage` → `ACTION_VIEW` Intent | `patch_travel5.py` | ⚠️ 已写入 smali 并重建，但设备上仍走到华为分支 |

补丁 5 的状态需要说明：smali 已确认改对（`:cond_0` 分支已替换成标准安装 Intent，
`SDK_INT` 读取已替换为常量 29），重建也成功，但设备实测仍在
`InstallHelper.java:120` 处抛 `MDM_APP_MANAGEMENT`。
说明该分支的条件判定和我预期的不一致 —— 需要进一步核对 `if-le` 的实际语义
（可能 `if-le` 在这里是"小于等于则**不**跳转"或常量寄存器顺序与我算的相反）。

**下一步只需把这一处判定反过来**（或直接把 `installPackage` 那两句 `invoke-virtual`
换成 `nop`，让死代码真正不可达），安装流程就能走到系统安装器。

### 已确认可用的备份

```
work/travel_backup/
  h.smali.orig                (补丁 1 前)
  a$1.smali.pass2.orig        (补丁 2 前)
  ApkInfo.smali.pass3.orig    (补丁 3 前)
  e_c.smali.pass4.orig        (补丁 4 前)
  e_c.smali.pass5.orig        (补丁 5 前)
  b.smali.orig                (另一处 getPersistentApp 未改动，仅备份)
```
'''

t = io.open(P, encoding='utf-8').read()
marker = u'\u9012\u5f52\u73af\u7684\u5b9e\u8bc1'
if marker in t:
    print('already appended')
else:
    io.open(P, 'w', encoding='utf-8', newline='\n').write(t.rstrip('\n') + ADD)
    print('appended %d chars' % len(ADD))
print('size:', os.path.getsize(P))
