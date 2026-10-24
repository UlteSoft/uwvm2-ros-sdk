#!/usr/bin/env python3
"""@brief Package the required official LLVM 23 Linux host tools for Xmake caching.

@details The result is a deterministic gzip tar archive with an ordinary relocatable
LLVM directory layout. It contains original release binaries, compiler
resource headers, license text, and provenance; it contains no guest sysroot.
OS runtime libraries remain explicit bootstrap prerequisites.
"""

from __future__ import annotations

import argparse
import gzip
import hashlib
import io
import json
from pathlib import Path
import re
import subprocess
import tarfile

TOOLS = (
    "clang",
    "clang-23",
    "clang++",
    "lld",
    "wasm-ld",
    "llvm-ar",
    "llvm-ranlib",
    "llvm-nm",
    "llvm-readobj",
    "llvm-objdump",
    "llvm-config",
)
EPOCH = 1792501380


def main() -> None:
    """@brief Retain pinned release executables with deterministic archive metadata.

    @details This maintainer archive records its ELF runtime prerequisites. It
    is an intermediate input, not the self-contained Xmake distribution bundle.
    The closure preparer additionally retains the loader and native libraries.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--toolchain", type=Path, required=True)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--readelf", default="readelf")
    args = parser.parse_args()
    root, sdk, output = args.toolchain.resolve(), args.sdk.resolve(), args.output.resolve()
    version = subprocess.check_output([str(root / "bin/clang"), "--version"], text=True)
    if not re.search(r"clang version 23\.1\.4\b", version):
        parser.error("this package recipe is pinned to the official LLVM 23.1.4 release")
    if "Target: x86_64-" not in version:
        parser.error("this host package recipe only supports the Linux x86_64 release")
    paths = [root / "bin" / name for name in TOOLS]
    paths += sorted((root / "lib/clang/23/include").rglob("*"))
    paths = [path for path in paths if path.is_file() or path.is_symlink()]
    real_binaries = sorted({path.resolve() for path in paths if path.parent == root / "bin"})
    versions = set()
    libraries = set()
    for path in real_binaries:
        info = subprocess.check_output([args.readelf, "--version-info", str(path)], text=True)
        versions.update(re.findall(r"\b(?:GLIBC|GLIBCXX|CXXABI)_[0-9.]+\b", info))
        dynamic = subprocess.check_output([args.readelf, "--dynamic", str(path)], text=True)
        libraries.update(re.findall(r"\(NEEDED\).*?\[(.*?)\]", dynamic))
    requirements = {}
    for prefix in ("GLIBC", "GLIBCXX", "CXXABI"):
        candidates = [value for value in versions if value.startswith(prefix + "_")]
        requirements[prefix] = max(
            candidates, key=lambda value: tuple(int(part) for part in value.split("_", 1)[1].split("."))
        )
    metadata = {
        "schema_version": 1,
        "version": "23.1.4",
        "llvm_major": 23,
        "host_os": "linux",
        "host_arch": "x86_64",
        "layout": "llvm-23.1.4-linux-x86_64",
        "compiler": "bin/clang",
        "cxx_compiler": "bin/clang++",
        "linker": "bin/wasm-ld",
        "resource_dir": "lib/clang/23",
        "version_output": "\n".join(line for line in version.splitlines() if not line.startswith("InstalledDir:")),
        "tools": list(TOOLS),
        "native_runtime_libraries": sorted(libraries),
        "minimum_symbol_versions": requirements,
        "source_artifact": json.loads((sdk / "share/wasm/llvm23-compiler-artifact.json").read_text()),
        "files": {
            str(path.relative_to(root)): (
                {"symlink": path.readlink().as_posix()}
                if path.is_symlink()
                else {
                    "bytes": path.stat().st_size,
                    "sha256": hashlib.file_digest(path.open("rb"), "sha256").hexdigest(),
                }
            )
            for path in paths
        },
    }
    output.parent.mkdir(parents=True, exist_ok=True)
    with output.open("wb") as raw, gzip.GzipFile(
        filename="", mode="wb", fileobj=raw, mtime=0, compresslevel=6
    ) as compressed:
        with tarfile.open(fileobj=compressed, mode="w|", format=tarfile.PAX_FORMAT) as archive:

            def add_bytes(name: str, data: bytes, mode: int = 0o644) -> None:
                """@brief Append one deterministic in-memory file to the host archive.

                @param name Relative member name under the declared archive root.
                @param data Complete immutable member bytes.
                @param mode Required POSIX permission bits, defaulting to read-only data.
                @details Ownership is omitted and the timestamp is pinned for reproduction.
                """
                member = tarfile.TarInfo(metadata["layout"] + "/" + name)
                member.size, member.mode, member.mtime = len(data), mode, EPOCH
                archive.addfile(member, io.BytesIO(data))

            for path in paths:
                member = archive.gettarinfo(str(path), arcname=metadata["layout"] + "/" + str(path.relative_to(root)))
                member.uid = member.gid = 0
                member.uname = member.gname = ""
                member.mtime = EPOCH
                member.pax_headers = {}
                if path.is_symlink():
                    if Path(member.linkname).is_absolute() or ".." in Path(member.linkname).parts:
                        raise RuntimeError("host package contains a nonlocal symlink")
                    archive.addfile(member)
                else:
                    with path.open("rb") as source:
                        archive.addfile(member, source)
            add_bytes("share/uwvm/llvm23-host-toolchain.json", json.dumps(metadata, indent=2).encode() + b"\n")
            add_bytes(
                "share/uwvm/LICENSE-LLVM.txt", (sdk / "share/wasm/licenses/llvm-project/LICENSE.TXT").read_bytes()
            )
    receipt = dict(metadata)
    receipt.pop("files")
    receipt.update(
        {
            "archive": output.name,
            "bytes": output.stat().st_size,
            "sha256": hashlib.file_digest(output.open("rb"), "sha256").hexdigest(),
            "extraction": "gzip tar; strip one root directory or retain layout prefix",
        }
    )
    output.with_suffix(output.suffix + ".json").write_text(json.dumps(receipt, indent=2) + "\n")
    print(json.dumps(receipt, indent=2))


if __name__ == "__main__":
    main()
