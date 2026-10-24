#!/usr/bin/env python3
"""@file git_source.py
@brief Acquire only fixed native runtime source through an official sparse Git checkout.

@details The full archive transports unrelated managed-library and test trees.
This bounded alternative fetches the exact commit with blob filtering and a
fixed sparse source selection. Every physical compiler input is then restored
from, and checked against, its exact Git blob. All objects and source stay in
the private tmpfs. Existing tools and frozen SDK inputs remain read-only.
"""

from __future__ import annotations

import gzip
import hashlib
import json
import os
from pathlib import Path
import subprocess
import time

from source_fetch import COMMIT, WORK, AUDIT, git_blob
from metadata import git_tree_id


def run(label: str, arguments: list[str], source: Path, environment: dict) -> None:
    """@brief Run one real official-source Git operation with complete tmpfs diagnostics."""
    logs = WORK / "git-logs"
    logs.mkdir(exist_ok=True)
    started = time.monotonic()
    result = subprocess.run(["git", *arguments], cwd=source, env=environment,
                            capture_output=True, timeout=600)
    for name, data in (("stdout", result.stdout), ("stderr", result.stderr)):
        (logs / (label + "." + name)).write_bytes(data)
        output = AUDIT / "results"
        output.mkdir(exist_ok=True)
        (output / (label + "." + name + ".gz")).write_bytes(gzip.compress(data, compresslevel=9, mtime=0))
    receipt = dict(command=["git", *arguments], exit_code=result.returncode, seconds=time.monotonic() - started)
    (AUDIT / "results" / (label + ".json")).write_text(json.dumps(receipt, indent=2) + "\n")
    if result.returncode:
        print(result.stderr.decode(errors="replace")[-12000:], flush=True)
        raise RuntimeError("The actual fixed Git source operation failed: " + label)
    print("PASS", label, receipt["seconds"], flush=True)


def main() -> None:
    """@brief Verify the complete selected source set before replacing the rejected partial archive set."""
    limits = {name: (Path("/sys/fs/cgroup") / name).read_text().strip()
              for name in ("memory.max", "memory.swap.max")}
    if limits != {"memory.max": "68719476736", "memory.swap.max": "0"}:
        raise RuntimeError("Fixed source acquisition requires actual 64 GiB / swap zero")
    source = WORK / "git-runtime"
    existing = source.exists()
    source.mkdir(exist_ok=True)
    home = WORK / "home"
    home.mkdir(exist_ok=True)
    environment = dict(os.environ, HOME=str(home), GIT_CONFIG_NOSYSTEM="1", GIT_TERMINAL_PROMPT="0",
                       GIT_LFS_SKIP_SMUDGE="1")
    if not existing:
        run("git-init", ["init", "."], source, environment)
        run("git-remote", ["remote", "add", "origin", "https://github.com/dotnet/runtime.git"], source, environment)
        run("git-promisor", ["config", "remote.origin.promisor", "true"], source, environment)
        run("git-filter", ["config", "remote.origin.partialclonefilter", "blob:none"], source, environment)
        run("git-fetch", ["-c", "protocol.version=2", "fetch", "--filter=blob:none", "--depth=1", "--no-tags",
                          "origin", COMMIT], source, environment)
        run("git-sparse-init", ["sparse-checkout", "init", "--cone"], source, environment)
        run("git-sparse-set", ["sparse-checkout", "set", "src/mono", "src/native", "src/coreclr",
                               "eng/native", "eng/common"], source, environment)
        run("git-checkout", ["checkout", "--detach", "FETCH_HEAD"], source, environment)
    actual = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=source, env=environment).decode().strip()
    if actual != COMMIT:
        raise ValueError("The checked out source commit differs from the fixed official runtime")
    inventory = json.loads((AUDIT / "source-inventory.json").read_text())
    root = json.loads(gzip.decompress((AUDIT / "inputs/tree-root.json.gz").read_bytes()))
    actual_tree = subprocess.check_output(["git", "rev-parse", "HEAD^{tree}"],
                                          cwd=source, env=environment).decode().strip()
    if actual_tree != git_tree_id(root):
        raise ValueError("The actual commit tree differs from the official source inventory")
    expected = {row["path"]: row for row in inventory["source_files"]}
    expected.update({row["path"]: row for row in root["tree"] if row["type"] == "blob"})
    for prefix, filename in (("eng/", "tree-eng.json.gz"), ("src/", "tree-src.json.gz")):
        parent = json.loads(gzip.decompress((AUDIT / "inputs" / filename).read_bytes()))
        expected.update({prefix + row["path"]: dict(row, path=prefix + row["path"])
                         for row in parent["tree"] if row["type"] == "blob"})
    rows = []
    restored = 0
    process = subprocess.Popen(["git", "cat-file", "--batch"], cwd=source, env=environment,
                               stdin=subprocess.PIPE, stdout=subprocess.PIPE)
    try:
        for name, row in sorted(expected.items()):
            process.stdin.write((row["sha"] + "\n").encode())
            process.stdin.flush()
            header = process.stdout.readline().decode().strip().split()
            if header != [row["sha"], "blob", str(row["size"])]:
                raise ValueError("A complete local Git source blob is missing: " + name)
            data = process.stdout.read(row["size"])
            if process.stdout.read(1) != b"\n" or git_blob(data) != row["sha"]:
                raise ValueError("The complete exact local Git blob differs: " + name)
            path = source / name
            if row["mode"] == "120000":
                if not path.is_symlink() or os.readlink(path).encode() != data:
                    raise ValueError("The exact official source alias differs: " + name)
            else:
                if path.read_bytes() != data:
                    path.write_bytes(data)
                    restored += 1
                path.chmod(0o755 if row["mode"] == "100755" else 0o644)
            rows.append(dict(path=name, bytes=len(data), git_blob_sha=row["sha"], mode=row["mode"],
                             sha256=hashlib.sha256(data).hexdigest()))
        process.stdin.close()
        if process.wait(timeout=30) != 0:
            raise ValueError("The real exact Git blob reader failed")
    finally:
        if process.poll() is None:
            process.terminate()
            process.wait(timeout=30)
    prior_receipt = AUDIT / "source-materialization.json"
    if prior_receipt.exists():
        retained = AUDIT / "source-materialization-archive-r2.json"
        if retained.exists():
            raise FileExistsError("Preserve the earlier source-acquisition receipt")
        retained.write_bytes(prior_receipt.read_bytes())
    destination = WORK / "runtime"
    if destination.exists():
        destination.rename(WORK / "archive-partial-r2")
    source.rename(destination)
    result = dict(
        format="uwvm-mono-runtime-exact-source-materialization-v1", status="PASS", commit=COMMIT,
        method="official-filtered-depth-one-sparse-git", source="https://github.com/dotnet/runtime.git",
        source_root=str(destination), actual_tree_sha=actual_tree, actual_cgroup=limits,
        physical_files_restored_to_exact_git_blob=restored,
        materialized_files=len(rows), materialized_bytes=sum(row["bytes"] for row in rows), files=rows,
        source_on_private_tmpfs=True, source_persisted_to_linux_root=False,
        compiler_or_guest_executed=False,
    )
    prior_receipt.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps({name: result[name] for name in (
        "status", "actual_tree_sha", "materialized_files", "materialized_bytes",
        "physical_files_restored_to_exact_git_blob",
    )}), flush=True)


if __name__ == "__main__":
    main()
