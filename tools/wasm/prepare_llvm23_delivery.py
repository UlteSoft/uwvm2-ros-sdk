#!/usr/bin/env python3
"""@brief Prepare a reviewed-path SDK bundle after acceptance and reproducibility pass."""

from __future__ import annotations

import argparse
import gzip
import hashlib
import json
from pathlib import Path
import tarfile


def main() -> None:
    """@brief Package reviewed SDK paths after three independent acceptance checks.

    @details Runtime, relocation and reproducibility reports must all pass. The
    relocated acceptance modules and independently rebuilt target archives must
    match the qualified bytes before manifests or delivery archives are written.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--reproduction-work", type=Path, required=True)
    parser.add_argument("--host-receipt", type=Path, required=True)
    parser.add_argument("--host-closure-receipt", type=Path)
    parser.add_argument("--host-closure-validation", type=Path)
    parser.add_argument("--relocation-report", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    sdk = args.sdk.resolve()
    manifest_path = sdk / "share/wasm/toolchains.json"
    manifest = json.loads(manifest_path.read_text())
    acceptance = json.loads((sdk / "share/wasm/llvm23-validation.json").read_text())
    reproducibility = json.loads((args.reproduction_work / "reproducibility.json").read_text())
    rebuilt = json.loads((args.reproduction_work / "reproduced-sdk/share/wasm/toolchains.json").read_text())
    relocation = json.loads(args.relocation_report.read_text())
    if not acceptance["passed"] or not reproducibility["passed"] or not relocation["passed"]:
        parser.error("acceptance, reproducibility, and relocation must pass before preparing delivery")

    def modules(report: dict) -> dict:
        """@brief Index actual acceptance-module hashes by their complete target identity.

        @param report Completed runtime acceptance or relocation report.
        @return Mapping keyed by target triple, profile and fixture language.
        """
        return {
            (target["triple"], target["profile"], item["language"]): item["abi"]["sha256"]
            for target in report["targets"]
            for item in target["modules"]
        }

    if modules(acceptance) != modules(relocation):
        parser.error("the relocated compiler/SDK changed acceptance module bytes")
    for field in ("source_adapters", "unqualified_features"):
        manifest[field] = rebuilt[field]
    if "C setjmp/longjmp" not in manifest["unqualified_features"]:
        manifest["unqualified_features"].append("C setjmp/longjmp")
    for entry in manifest["targets"]:
        other = next(
            value
            for value in rebuilt["targets"]
            if (value["triple"], value["profile"]) == (entry["triple"], entry["profile"])
        )
        if (
            not entry["tested"]
            or entry["artifacts"] != other["artifacts"]
            or entry["builtins_sha256"] != other["builtins_sha256"]
        ):
            parser.error("the accepted closure does not match its independent rebuild")
        entry["validation_scope"] = other["validation_scope"]
        entry["reproducible"] = True
        entry["relocation_tested"] = True
    manifest["reproducibility_report"] = "share/wasm/llvm23-reproducibility.json"
    manifest["relocation_report"] = "share/wasm/llvm23-relocation-validation.json"
    manifest_path.write_text(json.dumps(manifest, indent=2) + "\n")
    (sdk / manifest["relocation_report"]).write_text(json.dumps(relocation, indent=2) + "\n")
    host = json.loads(args.host_receipt.read_text())
    compiler = host["source_artifact"]
    bootstrap = {
        "schema_version": 1,
        "hosts": [
            {
                "os": "linux",
                "arch": "x86_64",
                "llvm_major": 23,
                "version": "23.1.4",
                "upstream": {
                    "url": compiler["download_url"],
                    "sha256": compiler["sha256"],
                    "bytes": compiler["bytes"],
                    "archive_root": "LLVM-23.1.4-Linux-X64",
                },
                "upstream_xz_alternative": {
                    "url": "https://github.com/llvm/llvm-project/releases/download/llvmorg-23.1.4/LLVM-23.1.4-Linux-X64.tar.xz",
                    "sha256": "25d814fda50d5fb0084b42be09605d8b1595d49d5e2e03a3345d7e112ff6f9f3",
                    "bytes": 2017061664,
                    "archive_root": "LLVM-23.1.4-Linux-X64",
                },
                "review_cache_package": {
                    "archive": host["archive"],
                    "sha256": host["sha256"],
                    "bytes": host["bytes"],
                    "archive_root": host["layout"],
                    "published": False,
                },
                "executables": {
                    "cc": "bin/clang",
                    "cxx": "bin/clang++",
                    "ld": "bin/wasm-ld",
                    "ar": "bin/llvm-ar",
                    "ranlib": "bin/llvm-ranlib",
                },
                "required_native_libraries": host["native_runtime_libraries"],
                "minimum_symbol_versions": host["minimum_symbol_versions"],
                "preinstalled_compiler_required": False,
                "guest_compiler_rt": "use each target entry's SDK resource_dir",
            }
        ],
        "rebuild_dependencies": {
            "python": ">=3.11",
            "cmake": ">=3.26",
            "ninja": True,
            "llvm23_with_webassembly_backend": True,
            "pinned_source_cache": True,
        },
        "prebuilt_guest_consumption": {
            "python_required": False,
            "cmake_required": False,
            "ninja_required": False,
            "preinstalled_compiler_required": False,
        },
    }
    (sdk / "share/wasm/host-toolchains.json").write_text(json.dumps(bootstrap, indent=2) + "\n")
    if args.host_closure_receipt:
        closure = json.loads(args.host_closure_receipt.read_text())
        if not closure["bundled_loader_execution_tested"] or not closure["bundled_dependency_resolution_tested"]:
            parser.error("the retained native host closure has not passed its loader checks")
        bootstrap["hosts"][0]["review_native_closure"] = closure
        native_sources = "share/wasm/native-runtime-sources.json"
        if (sdk / native_sources).is_file():
            bootstrap["hosts"][0]["review_native_closure"]["native_runtime_source_lock"] = native_sources
        if args.host_closure_validation:
            launcher_report = json.loads(args.host_closure_validation.read_text())
            if not launcher_report["passed"] or not launcher_report.get("native_host_launcher"):
                parser.error("the retained native launcher has not passed full WASI acceptance")
            if modules(acceptance) != modules(launcher_report):
                parser.error("native host launcher changed the accepted module bytes")
            filename = "share/wasm/llvm23-native-host-validation.json"
            (sdk / filename).write_text(json.dumps(launcher_report, indent=2) + "\n")
            bootstrap["hosts"][0]["review_native_closure"]["acceptance_report"] = filename
            bootstrap["hosts"][0]["review_native_closure"]["wasm_acceptance_tested"] = True
        (sdk / "share/wasm/host-toolchains.json").write_text(json.dumps(bootstrap, indent=2) + "\n")
    roots = (
        "tools/wasm",
        "src/wasm",
        "share/wasm",
        "lib/wasm/llvm23",
        "include/wasm/llvm23",
        "lib/language/cfamily/clang/23",
    )

    def include(member: tarfile.TarInfo) -> tarfile.TarInfo | None:
        """@brief Normalize delivery metadata and omit build-only cache contents.

        @param member Tar member proposed by the selected reviewed SDK paths.
        @return Normalized member, or None for bytecode and upstream cache files.
        @details This filter changes ownership and timestamps, never file bytes.
        """
        parts = Path(member.name).parts
        if "__pycache__" in parts or "upstream" in parts or member.name.endswith(".pyc"):
            return None
        member.uid = member.gid = 0
        member.uname = member.gname = ""
        member.mtime = 1781562833
        member.pax_headers = {}
        return member

    args.output.parent.mkdir(parents=True, exist_ok=True)
    with args.output.open("wb") as raw, gzip.GzipFile(filename="", mode="wb", fileobj=raw, mtime=0) as compressed:
        with tarfile.open(fileobj=compressed, mode="w|", dereference=False) as archive:
            for relative in roots:
                archive.add(sdk / relative, arcname="sdk/" + relative, filter=include)
    receipt = {
        "schema_version": 1,
        "archive": args.output.name,
        "bytes": args.output.stat().st_size,
        "sha256": hashlib.file_digest(args.output.open("rb"), "sha256").hexdigest(),
        "sdk_paths": list(roots),
        "acceptance_passed": True,
        "reproducibility_passed": True,
    }
    receipt["relocation_passed"] = True
    args.output.with_suffix(args.output.suffix + ".json").write_text(json.dumps(receipt, indent=2) + "\n")
    print(json.dumps(receipt, indent=2))


if __name__ == "__main__":
    main()
