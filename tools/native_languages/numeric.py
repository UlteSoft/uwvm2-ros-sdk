#!/usr/bin/env python3
"""@brief Emit exact-width numeric FFI sources for systems language SDKs.

@details Author and format outputs locally, then synchronize for Linux acceptance.
Output is a fresh source candidate tree,
never an installed SDK, binary qualification, native identity or grant. The C
translation unit is a private compiler bridge: every external effect remains
an original numeric Runtime import. No native ROS library is linked.
"""

from pathlib import Path
import argparse
import hashlib
import json
import re
import sys

if __package__:
    from .documentation import comment, raw_function, attach_nim
else:
    # Isolated (-I) script execution omits the script directory from sys.path.
    # Select only this fixed trusted helper directory, never a catalog provider.
    sys.path.insert(0, str(Path(__file__).resolve(strict=True).parent))
    from documentation import comment, raw_function, attach_nim


LANGUAGES = ("swift", "haskell", "nim", "d", "odin")


def read_schema(raw):
    """@brief Read the exact ABI v1 function set and assign private operation indices.

    @param raw Complete canonical ABI descriptor bytes.
    @return Parsed descriptor and lexically ordered indexed operations.
    @details Both backend inventories and all integer widths must match. The
    returned indices describe this source pair, never a public runtime protocol.
    """
    schema = json.loads(raw)
    if schema.get("abi_version") != 1:
        raise ValueError("ABI v1 required")
    modules = schema["modules"]
    if set(modules) != {"uwvm_ros1_v1", "uwvm_ros2_v1"}:
        raise ValueError("both exact base modules required")
    functions = {}
    for backend, count in ((1, 38), (2, 43)):
        rows = modules[f"uwvm_ros{backend}_v1"]["functions"]
        if len(rows) != count or len({r["name"] for r in rows}) != count:
            raise ValueError("complete unique ABI inventory required")
        for row in rows:
            if row["results"] != ["i32"] or len(row["params"]) > 7:
                raise ValueError("unexpected ABI result/arity")
            if not all(re.fullmatch("[a-z][a-z0-9_]*", n) for n in [row["name"]] + [p["name"] for p in row["params"]]):
                raise ValueError("unrepresentable identifier")
            if any(p["type"] not in ("i32", "i64") for p in row["params"]):
                raise ValueError("numeric ABI required")
            prior = functions.setdefault(row["name"], dict(row, backends=[]))
            prior["backends"].append(backend)
            if [(p["name"], p["type"]) for p in prior["params"]] != [(p["name"], p["type"]) for p in row["params"]]:
                raise ValueError("backend signature conflict")
    names = sorted(functions)
    return schema, [(i, functions[n]) for i, n in enumerate(names)]


