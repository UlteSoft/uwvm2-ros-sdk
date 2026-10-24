#!/usr/bin/env python3
"""@file build_runtime.py
@brief Build the complete fixed Mono WASI native core with genuine WebAssembly EH.

@details All original source blobs are verified before the reviewed platform
and immutable unwind-policy configuration. The core uses ENABLE_LLVM_RUNTIME and the original
carrier source, not replacement stub functions or linker wrappers. Compilers,
target libraries, and previous SDK inputs remain read-only. New source and
objects occupy only this stage's exclusively owned tmpfs.
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
import time

from patch_mono import main as patch_source


AUDIT = Path(os.environ["UWVM_MONO_BUILD_AUDIT"]).resolve()
WORK = Path(os.environ["UWVM_MONO_BUILD_ROOT"]).resolve()
SOURCE = WORK / "runtime"
BUILD = WORK / "build"
INSTALL = WORK / "install"
COMMIT = "573461dc897731c11d6166574b77a8c3aabba220"
BUNDLE = "b45ddb2c2cab60a4db83121b9df58ff9604ab1e45689930705e64f57663d05ac"
TOOLS = Path(os.environ["UWVM_MONO_TOOL_ROOT"]).resolve()


def sha(path: Path) -> str:
    """@brief Identify complete native source or output bytes with a bounded buffer."""
    value = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            value.update(block)
    return value.hexdigest()


def save(relative: str, value: dict) -> None:
    """@brief Preserve a complete small owned runtime-build receipt on persistent storage."""
    path = AUDIT / relative
    path.parent.mkdir(parents=True, exist_ok=True)
    if relative == "runtime-artifacts.json" and path.exists():
        history = AUDIT / "results/history"
        history.mkdir(exist_ok=True)
        revision = 1
        destination = history / ("runtime-artifacts-r" + str(revision) + ".json")
        while destination.exists():
            revision += 1
            destination = history / ("runtime-artifacts-r" + str(revision) + ".json")
        shutil.copyfile(path, destination)
    path.write_text(json.dumps(value, indent=2) + "\n")


def usage() -> dict:
    """@brief Measure actual cgroup peak memory and private tmpfs occupancy."""
    group = Path("/sys/fs/cgroup")
    return dict(
        memory_current=int((group / "memory.current").read_text()),
        memory_peak=int((group / "memory.peak").read_text()),
        tmpfs_used=shutil.disk_usage(WORK).used, tmpfs_free=shutil.disk_usage(WORK).free,
    )


def execute(label: str, command: list[str], environment: dict, timeout: int = 1800) -> dict:
    """@brief Run one genuine native build step and compress its complete diagnostic streams.

    @param label Exact owned phase name used for independent log retention.
    @param command Structured real executable arguments; never a shell fragment.
    @param environment Explicit producer environment with read-only target/tool roots.
    @param timeout Maximum actual process time in seconds.
    @return Actual exit status, wall time, command, and measured resource state.
    @details Raw logs remain in the private tmpfs. Only compressed copies and
    small JSON receipts consume persistent Linux space.
    """
    logs = WORK / "logs"
    logs.mkdir(exist_ok=True)
    if (AUDIT / "results" / (label + ".json")).exists():
        history = AUDIT / "results/history"
        history.mkdir(exist_ok=True)
        revision = 1
        while (history / (label + "-r" + str(revision) + ".json")).exists():
            revision += 1
        for suffix in (".json", ".stdout.gz", ".stderr.gz"):
            existing = AUDIT / "results" / (label + suffix)
            shutil.copyfile(existing, history / (label + "-r" + str(revision) + suffix))
    started = time.monotonic()
    stdout = logs / (label + ".stdout")
    stderr = logs / (label + ".stderr")
    with stdout.open("wb") as out, stderr.open("wb") as error:
        result = subprocess.run(command, cwd=BUILD, env=environment, stdout=out, stderr=error, timeout=timeout)
    for path in (stdout, stderr):
        target = AUDIT / "results" / (path.name + ".gz")
        target.parent.mkdir(exist_ok=True)
        with path.open("rb") as source, gzip.open(target, "wb", compresslevel=9) as destination:
            shutil.copyfileobj(source, destination)
    receipt = dict(command=command, exit_code=result.returncode, seconds=time.monotonic() - started,
                   usage=usage(), stdout_sha256=sha(stdout), stderr_sha256=sha(stderr))
    save("results/" + label + ".json", receipt)
    if result.returncode != 0:
        for path in (stdout, stderr):
            with path.open("rb") as stream:
                stream.seek(max(0, path.stat().st_size - 14000))
                print(stream.read().decode(errors="replace"), flush=True)
        raise RuntimeError("Actual Mono runtime " + label + " failed")
    print("PASS", label, receipt["seconds"], receipt["usage"], flush=True)
    return receipt


def version_inputs() -> None:
    """@brief Generate truthful fixed-source private-build metadata instead of upstream placeholders.

    @details Product numbers identify the source runtime family. File version
    9.0.0.1 is explicitly this private producer's identity, not an assertion
    about the original package's Windows file version. The build string names
    the fixed source package, private EH configuration, and exact source commit.
    """
    directory = SOURCE / "artifacts/obj"
    directory.mkdir(parents=True, exist_ok=True)
    fields = {
        "RuntimeFileMajorVersion": 9,
        "RuntimeFileMinorVersion": 0,
        "RuntimeFileBuildVersion": 0,
        "RuntimeFileRevisionVersion": 1,
        "RuntimeProductMajorVersion": 9,
        "RuntimeProductMinorVersion": 0,
        "RuntimeProductPatchVersion": 0,
    }
    header = "\n".join("#define " + name + " " + str(value) for name, value in fields.items()) + "\n"
    (directory / "runtime_version.h").write_text(header)
    (directory / "_version.c").write_text(
        "/** @brief Identify this genuine fixed-source private Mono WASI EH build.\n"
        " * @details This is generated provenance, not the original package binary identity. */\n"
        'static char sccsid[] __attribute__((used)) = "@(#)Version '
        '9.0.0-preview.6.24327.7+uwvm-wasi-eh @Commit: ' + COMMIT + '";\n'
    )
    save("version-inputs.json", dict(
        fixed_runtime_pack="9.0.0-preview.6.24327.7", source_commit=COMMIT,
        private_configuration="uwvm-wasi-eh", generated_fields=fields,
        private_file_version="9.0.0.1", original_package_file_version_impersonated=False,
        files=[dict(path=str(path.relative_to(SOURCE)), sha256=sha(path))
               for path in sorted(directory.iterdir()) if path.is_file()],
        placeholder_version_used=False,
    ))


def main() -> None:
    """@brief Configure or compile the formally enabled runtime without any symbol workaround."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("phase", choices=("configure", "build"))
    args = parser.parse_args()
    limits = {name: (Path("/sys/fs/cgroup") / name).read_text().strip()
              for name in ("memory.max", "memory.swap.max")}
    if limits != {"memory.max": "68719476736", "memory.swap.max": "0"}:
        raise RuntimeError("Formal native builds require actual 64 GiB / swap zero")
    materialized = json.loads((AUDIT / "source-materialization.json").read_text())
    if materialized["status"] != "PASS" or materialized["commit"] != COMMIT:
        raise RuntimeError("The complete fixed source must pass Git blob verification first")
    for path in (WORK / "tmp", WORK / "home", BUILD):
        path.mkdir(exist_ok=True)
    epoch = subprocess.check_output(["git", "show", "-s", "--format=%ct", COMMIT], cwd=SOURCE).decode().strip()
    if not epoch.isdigit():
        raise RuntimeError("The fixed source commit has no complete reproducible timestamp")
    environment = dict(
        os.environ,
        UWVM_MONO_LLVM_ROOT=str(TOOLS / "llvm23"),
        UWVM_MONO_RESOURCE_ROOT=str(TOOLS / "wasi-sdk23/lib/clang/23"),
        UWVM_MONO_SYSROOT=os.environ["UWVM_MONO_TARGET_SYSROOT"],
        LC_ALL="C", SOURCE_DATE_EPOCH=epoch,
    )
    if args.phase == "configure":
        patch_source()
        version_inputs()
        minimal = (
            "jit,sgen_major_marksweep_conc,sgen_split_nursery,sgen_gc_bridge,sgen_toggleref,"
            "sgen_debug_helpers,sgen_binary_protocol,logging,interpreter,qcalls,debugger_agent,log_dest,threads"
        )
        includes = [SOURCE / relative for relative in (
            "src/mono/wasi/include", "src/mono/wasi/mono-include", "src/native/public", "src/mono/mono/eglib",
        )]
        flags = "-no-canonical-prefixes -fintegrated-cc1 "
        flags += "-resource-dir=" + str(TOOLS / "wasi-sdk23/lib/clang/23") + " "
        flags += " ".join("-I" + str(path) for path in includes)
        flags += " -mllvm -wasm-use-legacy-eh=false"
        command = [
            "cmake", "-S", str(SOURCE / "src/mono"), "-B", str(BUILD), "-G", "Unix Makefiles",
            "-DCMAKE_TOOLCHAIN_FILE=" + str(AUDIT / "wasi-llvm23.cmake"), "-DCMAKE_BUILD_TYPE=Release",
            "-DCMAKE_INSTALL_PREFIX=" + str(INSTALL), "-DCMAKE_INSTALL_LIBDIR=lib",
            "-DCLR_CMAKE_HOST_ARCH=x64", "-DCLR_CMAKE_TARGET_ARCH=wasm",
            "-DCLR_CMAKE_HOST_OS=wasi", "-DCLR_CMAKE_TARGET_OS=wasi",
            "-DMONO_COMPONENTS_RID=wasi-wasm", "-DMONO_GC=sgen", "-DGC_SUSPEND=preemptive",
            "-DENABLE_MINIMAL=" + minimal, "-DENABLE_INTERP_LIB=ON", "-DDISABLE_ICALL_TABLES=ON",
            "-DENABLE_ICALL_EXPORT=ON", "-DENABLE_LAZY_GC_THREAD_CREATION=ON", "-DENABLE_WEBCIL=ON",
            "-DDISABLE_EVENTPIPE=ON", "-DSTATIC_COMPONENTS=ON", "-DENABLE_LLVM_RUNTIME=ON",
            "-DDISABLE_COMPONENTS=ON",
            "-DENABLE_WASM_NATIVE_EH=ON",
            "-DFEATURE_PERFTRACING_DISABLE_PERFTRACING_LISTEN_PORTS=ON",
            "-DFEATURE_PERFTRACING_DISABLE_DEFAULT_LISTEN_PORT=ON",
            "-DFEATURE_PERFTRACING_DISABLE_CONNECT_PORTS=ON",
            "-DCMAKE_C_FLAGS=" + flags + " -fexceptions -fwasm-exceptions",
            "-DCMAKE_CXX_FLAGS=" + flags + " -fexceptions -fwasm-exceptions",
            "-DCMAKE_ASM_FLAGS=--target=wasm32-wasip1 --sysroot=" + os.environ["UWVM_MONO_TARGET_SYSROOT"] + " "
            + flags + " -fexceptions -fwasm-exceptions",
            "-DCMAKE_EXE_LINKER_FLAGS=-fexceptions -fwasm-exceptions -fuse-ld="
            + str(TOOLS / "llvm23/bin/wasm-ld"),
        ]
        execute("configure", command, environment, timeout=300)
        for name in ("CMakeCache.txt", "config.h", "compile_commands.json"):
            target = AUDIT / "results" / name
            data = (BUILD / name).read_bytes()
            target.with_suffix(target.suffix + ".gz").write_bytes(gzip.compress(data, compresslevel=9, mtime=0))
        configuration = (BUILD / "config.h").read_text()
        if not re.search(r"^#define ENABLE_LLVM_RUNTIME(?:\s+1)?\s*$", configuration, re.MULTILINE):
            raise RuntimeError("The actual full-core native configuration did not enable LLVM runtime support")
        if not re.search(r"^#define ENABLE_WASM_NATIVE_EH\s+1\s*$", configuration, re.MULTILINE):
            raise RuntimeError("The actual runtime did not select its native Wasm unwind policy")
        if re.search(r"^#define ENABLE_(?:COOP|HYBRID)_SUSPEND\s+1\s*$", configuration, re.MULTILINE):
            raise RuntimeError("The runtime differs from the original WASI no-safepoint suspend profile")
        commands = (BUILD / "compile_commands.json").read_text()
        if "-DHOST_WASI" not in commands:
            raise RuntimeError("The actual native core did not select WASI")
    else:
        execute("build-install", ["cmake", "--build", str(BUILD), "--target", "install", "--parallel", "2"],
                environment, timeout=3600)
        libraries = sorted(INSTALL.rglob("*.a"))
        if not any(path.name == "libmonosgen-2.0.a" for path in libraries):
            raise RuntimeError("The real rebuilt full Mono native core is missing")
        if not any(path.name == "libmono-wasm-eh-wasm.a" for path in libraries):
            raise RuntimeError("The genuine configured Wasm-EH carrier library is missing")
        core = next(path for path in libraries if path.name == "libmonosgen-2.0.a")
        carrier = next(path for path in libraries if path.name == "libmono-wasm-eh-wasm.a")
        for label, library in (("core", core), ("carrier", carrier)):
            execute("symbols-" + label,
                    [str(TOOLS / "llvm23/bin/llvm-nm"), "--defined-only", "--print-file-name", str(library)],
                    environment, timeout=120)
        defined_core = (WORK / "logs/symbols-core.stdout").read_text()
        defined_carrier = (WORK / "logs/symbols-carrier.stdout").read_text()
        for name in ("mono_llvm_cpp_throw_exception", "mono_llvm_cpp_catch_exception"):
            pattern = r"\b" + name + r"$"
            if re.search(pattern, defined_core, re.MULTILINE):
                raise RuntimeError("The rebuilt core still defines a disabled native EH carrier stub: " + name)
            if not re.search(pattern, defined_carrier, re.MULTILINE):
                raise RuntimeError("The actual configured carrier implementation is missing: " + name)
        commands = json.loads((BUILD / "compile_commands.json").read_text())
        option_rows = [row for row in commands if row["file"].endswith("/mono/utils/options.c")]
        if len(option_rows) != 1:
            raise RuntimeError("The exact complete-core options compilation must be unambiguous")
        original = shlex.split(option_rows[0]["command"])
        preprocess = []
        skip_output = False
        for argument in original:
            if skip_output:
                skip_output = False
            elif argument == "-o":
                skip_output = True
            elif argument == "-c":
                preprocess.append("-E")
            else:
                preprocess.append(argument)
        execute("unwind-policy", preprocess, environment, timeout=120)
        policy = (WORK / "logs/unwind-policy.stdout").read_text()
        if not re.search(r"mono_opt_llvm_emulate_unwind\s*=\s*\(*\s*0\s*\)*\s*;", policy):
            raise RuntimeError("The real compiler did not select the immutable native unwind value")
        save("runtime-artifacts.json", dict(
            format="uwvm-mono-runtime-formal-wasi-eh-build-v1", status="BUILT_NOT_YET_GUEST_QUALIFIED",
            actual_cgroup=limits, source_commit=COMMIT, full_core_rebuilt=True, enable_llvm_runtime=True,
            enable_wasm_native_eh=True, immutable_llvm_emulate_unwind=False,
            wasm_exception_encoding="standard; wasm-use-legacy-eh=false",
            upstream_wasi_gc_suspend="preemptive; no safepoints",
            immutable_unwind_value_verified_by_actual_preprocessor=True,
            optional_debugger_hot_reload_diagnostics_components_disabled=True,
            original_optional_component_fallbacks=True,
            linker_symbol_wrappers=False, allow_multiple_definitions=False, disabled_stub_replaced=False,
            disabled_carrier_stubs_excluded_by_configuration=True, original_carrier_symbols_verified=True,
            libraries=[dict(path=str(path.relative_to(INSTALL)), sha256=sha(path), bytes=path.stat().st_size)
                       for path in libraries], usage=usage(),
        ))


if __name__ == "__main__":
    main()
