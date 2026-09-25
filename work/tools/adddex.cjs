// Add entries to an existing zip (APK) without recompressing the whole archive.
// usage: node adddex.cjs <in.apk> <file-to-add> [dest.apk]
// Appends the file as a *stored or deflated* entry, rewriting the central directory.
const fs = require('fs');
const zlib = require('zlib');
const path = require('path');

function crc32(buf) {
  let c, crc = 0xFFFFFFFF;
  for (let i = 0; i < buf.length; i++) {
    c = (crc ^ buf[i]) & 0xFF;
    for (let k = 0; k < 8; k++) c = c & 1 ? (c >>> 1) ^ 0xEDB88320 : c >>> 1;
    crc = (crc >>> 8) ^ c;
  }
  return (crc ^ 0xFFFFFFFF) >>> 0;
}

const inApk = process.argv[2];
const addFile = process.argv[3];
const dest = process.argv[4] || inApk.replace(/\.apk$/i, '') + '-dexed.apk';

const src = fs.readFileSync(inApk);
const entryName = path.basename(addFile);
const data = fs.readFileSync(addFile);
const nameBuf = Buffer.from(entryName, 'utf8');

// --- parse End Of Central Directory ---
let eocd = -1;
for (let i = src.length - 22; i >= 0 && i > src.length - 66000; i--) {
  if (src.readUInt32LE(i) === 0x06054b50) { eocd = i; break; }
}
if (eocd < 0) throw new Error('EOCD not found');
const cdCount = src.readUInt16LE(eocd + 10);
const cdSize = src.readUInt32LE(eocd + 12);
const cdOff = src.readUInt32LE(eocd + 16);
const cd = src.subarray(cdOff, cdOff + cdSize);

// --- keep every existing entry's central record verbatim, note local offsets ---
const entries = [];
let p = 0;
while (p < cd.length) {
  const sig = cd.readUInt32LE(p);
  if (sig !== 0x02014b50) break;
  const nLen = cd.readUInt16LE(p + 28);
  const eLen = cd.readUInt16LE(p + 30);
  const cLen = cd.readUInt16LE(p + 32);
  const lho = cd.readUInt32LE(p + 42);
  const rec = Buffer.from(cd.subarray(p, p + 46 + nLen + eLen + cLen));
  entries.push({ name: rec.subarray(46, 46 + nLen).toString('utf8'), rec, lho });
  p += 46 + nLen + eLen + cLen;
}
const existing = entries.find(e => e.name === entryName);

// --- build the new local file header + payload, appended after the old data ---
const payloadStart = (() => {
  // find the end of the last local entry = start of central directory
  return cdOff;
})();

const stored = zlib.deflateRawSync(data, { level: 9 });
const useDeflate = stored.length < data.length;
const body = useDeflate ? stored : data;
const method = useDeflate ? 8 : 0;
const crc = crc32(data);

const lfh = Buffer.alloc(30);
lfh.writeUInt32LE(0x04034b50, 0);
lfh.writeUInt16LE(20, 4);          // version needed
lfh.writeUInt16LE(0, 6);           // flags
lfh.writeUInt16LE(method, 8);
lfh.writeUInt16LE(0, 10);          // time
lfh.writeUInt16LE(0x21, 12);       // date (1980-01-01)
lfh.writeUInt32LE(crc, 14);
lfh.writeUInt32LE(body.length, 18);
lfh.writeUInt32LE(data.length, 22);
lfh.writeUInt16LE(nameBuf.length, 26);
lfh.writeUInt16LE(0, 28);

const newLocal = Buffer.concat([lfh, nameBuf, body]);
const newLocalOffset = payloadStart;

const cdfh = Buffer.alloc(46);
cdfh.writeUInt32LE(0x02014b50, 0);
cdfh.writeUInt16LE(20, 4);
cdfh.writeUInt16LE(20, 6);
cdfh.writeUInt16LE(0, 8);
cdfh.writeUInt16LE(method, 10);
cdfh.writeUInt16LE(0, 12);
cdfh.writeUInt16LE(0x21, 14);
cdfh.writeUInt32LE(crc, 16);
cdfh.writeUInt32LE(body.length, 20);
cdfh.writeUInt32LE(data.length, 24);
cdfh.writeUInt16LE(nameBuf.length, 28);
cdfh.writeUInt16LE(0, 30);
cdfh.writeUInt16LE(0, 32);
cdfh.writeUInt16LE(0, 34);
cdfh.writeUInt16LE(0, 36);
cdfh.writeUInt32LE(0, 38);
cdfh.writeUInt32LE(newLocalOffset, 42);
const newCd = Buffer.concat([cdfh, nameBuf]);

// --- assemble: [old data][new local][old cd][new cd][new eocd] ---
const keptOthers = entries.filter(e => e.name !== entryName).map(e => e.rec);
const finalCd = Buffer.concat(existing ? [...keptOthers, newCd] : [...keptOthers, newCd]);
const count = keptOthers.length + 1;

const eocdNew = Buffer.alloc(22);
eocdNew.writeUInt32LE(0x06054b50, 0);
eocdNew.writeUInt16LE(0, 4);
eocdNew.writeUInt16LE(0, 6);
eocdNew.writeUInt16LE(count, 8);
eocdNew.writeUInt16LE(count, 10);
eocdNew.writeUInt32LE(finalCd.length, 12);
eocdNew.writeUInt32LE(newLocalOffset + newLocal.length, 16);
eocdNew.writeUInt16LE(0, 20);

const out = Buffer.concat([
  src.subarray(0, payloadStart),
  newLocal,
  finalCd,
  eocdNew,
]);
fs.writeFileSync(dest, out);
console.log(`added ${entryName} (${data.length} bytes, method=${method}) -> ${dest} (${out.length} bytes, ${count} entries)`);