def bridge(schema, rows):
    """@brief Emit one numeric C bridge that selects exactly one ROS backend.

    @param schema Verified descriptor returned by read_schema.
    @param rows Complete ordered function inventory with stable private indices.
    @return Complete C translation unit and its C/C++ compatible public header.
    @details Offsets and lengths retain the original uint64_t ROS ABI in both
    wasm32 and wasm64 guests. This emitter performs no pointer dereference and
    emits no native ROS implementation or alternative import behavior.
    """
    code = [
        "/** @file shim.c",
        " * @brief Dispatch exact-width private FFI operations to original ROS imports.",
        " * @details Link exactly one selected backend. All offsets remain uint64_t",
        " * in wasm32 and wasm64; the bridge never dereferences a guest address.",
        " * Calling an import requires the same explicit runtime authority as a",
        " * direct source-language call. No owner, buffer, or executor is allocated. */",
        '#include "roswasm_c_ffi.h"',
        "#if !defined(__wasm32__) && !defined(__wasm64__)",
        '#error "This bridge requires a wasm32 or wasm64 guest"',
        "#endif",
        "#if ROSWASM_C_FFI_BACKEND != 1 && ROSWASM_C_FFI_BACKEND != 2",
        '#error "Define exactly ROSWASM_C_FFI_BACKEND=1 or 2"',
        "#endif",
    ]
    for backend in (1, 2):
        module = f"uwvm_ros{backend}_v1"
        available = {f["name"] for f in schema["modules"][module]["functions"]}
        code += [f"#if ROSWASM_C_FFI_BACKEND == {backend}"]
        for _, row in rows:
            name = row["name"]
            if name not in available:
                continue
            params = (
                ", ".join(("uint32_t" if p["type"] == "i32" else "uint64_t") + " " + p["name"] for p in row["params"])
                or "void"
            )
            code += raw_function("c", row, "roswasm_ffi_" + name, backend=backend)
            code += [
                f'__attribute__((import_module("{module}"),import_name("{name}")))',
                f"extern uint32_t roswasm_ffi_{name}({params});",
            ]
        code += [
            "/** @brief Dispatch one private operation; see roswasm_c_ffi.h for the complete argument contract.",
            " * @details Only original i32 operands are narrowed. All i64 offsets, sizes,",
            " * correlations and opaque handles remain intact. An unavailable operation returns 95. */",
            "uint32_t roswasm_c_ffi_invoke(uint32_t operation, uint64_t a0, uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6) {",
            "switch (operation) {",
        ]
        for i, row in rows:
            if row["name"] not in available:
                continue
            args = ", ".join(
                ("(uint32_t)" if p["type"] == "i32" else "") + f"a{n}" for n, p in enumerate(row["params"])
            )
            code += [f'case {i}: return roswasm_ffi_{row["name"]}({args});']
        code += ["default: return 95;", "}", "}", "#endif"]
    header = """/** @file roswasm_c_ffi.h
 * @brief Exact-width C Foreign Function Interface for source-language bindings.
 * @details Link with the matching generated shim and descriptor inventory.
 * The same numeric ROS argument widths apply to wasm32 and wasm64 guests.
 * Selecting a compiler ABI does not create native ROS authority or resources. */
#ifndef ROSWASM_C_FFI_PRIVATE_H
#define ROSWASM_C_FFI_PRIVATE_H
#include <stdint.h>
#if defined(__cplusplus)
extern "C"
{
#endif
/** @brief Invoke one operation in this generated private compiler bridge.
 * @details The lexically ordered operation index belongs to this exact generated
 * source/schema pair. It is not a Runtime import ID, a ROS service identifier,
 * a host pointer or an authorization token. Link exactly one selected backend.
 * @param[in] operation Exact index from numeric-inventory.json.
 * @param[in] a0 First original ABI argument, zero-extended to 64 bits.
 * @param[in] a1 Second original ABI argument, zero-extended to 64 bits.
 * @param[in] a2 Third original ABI argument, zero-extended to 64 bits.
 * @param[in] a3 Fourth original ABI argument, zero-extended to 64 bits.
 * @param[in] a4 Fifth original ABI argument, zero-extended to 64 bits.
 * @param[in] a5 Sixth original ABI argument, zero-extended to 64 bits.
 * @param[in] a6 Seventh original ABI argument, zero-extended to 64 bits.
 * @return The original unsigned ABI result. Unknown/absent operations return 95;
 * abi_version returns a version value instead of an errno.
 * @lifetime All spans named by arguments remain stable until synchronous return.
 * @permissions The original exact Host grant is required for every effect.
 * @thread Call only on the admitted single Guest execution thread.
 * @see The selected language's API-CONTRACT.md; numeric-inventory.json.
 */
uint32_t roswasm_c_ffi_invoke(uint32_t operation, uint64_t a0, uint64_t a1,
    uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6);
#if defined(__cplusplus)
}
#endif
#endif
"""
    return "\n".join(code) + "\n", header


