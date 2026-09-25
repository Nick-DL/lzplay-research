// Phase 0: crawl and cache every POM reachable from a root POM (including parents).
const fs = require('fs');
const path = require('path');

const rootG = process.argv[2], rootA = process.argv[3], rootV = process.argv[4];
const pomDir = process.argv[5];
const CENTRAL = 'https://repo1.maven.org/maven2/';

const pomUrl = (g, a, v) => CENTRAL + g.replace(/\./g, '/') + '/' + a + '/' + v + '/' + a + '-' + v + '.pom';
const pomFile = (g, a, v) => path.join(pomDir, `${g}_${a}_${v}.pom`);

async function fetchText(u) {
  for (let i = 1; i <= 4; i++) {
    try {
      const r = await fetch(u, { redirect: 'follow' });
      if (r.status === 404) return null;
      if (!r.ok) throw new Error('status ' + r.status);
      return await r.text();
    } catch (e) {
      if (i === 4) { console.log('  FAIL', u, e.message); return null; }
      await new Promise(r => setTimeout(r, 400 * i));
    }
  }
}

function refs(xml) {
  const out = [];
  // parent
  const pm = xml.match(/<parent>([\s\S]*?)<\/parent>/);
  if (pm) {
    const g = (pm[1].match(/<groupId>([^<]+)</) || [])[1];
    const a = (pm[1].match(/<artifactId>([^<]+)</) || [])[1];
    const v = (pm[1].match(/<version>([^<]+)</) || [])[1];
    if (g && a && v && !v.includes('$')) out.push([g.trim(), a.trim(), v.trim()]);
  }
  // dependencies (only those with a literal version)
  const dm = xml.match(/<dependencies>([\s\S]*?)<\/dependencies>/g) || [];
  for (const block of dm) {
    for (const d of block.match(/<dependency>([\s\S]*?)<\/dependency>/g) || []) {
      const g = (d.match(/<groupId>([^<]+)</) || [])[1];
      const a = (d.match(/<artifactId>([^<]+)</) || [])[1];
      const v = (d.match(/<version>([^<]+)</) || [])[1];
      if (g && a && v && !v.includes('$')) out.push([g.trim(), a.trim(), v.trim()]);
    }
  }
  return out;
}

(async () => {
  fs.mkdirSync(pomDir, { recursive: true });
  const seen = new Set();
  const queue = [[rootG, rootA, rootV]];
  let fetched = 0, missing = 0;
  while (queue.length) {
    const [g, a, v] = queue.shift();
    const key = `${g}:${a}:${v}`;
    if (seen.has(key)) continue;
    seen.add(key);
    const f = pomFile(g, a, v);
    let xml;
    if (fs.existsSync(f)) {
      xml = fs.readFileSync(f, 'utf8');
    } else {
      xml = await fetchText(pomUrl(g, a, v));
      if (xml === null) { missing++; console.log('  MISSING pom', key); continue; }
      fs.writeFileSync(f, xml);
      fetched++;
    }
    for (const r of refs(xml)) queue.push(r);
  }
  console.log(`poms fetched=${fetched} missing=${missing} total seen=${seen.size}`);
  console.log('pomDir', pomDir);
})().catch(e => { console.error('FATAL', e); process.exit(1); });
