"""Build the unchanged public native C++ component and consume frozen C0 Wasm.

The test autobuild path verifies the existing artifacts and never invokes a
compiler, linker, Wasm rewriter or artifact regeneration command.
"""
import argparse
import json
from pathlib import Path
import shutil
import sys
from example_support import context, program, require, save


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--sdk-root', type=Path, required=True)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--artifact', type=Path, required=True)
    parser.add_argument('--verify-only', action='store_true')
    args = parser.parse_args()
    example = args.manifest.resolve().parent
    configuration = json.loads(args.manifest.read_text())
    installed = args.sdk_root / configuration['frozen_wasm']['sdk_path']
    build = args.artifact.resolve().parent
    build.mkdir(parents=True, exist_ok=True)
    api, ctx = context(args.sdk_root, args.manifest, installed, build / 'build-invocations')
    try:
        profile = api.read_json(example / configuration['vendor_profile'])
        require(api.digest(example / 'application/main.c') == profile['application']['source_sha256'],
                'The canonical application source changed')
        sources = api.read_json(example / profile['native_component']['source_closure'])
        source_root = Path(ctx.deployment['native_build']['source_root']).resolve(strict=True)
        for row in sources['files']:
            path = source_root / row['path']
            require(path.is_file() and not path.is_symlink() and path.stat().st_size == row['bytes']
                    and api.digest(path) == row['sha256'], 'Public native source differs: ' + row['path'])
        receipt = build / 'native-build.json'
        if args.verify_only or receipt.exists():
            previous = api.read_json(receipt)
            require(previous['status'] == 'BUILT_UNMODIFIED_PUBLIC_NATIVE_AND_CONSUMED_FROZEN_WASM'
                    and previous['source_inventory_sha256'] == api.digest(example / profile['native_component']['source_closure'])
                    and api.digest(previous['native_executable']) == previous['native_sha256']
                    and api.digest(args.artifact) == ctx.before, 'BLOCKED_BUILD_FIRST_OR_CHANGED_ARTIFACT')
            save(ctx.output / 'verification.json', dict(status='VERIFIED_EXISTING_BUILD_NO_COMPILER',
                 native_sha256=previous['native_sha256'], wasm_sha256=ctx.before,
                 actual_controller=ctx.controller))
            return
        require(not receipt.exists(), 'Existing build receipt: use a fresh build directory for a new build')
        cmake = program(ctx, 'cmake')
        compiler = program(ctx, 'compiler')
        ninja = program(ctx, 'ninja')
        native_build = build / 'native'
        commands = [
            [cmake, '-S', str(source_root / profile['native_component']['public_VM_source_path']),
             '-B', str(native_build), '-G', 'Ninja', '-DCMAKE_BUILD_TYPE=Release',
             '-DCMAKE_CXX_COMPILER=' + compiler, '-DCMAKE_MAKE_PROGRAM=' + ninja,
             '-DCMAKE_EXE_LINKER_FLAGS=-fuse-ld=lld -Wl,--as-needed',
             '-DCMAKE_EXPORT_COMPILE_COMMANDS=ON', '-DCMAKE_FIND_USE_PACKAGE_REGISTRY=OFF',
             '-DCMAKE_FIND_USE_SYSTEM_PACKAGE_REGISTRY=OFF', '-DCMAKE_EXPORT_NO_PACKAGE_REGISTRY=ON',
             '-DPython3_EXECUTABLE=' + program(ctx, 'python')],
            [cmake, '--build', str(native_build), '--parallel', '1']]
        for index, argv in enumerate(commands):
            actor = ctx.spawn('native-build-' + str(index), argv)
            require(ctx.wait(actor, 90) == 0, 'Public native component build failed; see actor output')
        executable = native_build / 'uwvm-portable-native-joint'
        require(executable.is_file() and executable.stat().st_size < 16 * 1024 * 1024,
                'Public native executable missing or oversized')
        raw = executable.read_bytes()
        require(raw[:5] == b'\x7fELF\x02' and b'.eh_frame\0' in raw and b'.gcc_except_table\0' in raw,
                'Native ELF64 exception/CFI sections absent')
        commands_db = (native_build / 'compile_commands.json').read_text()
        for flag in profile['native_component']['strict_flags']:
            require(flag in commands_db, 'Required real compiler flag absent: ' + flag)
        require(not args.artifact.exists(), 'Refusing to overwrite application artifact')
        shutil.copyfile(installed, args.artifact)
        require(api.digest(args.artifact) == ctx.before, 'Frozen Wasm copy changed')
        save(receipt, dict(status='BUILT_UNMODIFIED_PUBLIC_NATIVE_AND_CONSUMED_FROZEN_WASM',
             native_executable=str(executable), native_sha256=api.digest(executable),
             wasm_sha256=ctx.before, source_inventory_sha256=api.digest(example / profile['native_component']['source_closure']),
             application_source_sha256=api.digest(example / 'application/main.c'),
             commands=commands, actual_controller=ctx.controller,
             compiler_invoked=True, wasm_compiler_or_rewriter_invoked=False))
    finally:
        ctx.retire()
        save(ctx.output / 'actors.json', dict(actors=ctx.actor_summary(), retirement=ctx.retirement))


if __name__ == '__main__':
    main()
