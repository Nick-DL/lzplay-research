/**
 * Stage the research documents for VitePress.
 *
 * Why a staging copy instead of pointing VitePress straight at docs/:
 * the requirement is that the existing files stay exactly as they are - they are
 * the research record and are read directly in a text editor and on GitHub.  So we
 * copy the .md tree into .vitepress-src/ at build time and let VitePress work there.
 *
 * docs/ stays byte-identical; .vitepress-src/ is generated and gitignored.
 *
 * Usage:  node tools/stage-docs.mjs
 */
import { cp, mkdir, rm, readdir, stat, copyFile, access } from 'node:fs/promises'
import { existsSync } from 'node:fs'
import { join, dirname } from 'node:path'
import { fileURLToPath } from 'node:url'

const ROOT = join(dirname(fileURLToPath(import.meta.url)), '..')
const SRC = join(ROOT, 'docs')
const DEST = join(ROOT, '.vitepress-src')

// directories under docs/ that must not be copied into the VitePress source
const EXCLUDE_DIRS = new Set(['public', 'node_modules'])

// NOTE: research scratch such as SESSION-STATE-* is deliberately NOT excluded.
// docs/README.md links to it, and VitePress URL-encodes CJK link targets, so any
// ignoreDeadLinks pattern would have to match the encoded form.  Keeping the page
// and excluding it from the sitemap (see .vitepress/config.mts) is simpler and
// keeps the index's links honest.

async function walk(dir, rel = '') {
  const out = []
  for (const entry of await readdir(dir, { withFileTypes: true })) {
    if (EXCLUDE_DIRS.has(entry.name)) continue
    const r = rel ? `${rel}/${entry.name}` : entry.name
    if (entry.isDirectory()) {
      out.push(...(await walk(join(dir, entry.name), r)))
    } else {
      // everything, not just .md - the .vitepress/ config and theme live under
      // docs/ too and must be staged or VitePress silently builds with defaults
      out.push(r)
    }
  }
  return out
}

async function main() {
  if (!existsSync(SRC)) throw new Error(`docs/ not found at ${SRC}`)

  await rm(DEST, { recursive: true, force: true })
  await mkdir(DEST, { recursive: true })

  const files = await walk(SRC)
  for (const rel of files) {
    const to = join(DEST, rel)
    await mkdir(dirname(to), { recursive: true })
    await copyFile(join(SRC, rel), to)
  }

  // static assets VitePress serves from the site root
  const pub = join(SRC, 'public')
  if (existsSync(pub)) {
    await mkdir(join(DEST, 'public'), { recursive: true })
    await cp(pub, join(DEST, 'public'), { recursive: true })
  }

  const md = files.filter((f) => f.endsWith('.md'))
  const cfg = files.filter((f) => f.startsWith('.vitepress/'))
  console.log(`staged ${files.length} files -> .vitepress-src/  `
              + `(${md.length} markdown, ${cfg.length} vitepress config/theme)`)
  for (const f of cfg.sort()) console.log(`   [cfg] ${f}`)
}

main().catch((err) => {
  console.error(err)
  process.exit(1)
})
