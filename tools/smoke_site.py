#!/usr/bin/env python3
"""
Smoke-test the locally served VitePress site.

Checks base-path isolation, every page of interest, and the static assets.
Runs against `vitepress preview` (default port 4173).

Note on the content checks: they deliberately assert on STRUCTURE (title tag,
VitePress app div, sidebar links, asset prefixes) rather than on Chinese literals.
Embedding CJK literals in a .py file makes the test depend on the platform's source
encoding - on this machine Python reads the file as GBK and the comparison strings
come out mangled, producing false failures.

Usage:  python tools/smoke_site.py [base_url]
"""
import re
import sys
import urllib.error
import urllib.parse
import urllib.request

BASE = sys.argv[1] if len(sys.argv) > 1 else 'http://localhost:4173'
ROOT = '/lzplay-research/'

# page paths as they appear in docs/ (quoted for the URL at request time)
PAGES = [
    ('', 'home'),
    ('README', 'master index'),
    ('00-\u539f\u59cb\u9700\u6c42', 'original requirement'),
    ('01-lzplay/\u76ee\u6807\u8fbe\u6210-GMS\u6b63\u5e38\u8fd0\u884c', 'goal reached'),
    ('01-lzplay/lzplay\u590d\u6d3b\u6210\u529f-\u5b8c\u6574\u8bb0\u5f55', 'revival record'),
    ('01-lzplay/HUAWEI-CER-\u534e\u4e3a\u6388\u6743\u673a\u5236', 'CER mechanism'),
    ('02-siblings/SIBLINGS-\u6539\u5305\u62a5\u544a', 'siblings report'),
    ('03-device/\u6539\u5305\u7248MDM\u6743\u9650-\u5b9e\u6d4b\u7ed3\u8bba', 'repack MDM'),
    ('03-device/\u5e73\u677fMDM\u80fd\u529b\u5b9e\u6d4b-\u6700\u7ec8\u7ed3\u8bba', 'tablet MDM'),
    ('03-device/\u7834\u89e3-GSF\u5c01\u9501\u7684\u6d88\u9664\u65b9\u6cd5', 'Gsf unblock'),
    ('03-device/\u4e09\u53f0\u8bbe\u5907\u5bf9\u7167-\u767d\u540d\u5355\u4e4b\u8c1c', 'whitelist myth'),
]

ASSETS = ['gms_ok.png', 'sitemap.xml', 'hashmap.json', '404.html']


def get(url):
    req = urllib.request.Request(url, headers={'User-Agent': 'smoke-test'})
    with urllib.request.urlopen(req, timeout=15) as r:
        return r.status, r.read()


def main():
    print('=' * 74)
    print('SITE SMOKE TEST   %s' % BASE)
    print('=' * 74)
    fails = []

    print('\n[base path isolation]')
    for path, want in (('/', 404), (ROOT, 200)):
        try:
            st, _ = get(BASE + path)
        except urllib.error.HTTPError as e:
            st = e.code
        ok = st == want
        print('  %-4s %-26s HTTP %s (want %s)' % ('OK' if ok else 'FAIL',
                                                  path, st, want))
        if not ok:
            fails.append(path)

    print('\n[pages]')
    for p, label in PAGES:
        url = BASE + ROOT + urllib.parse.quote(p)
        try:
            st, body = get(url)
        except urllib.error.HTTPError as e:
            st, body = e.code, b''
        ok = st == 200 and len(body) > 2000
        print('  %-4s HTTP %-4s %7d B  %s' % ('OK' if ok else 'FAIL', st,
                                              len(body), label))
        if not ok:
            fails.append(label)

    print('\n[assets]')
    for a in ASSETS:
        try:
            st, body = get(BASE + ROOT + a)
            ok = st == 200
            print('  %-4s HTTP %-4s %8d B  %s' % ('OK' if ok else 'FAIL', st,
                                                  len(body), a))
            if not ok:
                fails.append(a)
        except urllib.error.HTTPError as e:
            print('  FAIL HTTP %-4s            %s' % (e.code, a))
            fails.append(a)

    # ---- structural checks, all ASCII ----
    print('\n[structure]')
    _, html = get(BASE + ROOT + 'README')
    text = html.decode('utf-8', 'replace')

    checks = [
        ('has <title>', bool(re.search(r'<title>[^<]+</title>', text))),
        ('has VitePress app div', 'id="app"' in text or 'VPContent' in text),
        ('has sidebar', 'VPSidebar' in text or 'VPSidebarItem' in text),
        ('has nav', 'VPNav' in text),
        ('has search', 'VPLocalSearchBox' in text or 'DocSearch' in text
                       or 'VPNavBarSearch' in text),
        ('has outline', 'VPDocOutline' in text or 'aside' in text),
        ('base prefix on assets', '/lzplay-research/assets/' in text),
        ('links stay under base',
         '/lzplay-research/' in text and 'href="/01-lzplay' not in text),
        ('no bare /assets/ refs', 'href="/assets/' not in text),
    ]
    for label, ok in checks:
        print('  %-4s %s' % ('OK' if ok else 'FAIL', label))
        if not ok:
            fails.append(label)

    # sitemap must exclude the scratch page
    _, sm = get(BASE + ROOT + 'sitemap.xml')
    smt = sm.decode('utf-8', 'replace')
    n = len(re.findall(r'<url>', smt))
    scratch = 'SESSION-STATE' in smt
    print('  %-4s sitemap has %d entries' % ('OK' if n >= 20 else 'FAIL', n))
    print('  %-4s sitemap excludes SESSION-STATE' % ('FAIL' if scratch else 'OK'))
    if n < 20 or scratch:
        fails.append('sitemap')

    print('\n' + '=' * 74)
    if fails:
        print('FAILURES (%d): %s' % (len(fails), ', '.join(map(str, fails))))
        return 1
    print('ALL CHECKS PASSED')
    return 0


if __name__ == '__main__':
    sys.exit(main())
