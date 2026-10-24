#!/usr/bin/env python3
"""@file probe_r_fortran.py
@brief Build original Netlib f2c and test the complete original R numerical sources.
@details This isolated Linux maintenance probe does not install an R interpreter.
Fortran 90 input is submitted unchanged: rejecting unsupported syntax preserves
original numerical semantics instead of silently omitting LAPACK or BLAS code.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys


def digest(path):
    """@brief Hash one actual source or executable.
    @return Lowercase SHA256.
    """
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    """@brief Preserve every real translator result and exact original source hash."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sdk', type=Path, required=True)
    parser.add_argument('--cache', type=Path, required=True)
    parser.add_argument('--qualified-sdk', type=Path, required=True)
    parser.add_argument('--llvm-bin', type=Path, required=True)
    args = parser.parse_args()
    if sys.platform != 'linux':
        raise RuntimeError('Use the isolated SSH Linux maintenance container')
    sdk = args.sdk.resolve(strict=True)
    source = sdk / 'src/language/r/upstream'
    qualified = args.qualified_sdk.resolve(strict=True)
    llvm = args.llvm_bin.resolve(strict=True)
    profile = next(item for item in json.loads((qualified / 'share/wasm/toolchains.json').read_text())['targets']
        if item['triple'] == 'wasm32-wasip1' and item['profile'] == 'noeh')
    if not profile['tested'] or profile['llvm_major'] != 23:
        raise RuntimeError('A tested LLVM 23 WASIp1 profile is required')
    common = ['--target=wasm32-wasip1', '-no-canonical-prefixes', '-fintegrated-cc1', '--sysroot=' + str(qualified / profile['sysroot']),
        '-isystem', str(qualified / profile['include_dir']), '-resource-dir=' + str(qualified / profile['resource_dir']),
        '-std=c11', '-O1', '-g0']
    cache = args.cache.resolve()
    cache.mkdir(parents=True, exist_ok=True)
    headers = cache / 'include'
    headers.mkdir(exist_ok=True)
    shutil.copyfile(sdk / 'src/language/r/tooling/libf2c/f2c.h0', headers / 'f2c.h')
    translator = cache / 'native-f2c'
    shutil.copytree(sdk / 'src/language/r/tooling/f2c', translator, dirs_exist_ok=True)
    temporary = cache / 'tmp'
    temporary.mkdir(exist_ok=True)
    env = dict(os.environ, TMPDIR=str(temporary), CC=str(llvm / 'clang') + ' -no-canonical-prefixes -fintegrated-cc1 -resource-dir=' + str(llvm.parent / 'lib/clang/23'))
    argv = ['/usr/bin/make', '-f', 'makefile.u', '-j4', 'CC=' + str(llvm / 'clang') + ' -no-canonical-prefixes -fintegrated-cc1 -resource-dir=' + str(llvm.parent / 'lib/clang/23'), 'CFLAGS=-O1 -g0 -std=gnu89', 'f2c']
    with (cache / 'build-f2c.log').open('wb') as output:
        result = subprocess.run(argv, cwd=translator, env=env, stdout=output, stderr=subprocess.STDOUT, timeout=600)
    report = dict(status='FAIL', purpose='genuine R numerical dependency feasibility; no R VM installed',
        build=dict(argv=argv, exit=result.returncode), sources=[],
        compiler='LLVM 23', standalone_interpreter_installed=False,
        fortran_frontends={str(llvm / name): (llvm / name).is_file() for name in ('flang', 'flang-new', 'flang-23')})
    if not result.returncode:
        report['translator_sha256'] = digest(translator / 'f2c')
        for path in sorted(source.joinpath('src').rglob('*')):
            if not path.is_file() or path.suffix.lower() not in ('.f', '.f90'):
                continue
            relative = path.relative_to(source)
            output_dir = cache / 'translated' / relative.parent
            output_dir.mkdir(parents=True, exist_ok=True)
            # f2c accepts fixed-form input on stdin. Free-form Fortran 90 is
            # deliberately retained to expose the actual language gap.
            argv = [str(translator / 'f2c'), '-A', '-R', '-T' + str(temporary)]
            with path.open('rb') as input_file, (output_dir / (path.name + '.c')).open('wb') as output_file, \
                (output_dir / (path.name + '.log')).open('wb') as errors:
                result = subprocess.run(argv, cwd=output_dir, env=env, stdin=input_file,
                    stdout=output_file, stderr=errors, timeout=600)
            report['sources'].append(dict(path=str(relative), sha256=digest(path), argv=argv,
                exit=result.returncode, c_bytes=(output_dir / (path.name + '.c')).stat().st_size))
            if not result.returncode:
                target = output_dir / (path.name + '.o')
                compile_argv = [str(llvm / 'clang'), *common, '-I' + str(headers), '-c',
                    str(output_dir / (path.name + '.c')), '-o', str(target)]
                with (output_dir / (path.name + '.clang.log')).open('wb') as diagnostics:
                    compiled = subprocess.run(compile_argv, cwd=output_dir, env=env, stdout=diagnostics, stderr=subprocess.STDOUT, timeout=600)
                report['sources'][-1]['target_compile'] = dict(argv=compile_argv, exit=compiled.returncode,
                    sha256=digest(target) if compiled.returncode == 0 else None)
        report['compiled'] = sum(item.get('target_compile', {}).get('exit') == 0 for item in report['sources'])
        report['translated'] = sum(item['exit'] == 0 for item in report['sources'])
        report['rejected'] = [item['path'] for item in report['sources'] if item['exit'] != 0]
        report['status'] = 'PASS' if not report['rejected'] else 'BLOCKED_ORIGINAL_FORTRAN_FEATURES'
    (cache / 'feasibility.json').write_text(json.dumps(report, indent=4) + '\n')
    print(json.dumps({key: report[key] for key in ('status', 'translated', 'compiled', 'rejected') if key in report}))
    return 0 if report['status'] == 'PASS' else 1


if __name__ == '__main__':
    raise SystemExit(main())
