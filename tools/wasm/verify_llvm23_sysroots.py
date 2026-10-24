#!/usr/bin/env python3
"""@brief Compile, inspect, and execute the LLVM 23 WASI closure acceptance fixtures.

@details The binary inspection below records the actual import signatures and memory
limits from each linked module. Compilation success alone does not qualify a
runtime ABI, and an unavailable runtime is recorded as an explicit gap.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import sys

from build_llvm23_sysroots import cgroup_limits


class Reader:
    """@brief Read the small core-Wasm section subset emitted by these fixtures.

    @details The cursor owns its byte sequence and position. This is a fixture
    inspector, not the production Wasm validator. Unsupported type/import forms
    are rejected, and malformed or truncated input propagates an exception.
    """

    def __init__(self, data: bytes):
        """@brief Initialize a cursor over immutable section bytes.

        @param data Complete section or module byte sequence retained by this reader.
        """
        self.data, self.pos = data, 0

    def byte(self) -> int:
        """@brief Consume one byte at the current cursor.

        @return Unsigned byte value.
        @throws IndexError If the section is truncated.
        """
        value = self.data[self.pos]
        self.pos += 1
        return value

    def uint(self) -> int:
        """@brief Decode one unsigned LEB128 fixture operand.

        @return Decoded nonnegative integer.
        @throws ValueError If continuation exceeds the supported integer width.
        """
        value, shift = 0, 0
        while True:
            byte = self.byte()
            value |= (byte & 127) << shift
            if byte < 128:
                return value
            shift += 7
            if shift > 70:
                raise ValueError("invalid unsigned LEB128")

    def name(self) -> str:
        """@brief Read a length-prefixed UTF-8 import or module name.

        @return Decoded name, with the cursor advanced past its encoded bytes.
        @throws UnicodeDecodeError If the payload is not valid UTF-8.
        """
        count = self.uint()
        result = self.data[self.pos : self.pos + count].decode("utf-8")
        self.pos += count
        return result

    def limits(self) -> dict:
        """@brief Read memory/table limits and retain their encoded feature flags.

        @return Flags, minimum, optional maximum and memory64/shared booleans.
        @details Callers reinterpret the memory64 index bit as table64 for tables.
        """
        flags = self.uint()
        minimum = self.uint()
        maximum = self.uint() if flags & 1 else None
        return {
            "flags": flags,
            "minimum_pages": minimum,
            "maximum_pages": maximum,
            "memory64": bool(flags & 4),
            "shared": bool(flags & 2),
        }


def inspect_wasm(path: Path) -> dict:
    """@brief Inspect actual linked imports, memories, tables and exception tags.

    @param path Completed core-Wasm fixture, not an intermediate object.
    @return Exact function signatures, memory/table limits, byte count and hash.
    @throws ValueError On an invalid header or unsupported fixture type/import.
    """
    data = path.read_bytes()
    if data[:8] != b"\0asm\1\0\0\0":
        raise ValueError("expected a core WebAssembly module")
    module = Reader(data)
    module.pos = 8
    types, imports, memories, tables, tags = [], [], [], [], []
    while module.pos < len(data):
        section_id, length = module.byte(), module.uint()
        section = Reader(data[module.pos : module.pos + length])
        module.pos += length
        if section_id == 1:
            for _ in range(section.uint()):
                if section.byte() != 0x60:
                    raise ValueError("acceptance inspector requires plain function types")
                arguments = [section.byte() for _ in range(section.uint())]
                results = [section.byte() for _ in range(section.uint())]
                types.append({"parameters": arguments, "results": results})
        elif section_id == 2:
            for _ in range(section.uint()):
                owner, name, kind = section.name(), section.name(), section.byte()
                entry = {"module": owner, "name": name, "kind": kind}
                if kind == 0:
                    entry["type_index"] = section.uint()
                elif kind == 1:
                    reference_type = section.byte()
                    table = section.limits()
                    table["reference_type"] = reference_type
                    table["table64"] = table.pop("memory64")
                    tables.append(table)
                elif kind == 2:
                    memories.append(section.limits())
                elif kind == 3:
                    section.byte()
                    section.byte()
                elif kind == 4:
                    section.byte()
                    entry["type_index"] = section.uint()
                else:
                    raise ValueError("unexpected import kind")
                imports.append(entry)
        elif section_id == 4:
            for _ in range(section.uint()):
                reference_type = section.byte()
                table = section.limits()
                table["reference_type"] = reference_type
                table["table64"] = table.pop("memory64")
                tables.append(table)
        elif section_id == 5:
            memories.extend(section.limits() for _ in range(section.uint()))
        elif section_id == 13:
            for _ in range(section.uint()):
                tags.append({"attribute": section.byte(), "type_index": section.uint()})
    for entry in imports:
        if "type_index" in entry:
            entry["signature"] = types[entry["type_index"]]
    for tag in tags:
        tag["signature"] = types[tag["type_index"]]
    return {
        "imports": imports,
        "memories": memories,
        "tables": tables,
        "tags": tags,
        "bytes": len(data),
        "sha256": hashlib.sha256(data).hexdigest(),
    }


def main() -> None:
    """@brief Compile, inspect and execute every target/profile acceptance fixture.

    @details Compilation and linking run separately, and linked Wasm signatures
    are read from the actual binaries. A profile is qualified only when all its
    modules execute successfully, including exception and high-address cases
    when applicable. An unavailable runtime leaves an explicit validation gap.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--work", type=Path, required=True)
    parser.add_argument("--toolchain", type=Path, required=True)
    parser.add_argument("--runtime", type=Path)
    args = parser.parse_args()
    if sys.platform != "linux":
        parser.error("compilation and testing are authorized on Linux only")
    cgroup = cgroup_limits()
    sdk, work, toolchain = (p.resolve() for p in (args.sdk, args.work, args.toolchain))
    work.mkdir(parents=True, exist_ok=True)
    manifest_path = sdk / "share/wasm/toolchains.json"
    manifest = json.loads(manifest_path.read_text())
    native_launcher = (toolchain / "share/uwvm/llvm23-host-closure.json").is_file()
    env = dict(os.environ, LC_ALL="C", TZ="UTC", SOURCE_DATE_EPOCH="1781562833")
    compiler_version = subprocess.check_output([str(toolchain / "bin/clang"), "--version"], env=env, text=True)
    if not re.search(r"clang version 23\.", compiler_version):
        raise RuntimeError("acceptance requires an actual LLVM 23 compiler")
    report = {
        "schema_version": 1,
        "cgroup": cgroup,
        "compiler_version": compiler_version.strip(),
        "native_host_launcher": native_launcher,
        "runtime": str(args.runtime) if args.runtime else None,
        "targets": [],
        "commands": [],
    }

    def execute(name: str, argv: list[str], required: bool = True) -> dict:
        """@brief Run one bounded compiler, inspector or runtime acceptance command.

        @param name Unique receipt and output-file basename.
        @param argv Explicit executable and argument sequence; no shell is used.
        @param required Whether a nonzero exit stops this fixture immediately.
        @return Actual arguments, exit code and decoded stdout/stderr.
        @details Output bytes are retained separately before the report is updated.
        Every command has a finite 180-second timeout.
        """
        result = subprocess.run([str(x) for x in argv], env=env, capture_output=True, timeout=180)
        stdout, stderr = work / (name + ".stdout"), work / (name + ".stderr")
        stdout.write_bytes(result.stdout)
        stderr.write_bytes(result.stderr)
        entry = {
            "name": name,
            "argv": [str(x) for x in argv],
            "exit_code": result.returncode,
            "stdout": result.stdout.decode(errors="replace"),
            "stderr": result.stderr.decode(errors="replace"),
        }
        report["commands"].append(entry)
        (work / "validation.json").write_text(json.dumps(report, indent=2) + "\n")
        if required and result.returncode != 0:
            raise RuntimeError(name + " failed: " + entry["stderr"][-5000:])
        return entry

    failures = []
    for target in manifest["targets"]:
        target["runtime_flags"] = (
            ["--wasm-feature-enable-memory64", "--wasm-feature-enable-table64"] if target["memory64"] else []
        ) + (["--wasm-feature-enable-exceptions"] if target["profile"] == "eh" else [])
        name = target["triple"] + "-" + target["profile"]
        output = work / name
        output.mkdir(parents=True, exist_ok=True)
        common = [
            "--target=" + target["triple"],
            "--sysroot=" + str(sdk / target["sysroot"]),
            "-resource-dir=" + str(sdk / target["resource_dir"]),
            "-O2",
        ]
        if native_launcher:
            # The process executable is the bundled loader; preserve the public
            # driver path when Clang starts its own cc1 child.
            common.extend(["-no-canonical-prefixes", "-fintegrated-cc1"])
        result = {"triple": target["triple"], "profile": target["profile"], "modules": [], "gaps": []}
        report["targets"].append(result)
        try:
            languages = [
                ("c", "hello.c", []),
                ("cxx", "hello.cpp", target["cxxflags"]),
                ("soft-float", "soft_float.c", []),
            ]
            if target["profile"] == "eh":
                languages.append(("exceptions", "exceptions.cpp", target["cxxflags"]))
            if target["memory64"]:
                languages.append(("high-address", "memory64_high_address.c", []))
            for language, fixture, extra in languages:
                is_c = fixture.endswith(".c")
                compiler = toolchain / ("bin/clang" if is_c else "bin/clang++")
                source = sdk / "src/wasm/smoke" / fixture
                binary, obj = output / (language + ".wasm"), output / (language + ".o")
                execute(
                    name + "-" + language + "-compile",
                    [str(compiler), *common, *extra, "-c", str(source), "-o", str(obj)],
                )
                object_info = execute(
                    name + "-" + language + "-object-abi",
                    [str(toolchain / "bin/llvm-readobj"), "--file-headers", str(obj)],
                )
                expected = "AddressSize: " + ("64bit" if target["arch"] == "wasm64" else "32bit")
                if expected not in object_info["stdout"]:
                    raise RuntimeError("object pointer ABI mismatch")
                linker_flags = list(target["ldflags"]) if not is_c else ["-rtlib=compiler-rt"]
                link_extra = [flag for flag in extra if flag not in ("-mllvm", "-wasm-use-legacy-eh=false")]
                if native_launcher:
                    link_extra.append("-fuse-ld=" + str(toolchain / "bin/wasm-ld"))
                execute(
                    name + "-" + language + "-link",
                    [
                        str(compiler),
                        *common,
                        *link_extra,
                        str(obj),
                        *linker_flags,
                        "-Wl,--fatal-warnings",
                        "-o",
                        str(binary),
                    ],
                )
                execute(name + "-" + language + "-sections", [str(toolchain / "bin/llvm-objdump"), "-h", str(binary)])
                abi = inspect_wasm(binary)
                if len(abi["memories"]) != 1:
                    raise RuntimeError("expected one linear memory")
                memory = abi["memories"][0]
                if memory["memory64"] != target["memory64"] or memory["shared"]:
                    raise RuntimeError("linked memory ABI mismatch")
                if any(table["table64"] != target["memory64"] for table in abi["tables"]):
                    raise RuntimeError("linked function-table index ABI mismatch")
                if language == "exceptions" and not abi["tags"]:
                    raise RuntimeError("the throw/catch fixture contains no exception tag")
                suffix = "_wasm64" if target["memory64"] else ""
                wasi = [item for item in abi["imports"] if item["module"] == "wasi_snapshot_preview1"]
                if not wasi:
                    raise RuntimeError("no Preview 1 imports found")
                if any(item["name"].endswith("_wasm64") != target["memory64"] for item in wasi):
                    raise RuntimeError("WASI pointer ABI import namespace mismatch")
                for item in wasi:
                    if item["name"] == "fd_write" + suffix:
                        pointer = 0x7E if target["memory64"] else 0x7F
                        if item["signature"] != {"parameters": [0x7F, pointer, pointer, pointer], "results": [0x7F]}:
                            raise RuntimeError("fd_write import signature mismatch")
                runtime_pass = False
                if args.runtime:
                    runtime = execute(
                        name + "-" + language + "-run",
                        [
                            str(args.runtime),
                            *target["runtime_flags"],
                            "--wasip1-global-noinherit-system-environment",
                            "--run",
                            str(binary),
                        ],
                        required=False,
                    )
                    marker = "LLVM23 WASI " + ("C hello" if language == "c" else "C++ hello")
                    if language == "high-address":
                        marker = "LLVM23 WASI memory64 address_above_4GiB"
                    if language == "soft-float":
                        marker = "LLVM23 WASI long_double128 compare"
                    runtime_pass = runtime["exit_code"] == 0 and (
                        language == "exceptions"
                        or marker in runtime["stdout"]
                        and (
                            language in ("high-address", "soft-float")
                            or "pointer_bits=" + ("64" if target["memory64"] else "32") in runtime["stdout"]
                        )
                    )
                    if not runtime_pass:
                        result["gaps"].append(language + " runtime execution failed; see validation command evidence")
                else:
                    result["gaps"].append(language + " runtime was not available")
                result["modules"].append({"language": language, "abi": abi, "runtime_pass": runtime_pass})
            target["tested"] = bool(result["modules"]) and all(item["runtime_pass"] for item in result["modules"])
            target["compile_link_tested"] = True
            target["runtime_tested"] = target["tested"]
            target["validation_report"] = "share/wasm/llvm23-validation.json"
            target["limitations"] = result["gaps"]
            result["passed"] = target["tested"]
        except Exception as error:
            target["tested"] = False
            result["passed"] = False
            result["gaps"].append(str(error))
            failures.append(name + ": " + str(error))
        print(name + ": " + ("PASS" if result["passed"] else "INCOMPLETE"), flush=True)
    report["passed"] = bool(report["targets"]) and all(item["passed"] for item in report["targets"])
    manifest["status"] = "qualified" if report["passed"] else "partially-qualified"
    manifest_path.write_text(json.dumps(manifest, indent=2) + "\n")
    (sdk / "share/wasm/llvm23-validation.json").write_text(json.dumps(report, indent=2) + "\n")
    (work / "validation.json").write_text(json.dumps(report, indent=2) + "\n")
    if not report["passed"]:
        details = failures or [
            item["triple"] + "/" + item["profile"] + ": " + "; ".join(item["gaps"])
            for item in report["targets"]
            if not item["passed"]
        ]
        raise SystemExit("\n".join(details))


if __name__ == "__main__":
    main()
