// Decrypt a Huawei KoBackup module (.tar) using the format recovered from HwBackup.
//
// Key schedule (type_attch = 3 / v4 format):
//
//   key  = PBKDF2-HMAC-SHA256(password, pwkey_salt[:16], dklen=32, iterations=5000)
//   bkey = AES-256-GCM(key, nonce = pwkey_salt[16:]).decrypt(e_perbackupkey)[:32]
//   check: PBKDF2-HMAC-SHA256(bkey, checkMsg[32:], 32, 5000) == checkMsg[:32]
//
// Module data:
//
//   salt = encMsgV3[:32]   iv = encMsgV3[32:]
//   mkey = PBKDF2-HMAC-SHA256(bkey, salt, 32, 5000)
//   plaintext = AES-128-CTR(mkey, initial counter = big-endian int(iv))
//
// Usage:
//   node hwbackup_dec.cjs <backupDir> <moduleName> [outfile]

const crypto = require('crypto');
const fs = require('fs');
const path = require('path');

// ---------------------------------------------------------------- tiny XML reader
function parseInfo(xml) {
  const rows = [];
  const rowRe = /<row\s+table="([^"]+)">([\s\S]*?)<\/row>/g;
  let m;
  while ((m = rowRe.exec(xml)) !== null) {
    const table = m[1];
    const body = m[2];
    const cols = {};
    const colRe = /<column\s+name="([^"]+)"\s*>\s*<value\s+([A-Za-z]+)="([^"]*)"\s*\/>\s*<\/column>/g;
    let c;
    while ((c = colRe.exec(body)) !== null) {
      cols[c[1]] = { type: c[2], value: c[3] };
    }
    rows.push({ table, cols });
  }
  return rows;
}

function get(rows, table, col) {
  const r = rows.filter(x => x.table === table);
  for (const row of r) if (row.cols[col]) return row.cols[col].value;
  return null;
}

function findAll(rows, table) {
  return rows.filter(x => x.table === table).map(x => x.cols);
}

// ---------------------------------------------------------------- crypto helpers
function pbkdf2(pass, salt, len, iter) {
  return crypto.pbkdf2Sync(pass, salt, iter, len, 'sha256');
}

function aesGcmDecrypt(key, nonce, data) {
  // Huawei writes ciphertext||tag; Node wants the tag split out.
  const tag = data.subarray(data.length - 16);
  const ct = data.subarray(0, data.length - 16);
  const d = crypto.createDecipheriv('aes-256-gcm', key, nonce);
  d.setAuthTag(tag);
  return Buffer.concat([d.update(ct), d.final()]);
}

function aesCtrDecrypt(key, ivBe, data) {
  // "initial counter = big-endian int(iv)" — Node's 'aes-128-ctr' already
  // increments the whole 16-byte block big-endian, which matches.
  const d = crypto.createDecipheriv('aes-128-ctr', key, ivBe);
  return Buffer.concat([d.update(data), d.final()]);
}

