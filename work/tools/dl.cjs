// Robust downloader using Node fetch with redirect following.
const fs = require('fs');
const path = require('path');

const url = process.argv[2];
const out = process.argv[3];
if (!url || !out) { console.error('usage: node dl.cjs <url> <out>'); process.exit(2); }

(async () => {
  let res = await fetch(url, { redirect: 'follow', headers: { 'User-Agent': 'Mozilla/5.0' } });
  console.log('status', res.status, res.statusText, '->', res.url);
  if (!res.ok) { process.exit(1); }
  const total = Number(res.headers.get('content-length') || 0);
  const buf = Buffer.from(await res.arrayBuffer());
  console.log('received', buf.length, 'of', total);
  fs.mkdirSync(path.dirname(path.resolve(out)), { recursive: true });
  fs.writeFileSync(out, buf);
  console.log('wrote', out);
})().catch(e => { console.error('FAIL', e.message, e.cause && e.cause.message); process.exit(1); });
