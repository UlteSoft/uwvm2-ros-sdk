#!/usr/bin/env python3
"""@brief Verify the shared interpreter source, LLVM and target build closures.

@details These Linux maintenance helpers are consumed by QuickJS, CPython and
Lua. They never execute application source, acquire ROS authority or publish an
engine. Receipts and diagnostics belong to the caller's private output folder.
"""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys
import time


LLVM_ARCHIVE_SHA256 = "8e97c5e26755459965d86361f970c9b7d6d2e7c44e953fc0faeb82621b157522"
VERSIONS = {"js": "2026-06-04", "python": "3.14.8", "lua": "5.4.8"}


def digest(path):
    """@brief Stream every original byte. @param path Regular file. @return SHA-256."""
    value = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for block in iter(lambda: stream.read(1048576), b""):
            value.update(block)
    return value.hexdigest()


def read(path):
    """@brief Decode ordinary metadata. @param path JSON file. @return JSON value."""
    return json.loads(Path(path).read_text())


def save(path, value):
    """@brief Persist evidence. @param path Private destination. @param value JSON data."""
    Path(path).write_text(json.dumps(value, indent=2) + "\n")


def child(root, relative):
    """@brief Confine a manifest member. @return An existing path inside root.

    @param root Explicit read-only input directory.
    @param relative Portable relative member; parent segments and symlinks escape refuse.
    """
    member = Path(relative)
    if member.is_absolute() or ".." in member.parts:
        raise ValueError("A source member must be confined: " + str(relative))
    result = (root / member).resolve(strict=True)
    if not result.is_relative_to(root):
        raise ValueError("A source member escaped its root: " + str(relative))
    return result


def checked(path, expected):
    """@brief Require a locked file identity. @return The actual size and SHA-256.

    @param path Complete existing input file.
    @param expected SHA-256 and optional byte length from the source/tool manifest.
    """
    actual = {"bytes": path.stat().st_size, "sha256": digest(path)}
    if actual["sha256"] != expected["sha256"] or (
        "bytes" in expected and actual["bytes"] != expected["bytes"]
    ):
        raise ValueError("A locked input changed: " + str(path))
    return actual


def limits():
    """@brief Require the actual unified Linux cgroup's 64 GiB and zero swap.

    @return The kernel's membership and limit values, retained in private evidence.
    @details Supports both Docker's private cgroup namespace and host membership.
    """
    if sys.platform != "linux":
        raise RuntimeError("Compile and execute only in the SSH Linux test container")
    membership = Path("/proc/self/cgroup").read_text().strip()
    groups = [row.split(":", 2)[2] for row in membership.splitlines() if row.startswith("0::")]
    if len(groups) != 1:
        raise RuntimeError("An actual unified cgroup is required")
    candidates = [Path("/sys/fs/cgroup"), Path("/sys/fs/cgroup") / groups[0].lstrip("/")]
    for root in candidates:
        if not (root / "memory.max").is_file():
            continue
        actual = {name: (root / name).read_text().strip()
                  for name in ("memory.max", "memory.swap.max")}
        if actual == {"memory.max": "68719476736", "memory.swap.max": "0"}:
            return {"membership": membership, "limits": actual}
    raise RuntimeError("The real cgroup must have memory.max=68719476736 and memory.swap.max=0")


def source_files(sdk, language):
    """@brief Verify the complete version-locked upstream and maintained sources.

    @param sdk Installed SDK source namespace, read-only during construction.
    @param language One shared language family, never a vendor identity.
    @return Sorted source inventory with portable file paths and exact identities.
    """
    manifest = read(sdk / "share/language" / language / "source-lock.json")
    if manifest["version"] != VERSIONS[language]:
        raise ValueError("A different interpreter version cannot enter this build")
    result = []
    for row in manifest["files"]:
        result.append({"path": row["path"], **checked(child(sdk, row["path"]), row)})
    return result


def snapshot(root, relative):
    """@brief Identify every regular target header/library member used by a profile.

    @param root Explicit SDK root.
    @param relative One selected profile directory or regular input file.
    @return Portable exact byte inventory, with duplicates resolved by the caller.
    """
    location = child(root, relative)
    files = [location] if location.is_file() else sorted(location.rglob("*"))
    return [{"path": path.relative_to(root).as_posix(), "bytes": path.stat().st_size,
             "sha256": digest(path)} for path in files if path.is_file()]