def raw_source(language, rows):
    """@brief Emit genuine-language declarations bound to the exact private bridge.

    @param language One of the declared source-language producers.
    @param rows Verified ordered original numeric operations.
    @return Complete language source retaining each operation's full ABI widths.
    @details These bindings call original imports; they contain no host simulator.
    """
    head = "// Generated numeric source. Backend selection and imports grant no authority.\n"
    if language == "swift":
        out = [head, "import CRosWasm"]
        out += comment(
            "swift",
            [
                "@brief Exact numeric ROS ABI entry points for the selected private bridge.",
                "@details Static calls preserve original widths and synchronous import behavior. "
                "No instance, endpoint, background executor or native ROS object is created.",
                "@see share/platform/ros/swift/API-CONTRACT.md",
            ],
        )
        out += ["public enum Raw {"]
    elif language == "nim":
        out = [
            "# Generated numeric source; imports grant no authority.",
            'proc invoke(op: uint32; a0,a1,a2,a3,a4,a5,a6: uint64): uint32 {.cdecl, importc: "roswasm_c_ffi_invoke".}',
        ]
    elif language == "d":
        out = [
            head,
            "module roswasm.raw;",
            "extern(C) private uint roswasm_c_ffi_invoke(uint op, ulong a0, ulong a1, ulong a2, ulong a3, ulong a4, ulong a5, ulong a6) @nogc nothrow;",
            "@nogc nothrow:",
        ]
    elif language == "haskell":
        out = [
            "{-# LANGUAGE ForeignFunctionInterface #-}",
            "-- Generated numeric source; imports grant no authority.",
            "module RosWasm.Raw where",
            "import Data.Word",
            'foreign import ccall unsafe "roswasm_c_ffi_invoke" invoke :: Word32 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32',
        ]
    elif language == "odin":
        out = [
            "package roswasm",
            head,
            "foreign {",
            '    @(link_name="roswasm_c_ffi_invoke")',
            '    invoke :: proc "c" (op: u32, a0,a1,a2,a3,a4,a5,a6: u64) -> u32 ---',
            "}",
        ]
    else:
        raise ValueError("unsupported language")
    for index, row in rows:
        name = row["name"]
        names = [p["name"] for p in row["params"]]
        padded = names + ["0"] * (7 - len(names))
        params = row["params"]
        if language == "swift":
            public = name
        elif language == "haskell":
            public = "raw" + "".join(word.title() for word in name.split("_"))
        elif language in ("nim", "odin"):
            public = "raw_" + name
        else:
            public = "raw_" + name
        out += raw_function(language, row, public, indent="    " if language == "swift" else "")
        if language == "swift":
            args = ", ".join(f'_ {p["name"]}: UInt{32 if p["type"] == "i32" else 64}' for p in params)
            call = ", ".join(f"UInt64({n})" if n != "0" else "0" for n in padded)
            out += [
                f"    public static func {name}({args}) -> UInt32 {{",
                f"        return roswasm_c_ffi_invoke({index}, {call})",
                "    }",
            ]
        elif language == "nim":
            args = "; ".join(p["name"] + ": uint" + ("32" if p["type"] == "i32" else "64") for p in params)
            call = ", ".join("uint64(" + n + ")" for n in padded)
            out += [f"proc raw_{name}*({args}): uint32 = invoke({index}, {call})"]
        elif language == "d":
            args = ", ".join(("uint" if p["type"] == "i32" else "ulong") + " " + p["name"] for p in params)
            out += [
                f"uint raw_{name}({args}) {{",
                f"    return roswasm_c_ffi_invoke({index}, " + ", ".join(padded) + ");",
                "}",
            ]
        elif language == "odin":
            args = ", ".join(p["name"] + ": " + ("u32" if p["type"] == "i32" else "u64") for p in params)
            call = ", ".join("u64(" + n + ")" for n in padded)
            out += [f"raw_{name} :: proc({args}) -> u32 {{", f"    return invoke({index}, {call})", "}"]
        else:
            signature = " -> ".join(["Word32" if p["type"] == "i32" else "Word64" for p in params] + ["IO Word32"])
            # Haskell identifiers use camelCase; original names are retained in the receipt.
            public = "raw" + "".join(w.title() for w in name.split("_"))
            local = [parameter["name"] for parameter in params]
            call = ["fromIntegral " + n for n in local] + ["0"] * (7 - len(local))
            out += [
                f"{public} :: {signature}",
                public + (" " + " ".join(local) if local else "") + " =",
                f"    invoke {index} " + " ".join("(" + n + ")" for n in call),
            ]
    if language == "swift":
        out += ["}"]
    # Finite typed RPC selection covers every actual backend RPC, including
    # unsupported-backend refusal in the private bridge. No string dispatch.
    rpc = [(i, r) for i, r in rows if r["form"] == "rpc"]
    out += comment(
        language,
        [
            "@brief Closed selection of the original seven-argument ABI RPC operations.",
            "@details Values are indices in this exact generated private compiler bridge. They are not "
            "native ROS operation IDs or capabilities; do not persist or exchange their numeric values.",
            "@version ABI 1; an operation absent from the selected ROS backend returns 95.",
            "@see rawRequest; share/platform/ros/" + language + "/API-CONTRACT.md",
        ],
    )

    def cases(prefix, suffix):
        result = []
        for index, row in rpc:
            name = row["name"]
            result += comment(
                language,
                [
                    "@brief Select " + name + ": " + row["description"],
                    "@details This selector preserves the exact original request/response contract. "
                    "It confers no alias, type, direction, quota or deadline authority.",
                    "@see "
                    + (
                        "Raw." + name
                        if language == "swift"
                        else (
                            "raw" + "".join(word.title() for word in name.split("_"))
                            if language == "haskell"
                            else "raw_" + name
                        )
                    ),
                ],
                "    " if language == "swift" else "  ",
            )
            result.append(prefix + name + f" = {index}" + suffix)
        return result

    request_docs = [
        "@brief Dispatch one closed original ABI RPC through memory zero.",
        "@details This numeric helper is synchronous and performs no encoding, retry or native "
        "type lookup. Call the typed layer when owning language buffers or values.",
        "@param[in] op Exact RPC selector from this generated module.",
        "@param[in] h Live nonzero same-Instance/backend capability handle.",
        "@param[in] a Stable input byte offset in Guest memory zero.",
        "@param[in] n Input extent in bytes; at most 4193786 and within the exact selected grant.",
        "@param[out] b Writable output byte offset in Guest memory zero.",
        "@param[in] c Output capacity in bytes; it grants no extra quota.",
        "@param[out] z Writable eight-byte LE length slot initialized to UINT64_MAX.",
        "@return Original unsigned ABI errno; 0 is success. Error 90 need not overwrite the length sentinel.",
        "@failure Preserve denial, stale owner, unsupported backend, capacity and unknown timeout; never replay effects.",
        "@lifetime Borrow every input/output allocation until return. Integer offsets are not GC roots.",
        "@thread Admitted Guest execution thread only; no callback or background task is installed.",
        "@permissions Exact trusted Host operation/type/direction/quota/deadline grant is required.",
        "@see RPC; share/platform/ros/" + language + "/API-CONTRACT.md",
    ]
    if language == "swift":
        out += ["public enum RPC: UInt32, CaseIterable {"]
        out += cases("    case ", "")
        out += ["}"] + comment(language, request_docs)
        out += [
            "func rawRequest(_ op: RPC, _ h: UInt64, _ a: UInt64, _ n: UInt64, _ b: UInt64, _ c: UInt64, _ z: UInt64) -> UInt32 {",
            "    return roswasm_c_ffi_invoke(op.rawValue, h, 0, a, n, b, c, z)",
            "}",
        ]
    elif language == "nim":
        out += ["type RPC* = enum"] + cases("  rpc_", "")
        out += comment(language, request_docs)
        out += ["proc rawRequest*(op: RPC; h,a,n,b,c,z: uint64): uint32 = invoke(uint32(op),h,0,a,n,b,c,z)"]
    elif language == "d":
        out += ["enum RPC : uint {"] + cases("  ", ",") + ["}"]
        out += comment(language, request_docs)
        out += [
            "uint rawRequest(RPC op, ulong h, ulong a, ulong n, ulong b, ulong c, ulong z) {",
            "    return roswasm_c_ffi_invoke(cast(uint)op, h, 0, a, n, b, c, z);",
            "}",
        ]
    elif language == "odin":
        out += ["RPC :: enum u32 {"] + cases("  ", ",") + ["}"]
        out += comment(language, request_docs)
        out += [
            "raw_request :: proc(op: RPC, h,a,n,b,c,z: u64) -> u32 {",
            "    return invoke(u32(op), h, 0, a, n, b, c, z)",
            "}",
        ]
    else:
        out += ["data RPC"]
        for index, (_, row) in enumerate(rpc):
            out += ["  " + ("=" if index == 0 else "|") + " Rpc" + "".join(w.title() for w in row["name"].split("_"))]
            constructor_docs = comment(
                language,
                [
                    "@brief " + row["description"],
                    "@details Select exactly " + row["name"] + "; no authority or native identity is created.",
                    "@see raw" + "".join(w.title() for w in row["name"].split("_")),
                ],
                "    ",
            )
            constructor_docs[0] = constructor_docs[0].replace("-- |", "-- ^", 1)
            out += constructor_docs
        out += ["  deriving (Eq, Show)"]
        out += comment(language, request_docs)
        out += [
            "rawRequest :: RPC -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> Word64 -> IO Word32",
            "rawRequest op h a n b c z = invoke (case op of",
        ]
        out += ["  Rpc" + "".join(w.title() for w in r["name"].split("_")) + f" -> {i}" for i, r in rpc]
        out += ["  ) h 0 a n b c z"]
    source = "\n".join(out) + "\n"
    return attach_nim(source) if language == "nim" else source


