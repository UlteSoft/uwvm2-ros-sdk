#!/usr/bin/env python3
"""@file build_r.py
@brief Attempt the original R standalone WASIp1 port with explicit LLVM 23 inputs.
@details This maintenance producer preserves concrete configuration failures.
It never labels webR/Emscripten output as WASI or creates a substitute R parser.
An original Fortran-to-Wasm dependency closure and base package startup remain
required before this route may install or advertise a reusable R command.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shlex
import subprocess
import sys


def digest(filename):
    """@brief Hash exact file bytes.
    @param filename Existing input.
    @return SHA256.
    """
    return hashlib.sha256(Path(filename).read_bytes()).hexdigest()


def main():
    """@brief Retain real LLVM 23 configure evidence without fabricating a runtime."""
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('sdk', 'qualified-sdk', 'llvm-bin', 'cache'):
        parser.add_argument('--' + name, type=Path, required=True)
    parser.add_argument('--fortran', type=Path)
    parser.add_argument('--target', choices=('wasm32-wasip1', 'wasm64-wasip1'), default='wasm32-wasip1')
    args = parser.parse_args()
    if sys.platform != 'linux':
        raise RuntimeError('Use the isolated SSH Linux maintenance container')
    sdk = args.sdk.resolve(strict=True)
    llvm = args.llvm_bin.resolve(strict=True)
    qualified = args.qualified_sdk.resolve(strict=True)
    source = sdk / 'src/language/r/upstream'
    cache = args.cache.resolve()
    cache.mkdir(parents=True, exist_ok=True)
    temporary = cache / 'tmp'
    temporary.mkdir(exist_ok=True)
    build = cache / 'wasi'
    build.mkdir(exist_ok=True)
    manifest = json.loads((qualified / 'share/wasm/toolchains.json').read_text())
    profile = next(item for item in manifest['targets'] if item['triple'] == args.target and item['profile'] == 'noeh')
    if not profile['tested'] or profile['llvm_major'] != 23:
        raise RuntimeError('The tested LLVM 23 target profile is required')
    common = ['--target=' + args.target, '-no-canonical-prefixes', '-fintegrated-cc1', '--sysroot=' + str(qualified / profile['sysroot']),
        '-isystem', str(qualified / profile['include_dir']), '-resource-dir=' + str(qualified / profile['resource_dir']),
        '-B' + str(qualified / profile['lib_dir']), '-L' + str(qualified / profile['lib_dir']),
        '-fuse-ld=' + str(llvm / 'wasm-ld'), '-Wno-unused-command-line-argument', '-O1', '-g0']
    fortran = str(args.fortran.resolve(strict=True)) if args.fortran else '/usr/bin/false'
    env = dict(os.environ, TMPDIR=str(temporary), CC=shlex.join([str(llvm / 'clang'), *common]),
        CXX=shlex.join([str(llvm / 'clang++'), *common]), FC=fortran, F77=fortran,
        AR=str(llvm / 'llvm-ar'), RANLIB=str(llvm / 'llvm-ranlib'), NM=str(llvm / 'llvm-nm'),
        CFLAGS='-O1 -g0', CXXFLAGS='-O1 -g0', PKG_CONFIG_LIBDIR='', PKG_CONFIG_PATH='',
        ac_cv_c_bigendian='no', r_cv_cstack_direction='down', r_cv_have_utf8='yes')
    commands = []
    report = dict(status='FAIL', language='r', version='4.5.1', target=args.target,
        genuine_runtime_installed=False, compiler='LLVM 23', fortran=fortran,
        target_manifest_sha256=digest(qualified / 'share/wasm/toolchains.json'), commands=commands,
        outstanding=['original numerical/Fortran closure', 'standalone base package filesystem/startup',
            'qualified nonlocal-control and complete raw ABI adapter', 'genuine R and native ROS acceptance'])
    for name, argv, cwd in [('llvm-version', [llvm / 'clang', '--version'], None),
        ('configure-wasi', [source / 'configure', '--host=' + args.target.split('-')[0] + '-unknown-wasi', '--build=x86_64-pc-linux-gnu',
            '--without-x', '--without-readline', '--without-recommended-packages', '--without-tcltk',
            '--without-libpng', '--without-jpeglib', '--without-libtiff', '--without-cairo',
            '--without-aqua', '--without-libcurl', '--disable-openmp', '--disable-R-shlib',
            '--with-blas=no', '--with-lapack=no', '--disable-java', '--with-internal-tzcode'], build)]:
        argv = list(map(str, argv))
        with (cache / (name + '.log')).open('wb') as output:
            result = subprocess.run(argv, cwd=cwd, env=env, stdout=output, stderr=subprocess.STDOUT, timeout=600)
        commands.append(dict(name=name, argv=argv, cwd=str(cwd) if cwd else None, exit=result.returncode))
        if result.returncode:
            report['failure_step'] = name
            break
    (cache / 'build-receipt.json').write_text(json.dumps(report, indent=4) + '\n')
    print(json.dumps(report))
    return 1


if __name__ == '__main__':
    raise SystemExit(main())
