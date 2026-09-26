// Try several AES-CTR conventions for the Huawei backup blob and see which one
// yields plausible plaintext (a tar has "ustar" at offset 257 and lots of zeros).
//
// Variants tried:
//   A. counter = whole 16-byte block, starting at iv, big-endian increment (Node default)
//   B. counter = last 4 bytes only, first 12 bytes fixed
//   C. counter = first 4 bytes only
//   D. key = first 16 bytes of PBKDF2 output (same as A here), but bkey not truncated
//   E. salt/iv swapped relative to the spec

const crypto = require('crypto');
const fs = require('fs');
const path = require('path');

function parseInfo(xml) {
  const rows = [];
  const rowRe = /<row\s+table="([^"]+)">([\s\S]*?)<\/row>/g;
  let m;
  while ((m = rowRe.exec(xml)) !== null) {
    const cols = {};
    const colRe = /<column\s+name="([^"]+)"\s*>\s*<value\s+([A-Za-z]+)="([^"]*)"\s*\/>\s*<\/column>/g;
    let c;
    while ((c = colRe.exec(m[2])) !== null) cols[c[1]] = c[3];
    rows.push({ table: m[1], cols });
  }
  return rows;
}
const get = (rows, t, c) => {
  for (const r of rows) if (r.table === t && r.cols[c] !== undefined) return r.cols[c];
  return undefined;
};

const pbkdf2 = (p, s, len, it) => crypto.pbkdf2Sync(p, s, it, len, 'sha256');

function gcmDec(key, nonce, data) {
  const tag = data.subarray(data.length - 16);
  const ct = data.subarray(0, data.length - 16);
  const d = crypto.createDecipheriv('aes-256-gcm', key, nonce);
  d.setAuthTag(tag);
  return Buffer.concat([d.update(ct), d.final()]);
}

// --- manual CTR with a chosen increment width -------------------------------
function ctrDecrypt(key, iv, data, incWidth, incStart) {
  const bs = 16;
  const out = Buffer.alloc(data.length);
  let counter = Buffer.from(iv);
  const enc = crypto.createCipheriv('aes-128-ecb', key, null);
  enc.setAutoPadding(false);
  for (let off = 0; off < data.length; off += bs) {
    const ks = enc.update(counter);
    const n = Math.min(bs, data.length - off);
    for (let i = 0; i < n; i++) out[off + i] = data[off + i] ^ ks[i];
    // increment
    let carry = 1;
    for (let i = bs - 1; i >= bs - incWidth && carry; i--) {
      const v = counter[i] + carry;
      counter[i] = v & 0xff;
      carry = v >> 8;
    }
  }
  return out;
}

function score(buf) {
  // a real tar: "ustar" at 257, many zero bytes
  const ustar = buf.length > 262 && buf.subarray(257, 262).toString('latin1') === 'ustar';
  const zeros = buf.filter(b => b === 0).length / buf.length;
  const printable = buf.filter(b => b >= 32 && b < 127).length / buf.length;
  return { ustar, zeros, printable };
}

function main() {
  const dir = process.argv[2];
  const modName = process.argv[3];
  const xml = fs.readFileSync(path.join(dir, 'info.xml'), 'utf8');
  const rows = parseInfo(xml);

  const password = get(rows, 'BackupFilesTypeInfo', 'promptMsg') || 'a12345678';
  const pwkeySalt = Buffer.from(get(rows, 'BackupFilesTypeInfo', 'pwkey_salt'), 'hex');
  const ePerBackupKey = Buffer.from(get(rows, 'BackupFilesTypeInfo', 'e_perbackupkey'), 'hex');

  const key = pbkdf2(password, pwkeySalt.subarray(0, 16), 32, 5000);
  const plain = gcmDec(key, pwkeySalt.subarray(16, 32), ePerBackupKey);
  const bkey = plain.subarray(0, 32);
  console.log('bkey: %s', bkey.toString('hex'));

  const encMsgV3 = Buffer.from(
    rows.filter(r => r.table === 'BackupFileModuleInfo' && r.cols.name === modName)
        .map(r => r.cols.encMsgV3)[0], 'hex');
  const saltA = encMsgV3.subarray(0, 32);
  const ivA = encMsgV3.subarray(32, 48);

  const ct = fs.readFileSync(path.join(dir, modName + '.tar'));
  console.log('ciphertext: %d bytes\n', ct.length);

  const mkey = pbkdf2(bkey, saltA, 32, 5000);

  const variants = [
    ['A: whole-block increment, Node aes-128-ctr', () => {
      const d = crypto.createDecipheriv('aes-128-ctr', mkey.subarray(0, 16), ivA);
      return Buffer.concat([d.update(ct), d.final()]);
    }],
    ['B: last 4 bytes increment', () => ctrDecrypt(mkey.subarray(0, 16), ivA, ct, 4)],
    ['C: first 4 bytes increment', () => ctrDecrypt(mkey.subarray(0, 16), ivA, ct, 4, 0)],
    ['D: last 8 bytes increment', () => ctrDecrypt(mkey.subarray(0, 16), ivA, ct, 8)],
    ['E: iv = encMsgV3[:16], salt = encMsgV3[16:]', () => {
      const s2 = encMsgV3.subarray(0, 16);
      const i2 = encMsgV3.subarray(16, 32);
      const k2 = pbkdf2(bkey, encMsgV3.subarray(0, 32), 32, 5000);
      const d = crypto.createDecipheriv('aes-128-ctr', k2.subarray(0, 16), ivA);
      return Buffer.concat([d.update(ct), d.final()]);
    }],
    ['F: mkey not truncated (aes-256-ctr)', () => {
      const d = crypto.createDecipheriv('aes-256-ctr', mkey, ivA);
      return Buffer.concat([d.update(ct), d.final()]);
    }],
  ];

  for (const [label, fn] of variants) {
    let out;
    try { out = fn(); } catch (e) { console.log('%-46s FAILED %s', label, e.message); continue; }
    const s = score(out);
    console.log('%-46s ustar=%-5s zeros=%.3f printable=%.3f  head=%s',
                label, s.ustar, s.zeros, s.printable,
                out.subarray(0, 8).toString('hex'));
    if (s.ustar || s.zeros > 0.05) {
      const f = path.join(path.dirname(dir), 'plain-' + label.split(':')[0] + '.tar');
      fs.writeFileSync(f, out);
      console.log('   -> WROTE %s', f);
    }
  }
}

main();
