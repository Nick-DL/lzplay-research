#!/usr/bin/env python3
"""
Rewrite git history to drop the large blobs that were committed early on.

Why: the tracked set is now only 5.47 MB, but .git is still 246 MB because the
jadx package (124 MB), downloaded framework jars (25 MB) and the bulk device dumps
(~52 MB) live in the history of 36 commits.  Pushing that to GitHub is slow and the
repo would never shrink.

This keeps the commit history (useful provenance for a research repo) and only
removes the offending paths from every commit, then expires the reflogs and gc's.

Prerequisites: a backup of .git already exists outside the repo.

Usage:
    python prune_history.py --dry       # show what would be removed
    python prune_history.py --run       # do it
"""
import os
import re
import subprocess
import sys

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'
MIN_BYTES = 200 * 1024          # only bother with paths that were >= 200 KB

# `sh` is not on PATH on this machine - only git's bundled copy exists.  Use the
# absolute path (with forward slashes) for both the sanity check and filter-branch.
SH = None
for _cand in (r'D:\Program Files\Git\bin\sh.exe',
              r'D:\Program Files\Git\usr\bin\sh.exe',
              r'C:\Program Files\Git\bin\sh.exe'):
    if os.path.exists(_cand):
        SH = _cand.replace('\\', '/')
        break
if SH is None:
    raise SystemExit('cannot find git\'s sh.exe - adjust SH in this script')


def git(*args, timeout=1800, check=False, cwd=BASE):
    r = subprocess.run(['git'] + list(args), capture_output=True, cwd=cwd,
                       timeout=timeout, encoding='utf-8', errors='replace')
    out = (r.stdout or '') + (r.stderr or '')
    if check and r.returncode != 0:
        raise SystemExit('git %s failed:\n%s' % (' '.join(args), out))
    return out


def collect_large_paths():
    """
    Walk every object in history, keep blobs >= MIN_BYTES, map them to paths.

    `git rev-list --objects --all` prints "<sha> <path>" for each object reachable
    from any ref; `git cat-file --batch-check` then tells us the type and size.
    """
    rev = subprocess.run(['git', 'rev-list', '--objects', '--all'],
                         capture_output=True, cwd=BASE, timeout=1800,
                         encoding='utf-8', errors='replace').stdout

    sha_to_path = {}
    order = []
    for line in rev.splitlines():
        parts = line.split(' ', 1)
        if len(parts) == 2:
            sha, path = parts
            if sha not in sha_to_path:
                sha_to_path[sha] = path
                order.append(sha)

    if not order:
        return {}

    # batch-check all shas at once
    proc = subprocess.run(['git', 'cat-file', '--batch-check'],
                          input='\n'.join(order) + '\n',
                          capture_output=True, cwd=BASE, timeout=1800,
                          encoding='utf-8', errors='replace')
    sizes = {}
    for line in (proc.stdout or '').splitlines():
        f = line.split()
        if len(f) == 3:
            sizes[f[0]] = int(f[2])

    out = {}
    for sha, path in sha_to_path.items():
        if sizes.get(sha, 0) >= MIN_BYTES:
            out[path] = sizes[sha]

    # CRITICAL: never strip a path that is still tracked in HEAD.  Doing so would
    # delete it from every historical commit and leave rewrites that disagree with
    # the current tree.  We only want to purge what was *removed*.
    tracked = set()
    ls = subprocess.run(['git', 'ls-files', '-z'], capture_output=True, cwd=BASE,
                        timeout=600).stdout.decode('utf-8', 'replace')
    for p in ls.split('\0'):
        if p:
            tracked.add(p)

    kept = sorted(set(out) & tracked)
    if kept:
        print('  [skipping %d still-tracked paths]' % len(kept))
        for p in kept[:10]:
            print('     keep %s' % p)
    out = {p: s for p, s in out.items() if p not in tracked}
    return out


