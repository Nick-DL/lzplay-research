/**
 * VitePress configuration for the lzplay research documentation.
 *
 * Location note: this lives inside docs/ because VitePress resolves `.vitepress/`
 * relative to the site root.  tools/stage-docs.mjs copies everything under docs/ -
 * including this directory - into .vitepress-src/, which is what actually gets built.
 * The markdown files themselves are never modified.
 *
 * Deployment: GitHub Pages at https://nickdl.site/lzplay-research/
 *   site   = the custom domain
 *   base   = '/lzplay-research/'  (the repository path on that domain)
 */
import { defineConfig } from 'vitepress'

export default defineConfig({
  title: 'lzplay 复活计划',
  description: '三个同源"谷歌服务助手"类 App 的逆向、HUAWEI.CER 授权机制与 GMS 复活研究',

  base: '/lzplay-research/',
  lang: 'zh-CN',
  cleanUrls: true,

  // docs/index.md is a purpose-built landing page; docs/README.md holds the full
  // research index and is served at /README.  We deliberately do NOT rename
  // README.md - it must stay where the author put it so it still renders as the
  // repo front page on GitHub.
  //
  // SESSION-STATE-暂停存档.md is interim research scratch, but README.md links to it
  // and VitePress URL-encodes CJK targets, so it stays in the build and is instead
  // kept out of the sitemap / search engines via markdown.noindex below.

  // Emit a sitemap and mark the scratch page noindex
  sitemap: {
    hostname: 'https://nickdl.site/lzplay-research/',
    transformItems: (items) =>
      items.filter((item) => !/SESSION-STATE/.test(item.url))
  },

  // some docs contain raw HTML <img src="../work/..."> pointing outside the docs
  // tree; those assets are copied into docs/public instead.  Scoping the ignore to
  // relative parent paths keeps genuine broken links surfacing.
  ignoreDeadLinks: [/^\.\.\//],

  markdown: {
    lineNumbers: false,
    // some tables and headings contain CJK + punctuation; keep anchors readable
    anchor: { permalink: false }
  },

  themeConfig: {
    outline: { level: [2, 3], label: '本页目录' },

    nav: [
      { text: '首页', link: '/' },
      { text: '总索引', link: '/README' },
      { text: 'lzplay 本体', link: '/01-lzplay/REPORT-lzplay-分析' },
      { text: '换皮 App', link: '/02-siblings/SIBLINGS-改包报告' },
      { text: '设备实测', link: '/03-device/改包版MDM权限-实测结论' },
      { text: '第二阶段', link: '/05-phase2/04-第二阶段需求' },
      {
        text: 'GitHub',
        link: 'https://github.com/Nick-DL/lzplay-research'
      }
    ],

    sidebar: [
      {
        text: '总览',
        items: [
          { text: '首页', link: '/' },
          { text: '研究总索引', link: '/README' },
          { text: '原始需求（第一阶段）', link: '/00-原始需求' },
          { text: '第二阶段需求', link: '/05-phase2/04-第二阶段需求' }
        ]
      },
      {
        text: '01 · lzplay 本体',
        collapsed: false,
        items: [
          { text: '目标达成 — GMS 正常运行', link: '/01-lzplay/目标达成-GMS正常运行' },
          { text: 'lzplay 复活成功 — 完整记录', link: '/01-lzplay/lzplay复活成功-完整记录' },
          { text: 'HUAWEI.CER 与华为授权机制', link: '/01-lzplay/HUAWEI-CER-华为授权机制' },
          { text: '备份还原包分析', link: '/01-lzplay/备份还原包分析' },
          { text: '技术分析报告', link: '/01-lzplay/REPORT-lzplay-分析' },
          { text: '静态脱壳研究记录', link: '/01-lzplay/UNPACKING-NOTES' },
          { text: 'LZProbe — API 存活探针', link: '/01-lzplay/PROBE-README' },
          { text: 'LZRevive — 干净重写', link: '/01-lzplay/REVIVE-README' }
        ]
      },
      {
        text: '02 · 两个换皮 App',
        collapsed: false,
        items: [
          { text: '改包报告（三 App 对比）', link: '/02-siblings/SIBLINGS-改包报告' },
          { text: '旅游必备 — 运行原理与安装循环', link: '/02-siblings/TRAVEL-运行原理与安装循环剖析' },
          { text: '旅游必备 — 安装流程打通记录', link: '/02-siblings/TRAVEL-安装流程打通记录' },
          { text: 'Chat Partner — 改包报告', link: '/02-siblings/CHATPARTNER-改包报告' }
        ]
      },
      {
        text: '03 · 设备端实测',
        collapsed: false,
        items: [
          { text: '★ 改包版 MDM 权限（实测结论）', link: '/03-device/改包版MDM权限-实测结论' },
          { text: '★ 平板 MDM 能力（实测结论）', link: '/03-device/平板MDM能力实测-最终结论' },
          { text: '★ 破解 — GSF 封锁的消除', link: '/03-device/破解-GSF封锁的消除方法' },
          { text: '三台设备对照 — 白名单之谜', link: '/03-device/三台设备对照-白名单之谜' },
          { text: 'GMS 安装与卡点说明', link: '/03-device/GMS安装与卡点说明' },
          { text: 'GMS 包来源可信性验证', link: '/03-device/GMS包来源可信性验证' },
          { text: '实验 — 平板能否获得 MDM 权限', link: '/03-device/实验-平板能否获得MDM权限' },
          { text: '未解之谜 — GSF 如何被放行', link: '/03-device/未解之谜-GSF如何被放行' },
          { text: '最终关卡 — GSF 与 iaware 闸门', link: '/03-device/最终关卡-GSF与iaware闸门' }
        ]
      },
      {
        text: '03 · 历史结论（已被修正）',
        collapsed: true,
        items: [
          { text: '首轮实测结论', link: '/03-device/VERDICT-Mate50Pro-实测结论' },
          { text: '修正版 — 两道门', link: '/03-device/VERDICT-修正版-两道门' }
        ]
      },

      // ---------------------------------------------------------------- 第二阶段
      {
        text: '05 · 第二阶段：需求与联网流程',
        collapsed: false,
        items: [
          { text: '第二阶段需求（委托原文）', link: '/05-phase2/04-第二阶段需求' },
          { text: '★ 联网流程研究', link: '/05-phase2/05-第二阶段-联网流程研究' }
        ]
      },
      {
        text: '05 · 第二阶段：安装流程剖析',
        collapsed: false,
        items: [
          { text: '安装状态机与下载缓存', link: '/05-phase2/06-第二阶段-安装状态机与下载缓存' },
          { text: 'FileDownloader 缓存预置（配方，已被 08 否定）', link: '/05-phase2/07-第二阶段-FileDownloader缓存预置' },
          { text: '★ 为什么必须改包（卡 88% 的真相）', link: '/05-phase2/08-第二阶段-原版OOM与必须改包的原因' },
          { text: '★ 原版必然崩溃的精确定位', link: '/05-phase2/09-第二阶段-原版必然崩溃的精确定位' }
        ]
      },
      {
        text: '05 · 第二阶段：修复与卡点',
        collapsed: false,
        items: [
          { text: '★ OOM 修复与流程跑通', link: '/05-phase2/10-第二阶段-OOM修复与流程跑通' },
          { text: '安装失败的两个根因', link: '/05-phase2/11-第二阶段-安装失败的两个根因' },
          { text: '安装失败的第 3 个原因（缺权限）', link: '/05-phase2/12-第二阶段-安装失败的第3个原因' },
          { text: '★ 进展与卡点存档', link: '/05-phase2/13-第二阶段-进展与卡点存档' }
        ]
      },
      {
        text: '05 · 第二阶段：Chat Partner',
        collapsed: false,
        items: [
          { text: 'Chat Partner 分析', link: '/05-phase2/14-第二阶段-ChatPartner分析' },
          { text: 'Chat Partner 实测结果', link: '/05-phase2/15-第二阶段-ChatPartner实测结果' }
        ]
      },
      {
        text: '存档',
        collapsed: true,
        items: [
          { text: '会话中断存档', link: '/SESSION-STATE-暂停存档' }
        ]
      }
    ],

    docFooter: { prev: '上一篇', next: '下一篇' },
    darkModeSwitchLabel: '主题',
    sidebarMenuLabel: '目录',
    returnToTopLabel: '回到顶部',
    lastUpdated: {
      text: '最后更新',
      formatOptions: { dateStyle: 'short', timeStyle: 'short' }
    },
    search: {
      provider: 'local',
      options: {
        translations: {
          button: { buttonText: '搜索文档', buttonAriaLabel: '搜索文档' },
          modal: {
            noResultsText: '未找到结果',
            resetButtonTitle: '清除查询',
            footer: {
              selectText: '选择',
              navigateText: '切换',
              closeText: '关闭'
            }
          }
        }
      }
    },

    footer: {
      message: '研究记录 · 所有分析针对自有设备与 APK',
      copyright: 'lzplay-research'
    }
  }
})
