# GMS 包来源可信性验证

> 问题：这两个换皮 App 自带的那套 GMS 包，到底是 Google 原版，还是被改过？
> 结论：**是 Google 原版，密码学可证。可以放心使用。**

---

## 一、验证方法

Chat Partner 的 `assets/tyq_resource_Q.json` 是一份**明文清单**，
它自己声明了每个包**必须**具备的签名证书指纹（`sign_1` / `sign_2`）。

于是可以构成一条**闭环证据链**：

```
厂商清单声明期望指纹  ──┐
                        ├──► 二者相等 ⇒ 包未被替换/篡改
实测内嵌 APK 的指纹   ──┘
```

这比"从网上找官方指纹来比对"更强 —— 因为**受信方自己给出了基准**。

---

## 二、实测结果

用 `apksigner verify --print-certs` 逐个测四个 Google 包：

```
certificate DN: CN=Android, OU=Android, O=Google Inc., L=Mountain View,
                ST=California, C=US
certificate SHA-1 digest:   38918a453d07199354f8b19af05ec6562ced5788
certificate SHA-256 digest: f0fd6c5b410f25cb25c3b53346c8972fae30f8ee7411df910480ad6b2d60db83
```

| 包 | 签名 SHA-256 | 与清单 `sign_2` |
|---|---|---|
| `com.google.android.gms` | `f0fd6c5b…db83` | ✅ 相等 |
| `com.google.android.gsf` | `f0fd6c5b…db83` | ✅ 相等 |
| `com.android.vending` | `f0fd6c5b…db83` | ✅ 相等 |
| `com.google.android.syncadapters.contacts` | `f0fd6c5b…db83` | ✅ 相等 |

**四个包同一把证书**，且 `DN` 主体是 `O=Google Inc.`。

---

## 三、为什么这足以证明可信

1. **主体名正确** —— `CN=Android, OU=Android, O=Google Inc., L=Mountain View,
   ST=California, C=US`，是 Google 官方 Android 签名证书的标准主体。
2. **SHA-1 指纹正确** —— `38918a453d07199354f8b19af05ec6562ced5788`
   是广为人知的 Google Play 签名证书 SHA-1。
3. **与厂商声明一致** —— 换皮 App 自己的清单声明的就是这两个值。
   一个恶意替换者不可能同时伪造 APK 签名和厂商清单里的声明，
   除非他同时改了 App 的 assets（那会改变 APK 的签名，而 App 本身的签名
   我们已经另有对比）。
4. **MD5 与大小也全部吻合** —— 见 `02-siblings/CHATPARTNER-改包报告.md`，
   四个包的 `size` 和 `md5` 与清单逐字段相等。

---

## 四、补充：这同时解释了旅游必备的校验逻辑

旅游必备的 `f/i;->b(Context, String)`：

```java
PackageInfo pi = pm.getPackageInfo(pkg, 0x40 /* GET_SIGNATURES */);
return md5(pi.signatures[0].toByteArray());
```

它算的正是**签名证书字节数组的 MD5**，也就是清单里的 `sign_1`。
这解释了为什么这套校验在 Chat Partner 的明文清单里叫 `sign_1`（MD5）
和 `sign_2`（SHA-256）—— 两个字段，双重校验。

---

## 五、结论

**我们手上的这套 `_29` GMS 包是 Google 原版二进制，未被改动。**
可以安全地安装到设备上使用。这一点很重要，因为：

- 它意味着"装 GMS"这一步**没有任何信任问题**
- 唯一的障碍纯粹是华为的系统策略（trustspace 阻止 GSF provider 启动）
- 换句话说：**我们不是在用一个破解过的 GMS，而是在用 Google 的正品，
  只是华为不让它在宿主系统里跑**

---

## 附：复现命令

```powershell
# 签名指纹
$BT = 'D:\Android\Sdk\build-tools\37.0.0'
& "$BT\apksigner.bat" verify --print-certs work\gms29\com.google.android.gms_29.apk

# 与清单交叉验证（MD5 + 签名指纹 + 大小）
python work\tools\verify_chat_manifest.py
```
