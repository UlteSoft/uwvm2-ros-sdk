#!/usr/bin/env python3
"""@file metadata.py
@brief Retain small official fixed-commit source metadata for a native Mono rebuild plan.

@details This authoring helper fetches source metadata and small build recipes
only. It runs no compiler, guest, or upstream source program. Large source
archives are not downloaded or expanded. Complete response bytes are retained
compressed, and source sizes are derived from the official Git tree entries.
"""

from __future__ import annotations

import os

import gzip
import hashlib
import json
from pathlib import Path
import urllib.request


ROOT = Path(__file__).resolve().parent
COMMIT = "573461dc897731c11d6166574b77a8c3aabba220"
HEADERS = {"User-Agent": "uwvm2-ros-private-source-audit", "Accept": "application/vnd.github+json"}


def fetch(url: str, maximum: int) -> bytes:
    """@brief Read one bounded official response without accepting an oversized input."""
    request = urllib.request.Request(url, headers=HEADERS)
    with urllib.request.urlopen(request, timeout=60) as response:
        data = response.read(maximum + 1)
    if len(data) > maximum:
        raise ValueError("The metadata response exceeded its explicit byte budget")
    return data


def tree(key: str, reference: str, recursive: bool) -> tuple[dict, dict]:
    """@brief Fetch one complete official subtree instead of accepting the truncated repository tree."""
    output = ROOT / "inputs" / (key + ".json.gz")
    url = "https://api.github.com/repos/dotnet/runtime/git/trees/" + reference
    if recursive:
        url += "?recursive=1"
    if output.exists():
        data = gzip.decompress(output.read_bytes())
    else:
        data = fetch(url, 32 * 1024**2)
        output.write_bytes(gzip.compress(data, compresslevel=9, mtime=0))
    value = json.loads(data)
    if value.get("truncated"):
        raise ValueError("The exact subtree is still truncated: " + key)
    return value, dict(
        source=url, sha256=hashlib.sha256(data).hexdigest(), bytes=len(data),
        retained=str(output.relative_to(ROOT)), compressed_bytes=output.stat().st_size,
    )


def child(value: dict, name: str) -> str:
    """@brief Select one exact directory identity from its complete parent tree."""
    rows = [row for row in value["tree"] if row["path"] == name and row["type"] == "tree"]
    if len(rows) != 1:
        raise ValueError("A required fixed source subtree is absent: " + name)
    return rows[0]["sha"]


def git_tree_id(value: dict) -> str:
    """@brief Reconstruct the canonical tree object identity from complete official child entries."""
    entries = sorted(value["tree"], key=lambda row: row["path"] + ("/" if row["type"] == "tree" else ""))
    data = b"".join(
        row["mode"].lstrip("0").encode() + b" " + row["path"].encode() + b"\0" + bytes.fromhex(row["sha"])
        for row in entries
    )
    return hashlib.sha1(b"tree " + str(len(data)).encode() + b"\0" + data).hexdigest()


def main() -> None:
    """@brief Quantify exact source subsets before requesting any large materialization."""
    inputs = ROOT / "inputs"
    inputs.mkdir(exist_ok=True)
    responses = []
    root, metadata = tree("tree-root", COMMIT, False)
    responses.append(metadata)
    src, metadata = tree("tree-src", child(root, "src"), False)
    responses.append(metadata)
    eng, metadata = tree("tree-eng", child(root, "eng"), False)
    responses.append(metadata)
    selected = [
        ("mono", "src/mono/", child(src, "mono")),
        ("native", "src/native/", child(src, "native")),
        ("coreclr", "src/coreclr/", child(src, "coreclr")),
        ("eng-native", "eng/native/", child(eng, "native")),
        ("eng-common", "eng/common/", child(eng, "common")),
    ]
    blobs = []
    for key, prefix, reference in selected:
        value, metadata = tree("tree-" + key, reference, True)
        responses.append(metadata)
        blobs.extend(dict(row, path=prefix + row["path"]) for row in value["tree"] if row["type"] == "blob")
    summary = {}
    for name, prefix, _ in selected:
        rows = [row for row in blobs if row["path"].startswith(prefix)]
        summary[name] = dict(files=len(rows), bytes=sum(row.get("size", 0) for row in rows))
    summary["mono_runtime"] = dict(
        files=sum(row["path"].startswith("src/mono/mono/") for row in blobs),
        bytes=sum(row["size"] for row in blobs if row["path"].startswith("src/mono/mono/")),
    )
    build_paths = []
    for row in blobs:
        path = row["path"]
        if row["type"] == "blob" and (
            path.startswith("src/mono/") and (
                path.count("/") <= 3 or path.endswith(".cmake") or path.endswith("CMakeLists.txt")
            )
            or path in ("global.json", "Directory.Build.props", "Directory.Build.targets")
        ):
            build_paths.append(dict(path=path, git_blob_sha=row["sha"], bytes=row["size"]))
    report = dict(
        format="uwvm-mono-runtime-fixed-source-inventory-v1", commit=COMMIT,
        root_tree_sha=git_tree_id(root), api_root_reference_sha=root["sha"], complete_selected_subtrees=True,
        responses=responses, groups=summary, build_recipes=build_paths, source_files=blobs,
        compiler_or_guest_executed=False, large_source_downloaded=False,
    )
    (ROOT / "source-inventory.json").write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps(dict(
        response_bytes=sum(row["bytes"] for row in responses),
        compressed_bytes=sum(row["compressed_bytes"] for row in responses), groups=summary,
    )))


if __name__ == "__main__":
    main()
