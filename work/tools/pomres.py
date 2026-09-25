#!/usr/bin/env python3
"""Phase 1: read POM files already on disk and emit the full transitive
runtime dependency list as 'g:a:v' lines.  No network access."""
import os, re, sys
import xml.etree.ElementTree as ET

NS = '{http://maven.apache.org/POM/4.0.0}'


def txt(el, tag, default=None):
    if el is None:
        return default
    c = el.find(NS + tag)
    return c.text.strip() if c is not None and c.text else default


class Repo:
    def __init__(self, pomdir):
        self.pomdir = pomdir
        self._cache = {}

    def pom(self, g, a, v):
        key = (g, a, v)
        if key in self._cache:
            return self._cache[key]
        fn = os.path.join(self.pomdir, '%s_%s_%s.pom' % (g, a, v))
        if not os.path.exists(fn):
            self._cache[key] = None
            return None
        try:
            root = ET.fromstring(open(fn, 'rb').read())
        except ET.ParseError:
            self._cache[key] = None
            return None
        self._cache[key] = root
        return root

    def model(self, g, a, v, depth=0):
        """returns (props, mgmt, deps, gid, ver)"""
        root = self.pom(g, a, v)
        if root is None:
            return {}, {}, [], g, v
        props = {}
        p = root.find(NS + 'properties')
        if p is not None:
            for c in p:
                props[c.tag.replace(NS, '')] = (c.text or '').strip()
        parent = root.find(NS + 'parent')
        pg, pa, pv = g, a, v
        pprops, pmgmt = {}, {}
        if parent is not None and depth < 6:
            pg = txt(parent, 'groupId', g)
            pa = txt(parent, 'artifactId')
            pv = txt(parent, 'version')
            if pa and pv:
                pprops, pmgmt, _, _, _ = self.model(pg, pa, pv, depth + 1)
        merged = dict(pprops)
        merged.update(props)
        merged.setdefault('project.version', v)
        merged.setdefault('project.groupId', g)

        def resolve(s):
            if not s:
                return s
            for _ in range(6):
                m = re.search(r'\$\{([^}]+)\}', s)
                if not m:
                    break
                s = s[:m.start()] + merged.get(m.group(1), '') + s[m.end():]
            return s

        gid = resolve(txt(root, 'groupId', pg))
        ver = resolve(txt(root, 'version', pv))
        mgmt = dict(pmgmt)
        dm = root.find(NS + 'dependencyManagement')
        if dm is not None:
            deps_el = dm.find(NS + 'dependencies')
            if deps_el is not None:
                for d in deps_el.findall(NS + 'dependency'):
                    dg = resolve(txt(d, 'groupId', ''))
                    da = resolve(txt(d, 'artifactId', ''))
                    dv = resolve(txt(d, 'version', ''))
                    dt = txt(d, 'type', 'jar')
                    if dg and da:
                        mgmt[(dg, da, dt)] = (dv, txt(d, 'scope', ''))
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
                if not dv and (dg, da, dt) in mgmt:
                    dv = mgmt[(dg, da, dt)][0]
                deps.append((dg, da, dv, dt, dsc, opt))
        return merged, mgmt, deps, gid, ver


def main():
    pomdir = sys.argv[1]
    root_g, root_a, root_v = sys.argv[2], sys.argv[3], sys.argv[4]
    repo = Repo(pomdir)
    seen = set()
    todo = [(root_g, root_a, root_v, 'jar')]
    out = []
    while todo:
        g, a, v, t = todo.pop()
        if (g, a) in seen or not v:
            continue
        seen.add((g, a))
        if t != 'jar':
            continue
        out.append('%s:%s:%s' % (g, a, v))
        _, _, deps, _, _ = repo.model(g, a, v)
        for dg, da, dv, dt, dsc, opt in deps:
            if dsc in ('compile', 'runtime') and opt != 'true' and dv:
                todo.append((dg, da, dv, dt))
    print('\n'.join(sorted(set(out))))
    print('# count=%d' % len(set(out)), file=sys.stderr)


if __name__ == '__main__':
    main()
