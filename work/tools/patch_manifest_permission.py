#!/usr/bin/env python3
"""
Add <uses-permission android:name="android.permission.REQUEST_INSTALL_PACKAGES" />
to a compiled AndroidManifest.xml, in place.

Why: the travel app only requests Huawei's privileged install permissions
(MDM_INSTALL_SYS_APP / MDM_INSTALL_UNDETACHABLE_APP).  Its original install path was
DevicePackageManager.installPackage(), a vendor API that bypasses the standard
installer, so it never needed the Android-side permission.  Our patch routes
installation through ACTION_VIEW, and without REQUEST_INSTALL_PACKAGES the installer
(InstallStart) starts and is torn down in a few milliseconds with no log output.

What this does: binary-XML surgery.  It
  1. parses the string pool,
  2. appends the two new strings ("android.permission.REQUEST_INSTALL_PACKAGES" and
     "uses-permission"),
  3. rebuilds the pool with correct offsets and chunk size,
  4. inserts a new <uses-permission> start/end element pair as the first child of
     <manifest>, right after the <uses-sdk> element,
  5. fixes up the XML chunk size and every following chunk offset.

Resource IDs (the attribute name) are reused from the existing pool: android:name is
0x01010003, which is already present.

Usage:
    python tools/patch_manifest_permission.py <apk> --check
    python tools/patch_manifest_permission.py <apk> --run
"""
import os
import re
import shutil
import struct
import sys
import zipfile

BASE = r'C:\Users\NickDL\Desktop\codespace\lzplay'

RES_STRING_POOL = 0x0001
RES_XML = 0x0003
RES_XML_START_ELEMENT = 0x0102
RES_XML_END_ELEMENT = 0x0103
RES_XML_RESOURCE_MAP = 0x0180

UTF8_FLAG = 1 << 8

NEW_PERM = 'android.permission.REQUEST_INSTALL_PACKAGES'
NEW_TAG = 'uses-permission'
ANDROID_NAME_RID = 0x01010003


def parse_pool(data, off):
    ctype, hsize, csize = struct.unpack_from('<HHI', data, off)
    assert ctype == RES_STRING_POOL, 'expected string pool at %d, got 0x%04x' % (off, ctype)
    strcount, stylecount, flags, strstart, stylestart = struct.unpack_from('<IIIII', data, off + 8)
    utf8 = bool(flags & UTF8_FLAG)
    offsets = list(struct.unpack_from('<%dI' % strcount, data, off + 28))
    base = off + strstart
    out = []
    for o in offsets:
        p = base + o
        if utf8:
            n = data[p]
            p += 1
            if n & 0x80:
                n = ((n & 0x7F) << 8) | data[p]
                p += 1
            n2 = data[p]
            p += 1
            if n2 & 0x80:
                n2 = ((n2 & 0x7F) << 8) | data[p]
                p += 1
            s = data[p:p + n2].decode('utf-8', 'replace')
        else:
            n = struct.unpack_from('<H', data, p)[0]
            p += 2
            if n & 0x8000:
                n = ((n & 0x7FFF) << 16) | struct.unpack_from('<H', data, p)[0]
                p += 2
            s = data[p:p + n * 2].decode('utf-16-le', 'replace')
        out.append(s)
    return out, utf8, csize


def build_pool(strings, utf8):
    """Serialise a string pool.  Styles are not supported (and not needed)."""
    if utf8:
        body = bytearray()
        offsets = []
        for s in strings:
            offsets.append(len(body))
            b = s.encode('utf-8')
            u16len = len(s)
            # u16 length (varint-ish)
            if u16len > 0x7F:
                body += bytes([(u16len >> 8) | 0x80, u16len & 0xFF])
            else:
                body += bytes([u16len])
            # u8 length
            if len(b) > 0x7F:
                body += bytes([(len(b) >> 8) | 0x80, len(b) & 0xFF])
            else:
                body += bytes([len(b)])
            body += b
            body += b'\x00'
        flags = UTF8_FLAG
    else:
        body = bytearray()
        offsets = []
        for s in strings:
            offsets.append(len(body))
            enc = s.encode('utf-16-le')
            n = len(s)
            if n > 0x7FFF:
                body += struct.pack('<HH', (n >> 16) | 0x8000, n & 0xFFFF)
            else:
                body += struct.pack('<H', n)
            body += enc
            body += b'\x00\x00'
        flags = 0

    while len(body) % 4:
        body += b'\x00'

    strstart = 28 + 4 * len(strings)
    while strstart % 4:
        strstart += 1
    pad = strstart - (28 + 4 * len(strings))

    size = strstart + len(body)
    out = bytearray()
    out += struct.pack('<HHI', RES_STRING_POOL, 28, size)
    out += struct.pack('<IIIII', len(strings), 0, flags, strstart, 0)
    for o in offsets:
        out += struct.pack('<I', o)
    out += b'\x00' * pad
    out += body
    return bytes(out)


