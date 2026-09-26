/**
 * Print the resolved VitePress config so we can see whether `base` survives.
 *
 * Usage: node tools/inspect-config.mjs
 */
import { createRequire } from 'node:module'
import { pathToFileURL } from 'node:url'
import { join, dirname } from 'node:path'
import { fileURLToPath } from 'node:url'

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..')
const SRC = join(ROOT, '.vitepress-src')

// .mts must be loaded as ESM; Node handles that natively
const cfgUrl = pathToFileURL(join(SRC, '.vitepress', 'config.mts')).href
const mod = await import(cfgUrl)
const raw = mod.default

console.log('--- raw export from config.mts ---')
console.log('  typeof      :', typeof raw)
console.log('  base        :', JSON.stringify(raw?.base))
console.log('  lang        :', JSON.stringify(raw?.lang))
console.log('  cleanUrls   :', JSON.stringify(raw?.cleanUrls))
console.log('  sitemap     :', raw?.sitemap ? 'present' : 'MISSING')
console.log('  title       :', JSON.stringify(raw?.title))
console.log('  keys        :', Object.keys(raw || {}).join(', '))
