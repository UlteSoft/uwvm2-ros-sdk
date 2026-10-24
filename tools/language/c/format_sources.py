#!/usr/bin/env python3
"""@brief Format maintained SDK source through its versioned C-family policy.

@details This maintenance utility uses a real local clang-format executable.
It does not compile, validate runtime behavior, or change pinned toolchain
payloads. Application builds require neither Python nor this formatter.
"""

import argparse
import hashlib
from pathlib import Path
import shutil
import subprocess

EXTENSIONS = {".h", ".hpp", ".hxx", ".hh", ".c", ".cc", ".cpp", ".cxx", ".m", ".mm", ".cs", ".java"}


def settings(sdk: Path, executable: str = "clang-format") -> tuple[str, Path]:
    """@brief Resolve both mandatory maintenance inputs before writing sources.

    @param sdk Existing SDK root that owns the shared formatting policy.
    @param executable Explicit formatter path or a maintainer's program name.
    @return Resolved executable and immutable policy file paths.
    @details Missing inputs fail before a generator starts publishing files.
    """
    formatter = shutil.which(executable)
    policy = sdk / "tools/language/c/.clang-format"
    if not formatter or not policy.is_file():
        raise ValueError("Provision --clang-format and the SDK C-family formatting policy")
    return formatter, policy.resolve(strict=True)


def format_directories(sdk: Path, directories: list[Path], executable: str = "clang-format") -> dict:
    """@brief Apply the exact SDK policy to selected maintained source trees.

    @param sdk Existing source root; every selected directory must reside inside it.
    @param directories Owned generated trees, excluding pinned binary/tool inputs.
    @param executable Genuine local clang-format program, used only for maintenance.
    @return Formatting policy digest and the complete selected relative file list.
    @details The explicit suffix set includes C/C++, Objective-C, Java and C#.
    A failed formatter stops the maintenance command; no compiler pass is implied.
    """
    root = sdk.resolve(strict=True)
    formatter, policy = settings(root, executable)
    sources = set()
    for directory in directories:
        directory = directory.resolve(strict=True)
        directory.relative_to(root)
        sources.update(p for p in directory.rglob("*") if p.is_file() and p.suffix in EXTENSIONS)
    ordered = sorted(sources)
    for offset in range(0, len(ordered), 80):
        subprocess.run(
            [formatter, "-i", "--style=file:" + str(policy), *map(str, ordered[offset : offset + 80])],
            check=True,
        )
    return {
        "policy_sha256": hashlib.sha256(policy.read_bytes()).hexdigest(),
        "sources": [str(p.relative_to(root)) for p in ordered],
    }


def main() -> None:
    """@brief Format only the explicit source directories selected by a maintainer."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--directory", type=Path, action="append", required=True)
    parser.add_argument("--clang-format", default="clang-format")
    args = parser.parse_args()
    format_directories(args.sdk, args.directory, args.clang_format)


if __name__ == "__main__":
    main()
