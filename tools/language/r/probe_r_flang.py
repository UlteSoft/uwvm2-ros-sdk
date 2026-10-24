#!/usr/bin/env python3
"""@file probe_r_flang.py
@brief Compile unchanged original R numerical sources with genuine LLVM 23 Flang.
@details This isolated Linux maintenance probe distinguishes target compilation
from a linked numerical runtime or an R interpreter. Native runtime archives
are never substituted for a Wasm Fortran runtime.
"""
import argparse
import hashlib
import json
import os
import resource
from pathlib import Path
import subprocess
import sys


def digest(path):
    """@brief Hash one exact compiler, original source or target object."""
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    """@brief Preserve actual target compiler results and unresolved runtime symbols."""
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('sdk', 'cache', 'flang', 'host-runtime', 'llvm-bin'):
        parser.add_argument('--' + name, type=Path, required=True)
    args = parser.parse_args()
    if sys.platform != 'linux':
        raise RuntimeError('Use the isolated SSH Linux maintenance container')
    resource.setrlimit(resource.RLIMIT_CORE, (0, 0))
    sdk = args.sdk.resolve(strict=True)
    flang = args.flang.resolve(strict=True)
    closure = args.host_runtime.resolve(strict=True)
    llvm = args.llvm_bin.resolve(strict=True)
    cache = args.cache.resolve()
    cache.mkdir(parents=True, exist_ok=True)
    temporary = cache / 'tmp'
    temporary.mkdir(exist_ok=True)
    env = dict(os.environ, TMPDIR=str(temporary))
    prefix = [str(closure / 'ld-linux-x86-64.so.2'), '--inhibit-cache', '--library-path', str(closure), '--argv0', str(flang), str(flang)]
    report = dict(status='FAIL', language='r', target='wasm32-wasip1', compiler_sha256=digest(flang),
        genuine_interpreter_installed=False, linked_fortran_runtime=False, commands=[], sources=[])
    receipt = cache / 'feasibility.json'

    def run(name, argv, cwd=cache):
        """@brief Preserve exact real commands and complete compiler diagnostics."""
        argv = list(map(str, argv))
        with (cache / (name + '.log')).open('wb') as output:
            result = subprocess.run(argv, cwd=cwd, env=env, stdout=output, stderr=subprocess.STDOUT, timeout=600)
        report['commands'].append(dict(name=name, argv=argv, exit=result.returncode))
        receipt.write_text(json.dumps(report, indent=4) + '\n')
        return result.returncode

    if run('version', [*prefix, '--version']):
        return 1
    version = (cache / 'version.log').read_text()
    report['compiler_version'] = version.strip()
    if '23.1.4' not in version:
        raise RuntimeError('The actual LLVM 23.1.4 frontend is required')
    source = sdk / 'src/language/r/upstream'
    files = sorted(path for path in source.joinpath('src').rglob('*')
        if path.is_file() and path.suffix.lower() in ('.f', '.f90'))
    priority = {'la_constants.f90': 0, 'la_xisnan.f90': 1}
    files.sort(key=lambda path: (priority.get(path.name, 2), str(path)))
    objects = cache / 'objects'
    objects.mkdir(exist_ok=True)
    for index, path in enumerate(files):
        output = objects / (str(index) + '-' + path.name + '.o')
        # Direct -fc1 keeps the audited ELF loader in this one compiler process.
        # Host-specific intrinsic .mod files are intentionally not supplied.
        argv = [*prefix, '-fc1', '-triple', 'wasm32-unknown-wasip1', '-emit-obj', '-O1',
            '-fno-color-diagnostics', '-J', str(objects), '-I', str(objects), str(path), '-o', str(output)]
        syntax_argv = [*prefix, '-fc1', '-triple', 'wasm32-unknown-wasip1', '-fsyntax-only',
            '-fno-color-diagnostics', '-J', str(objects), '-I', str(objects), str(path)]
        syntax = run('syntax-' + str(index), syntax_argv, objects)
        code = run('source-' + str(index), argv, objects)
        undefined = None
        if not code:
            diagnostic = subprocess.run([str(llvm / 'llvm-nm'), '--undefined-only', str(output)],
                cwd=objects, env=env, capture_output=True, text=True, timeout=60)
            undefined = diagnostic.stdout.splitlines() if diagnostic.returncode == 0 else None
        report['sources'].append(dict(path=str(path.relative_to(source)), sha256=digest(path), semantic_check=syntax, exit=code,
            object_sha256=digest(output) if not code else None, undefined_symbols=undefined))
        receipt.write_text(json.dumps(report, indent=4) + '\n')
    report['semantic_checks_passed'] = sum(item['semantic_check'] == 0 for item in report['sources'])
    report['compiled'] = sum(item['exit'] == 0 for item in report['sources'])
    report['rejected'] = [item['path'] for item in report['sources'] if item['exit'] != 0]
    report['status'] = 'TARGET_OBJECTS_ONLY' if not report['rejected'] else 'BLOCKED_TARGET_COMPILATION'
    receipt.write_text(json.dumps(report, indent=4) + '\n')
    print(json.dumps({key: report[key] for key in ('status', 'semantic_checks_passed', 'compiled', 'rejected')}))
    return 0 if not report['rejected'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