def main():
    dry = '--run' not in sys.argv

    print('=' * 76)
    print('HISTORY PRUNE  (blobs >= %d KB)' % (MIN_BYTES // 1024))
    print('=' * 76)

    before = git('count-objects', '-vH')
    size_line = [l for l in before.splitlines() if l.startswith('size-pack')]
    print('\n[current] %s' % (size_line[0] if size_line else '?'))
    print('[commits] %s' % git('rev-list', '--count', 'HEAD').strip())

    print('\n[scanning all reachable objects...]')
    big = collect_large_paths()
    if not big:
        print('  nothing above the threshold')
        return 0

    total = sum(big.values())
    print('  %d paths, %.1f MB total\n' % (len(big), total / 1048576))
    for p, s in sorted(big.items(), key=lambda kv: -kv[1])[:25]:
        print('  %9.2f MB  %s' % (s / 1048576, p))
    if len(big) > 25:
        print('  ... and %d more' % (len(big) - 25))

    if dry:
        print('\n(dry run - pass --run to execute)')
        return 0

    # Build the index-filter.  Paths contain spaces and CJK.
    #
    # IMPORTANT: do not inline the path list into the command - 54 paths is ~3.5 KB
    # and Windows caps a command line at 8191 chars, which made the filter fail.
    # Instead write a NUL-separated list to a file and read it from the script.
    listfile = os.path.join(BASE, 'work', 'tools', '_prune_list.bin')
    with open(listfile, 'wb') as f:
        f.write('\0'.join(sorted(big)).encode('utf-8') + b'\0')

    script = os.path.join(BASE, 'work', 'tools', '_prune_filter.sh')
    with open(script, 'w', encoding='utf-8', newline='\n') as f:
        f.write('#!/bin/sh\n')
        f.write('# read the NUL-separated path list and drop those paths from the index\n')
        f.write('xargs -0 -a "%s" git rm -r --cached --ignore-unmatch --quiet --\n'
                % listfile.replace('\\', '/'))
    os.chmod(script, 0o755)
    print('\n[filter script] %s' % script)
    print('[path list]     %s (%d bytes)' % (listfile, os.path.getsize(listfile)))

    # sanity check: the script must actually work before we rewrite 36 commits
    print('\n[sanity check] running the filter once against the current index...')
    chk = subprocess.run([SH, script.replace('\\', '/')], capture_output=True,
                         cwd=BASE, timeout=300, encoding='utf-8', errors='replace')
    print('  exit=%d  %s' % (chk.returncode,
                             ((chk.stdout or '') + (chk.stderr or '')).strip()[:300]))
    if chk.returncode != 0:
        print('\nABORTING: the filter script does not run cleanly.')
        return 1
    # undo the sanity check so the working tree is untouched
    git('reset', '--quiet')
    print('  (index restored)')

    print('\n[rewriting %s commits...]' % git('rev-list', '--count', 'HEAD').strip())
    env = dict(os.environ, FILTER_BRANCH_SQUELCH_WARNING='1')
    r = subprocess.run(
        ['git', 'filter-branch', '-f', '--index-filter',
         '"%s" "%s"' % (SH, script.replace('\\', '/')),
         '--prune-empty', '--', '--all'],
        capture_output=True, cwd=BASE, timeout=5400, env=env,
        encoding='utf-8', errors='replace')
    tail = ((r.stdout or '') + (r.stderr or '')).strip().splitlines()[-12:]
    for l in tail:
        print('  %s' % l[:150])
    print('  exit=%d' % r.returncode)

    print('\n[expiring reflogs and gc...]')
    git('for-each-ref', '--format=%(refname)', 'refs/original/')
    git('update-ref', '-d', 'refs/original/refs/heads/master')
    git('update-ref', '-d', 'refs/original/refs/heads/main')
    git('reflog', 'expire', '--expire=now', '--all')
    git('gc', '--prune=now', '--aggressive', timeout=5400)

    after = git('count-objects', '-vH')
    size_line = [l for l in after.splitlines() if l.startswith('size-pack')]
    print('\n[after] %s' % (size_line[0] if size_line else '?'))
    print('[commits] %s' % git('rev-list', '--count', 'HEAD').strip())
    print('\n[done] run `git status` to confirm the working tree is unchanged')
    return 0


if __name__ == '__main__':
    sys.exit(main())
