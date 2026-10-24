# @file engine_source.py
# @brief Provide the complete shared language engine_source.py source contract.
# @details Complete original fields, scalar widths, canonical quotas and interface roles are retained. Local encoding grants no ROS authority; invalid or partial wire is rejected before a value is exposed.
"""@brief Verify and materialize a complete reviewed Asyncify engine source closure.

@details Maintenance runs only on SSH Linux in a real 64 GiB, zero-swap cgroup.
Input archives contain ordinary files with exact byte identities. No cached core
object is admitted. Installed source and target dependencies remain read-only.
"""

import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys
import tarfile


def sha(path):
    """@brief Stream an exact source, tool or artifact identity."""
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def read(path):
    """@brief Decode maintained data without evaluating its contents."""
    return json.loads(path.read_text())


def checked(path, row):
    """@brief Reject a changed locked file before any compiler is started."""
    assert path.is_file() and sha(path) == row["sha256"], str(path)
    if "bytes" in row:
        assert path.stat().st_size == row["bytes"], str(path)


def limits():
    """@brief Read actual process cgroup limits through the shared host cgroup namespace."""
    assert sys.platform == "linux", "Compile only on SSH Linux"
    entries = Path("/proc/self/cgroup").read_text().splitlines()
    entry = next(line.split("::", 1)[1] for line in entries if line.startswith("0::"))
    assert ".." not in Path(entry).parts, "The launcher must retain the host cgroup namespace"
    group = Path("/sys/fs/cgroup") / entry.lstrip("/")
    value = {name: (group / name).read_text().strip() for name in ("memory.max", "memory.swap.max")}
    assert value == {"memory.max": "68719476736", "memory.swap.max": "0"}, value
    return dict(path=entry, **value)


def tools(args):
    """@brief Identify the actual native maintenance executables and their loader libraries."""
    selected = {
        Path("/usr/bin/python3"),
        args.node,
        Path("/usr/bin/make"),
        Path("/bin/sh"),
        args.wasm_opt,
    }
    selected.update(args.llvm_bin / name for name in ("clang", "wasm-ld", "llvm-ar", "llvm-ranlib", "llvm-nm"))
    if getattr(args, "baseruby", None):
        selected.add(args.baseruby.resolve(strict=True))
    selected.update(
        Path(shutil.which(name))
        for name in (
            "sed",
            "grep",
            "awk",
            "sort",
            "cat",
            "rm",
            "mkdir",
            "dirname",
            "expr",
            "tr",
            "cut",
            "head",
            "tail",
            "ln",
            "chmod",
            "touch",
            "uname",
        )
    )
    for path in list(selected):
        with path.open("rb") as stream:
            header = stream.read(4)
        if header != b"\x7fELF":
            continue
        result = subprocess.run(["/usr/bin/ldd", str(path)], capture_output=True, text=True, check=False)
        for token in result.stdout.split():
            if token.startswith("/") and Path(token).is_file():
                selected.add(Path(token))
    selected.update(path for path in args.wasm_opt.parent.parent.rglob("*") if path.is_file())
    if getattr(args, "baseruby", None):
        selected.update(path for path in args.baseruby.parent.parent.rglob("*") if path.is_file())
    ruby = Path("/usr/lib/ruby")
    if ruby.is_dir():
        selected.update(path for path in ruby.rglob("*") if path.is_file())
    return [
        dict(path=str(path), resolved=str(path.resolve()), bytes=path.stat().st_size, sha256=sha(path))
        for path in sorted(selected)
    ]


def verify_profile(args, language):
    """@brief Verify all support, sysroot and source-archive inputs for one producer."""
    sdk = args.sdk_profile.resolve(strict=True)
    lock_path = sdk / f"share/language/{language}/source-lock.json"
    lock = read(lock_path)
    checked(sdk / lock["archive"]["path"], lock["archive"])
    for row in lock.get("extra_support", []):
        checked(sdk / row["path"], row)
    abi = lock["canonical_abi"]
    checked(args.qualified_sdk / abi["path"], abi)
    for row in lock["canonical_abi_headers"]:
        checked(args.qualified_sdk / row["path"], row)
    from generate_abi import render
    canonical = read(args.qualified_sdk / abi["path"])
    expected_dispatch = render(canonical, abi["sha256"])
    if (sdk / "src/language/common/asyncify/abi_dispatch.h").read_text() != expected_dispatch:
        raise ValueError("The shared dispatcher must exactly match the one canonical ABI emitter")
    for name in ("support_manifest", "target_inventory"):
        checked(sdk / lock[name]["path"], lock[name])
    support = read(sdk / lock["support_manifest"]["path"])
    for row in support["files"]:
        checked(sdk / row["path"], row)
    target = read(sdk / lock["target_inventory"]["path"])
    checked(args.qualified_sdk / "share/wasm/toolchains.json", target["manifest"])
    for row in target["files"]:
        checked(args.qualified_sdk / row["path"], row)
    return lock, dict(
        source_lock_sha256=sha(lock_path),
        support_files=len(support["files"]),
        source_files=len(lock["files"]),
        target_files=len(target["files"]),
        canonical_abi_sha256=abi["sha256"],
    )


