---
layout: home
title: lzplay 复活计划 — 研究总站
titleTemplate: false

hero:
  name: lzplay 复活计划
  text: 一个华为授权渠道 App 的完整逆向
  tagline: 脱壳 · HUAWEI.CER 授权机制 · GMS 复活 · 改包方法论
  actions:
    - theme: brand
      text: 研究总索引
      link: /README
    - theme: alt
      text: 五条核心结论
      link: /README#-五条核心结论先看这个
    - theme: alt
      text: GitHub
      link: https://github.com/Nick-DL/lzplay-research

features:
  - title: ✅ 目标已达成
    details: GMS 在 Mate50 Pro 上完整可用 —— Google Play 正常打开、账号已登录、设置中出现 "Google" 子菜单。
  - title: 🔓 HUAWEI.CER 授权机制
    details: 四道校验全部拆解。DeveloperKey 与签名证书逐字节绑定，这是"改包即死"的密码学根源。
  - title: ❌ 改包 = 死路（实测）
    details: 单变量 A/B —— 同一 APK、同一 CER、同一时刻，唯一变量是签名证书，原装 6/7 授权、改包 0/7。
  - title: 🧩 不存在时间炸弹与机型白名单
    details: 所谓时间限制是华为 CER 的 ValidPeriod，所谓机型限制只是一个反射调用。都不是可破解的名单。
  - title: 🔧 可复现的解法
    details: 改时钟 + 备份恢复（带应用数据）+ 在「应用启动管理」里放行 Google 服务框架的自启动与后台运行。
  - title: 📱 三台设备对照实测
    details: Mate50 Pro / MatePad 2022 / Nova7 全部 HarmonyOS 4.2 未 root，逐一验证平板的能力边界。
---

## 这个站点是什么

对三个同源的"谷歌服务助手"类 App —— `com.lzplay.helper`（lzplay）、
`com.qiyecomm`（旅游必备）、`com.tyq.pro`（Chat Partner）——
及其共同携带的华为平台签名授权渠道 `META-INF/HUAWEI.CER` 的完整研究记录。

研究从**脱壳**开始，走过**改包**这条弯路，最终通过**备份恢复**让原始 lzplay 复活，
并在 Mate50 Pro 上让 GMS 真正跑了起来。

## 从哪里开始读

| 你想知道 | 读这篇 |
|---|---|
| **全部结论与完整索引** | [研究总索引](/README) |
| 最终结果与因果链 | [目标达成 — GMS 正常运行](/01-lzplay/目标达成-GMS正常运行) |
| 华为授权机制怎么运作 | [HUAWEI.CER 与华为授权机制](/01-lzplay/HUAWEI-CER-华为授权机制) |
| **改包到底有没有用** | [改包版 MDM 权限 — 实测结论](/03-device/改包版MDM权限-实测结论) |
| 平板为什么不行 | [平板 MDM 能力实测 — 最终结论](/03-device/平板MDM能力实测-最终结论) |
| 怎么复现 | [lzplay 复活成功 — 完整记录](/01-lzplay/lzplay复活成功-完整记录) |

> **关于文档中的"修正"**：这个项目有若干中间结论被后续推翻
> （"lzplay 的 MDM 特权加白名单"、"卸载重装 Google 包解除封锁"等）。
> 它们连同**撤回过程**都保留在文档里，并标注了状态 ——
> 因为"哪些路走不通"和"判别信号是怎么找错的"本身也是研究产出。
>
> 其中最值得记的一条教训：**不要把"时间上相邻"当成"因果"**。
> 我有两次结论都是这么错的。
