#!/usr/bin/env python3
"""Generate complete clock bindings from canonical SDK schemas and real shared tools."""

import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import stat
import subprocess
import sys
import types


def require(ok, reason):
    if not ok:
        raise ValueError(reason)


def read(path):
    path = Path(path)
    fd = os.open(path, os.O_RDONLY | os.O_NOFOLLOW | os.O_CLOEXEC | os.O_NONBLOCK)
    try:
        info = os.fstat(fd)
        require(
            stat.S_ISREG(info.st_mode)
            and info.st_nlink == 1
            and info.st_size <= 16777216,
            "bounded ordinary single-link source required: " + str(path),
        )
        chunks, count = [], 0
        while True:
            block = os.read(fd, min(65536, 16777217 - count))
            if not block:
                break
            chunks.append(block)
            count += len(block)
            require(count <= info.st_size, "source exceeded captured extent")
        key = lambda value: (
            value.st_dev,
            value.st_ino,
            value.st_mode,
            value.st_nlink,
            value.st_size,
            value.st_mtime_ns,
            value.st_ctime_ns,
        )
        require(
            count == info.st_size
            and key(info) == key(os.fstat(fd)) == key(path.lstat()),
            "source changed during capture: " + str(path),
        )
        return b"".join(chunks)
    finally:
        os.close(fd)


def fact(raw):
    return {"bytes": len(raw), "sha256": hashlib.sha256(raw).hexdigest()}


