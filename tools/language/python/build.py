#!/usr/bin/env python3
"""@brief Cold-build the shared genuine CPython 3.14.8 Wasm command engines.

@details A matching native CPython is built from the complete source first. It
creates genuine frozen encoding modules; every WASI core object is compiled by
the shared LLVM 23.1.4 closure. The build never consumes an old interpreter or
cached object. Source-prefix maps and getpath's documented runtime VPATH input
produce portable compiled names, with fresh execution required for new bytes.
"""

import argparse
import os
from pathlib import Path
import shlex
import shutil
import sys

sys.dont_write_bytecode = True
sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "js"))
from maintenance import Build, digest, flags, read, source_files, toolchain
from wasm import validate
from abi_dispatch import emit
from memory64_clock import adapt


def main():
    """@brief Build fresh native helpers, all target core objects and both ROS namespaces.

    @return None only after actual construction and portability checks pass.
    @details Receipts retain all commands, native tool identities, configuration
    files and object identities. No application/native ROS qualification is inferred.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("sdk", "llvm-root", "target-sdk", "cache", "output"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--native-cc", type=Path, default=Path("/usr/bin/cc"))
    parser.add_argument("--make", type=Path, default=Path("/usr/bin/make"))
    parser.add_argument("--target", choices=("wasm32-wasip1", "wasm64-wasip1"), default="wasm32-wasip1")
    args = parser.parse_args()
    sdk, llvm, target = [p.resolve(strict=True) for p in (args.sdk, args.llvm_root, args.target_sdk)]
    cache, output = args.cache.resolve(), args.output.resolve()
    job = Build(output, cache, (sdk, llvm, target), "py")
    try:
        sources = source_files(sdk, "python")
        profile, closure = toolchain(sdk, llvm, target, args.target, "noeh")
        job.report.update(source_files=sources, toolchain=closure, target=profile["triple"])
        original = sdk / "src/language/python/upstream"
        source, build = cache / "source", cache / "build"
        native, wasi = build / "native", build / "wasi"
        source.mkdir()
        manifest = read(sdk / "share/language/python/upstream.json")
        for row in manifest["files"]:
            path = source / row["file"]
            path.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(original / row["file"], path)
            path.chmod(0o755 if os.access(original / row["file"], os.X_OK) else 0o644)
            os.utime(path, (1792635234, 1792635234))
        if args.target == "wasm64-wasip1":
            job.report["memory64_source_adaptation"] = adapt(source)
            job.save()
        native.mkdir(parents=True)
        wasi.mkdir(parents=True)
        tools = {"cc": args.native_cc.resolve(strict=True), "make": args.make.resolve(strict=True),
                 "ar": Path("/usr/bin/ar").resolve(strict=True),
                 "ranlib": Path("/usr/bin/ranlib").resolve(strict=True),
                 "readelf": Path("/usr/bin/readelf").resolve(strict=True),
                 "shell": Path("/bin/sh").resolve(strict=True)}
        job.report["native_maintenance_tools"] = {
            name: {"path": str(path), "sha256": digest(path)} for name, path in tools.items()}
        job.run("native-compiler-version", [tools["cc"], "--version"])
        native_env = {"CC": str(tools["cc"]), "AR": str(tools["ar"]),
                      "RANLIB": str(tools["ranlib"]), "CFLAGS": "-O2",
                      "CONFIG_SHELL": str(tools["shell"]), "SHELL": str(tools["shell"])}
        job.run("configure-native", [tools["shell"], source / "configure",
                "--without-ensurepip", "--disable-test-modules"], native, native_env)
        job.run("make-native", [tools["make"], "-j2"], native, native_env)
        python = native / "python"
        elf = python.read_bytes()[:64]
        if elf[:5] != b"\x7fELF\2" or int.from_bytes(elf[18:20], "little") != 62:
            raise ValueError("The freshly compiled matching helper must be x86_64 ELF")
        if job.run("native-python-version", [python, "--version"], native).strip() != b"Python 3.14.8":
            raise ValueError("Use the matching genuine native CPython 3.14.8 helper")
        support = sdk / "src/language/js/support"
        common = flags(llvm, target, profile, [
            (sdk, "/__uwvm_sdk__"), (target, "/__uwvm_target__"),
            (cache, "/__uwvm_build__/cpython"),
            (source, "/__uwvm_sdk__/src/language/python/upstream"),
            (sdk / "src/language/python", "/__uwvm_sdk__/src/language/python"),
            (support, "/__uwvm_sdk__/src/language/js/support"),
        ])
        version = job.run("target-compiler-version", [llvm / "bin/clang", "--version"], wasi)
        if b"clang version 23.1.4" not in version:
            raise ValueError("The actual target compiler differs from the shared lock")
        link_flags = ["-Wl,-z,stack-size=8388608", "-Wl,--max-memory=268435456", "-Wl,--threads=1"]
        environment = {"CC": shlex.join([str(llvm / "bin/clang"), *common]),
                       "AR": str(llvm / "bin/llvm-ar"), "RANLIB": str(llvm / "bin/llvm-ranlib"),
                       "READELF": str(tools["readelf"]),
                       "CONFIG_SITE": str(source / "Tools/wasm/wasi/config.site-wasm32-wasi"),
                       "CONFIG_SHELL": str(tools["shell"]), "SHELL": str(tools["shell"]),
                       "PKG_CONFIG_LIBDIR": "", "PKG_CONFIG_PATH": "", "CFLAGS": "-O2",
                       "LDFLAGS": shlex.join(link_flags)}
        (wasi / "Modules").mkdir()
        shutil.copyfile(sdk / "src/language/python/Setup.local", wasi / "Modules/Setup.local")
        job.run("configure-wasi", [tools["shell"], source / "configure",
                "--host=" + args.target.replace("-wasip1", "-unknown-wasip1"), "--build=x86_64-pc-linux-gnu",
                "--with-build-python=" + str(python), "--without-ensurepip", "--disable-test-modules",
                "--prefix=/__uwvm_python__"], wasi, environment)
        helper = sdk / "tools/language/python"
        job.run("make-wasi", [tools["make"], "-j2", "-f", wasi / "Makefile", "-f",
                helper / "runtime_paths.mk",
                "UWVM_PYTHON_LOGICAL_SOURCE=/__uwvm_sdk__/src/language/python/upstream",
                "libpython3.14.a"], wasi, environment)
        job.run("freeze-encodings", [python, "-S", "-B", helper / "freeze_encodings.py",
                "--source", source, "--out", build / "frozen.h"], native)
        members = job.run("archive-members", [llvm / "bin/llvm-ar", "t", wasi / "libpython3.14.a"], wasi)
        if (wasi / "Modules/socketmodule.o").exists() or b"socketmodule.o" in members.splitlines():
            raise ValueError("The disabled optional socket extension entered the real core")
        libraries = build / "libraries.txt"
        job.run("configured-libraries", [tools["make"], "-s", "--no-print-directory", "-f",
                wasi / "Makefile", "-f", helper / "libraries.mk", "uwvm-python-write-libraries",
                "UWVM_PYTHON_LIBRARIES_OUTPUT=" + str(libraries)], wasi, environment)
        groups = libraries.read_text().splitlines()
        if len(groups) != 3:
            raise ValueError("Require GNU Make's complete real LIBS/MODLIBS/SYSLIBS expansion")
        lib_args = [argument for group in groups for argument in shlex.split(group)]
        abi = read(sdk / "share/abi/abi-v1.json")
        bits = 64 if args.target.startswith("wasm64-") else 32
        job.report["raw_abi_bridges"] = []
        job.report["typed_backend_imports"] = {}
        for backend in ("ros1", "ros2"):
            (output / backend).mkdir()
            generated = cache / (backend + "-abi")
            job.report["raw_abi_bridges"].append(emit(sdk, backend, generated))
            application = output / backend / "cpython.wasm"
            job.run("link-" + backend, [llvm / "bin/clang", *common, "-I" + str(wasi),
                    "-I" + str(source / "Include"), "-I" + str(build), "-I" + str(support), "-I" + str(generated),
                    sdk / "src/language/python/command.c", wasi / "libpython3.14.a", *lib_args,
                    *link_flags, "-Wl,--trace", "-o", application], wasi, environment)
            job.report["typed_backend_imports"][backend] = validate(application.read_bytes(), abi, backend, address_bits=bits)
        objects = [{"path": p.relative_to(wasi).as_posix(), "bytes": p.stat().st_size,
                    "sha256": digest(p)} for p in sorted(wasi.rglob("*.o"))]
        if len(objects) < 100:
            raise ValueError("The complete genuine CPython core must have fresh target objects")
        job.report["objects"] = objects
        configuration = output / "configuration"
        for family, directory in (("native", native), ("wasi", wasi)):
            for name in ("Makefile", "pyconfig.h", "config.log", "Modules/config.c", "Modules/Setup.local"):
                src = directory / name
                if src.is_file():
                    dst = configuration / family / name
                    dst.parent.mkdir(parents=True, exist_ok=True)
                    shutil.copyfile(src, dst)
        job.report["native_helper"] = {"sha256": digest(python), "bytes": python.stat().st_size}
        job.report["fresh_target_archive"] = {"sha256": digest(wasi / "libpython3.14.a")}
        lock = digest(sdk / "share/language/python/source-lock.json")
        job.report["artifacts"] = [job.artifact(output / backend / "cpython.wasm", "py", backend,
                                   profile["triple"], "CPython", 4194304, lock)
                                   for backend in ("ros1", "ros2")]
        if sources != source_files(sdk, "python"):
            raise ValueError("An admitted source changed during the cold build")
        job.report["status"] = "BUILT_PENDING_EXECUTION"
    except BaseException as error:
        job.report["error"] = {"type": type(error).__name__, "message": str(error)}
        raise
    finally:
        job.save()


if __name__ == "__main__":
    main()
