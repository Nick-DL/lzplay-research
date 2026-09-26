// Probe what the server at 47.94.248.68 actually serves now.
const HOST = 'http://47.94.248.68';

const PATHS = [
  '/',
  '/lzplay/',
  '/lzplay/pkg-20190918063238/',
  '/lzplay/pkg-20190918063238/cn/',
  '/lzplay/pkg-20190918063238/cn/lzplay_Q/',
  '/lzplay/pkg-20190918063238/cn/lzplay_P/',
  '/lzplay/pkg-20190918063238/cn/lzplay_Q/v29-02.apk',
  '/lzplay/pkg-20190918063238/cn/lzplay_Q/v100-app-release.apk',
  '/robots.txt',
  '/index.html',
  '/index.php',
];

(async () => {
  for (const p of PATHS) {
    try {
      const r = await fetch(HOST + p, { redirect: 'manual' });
      const len = r.headers.get('content-length');
      const ct = r.headers.get('content-type') || '';
      const loc = r.headers.get('location');
      let extra = '';
      if (r.status === 200 && !ct.includes('html')) {
        extra = ' <-- BINARY/REAL FILE';
      }
      console.log('%-52s %s  len=%-10s %s %s%s',
                  p, r.status, len || '-', ct.slice(0, 28), loc ? '-> ' + loc : '', extra);
    } catch (e) {
      console.log('%-52s ERR %s', p, e.message);
    }
  }

  // if the root is interesting, show it
  try {
    const r = await fetch(HOST + '/');
    const t = await r.text();
    console.log('\n--- body of / (first 600 chars) ---');
    console.log(t.slice(0, 600));
  } catch (e) { /* ignore */ }
})();
