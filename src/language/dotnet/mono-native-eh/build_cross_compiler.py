#!/usr/bin/env python3
"""@file build_cross_compiler.py
@brief Build the matching fixed-source Mono Linux-to-WASI native-EH AOT compiler.

@details The complete original compiler uses its pinned Mono LLVM 16 SDK.
Target offsets come from the original upstream libclang algorithm and the
actual rebuilt wasm32 runtime configuration. The same explicit native unwind
policy is compiled into the host producer and guest runtime. No generated IL,
LLVM IR, exception branch, runtime stub, or carrier symbol is rewritten.
"""

from __future__ import annotations

import argparse
import gzip
import hashlib
import json
import os
from pathlib import Path
import re
import shlex
import shutil
import subprocess

from build_runtime import AUDIT, BUILD, COMMIT, SOURCE, TOOLS, WORK, execute, save, sha, usage
from patch_mono import main as patch_source


SDK = WORK / "mono-llvm-sdk"
PREFIX = SDK / "tools/linux-x64"
CROSS_BUILD = WORK / "build-cross"
CROSS_INSTALL = WORK / "install-cross"
OFFSETS = WORK / "offsets-wasm32-unknown-wasi.h"


def environment() -> dict:
    """@brief Select exact retained native tools and the SDK's own libclang binding/runtime."""
    epoch = subprocess.check_output(["git", "show", "-s", "--format=%ct", COMMIT], cwd=SOURCE).decode().strip()
    retained_cpp = (TOOLS / "dotnet9-preview6/packs/Microsoft.NETCore.App.Runtime.AOT.linux-x64.Cross.wasi-wasm/"
                    "9.0.0-preview.6.24327.7/tools")
    return dict(
        os.environ,
        PYTHONPATH=str(SDK / "bindings/python"),
        PYTHONDONTWRITEBYTECODE="1",
        PYTHONUNBUFFERED="1",
        # The producer's Python/CMake use the image's matched loader and libc.
        # Only the original compatible C++ SDK libraries need an extra lookup.
        LD_LIBRARY_PATH=str(retained_cpp) + ":" + str(PREFIX / "lib"),
        PATH=str(TOOLS / "llvm23/bin") + ":" + os.environ.get("PATH", ""),
        CLR_AR=str(TOOLS / "llvm23/bin/llvm-ar"),
        CLR_NM=str(TOOLS / "llvm23/bin/llvm-nm"),
        CLR_RANLIB=str(TOOLS / "llvm23/bin/llvm-ranlib"),
        CLR_STRINGS="/usr/bin/strings", CLR_LINK="/usr/bin/ld",
        CLR_OBJDUMP=str(TOOLS / "llvm23/bin/llvm-objdump"),
        CLR_READELF="/usr/bin/readelf",
        CLR_OBJCOPY="/usr/bin/objcopy",
        LC_ALL="C", SOURCE_DATE_EPOCH=epoch,
    )


def verify_sdk() -> dict:
    """@brief Require the complete fixed SDK and exact critical native development inputs."""
    report = json.loads((AUDIT / "llvm-sdk-materialization.json").read_text())
    if report["status"] != "PASS" or report["version"] != "16.0.5-alpha.1.24204.1":
        raise ValueError("The exact original Mono LLVM SDK is not admitted")
    indexed = {row["path"]: row for row in report["files"]}
    for relative in (
        "tools/linux-x64/include/llvm/Config/llvm-config.h",
        "tools/linux-x64/lib/libLLVMCore.a",
        "tools/linux-x64/lib/libclang.so",
        "bindings/python/clang/cindex.py",
    ):
        if sha(SDK / relative) != indexed[relative]["sha256"]:
            raise ValueError("A pinned native LLVM SDK build input changed: " + relative)
    retained_cpp = (TOOLS / "dotnet9-preview6/packs/Microsoft.NETCore.App.Runtime.AOT.linux-x64.Cross.wasi-wasm/"
                    "9.0.0-preview.6.24327.7/tools")
    cpp = []
    for original, retained in (("libc++.so.1.0", "libc++.so.1"), ("libc++abi.so.1.0", "libc++abi.so.1")):
        actual = sha(PREFIX / "lib" / original)
        if actual != sha(retained_cpp / retained):
            raise ValueError("The retained C++ dependency differs from the original fixed Mono LLVM SDK")
        cpp.append(dict(sdk_path="tools/linux-x64/lib/" + original,
                        retained_path=str(retained_cpp / retained), sha256=actual))
    save("llvm-sdk-cpp-identity.json", dict(status="PASS", exact_byte_identity=True, files=cpp))
    for path in sorted(SDK.rglob("*"), reverse=True):
        if path.is_dir():
            path.chmod(0o555)
    SDK.chmod(0o555)
    return report


