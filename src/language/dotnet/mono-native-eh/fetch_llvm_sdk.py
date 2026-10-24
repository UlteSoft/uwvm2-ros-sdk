#!/usr/bin/env python3
"""@file fetch_llvm_sdk.py
@brief Admit the fixed official Mono LLVM SDK inside this producer's private tmpfs.

@details The package version and source revision come from the admitted runtime
commit. A bounded metadata audit fixed the exact compressed size and ZIP member
inventory before this authorized acquisition. Full SHA-256/SHA-512, original
NuSpec identity, CRC verification, and each materialized member's digest are
retained as small records. No large package or expanded tool is written to the
Linux root partition or authoring workstation.
"""

from __future__ import annotations

import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import shutil
import time
import urllib.error
import urllib.request
import xml.etree.ElementTree as ET
import zipfile


AUDIT = Path(os.environ["UWVM_MONO_BUILD_AUDIT"]).resolve()
WORK = Path(os.environ["UWVM_MONO_BUILD_ROOT"]).resolve()
PACKAGE = "runtime.linux-x64.microsoft.netcore.runtime.mono.llvm.sdk"
VERSION = "16.0.5-alpha.1.24204.1"
LLVM_COMMIT = "26f8c30340764cfa7fa9090dc01a36c222bf09c1"


