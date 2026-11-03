# SPDX-License-Identifier: Apache-2.0
"""Stage exact target-OS prerequisite archives through the shared BlobCache.

Internal part of native_ros, with no installer or separate downloader CLI.
Staging does not install packages, execute maintainer scripts, load policy, grant
root authority, or qualify the resulting system. Existing trusted bwrap is reused.
"""
import hashlib
import json
import os
import platform
from pathlib import Path


def sha(path):
    with path.open('rb') as stream:
        return hashlib.file_digest(stream, 'sha256').hexdigest()


def stage_missing_bwrap(sdk, cache, BlobCache, offline=False):
    target = platform.freedesktop_os_release()
    required = {'ID': 'ubuntu', 'VERSION_ID': '25.10', 'VERSION_CODENAME': 'questing'}
    if (os.uname().machine != 'x86_64'
            or any(target.get(key) != value for key, value in required.items())):
        raise RuntimeError('BLOCKED_NATIVE_BWRAP_OS_PROVIDER: missing trusted OS bwrap; '
                           'automatic archive staging currently covers Ubuntu 25.10 x86_64 only')
    source = sdk / 'share/toolchains/native/linux-x86_64/bwrap-ubuntu-25.10.json'
    lock = json.loads(source.read_bytes())
    if (lock.get('format') != 'uwvm-native-os-bwrap-source-lock-v1'
            or lock.get('host') != 'linux' or lock.get('arch') != 'x86_64'
            or lock.get('target_os') != required):
        raise ValueError('Exact matching Ubuntu 25.10 prerequisite source lock required')
    packages = lock.get('packages')
    if (type(packages) is not list or not packages
            or len({row['package'] for row in packages}) != len(packages)
            or not {'bubblewrap', 'apparmor', 'ca-certificates'}.issubset(
                {row['package'] for row in packages})):
        raise ValueError('Complete locked OS prerequisite package set required')
    cache.mkdir(parents=True, exist_ok=True)
    blobs = cache / 'blobs'
    blobs.mkdir(exist_ok=True)
    get = BlobCache(blobs, offline).get
    acquired = []
    for row in packages:
        if not row.get('authenticated_indices'):
            raise ValueError('Authenticated original package provenance required')
        archive = get(row)
        acquired.append({'package': row['package'], 'version': row['version'],
                         'architecture': row['architecture'], 'path': str(archive),
                         'bytes': row['bytes'], 'sha256': row['sha256']})
    record = {'format': 'uwvm-native-os-prerequisite-staging-v1',
              'status': 'BLOCKED_TRUSTED_OS_INSTALL_REQUIRED_ARCHIVES_VERIFIED_ONLY',
              'target_os': required, 'observed_os': target,
              'source_lock': {'path': str(source), 'bytes': source.stat().st_size,
                              'sha256': sha(source)},
              'packages': acquired,
              'dependency_scope': 'Exact additional package set relative to the locked original '
                                  'Ubuntu 25.10 image. It is not a host upgrade plan; review the '
                                  'actual installed package and policy state before administration.',
              'system_installation_performed': False, 'maintainer_scripts_executed': False,
              'live_policy_changed': False, 'root_authority_granted': False,
              'production_admission': False}
    folder = cache / 'system-prerequisites' / sha(source)
    folder.mkdir(parents=True, exist_ok=True)
    temporary = folder / ('staging.' + os.urandom(8).hex() + '.partial')
    report = folder / 'staging.json'
    temporary.write_text(json.dumps(record, indent=2) + '\n')
    temporary.replace(report)
    return report
