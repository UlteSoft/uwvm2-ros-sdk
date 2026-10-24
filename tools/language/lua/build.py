#!/usr/bin/env python3
"""@brief Cold-build shared genuine Lua 5.4.8 with the complete native ROS ABI.

@details Uses upstream's C++ throw/catch path, LLVM 23 modern Wasm exceptions,
and the corresponding actual libc++/libc++abi/libunwind target libraries. The
same source and frozen ROS modules serve every platform. Backend differences
are compiled into the exact ROS1 or ROS2 import dispatcher, never vendor VMs.
"""

import argparse
from pathlib import Path
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "js"))
from maintenance import Build, checked, digest, flags, read, source_files, toolchain
from layout import restore


def main():
    """@brief Build every real Lua core and bridge object in a new private cache.

    @return None after construction succeeds. New VM/native ROS execution is separate.
    @details All source preparation, compiler commands, actual limits and failures
    remain in the caller's private output directory and never enter SDK lib/.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("sdk", "llvm-root", "target-sdk", "cache", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--target", choices=("wasm32-wasip1", "wasm64-wasip1"), default="wasm32-wasip1")
    args = parser.parse_args()
    sdk, llvm, target = [p.resolve(strict=True) for p in (args.sdk, args.llvm_root, args.target_sdk)]
    cache, output = args.cache.resolve(), args.output.resolve()
    job = Build(output, cache, (sdk, llvm, target), "lua")
    try:
        sources = source_files(sdk, "lua")
        profile, closure = toolchain(sdk, llvm, target, args.target, "eh")
        job.report.update(source_files=sources, toolchain=closure, target=profile["triple"])
        source = cache / "source"
        share = sdk / "share/language/lua"
        restore(sdk / "src/language/lua/upstream/src", source, share / "source-layout.patch",
                read(share / "layout-members.json"), checked)
        helper = sdk / "tools/language/lua"
        job.run("stdlib-profile", [sys.executable, "-B", helper / "lua_stdlib.py",
                "--source-dir", source, "--out", cache / "stdlib"])
        frozen = []
        for name, filename in (("ros", "init.lua"), ("wire", "wire.lua")):
            raw = (sdk / "include/platform/ros/lua/roswasm" / filename).read_bytes()
            frozen.extend(["/** @brief Complete platform-neutral frozen " + name + " source. */",
                           "static unsigned char const frozen_" + name + "[] = {"])
            for offset in range(0, len(raw), 20):
                frozen.append("    " + ", ".join(map(str, raw[offset:offset + 20])) + ",")
            frozen.append("};")
        (cache / "frozen.h").write_text("\n".join(frozen) + "\n")
        common = flags(llvm, target, profile, [
            (sdk, "/__uwvm_sdk__"), (target, "/__uwvm_target__"),
            (cache, "/__uwvm_build__/lua"), (source, "/__uwvm_sdk__/src/language/lua/reviewed"),
            (sdk / "src/language/lua", "/__uwvm_sdk__/src/language/lua"),
        ]) + profile["cxxflags"]
        version = job.run("compiler-version", [llvm / "bin/clang++", "--version"])
        if b"clang version 23.1.4" not in version:
            raise ValueError("The actual C++ compiler differs from the shared LLVM lock")
        lock = digest(share / "source-lock.json")
        artifacts = []
        for backend in (1, 2):
            objects = []
            generated = cache / ("bridge-ros" + str(backend))
            job.run("bridge-ros" + str(backend), [sys.executable, "-B", helper / "lua_bridge.py",
                    "--sdk-root", sdk, "--backend", str(backend), "--out", generated])
            units = [p for p in sorted(source.glob("*.c"))
                     if p.name not in ("lua.c", "luac.c", "lmathlib.c")]
            units += [cache / "stdlib/lmathlib.c", generated / "native.c", sdk / "src/language/lua/command.c"]
            if len(units) != 34:
                raise ValueError("The complete Lua engine requires all 34 translation units")
            directory = cache / ("objects-ros" + str(backend))
            directory.mkdir()
            for index, unit in enumerate(units):
                obj = directory / (str(index) + ".o")
                job.run("ros" + str(backend) + "-compile-" + str(index), [llvm / "bin/clang++",
                        *common, "-x", "c++", "-std=c++20", "-Dl_signalT=int",
                        "-DROSWASM_BACKEND=" + str(backend), "-include", sdk / "src/language/lua/guest_config.h",
                        "-I" + str(source), "-I" + str(sdk / "include"), "-I" + str(cache),
                        "-MD", "-MF", obj.with_suffix(".d"), "-c", unit, "-o", obj])
                objects.append(obj)
            folder = output / ("ros" + str(backend))
            folder.mkdir()
            runtime = folder / "lua.wasm"
            job.run("ros" + str(backend) + "-link", [llvm / "bin/clang++", *common,
                    "-Wl,-mllvm,-wasm-use-legacy-eh=false", *objects, *profile["ldflags"], "-lm",
                    "-Wl,--stack-first", "-Wl,-z,stack-size=1048576", "-Wl,--initial-memory=16777216",
                    "-Wl,--max-memory=134217728", "-Wl,--threads=1", "-Wl,--trace", "-o", runtime])
            artifacts.append(job.artifact(runtime, "lua", "ros" + str(backend), profile["triple"],
                                          "Lua", 2097152, lock))
            job.report["ros" + str(backend) + "_fresh_objects"] = [
                {"name": p.name, "bytes": p.stat().st_size, "sha256": digest(p)} for p in objects]
        job.report["artifacts"] = artifacts
        if sources != source_files(sdk, "lua"):
            raise ValueError("An admitted source changed during the cold rebuild")
        job.report["status"] = "BUILT_PENDING_EXECUTION"
    except BaseException as error:
        job.report["error"] = {"type": type(error).__name__, "message": str(error)}
        raise
    finally:
        job.save()


if __name__ == "__main__":
    main()
