#!/usr/bin/env python3
"""@file source_fetch.py
@brief Materialize fixed official runtime source only in this stage's private tmpfs.

@details The official archive is streamed, never persisted. Every selected
file must match its complete fixed Git tree length and blob identity before
the source set is accepted. Unselected repository contents are discarded.
No upstream program, compiler, package installer, or guest executes here.
"""

from __future__ import annotations

import os

import gzip
import hashlib
import json
from pathlib import Path, PurePosixPath
import tarfile
import time
import urllib.request


AUDIT = Path(os.environ["UWVM_MONO_BUILD_AUDIT"]).resolve()
WORK = Path(os.environ["UWVM_MONO_BUILD_ROOT"]).resolve()
COMMIT = "573461dc897731c11d6166574b77a8c3aabba220"
MAXIMUM_TRANSPORT = 512 * 1024**2


class Transport:
    """@brief Bound and identify every compressed byte of the borrowed network response."""

    def __init__(self, stream):
        """@brief Borrow an official HTTP response and own only bounded digest state."""
        self.stream = stream
        self.bytes = 0
        self.digest = hashlib.sha256()

    def read(self, size: int = -1) -> bytes:
        """@brief Preserve exact archive bytes and reject an oversized compressed transfer."""
        if size < 0:
            size = 1024 * 1024
        data = self.stream.read(size)
        self.bytes += len(data)
        if self.bytes > MAXIMUM_TRANSPORT:
            raise ValueError("The official source archive exceeded its explicit transient byte budget")
        self.digest.update(data)
        return data


def save(value: dict) -> None:
    """@brief Preserve an owned complete source receipt without writing source onto persistent disk."""
    (AUDIT / "source-materialization.json").write_text(json.dumps(value, indent=2) + "\n")


def git_blob(data: bytes) -> str:
    """@brief Identify exact canonical Git blob bytes, including their complete size header."""
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


def canonical(data: bytes, row: dict, relative: str) -> tuple[bytes, dict]:
    """@brief Accept archive newline restoration only when the complete fixed Git blob proves it.

    @details GitHub's source archive applies CRLF checkout attributes to Windows
    scripts. The compiler source must instead retain the exact recorded Git
    blob bytes. No non-newline edit is inferred or accepted. Any unresolved
    mismatch fails rather than weakening the fixed-commit identity check.
    """
    if len(data) == row["size"] and git_blob(data) == row["sha"]:
        return data, {}
    restored = data.replace(b"\r\n", b"\n")
    if len(restored) == row["size"] and git_blob(restored) == row["sha"]:
        return restored, dict(
            archive_checkout_crlf_restored_to_exact_git_blob=True,
            archive_member_bytes=len(data), archive_member_sha256=hashlib.sha256(data).hexdigest(),
        )
    raise ValueError("The official archive cannot reproduce the exact fixed Git blob: " + relative)


def main() -> None:
    """@brief Accept the entire selected source set only after all exact Git blobs match."""
    limits = {name: (Path("/sys/fs/cgroup") / name).read_text().strip()
              for name in ("memory.max", "memory.swap.max")}
    if limits != {"memory.max": "68719476736", "memory.swap.max": "0"}:
        raise RuntimeError("Source acquisition requires the actual 64 GiB / swap-zero container")
    inventory = json.loads((AUDIT / "source-inventory.json").read_text())
    expected = {row["path"]: row for row in inventory["source_files"]}
    root_metadata = json.loads(gzip.decompress((AUDIT / "inputs/tree-root.json.gz").read_bytes()))
    for row in root_metadata["tree"]:
        if row["type"] == "blob":
            expected[row["path"]] = row
    destination = WORK / "runtime"
    if destination.exists():
        previous = json.loads((AUDIT / "source-materialization.json").read_text())
        if previous["status"] != "FAIL" or previous["commit"] != COMMIT:
            raise FileExistsError("Preserve an existing accepted source set instead of replacing it")
        retained = AUDIT / "source-materialization-r1.json"
        if not retained.exists():
            retained.write_text(json.dumps(previous, indent=2) + "\n")
    destination.mkdir(parents=True, exist_ok=True)
    url = "https://codeload.github.com/dotnet/runtime/tar.gz/" + COMMIT
    report = dict(
        format="uwvm-mono-runtime-exact-source-materialization-v1", status="FAIL",
        commit=COMMIT, source=url, source_root=str(destination), actual_cgroup=limits,
        expected_files=len(expected), expected_bytes=sum(row["size"] for row in expected.values()),
        source_on_private_tmpfs=True, archive_persisted=False, compiler_or_guest_executed=False, files=[],
    )
    started = time.monotonic()
    try:
        request = urllib.request.Request(url, headers={"User-Agent": "uwvm2-ros-private-runtime-build"})
        with urllib.request.urlopen(request, timeout=120) as response:
            transport = Transport(response)
            with tarfile.open(fileobj=transport, mode="r|gz") as archive:
                for member in archive:
                    parts = PurePosixPath(member.name).parts
                    if not parts or parts[0] != "runtime-" + COMMIT:
                        raise ValueError("The official archive root does not identify the fixed commit")
                    relative = "/".join(parts[1:])
                    if relative not in expected:
                        continue
                    row = expected.pop(relative)
                    if ".." in parts or PurePosixPath(relative).is_absolute():
                        raise ValueError("An official source member escapes its private source root")
                    output = destination / relative
                    output.parent.mkdir(parents=True, exist_ok=True)
                    if row["mode"] == "120000":
                        if not member.issym():
                            raise ValueError("The exact Git symbolic-link mode changed")
                        data = member.linkname.encode()
                        target = (output.parent / member.linkname).resolve()
                        if not target.is_relative_to(destination):
                            raise ValueError("An official source alias escapes the private source root")
                        if output.exists() or output.is_symlink():
                            if not output.is_symlink() or output.readlink().as_posix() != member.linkname:
                                raise ValueError("A previously verified source alias changed")
                        else:
                            output.symlink_to(member.linkname)
                        restoration = {}
                    else:
                        if not member.isfile() or member.size > 2 * row["size"]:
                            raise ValueError("The complete source extent changed: " + relative)
                        data = archive.extractfile(member).read()
                        data, restoration = canonical(data, row, relative)
                        if output.exists():
                            if output.read_bytes() != data:
                                raise ValueError("A previously verified canonical source file changed")
                        else:
                            output.write_bytes(data)
                            output.chmod(0o755 if row["mode"] == "100755" else 0o644)
                    if len(data) != row["size"] or git_blob(data) != row["sha"]:
                        raise ValueError("The official Git blob differs: " + relative)
                    report["files"].append(dict(
                        path=relative, bytes=len(data), git_blob_sha=row["sha"], mode=row["mode"],
                        sha256=hashlib.sha256(data).hexdigest(), **restoration,
                    ))
            while transport.read(1024 * 1024):
                pass
            report.update(transport_bytes=transport.bytes, transport_sha256=transport.digest.hexdigest())
        if expected:
            raise ValueError("The archive omitted selected fixed source members: " + repr(sorted(expected)[:8]))
        report.update(status="PASS", seconds=time.monotonic() - started,
                      materialized_files=len(report["files"]),
                      materialized_bytes=sum(row["bytes"] for row in report["files"]))
    except Exception as error:
        report.update(error=repr(error), seconds=time.monotonic() - started)
        raise
    finally:
        save(report)
    print(json.dumps({key: report[key] for key in (
        "status", "materialized_files", "materialized_bytes", "transport_bytes", "transport_sha256", "seconds",
    )}), flush=True)


if __name__ == "__main__":
    main()
