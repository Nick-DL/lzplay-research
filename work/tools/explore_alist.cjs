// Explore the author's file server (alist) for the backup package.
const fs = require('fs');

const BASE = 'https://alist.toalan.com';

async function get(url) {
  const r = await fetch(url, { redirect: 'follow', headers: { 'User-Agent': 'Mozilla/5.0' } });
  const t = await r.text();
  return { status: r.status, text: t, url: r.url };
}

function links(html) {
  const out = new Set();
  const re = /href="([^"]+)"/g;
  let m;
  while ((m = re.exec(html)) !== null) {
    let h = m[1];
    if (!h || h.startsWith('#') || h.startsWith('javascript')) continue;
    if (/\.(css|js|png|jpg|jpeg|svg|ico|woff2?)(\?|$)/i.test(h)) continue;
    out.add(h);
  }
  return [...out];
}

async function api(path) {
  // alist's JSON API
  const r = await fetch(BASE + '/api/fs/list', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ path: path, password: '', page: 1, per_page: 100, refresh: false }),
  });
  if (!r.ok) return null;
  try { return await r.json(); } catch (e) { return null; }
}

(async () => {
  console.log('=== root page ===');
  try {
    const g = await get(BASE + '/');
    console.log('status', g.status, 'url', g.url, 'bytes', g.text.length);
    const ls = links(g.text);
    console.log('links (%d):', ls.length);
    ls.slice(0, 30).forEach(l => console.log('   ', l));
  } catch (e) {
    console.log('ERR', e.message, e.cause && e.cause.message);
  }

  console.log('\n=== alist API / ===');
  for (const p of ['/', '/Backup', '/2026']) {
    const j = await api(p);
    if (j && j.data && j.data.content) {
      console.log('path %s -> %d entries', p, j.data.content.length);
      j.data.content.slice(0, 40).forEach(e =>
        console.log('   %s %s  %s', e.is_dir ? '[D]' : '[F]', e.name,
                    e.size ? (e.size / 1048576).toFixed(1) + ' MB' : ''));
    } else {
      console.log('path %s -> no API data', p);
    }
  }
})();
