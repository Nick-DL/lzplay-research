#!/usr/bin/env python3
"""Bare-bones Maven dependency resolver: walks a POM, follows parent POMs,
applies dependencyManagement, downloads every runtime jar into --out.
Only needs `requests`-free stdlib (urllib)."""
import os, re, sys, urllib.request, urllib.error
import xml.etree.ElementTree as ET

CENTRAL = 'https://repo1.maven.org/maven2/'
NS = '{http://maven.apache.org/POM/4.0.0}'
_cache = {}


def fetch(url):
    if url in _cache:
        return _cache[url]
    try:
        with urllib.request.urlopen(url, timeout=60) as r:
            data = r.read()
        _cache[url] = data
        return data
    except urllib.error.HTTPError as e:
        _cache[url] = None
        return None


def pom_url(g, a, v):
    return '%s%s/%s/%s/%s-%s.pom' % (CENTRAL, g.replace('.', '/'), a, v, a, v)


def jar_url(g, a, v):
    return '%s%s/%s/%s/%s-%s.jar' % (CENTRAL, g.replace('.', '/'), a, v, a, v)


def txt(el, tag, default=None):
    if el is None:
        return default
    c = el.find(NS + tag)
    return c.text.strip() if c is not None and c.text else default


def parse_pom(g, a, v, depth=0):
    """Return (props, depMgmt{}, deps[]) for a pom."""
    raw = fetch(pom_url(g, a, v))
    if raw is None:
        return {}, {}, []
    try:
        root = ET.fromstring(raw)
    except ET.ParseError:
        return {}, {}, []
    props = {}
    p = root.find(NS + 'properties')
    if p is not None:
        for c in p:
            props[c.tag.replace(NS, '')] = (c.text or '').strip()
    # parent
    parent = root.find(NS + 'parent')
    pg, pa, pv = g, a, v
    pprops, pmgmt, _ = {}, {}, []
    if parent is not None:
        pg = txt(parent, 'groupId', g); pa = txt(parent, 'artifactId'); pv = txt(parent, 'version')
        if pa and pv:
            pprops, pmgmt, _ = parse_pom(pg, pa, pv, depth + 1)
    merged = dict(pprops); merged.update(props)
    # groupId/version inheritance
    gid = txt(root, 'groupId', pg)
    ver = txt(root, 'version', pv)

    def resolve(s):
        if not s:
            return s
        s = s.strip()
        for _ in range(5):
            m = re.search(r'\$\{([^}]+)\}', s)
            if not m:
                break
            key = m.group(1)
            val = merged.get(key, '')
            s = s[:m.start()] + val + s[m.end():]
        return s

    mgmt = dict(pmgmt)
    dm = root.find(NS + 'dependencyManagement')
    if dm is not None:
        deps = dm.find(NS + 'dependencies')
        if deps is not None:
            for d in deps.findall(NS + 'dependency'):
                dg = resolve(txt(d, 'groupId', '')); da = resolve(txt(d, 'artifactId', ''))
                dv = resolve(txt(d, 'version', '')); dt = txt(d, 'type', 'jar')
                dsc = txt(d, 'scope', '')
                if dg and da:
                    mgmt[(dg, da, dt)] = (dv, dsc)
    deps = []
    deps_el = root.find(NS + 'dependencies')
    if deps_el is not None:
        for d in deps_el.findall(NS + 'dependency'):
            dg = resolve(txt(d, 'groupId', ''))
            da = resolve(txt(d, 'artifactId', ''))
            dv = resolve(txt(d, 'version', ''))
            dt = txt(d, 'type', 'jar')
            dsc = txt(d, 'scope', 'compile')
            opt = txt(d, 'optional', 'false')
            if not dv or not dg or not da:
                k = (dg, da, dt)
                if k in mgmt:
                    dv = dv or mgmt[k][0]
            if not dv:
                k = (dg, da, dt)
                if k in mgmt:
                    dv = mgmt[k][0]
            deps.append(dict(g=dg, a=da, v=dv, t=dt, scope=dsc, optional=opt))
    return merged, mgmt, deps


def main():
    root_g, root_a, root_v = sys.argv[1], sys.argv[2], sys.argv[3]
    out = sys.argv[4]
    os.makedirs(out, exist_ok=True)
    props, mgmt, deps = parse_pom(root_g, root_a, root_v)
    print('root %s:%s:%s -> %d direct deps' % (root_g, root_a, root_v, len(deps)))
    seen = set()
    todo = [(d['g'], d['a'], d['v'], d['t']) for d in deps
            if d['scope'] in ('compile', 'runtime') and d['optional'] != 'true' and d['v']]
    got = []
    while todo:
        g, a, v, t = todo.pop()
        if (g, a) in seen:
            continue
        seen.add((g, a))
        if t != 'jar':
            print('  skip non-jar %s:%s (%s)' % (g, a, t))
            continue
        u = jar_url(g, a, v)
        data = fetch(u)
        if data is None:
            print('  MISSING %s:%s:%s' % (g, a, v))
            continue
        fn = os.path.join(out, '%s-%s.jar' % (a, v))
        if not os.path.exists(fn):
            open(fn, 'wb').write(data)
        got.append(fn)
        print('  ok  %-45s %8d  %s' % ('%s:%s' % (a, v), len(data), fn))
        # transitive
        _, _, sub = parse_pom(g, a, v)
        for s in sub:
            if s['scope'] in ('compile', 'runtime') and s['optional'] != 'true' and s['v']:
                todo.append((s['g'], s['a'], s['v'], s['t']))
    print('\ntotal jars: %d' % len(got))


if __name__ == '__main__':
    main()
