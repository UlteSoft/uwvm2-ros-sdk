#!/usr/bin/env python3
"""@brief Retain original LLVM host tools and their matching Linux ELF runtime.

@details The output is an unpacked, auditable input for the native Xmake cache packer.
Each public tool name invokes a freestanding static launcher. Original release
executables remain byte-for-byte intact in original/bin. The native launcher
also gives Clang's wasm-ld child the same matching loader and runtime libraries.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys

from build_llvm23_sysroots import cgroup_limits
from package_llvm23_host import TOOLS


def digest(path: Path) -> str:
    """@brief Hash one retained release file, launcher or metadata artifact.

    @param path Existing readable file, opened only for this calculation.
    @return Lowercase SHA256 digest of all file bytes.
    """
    with path.open("rb") as source:
        return hashlib.file_digest(source, "sha256").hexdigest()


def main() -> None:
    """@brief Construct and execute a relocatable native compiler dependency closure.

    @details Only Linux x86_64 LLVM 23.1.4 is admitted. Original release tools
    remain unchanged; a freestanding launcher selects the retained ELF loader.
    Every resolved shared library must stay inside the retained runtime. The
    result records licenses, package versions, file hashes and actual executions.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--toolchain", type=Path, required=True)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    if sys.platform != "linux":
        parser.error("host closure preparation and execution are authorized on Linux only")
    limits = cgroup_limits()
    source, sdk, output = (path.resolve() for path in (args.toolchain, args.sdk, args.output))
    if output.exists():
        parser.error("output must be a new directory")
    env = dict(os.environ, LD_LIBRARY_PATH="", LC_ALL="C")
    version = subprocess.check_output([str(source / "bin/clang"), "--version"], text=True, env=env)
    if not re.search(r"clang version 23\.1\.4\b", version):
        parser.error("this closure is pinned to the official LLVM 23.1.4 release")
    output.mkdir(parents=True)
    (output / "bin").mkdir()
    (output / "original/bin").mkdir(parents=True)
    for name in TOOLS:
        path = source / "bin" / name
        if path.is_symlink():
            target = path.readlink()
            if target.is_absolute() or ".." in target.parts:
                raise RuntimeError("nonlocal original tool symlink: " + str(path))
            (output / "original/bin" / name).symlink_to(target)
        else:
            shutil.copy2(path, output / "original/bin" / name)
    shutil.copytree(source / "lib/clang/23/include", output / "lib/clang/23/include", symlinks=True)
    libraries: dict[str, Path] = {}
    binary_names = sorted({(source / "bin" / name).resolve().name for name in TOOLS})
    for name in binary_names:
        listing = subprocess.check_output(["ldd", str(source / "bin" / name)], text=True, env=env)
        if "not found" in listing:
            raise RuntimeError("unresolved host dependency: " + listing)
        for line in listing.splitlines():
            match = re.search(r"\s*(\S+) => (/\S+) \(", line)
            if match:
                libraries[match.group(1)] = Path(match.group(2)).resolve()
            else:
                loader = re.search(r"^\s*(/\S*/ld-linux-x86-64\.so\.2) \(", line)
                if loader:
                    libraries["ld-linux-x86-64.so.2"] = Path(loader.group(1)).resolve()
    runtime = output / "lib/host-runtime"
    runtime.mkdir()
    for soname, path in sorted(libraries.items()):
        shutil.copy2(path, runtime / soname)
    if "ld-linux-x86-64.so.2" not in libraries:
        raise RuntimeError("the matching ELF loader was not resolved")
    metadata = output / "share/uwvm"
    metadata.mkdir(parents=True)
    shutil.copy2(sdk / "share/wasm/licenses/llvm-project/LICENSE.TXT", metadata / "LICENSE-LLVM.txt")
    packages = []
    for name in ("libc6", "libgcc-s1", "libstdc++6", "zlib1g"):
        info = subprocess.check_output(
            ["dpkg-query", "-W", "-f=${binary:Package}\t${Version}\t${source:Package}\t${source:Version}", name],
            text=True,
        ).split("\t")
        copyright_path = Path("/usr/share/doc") / name / "copyright"
        shutil.copy2(copyright_path, metadata / ("LICENSE-" + name + ".txt"))
        packages.append(dict(zip(("binary_package", "version", "source_package", "source_version"), info)))
    loader_relative, library_relative = "lib/host-runtime/ld-linux-x86-64.so.2", "lib/host-runtime"
    executions, resolutions = {}, {}
    loader = str(output / loader_relative)
    launcher_source = sdk / "src/wasm/host/llvm23_host_launcher.c"
    launcher = output / "bin/llvm23-launcher"
    linker_alias = output.parent / ".llvm23-native-launcher-bootstrap/ld.lld"
    linker_alias.parent.mkdir(parents=True, exist_ok=True)
    if not linker_alias.exists():
        linker_alias.symlink_to(source / "bin/lld")
    if linker_alias.resolve() != (source / "bin/lld").resolve():
        raise RuntimeError("native launcher bootstrap linker does not match the pinned toolchain")
    build_command = [
        str(source / "bin/clang"),
        "--target=x86_64-unknown-linux-gnu",
        "-std=c17",
        "-O2",
        "-Wall",
        "-Wextra",
        "-Werror",
        "-ffreestanding",
        "-fno-builtin",
        "-fno-stack-protector",
        "-fno-pie",
        "-fno-ident",
        "-nostdlib",
        "-static",
        "--ld-path=" + str(linker_alias),
        "-Wl,--build-id=sha1,-z,noexecstack",
        str(launcher_source),
        "-o",
        str(launcher),
    ]
    build = subprocess.run(build_command, env=env, capture_output=True, text=True, timeout=60)
    if build.returncode:
        raise RuntimeError("native launcher build failed: " + build.stderr)
    launcher_headers = subprocess.check_output(
        ["readelf", "--program-headers", "--dynamic", str(launcher)], text=True, env=env
    )
    if "INTERP" in launcher_headers or "(NEEDED)" in launcher_headers:
        raise RuntimeError("the launcher unexpectedly depends on a host loader or shared library")
    shutil.copy2(launcher_source, metadata / launcher_source.name)
    for name in TOOLS:
        (output / "bin" / name).symlink_to("llvm23-launcher")
    for name in TOOLS:
        relative = "original/bin/" + name
        prefix = [loader, "--inhibit-cache", "--library-path", str(runtime), "--argv0", str(output / relative)]
        result = subprocess.run(
            [str(output / "bin" / name), "--version"], env=env, capture_output=True, text=True, timeout=30
        )
        # The generic lld driver deliberately requires a linker flavor.
        if name == "lld" and result.returncode != 0:
            result = subprocess.run(
                [str(output / "bin" / name), "-flavor", "wasm", "--version"],
                env=env,
                capture_output=True,
                text=True,
                timeout=30,
            )
        if result.returncode != 0:
            raise RuntimeError("bundled-loader execution failed for " + name + ": " + result.stderr)
        executions[name] = {"exit_code": result.returncode, "stdout": result.stdout, "stderr": result.stderr}
        listing = subprocess.check_output(
            [loader, "--inhibit-cache", "--library-path", str(runtime), "--list", str(output / relative)],
            text=True,
            env=env,
        )
        resolved = re.findall(r"=> (/\S+) \(", listing)
        if not resolved or any(not Path(path).is_relative_to(runtime) for path in resolved):
            raise RuntimeError("dependency escaped the retained runtime: " + listing)
        resolutions[name] = listing
    targets = subprocess.check_output([str(output / "bin/clang"), "--print-targets"], text=True, env=env)
    if not all(re.search(r"^\s+" + arch + r"\s+-", targets, re.M) for arch in ("wasm32", "wasm64")):
        raise RuntimeError("retained compiler lacks a WebAssembly backend")
    inventory = {}
    for path in sorted(output.rglob("*")):
        relative = str(path.relative_to(output))
        if path.is_symlink():
            inventory[relative] = {"symlink": path.readlink().as_posix()}
        elif path.is_file():
            inventory[relative] = {
                "bytes": path.stat().st_size,
                "sha256": digest(path),
                "executable": bool(path.stat().st_mode & 0o111),
            }
    manifest = {
        "schema_version": 1,
        "llvm_major": 23,
        "version": "23.1.4",
        "host_os": "linux",
        "host_arch": "x86_64",
        "directory": output.name,
        "source_artifact": json.loads((sdk / "share/wasm/llvm23-compiler-artifact.json").read_text()),
        "cgroup": limits,
        "tools": {name: "bin/" + name for name in TOOLS},
        "compiler": "bin/clang",
        "cxx_compiler": "bin/clang++",
        "linker": "bin/wasm-ld",
        "original_tools": {name: "original/bin/" + name for name in TOOLS},
        "resource_dir": "lib/clang/23",
        "loader": loader_relative,
        "library_path": library_relative,
        "argv_prefix": [
            "{root}/" + loader_relative,
            "--inhibit-cache",
            "--library-path",
            "{root}/" + library_relative,
            "--argv0",
            "{root}/{tool}",
        ],
        "argv_executable": "{root}/{tool}",
        "native_runtime_packages": packages,
        "native_launcher": {
            "executable": "bin/llvm23-launcher",
            "static": True,
            "libc_dependency": False,
            "source": "share/uwvm/llvm23_host_launcher.c",
            "source_sha256": digest(launcher_source),
            "sha256": digest(launcher),
            "build_command": build_command,
            "build_stdout": build.stdout,
            "build_stderr": build.stderr,
            "readelf": launcher_headers,
        },
        "native_runtime_libraries": {
            name: {"source_path": str(path), "sha256": digest(path)} for name, path in sorted(libraries.items())
        },
        "environment": {"LD_LIBRARY_PATH": ""},
        "compiler_child_policy": {
            "compile_flags": ["-no-canonical-prefixes", "-fintegrated-cc1"],
            "driver_link_flags": ["-fuse-ld={root}/bin/wasm-ld"],
            "driver_link_children_use_bundled_loader_automatically": True,
        },
        "version_executions": executions,
        "loader_resolutions": resolutions,
        "wasm_backends": targets,
        "files": inventory,
        "source_cache_policy": "corresponding upstream/runtime sources remain outside the SDK",
        "published": False,
    }
    (metadata / "llvm23-host-closure.json").write_text(json.dumps(manifest, indent=2) + "\n")
    receipt = {
        key: value
        for key, value in manifest.items()
        if key not in ("files", "version_executions", "loader_resolutions", "wasm_backends")
    }
    receipt.update(
        {
            "manifest": "share/uwvm/llvm23-host-closure.json",
            "manifest_sha256": digest(metadata / "llvm23-host-closure.json"),
            "file_count": len(inventory),
            "retained_bytes": sum(value.get("bytes", 0) for value in inventory.values()),
            "bundled_loader_execution_tested": True,
            "bundled_dependency_resolution_tested": True,
        }
    )
    output.with_name(output.name + ".json").write_text(json.dumps(receipt, indent=2) + "\n")
    print(json.dumps(receipt, indent=2))


if __name__ == "__main__":
    main()
