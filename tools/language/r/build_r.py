#!/usr/bin/env python3
"""Build original GNU R 4.5.1 as a standalone Wasm command with native Wasm EH.

Reuses explicitly supplied LLVM, Flang and dependency inputs. It neither downloads
toolchains nor executes a host R interpreter. Build receipts are not execution
qualification; installation follows separate guest and ROS acceptance tests.
"""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shlex
import shutil
import subprocess
import sys

from embed_base import generate


def digest(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def save(path, value):
    path.write_text(json.dumps(value, indent=2) + "\n")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("sdk", "qualified-sdk", "llvm-bin", "cache", "fortran",
                 "dependency-prefix", "timezone-data"):
        parser.add_argument("--" + name, type=Path, required=True)
    parser.add_argument("--target", choices=("wasm32-wasip1", "wasm64-wasip1"),
                        default="wasm32-wasip1")
    args = parser.parse_args()
    sdk, qualified, llvm, fortran, dependencies, timezone = (
        path.resolve(strict=True) for path in
        (args.sdk, args.qualified_sdk, args.llvm_bin, args.fortran,
         args.dependency_prefix, args.timezone_data))
    cache = args.cache.resolve()
    cache.mkdir(parents=True, exist_ok=True)
    build, source, compat = (cache / n for n in ("wasi", "source", "compat"))
    if any(p.exists() for p in (build, source, compat)):
        raise ValueError("Use a fresh build directory; existing evidence is preserved")
    for p in (build, source, compat, cache / "tmp"):
        p.mkdir()
    upstream = sdk / "src/language/r/upstream"
    port = sdk / "src/language/r/wasi"
    profile_manifest = qualified / "share/wasm/toolchains.json"
    profile = next(p for p in json.loads(profile_manifest.read_text())["targets"]
                   if p["triple"] == args.target and p["profile"] == "eh")
    if profile["llvm_major"] != 23 or profile["threads"] or profile["memory64"] != args.target.startswith("wasm64"):
        raise ValueError("Expected the exact LLVM 23 target native EH profile without threads")
    inputs = {str(p): digest(p) for p in sorted(upstream.rglob("*")) if p.is_file()}
    for p in [profile_manifest, fortran, *port.iterdir(), *dependencies.glob("lib/*.a"),
              *(dependencies / "include").rglob("*")]:
        if p.is_file():
            inputs[str(p)] = digest(p)
    for name in ("clang", "clang++", "wasm-ld", "llvm-ar", "llvm-ranlib", "llvm-nm"):
        inputs[str(llvm / name)] = digest(llvm / name)
    for name in ("command.c", "native.c", "native.h", "stdio.c"):
        p = sdk / "src/language/r" / name
        inputs[str(p)] = digest(p)
    for p in Path(__file__).parent.glob("*.py"):
        inputs[str(p.resolve())] = digest(p)
    save(cache / "input-files.json", inputs)
    rows = []
    receipt = {"status": "BUILDING", "target": args.target, "profile": "eh",
               "input_manifest_sha256": digest(cache / "input-files.json"),
               "commands": rows, "runtime_installed": False,
               "scope": "Original GNU R base command build; execution and full packages require separate qualification"}
    env = dict(os.environ, TMPDIR=str(cache / "tmp"), PKG_CONFIG_PATH="",
               PKG_CONFIG_LIBDIR="", LC_ALL="C", R_KEEP_PKG_SOURCE="no")

    def run(name, argv, cwd=build, timeout=1200):
        argv = list(map(str, argv))
        with (cache / (name + ".log")).open("wb") as log:
            result = subprocess.run(argv, cwd=cwd, env=env, stdout=log,
                                    stderr=subprocess.STDOUT, timeout=timeout)
        rows.append({"name": name, "argv": argv, "cwd": str(cwd),
                     "exit": result.returncode, "log_sha256": digest(cache / (name + ".log"))})
        save(cache / "build-receipt.json", receipt)
        if result.returncode:
            raise RuntimeError(name + " failed; see " + str(cache / (name + ".log")))

    try:
        # Symlink unchanged originals. Only patched files are copied, so patch
        # cannot mutate the source distribution or consume another toolchain tree.
        patches = json.loads((port / "patch-inputs.json").read_text())["files"]
        patched = {p["path"]: p for p in patches}
        for p in sorted(upstream.rglob("*")):
            target = source / p.relative_to(upstream)
            if p.is_dir():
                target.mkdir(exist_ok=True)
            elif p.is_file():
                relative = p.relative_to(upstream).as_posix()
                if relative in patched:
                    if digest(p) != patched[relative]["upstream_sha256"]:
                        raise ValueError("Upstream patch input differs: " + relative)
                    shutil.copy2(p, target)
                else:
                    target.symlink_to(p)
        run("patch", ["patch", "--batch", "--fuzz=0", "-p1", "-i", port / "standalone.patch"], source)
        for name, item in patched.items():
            if digest(source / name) != item["patched_sha256"]:
                raise ValueError("Patched source differs: " + name)
        for name in ("wasi_posix.c", "wasi_posix.h", "wasm_sjlj.c"):
            shutil.copy2(port / name, compat / name)
        common = ["--target=" + args.target, "-fintegrated-cc1", "-no-canonical-prefixes",
                  "--sysroot=" + str(qualified / profile["sysroot"]),
                  "-resource-dir=" + str(qualified / profile["resource_dir"]),
                  "-fuse-ld=" + str(llvm / "wasm-ld"), "-mexception-handling",
                  "-mllvm", "-wasm-enable-sjlj", "-mllvm", "-wasm-use-legacy-eh=false",
                  "-Wl,-mllvm,-wasm-use-legacy-eh=false", "-Wl,--threads=1",
                  "-Wno-unused-command-line-argument"]
        cc = [str(llvm / "clang"), *common]
        env.update(CC=shlex.join(cc), CXX=shlex.join([str(llvm / "clang++"), *common]),
                   FC=str(fortran), F77=str(fortran), FC_LEN_T="size_t",
                   AR=str(llvm / "llvm-ar"), RANLIB=str(llvm / "llvm-ranlib"),
                   NM=str(llvm / "llvm-nm"), CFLAGS="-O1 -g0 -DNO_THREADED_CODE",
                   CXXFLAGS="-O1 -g0", FCFLAGS="-O1 -g0",
                   ac_cv_c_bigendian="no", r_cv_cstack_direction="down",
                   r_cv_have_utf8="yes", gl_cv_size_max="yes", r_cv_size_max="yes",
                   r_cv_header_setjmp_posix="no", ac_cv_func_vasprintf="yes",
                   r_cv_header_zlib_h="yes", r_cv_have_bzlib="yes",
                   r_cv_have_lzma="yes", r_cv_have_pcre2utf="yes")
        # Cross-compiled dependency ABI/execution is qualified by the caller;
        # these explicit cache values never substitute a native library.
        for name, extra in (("wasi_posix", []), ("wasm_sjlj", ["-D__WASM_SJLJ__"])):
            run(name, [*cc, "-O1", *extra, "-c", compat / (name + ".c"),
                       "-o", compat / (name + ".o")])
            run(name + "-archive", [llvm / "llvm-ar", "rcs",
                                    compat / ("lib" + name + ".a"), compat / (name + ".o")])
        emulations = ["getpid", "mman", "signal", "process-clocks"]
        env["CPPFLAGS"] = shlex.join([
            "-D_GNU_SOURCE", *["-D_WASI_EMULATED_" + n.upper().replace("-", "_") for n in emulations],
            "-I" + str(source / "src/main"), "-I" + str(source / "src/unix"),
            "-I" + str(dependencies / "include"), "-include", str(compat / "wasi_posix.h")])
        env["LDFLAGS"] = "-L" + shlex.quote(str(dependencies / "lib"))
        env["LIBS"] = shlex.join([*["-lwasi-emulated-" + n for n in emulations],
                                  str(compat / "libwasi_posix.a"), str(compat / "libwasm_sjlj.a")])
        run("llvm-version", [llvm / "clang", "--version"])
        if "clang version 23." not in (cache / "llvm-version.log").read_text():
            raise ValueError("LLVM 23 is required")
        options = ["--without-" + s for s in ("x", "readline", "recommended-packages",
                   "tcltk", "libpng", "jpeglib", "libtiff", "cairo", "aqua", "libcurl")]
        options += ["--disable-" + s for s in ("openmp", "R-shlib", "java", "nls")]
        run("configure", [source / "configure", "--host=" + args.target.split("-")[0] + "-unknown-wasi",
                          "--build=x86_64-pc-linux-gnu", *options,
                          "--with-blas=no", "--with-lapack=no", "--with-internal-tzcode"])
        shutil.copy2(source / "SVN-REVISION", build / "SVN-REVISION")
        # Static original BLAS and one compact bytecode evaluator; no algorithm replacement.
        makeconf = build / "Makeconf"
        text = re.sub(r"^BLAS_LIBS =.*$", 'BLAS_LIBS = -L"$(R_HOME)/lib$(R_ARCH)" -lRblas',
                      makeconf.read_text(), flags=re.M)
        text = re.sub(r"^MAIN_LDFLAGS =.*$", "MAIN_LDFLAGS = -Wl,-z,stack-size=8388608", text, flags=re.M)
        makeconf.write_text(text)
        for part, target in (("src/include", "all"), ("src/library/base", "mkRbase"),
                             ("src/library/profile", "all"), ("etc", "Renviron")):
            run(part.replace("/", "-"), ["make", "-j1", target], build / part)
        generate(build, timezone, compat)
        for name in ("r_builtin_files", "r_builtin_zoneinfo"):
            run(name, [*cc, "-D_GNU_SOURCE", "-O1", "-c", compat / (name + ".c"),
                       "-o", compat / (name + ".o")])
        with makeconf.open("a") as f:
            f.write("\nLIBS += " + shlex.join([str(compat / (n + ".o")) for n in
                     ("r_builtin_files", "r_builtin_zoneinfo")]) + "\n")
        for part in ("src/extra/blas", "src/extra/tre", "src/extra/xdr", "src/extra/tzone"):
            run(part.replace("/", "-"), ["make", "-j1"], build / part)
        run("core", ["make", "-j1", "R.bin"], build / "src/main", timeout=3600)
        # Use the link command actually executed by the clean upstream build.
        # A recursive make dry run may regenerate configuration and is not evidence.
        lines = [line for line in (cache / "core.log").read_text().splitlines()
                 if " -o R.bin " in line and "Rmain.o" in line]
        if len(lines) != 1:
            raise ValueError("Original R makefile did not provide one core link command")
        line = lines[0].replace("".join([chr(96), "ls ../unix/*.o ../appl/*.o ../nmath/*.o", chr(96)]),
                    " ".join(shlex.quote(str(p)) for part in ("unix", "appl", "nmath")
                             for p in sorted((build / "src" / part).glob("*.o"))))
        link = shlex.split(line)
        includes = ["-I" + str(p) for p in (build / "src/include", source / "src/include",
                    sdk / "src/language/r", sdk / "src/language/common/asyncify", sdk / "include")]
        artifacts = []
        for backend in ("wasi", "ros1", "ros2"):
            dest = cache / "command" / backend
            dest.mkdir(parents=True)
            extra = ["-DUWVM_R_WASI_ONLY"] if backend == "wasi" else ["-DROSWASM_BACKEND=" + ("1" if backend == "ros1" else "2")]
            objects = []
            for name in ("command", "stdio", *([] if backend == "wasi" else ["native"])):
                obj = dest / (name + ".o")
                run(backend + "-" + name, [*cc, "-O1", *includes, *extra, "-c",
                    sdk / "src/language/r" / (name + ".c"), "-o", obj])
                objects.append(str(obj))
            output = dest / "R.wasm"
            argv = [str(output) if arg == "R.bin" else arg for arg in link]
            offset = argv.index("Rmain.o")
            argv[offset:offset + 1] = objects
            run(backend + "-link", argv, build / "src/main")
            artifacts.append({"backend": backend, "path": str(output), "sha256": digest(output)})
        if any(digest(p) != value for p, value in inputs.items()):
            raise ValueError("A pinned build input changed")
        receipt.update(status="BUILT_REQUIRES_GUEST_QUALIFICATION", artifacts=artifacts,
                       embedded_data_sha256=digest(compat / "embedded-data.json"))
        print(json.dumps({"status": receipt["status"], "artifacts": artifacts}), flush=True)
    except Exception as error:
        receipt.update(status="FAIL", diagnostic=str(error))
        raise
    finally:
        save(cache / "build-receipt.json", receipt)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
