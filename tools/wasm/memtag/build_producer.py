#!/usr/bin/env python3
"""Rebuild the pinned stable WebAssembly-only MTE producer from shipped source.

No package manager, PATH compiler, moving branch or development compiler source
is used. Run under the deployment's resource controller. This records a build;
runtime and security qualification are separate, required acceptance steps.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tarfile

SDK = Path(__file__).resolve().parents[3]
HERE = Path(__file__).resolve().parent


def digest(path):
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def inventory(root):
    result = {}
    for parent, directories, files in os.walk(root, followlinks=False):
        directories[:] = sorted(n for n in directories if n != ".git")
        for name in sorted(files + [n for n in directories if (Path(parent) / n).is_symlink()]):
            path = Path(parent) / name
            relative = path.relative_to(root).as_posix()
            result[relative] = {"symlink": os.readlink(path)} if path.is_symlink() else {"sha256": digest(path)}
    return result


def checked(command, log, cwd=None):
    with log.open("a") as stream:
        stream.write(json.dumps(command) + "\n")
        stream.flush()
        result = subprocess.run(command, cwd=cwd, stdout=stream, stderr=subprocess.STDOUT)
    if result.returncode:
        raise RuntimeError(f"command failed ({result.returncode}); see {log}")


def prepare(entry, work, archive_cache):
    archive = SDK / entry["archive"]
    if not archive.is_file() and archive_cache:
        archive = archive_cache / Path(entry["archive"]).name
    if not entry.get("archive_sha256") or digest(archive) != entry["archive_sha256"]:
        raise ValueError("source archive does not match its stable release lock: " + str(archive))
    if entry.get("release_prerelease") is not False or not entry.get("release_revision"):
        raise ValueError("source is not pinned to a verified stable release")
    for patch in entry["patches"]:
        if digest(SDK / patch["path"]) != patch["sha256"]:
            raise ValueError("source patch hash mismatch: " + patch["path"])
    identity = hashlib.sha256(json.dumps(entry, sort_keys=True).encode()).hexdigest()
    container = work / "source" / identity
    root = container / entry["root"]
    record = container / "source-inventory.json"
    if record.is_file():
        if inventory(root) != json.loads(record.read_text()):
            raise ValueError("prepared source has changed; preserve it and use a fresh --work directory")
        return root
    if container.exists():
        raise ValueError("incomplete source extraction exists; preserve it and use a fresh --work directory")
    container.mkdir(parents=True)
    with tarfile.open(archive, "r:xz") as stream:
        # Only the locked source root is admitted. data_filter rejects absolute
        # links and paths escaping the extraction directory before writing them.
        for member in stream:
            if member.name.split("/", 1)[0] != entry["root"]:
                raise ValueError("unexpected source archive root")
            stream.extract(member, container, filter="data")
    log = container / "prepare.log"
    checked(["git", "-c", "core.hooksPath=/dev/null", "init", "--quiet"], log, root)
    for patch in entry["patches"]:
        checked(["git", "apply", "--check", str(SDK / patch["path"])], log, root)
        checked(["git", "apply", str(SDK / patch["path"])], log, root)
    record.write_text(json.dumps(inventory(root), sort_keys=True) + "\n")
    return root


def build(args):
    lock = json.loads((HERE / "source-lock.json").read_text())
    entry = lock["sources"]["llvm-23.1.5"]
    work = args.work.resolve()
    if work == SDK or work in SDK.parents:
        raise ValueError("--work must be a dedicated build directory")
    if args.jobs < 1:
        raise ValueError("--jobs must be positive")
    bootstrap = args.bootstrap.resolve()
    for executable in ("clang", "clang++", "ld.lld"):
        if not (bootstrap / "bin" / executable).is_file():
            raise ValueError("missing explicit native bootstrap tool: " + executable)
    work.mkdir(parents=True, exist_ok=True)
    source = prepare(entry, work, args.source_cache)
    output = work / "build"
    output.mkdir(exist_ok=True)
    definitions = {
        "CMAKE_BUILD_TYPE": "Release", "CMAKE_C_COMPILER": str(bootstrap / "bin/clang"),
        "CMAKE_CXX_COMPILER": str(bootstrap / "bin/clang++"),
        "CMAKE_EXE_LINKER_FLAGS": "-fuse-ld=" + str(bootstrap / "bin/ld.lld"),
        "CMAKE_SHARED_LINKER_FLAGS": "-fuse-ld=" + str(bootstrap / "bin/ld.lld"),
        "LLVM_ENABLE_PROJECTS": "clang;lld", "LLVM_TARGETS_TO_BUILD": "WebAssembly",
        "LLVM_DEFAULT_TARGET_TRIPLE": "wasm32-wasip1-threads", "LLVM_ENABLE_ASSERTIONS": "ON",
        "LLVM_INCLUDE_TESTS": "ON", "CLANG_INCLUDE_TESTS": "ON", "LLD_INCLUDE_TESTS": "ON",
        "LLVM_INCLUDE_EXAMPLES": "OFF", "LLVM_INCLUDE_BENCHMARKS": "OFF",
        "LLVM_ENABLE_ZLIB": "OFF", "LLVM_ENABLE_ZSTD": "OFF", "LLVM_ENABLE_LIBXML2": "OFF",
        "LLVM_ENABLE_LIBEDIT": "OFF", "LLVM_ENABLE_TERMINFO": "OFF", "LLVM_ENABLE_BINDINGS": "OFF",
        "LLVM_APPEND_VC_REV": "OFF", "LLVM_PARALLEL_LINK_JOBS": "2",
        "CMAKE_EXPORT_COMPILE_COMMANDS": "ON", "Python3_EXECUTABLE": args.python,
    }
    programs = ["clang", "lld", "llc", "opt", "llvm-mc", "llvm-objdump", "llvm-readobj", "llvm-as",
                "llvm-dis", "llvm-ar", "llvm-ranlib", "llvm-nm", "llvm-config", "FileCheck", "not", "count", "split-file"]
    commands = [[args.cmake, "-G", "Ninja", "-S", str(source / "llvm"), "-B", str(output),
                 *["-D" + key + "=" + value for key, value in definitions.items()]],
                [args.cmake, "--build", str(output), "--parallel", str(args.jobs), "--target", *programs]]
    record = dict(schema="uwvm-memtag-producer-build-v1", source=entry, commands=commands,
                  bootstrap_sha256=digest(bootstrap / "bin/clang"), status="building", qualified=False)
    receipt = work / "producer-build.json"
    receipt.write_text(json.dumps(record, indent=2) + "\n")
    for index, command in enumerate(commands):
        checked(command, work / f"build-{index}.log")
    compiler = output / "bin/clang"
    version = subprocess.check_output([str(compiler), "--version"], text=True)
    targets = subprocess.check_output([str(compiler), "--print-targets"], text=True)
    registered = {line.split(" - ", 1)[0].strip() for line in targets.splitlines() if " - " in line}
    if "clang version 23.1.5" not in version or registered != {"wasm32", "wasm64"}:
        raise ValueError("producer version or registered targets differs from the stable Wasm-only contract")
    if subprocess.check_output([str(compiler), "-dumpmachine"], text=True).strip() != "wasm32-unknown-wasip1-threads":
        raise ValueError("compiler default target is not wasm32-wasip1-threads")
    record.update(status="built-awaiting-qualification", version=version, targets=targets,
                  binaries={name: digest(output / "bin" / name) for name in programs})
    receipt.write_text(json.dumps(record, indent=2) + "\n")
    print(receipt)


def main():
    import sys
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--work", type=Path, required=True)
    parser.add_argument("--bootstrap", type=Path, required=True, help="existing native Clang/LLD prefix")
    parser.add_argument("--source-cache", type=Path)
    parser.add_argument("--jobs", type=int, default=4)
    parser.add_argument("--cmake", default="cmake")
    parser.add_argument("--python", default=sys.executable)
    args = parser.parse_args()
    try:
        build(args)
    except (OSError, ValueError, RuntimeError, subprocess.SubprocessError) as error:
        parser.error(str(error))


if __name__ == "__main__":
    main()
