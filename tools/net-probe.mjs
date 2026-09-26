/**
 * Diagnostic: which network path can actually reach GitHub from this machine?
 *
 * Background: git (both schannel and openssl TLS backends) fails against GitHub
 * with "unexpected eof while reading", while Node's fetch succeeds.  Before
 * concluding anything, measure each path precisely.
 *
 * Usage: node tools/net-probe.mjs
 */
import net from 'node:net'
import tls from 'node:tls'
import http from 'node:http'

const HOST = 'github.com'
const PROXY = { host: '127.0.0.1', port: 7897 }

function log(label, msg) {
  console.log(`  ${label.padEnd(34)} ${msg}`)
}

/** Plain TLS straight to github.com */
function directTls() {
  return new Promise((resolve) => {
    const s = tls.connect(
      { host: HOST, port: 443, servername: HOST, timeout: 12000 },
      () => {
        log('direct TLS', `OK  authorized=${s.authorized} proto=${s.getProtocol()}`)
        s.end()
        resolve(true)
      }
    )
    s.on('error', (e) => { log('direct TLS', `FAIL ${e.message}`); resolve(false) })
    s.on('timeout', () => { log('direct TLS', 'FAIL timeout'); s.destroy(); resolve(false) })
  })
}

/** TLS through the HTTP proxy using CONNECT */
function proxyTls() {
  return new Promise((resolve) => {
    const raw = net.connect(PROXY.port, PROXY.host, () => {
      raw.write(`CONNECT ${HOST}:443 HTTP/1.1\r\nHost: ${HOST}:443\r\n\r\n`)
    })
    let buf = ''
    const onData = (d) => {
      buf += d.toString('latin1')
      if (!buf.includes('\r\n\r\n')) return
      raw.removeListener('data', onData)
      const status = buf.split('\r\n')[0]
      if (!/ 200 /.test(status)) {
        log('proxy CONNECT', `FAIL ${status}`)
        raw.destroy()
        return resolve(false)
      }
      log('proxy CONNECT', status.trim())
      const t = tls.connect({ socket: raw, servername: HOST, timeout: 12000 }, () => {
        log('proxy TLS', `OK  authorized=${t.authorized} proto=${t.getProtocol()}`)
        t.end()
        resolve(true)
      })
      t.on('error', (e) => { log('proxy TLS', `FAIL ${e.message}`); resolve(false) })
      t.on('timeout', () => { log('proxy TLS', 'FAIL timeout'); t.destroy(); resolve(false) })
    }
    raw.on('data', onData)
    raw.on('error', (e) => { log('proxy CONNECT', `FAIL ${e.message}`); resolve(false) })
    raw.setTimeout(12000, () => { log('proxy CONNECT', 'FAIL timeout'); raw.destroy(); resolve(false) })
  })
}

/** HTTPS GET via the proxy with CONNECT, using Node's own TLS */
function proxyHttpsGet(path) {
  return new Promise((resolve) => {
    const req = http.request({
      host: PROXY.host, port: PROXY.port, method: 'CONNECT',
      path: `${HOST}:443`, timeout: 15000,
    })
    req.on('connect', (res, socket) => {
      if (res.statusCode !== 200) { log('proxy GET ' + path, `FAIL ${res.statusCode}`); return resolve(null) }
      const t = tls.connect({ socket, servername: HOST }, () => {
        t.write(`GET ${path} HTTP/1.1\r\nHost: ${HOST}\r\n` +
                `User-Agent: net-probe\r\nAccept: */*\r\nConnection: close\r\n\r\n`)
      })
      const chunks = []
      t.on('data', (d) => chunks.push(d))
      t.on('end', () => {
        const body = Buffer.concat(chunks).toString('utf8')
        const status = body.split('\r\n')[0]
        log('proxy GET ' + path, status.trim())
        resolve(body)
      })
      t.on('error', (e) => { log('proxy GET ' + path, `FAIL ${e.message}`); resolve(null) })
    })
    req.on('error', (e) => { log('proxy CONNECT', `FAIL ${e.message}`); resolve(null) })
    req.end()
  })
}

console.log('='.repeat(74))
console.log('NETWORK PROBE -> ' + HOST)
console.log('='.repeat(74))
console.log()

const d = await directTls()
console.log()
const p = await proxyTls()
console.log()
const body = await proxyHttpsGet('/Nick-DL/lzplay-research.git/info/refs?service=git-upload-pack')

if (body) {
  const head = body.split('\r\n').slice(0, 12)
  console.log('\n  first lines of the git smart-http response:')
  for (const l of head) console.log('     ' + l.slice(0, 100))
}

console.log('\n' + '='.repeat(74))
console.log(`direct TLS : ${d ? 'WORKS' : 'blocked'}`)
console.log(`proxy TLS  : ${p ? 'WORKS' : 'blocked'}`)
console.log(`smart-http : ${body && /^HTTP\/1\.\d 200/.test(body) ? 'WORKS' : 'blocked'}`)
console.log('='.repeat(74))