def prepare(args, language):
    """@brief Require an empty cache and unpack only the exact declared ordinary source files."""
    cgroup = limits()
    args.sdk_profile = args.sdk_profile.resolve(strict=True)
    args.qualified_sdk = args.qualified_sdk.resolve(strict=True)
    args.llvm_bin = args.llvm_bin.resolve(strict=True)
    args.wasm_opt = args.wasm_opt.resolve(strict=True)
    args.output = args.output.resolve()
    args.evidence = args.evidence.resolve()
    cache = args.cache.resolve()
    if cache.exists() and any(cache.iterdir()):
        raise ValueError("A full source build requires a completely empty private cache")
    if args.output.exists() or (args.evidence.exists() and any(args.evidence.iterdir())):
        raise ValueError("Use new artifact and evidence destinations")
    for destination in (cache, args.output, args.evidence):
        assert not any(
            destination.is_relative_to(p) for p in (args.sdk_profile, args.qualified_sdk, args.llvm_bin)
        ), str(destination)
    cache.mkdir(parents=True, exist_ok=True)
    args.evidence.mkdir(parents=True, exist_ok=True)
    lock, summary = verify_profile(args, language)
    source = cache / "source"
    source.mkdir()
    expected = {row["path"]: row for row in lock["files"]}
    seen = set()
    with tarfile.open(args.sdk_profile / lock["archive"]["path"], "r:xz") as archive:
        for item in archive:
            assert item.isfile() and item.name in expected and item.name not in seen, item.name
            relative = Path(item.name)
            assert not relative.is_absolute() and ".." not in relative.parts
            row = expected[item.name]
            assert item.size == row["bytes"] and item.mode == row["mode"] and item.mtime == row["mtime"]
            destination = source / relative
            destination.parent.mkdir(parents=True, exist_ok=True)
            with archive.extractfile(item) as original, destination.open("xb") as output:
                shutil.copyfileobj(original, output)
            checked(destination, row)
            destination.chmod(item.mode & 0o777)
            os.utime(destination, (item.mtime, item.mtime))
            seen.add(item.name)
    assert seen == set(expected)
    tool_inputs = tools(args)
    locked = dict(
        cgroup=cgroup,
        closure=summary,
        native_tools=tool_inputs,
        source_archive=lock["archive"],
        reproducibility=lock["reproducibility"],
        original_artifact=lock["original_artifact"],
        empty_cache=True,
        cached_core_objects_used=0,
        source_files_extracted=len(seen),
    )
    (args.evidence / "construction-inputs.json").write_text(json.dumps(locked, indent=2) + "\n")
    return cache, source, locked


def finish(args, language, locked, report):
    """@brief Check unchanged construction inputs and distinguish build success from artifact identity."""
    _, summary = verify_profile(args, language)
    assert summary == locked["closure"]
    assert tools(args) == locked["native_tools"], "A native maintenance tool changed during construction"
    raw = args.output.read_bytes()
    assert raw[:8] == b"\0asm\1\0\0\0"
    from embedded_wasm import validate
    descriptor = read(args.qualified_sdk / "share/abi/abi-v1.json")
    imports, _ = validate(raw, descriptor, args.backend, expected_maximum_pages=16384)
    ros_imports = [entry for entry in imports if entry["module"] != "wasi_snapshot_preview1"]
    marker = b"UWVM-SRC-APP-v1!"
    assert raw.count(marker) == 1
    at = raw.index(marker) + len(marker)
    assert raw[at : at + 4194308] == bytes(4194308) and raw[at + 4194308] == 167
    current = dict(bytes=len(raw), sha256=sha(args.output))
    report.update(
        status="PASS",
        cold_source_build=True,
        cached_core_objects_used=0,
        source_files_extracted=locked["source_files_extracted"],
        construction_inputs_sha256=sha(args.evidence / "construction-inputs.json"),
        producer_sha256=sha(args.sdk_profile / "tools/language" / language / "build.py"),
        source_helper_sha256=sha(Path(__file__)),
        reproducibility=locked["reproducibility"],
        original_artifact=locked["original_artifact"],
        identity_status=(
            "MATCHES_ORIGINAL_QUALIFIED_ARTIFACT"
            if current == locked["original_artifact"]
            else "NEW_ARTIFACT_REQUIRES_QUALIFICATION"
        ),
        cgroup=locked["cgroup"],
        published_engine_replaced=False,
        guest_executions=0,
        backend=args.backend,
        abi_profile="complete-ros-v1",
        canonical_abi_sha256=sha(args.qualified_sdk / "share/abi/abi-v1.json"),
        ros_import_count=len(ros_imports),
        ros_imports=ros_imports,
    )
