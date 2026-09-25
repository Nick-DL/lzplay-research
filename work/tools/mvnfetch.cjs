// Phase 2: given a list of g:a:v, fetch .pom and .jar from Maven Central.
const fs = require('fs');
const path = require('path');

const listFile = process.argv[2];
const outDir = process.argv[3];
const pomDir = process.argv[4] || path.join(outDir, '_pom');
const CENTRAL = 'https://repo1.maven.org/maven2/';

function url(g, a, v, ext) {
  return CENTRAL + g.replace(/\./g, '/') + '/' + a + '/' + v + '/' + a + '-' + v + '.' + ext;
}

async function dl(u, dest) {
  if (fs.existsSync(dest) && fs.statSync(dest).size > 0) return 'cached';
  for (let attempt = 1; attempt <= 4; attempt++) {
    try {
      const r = await fetch(u, { redirect: 'follow' });
      if (r.status === 404) return 'missing';
      if (!r.ok) throw new Error('status ' + r.status);
      const b = Buffer.from(await r.arrayBuffer());
      fs.mkdirSync(path.dirname(dest), { recursive: true });
      fs.writeFileSync(dest, b);
      return 'ok ' + b.length;
    } catch (e) {
      if (attempt === 4) return 'FAIL ' + e.message;
      await new Promise(r => setTimeout(r, 500 * attempt));
    }
  }
}

(async () => {
  const lines = fs.readFileSync(listFile, 'utf8').split(/\r?\n/).map(s => s.trim())
    .filter(s => s && !s.startsWith('#'));
  console.log('artifacts:', lines.length);
  let ok = 0, miss = 0, fail = 0;
  for (const line of lines) {
    const [g, a, v] = line.split(':');
    if (!g || !a || !v) continue;
    const pomDest = path.join(pomDir, `${g}_${a}_${v}.pom`);
    const rp = await dl(url(g, a, v, 'pom'), pomDest);
    const jarDest = path.join(outDir, `${a}-${v}.jar`);
    const rj = await dl(url(g, a, v, 'jar'), jarDest);
    if (rj.startsWith('ok') || rj === 'cached') ok++;
    else if (rj === 'missing') { miss++; console.log('  MISSING', line); }
    else { fail++; console.log('  ' + rj, line); }
  }
  console.log(`done: ok=${ok} missing=${miss} failed=${fail}`);
  console.log('poms in', pomDir);
  console.log('jars in', outDir);
})().catch(e => { console.error('FATAL', e); process.exit(1); });
