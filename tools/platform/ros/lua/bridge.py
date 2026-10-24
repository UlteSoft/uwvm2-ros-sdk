#!/usr/bin/env python3
"""@brief Emit the Lua static bridge's complete selected ROS ABI v1 dispatch.

@details Consumes the exact SDK ABI catalog and C template. The output calls
the selected Wasm imports directly; no FFI, native ROS library, socket, host Lua
application or resource grant is generated. Source emission is not execution.
@see build.py
"""

import argparse
import hashlib
import json
from pathlib import Path

FORMS = {
    "version": ("", 4),
    "open": ("0,OFFSET(input),value->input_size,OFFSET(&value->slot)", 2),
    "handle": ("value->handle", 0),
    "write": ("value->handle,0,OFFSET(input),value->input_size", 0),
    "poll": ("value->handle,0,OFFSET(value->output),value->capacity,OFFSET(&value->slot)", 1),
    "watch": ("value->handle,value->other,value->correlation", 0),
    "ready": ("value->handle,0,OFFSET(value->output)", 3),
    "submit": ("value->handle,value->other,0,OFFSET(input),value->input_size,OFFSET(&value->slot)", 2),
    "rpc": (
        "value->handle,0,OFFSET(input),value->input_size,OFFSET(value->output),value->capacity,OFFSET(&value->slot)",
        1,
    ),
}


def main():
    """@brief Write one backend's complete dispatcher into a fresh directory.

    @details CLI arguments select backend1/2, output and optionally an installed
    SDK root. Unknown ABI forms/counts/results or template-anchor drift refuse;
    installed C includes use canonical platform/backend/language paths. The
    receipt pins every emitter/template/catalog/product byte. No process runs.
    @see build.py
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--backend", choices=("1", "2"), required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument(
        "--sdk-root", type=Path, help="Explicit installed SDK root supplied by the shared xmake resolver"
    )
    args = parser.parse_args()
    sdk = (args.sdk_root if args.sdk_root is not None else Path(__file__).resolve().parents[2]).resolve(strict=True)
    installed = args.sdk_root is not None
    template_path = sdk / "src/platform/ros/lua/native.c.in" if installed else sdk / "lua/lib/native.c.in"
    abi_path = sdk / "share/abi/abi-v1.json" if installed else sdk / "abi/abi-v1.json"
    template = template_path.read_bytes()
    abi = abi_path.read_bytes()
    spec = json.loads(abi)
    module = "uwvm_ros" + args.backend + "_v1"
    functions = spec["modules"][module]["functions"]
    if spec["abi_version"] != 1 or len(functions) != (38 if args.backend == "1" else 43):
        raise ValueError("review complete changed ABI before emitting Lua")
    rows = []
    dispatch = []
    for index, function in enumerate(functions):
        name, form = function["name"], function["form"]
        if form not in FORMS or function["results"] != ["i32"]:
            raise ValueError("new ABI form requires a complete Lua bridge")
        arguments, kind = FORMS[form]
        description = function["description"].replace("*/", "* /").replace("\n", " ")
        rows += [
            "    /* ABI v1 " + name + ": " + description + " */",
            "    " + ("if" if index == 0 else "else if") + "(strcmp(name," + json.dumps(name) + ")==0){",
            "        operation="
            + str(index)
            + ";kind="
            + str(kind)
            + ";owner="
            + ("1" if form == "open" else "0")
            + ";",
        ]
        if form == "open":
            rows += ['        luaL_argcheck(L,input_size>=1 && input_size<=255,3,"alias byte bound1..255");']
        if form == "ready":
            rows += ['        luaL_argcheck(L,capacity==32,4,"event_ready requires exactly32 output bytes");']
        rows += ["    }"]
        call = "uwvm_ros" + args.backend + "_" + name + "(" + arguments + ")"
        dispatch += [
            "    case "
            + str(index)
            + ": "
            + ("value->slot=" if form == "version" else "value->code=")
            + call
            + ";break;"
        ]
    body = template.decode()
    if installed:
        for backend in ("1", "2"):
            old = "# include <ros" + backend + "/abi.h>"
            if body.count(old) != 1:
                raise ValueError("exact installed Lua bridge include anchor required")
            body = body.replace(old, "#include <platform/ros" + backend + "/c/roswasm/abi/ros" + backend + ".h>")
    for anchor, replacement in (("/* @SELECT@ */", "\n".join(rows)), ("/* @DISPATCH@ */", "\n".join(dispatch))):
        if body.count(anchor) != 1:
            raise ValueError("exact Lua template anchor required")
        body = body.replace(anchor, replacement)
    if args.out.exists() or args.out.is_symlink():
        raise ValueError("fresh bridge output outside source required")
    args.out.mkdir(parents=True)
    (args.out / "native.c").write_text(body)
    proof = {
        "kind": "lua-complete-raw-bridge-source-v1",
        "backend": int(args.backend),
        "functions": len(functions),
        "abi_sha256": hashlib.sha256(abi).hexdigest(),
        "template_sha256": hashlib.sha256(template).hexdigest(),
        "generator_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
        "native_c_sha256": hashlib.sha256(body.encode()).hexdigest(),
        "default_authority": [],
        "installed_sdk_root": str(sdk) if installed else None,
        "uses_maintenance_tree_at_runtime": False,
        "compile": "NOT_RUN",
        "guest": "NOT_RUN",
        "native_ros": "NOT_RUN",
    }
    (args.out / "generation.bridge.json").write_text(json.dumps(proof, indent=2) + "\n")


if __name__ == "__main__":
    main()