def iter_chunks(data, start):
    pos = start
    while pos + 8 <= len(data):
        ctype, hsize, csize = struct.unpack_from('<HHI', data, pos)
        if csize < 8:
            break
        yield pos, ctype, hsize, csize
        pos += csize


def patch(apk, run):
    print('=' * 78)
    print('ADD REQUEST_INSTALL_PACKAGES   %s' % os.path.relpath(apk, BASE))
    print('=' * 78)

    z = zipfile.ZipFile(apk)
    entry = 'AndroidManifest.xml'
    data = bytearray(z.read(entry))
    print('  manifest: %d bytes' % len(data))

    # ---- 2. locate the chunks: [XML header][resource map?][string pool][body...] ----
    # Do NOT assume the pool sits at offset 8 - there is normally a resource-map chunk
    # between the XML header and the pool.
    chunks = list(iter_chunks(data, 8))
    print('  chunks after the XML header:')
    pool_pos = None
    for pos, ctype, hsize, csize in chunks:
        name = {0x0001: 'string-pool', 0x0180: 'resource-map',
                0x0100: 'start-ns', 0x0101: 'end-ns',
                0x0102: 'start-element', 0x0103: 'end-element',
                0x0104: 'cdata'}.get(ctype, '0x%04x' % ctype)
        print('     +%-6d %-14s %d bytes' % (pos, name, csize))
        if ctype == RES_STRING_POOL and pool_pos is None:
            pool_pos = pos
    if pool_pos is None:
        print('  ERROR: no string pool found')
        return 1

    strings, utf8, pool_csize = parse_pool(data, pool_pos)
    print('  pool at %d: %d strings, utf8=%s, %d bytes'
          % (pool_pos, len(strings), utf8, pool_csize))

    if NEW_PERM in strings:
        print('\n  permission string already present -> nothing to do')
        return 0
    print('  "%s" not in pool -> will add' % NEW_PERM)
    if NEW_TAG not in strings:
        print('  "%s" not in pool -> will add' % NEW_TAG)

    if not run:
        print('\n  plan:')
        print('    + append 2 strings to the pool and rebuild it')
        print('    + insert <uses-permission android:name="%s"/>' % NEW_PERM)
        print('      as the first child of <manifest>')
        print('    + fix the XML chunk size')
        print('\n(dry run - pass --run to apply)')
        return 0

    # ---- 1. new string pool ----
    new_strings = list(strings)
    perm_idx = len(new_strings)
    new_strings.append(NEW_PERM)
    if NEW_TAG not in strings:
        tag_idx = len(new_strings)
        new_strings.append(NEW_TAG)
    else:
        tag_idx = strings.index(NEW_TAG)
    print('\n  new pool: %d strings (perm=%d, tag=%d)' % (len(new_strings), perm_idx, tag_idx))

    new_pool = build_pool(new_strings, utf8)

    # ---- splice: keep everything before the pool, swap the pool, then patch the body ----
    head = bytes(data[:pool_pos])
    body = bytes(data[pool_pos + pool_csize:])

    # ---- 3. build the element pair ----
    # ResXMLTree_node: header(8) + lineNumber(4) + comment(4) = 16 bytes of header,
    # so chunk headerSize must be 8 (the size of ResChunk_header), NOT 16.  Getting
    # this wrong yields "ResXMLTree_node header size 0x0008 is too small".
    def start_element(name_idx, attrs):
        body = bytearray()
        body += struct.pack('<II', 0xFFFFFFFF, 0xFFFFFFFF)   # lineNo, comment
        body += struct.pack('<i', -1)                        # ns
        body += struct.pack('<i', name_idx)
        body += struct.pack('<HH', 20, 20)                   # attributeStart, attributeSize
        body += struct.pack('<H', len(attrs))                # attributeCount
        body += struct.pack('<HHH', 0, 0, 0)                 # idIndex, classIndex, styleIndex
        for ns, nm, raw, tv in attrs:
            body += struct.pack('<iii', ns, nm, raw)
            body += tv
        size = 16 + len(body)
        return struct.pack('<HHI', RES_XML_START_ELEMENT, 8, size) + bytes(body)

    def end_element(name_idx):
        body = bytearray()
        body += struct.pack('<II', 0xFFFFFFFF, 0xFFFFFFFF)
        body += struct.pack('<i', -1)
        body += struct.pack('<i', name_idx)
        size = 16 + len(body)
        return struct.pack('<HHI', RES_XML_END_ELEMENT, 8, size) + bytes(body)

    # android:name="<perm>"
    #   ns       = -1                       (no namespace)
    #   name     = 0x01010003               (the android:name resource id)
    #   rawValue = index into the string pool of the *value*  <-- NOT the rid
    # Typed value is TYPE_STRING (0x03) whose data field is the same pool index.
    tv = struct.pack('<HBBI', 0x08, 0x03, 0, perm_idx)   # size=8, res0=0, type=STRING, data
    se = start_element(tag_idx, [(-1, ANDROID_NAME_RID, perm_idx, tv)])
    ee = end_element(tag_idx)
    print('  element pair: %d bytes' % (len(se) + len(ee)))

    # ---- 4. reassemble ----
    # The XML chunk must begin with <manifest>, so the permission elements cannot go
    # before it.  Find the <manifest> start element and insert immediately after it,
    # i.e. as its first child.
    # body already extracted above
    ins = None
    for pos, ctype, hsize, csize in iter_chunks(body, 0):
        if ctype == RES_XML_START_ELEMENT:
            # ResXMLTree_node is 16 bytes (header 8 + lineNumber 4 + comment 4).
            # ResXMLTree_attrExt then holds ns(4) size(4) ...
            # So `ns` sits at pos+16 and `name` at pos+20.  Reading at pos+16 yields
            # ns, which is -1 for a no-namespace element, and detection silently fails.
            nm = struct.unpack_from('<i', body, pos + 20)[0]
            label = strings[nm] if 0 <= nm < len(strings) else '?'
            print('  first start-element: name_idx=%d (%r)' % (nm, label))
            if 0 <= nm < len(strings) and strings[nm] == 'manifest':
                ins = pos + csize
                print('  <manifest> start element at body+%d, inserting at +%d' % (pos, ins))
            break

    if ins is None:
        print('  ERROR: could not locate the <manifest> start element')
        return 1

    newbody = body[:ins] + se + ee + body[ins:]
    out = bytearray(head + new_pool + newbody)
    struct.pack_into('<I', out, 4, len(out))     # XML chunk size

    # ---- 5. write back ----
    tmp = apk + '.tmp'
    with zipfile.ZipFile(tmp, 'w', zipfile.ZIP_DEFLATED, compresslevel=6) as zo:
        for item in z.infolist():
            payload = bytes(out) if item.filename == entry else z.read(item.filename)
            zi = zipfile.ZipInfo(item.filename, date_time=item.date_time)
            zi.compress_type = item.compress_type
            zi.external_attr = item.external_attr
            zi.internal_attr = item.internal_attr
            zi.create_system = item.create_system
            zo.writestr(zi, payload)
    z.close()
    shutil.move(tmp, apk)

    print('\n  manifest now %d bytes' % len(out))
    print('  wrote %s' % os.path.relpath(apk, BASE))
    print('\n  NOTE: now unsigned - re-run zipalign + apksigner')
    return 0


def main():
    if len(sys.argv) < 2:
        print(__doc__)
        return 1
    apk = sys.argv[1]
    if not os.path.isabs(apk):
        apk = os.path.join(BASE, apk)
    run = '--run' in sys.argv
    return patch(apk, run)


if __name__ == '__main__':
    sys.exit(main())