def toolchain(sdk, llvm, target_sdk, triple, profile):
    """@brief Verify one shared LLVM 23.1.4 extraction and actual target profile.

    @param sdk SDK containing the common pinned host LLVM manifest.
    @param llvm Read-only extracted Linux x86_64 LLVM host closure.
    @param target_sdk Read-only SDK containing target libraries and headers.
    @param triple Explicit wasm32-wasip1 or wasm64-wasip1 target.
    @param profile Explicit noeh or modern eh profile.
    @return Selected profile and complete host/target input identities.
    """
    host_path = sdk / "share/toolchains/host/linux-x86_64/llvm23.json"
    host = read(host_path)
    if host["version"] != "23.1.4" or host["sha256"] != LLVM_ARCHIVE_SHA256:
        raise ValueError("Use the shared locked LLVM 23.1.4 bundle")
    for row in host["files"]:
        path = child(llvm, row["path"])
        checked(path, row)
        if row.get("executable") and not os.access(path, os.X_OK):
            raise ValueError("A locked native tool is not executable")
    for row in host["aliases"]:
        alias = llvm / row["path"]
        if not alias.is_symlink() or alias.resolve(strict=True) != child(llvm, row["target"]):
            raise ValueError("A native tool alias differs from the shared lock")
    target_path = target_sdk / "share/wasm/toolchains.json"
    target = read(target_path)
    selected = [item for item in target["targets"]
                if item["triple"] == triple and item["profile"] == profile]
    if len(selected) != 1 or selected[0]["llvm_major"] != 23:
        raise ValueError("One exact LLVM 23 target profile is required")
    selected = selected[0]
    if bool(selected["memory64"]) != triple.startswith("wasm64-"):
        raise ValueError("The selected target width differs from the requested triple")
    for name, row in selected["artifacts"].items():
        checked(child(target_sdk, name), row)
    files = {}
    for name in ("sysroot", "include_dir", "resource_dir"):
        for row in snapshot(target_sdk, selected[name]):
            files[row["path"]] = row
    return selected, {
        "host_manifest_sha256": digest(host_path),
        "target_manifest_sha256": digest(target_path),
        "host_files": host["files"],
        "target_files": [files[name] for name in sorted(files)],
    }


def flags(llvm, target_sdk, profile, mappings):
    """@brief Build explicit compiler flags with stable logical source filenames.

    @param llvm Verified host extraction.
    @param target_sdk Verified target SDK.
    @param profile Exact selected target metadata.
    @param mappings Physical source/build/input roots to public logical names.
    @return Native compiler argument tokens; no shell evaluation is involved.
    """
    result = ["--target=" + profile["triple"], "-no-canonical-prefixes", "-fintegrated-cc1",
              "--sysroot=" + str(target_sdk / profile["sysroot"]),
              "-isystem", str(target_sdk / profile["include_dir"]),
              "-resource-dir=" + str(target_sdk / profile["resource_dir"]),
              "-B" + str(target_sdk / profile["lib_dir"]),
              "-L" + str(target_sdk / profile["lib_dir"]),
              "-fuse-ld=" + str(llvm / "bin/wasm-ld"), "-O2", "-g0"]
    # Put general roots first: Clang applies the final matching prefix map.
    for physical, logical in mappings:
        for kind in ("file", "macro", "debug"):
            result.append("-f" + kind + "-prefix-map=" + str(physical) + "=" + logical)
    return result