def offsets(env: dict) -> None:
    """@brief Generate complete actual wasm32 offsets with the upstream libclang parser."""
    command = [
        "python3", str(SOURCE / "src/mono/mono/tools/offsets-tool/offsets-tool.py"),
        "--abi=wasm32-unknown-wasi", "--netcore",
        "--targetdir=" + str(BUILD), "--monodir=" + str(SOURCE / "src/mono"),
        "--nativedir=" + str(SOURCE / "src/native"), "--outfile=" + str(OFFSETS),
        "--libclang=" + str(PREFIX / "lib/libclang.so"),
        "--wasi-sdk=" + str(TOOLS / "wasi-sdk23"), "--sysroot=" + os.environ["UWVM_MONO_TARGET_SYSROOT"],
        "--clang-resource-dir=" + str(TOOLS / "wasi-sdk23/lib/clang/23"),
        "--target-include-dir=" + os.environ["UWVM_MONO_TARGET_SYSROOT"] + "/include/wasm32-wasip1",
    ]
    execute("cross-offsets", command, env, timeout=300)
    text = OFFSETS.read_text()
    if not text.strip() or "DECL_SIZE" not in text or "MonoObject" not in text or "MonoJitTlsData" not in text:
        raise ValueError("The complete original target-offsets output is missing")
    if re.search(r"DECL_(?:SIZE|ALIGN|OFFSET).*[, ]-\d", text):
        raise ValueError("The actual target parser produced an invalid negative layout")
    (AUDIT / "results/offsets-wasm32-unknown-wasi.h").write_bytes(OFFSETS.read_bytes())
    save("target-offsets.json", dict(
        status="PASS", source_commit=COMMIT, command=command,
        original_offsets_algorithm=True, actual_runtime_config_sha256=sha(BUILD / "config.h"),
        offsets_sha256=sha(OFFSETS), offsets_bytes=OFFSETS.stat().st_size,
        libclang_sha256=sha(PREFIX / "lib/libclang.so"),
        binding_sha256=sha(SDK / "bindings/python/clang/cindex.py"), usage=usage(),
    ))


def configure(env: dict) -> None:
    """@brief Configure the real native cross compiler with the same immutable EH policy."""
    if not OFFSETS.exists():
        raise ValueError("The actual wasm32 target offsets must be generated first")
    flags = "-no-canonical-prefixes -fintegrated-cc1 --target=x86_64-unknown-linux-gnu "
    flags += "-resource-dir=" + str(TOOLS / "wasi-sdk23/lib/clang/23")
    flags += " -Wl,--build-id=sha1"
    command = [
        "cmake", "-S", str(SOURCE / "src/mono"), "-B", str(CROSS_BUILD), "-G", "Unix Makefiles",
        "-DCMAKE_BUILD_TYPE=Release", "-DCMAKE_INSTALL_PREFIX=" + str(CROSS_INSTALL),
        "-DCMAKE_INSTALL_LIBDIR=lib",
        "-DCMAKE_C_COMPILER=" + str(TOOLS / "llvm23/bin/clang"),
        "-DCMAKE_CXX_COMPILER=" + str(TOOLS / "llvm23/bin/clang++"),
        "-DCMAKE_ASM_COMPILER=" + str(TOOLS / "llvm23/bin/clang"),
        "-DCMAKE_AR=" + str(TOOLS / "llvm23/bin/llvm-ar"),
        "-DCMAKE_RANLIB=" + str(TOOLS / "llvm23/bin/llvm-ranlib"),
        "-DCMAKE_C_FLAGS=" + flags,
        "-DCMAKE_CXX_FLAGS=--driver-mode=g++ " + flags,
        "-DCMAKE_ASM_FLAGS=" + flags,
        "-DCMAKE_EXE_LINKER_FLAGS=-fuse-ld=/usr/bin/ld -L"
        + str(TOOLS / "dotnet9-preview6/packs/Microsoft.NETCore.App.Runtime.AOT.linux-x64.Cross.wasi-wasm/"
                "9.0.0-preview.6.24327.7/tools"),
        "-DAOT_TARGET_TRIPLE=wasm32-unknown-wasi", "-DAOT_OFFSETS_FILE=" + str(OFFSETS),
        "-DLLVM_PREFIX=" + str(PREFIX), "-DENABLE_LLVM_RUNTIME=ON", "-DENABLE_WASM_NATIVE_EH=ON",
        "-DENABLE_MINIMAL=", "-DENABLE_ICALL_SYMBOL_MAP=ON", "-DDISABLE_SHARED_LIBS=ON",
        "-DDISABLE_LIBS=ON", "-DAOT_COMPONENTS=ON", "-DSTATIC_COMPONENTS=ON",
        "-DGC_SUSPEND=preemptive", "-DMONO_CROSS_COMPILE_EXECUTABLE_NAME=ON",
        "-DMONO_SET_RPATH_ORIGIN=ON", "-DCLR_CMAKE_KEEP_NATIVE_SYMBOLS=ON",
    ]
    execute("cross-configure", command, env, timeout=300)
    for name in ("CMakeCache.txt", "config.h", "compile_commands.json"):
        data = (CROSS_BUILD / name).read_bytes()
        (AUDIT / "results" / ("cross-" + name + ".gz")).write_bytes(gzip.compress(data, mtime=0))
    config = (CROSS_BUILD / "config.h").read_text()
    for macro in ("ENABLE_LLVM_RUNTIME", "ENABLE_WASM_NATIVE_EH", "ENABLE_LLVM", "MONO_CROSS_COMPILE"):
        if not re.search(r"^#define " + macro + r"(?:\s+1)?\s*$", config, re.MULTILINE):
            raise ValueError("The real cross compiler configuration is missing " + macro)


