#!/usr/bin/env python3
"""Compile with one explicit SDK guest profile and its matching stable sysroot.

This development entry point consumes source-build receipts. Installation must
separately verify qualification before publishing a compiler package. A built
receipt is not a memory-safety or industrial-deployment certificate.
"""
from __future__ import annotations
import argparse
import hashlib
import json
import os
from pathlib import Path
import shlex
import subprocess
import sys

import guest_profile


def digest(path):
    h = hashlib.sha256()
    with path.open("rb") as stream:
        for block in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(block)
    return h.hexdigest()


def confined(root, relative):
    path = Path(relative)
    if path.is_absolute() or ".." in path.parts:
        raise ValueError("build receipt contains an unconfined path: " + relative)
    result = (root / path).resolve()
    if not result.is_relative_to(root.resolve()):
        raise ValueError("build receipt symlink escapes its root: " + relative)
    return result


def expand_responses(arguments, cwd=None):
    """Expand Clang's Linux response syntax, rejecting cycles, without a shell."""
    cwd = Path.cwd() if cwd is None else cwd
    result, active = [], set()
    stack = [(iter(arguments), None)]
    while stack:
        iterator, path = stack[-1]
        try:
            item = next(iterator)
        except StopIteration:
            stack.pop()
            if path is not None:
                active.remove(path)
            continue
        if item.startswith("@"):
            path = (cwd / item[1:]).resolve()
            if path in active:
                raise ValueError("cyclic compiler response file: " + str(path))
            active.add(path)
            stack.append((iter(shlex.split(path.read_text(), comments=False, posix=True)), path))
        else:
            result.append(item)
    return result


def select_closure(receipts, profile, compiler_sha256):
    found = []
    for filename in receipts:
        filename = filename.resolve()
        value = json.loads(filename.read_text())
        if value.get("schema") != "uwvm-memtag-sysroot-build-v1" or value.get("status") != "built-awaiting-qualification":
            raise ValueError("not a completed stable sysroot build receipt: " + str(filename))
        if value.get("compiler_sha256") != compiler_sha256:
            # Another compiler version's closure is not a usable fallback.
            continue
        for target in value["targets"]:
            if target.get("guest_profile") == profile.to_dict():
                root = confined(filename.parent, target["sysroot"])
                resource = confined(filename.parent, target["resource"])
                if not (root / "include" / profile.triple / "stdio.h").is_file() or not (resource / "include/stddef.h").is_file():
                    raise ValueError("sysroot/resource headers missing: " + str(filename))
                for library in ("libc.a", "libc++.a", "libc++abi.a", "crt1.o"):
                    if not (root / "lib" / profile.triple / library).is_file():
                        raise ValueError("incomplete sysroot: " + library)
                if profile.exceptions == "eh" and not (root / "lib" / profile.triple / "libunwind.a").is_file():
                    raise ValueError("exception profile lacks libunwind")
                found.append((filename, value, target, root, resource))
    if not found:
        raise ValueError("no sysroot built by this compiler for " + profile.identity + "; build that exact profile; no downgrade or host-library fallback is performed")
    if len(found) != 1:
        raise ValueError("ambiguous sysroot receipts for " + profile.identity + "; select exactly one")
    return found[0]


def make_command(toolchain, receipts, profile, language, arguments, verify=False):
    if language not in ("c", "cpp"):
        raise ValueError("this driver handles c/cpp; other languages need their own complete MTE runtime closure")
    toolchain = toolchain.resolve()
    compiler = toolchain / "bin" / ("clang++" if language == "cpp" else "clang")
    linker = toolchain / "bin/wasm-ld"
    if not compiler.is_file() or not linker.is_file():
        raise ValueError("explicit stable compiler/linker prefix is incomplete")
    argv = expand_responses(arguments)
    for item in argv:
        if item in ("-target", "--target", "--sysroot", "-isysroot", "-resource-dir", "-m32", "-m64", "-pthread", "-fwasm-exceptions", "-fexceptions", "-fno-exceptions") or item.startswith(("--target=", "-target=", "--sysroot=", "-isysroot", "-resource-dir=", "-fuse-ld=", "-fsanitize=", "-fno-sanitize=")):
            raise ValueError("use the SDK profile options instead of overriding " + item)
    filename, value, target, root, resource = select_closure(receipts, profile, digest(compiler))
    if verify:
        for relative, expected in target["files"].items():
            path = confined(filename.parent, relative)
            if digest(path) != expected:
                raise ValueError("sysroot file hash mismatch: " + relative)
    flags = ["--target=" + profile.triple, "--sysroot=" + str(root),
             "-resource-dir=" + str(resource), "-fuse-ld=" + str(linker),
             *profile.llvm_feature_flags()]
    flags += ["-fsanitize=memtag"] if profile.mte else ["-fno-sanitize=memtag"]
    if profile.exceptions == "eh":
        flags += ["-fwasm-exceptions", "-mllvm", "-wasm-use-legacy-eh=false"]
    elif language == "cpp":
        flags += ["-fno-exceptions"]
    # Static archive order is meaningful: put libunwind after caller inputs.
    command = [str(compiler), *flags, *argv]
    if profile.exceptions == "eh" and not any(x in argv for x in ("-c", "-S", "-E", "-fsyntax-only")):
        command += ["-lunwind"]
    return command, dict(profile=profile.to_dict(), receipt=str(filename),
                         compiler_sha256=value["compiler_sha256"],
                         qualified=bool(target.get("qualified", False)), authority_grants=[])


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--toolchain", type=Path, required=True)
    parser.add_argument("--sysroots", type=Path, action="append", required=True, help="exact sysroots.json build receipt; repeat for distinct profiles")
    parser.add_argument("--language", choices=("c", "cpp"), default="c")
    parser.add_argument("--verify", action="store_true", help="verify every file in the selected sysroot before compiling")
    parser.add_argument("--print-command", action="store_true")
    guest_profile.add_arguments(parser)
    parser.add_argument("compiler_arguments", nargs=argparse.REMAINDER, help="arguments after -- go to the pinned Clang")
    args = parser.parse_args(argv)
    try:
        arguments = args.compiler_arguments
        if arguments[:1] == ["--"]:
            arguments = arguments[1:]
        command, record = make_command(args.toolchain, args.sysroots, guest_profile.from_arguments(args), args.language, arguments, args.verify)
        if args.print_command:
            print(json.dumps(dict(record, command=command), indent=2))
            return 0
        # No host interpreter fallback and no implicit WASI/ROS permission grants.
        return subprocess.call(command)
    except (OSError, ValueError, KeyError, subprocess.SubprocessError) as error:
        parser.error(str(error))


if __name__ == "__main__":
    raise SystemExit(main())