// ---------------------------------------------------------------- main
function main() {
  const dir = process.argv[2];
  const moduleName = process.argv[3];
  const out = process.argv[4];

  if (!dir || !moduleName) {
    console.log('usage: hwbackup_dec.cjs <backupDir> <moduleName> [outfile]');
    process.exit(2);
  }

  const infoPath = path.join(dir, 'info.xml');
  const xml = fs.readFileSync(infoPath, 'utf8');
  const rows = parseInfo(xml);

  const password = get(rows, 'BackupFilesTypeInfo', 'promptMsg') || 'a12345678';
  const pwkeySaltHex = get(rows, 'BackupFilesTypeInfo', 'pwkey_salt');
  const ePerBackupKeyHex = get(rows, 'BackupFilesTypeInfo', 'e_perbackupkey');
  const checkMsgHex = get(rows, 'BackupFilesTypeInfo', 'checkMsg');

  console.log('password      : %j', password);
  console.log('pwkey_salt    : %s (%d bytes)', pwkeySaltHex, pwkeySaltHex.length / 2);
  console.log('e_perbackupkey: %d bytes', ePerBackupKeyHex.length / 2);
  console.log('checkMsg      : %d bytes', checkMsgHex.length / 2);

  const pwkeySalt = Buffer.from(pwkeySaltHex, 'hex');
  const ePerBackupKey = Buffer.from(ePerBackupKeyHex, 'hex');
  const checkMsg = Buffer.from(checkMsgHex, 'hex');

  // --- step 1: password -> key
  const salt = pwkeySalt.subarray(0, 16);
  const nonce = pwkeySalt.subarray(16, 32);
  const key = pbkdf2(password, salt, 32, 5000);
  console.log('\nkey (PBKDF2)  : %s', key.toString('hex'));

  // --- step 2: unwrap bkey
  let bkey;
  try {
    const plain = aesGcmDecrypt(key, nonce, ePerBackupKey);
    bkey = plain.subarray(0, 32);
    console.log('bkey (GCM ok) : %s', bkey.toString('hex'));
  } catch (e) {
    console.log('AES-GCM unwrap FAILED: %s', e.message);
    console.log('-> wrong password, or the format differs on this backup');
    process.exit(3);
  }

  // --- step 3: verify
  const expect = checkMsg.subarray(0, 32);
  const csalt = checkMsg.subarray(32, 64);
  const got = pbkdf2(bkey, csalt, 32, 5000);
  const ok = got.equals(expect);
  console.log('checkMsg      : %s  (%s)', ok ? 'MATCH' : 'MISMATCH',
              ok ? 'password verified' : 'wrong password / different format');
  if (!ok) process.exit(4);

  // --- step 4: find the module
  const modules = findAll(rows, 'BackupFileModuleInfo');
  console.log('\nmodules in this backup:');
  modules.forEach((c, i) => {
    console.log('   [%d] name=%s  encMsgV3=%s  checkMsgV3=%s',
                i, c.name ? c.name.value : '?',
                c.encMsgV3 ? (c.encMsgV3.value.length / 2) + 'B' : '-',
                c.checkMsgV3 ? (c.checkMsgV3.value.length / 2) + 'B' : '-');
  });

  const mod = modules.find(c => c.name && c.name.value === moduleName);
  if (!mod || !mod.encMsgV3) {
    console.log('\nmodule %j not found (or has no encMsgV3)', moduleName);
    process.exit(5);
  }

  const encMsgV3 = Buffer.from(mod.encMsgV3.value, 'hex');
  const msalt = encMsgV3.subarray(0, 32);
  const miv = encMsgV3.subarray(32, 48);
  console.log('\nmodule %s', moduleName);
  console.log('   encMsgV3   : %d bytes', encMsgV3.length);
  console.log('   salt       : %s', msalt.toString('hex'));
  console.log('   iv         : %s', miv.toString('hex'));

  const mkey = pbkdf2(bkey, msalt, 32, 5000);
  console.log('   mkey       : %s', mkey.toString('hex'));

  // the ciphertext file lives next to info.xml
  const tarPath = path.join(dir, moduleName + '.tar');
  if (!fs.existsSync(tarPath)) {
    console.log('   missing file: %s', tarPath);
    process.exit(6);
  }
  const ct = fs.readFileSync(tarPath);
  console.log('   ciphertext : %d bytes', ct.length);

  const pt = aesCtrDecrypt(mkey.subarray(0, 16), miv, ct);
  console.log('   plaintext  : %d bytes', pt.length);

  const target = out || path.join(dir, moduleName + '.plain.tar');
  fs.writeFileSync(target, pt);
  console.log('\nwrote %s', target);

  // heuristic: does it look like a tar?
  console.log('first 8 bytes: %s', JSON.stringify(pt.subarray(0, 8).toString('latin1')));
  if (pt.subarray(257, 262).toString('latin1') === 'ustar') {
    console.log('-> looks like a plain POSIX tar (ustar magic present)');
  } else {
    console.log('-> NOT a plain tar; may be a Huawei container or still encrypted');
  }
}

main();
