// Fetch an alist file by path: get its raw_url then download it.
const fs = require('fs');
const path = require('path');

const BASE = 'https://alist.toalan.com';

async function api(p) {
  const r = await fetch(BASE + '/api/fs/get', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ path: p, password: '' }),
  });
  if (!r.ok) return null;
  try { return await r.json(); } catch (e) { return null; }
}

async function download(p, out) {
  const j = await api(p);
  if (!j || !j.data) { console.log('no metadata for %s', p); return false; }
  const url = j.data.raw_url || j.data.url;
  console.log('name    : %s', j.data.name);
  console.log('size    : %s MB', j.data.size ? (j.data.size / 1048576).toFixed(1) : '?');
  console.log('raw_url : %s', url ? url.slice(0, 120) : '(none)');
  if (!url) return false;

  const r = await fetch(url, { redirect: 'follow', headers: { 'User-Agent': 'Mozilla/5.0' } });
  console.log('status  : %s %s', r.status, r.statusText);
  if (!r.ok) return false;
  const buf = Buffer.from(await r.arrayBuffer());
  fs.mkdirSync(path.dirname(path.resolve(out)), { recursive: true });
  fs.writeFileSync(out, buf);
  console.log('wrote   : %s (%s MB)', out, (buf.length / 1048576).toFixed(1));
  return true;
}

(async () => {
  const target = process.argv[2];
  const out = process.argv[3];
  if (!target) { console.log('usage: alist_get.cjs <path> <out>'); process.exit(1); }
  await download(target, out);
})();