class Build:
    """@brief Own a new maintenance output directory and preserve each real failure."""

    def __init__(self, output, cache, inputs, language):
        """@brief Refuse overwritten evidence or reused caches before creating either.

        @param output New private evidence and artifact directory.
        @param cache New private intermediate directory.
        @param inputs Complete read-only input roots to protect from output overlap.
        @param language Shared interpreter identity for this attempt.
        """
        cgroup = limits()
        for destination in (output, cache):
            if destination.exists() or destination.is_symlink():
                raise ValueError("Use a new private path and retain previous attempts: " + str(destination))
            if any(destination.is_relative_to(root) for root in inputs):
                raise ValueError("Outputs must be outside all read-only source/tool roots")
        output.mkdir(parents=True)
        cache.mkdir(parents=True)
        self.output, self.cache = output, cache
        self.report = {"format": "uwvm-shared-interpreter-construction-v1", "status": "FAIL",
                       "language": language, "cgroup": cgroup, "commands": [],
                       "cached_core_objects": 0, "native_ros_executed": False,
                       "abi_descriptor_sha256": digest(inputs[0] / "share/abi/abi-v1.json")}
        self.environment = {"PATH": "/usr/bin:/bin", "LC_ALL": "C", "LANG": "C", "TZ": "UTC",
                            "SOURCE_DATE_EPOCH": "1792635234", "PYTHONDONTWRITEBYTECODE": "1",
                            "PYTHONHASHSEED": "0", "PYTHONNOUSERSITE": "1", "TMPDIR": str(cache)}
        self.save()

    def save(self):
        """@brief Save the complete attempt receipt, including incomplete commands."""
        save(self.output / "construction.json", self.report)

    def run(self, name, argv, cwd=None, extra=None, timeout=3600):
        """@brief Execute one actual bounded maintenance step and save diagnostics.

        @param name Unique step basename, used only inside the private output.
        @param argv Explicit executable and arguments.
        @param cwd Private working directory; defaults to cache.
        @param extra Explicit additional environment variables without user secrets.
        @param timeout Maximum seconds for this genuine compilation step.
        @return Complete stdout/stderr bytes on success; failure raises after saving logs.
        """
        log = self.output / (name + ".log")
        step = {"name": name, "argv": list(map(str, argv)), "cwd": str(cwd or self.cache),
                "exit_code": None, "log": log.name}
        self.report["commands"].append(step)
        self.save()
        began = time.monotonic()
        environment = dict(self.environment, **(extra or {}))
        try:
            with log.open("xb") as stream:
                process = subprocess.run(step["argv"], cwd=cwd or self.cache, env=environment,
                                         stdout=stream, stderr=subprocess.STDOUT, timeout=timeout)
            step["exit_code"] = process.returncode
        except BaseException as error:
            step["error"] = {"type": type(error).__name__, "message": str(error)}
            raise
        finally:
            step["elapsed_seconds"] = time.monotonic() - began
            if log.exists():
                step["log_sha256"] = digest(log)
            self.save()
        if process.returncode:
            raise RuntimeError("A real maintenance command failed; retain " + str(log))
        return log.read_bytes()

    def artifact(self, path, language, backend, target, implementation, capacity, source_lock):
        """@brief Inspect portability and write portable runtime metadata beside new bytes.

        @param path Fresh genuine engine output, never an old engine input.
        @param language Public language identifier.
        @param backend Exact compiled import family.
        @param target Actual compiler target triple.
        @param implementation Real upstream engine name.
        @param capacity Reserved application byte bound.
        @param source_lock Exact verified source inventory SHA-256.
        @return Portable new engine identity; runtime execution is explicitly separate.
        """
        raw = path.read_bytes()
        from wasm import memory_profile
        memory = memory_profile(raw)
        if memory["address_bits"] != (64 if target.startswith("wasm64-") else 32):
            raise ValueError("The actual engine memory width differs from the compiler target")
        # Stable paths are introduced by compilation, never by binary replacement.
        forbidden = (b"/Users/", b"/home/", b"/host/home/")
        for value in forbidden:
            if value in raw:
                raise ValueError("A rebuilt engine still contains a personal build path")
        marker = b"UWVM-LUA-APP-v1!" if language == "lua" else b"UWVM-SRC-APP-v1!"
        if raw[:8] != b"\0asm\1\0\0\0" or raw.count(marker) != 1:
            raise ValueError("One genuine core-Wasm source slot is required")
        start = raw.index(marker) + len(marker)
        if raw[start:start + 4 + capacity] != bytes(4 + capacity) or raw[start + 4 + capacity] != 167:
            raise ValueError("The complete empty source slot and guard must match")
        family = "python" if language == "py" else language
        value = {"format": "uwvm-shared-interpreter-v2", "language": language,
                 "implementation": implementation, "version": VERSIONS[family], "target": target,
                 "ros_backend": backend, "filename": path.name, "bytes": len(raw),
                 "sha256": digest(path), "source_lock_sha256": source_lock,
                 "application_capacity": capacity, "application_marker": marker.decode(),
                 "compiler": "LLVM 23.1.4", "threads": False, "memory": memory,
                 "raw_abi_functions": 38 if backend == "ros1" else 43,
                 "raw_abi_descriptor_sha256": self.report["abi_descriptor_sha256"],
                 "exceptions": "modern" if language == "lua" else "none",
                 "wasm_features": (["memory64"] if memory["address_bits"] == 64 else [])
                    + (["table64"] if any(t["address_bits"] == 64 for t in memory["tables"]) else [])
                    + (["exceptions"] if language == "lua" else []),
                 "native_ros_qualification": "separate platform acceptance required"}
        save(path.parent / "runtime.json", value)
        return value
