#!/usr/bin/env python3
"""@brief Cold-build the shared genuine QuickJS 2026-06-04 Wasm engines.

@details Rebuilds the complete ECMAScript core from source with LLVM 23.1.4.
Stable source names enter through compiler prefix maps. No old VM or object is
used and no compiled byte is changed to hide a build path. Both complete backend
import bridges are compiled independently against the one shared genuine core.
"""

import argparse
from pathlib import Path

from maintenance import Build, digest, flags, read, source_files, toolchain
from wasm import validate
from abi_dispatch import emit


def main():
    """@brief Build and retain each real compiler step and typed import proof.

    @return None on construction success. Language/native ROS execution remains separate.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("sdk", "llvm-root", "target-sdk", "cache", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--target", choices=("wasm32-wasip1", "wasm64-wasip1"), default="wasm32-wasip1")
    args = parser.parse_args()
    sdk, llvm, target = [path.resolve(strict=True)
                         for path in (args.sdk, args.llvm_root, args.target_sdk)]
    cache, output = args.cache.resolve(), args.output.resolve()
    job = Build(output, cache, (sdk, llvm, target), "js")
    try:
        sources = source_files(sdk, "js")
        profile, closure = toolchain(sdk, llvm, target, args.target, "noeh")
        job.report.update(source_files=sources, toolchain=closure, target=profile["triple"])
        source = sdk / "src/language/js/upstream"
        support = sdk / "src/language/js/support"
        common = flags(llvm, target, profile, [
            (sdk, "/__uwvm_sdk__"), (target, "/__uwvm_target__"),
            (cache, "/__uwvm_build__/quickjs"), (source, "/__uwvm_sdk__/src/language/js/upstream"),
        ])
        version = job.run("compiler-version", [llvm / "bin/clang", "--version"])
        if b"clang version 23.1.4" not in version:
            raise ValueError("The actual compiler does not match the shared lock")
        objects = []
        for name in ("quickjs.c", "dtoa.c", "libregexp.c", "libunicode.c", "cutils.c"):
            obj = cache / (name + ".o")
            job.run("compile-" + name, [llvm / "bin/clang", *common,
                    '-DCONFIG_VERSION="2026-06-04"', "-D_GNU_SOURCE",
                    "-Wno-implicit-const-int-float-conversion", "-MD", "-MF", cache / (name + ".d"),
                    "-c", source / name, "-o", obj])
            objects.append(obj)
        abi = read(sdk / "share/abi/abi-v1.json")
        bits = 64 if args.target.startswith("wasm64-") else 32
        job.report["raw_abi_bridges"] = []
        job.report["typed_backend_imports"] = {}
        adapters = []
        for backend in ("ros1", "ros2"):
            (output / backend).mkdir()
            generated = cache / (backend + "-abi")
            job.report["raw_abi_bridges"].append(emit(sdk, backend, generated))
            adapter = cache / (backend + "-command.o")
            job.run("compile-adapter-" + backend, [llvm / "bin/clang", *common, "-I" + str(source),
                    "-I" + str(support), "-I" + str(generated), "-MD", "-MF", cache / (backend + "-command.d"),
                    "-c", sdk / "src/language/js/command.c", "-o", adapter])
            application = output / backend / "quickjs.wasm"
            job.run("link-" + backend, [llvm / "bin/clang", *common, adapter, *objects, "-lm",
                    "-Wl,-z,stack-size=8388608", "-Wl,--max-memory=268435456", "-Wl,--threads=1",
                    "-Wl,--trace", "-o", application])
            job.report["typed_backend_imports"][backend] = validate(application.read_bytes(), abi, backend, address_bits=bits)
            adapters.append(adapter)
        job.report["objects"] = [{"name": p.name, "bytes": p.stat().st_size, "sha256": digest(p)}
                                  for p in [*objects, *adapters]]
        lock = digest(sdk / "share/language/js/source-lock.json")
        job.report["artifacts"] = [job.artifact(output / backend / "quickjs.wasm", "js", backend,
                                   profile["triple"], "QuickJS", 4194304, lock)
                                   for backend in ("ros1", "ros2")]
        if sources != source_files(sdk, "js"):
            raise ValueError("Source bytes changed during the cold rebuild")
        job.report["status"] = "BUILT_PENDING_EXECUTION"
    except BaseException as error:
        job.report["error"] = {"type": type(error).__name__, "message": str(error)}
        raise
    finally:
        job.save()


if __name__ == "__main__":
    main()