def main():
    """@brief Generate bounded clock bindings without copying authored SDK trees.

    @details Captures the installed SDK's genuine generator pair, industrial IR,
    templates and complete original IDL before execution. Only derived bindings
    and compact provenance are written to a fresh external build directory.
    Native identity, compilation, installation and runtime acceptance remain
    independent. Repository runs retain the common finite Linux owner.
    @return Zero on generation only; exact input/IR/tool failures propagate.
    @see emit_java.py
    @see sdk/share/platform/nvidia-isaac-sim/docs/CLOCK-SDK.md
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk-root", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--native-exporter-source", type=Path, required=True)
    parser.add_argument("--native-exporter-sha256", required=True)
    for role in ("parent", "bounded", "adapter", "managed"):
        parser.add_argument("--" + role + "-sha256", required=True)
    args = parser.parse_args()
    root, out = args.sdk_root, args.out
    require(sys.platform == "linux", "actual Linux generation environment required")
    require(root.is_absolute() and root.resolve(strict=True) == root,
            "physical canonical installed SDK root required")
    require(out.is_absolute() and not out.exists() and not out.is_symlink()
            and out.parent.resolve(strict=True) == out.parent
            and not out.is_relative_to(root), "fresh output outside the SDK required")
    if os.environ.get("UWVM_RESOURCE_RUN"):
        run = Path(os.environ["UWVM_RESOURCE_RUN"]).resolve(strict=True)
        require(os.environ.get("UWVM_RESOURCE_HEAVY_LOCK_HELD") == "1"
                and out.is_relative_to(run / "work"), "finite-owner work output required")
    roles = {
        "parent": root / "tools/custom_types.py",
        "bounded": root / "tools/custom-types/bounded_profile.py",
        "adapter": root / "tools/industrial/vendor_profile.py",
        "managed": root / "tools/custom-types/managed_profile.py",
    }
    captured = {role: read(path) for role, path in roles.items()}
    for role, raw in captured.items():
        require(fact(raw)["sha256"] == getattr(args, role + "_sha256"),
                "explicit reviewed generator differs: " + role)
    exporter = args.native_exporter_source
    require(exporter.is_absolute() and exporter.resolve(strict=True) == exporter
            and exporter.is_relative_to(root / "tools"),
            "explicit canonical installed native exporter helper required")
    exporter_raw = read(exporter)
    require(fact(exporter_raw)["sha256"] == args.native_exporter_sha256,
            "native exporter helper pin differs")
    schema = root / "share/platform/nvidia-isaac-sim/clock-control"
    catalog = schema / "catalog.preparation.json"
    catalog_raw = read(catalog)
    document = json.loads(catalog_raw)
    definitions = {}
    for entry in document["types"]:
        name = entry["file"]
        relative = Path(name)
        require(not relative.is_absolute() and ".." not in relative.parts
                and name not in definitions, "distinct bounded original IDL path required")
        selected = schema / relative
        require(selected.resolve(strict=True).is_relative_to(schema), "IDL escaped schema root")
        definitions[name] = read(selected)
    templates = {"interface_templates/bounded_interfaces." + suffix + ".in":
                 read(roles["bounded"].parent / "interface_templates" /
                      ("bounded_interfaces." + suffix + ".in"))
                 for suffix in ("rs", "mjs", "go", "ts")}
    module_name = "_uwvm_clock_generator_" + str(os.getpid())
    require(module_name not in sys.modules, "fresh captured generator namespace required")
    module = types.ModuleType(module_name)
    module.__file__ = str(roles["adapter"])
    sys.modules[module_name] = module
    try:
        exec(compile(captured["adapter"], str(roles["adapter"]), "exec", dont_inherit=True), module.__dict__)
        api = module.API(captured["parent"], captured["bounded"],
                         parent_path=roles["parent"], bounded_path=roles["bounded"],
                         parent_sha256=args.parent_sha256, bounded_sha256=args.bounded_sha256,
                         templates=templates, adapter_raw=captured["adapter"],
                         adapter_sha256=args.adapter_sha256)
        api.load_catalog(catalog, False)
        out.mkdir(mode=0o700)
        def write(path, raw):
            path.parent.mkdir(parents=True, exist_ok=True)
            with path.open("xb") as stream:
                stream.write(raw)
        for relative, raw in definitions.items():
            write(out / "input" / relative, raw)
        write(out / "input/catalog.json", module.canonical(document))
        generated = out / "generated"
        proof = api.generate(out / "input/catalog.json", generated,
                             guest_only=True, helper_source=exporter_raw)
        roots = [row for row in proof["types"] if row["kind"] == "service"
                 and row["type"] == "uwvm_isaac_sim_bridge/srv/ClockControl"
                 and row["ros_version"] == 2]
        require(len(roots) == 1 and proof["native_registry_emitted"] is False,
                "one genuine source-only service root required")
        identity = roots[0]
        require(set(identity["components"]) == {"request", "response"}
                and re.fullmatch(r"UWVMROS1_[0-9a-f]{64}", identity["adapter_codec_identity"]),
                "complete original service-root facts required")
        native = json.dumps(identity["type"])
        canonical = json.dumps(identity["adapter_codec_identity"])
        facts = {
            "rs": (
                '// Actual original service-root facts; native identity remains independe'
                'nt.\npub const NATIVE_TYPE:&str='
            ) + native + ";\npub const CANONICAL_IDENTITY:&str=" + canonical + ";\n",
            "tinygo": (
                '// Actual original service-root facts; native identity remains independe'
                'nt.\npackage customtypes\nconst ClockNativeType='
            ) + native + "\nconst ClockCanonicalIdentity=" + canonical + "\n",
            "as": (
                '/** Actual original service-root facts; no native identity claim. */\nexp'
                'ort class ClockIdentity { static readonly nativeType:string='
            ) + native + ";\nstatic readonly canonicalIdentity:string=" + canonical + "; }\n",
            "js": (
                '/** Actual original service-root facts; no native identity claim. */\nexp'
                'ort const ClockIdentity=Object.freeze({nativeType:'
            ) + native + ",codecIdentity:" + canonical + ",nativeIdentity:null});\n",
        }
        destinations = {}
        for language, suffix in (("rs", "rs"), ("tinygo", "go"), ("as", "ts"), ("js", "mjs")):
            leaf = "bounded_records." + suffix
            raw = read(generated / leaf)
            require(fact(raw) == proof["outputs"][leaf], "genuine emitted record pin differs")
            for name, content in ((leaf, raw), ("service_identity." + suffix, facts[language].encode())):
                selected = out / "bindings" / language / name
                write(selected, content)
                destinations[str(selected.relative_to(out))] = "include/platform/nvidia-isaac-sim/" + language + "/clock-control/generated/" + name
        java_out = out / "java"
        command = [sys.executable, "-I", "-S", "-B", str(root / "tools/platform/nvidia-isaac-sim/clock/emit_java.py"),
                   "--sdk-root", str(root), "--canonical", str(generated),
                   "--managed-source", str(roles["managed"]), "--out", str(java_out)]
        for role in roles:
            command += ["--" + role + "-sha256", getattr(args, role + "_sha256")]
        subprocess.run(command, check=True, timeout=90)
        java_raw = read(java_out / "generation.clock-java.json")
        java = json.loads(java_raw)
        require(java["codec_body_unchanged_after_package_relocation"] is True
                and java["canonical_proof"] == fact(read(generated / "generation.vendor.json")),
                "genuine complete unchanged-body Java output required")
        for name, expected in java["outputs"].items():
            require(fact(read(java_out / name)) == expected, "generated Java product drift")
            destinations["java/" + name] = "include/platform/nvidia-isaac-sim/java/clock-control/" + name
        for role, path in roles.items():
            require(read(path) == captured[role], "generator source drift: " + role)
        require(read(catalog) == catalog_raw and read(exporter) == exporter_raw, "catalog/exporter drift")
        for name, raw in definitions.items():
            require(read(schema / name) == raw, "original IDL drift")
        for name, raw in templates.items():
            require(read(roles["bounded"].parent / name) == raw, "genuine template drift")
        products = {name: fact(read(out / name)) for name in destinations}
        receipt = {"format": "uwvm-isaac-sim-clock-bindings-v2", "status": "GENERATED_NOT_COMPILED",
                   "sdk_root": str(root), "canonical_destinations": destinations, "products": products,
                   "service_facts": identity, "generator_sources": {role: fact(raw) for role, raw in captured.items()},
                   "source_generation": fact(read(generated / "generation.vendor.json")),
                   "java_generation": fact(java_raw), "authored_sdk_sources_copied": 0,
                   "compiler_executions": 0, "guest_executions": 0, "native_exchanges": 0,
                   "sdk_acceptance": False, "default_authority": []}
        write(out / "clock-bindings.json", (json.dumps(receipt, indent=2, sort_keys=True) + "\n").encode())
        return 0
    finally:
        if sys.modules.get(module_name) is module:
            del sys.modules[module_name]


if __name__ == "__main__":
    raise SystemExit(main())