def main() -> None:
    """@brief Download, verify, and member-hash the exact SDK under checked kernel/resource controls."""
    limits = {name: (Path("/sys/fs/cgroup") / name).read_text().strip()
              for name in ("memory.max", "memory.swap.max")}
    if limits != {"memory.max": "68719476736", "memory.swap.max": "0"}:
        raise RuntimeError("The producer requires actual 64 GiB memory and zero swap")
    metadata = json.loads((AUDIT / "inputs/mono-llvm-sdk-ranges.json").read_text())
    original = next(row for row in metadata["feeds"] if row["status"] == "METADATA_PASS")
    if metadata["package"] != PACKAGE or metadata["version"] != VERSION:
        raise ValueError("The exact fixed-source LLVM SDK identity changed")
    free = shutil.disk_usage(WORK).free
    required = original["package_bytes"] + original["expanded_file_bytes"] + 2 * 1024**3
    if free < required:
        raise RuntimeError("The private producer tmpfs has insufficient measured scratch")
    archive = WORK / "mono-llvm-sdk.nupkg"
    temporary = archive.with_suffix(".partial")
    destination = WORK / "mono-llvm-sdk"
    if archive.exists() or destination.exists():
        raise FileExistsError("Preserve the existing owned SDK acquisition before retrying")
    started = time.monotonic()
    digest256 = hashlib.sha256()
    digest512 = hashlib.sha512()
    size = 0
    resumed_prefix = None
    if temporary.exists():
        with temporary.open("rb") as prefix:
            for block in iter(lambda: prefix.read(1024 * 1024), b""):
                size += len(block)
                digest256.update(block)
                digest512.update(block)
        if not 0 < size < original["package_bytes"]:
            raise ValueError("The owned incomplete transport prefix has an invalid size")
        resumed_prefix = dict(bytes=size, sha256=digest256.hexdigest(),
                              complete_package=False, accepted_as_sdk_input=False)
        prior = AUDIT / "inputs/llvm-sdk-incomplete-transport-r1.json"
        if not prior.exists():
            prior.write_text(json.dumps(dict(
                status="INCOMPLETE_TRANSPORT", observed_error="HTTP body read TimeoutError",
                prefix=resumed_prefix, fixed_endpoint=original["endpoint"],
                original_recipe="inputs/fetch_llvm_sdk-r1.py",
            ), indent=2) + "\n")
    transfers = []
    failures = 0
    # @brief Resume contiguous original bytes through bounded immutable ranges.
    # @details Each completed prefix is hashed before reuse. A stalled request
    # resumes from the last actually written byte; no partial package qualifies.
    while size < original["package_bytes"]:
        start = size
        end = min(size + 16 * 1024 * 1024, original["package_bytes"]) - 1
        request = urllib.request.Request(original["endpoint"], headers={
            "Range": "bytes=" + str(start) + "-" + str(end),
            "If-Range": original["ranges"][0]["etag"],
        })
        transfer = dict(start=start, end=end)
        try:
            with urllib.request.urlopen(request, timeout=40) as response, temporary.open("ab") as output:
                wanted = "bytes " + str(start) + "-" + str(end) + "/" + str(original["package_bytes"])
                if response.status != 206 or response.headers.get("Content-Range") != wanted:
                    raise ValueError("The official server changed the exact bounded package range")
                transfer.update(status=response.status, content_range=response.headers.get("Content-Range"),
                                etag=response.headers.get("ETag"))
                while size <= end:
                    block = response.read(min(1024 * 1024, end + 1 - size))
                    if not block:
                        raise OSError("The official range ended before its exact admitted size")
                    size += len(block)
                    digest256.update(block)
                    digest512.update(block)
                    output.write(block)
            failures = 0
            transfer["complete"] = True
            print("SDK original bytes", size, "/", original["package_bytes"], flush=True)
        except (OSError, urllib.error.URLError) as error:
            failures += 1
            transfer.update(complete=False, bytes_committed=size, error=repr(error))
            if failures >= 4:
                raise
        finally:
            transfers.append(transfer)
            (AUDIT / "results/llvm-sdk-transfer.json").write_text(json.dumps(dict(
                status="TRANSPORT_IN_PROGRESS", original_endpoint=original["endpoint"],
                resumed_prefix=resumed_prefix, bytes_committed=size, transfers=transfers,
            ), indent=2) + "\n")
    if size != original["package_bytes"]:
        raise ValueError("The complete official package byte size differs from its metadata")
    temporary.rename(archive)
    expected = {row["path"]: row for row in original["files"]}
    rows = []
    normalized = set()
    destination.mkdir()
    nuspec = None
    with zipfile.ZipFile(archive) as package:
        if {entry.filename for entry in package.infolist()} != set(expected):
            raise ValueError("The complete SDK package member set changed")
        for entry in package.infolist():
            path = PurePosixPath(entry.filename)
            if path.is_absolute() or ".." in path.parts or entry.is_dir():
                raise ValueError("Unexpected SDK member kind or unsafe path: " + entry.filename)
            canonical = str(path)
            if canonical in normalized:
                raise ValueError("Conflicting normalized SDK paths: " + canonical)
            normalized.add(canonical)
            if entry.file_size != expected[entry.filename]["bytes"]:
                raise ValueError("The exact expanded SDK member size changed")
            output = destination / canonical
            output.parent.mkdir(parents=True, exist_ok=True)
            digest = hashlib.sha256()
            with package.open(entry) as source, output.open("xb") as target:
                for block in iter(lambda: source.read(1024 * 1024), b""):
                    digest.update(block)
                    target.write(block)
            mode = 0o555 if "/bin/" in canonical else 0o444
            output.chmod(mode)
            rows.append(dict(archive_path=entry.filename, path=canonical, bytes=entry.file_size,
                             compressed_bytes=entry.compress_size, crc32=entry.CRC,
                             sha256=digest.hexdigest(), mode=mode))
            if canonical.endswith(".nuspec"):
                nuspec = output
    if nuspec is None:
        raise ValueError("The original fixed SDK package metadata is missing")
    tree = ET.fromstring(nuspec.read_bytes())
    fields = {}
    repository = None
    for element in tree.iter():
        name = element.tag.rsplit("}", 1)[-1]
        if name in ("id", "version"):
            fields[name] = element.text
        if name == "repository":
            repository = dict(element.attrib)
    if fields.get("id", "").lower() != PACKAGE or fields.get("version") != VERSION:
        raise ValueError("The actual package's NuSpec does not match the fixed SDK identity")
    if repository is not None and repository.get("commit") not in (None, LLVM_COMMIT):
        raise ValueError("The official SDK package names a different source commit")
    (AUDIT / "llvm-sdk-materialization.json").write_text(json.dumps(dict(
        format="uwvm-mono-official-llvm-sdk-materialization-v1", status="PASS",
        package=PACKAGE, version=VERSION, fixed_llvm_source_commit=LLVM_COMMIT,
        official_endpoint=original["endpoint"], actual_cgroup=limits,
        archive_path=str(archive), archive_bytes=size, archive_sha256=digest256.hexdigest(),
        resumed_prefix=resumed_prefix, bounded_transfers=transfers,
        archive_sha512=digest512.hexdigest(), member_count=len(rows),
        expanded_bytes=sum(row["bytes"] for row in rows), files=rows,
        original_nuspec=fields, repository=repository,
        private_tmpfs_root=str(WORK), scratch_free_before=free,
        scratch_free_after=shutil.disk_usage(WORK).free, seconds=time.monotonic() - started,
        persistent_large_package_written=False, existing_readonly_tools_written=False,
    ), indent=2) + "\n")
    print("PASS fixed Mono LLVM SDK", size, len(rows), digest256.hexdigest(), flush=True)


if __name__ == "__main__":
    main()
