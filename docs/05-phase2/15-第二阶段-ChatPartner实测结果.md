# Chat Partner 实测（第二阶段）—— 结果与一个未解的矛盾

> 本轮做了原版 Chat Partner 的真机实测，**推翻了一个假设，也留下一个矛盾**。

---

## 一、实测条件

| 项 | 值 |
|---|---|
| 设备 | Mate50 Pro `DCO-AL00` / Android 12 / SDK 31 / 未 root |
| 时钟 | `2019-10-01 09:31`（CER 窗口内，`auto_time=0`） |
| `com.google.android.gms` | ❌ **已卸载**（关键：制造零状态） |
| `gsf` / `vending` / `contacts-sync` | ❌ 已卸载 |
| Chat Partner | 装的是**原版**（`work/originals/chatpartner.apk`，未改动） |

---

## 二、结果一：原版 Chat Partner **不崩溃**

```
pm clear com.tyq.pro → 启动

t+  5s 存活=True  com.tyq.pro/com.qiyetong.pro.SplashActivity
t+ 10s 存活=True  com.tyq.pro/com.qiyetong.pro.SplashActivity
...
t+ 90s 存活=True  com.tyq.pro/com.qiyetong.pro.SplashActivity

crash 缓冲区里没有 com.tyq.pro   ✅
进程: com.tyq.pro  +  com.tyq.pro:update  （两个都活着）
```

**对比旅游必备**：GMS 全部卸载后**仍在启动时 OOM 崩溃**（09:08 实测）。

⇒ **两个 App 在相同条件下行为不同** —— 这是本轮最有价值的事实。

---

## 三、结果二：它**卡在启动页**，因为死服务器

它在等 `http://api.chat-kingdom.com/index.php/upgrade/checkinfo/` 的响应。

证据是它自己缓存下来的请求记录
（`/sdcard/Android/data/com.tyq.pro/cache/dotCache.txt`）：

```json
1569893540595 = {
  "uuid":"653f24e1977920d7", "brand":"HUAWEI", "model":"DCO-AL00",
  "os":"Android", "os_version":31, "product":"Chat",
  "version_code":"1806", "version_name":"18.06",
  "data":"{\"time\":\"1569893540184\",\"id\":\"splash\"}",
  "time":"1569893540186",
  "sign":"786aa8c745073cad4b95700a8699300c"
}
```

**这个文件本身很有价值** —— 它是"请求签名 + 请求体"的真实样本，
可用于验证我们对协议的理解（`sign` 的构造方式）。

### 缓存目录的差异（解释了行为差异的一部分）

| | 缓存根目录 | 实测 |
|---|---|---|
| 旅游必备 | SDK>28 → `getCacheDir()+"/file"`（**内部**） | `/sdcard/Android/data/com.qiyecomm` **不存在** |
| Chat Partner | `getExternalCacheDir()`（**外部**） | `/sdcard/Android/data/com.tyq.pro/cache/` **存在**，含 `dotCache.txt` |

---

## 四、结果三：**CER 验签失败，拿不到 MDM 特权**

```
09:31:58.272  E HwCertificationManager: HC_VC error error tag is Signature
09:31:58.272  E HwCertificationManager: verify cert failed!
09:31:58.272  E HwCertificationManager: check HwCertification error, cert is null!
```

MDM 授权结果：

```
com.huawei.permission.sec.MDM_INSTALL_SYS_APP            false
com.huawei.permission.sec.MDM_INSTALL_UNDETACHABLE_APP   false
com.huawei.permission.sec.MDM                          true
com.huawei.permission.sec.MDM_APP_MANAGEMENT           false
com.huawei.systemmanager.permission.ACCESS_INTERFACE   false
```

**⇒ 即使在 2019 时钟下，原版 Chat Partner 也拿不到 MDM 特权。**

**这与我早先在平板上的发现一致** —— 同一个包、同一份 CER
（`sha256=20a491d88b069a5d`），在平板和 Mate50 上都**卡在 `Signature` 校验**，
而旅游必备的 CER 在两台设备上都能通过。

**⇒ 这份 CER 在 HarmonyOS 4.2 上就是验不过。** 不是设备问题。

**⇒ Chat Partner 的特权安装路径（`DevicePackageManager.installPackage`，两个分支都是）**
**在授权失败时是不可用的。**

---

## 五、⚠️ 一个未解的矛盾（如实记录）

### 两边的写法在语义上**是等价的**

反编译对照：

| | 取 versionCode | 取 versionName | 取 sourceDir（APK 路径） |
|---|---|---|---|
| **旅游必备** `com/x/plus/pro/f/i` | `d()` | `e()` | **`f()`** |
| **Chat Partner** `c/s/a/j/l` | `e()` | `f()` | **`b()`** |

