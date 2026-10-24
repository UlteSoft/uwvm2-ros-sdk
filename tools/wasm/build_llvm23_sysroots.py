#!/usr/bin/env python3
"""@brief Rebuild the versioned WASI target closures with an actual LLVM 23 compiler.

@details Run this program on the Linux build host inside the authorized compiler
container. It never overwrites the LLVM 22 closures used by existing guests.
All source archives are pinned and checked before extraction; no dependency
download or host compiler fallback is permitted.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys
import tarfile
import time


def digest(path: Path) -> str:
    """@brief Hash the exact bytes of one source or produced artifact.

    @param path Existing readable regular file.
    @return Lowercase SHA256 digest; filesystem failures propagate.
    """
    return hashlib.file_digest(path.open("rb"), "sha256").hexdigest()


def run(argv: list[str], log: Path, env: dict[str, str]) -> None:
    """@brief Execute one explicit build command and retain its complete output.

    @param argv Argument vector passed directly to subprocess without a shell.
    @param log Append-only build log whose parent is created if necessary.
    @param env Complete deterministic build environment.
    @throws RuntimeError If the command returns a nonzero status.
    """
    log.parent.mkdir(parents=True, exist_ok=True)
    print("RUN " + " ".join(str(x) for x in argv), flush=True)
    with log.open("a") as output:
        output.write("\n$ " + " ".join(str(x) for x in argv) + "\n")
        output.flush()
        result = subprocess.run(argv, stdout=output, stderr=subprocess.STDOUT, env=env)
    if result.returncode:
        print(log.read_text(errors="replace")[-12000:], file=sys.stderr)
        raise RuntimeError(f"command failed ({result.returncode}); see {log}")


def cgroup_limits() -> dict[str, str]:
    """@brief Verify the current process uses the authorized memory limits.

    @return Actual cgroup path, memory.max and memory.swap.max strings.
    @details Both host and container cgroup namespaces are supported. A missing
    control file, unlimited memory, or enabled swap prevents compilation.
    @throws RuntimeError Unless the memory limit is 64 GiB and swap is disabled.
    """
    group = next(
        line.split(":", 2)[2] for line in Path("/proc/self/cgroup").read_text().splitlines() if line.startswith("0::")
    )
    base = Path("/sys/fs/cgroup") / group.lstrip("/")
    if not (base / "memory.max").exists():
        base = Path("/sys/fs/cgroup")
    values = {name: (base / name).read_text().strip() for name in ("memory.max", "memory.swap.max")}
    values["path"] = str(base)
    if values["memory.max"] != "68719476736" or values["memory.swap.max"] != "0":
        raise RuntimeError("the build requires the authorized 64 GiB, no-swap cgroup: " + str(values))
    return values


def unpack(sdk: Path, upstream: Path, work: Path) -> dict[str, Path]:
    """@brief Verify and extract pinned upstream archives into the build workspace.

    @param sdk SDK root containing share/wasm/source-lock.json.
    @param upstream External cache holding every named archive.
    @param work Private build root containing extracted source directories.
    @return Mapping from logical source names to revision-checked directories.
    @details Extraction rejects parent and absolute paths. Existing sources are
    reused only with the required archive digest and revision stamps.
    """
    lock = json.loads((sdk / "share/wasm/source-lock.json").read_text())
    roots = {}
    for entry in lock["sources"]:
        archive = upstream / entry["archive"]
        if digest(archive) != entry["sha256"]:
            raise RuntimeError("source archive checksum mismatch: " + str(archive))
        root = work / "source" / entry["name"]
        stamp = root / ".uwvm-source-revision"
        archive_stamp = root / ".uwvm-source-archive-sha256"
        if not stamp.exists() or not archive_stamp.exists() or archive_stamp.read_text().strip() != entry["sha256"]:
            root.parent.mkdir(parents=True, exist_ok=True)
            with tarfile.open(archive) as source:
                for item in source.getmembers():
                    relative = Path(item.name)
                    if relative.is_absolute() or ".." in relative.parts:
                        raise RuntimeError("unsafe archive path")
                source.extractall(root.parent)
            stamp.write_text(entry["revision"] + "\n")
            archive_stamp.write_text(entry["sha256"] + "\n")
        if stamp.read_text().strip() != entry["revision"]:
            raise RuntimeError("source revision mismatch: " + str(root))
        roots[entry["name"]] = root
    return roots


def main() -> None:
    """@brief Rebuild every requested libc, compiler-rt, libc++ and unwinder profile.

    @details The Linux-only entry requires the authorized 64 GiB no-swap cgroup,
    verified source archives and an actual LLVM 23 WebAssembly backend. Each
    completed target is recorded as untested until separate execution succeeds.
    @throws RuntimeError On a compiler, source, build or target-layout mismatch.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--work", type=Path, required=True)
    parser.add_argument("--toolchain", type=Path, required=True)
    parser.add_argument(
        "--source-cache",
        type=Path,
        required=True,
        help="SDK-external directory containing the pinned upstream archives",
    )
    parser.add_argument("--cmake", default="cmake")
    parser.add_argument("--ninja", default="ninja")
    parser.add_argument("--jobs", type=int, choices=(1, 2), default=2)
    parser.add_argument("--targets", nargs="+", default=["wasm32-wasip1"])
    parser.add_argument("--profiles", nargs="+", choices=("noeh", "eh"), default=["noeh"])
    args = parser.parse_args()
    if sys.platform != "linux":
        parser.error("compilation is authorized on Linux only")
    limits = cgroup_limits()
    sdk, work, toolchain = (p.resolve() for p in (args.sdk, args.work, args.toolchain))
    work.mkdir(parents=True, exist_ok=True)
    env = dict(os.environ)
    env.update(
        {
            "LC_ALL": "C",
            "TZ": "UTC",
            "SOURCE_DATE_EPOCH": "1781562833",
            "ZERO_AR_DATE": "1",
            "CMAKE_BUILD_PARALLEL_LEVEL": str(args.jobs),
        }
    )
    env["PATH"] = str(toolchain / "bin") + ":" + env.get("PATH", "")
    compiler = toolchain / "bin/clang"
    version = subprocess.check_output([str(compiler), "--version"], env=env, text=True)
    if not re.search(r"clang version 23\.", version):
        raise RuntimeError("refusing a compiler that is not LLVM 23: " + version)
    targets = subprocess.check_output([str(compiler), "--print-targets"], env=env, text=True)
    if not all(re.search(r"^\s*" + arch + r"\s+-", targets, re.MULTILINE) for arch in ("wasm32", "wasm64")):
        raise RuntimeError("this LLVM 23 compiler was built without the WebAssembly backend")
    source = unpack(sdk, args.source_cache.resolve(), work)
    original_resource = Path(
        subprocess.check_output([str(compiler), "-print-resource-dir"], env=env, text=True).strip()
    )
    resource = sdk / "lib/language/cfamily/clang/23"
    shutil.copytree(original_resource / "include", resource / "include", dirs_exist_ok=True)
    commands = []

    def cmake_build(name: str, root: Path, prefix: Path, definitions: dict[str, str]) -> Path:
        """@brief Configure, build and install one component using the selected LLVM tools.

        @param name Unique build/log directory name within this invocation.
        @param root Component source directory passed to CMake.
        @param prefix Destination for this component installation.
        @param definitions Explicit component and target-specific CMake settings.
        @return Component build directory after successful installation.
        @details Every invoked argument vector is appended to the build receipt.
        """
        build = work / "build" / name
        common = {
            "CMAKE_BUILD_TYPE": "Release",
            "CMAKE_INSTALL_PREFIX": str(prefix),
            "CMAKE_MAKE_PROGRAM": args.ninja,
            "CMAKE_C_COMPILER": str(compiler),
            "CMAKE_CXX_COMPILER": str(toolchain / "bin/clang++"),
            "CMAKE_ASM_COMPILER": str(compiler),
            "CMAKE_AR": str(toolchain / "bin/llvm-ar"),
            "CMAKE_RANLIB": str(toolchain / "bin/llvm-ranlib"),
            "CMAKE_NM": str(toolchain / "bin/llvm-nm"),
            "CMAKE_C_COMPILER_WORKS": "ON",
            "CMAKE_CXX_COMPILER_WORKS": "ON",
            "CMAKE_C_LINKER_DEPFILE_SUPPORTED": "OFF",
            "CMAKE_CXX_LINKER_DEPFILE_SUPPORTED": "OFF",
            "CMAKE_TRY_COMPILE_TARGET_TYPE": "STATIC_LIBRARY",
        }
        common.update(definitions)
        configure = [args.cmake, "-S", str(root), "-B", str(build), "-G", "Ninja"]
        configure += ["-D" + key + "=" + value for key, value in common.items()]
        compile_cmd = [args.cmake, "--build", str(build), "--parallel", str(args.jobs)]
        install = [args.cmake, "--install", str(build)]
        log = work / "logs" / (name + ".log")
        for command in (configure, compile_cmd, install):
            commands.append(command)
            run(command, log, env)
        return build

    manifest_path = sdk / "share/wasm/toolchains.json"
    previous = json.loads(manifest_path.read_text()) if manifest_path.exists() else {}
    completed = previous.get("targets", [])
    record = {
        "schema_version": 1,
        "status": "rebuilt-awaiting-validation",
        "llvm_major": 23,
        "compiler_version": version.strip(),
        "compiler_sha256": digest(compiler.resolve()),
        "compiler_path_at_build": str(compiler),
        "cgroup": limits,
        "sources": json.loads((sdk / "share/wasm/source-lock.json").read_text())["sources"],
        "targets": completed,
        "commands": commands,
        "source_adapters": {
            name: {"path": "tools/wasm/" + name, "sha256": digest(sdk / "tools/wasm" / name)}
            for name in ("prepare_wasm64.py", "prepare_llvm23_memory64.py")
        },
        "unqualified_features": [
            "WASI Preview 2",
            "WASI Preview 3",
            "thread spawning",
            "shared libraries",
            "memory tagging",
            "C setjmp/longjmp",
        ],
    }
    for target in args.targets:
        if target not in ("wasm32-wasip1", "wasm64-wasip1"):
            raise RuntimeError("target is outside the qualified Preview 1 build plan: " + target)
        arch = target.split("-")[0]
        flags = "-ffile-prefix-map=" + str(work) + "=/usr/src/uwvm-llvm23"
        builtin_prefix = work / "builtins" / target
        compiler_rt_source = source["llvm-project"]
        if arch == "wasm64":
            from prepare_llvm23_memory64 import prepare as prepare_llvm

            compiler_rt_source = prepare_llvm(compiler_rt_source, work / "source/llvm-project-uwvm-memory64")
        cmake_build(
            "builtins-abi-" + target,
            compiler_rt_source / "compiler-rt/lib/builtins",
            builtin_prefix,
            {
                "CMAKE_SYSTEM_NAME": "WASI",
                "CMAKE_SYSTEM_PROCESSOR": arch,
                "CMAKE_C_COMPILER_TARGET": target,
                "CMAKE_CXX_COMPILER_TARGET": target,
                "CMAKE_ASM_COMPILER_TARGET": target,
                "CMAKE_C_FLAGS": flags + " -ffreestanding",
                "CMAKE_CXX_FLAGS": flags + " -ffreestanding",
                # Only the two tag-definition assembly files need EH enabled.
                # Other builtins remain usable by the no-exceptions profile.
                "CMAKE_ASM_FLAGS": flags + " -fwasm-exceptions",
                "COMPILER_RT_DEFAULT_TARGET_ONLY": "ON",
                "COMPILER_RT_BAREMETAL_BUILD": "ON",
                "COMPILER_RT_BUILTINS_ENABLE_PIC": "OFF",
                "COMPILER_RT_HAS_FPIC_FLAG": "OFF",
                "COMPILER_RT_INCLUDE_TESTS": "OFF",
                "LLVM_ENABLE_PER_TARGET_RUNTIME_DIR": "OFF",
                "COMPILER_RT_OS_DIR": "wasi",
                "LLVM_CONFIG_PATH": str(toolchain / "bin/llvm-config"),
            },
        )
        builtins = list(builtin_prefix.rglob("libclang_rt.builtins*.a"))
        if len(builtins) != 1:
            raise RuntimeError("expected exactly one freshly built compiler-rt archive: " + str(builtins))
        # Ask this exact compiler where it searches after relocation. This avoids
        # assuming a resource-library convention from an earlier LLVM release.
        lookup = Path(
            subprocess.check_output(
                [str(compiler), "--target=" + target, "-resource-dir=" + str(resource), "--print-libgcc-file-name"],
                env=env,
                text=True,
            ).strip()
        )
        if resource not in lookup.parents:
            raise RuntimeError("compiler-rt lookup escaped the versioned resource directory")
        lookup.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(builtins[0], lookup)
        libc_source = source["wasi-libc"]
        if arch == "wasm64":
            from prepare_wasm64 import prepare

            libc_source = prepare(libc_source, work / "source/wasi-libc-uwvm-memory64")
        c_prefix = work / "libc" / target
        cmake_build(
            "libc-" + target,
            libc_source,
            c_prefix,
            {
                "TARGET_TRIPLE": target,
                "CMAKE_C_COMPILER_TARGET": target,
                "CMAKE_ASM_COMPILER_TARGET": target,
                "CMAKE_C_FLAGS": flags,
                "CMAKE_ASM_FLAGS": flags,
                "BUILTINS_LIB": str(lookup),
                "BUILD_SHARED": "OFF",
                "SETJMP": "OFF",
                "BINDINGS_TARGET": "OFF",
                "BUILD_TESTS": "OFF",
                "USE_WASM_COMPONENT_LD": "OFF",
                "WASI_SDK_VERSION": "uwvm-llvm23-rebuild",
            },
        )
        for profile in args.profiles:
            prefix = sdk / "lib/wasm/llvm23" / profile / target
            headers = sdk / "include/wasm/llvm23" / profile / target
            prefix.mkdir(parents=True, exist_ok=True)
            headers.mkdir(parents=True, exist_ok=True)
            include_link = prefix / "include"
            if not include_link.exists():
                include_link.symlink_to(os.path.relpath(headers, prefix), target_is_directory=True)
            shutil.copytree(c_prefix / "include", headers, dirs_exist_ok=True)
            shutil.copytree(c_prefix / "lib", prefix / "lib", dirs_exist_ok=True)
            enabled = "ON" if profile == "eh" else "OFF"
            runtimes = "libcxx;libcxxabi" + (";libunwind" if profile == "eh" else "")
            runtime_flags = flags + " -resource-dir=" + str(resource)
            if profile == "eh":
                runtime_flags += " -fwasm-exceptions -mllvm -wasm-use-legacy-eh=false"
            cmake_build(
                "cxx-" + profile + "-" + target,
                source["llvm-project"] / "runtimes",
                prefix,
                {
                    "CMAKE_SYSTEM_NAME": "WASI",
                    "CMAKE_SYSTEM_PROCESSOR": arch,
                    "CMAKE_C_COMPILER_TARGET": target,
                    "CMAKE_CXX_COMPILER_TARGET": target,
                    "CMAKE_ASM_COMPILER_TARGET": target,
                    "CMAKE_SYSROOT": str(prefix),
                    "CMAKE_C_FLAGS": runtime_flags,
                    "CMAKE_CXX_FLAGS": runtime_flags,
                    "CMAKE_ASM_FLAGS": runtime_flags,
                    "LLVM_ENABLE_RUNTIMES": runtimes,
                    "LLVM_INCLUDE_TESTS": "OFF",
                    "LLVM_ENABLE_PER_TARGET_RUNTIME_DIR": "OFF",
                    "LLVM_CONFIG_PATH": str(toolchain / "bin/llvm-config"),
                    "UNIX": "ON",
                    "LIBCXX_ENABLE_SHARED": "OFF",
                    "LIBCXX_ENABLE_STATIC": "ON",
                    "LIBCXX_ENABLE_EXCEPTIONS": enabled,
                    "LIBCXXABI_ENABLE_EXCEPTIONS": enabled,
                    "LIBCXX_ENABLE_THREADS": "OFF",
                    "LIBCXXABI_ENABLE_THREADS": "OFF",
                    "LIBCXX_ENABLE_FILESYSTEM": "ON",
                    "LIBCXX_ENABLE_ABI_LINKER_SCRIPT": "OFF",
                    "LIBCXX_CXX_ABI": "libcxxabi",
                    "LIBCXX_ABI_VERSION": "2",
                    "LIBCXXABI_ENABLE_SHARED": "OFF",
                    "LIBCXXABI_ENABLE_STATIC": "ON",
                    "LIBCXXABI_SILENT_TERMINATE": "ON",
                    "LIBCXXABI_USE_LLVM_UNWINDER": enabled,
                    "LIBUNWIND_ENABLE_SHARED": "OFF",
                    "LIBUNWIND_ENABLE_THREADS": "OFF",
                    "LIBUNWIND_HIDE_SYMBOLS": "ON",
                    "LIBUNWIND_USE_COMPILER_RT": "ON",
                    "LIBUNWIND_INCLUDE_TESTS": "OFF",
                    "LIBCXX_INCLUDE_TESTS": "OFF",
                    "LIBCXX_INCLUDE_BENCHMARKS": "OFF",
                    "LIBCXXABI_INCLUDE_TESTS": "OFF",
                    "LIBCXX_INSTALL_MODULES": "OFF",
                    "LIBCXX_LIBDIR_SUFFIX": "/" + target,
                    "LIBCXXABI_LIBDIR_SUFFIX": "/" + target,
                    "LIBUNWIND_LIBDIR_SUFFIX": "/" + target,
                },
            )
            completed[:] = [entry for entry in completed if (entry["triple"], entry["profile"]) != (target, profile)]
            completed.append(
                {
                    "triple": target,
                    "arch": arch,
                    "platform": "wasm-wasip1",
                    "llvm_major": 23,
                    "profile": profile,
                    "sysroot": str(prefix.relative_to(sdk)),
                    "include_dir": str(headers.relative_to(sdk)),
                    "lib_dir": str((prefix / "lib" / target).relative_to(sdk)),
                    "resource_dir": str(resource.relative_to(sdk)),
                    "compiler": "clang",
                    "builtins_lib": str(lookup.relative_to(sdk)),
                    "libcxx_abi_version": 2,
                    "compiler_requirement": ">=23.0.0,<24.0.0",
                    "tested": False,
                    "memory64": arch == "wasm64",
                    "threads": False,
                    "shared_libraries": False,
                    "table64": arch == "wasm64",
                    "runtime_flags": (
                        ["--wasm-feature-enable-memory64", "--wasm-feature-enable-table64"] if arch == "wasm64" else []
                    )
                    + (["--wasm-feature-enable-exceptions"] if profile == "eh" else []),
                    "abi": "uwvm-preview1-memory64-extension" if arch == "wasm64" else "wasi_snapshot_preview1",
                    "validation_scope": "C/C++ command fixtures, allocator and stdio, binary128 comparisons; memory64 also tests a buffer above 4 GiB",
                    "cflags": ["--target=" + target],
                    "cxxflags": ["-stdlib=libc++"]
                    + (
                        ["-fno-exceptions"]
                        if profile == "noeh"
                        else ["-fwasm-exceptions", "-mllvm", "-wasm-use-legacy-eh=false"]
                    ),
                    "ldflags": ["-rtlib=compiler-rt"] + (["-lunwind"] if profile == "eh" else []),
                    "artifacts": {
                        str(path.relative_to(sdk)): {"bytes": path.stat().st_size, "sha256": digest(path)}
                        for path in sorted((prefix / "lib" / target).iterdir())
                        if path.is_file()
                    },
                    "builtins_sha256": digest(lookup),
                }
            )
            manifest_path.write_text(json.dumps(record, indent=2) + "\n")
            print("BUILT " + target + " " + profile, flush=True)
    record["completed_at_unix"] = int(time.time())
    manifest_path.write_text(json.dumps(record, indent=2) + "\n")
    (work / "build-record.json").write_text(json.dumps(record, indent=2) + "\n")


if __name__ == "__main__":
    main()