def products(raw):
    """@brief Render source and provenance candidates from one immutable descriptor.

    @param raw Complete ABI v1 JSON input.
    @return SDK-relative source and inventory texts; no files are installed here.
    @details Generated output still requires formatting, review and Linux tests.
    """
    schema, rows = read_schema(raw)
    c, h = bridge(schema, rows)
    paths = {
        "swift": "include/platform/ros/swift/Sources/RosWasm/Raw.swift",
        "haskell": "include/platform/ros/haskell/src/RosWasm/Raw.hs",
        "nim": "include/platform/ros/nim/src/roswasm/raw.nim",
        "d": "include/platform/ros/d/source/roswasm/raw.d",
        "odin": "include/platform/ros/odin/roswasm/raw.odin",
    }
    result = {paths[l]: raw_source(l, rows) for l in LANGUAGES}
    result["src/platform/ros/c_ffi_bridge/shim.c"] = c
    result["include/platform/ros/c_ffi_bridge/roswasm_c_ffi.h"] = h
    result["include/platform/ros/swift/Sources/CRosWasm/module.modulemap"] = (
        'module CRosWasm { header "../../../c_ffi_bridge/roswasm_c_ffi.h" export * }\n'
    )
    result["share/platform/ros/c_ffi_bridge/numeric-inventory.json"] = (
        json.dumps(
            {
                "kind": "roswasm-c-ffi-bridge-v1",
                "source_sha256": hashlib.sha256(raw).hexdigest(),
                "default_authority": [],
                "compiler_runs": 0,
                "Guest_runs": 0,
                "operations": {r["name"]: i for i, r in rows},
                "backend_counts": {"ros1": 38, "ros2": 43},
                "backend_compile_selection": "ROSWASM_C_FFI_BACKEND=1 or 2; no default",
            },
            indent=2,
        )
        + "\n"
    )
    return result


