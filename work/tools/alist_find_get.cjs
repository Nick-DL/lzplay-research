// Walk alist and downloae the first entry whose name matches a substring.
const fs = require('fs');
const path = require('path');

const BASE = 'https://alist.toalan.com';

async function api(p) {
  const r = await fetch(BASE + '/api/fs/list', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ path: p, password: '', page: 1, per_page: 500, refresh: false }),
  });
  if (!r.ok) return null;
  try { return await r.json(); } catch (e) { return null; }
}

async function getmeta(p) {
  const r = await fetch(BASE + '/api/fs/get', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ path: p, password: '' }),
  });
  if (!r.ok) return null;
  try { return await r.json(); } catch (e) { return null; }
}

/** Depth-first search for a file whose basename contains `needle`. */
async function find(dir, needle, depth, maxDepth, hits) {
  if (depth > maxDepth) return;
  const j = await api(dir);
  if (!j || !j.data || !j.data.content) return;
  for (const e of j.data.content) {
    const p = (dir === '/' ? '' : dir) + '/' + e.name;
    if (!e.is_dir && e.name.includes(needle)) {
      hits.push({ path: p, name: e.name, size: e.size });
      console.log('HIT  %s  (%s MB)', p, e.size ? (e.size / 1048576).toFixed(1) : '?');
    }
    if (e.is_dir) await find(p, needle, depth + 1, maxDepth, hits);
  }
}

(async () => {
  const needle = process.argv[2];
  const out = process.argv[3];
  if (!needle) { console.log('usage: alist_find_get.cjs <name-substring> [outfile]'); process.exit(1); }

  const hits = [];
  console.log('searching for %j ...', needle);
  await find('/', needle, 0, 5, hits);

  if (!hits.length) { console.log('not found'); process.exit(2); }
  const pick = hits.sort((a, b) => b.size - a.size)[0];
  console.log('\npicked: %s  (%s MB)', pick.path, (pick.size / 1048576).toFixed(1));

  const j = await getmeta(pick.path);
  if (!j || !j.data || !j.data.raw_url) {
    console.log('no raw_url:', JSON.stringify(j).slice(0, 300));
    process.exit(3);
  }
  const url = j.data.raw_url;
  console.log('url: %s', url.slice(0, 140));

  if (!out) { console.log('(no outfile given, metadata only)'); return; }

  const r = await fetch(url, { redirect: 'follow', headers: { 'User-Agent': 'Mozilla/5.0' } });
  console.log('status %s %s', r.status, r.statusText);
  if (!r.ok) process.exit(4);
  const buf = Buffer.from(await r.arrayBuffer());
  fs.mkdirSync(path.dirname(path.resolve(out)), { recursive: true });
  fs.writeFileSync(out, buf);
  console.log('wrote %s (%s MB)', out, (buf.length / 1048576).toFixed(1));
})();
