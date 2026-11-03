# SPDX-License-Identifier: Apache-2.0
"""Reproduce the supervisor host bundle from its exact original upstream archive.

Maintainer tool only. End users restore the distributed bundle through the shared
Xmake installer, without an installed Python, tar, shell or compiler.
"""
import argparse
import hashlib
import json
import posixpath
import subprocess
import sys
import tarfile
from pathlib import Path, PurePosixPath


def sha(path):
    with path.open('rb') as stream:
        return hashlib.file_digest(stream, 'sha256').hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('sdk', 'archive', 'output', 'xmake'):
        parser.add_argument('--' + name, type=Path, required=True)
    args = parser.parse_args()
    sdk = args.sdk.resolve(strict=True)
    archive = args.archive.resolve(strict=True)
    output = args.output.resolve()
    if output.exists() or output.is_relative_to(sdk):
        raise ValueError('Fresh maintainer output separate from SDK required')
    sys.path.insert(0, str(sdk / 'tools/language/python'))
    from relink_stdlib import cgroup_budget
    cgroup_budget()
    source_path = sdk / 'share/toolchains/host/linux-x86_64/python-supervisor-source.json'
    source_bytes = source_path.read_bytes()
    source = json.loads(source_bytes)
    if (source['format'] != 'uwvm-host-python-original-provenance-v1'
            or source['release'] != '20260728'
            or source['archive']['sha256'] != '7ceaf4360f4b4ab44f31d8217cfdc70df8e12b61d9561b4900ee7af87176e50d'
            or archive.stat().st_size != source['archive']['bytes']
            or sha(archive) != source['archive']['sha256']):
        raise ValueError('Exact original Python supervisor source archive required')
    output.mkdir(parents=True)
    closure = output / 'closure'
    closure.mkdir()
    files, links, original_links, seen = [], {}, [], set()

    def safe(name):
        value = PurePosixPath(name)
        if (value.is_absolute() or '..' in value.parts or not value.parts
                or value.parts[0] != 'python' or '\0' in name):
            raise ValueError('Nonconfined original host Python path')
        return value.as_posix()

    with tarfile.open(archive, 'r:gz') as stream:
        for item in stream:
            name = safe(item.name)
            if item.isdir():
                continue
            if name in seen:
                raise ValueError('Duplicate original host Python path')
            seen.add(name)
            if item.isreg():
                data = stream.extractfile(item).read()
                if len(data) != item.size:
                    raise ValueError('Truncated original host Python member')
                target = closure / name
                target.parent.mkdir(parents=True, exist_ok=True)
                target.write_bytes(data)
                target.chmod(0o444)
                files.append({'path': name, 'bytes': len(data),
                              'sha256': hashlib.sha256(data).hexdigest(),
                              'executable': bool(item.mode & 0o111)})
            elif item.issym() or item.islnk():
                if item.linkname.startswith('/'):
                    raise ValueError('Absolute original host Python alias')
                target = posixpath.normpath(item.linkname if item.islnk() else
                                           posixpath.join(posixpath.dirname(name), item.linkname))
                safe(target)
                links[name] = target
                original_links.append({'path': name, 'original_target': item.linkname,
                                       'kind': 'symlink' if item.issym() else 'hardlink'})
            else:
                raise ValueError('Unrepresentable original host Python entry')
    if (len(files) != source['original_regular_file_count']
            or original_links != source['original_links']):
        raise ValueError('Complete original Python archive inventory differs')
    regular = {row['path'] for row in files}
    aliases = []
    for name, target in sorted(links.items()):
        walked = set()
        while target in links:
            if target in walked:
                raise ValueError('Original host Python alias cycle')
            walked.add(target)
            target = links[target]
        if target not in regular:
            raise ValueError('Original host Python alias must resolve to a regular member')
        aliases.append({'path': name, 'target': target})
    provenance = closure / 'SOURCE.json'
    provenance.write_bytes(source_bytes)
    files.append({'path': 'SOURCE.json', 'bytes': len(source_bytes),
                  'sha256': sha(provenance), 'executable': False})
    inventory = {'format': 'uwvm-host-tool-closure-v1', 'host': 'linux', 'arch': 'x86_64',
                 'package': 'python-supervisor', 'version': '3.12.13-20260728',
                 'files': files, 'aliases': aliases,
                 'programs': {'python3': 'python/bin/python3.12'}, 'provenance': 'SOURCE.json'}
    inventory_path = output / 'inventory.json'
    inventory_path.write_text(json.dumps(inventory, indent=2) + '\n')
    subprocess.run([str(args.xmake.resolve(strict=True)), 'lua',
                    str(sdk / 'tools/xmake/package_bundle.lua'), str(inventory_path),
                    str(closure), str(output / 'bundle')], check=True, timeout=300)


if __name__ == '__main__':
    main()