def build(env: dict) -> None:
    """@brief Build and inspect the actual native AOT executable without symbol workarounds."""
    execute("cross-build-install", ["cmake", "--build", str(CROSS_BUILD), "--target", "install", "--parallel", "2"],
            env, timeout=3600)
    executable = CROSS_INSTALL / "bin/mono-aot-cross"
    if not executable.is_file():
        raise ValueError("The formally rebuilt AOT cross compiler was not installed")
    execute("cross-version", [str(executable), "--version"], env, timeout=30)
    execute("cross-native-elf", [str(TOOLS / "llvm23/bin/llvm-readobj"),
                                 "--file-header", "--needed-libs", "--dynamic-table", str(executable)],
            env, timeout=30)
    commands = json.loads((CROSS_BUILD / "compile_commands.json").read_text())
    row = next(item for item in commands if item["file"].endswith("/mono/mini/mini-llvm.c"))
    arguments = shlex.split(row["command"])
    preprocess = []
    skip = False
    for item in arguments:
        if skip:
            skip = False
        elif item == "-o":
            skip = True
        elif item == "-c":
            preprocess.append("-E")
        else:
            preprocess.append(item)
    execute("cross-native-unwind-policy", preprocess, env, timeout=120)
    text = (WORK / "logs/cross-native-unwind-policy.stdout").read_text()
    if not re.search(r"mono_opt_llvm_emulate_unwind\s*=\s*\(*\s*0\s*\)*\s*;", text):
        raise ValueError("The actual AOT code generator still selected emulated unwinding")
    save("cross-compiler-artifact.json", dict(
        format="uwvm-mono-formal-native-eh-cross-compiler-v1",
        status="BUILT_NOT_YET_GUEST_QUALIFIED", source_commit=COMMIT,
        executable=str(executable), executable_sha256=sha(executable), executable_bytes=executable.stat().st_size,
        exact_llvm_sdk_version="16.0.5-alpha.1.24204.1",
        native_unwind_policy_verified_by_actual_preprocessor=True,
        offsets_sha256=sha(OFFSETS), cross_config_sha256=sha(CROSS_BUILD / "config.h"),
        allow_multiple_definitions=False, exception_gateway_wrappers=False,
        generated_il_or_bitcode_rewritten=False, usage=usage(),
    ))


def main() -> None:
    """@brief Run one ordered formal cross-compiler phase inside the original limited producer."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("phase", choices=("offsets", "cross-configure", "cross-build"))
    args = parser.parse_args()
    limits = {name: (Path("/sys/fs/cgroup") / name).read_text().strip()
              for name in ("memory.max", "memory.swap.max")}
    if limits != {"memory.max": "68719476736", "memory.swap.max": "0"}:
        raise RuntimeError("The formal native compiler requires actual 64 GiB / swap zero")
    verify_sdk()
    patch_source()
    env = environment()
    if args.phase == "offsets":
        offsets(env)
    elif args.phase == "cross-configure":
        configure(env)
    else:
        build(env)


if __name__ == "__main__":
    main()
