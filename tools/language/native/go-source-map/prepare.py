#!/usr/bin/env python3
"""Build debug-only Go tools through a source overlay of the installed closure.

No download, package installation or modification of GOROOT is permitted.
The emitted map describes actual final Wasm byte offsets, not Go virtual PCs.
"""
from __future__ import annotations
import argparse
import fcntl
import hashlib
import json
import os
from pathlib import Path
import shlex
import shutil
import subprocess
import sys


def digest(path: Path) -> str:
    with path.open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def checked_relative(name: str) -> Path:
    relative = Path(name)
    if relative.is_absolute() or not relative.parts or any(p in ("", ".", "..") for p in name.split("/")):
        raise ValueError("Invalid compiler overlay path")
    return relative


def private_directory(path: Path) -> None:
    if path.is_symlink():
        raise ValueError("Compiler tools cache cannot be a symlink")
    path.mkdir(parents=True, exist_ok=True, mode=0o700)
    stat = path.stat()
    if stat.st_uid != os.getuid() or stat.st_mode & 0o022:
        raise ValueError("Compiler tools cache must be private to its host owner")


def prepare(goroot: Path, cache: Path) -> dict[str, str]:
    here = Path(__file__).resolve().parent
    manifest_path = here / "manifest.json"
    patch = here / "go1.24.2.patch"
    manifest = json.loads(manifest_path.read_text())
    goroot = goroot.resolve(strict=True)
    go = goroot / "bin/go"
    for name, hashes in manifest["files"].items():
        original = goroot / "src" / checked_relative(name)
        expected = hashes["before"]
        if (expected is None and original.exists()) or (expected is not None and digest(original) != expected):
            raise ValueError("Installed Go source differs from the pinned debug overlay: " + name)
    env = dict(os.environ)
    env.update(GOROOT=str(goroot), GOENV="off", GOTOOLCHAIN="local", GOPROXY="off",
               GOSUMDB="off", GOWORK="off", CGO_ENABLED="0", GOFLAGS="-p=2", GOMAXPROCS="2")
    version = subprocess.check_output([str(go), "version"], env=env, text=True).strip()
    if not version.startswith("go version " + manifest["go_version"] + " "):
        raise ValueError("Installed Go version does not match the debug overlay")
    host = subprocess.check_output([str(go), "env", "GOHOSTOS", "GOHOSTARCH"], env=env, text=True).splitlines()
    if len(host) != 2 or host[0] != "linux":
        raise ValueError("This pinned compiler overlay requires its Linux host closure")
    env.update(GOOS=host[0], GOARCH=host[1])
    key = hashlib.sha256((str(goroot) + version + digest(patch) + digest(manifest_path)).encode()).hexdigest()
    private_directory(cache)
    stage = cache / key
    private_directory(stage)
    with (stage / "build.lock").open("a") as lock:
        fcntl.flock(lock, fcntl.LOCK_EX)
        receipt_path = stage / "receipt.json"
        if receipt_path.exists():
            receipt = json.loads(receipt_path.read_text())
            if (receipt["key"] == key and receipt.get("tests_passed") is True
                    and set(receipt["artifacts"]) == {"link", "compile", "toolexec.py"}
                    and all(digest(stage / name) == value for name, value in receipt["artifacts"].items())):
                return {"toolExec": shlex.join([sys.executable, str(stage / "toolexec.py")]), "receipt": str(receipt_path)}
        source = stage / "source"
        if source.exists():
            shutil.rmtree(source)
        source.mkdir(mode=0o700)
        replacements = {}
        for name, hashes in manifest["files"].items():
            relative = checked_relative(name)
            destination = source / relative
            destination.parent.mkdir(parents=True, exist_ok=True)
            if hashes["before"] is not None:
                shutil.copyfile(goroot / "src" / relative, destination)
            replacements[str(goroot / "src" / relative)] = str(destination)
        with (stage / "patch.log").open("w") as log:
            subprocess.run(["patch", "--batch", "--fuzz=0", "-p1", "-d", str(source), "-i", str(patch)],
                           check=True, stdout=log, stderr=subprocess.STDOUT)
        for name, hashes in manifest["files"].items():
            if digest(source / name) != hashes["after"]:
                raise ValueError("Patched compiler source does not match the recorded output: " + name)
        overlay = stage / "overlay.json"
        overlay.write_text(json.dumps({"Replace": replacements}, indent=2) + "\n")
        env.update(GOCACHE=str(stage / "host-cache"), GOPATH=str(stage / "host-path"))
        for tool in ("link", "compile"):
            with (stage / (tool + ".log")).open("w") as log:
                subprocess.run([str(go), "build", "-overlay=" + str(overlay), "-o", str(stage / tool), "cmd/" + tool],
                               cwd=stage, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
        with (stage / "tests.log").open("w") as log:
            subprocess.run([str(go), "test", "-overlay=" + str(overlay), "cmd/link/internal/wasm",
                            "-run", "TestSource(RelocationByteOffsets|MapExactCoordinatesAndBoundaries)", "-count=1"],
                           cwd=stage, env=env, stdout=log, stderr=subprocess.STDOUT, check=True)
        wrapper = stage / "toolexec.py"
        wrapper.write_text("import os, sys\nfrom pathlib import Path\n"
                           "tool = Path(sys.argv[1])\n"
                           "selected = str(Path(__file__).parent / tool.name) if tool.name in ('compile', 'link') else str(tool)\n"
                           "os.execv(selected, [selected, *sys.argv[2:]])\n")
        artifacts = {name: digest(stage / name) for name in ("link", "compile", "toolexec.py")}
        receipt = {"key": key, "go_version": version, "installed_goroot": str(goroot),
                   "patch_sha256": digest(patch), "artifacts": artifacts, "tests_passed": True}
        receipt_path.write_text(json.dumps(receipt, indent=2) + "\n")
        return {"toolExec": shlex.join([sys.executable, str(wrapper)]), "receipt": str(receipt_path)}


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--goroot", type=Path, required=True)
    parser.add_argument("--cache", type=Path, required=True)
    args = parser.parse_args()
    print(json.dumps(prepare(args.goroot, args.cache.absolute())))


if __name__ == "__main__":
    main()
