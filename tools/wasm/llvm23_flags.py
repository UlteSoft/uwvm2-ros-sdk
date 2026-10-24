#!/usr/bin/env python3
"""@brief Resolve a qualified LLVM 23 closure without implicit target fallbacks."""

from __future__ import annotations

import argparse
import json
from pathlib import Path
import shlex


def resolve(sdk: Path, triple: str, profile: str, language: str) -> dict:
    """@brief Resolve one exact, already qualified target closure.

    @param sdk Installed SDK root; paths in its manifest must remain relative.
    @param triple Requested pointer-width and WASI target identity.
    @param profile Requested noeh or eh exception profile.
    @param language C frontend selector, c or cxx.
    @return Compiler identity, compile/link arguments and explicit ABI metadata.
    @throws ValueError On ambiguity, missing archives or untested profiles.
    """
    sdk = sdk.resolve()
    manifest = json.loads((sdk / "share/wasm/toolchains.json").read_text())
    matches = [
        entry
        for entry in manifest["targets"]
        if entry["triple"] == triple and entry["profile"] == profile and entry["llvm_major"] == 23
    ]
    if len(matches) != 1:
        raise ValueError("no unique LLVM 23 target/profile closure: " + triple + "/" + profile)
    entry = matches[0]
    if entry.get("tested") is not True:
        raise ValueError("the selected target/profile has not passed runtime acceptance")

    def path(name: str) -> Path:
        """@brief Confine a target descriptor directory to the installed SDK.

        @param name Descriptor key holding a normalized SDK-relative directory.
        @return Existing absolute directory below the selected SDK.
        @throws ValueError If the path is absolute, traverses parents or is missing.
        """
        relative = Path(entry[name])
        if relative.is_absolute() or ".." in relative.parts:
            raise ValueError("manifest paths must remain SDK-relative: " + name)
        result = sdk / relative
        if not result.is_dir():
            raise ValueError("the closure directory is missing: " + str(result))
        return result

    sysroot, resource, libraries = path("sysroot"), path("resource_dir"), path("lib_dir")
    for filename in ("libc.a", "libc++.a", "libc++abi.a", "crt1-command.o", "crt1-reactor.o"):
        if not (libraries / filename).is_file():
            raise ValueError("the closure archive/startup object is missing: " + filename)
    flags = ["--target=" + triple, "--sysroot=" + str(sysroot), "-resource-dir=" + str(resource)]
    if language == "cxx":
        flags += entry["cxxflags"]
    link = entry["ldflags"] if language == "cxx" else ["-rtlib=compiler-rt"]
    return {
        "compiler": "clang++" if language == "cxx" else entry["compiler"],
        "llvm_major": 23,
        "triple": triple,
        "profile": profile,
        "compile_flags": flags,
        "link_flags": link,
        "abi": entry["abi"],
        "tested": True,
    }


def main() -> None:
    """@brief Print explicit flags for one qualified SDK target and exception profile.

    @details JSON preserves the exact argument vector; shell output uses shlex
    quoting. Invalid or untested combinations terminate through argparse.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, default=Path(__file__).resolve().parents[2])
    parser.add_argument("--target", required=True)
    parser.add_argument("--profile", default="noeh", choices=("noeh", "eh"))
    parser.add_argument("--language", default="cxx", choices=("c", "cxx"))
    parser.add_argument("--format", default="json", choices=("json", "shell"))
    args = parser.parse_args()
    try:
        selection = resolve(args.sdk, args.target, args.profile, args.language)
    except (OSError, KeyError, ValueError) as error:
        parser.error(str(error))
    if args.format == "json":
        print(json.dumps(selection, indent=2))
    else:
        print(shlex.join([selection["compiler"], *selection["compile_flags"], *selection["link_flags"]]))


if __name__ == "__main__":
    main()
