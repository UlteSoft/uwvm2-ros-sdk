#!/usr/bin/env python3
"""@brief Rebuild closures in a second directory and compare every delivered byte."""

from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import sys

from build_llvm23_sysroots import cgroup_limits


def hashes(root: Path) -> dict[str, str]:
    """@brief Inventory every delivered file below a target directory.

    @param root Header or library directory from one completed build.
    @return Sorted relative-path to SHA256 mapping for byte-for-byte comparison.
    """
    return {
        str(path.relative_to(root)): hashlib.file_digest(path.open("rb"), "sha256").hexdigest()
        for path in sorted(root.rglob("*"))
        if path.is_file()
    }


def main() -> None:
    """@brief Rebuild in a new workspace and compare every delivered target input.

    @details This Linux-only maintainer check uses the same pinned sources and
    LLVM 23 compiler, but separate build and installation directories. It
    compares headers, libraries and compiler-rt for each selected profile.
    @throws SystemExit If any requested profile differs from its first build.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--work", type=Path, required=True)
    parser.add_argument("--toolchain", type=Path, required=True)
    parser.add_argument("--source-cache", type=Path, required=True)
    parser.add_argument("--cmake", default="cmake")
    parser.add_argument("--ninja", default="ninja")
    parser.add_argument("--profiles", nargs="+", choices=("noeh", "eh"), default=["noeh"])
    args = parser.parse_args()
    if sys.platform != "linux":
        parser.error("rebuilds and tests are authorized on Linux only")
    limits = cgroup_limits()
    first = args.sdk.resolve()
    work = args.work.resolve()
    second = work / "reproduced-sdk"
    if second.exists():
        parser.error("use a new isolated work directory for the second build")
    for area in ("tools", "src", "share"):
        shutil.copytree(
            first / area / "wasm",
            second / area / "wasm",
            ignore=shutil.ignore_patterns(
                "__pycache__", "upstream", "toolchains.json", "llvm23-validation.json", "llvm23-reproducibility.json"
            ),
        )
    original = json.loads((first / "share/wasm/toolchains.json").read_text())
    targets = sorted({entry["triple"] for entry in original["targets"] if entry["profile"] in args.profiles})
    if not targets:
        parser.error("the first build contains no requested profiles")
    command = [
        sys.executable,
        str(second / "tools/wasm/build_llvm23_sysroots.py"),
        "--sdk",
        str(second),
        "--work",
        str(work / "build-work"),
        "--toolchain",
        str(args.toolchain.resolve()),
        "--source-cache",
        str(args.source_cache.resolve()),
        "--cmake",
        args.cmake,
        "--ninja",
        args.ninja,
        "--jobs",
        "2",
        "--targets",
        *targets,
        "--profiles",
        *args.profiles,
    ]
    work.mkdir(parents=True, exist_ok=True)
    with (work / "rebuild.log").open("w") as output:
        subprocess.run(command, stdout=output, stderr=subprocess.STDOUT, check=True)
    comparisons = []
    for entry in original["targets"]:
        if entry["profile"] not in args.profiles:
            continue
        for field in ("lib_dir", "include_dir"):
            old, new = hashes(first / entry[field]), hashes(second / entry[field])
            differences = sorted(path for path in set(old) | set(new) if old.get(path) != new.get(path))
            comparisons.append(
                {
                    "triple": entry["triple"],
                    "profile": entry["profile"],
                    "kind": field,
                    "files": len(old),
                    "identical": not differences,
                    "different_files": differences,
                }
            )
        path = entry["builtins_lib"]
        identical = (first / path).read_bytes() == (second / path).read_bytes()
        comparisons.append(
            {
                "triple": entry["triple"],
                "profile": entry["profile"],
                "kind": "compiler_rt",
                "files": 1,
                "identical": identical,
            }
        )
    report = {
        "schema_version": 1,
        "cgroup": limits,
        "second_build_command": command,
        "comparisons": comparisons,
        "passed": all(item["identical"] for item in comparisons),
    }
    (work / "reproducibility.json").write_text(json.dumps(report, indent=2) + "\n")
    (first / "share/wasm/llvm23-reproducibility.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"passed": report["passed"], "comparisons": comparisons}, indent=2))
    if not report["passed"]:
        raise SystemExit(1)


if __name__ == "__main__":
    main()
