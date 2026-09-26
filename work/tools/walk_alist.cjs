// Walk the alist tree to find the backup package.
const BASE = 'https://alist.toalan.com';

async function api(path) {
  const r = await fetch(BASE + '/api/fs/list', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ path: path, password: '', page: 1, per_page: 200, refresh: false }),
  });
  if (!r.ok) return null;
  try { return await r.json(); } catch (e) { return null; }
}

function sizeStr(n) {
  if (!n) return '';
  if (n > 1048576) return (n / 1048576).toFixed(1) + ' MB';
  if (n > 1024) return (n / 1024).toFixed(0) + ' KB';
  return n + ' B';
}

async function walk(path, depth, maxDepth) {
  const j = await api(path);
  if (!j || !j.data || !j.data.content) {
    console.log('%s%s  (no listing)', '  '.repeat(depth), path);
    return;
  }
  for (const e of j.data.content) {
    const p = (path === '/' ? '' : path) + '/' + e.name;
    console.log('%s%s %s  %s', '  '.repeat(depth), e.is_dir ? '[D]' : '[F]', e.name, sizeStr(e.size));
    if (e.is_dir && depth < maxDepth) {
      await walk(p, depth + 1, maxDepth);
    }
  }
}

(async () => {
  console.log('=== full tree (depth 3) ===');
  await walk('/', 0, 3);
})();