def main():
    """@brief Emit fresh numeric bridge candidates from the exact ABI schema.

    @details --schema supplies the original ABI and --out must be a fresh
    directory. Capture and pin both this producer and its documentation helper;
    formatting, native compilation and Guest/native integration remain separate.
    @return None after ordinary source products and generation.json are written.
    @raises ValueError Unsupported ABI/input extent, path reuse or source drift.
    @see products; raw_source; documentation.raw_function
    """
    ap = argparse.ArgumentParser(description=__doc__)
    ap.add_argument("--schema", type=Path, required=True)
    ap.add_argument("--out", type=Path, required=True)
    args = ap.parse_args()
    raw = args.schema.read_bytes()
    helper_paths = [Path(__file__).resolve(strict=True), Path(raw_function.__code__.co_filename).resolve(strict=True)]
    helper_sources = {path: path.read_bytes() for path in helper_paths}
    if len(raw) > 2 * 1024 * 1024:
        raise ValueError("bounded ABI source required")
    emitted = products(raw)
    args.out.mkdir(parents=True, exist_ok=False)
    facts = []
    for relative, body in emitted.items():
        data = body.encode()
        p = args.out / relative
        p.parent.mkdir(parents=True, exist_ok=True)
        p.write_bytes(data)
        facts.append({"path": relative, "bytes": len(data), "sha256": hashlib.sha256(data).hexdigest()})
    if args.schema.read_bytes() != raw or any(path.read_bytes() != body for path, body in helper_sources.items()):
        raise ValueError("Numeric producer input changed during emission")
    proof = args.out / "share/platform/ros/c_ffi_bridge/generation.json"
    proof.parent.mkdir(parents=True, exist_ok=True)
    proof.write_text(
        json.dumps(
            {
                "status": "SOURCE_ONLY",
                "products": facts,
                "helper_inputs": [
                    {"name": path.name, "bytes": len(body), "sha256": hashlib.sha256(body).hexdigest()}
                    for path, body in helper_sources.items()
                ],
                "default_authority": [],
            },
            indent=2,
        )
        + "\n"
    )


if __name__ == "__main__":
    main()