构造请求体时：

```java
// 旅游必备  UpdateImp.e(Context)
md5 = FileUtil.b( PackageUtil.f(ctx, pkgName) );    // f() = sourceDir，对

// Chat Partner  UpdateEngine.e(Context)   （c/s/a/i/e.smali 行 1503-1512）
md5 = PackageUtil.b( ctx, pkgName );                // b() 内部用 sourceDir，也对
```

**⇒ 两者都是"取已安装 APK 的路径 → 算 MD5"。写法没有 bug。**

### 但行为不同

| | GMS 未安装时 |
|---|---|
| 旅游必备 | ❌ **崩溃**（OOM，在 `UpdateImp.e()` 里） |
| Chat Partner | ✅ **不崩** |

**同样的逻辑、同样的 `FileUtil` 实现、同样大小的目标文件（Chat Partner 的 GMS 还更大），
结果却不同。这个矛盾我暂时解释不了。**

### 可能的方向（未验证）

1. **循环里对 `PackageUtil` 返回值做了空判断** —— 若某个包未安装返回空串，
   `FileUtil.b("")` 会提前返回 null；但旅游必备那边看起来也应该如此
2. **旅游必备的 `i.f()` 在包未安装时抛异常而非返回空**，导致行为不同
3. **`UpdateImp.e()` 里遍历的集合不同** —— 旅游必备遍历的是**清单里的 5 个包**，
   Chat Partner 遍历的可能是**另一个（更小的）列表**
4. **崩溃可能发生在别处** —— 虽然栈显示 `UpdateImp.e():146`，
   但需确认那一行对应的确实是 MD5 调用

**⚠️ 早先的笔记里曾把旅游必备的 `f()` 记为 `getApplicationInfo().sourceDir`，
这与本次对照一致。但当时又描述为"`PackageUtil.f` 返回已装 APK 的路径"，
两者其实是同一件事 —— 记录无误，是我的推断有误。**

---

## 六、对整体路线的影响

### ❌ Chat Partner 这条路走不通

```
原版 Chat Partner 不崩 ✅
        ↓
但 CER 验签失败 ⇒ 无 MDM 特权 ⇒ installPackage() 不可用 ❌
        ↓
而它的安装路径【只有】installPackage 两个分支，没有 ACTION_VIEW 兜底
        ↓
⇒ 死路
```

**而且为修 OOM 而改包会重签 ⇒ CER 更没戏 ⇒ 更死。**

### ✅ 但本轮产出了两个有价值的事实

**1. OOM 与"已安装的大包"之间的关系被证伪了一半**

旅游必备在 GMS **全部卸载**后仍崩 —— 说明它哈希的**不是已安装的 GMS**，
或者**是在别处崩的**。这缩小了排查范围。

**2. `dotCache.txt` 是协议理解的真实验证样本**

里面有一条完整的 `sign` + 请求体，可以拿来验证我们对
`MD5(排序后的 key=value 拼接 + "XPP")` 的理解是否正确。

---

## 七、下一轮建议

**优先级 1：搞清旅游必备到底在哈希什么**

方法：给旅游必备的 `com/x/plus/pro/f/c.smali` 方法 `b(String)` **加一行日志**
（把传入的 path 打进 logcat），用改包版做**诊断**，不改它的安装路径。
- 如果打印出的是某个具体路径 ⇒ 直接知道它在读什么
- 注意：这只是诊断包，不用它做实际安装（因为改包丢特权的道理对旅游必备同样成立）

**优先级 2：验证协议理解**

用 `dotCache.txt` 里的 `sign` 反推：
```
待验证: sign == MD5( "brand=HUAWEI model=DCO-AL00 os=Android os_version=31
                      product=Chat time=1569893540186 uuid=653f24e1977920d7
                      version_code=1806 version_name=18.06" + "XPP" ) ?
```
若吻合 ⇒ 协议理解正确 ⇒ **任何代理方案都可自行签发合法请求**。

**优先级 3：回到旅游必备的清单权限问题**

那条路最接近成功（只差一个权限声明），
而二进制清单修补的思路（原地追加字符串、不动 resource-map）还没试过。

---

## 八、本轮产物

| 文件 | 说明 |
|---|---|
| `work/cp_splash.png` | Chat Partner 卡在启动页的截图 |
| `/sdcard/Android/data/com.tyq.pro/cache/dotCache.txt` | **协议样本**（建议拉到本地存档） |
| 本文档 | 实测结论 + 未解矛盾 |
