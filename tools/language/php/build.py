#!/usr/bin/env python3
"""@file build_php.py
@brief Maintain genuine PHP with an explicit standalone WASI Asyncify profile.
@details LLVM 23 compiles the original Zend VM. This producer is never invoked
by an application build. Actual failure logs remain evidence of incomplete ports.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import shlex
import shutil
import subprocess
import sys

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / "ruby"))
from engine_source import prepare, finish


def digest(filename):
    """@brief Hash actual bytes.
    @param filename Existing file.
    @return SHA256.
    """
    return hashlib.sha256(Path(filename).read_bytes()).hexdigest()


def main():
    """@brief Compile original PHP and preserve each actual maintenance command."""
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("sdk-profile", "qualified-sdk", "llvm-bin", "wasm-opt", "cache"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--node", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--evidence", type=Path, required=True)
    parser.add_argument("--backend", choices=("ros1", "ros2"), default="ros2")
    args = parser.parse_args()
    if sys.platform != "linux":
        raise RuntimeError("Use the isolated Linux maintenance container")
    sdk = args.sdk_profile.resolve(strict=True)
    llvm = args.llvm_bin.resolve(strict=True)
    qualified = args.qualified_sdk.resolve(strict=True)
    port = sdk / "src/language/common/asyncify/asyncify"
    cache, source, locked = prepare(args, "php")
    temporary = cache / "tmp"
    temporary.mkdir(exist_ok=True)
    manifest = json.loads((qualified / "share/wasm/toolchains.json").read_text())
    profile = next(
        item for item in manifest["targets"] if item["triple"] == "wasm32-wasip1" and item["profile"] == "noeh"
    )
    # Exact target files/catalog are admitted by verify_profile(); actual cold
    # compilation/linking below supplies its own scoped construction evidence.
    # The public catalog intentionally carries no universal tested boolean.
    if (profile["llvm_major"] != 23 or profile["triple"] != "wasm32-wasip1"
            or profile["profile"] != "noeh" or profile["memory64"] or profile["threads"]):
        raise RuntimeError("The exact LLVM 23 noeh wasm32-wasip1 closure is required")
    common = [
        "--target=wasm32-wasip1",
        "-no-canonical-prefixes",
        "-fintegrated-cc1",
        "-DROSWASM_BACKEND=" + ("1" if args.backend == "ros1" else "2"),
        "-I" + str(qualified / "include"),
        "--sysroot=" + str(qualified / profile["sysroot"]),
        "-isystem",
        str(qualified / profile["include_dir"]),
        "-resource-dir=" + str(qualified / profile["resource_dir"]),
        "-B" + str(qualified / profile["lib_dir"]),
        "-L" + str(qualified / profile["lib_dir"]),
        "-fuse-ld=" + str(llvm / "wasm-ld"),
        "-Wno-unused-command-line-argument",
        # Compiler diagnostics, assertions and source-name macros use stable SDK paths.
        "-ffile-prefix-map=" + str(cache) + "=/__uwvm_build__/" + "php",
        "-ffile-prefix-map=" + str(sdk) + "=/__uwvm_sdk__",
        "-ffile-prefix-map=" + str(qualified) + "=/__uwvm_sdk__",
        "-fdebug-prefix-map=" + str(llvm.parent) + "=/__uwvm_toolchain__",

        "-ffile-prefix-map=" + str(port) + "/=" + locked["reproducibility"]["asyncify_macro_prefix"],
        "-O1",
        "-g0",
    ]
    libraries = [
        "-lwasi-emulated-signal",
        "-lwasi-emulated-process-clocks",
        "-lwasi-emulated-mman",
        "-lwasi-emulated-getpid",
        "-lm",
    ]
    network = sdk / "src/language/php/port/network"
    flags = [
        "-I" + str(port),
        "-I" + str(network / "include"),
        "-include",
        str(network / "include/uwvm_network.h"),
        "-D_WASI_EMULATED_SIGNAL",
        "-D_WASI_EMULATED_PROCESS_CLOCKS",
        "-D_WASI_EMULATED_MMAN",
        "-D_WASI_EMULATED_GETPID",
    ]
    report = dict(
        status="FAIL",
        language="php",
        target="wasm32-wasip1",
        backend=args.backend,
        compiler="LLVM 23",
        exceptions="maintained Ruby-origin Asyncify; signals and native threads unavailable",
        commands=[],
        target_manifest_sha256=digest(qualified / "share/wasm/toolchains.json"),
    )
    receipt = args.evidence / "build-receipt.json"

    def run(name, argv, cwd=None, env=None):
        """@brief Run one isolated step and retain actual status and complete diagnostic."""
        argv = list(map(str, argv))
        with (args.evidence / (name + ".log")).open("wb") as output:
            result = subprocess.run(argv, cwd=cwd, env=env, stdout=output, stderr=subprocess.STDOUT, timeout=3600)
        report["commands"].append(dict(name=name, argv=argv, cwd=str(cwd) if cwd else None, exit=result.returncode))
        receipt.write_text(json.dumps(report, indent=4) + "\n")
        if result.returncode:
            raise RuntimeError(name + " failed: " + str(args.evidence / (name + ".log")))

    run("llvm-version", [llvm / "clang", "--version"])
    if "clang version 23." not in (args.evidence / "llvm-version.log").read_text():
        raise RuntimeError("Actual LLVM 23 compiler required")
    build = cache / "wasi"
    build.mkdir(exist_ok=True)
    env = dict(
        os.environ,
        # This retained build stamp is independent of the current wall-clock build time.
        SOURCE_DATE_EPOCH=str(locked["reproducibility"]["source_date_epoch"]),
        TMPDIR=str(temporary),
        CC=shlex.join([str(llvm / "clang"), *common]),
        AR=str(llvm / "llvm-ar"),
        RANLIB=str(llvm / "llvm-ranlib"),
        NM=str(llvm / "llvm-nm"),
        CPPFLAGS=shlex.join(flags),
        CFLAGS="-O1 -g0",
        LIBS=shlex.join(libraries),
        LDFLAGS="-Wl,-z,stack-size=16777216 -Wl,--max-memory=1073741824 -Wl,--threads=1",
        ac_cv_func_fnmatch_works="yes",
        ac_cv_func_mmap_fixed_mapped="yes",
        ac_cv_c_bigendian="no",
        ac_cv_func_mmap_anon="yes",
        ac_cv_func_posix_getpwuid_r="no",
    )
    configuration = [
        source / "configure",
        "--prefix=/usr",
        "--host=wasm32-unknown-wasi",
        "--build=x86_64-pc-linux-gnu",
        "--disable-all",
        "--enable-embed=static",
        "--disable-cli",
        "--disable-cgi",
        "--disable-phpdbg",
        "--disable-opcache",
        "--disable-zend-signals",
        "--without-pear",
        "--without-iconv",
        "--without-pcre-jit",
    ]
    configuration = list(map(str, configuration))
    signature = cache / "configuration.json"
    configuration_signature = dict(argv=configuration, cppflags=flags, libraries=libraries)
    if (
        not (build / "Makefile").exists()
        or not signature.exists()
        or json.loads(signature.read_text()) != configuration_signature
    ):
        run("configure-wasi", configuration, cwd=build, env=env)
        signature.write_text(json.dumps(configuration_signature, indent=4) + "\n")
    # Configure writes diagnostic path literals into this generated C header.
    # Normalize the source input before compilation; do not patch a built VM.
    definitions = build / "main/build-defs.h"
    if definitions.is_file():
        original = definitions.read_text()
        normalized = original
        for old, stable in sorted({str(source): "/__uwvm_build__/php/source",
            str(cache): "/__uwvm_build__/php", str(sdk): "/__uwvm_sdk__",
            str(qualified): "/__uwvm_sdk__", str(llvm.parent): "/__uwvm_toolchain__"}.items(),
            key=lambda item: -len(item[0])):
            normalized = normalized.replace(old, stable)
        definitions.write_text(normalized)
        report["generated_header_normalization"] = dict(
            path="main/build-defs.h", before_sha256=hashlib.sha256(original.encode()).hexdigest(),
            after_sha256=digest(definitions), changes=original != normalized)
    run("make-wasi", ["/usr/bin/make", "-j4"], cwd=build, env=env)
    objects = []
    for name in (
        "wasm/setjmp.c",
        "wasm/setjmp_core.S",
        "wasm/machine_core.S",
        "wasm/fiber.c",
        "runtime.c",
        "ucontext.c",
    ):
        output = cache / (Path(name).name + ".o")
        selected_flags = [] if Path(name).suffix == ".S" else flags
        run(
            "compile-" + Path(name).name,
            [llvm / "clang", *common, *selected_flags, "-I" + str(port), "-c", port / name, "-o", output],
            env=env,
        )
        objects.append(output)
    for filename in sorted((network / "source").glob("*.c")):
        output = cache / (filename.name + ".o")
        run(
            "compile-network-" + filename.name, [llvm / "clang", *common, *flags, "-c", filename, "-o", output], env=env
        )
        objects.append(output)
    output = args.output
    output.parent.mkdir(parents=True, exist_ok=True)
    include = [
        build,
        build / "main",
        build / "Zend",
        source,
        source / "main",
        source / "Zend",
        source / "TSRM",
        source / "sapi/embed",
        sdk / "src/language/common/asyncify",
    ]
    run(
        "link",
        [
            llvm / "clang",
            *common,
            *flags,
            *["-I" + str(item) for item in include],
            sdk / "src/language/php/command.c",
            build / "libs/libphp.a",
            *objects,
            *libraries,
            "-Wl,-z,stack-size=16777216",
            "-Wl,--max-memory=1073741824",
            "-Wl,--threads=1",
            "-Wl,--error-limit=0",
            "-o",
            output,
        ],
        env=env,
    )
    run(
        "asyncify",
        [
            args.node,
            args.wasm_opt,
            output,
            "--asyncify",
            "-O1",
            "--all-features",
            "--skip-pass=memory-packing",
            "-o",
            output,
        ],
        env=env,
    )
    report.update(status="BUILT_REQUIRES_VALIDATION", artifact=str(output), sha256=digest(output), bytes=output.stat().st_size)
    receipt.write_text(json.dumps(report, indent=4) + "\n")
    finish(args, "php", locked, report)
    receipt.write_text(json.dumps(report, indent=4) + "\n")
    print(json.dumps({key: report[key] for key in ("status", "artifact", "sha256", "bytes", "identity_status")}))


if __name__ == "__main__":
    main()
