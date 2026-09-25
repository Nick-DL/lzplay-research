#!/usr/bin/env python3
"""
Disassemble InstallHelper.a(String) straight out of the freshly built APK to see
whether the standard-install patch is really in the installed artifact, and what
the branch condition compiled to.
"""
import io, os, struct, sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from x86dis import load  # noqa  (just for the loader helper; not used on dex)

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))


def main():
    import zipfile
    apk = sys.argv[1] if len(sys.argv) > 1 else 'work/travel_p5.apk'
    z = zipfile.ZipFile(apk)
    d = z.read('classes.dex')

    # reuse the dexdump3 Dex class
    sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..'))
    import importlib.util
    spec = importlib.util.spec_from_file_location(
        'dexdump3', os.path.join(os.path.dirname(os.path.abspath(__file__)), 'dexdump3.py'))
    m = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(m)
    dx = m.Dex(d)

    target = 'Lcom/x/plus/pro/e/c;'
    want = 'a'
    for cd in dx.classes():
        cn = dx.type_desc(cd['class_idx'])
        if cn != target:
            continue
        print('CLASS', cn)
        for mi, acc, co, isv in dx.methods_of(cd['class_data_off']):
            c, name, proto = dx.method_id(mi)
            if name != want:
                continue
            print('\n--- %s->%s  code_off=%#x ---' % (c, name, co))
            for line in dx.dump_code(co, indent='   '):
                print(line)
        break


if __name__ == '__main__':
    main()
