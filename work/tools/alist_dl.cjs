// Try several alist download endpoints for a given path.
const fs = require('fs');
const path = require('path');

const BASE = 'https://alist.toalan.com';

async function tryUrl(url, out, label) {
  console.log('--- %s ---', label);
  console.log('   %s', url.slice(0, 150));
  try {
    const r = await fetch(url, { redirect: 'follow', headers: { 'User-Agent': 'Mozilla/5.0' } });
    const ct = r.headers.get('content-type') || '';
    const cl = r.headers.get('content-length');
    console.log('   status %s  type=%s  len=%s', r.status, ct, cl);
    if (!r.ok) {
      const t = await r.text();
      console.log('   body: %s', t.slice(0, 200));
      return false;
    }
    if (ct.includes('application/json')) {
      const t = await r.text();
      console.log('   json: %s', t.slice(0, 200));
      return false;
    }
    const buf = Buffer.from(await r.arrayBuffer());
    if (buf.length < 10000) {
      console.log('   too small (%d bytes), probably an error page', buf.length);
      return false;
    }
    fs.mkdirSync(path.dirname(path.resolve(out)), { recursive: true });
    fs.writeFileSync(out, buf);
    console.log('   WROTE %s (%s MB)', out, (buf.length / 1048576).toFixed(1));
    return true;
  } catch (e) {
    console.log('   ERR %s %s', e.message, e.cause && e.cause.message);
    return false;
  }
}

(async () => {
  const p = process.argv[2];
  const out = process.argv[3];
  if (!p) { console.log('usage: alist_dl.cjs <path> <out>'); process.exit(1); }

  const encoded = p.split('/').map(encodeURIComponent).join('/');
  const candidates = [
    [BASE + '/d' + encoded, 'endpoint /d + encoded path'],
    [BASE + '/d' + p, 'endpoint /d + raw path'],
    [BASE + '/p' + encoded, 'endpoint /p'],
  ];

  for (const [u, l] of candidates) {
    if (await tryUrl(u, out, l)) return;
  }
  console.log('\nall endpoints failed');

  // last resort: report the 123pan / onedrive share links so the user can fetch manually
  console.log('\nYou may need to fetch manually. Try:');
  console.log('  https://alist.toalan.com/  (browse to the file, click Download)');
  console.log('  or the Onedrive mirror');
})();
