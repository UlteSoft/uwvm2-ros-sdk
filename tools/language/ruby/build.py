#!/usr/bin/env python3
"""@file build_ruby.py
@brief Maintain the genuine CRuby standalone WASI command with LLVM 23.
@details This producer runs only inside the isolated SSH Linux build container.
Application Xmake builds package guest source bytes and never run this producer.
Source archives are verified and expanded into a new private cache for every build.
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

from engine_source import prepare, finish


def digest(filename):
    """@brief Hash exact bytes.
    @param filename Existing input.
    @return SHA256.
    """
    return hashlib.sha256(Path(filename).read_bytes()).hexdigest()


def main():
    """@brief Build and retain every actual command, result and qualified profile."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk-profile", type=Path, required=True)
    parser.add_argument("--qualified-sdk", type=Path, required=True)
    parser.add_argument("--llvm-bin", type=Path, required=True)
    parser.add_argument("--wasm-opt", type=Path, required=True)
    parser.add_argument("--cache", type=Path, required=True)
    parser.add_argument("--trace-boot", action="store_true")
    parser.add_argument("--baseruby", type=Path)
    parser.add_argument("--node", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--evidence", type=Path, required=True)
    parser.add_argument("--backend", choices=("ros1", "ros2"), default="ros2")
    args = parser.parse_args()
    if sys.platform != "linux":
        raise RuntimeError("Use the isolated Linux maintenance container")
    sdk = args.sdk_profile.resolve(strict=True)
    qualified = args.qualified_sdk.resolve(strict=True)
    llvm = args.llvm_bin.resolve(strict=True)
    cache, source, locked = prepare(args, "ruby")
    # The maintained scanner preserves declarations in both inline and multiline C layouts.
    shutil.copy2(
        sdk / "src/language/ruby/transdb.h.tmpl",
        source / "template/transdb.h.tmpl",
    )
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
        "-ffile-prefix-map=" + str(cache) + "=/__uwvm_build__/" + "ruby",
        "-ffile-prefix-map=" + str(sdk) + "=/__uwvm_sdk__",
        "-ffile-prefix-map=" + str(qualified) + "=/__uwvm_sdk__",
        "-fdebug-prefix-map=" + str(llvm.parent) + "=/__uwvm_toolchain__",

    ]
    report = dict(
        status="FAIL",
        language="ruby",
        compiler="LLVM 23",
        target="wasm32-wasip1",
        backend=args.backend,
        exceptions="official CRuby Asyncify; no C setjmp from the sysroot",
        commands=[],
        target_manifest_sha256=digest(qualified / "share/wasm/toolchains.json"),
    )
    receipt = args.evidence / "build-receipt.json"

    def run(name, argv, cwd=None, env=None):
        """@brief Execute one maintenance step and preserve the actual diagnostic."""
        argv = list(map(str, argv))
        with (args.evidence / (name + ".log")).open("wb") as output:
            result = subprocess.run(argv, cwd=cwd, env=env, stdout=output, stderr=subprocess.STDOUT, timeout=3600)
        report["commands"].append(dict(name=name, argv=argv, cwd=str(cwd) if cwd else None, exit=result.returncode))
        receipt.write_text(json.dumps(report, indent=4) + "\n")
        if result.returncode:
            raise RuntimeError(name + " failed: " + str(args.evidence / (name + ".log")))

    run("llvm-version", [llvm / "clang", "--version"])
    if "clang version 23." not in (args.evidence / "llvm-version.log").read_text():
        raise RuntimeError("Actual LLVM 23 compiler is required")
    run("binaryen-version", [args.node, args.wasm_opt, "--version"])
    baseruby = (args.baseruby or Path("/usr/bin/ruby")).resolve(strict=True)
    run("baseruby-version", [baseruby, "--version"])
    if not (args.evidence / "baseruby-version.log").read_text().startswith("ruby 3."):
        raise RuntimeError("Upstream generators require a genuine Ruby 3 maintenance helper")
    report["maintenance_ruby"] = (args.evidence / "baseruby-version.log").read_text().strip()
    report["maintenance_ruby_sha256"] = digest(baseruby)
    build = cache / "wasi"
    build.mkdir(exist_ok=True)
    temporary = cache / "tmp"
    temporary.mkdir(exist_ok=True)
    env = dict(
        os.environ,
        TMPDIR=str(temporary),
        SOURCE_DATE_EPOCH="1792674454",
        RUBYLIB=str(source / "lib"),
        CC=shlex.join([str(llvm / "clang"), *common]),
        LD=shlex.join([str(llvm / "clang"), *common]),
        AR=str(llvm / "llvm-ar"),
        RANLIB=str(llvm / "llvm-ranlib"),
        NM=str(llvm / "llvm-nm"),
        WASI_SDK_PATH=str(llvm.parent),
        WASMOPT=shlex.join([str(args.node), str(args.wasm_opt)]),
        wasmoptflags="-O1 --all-features --skip-pass=memory-packing",
        CFLAGS="-O1 -g0",
        CPPFLAGS="-I" + str(sdk / "src/language/common/asyncify"),
        LDFLAGS="-Wl,-z,stack-size=16777216 -Wl,--max-memory=1073741824 -Wl,--threads=1",
    )
    configuration = [
        source / "configure",
        "--host=wasm32-unknown-wasi",
        "--build=x86_64-pc-linux-gnu",
        "--with-baseruby="
        + shlex.join(
            [
                str(baseruby),
                "-I"
                + os.pathsep.join(map(str, (source / "lib", source / "ext/pathname/lib", source / "ext/strscan/lib"))),
            ]
        ),
        "--prefix=/usr",
        "--disable-install-doc",
        "--disable-rubygems",
        "--disable-shared",
        "--with-static-linked-ext",
        "--with-ext=enc/trans,enc/encdb",
        "--without-gmp",
        "--disable-yjit",
        "--disable-jit-support",
    ]
    configuration = list(map(str, configuration))
    signature = cache / "configuration.json"
    if (
        not (build / "Makefile").exists()
        or not signature.exists()
        or json.loads(signature.read_text()) != configuration
    ):
        run("configure-wasi", configuration, cwd=build, env=env)
        signature.write_text(json.dumps(configuration, indent=4) + "\n")
    # Always run the genuine source generators; release timestamps must not decide
    # whether a distributed pre-generated source silently overrides these templates.
    (build / "prism").mkdir(exist_ok=True)
    for name in ("diagnostic.c", "serialize.c", "token_type.c"):
        run(
            "generate-prism-" + name,
            [baseruby, source / "prism/templates/template.rb", "src/" + name, "prism/" + name],
            cwd=build,
            env=env,
        )
    run(
        "compile-command",
        [
            llvm / "clang",
            *common,
            "-O1",
            "-g0",
            "-I" + str(build / ".ext/include/wasm32-wasi"),
            "-I" + str(source / "include"),
            "-I" + str(source),
            "-I" + str(build),
            "-I" + str(sdk / "src/language/common/asyncify"),
            "-c",
            sdk / "src/language/ruby/command.c",
            "-o",
            build / "uwvm_command.o",
        ],
    )
    if (build / "ruby").exists():
        (build / "ruby").unlink()
    (build / "inits.o").unlink(missing_ok=True)
    extra = ["CFLAGS=-O1 -g0 -DUWVM_RUBY_BOOT_TRACE"] if args.trace_boot else ["CFLAGS=-O1 -g0"]
    run(
        "make-wasi",
        [
            "/usr/bin/make",
            "-j4",
            "MAINOBJ=uwvm_command.o",
            *extra,
            "wasmoptflags=-O1 --all-features --skip-pass=memory-packing",
            "main",
        ],
        cwd=build,
        env=env,
    )
    output = args.output
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_bytes((build / "ruby").read_bytes())
    raw = output.read_bytes()
    marker = b"UWVM-SRC-APP-v1!"
    at = raw.find(marker) + len(marker)
    if raw.count(marker) != 1 or raw[at : at + 4194308] != bytes(4194308) or raw[at + 4194308] != 167:
        raise RuntimeError("The genuine command must retain the complete initialized source slot")
    report.update(
        status="BUILT_REQUIRES_VALIDATION",
        artifact=str(output),
        sha256=digest(output),
        bytes=output.stat().st_size,
        compiler_sha256=digest(llvm / "clang"),
    )
    receipt.write_text(json.dumps(report, indent=4) + "\n")
    finish(args, "ruby", locked, report)
    receipt.write_text(json.dumps(report, indent=4) + "\n")
    print(json.dumps({key: report[key] for key in ("status", "artifact", "sha256", "bytes", "identity_status")}))


if __name__ == "__main__":
    main()
