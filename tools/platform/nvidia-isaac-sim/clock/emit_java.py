#!/usr/bin/env python3
"""Emit complete clock Java records using the real industrial IR/shared emitter."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import re
import stat
import sys
import types


def need(value, reason):
    if not value:
        raise ValueError(reason)


def read(path, maximum=16777216):
    descriptor = os.open(path, os.O_RDONLY | os.O_NOFOLLOW | os.O_NONBLOCK | os.O_CLOEXEC)
    try:
        before = os.fstat(descriptor)
        need(stat.S_ISREG(before.st_mode) and before.st_nlink == 1 and 0 <= before.st_size <= maximum,
             "bounded ordinary single-link source required")
        blocks, count = [], 0
        while True:
            block = os.read(descriptor, min(65536, maximum + 1 - count))
            if not block:
                break
            count += len(block)
            need(count <= before.st_size, "source extent changed")
            blocks.append(block)
        key = lambda value: (value.st_dev, value.st_ino, value.st_mode, value.st_nlink,
                             value.st_size, value.st_mtime_ns, value.st_ctime_ns)
        need(count == before.st_size and key(before) == key(os.fstat(descriptor)) == key(Path(path).lstat()),
             "source changed during capture")
        return b"".join(blocks)
    finally:
        os.close(descriptor)


def pin(raw):
    return {"bytes": len(raw), "sha256": hashlib.sha256(raw).hexdigest()}


def main():
    """@brief Emit actual complete Java codecs/root facts for the original clock IDL.

    @details Runs only under the common finite Linux owner. Reuses the exact
    pinned industrial API to rebuild the canonical packet's genuine resolved IR,
    then calls the exact original shared Java emitter. It does not parse a new
    schema, calculate new codec/native identities or provide a native/JVM model.
    The emitted codec body is unchanged except for one counted package relocation
    to isolate this vendor family. Original constants, absent native identity and
    complete service-root facts are exported from the actual IR. Capture all
    canonical products and helpers before output; write the proof last.
    @return0 on source preparation only; refusal/allocation/I/O errors propagate.
    No Java compilation, SDK installation, Guest or native ROS execution follows.
    @see robots/industrial/vendor_profile.py
    @see custom-types/managed_profile.py
    """
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ("sdk-root", "canonical", "managed-source", "out"):
        parser.add_argument("--" + name, type=Path, required=True)
    for name in ("parent", "bounded", "adapter", "managed"):
        parser.add_argument("--" + name + "-sha256", required=True)
    args = parser.parse_args()
    need(sys.platform == "linux", "actual Linux generation environment required")
    run = None
    if os.environ.get("UWVM_RESOURCE_RUN"):
        need(os.environ.get("UWVM_RESOURCE_HEAVY_LOCK_HELD") == "1", "finite owner lock required")
        run = Path(os.environ["UWVM_RESOURCE_RUN"]).resolve(strict=True)
    root, canonical, out = args.sdk_root, args.canonical, args.out
    need(all(path.is_absolute() and path.resolve(strict=True) == path for path in (root, canonical, args.managed_source)),
         "physical explicit source/canonical/emitter paths required")
    need(out.is_absolute() and (run is None or out.is_relative_to(run / "work")) and not out.exists()
         and out.parent.resolve(strict=True) == out.parent and not out.is_relative_to(root)
         and not out.is_relative_to(canonical), "fresh owned output required")
    need(args.managed_source == root / "tools/custom-types/managed_profile.py",
         "canonical installed shared Java emitter required")
    paths = {"parent": root / "tools/custom_types.py",
             "bounded": root / "tools/custom-types/bounded_profile.py",
             "adapter": root / "tools/industrial/vendor_profile.py",
             "managed": args.managed_source}
    captured = {name: read(path) for name, path in paths.items()}
    for name, raw in captured.items():
        need(pin(raw)["sha256"] == getattr(args, name + "_sha256"), "reviewed source pin differs: " + name)
    proof_raw = read(canonical / "generation.vendor.json")
    original = json.loads(proof_raw)
    need(original["native_registry_emitted"] is False and len(original["records"]) == 3
         and original["format"] == "uwvm-ros-vendor-complete-bounded-v1", "actual clock source-only packet required")
    canonical_bytes = {}
    for name, expected in original["outputs"].items():
        need(Path(name).name == name and len(canonical_bytes) < 32, "closed canonical product leaf required")
        raw = read(canonical / name)
        need(pin(raw) == expected, "actual canonical output changed: " + name)
        canonical_bytes[name] = raw
    inputs = canonical.parent / "input"
    catalog = inputs / "catalog.json"
    catalog_raw = read(catalog)
    need(pin(catalog_raw) == original["source_inputs"]["catalog"], "canonical captured catalog differs")
    definitions = {}
    for row in original["source_inputs"]["definitions"]:
        path = inputs / row["file"]
        need(path.resolve(strict=True).is_relative_to(inputs), "definition outside canonical captured input")
        raw = read(path)
        need(pin(raw) == {"bytes": row["bytes"], "sha256": row["sha256"]}, "canonical captured IDL differs")
        definitions[row["file"]] = raw
    modules = {}
    try:
        for role in ("adapter", "managed"):
            name = "_uwvm_clock_java_" + role + "_" + str(os.getpid())
            need(name not in sys.modules, "fresh captured helper namespace required")
            module = types.ModuleType(name)
            module.__file__ = str(paths[role])
            sys.modules[name] = module
            modules[role] = (name, module)
            exec(compile(captured[role], str(paths[role]), "exec", dont_inherit=True), module.__dict__)
        adapter = modules["adapter"][1]
        templates = {"interface_templates/bounded_interfaces." + suffix + ".in":
                     read(root / "tools/custom-types/interface_templates" / ("bounded_interfaces." + suffix + ".in"))
                     for suffix in ("rs", "mjs", "go", "ts")}
        api = adapter.API(captured["parent"], captured["bounded"], parent_path=paths["parent"],
                          bounded_path=paths["bounded"], parent_sha256=args.parent_sha256,
                          bounded_sha256=args.bounded_sha256, templates=templates,
                          adapter_raw=captured["adapter"], adapter_sha256=args.adapter_sha256)
        records, ordered, interfaces, source_pins = api.load_catalog(catalog, False)
        need(source_pins == original["source_inputs"] and len(ordered) == 3,
             "same complete genuine canonical IR required")
        expected_records = {row["type"]: row for row in original["records"]}
        need({record.name for record in ordered} == set(expected_records), "complete three-record closure required")
        for record in ordered:
            need(record.codec_identity == expected_records[record.name]["codec_identity"]
                 and record.maximum == expected_records[record.name]["maximum_wire_bytes"],
                 "actual resolved record differs from canonical packet")
        managed = modules["managed"][1]
        managed.validate_ir(api.parent, api.bounded, records, ordered, interfaces, ["java"])
        products = managed.emit_java(api.parent, api.bounded, records, ordered, interfaces)
        need(set(products) == {"org/uwvm/roswasm/generated/BoundedRecords.java"}, "real complete Java emitter output required")
        raw_java = products["org/uwvm/roswasm/generated/BoundedRecords.java"]
        old_package = "package org.uwvm.roswasm.generated;"
        package = "org.uwvm.roswasm.nvidia.isaacsim.generated"
        need(raw_java.count(old_package) == 1, "one exact package relocation required")
        published_java = raw_java.replace(old_package, "package " + package + ";", 1)
        need(published_java.replace("package " + package + ";", old_package, 1) == raw_java,
             "codec body changed beyond package relocation")
        roots = [item for item in interfaces if item.kind == "service"]
        need(len(roots) == 1 and roots[0].name == "uwvm_isaac_sim_bridge/srv/ClockControl",
             "exact actual clock service root required")
        service = roots[0]
        request, response = service.components["request"], service.components["response"]
        fact = next(row for row in original["types"] if row["type"] == service.name)
        need(service.codec_identity == fact["adapter_codec_identity"], "actual root identity differs")
        factory = "package " + package + ";\nimport org.uwvm.roswasm.OwnedService;\n"
        factory += "/** @brief Complete actual clock service-root binding.\n"
        factory += " * @details Copies original source/root identities; no native registry or authority.\n"
        factory += " * @see BoundedRecords\n */\n"
        factory += "public final class ClockDefinitions { private ClockDefinitions() {}\n"
        factory += "/** @brief Bind both complete real generated component codecs.\n"
        factory += " * @details Construction allocates local metadata only; exact native identity/QoS/policy remains independent.\n"
        factory += " * @return Complete original root definition; no owner is opened.\n"
        factory += " * @see org.uwvm.roswasm.OwnedService\n */\n"
        factory += (
            "public static OwnedService.Definition<BoundedRecords."
            + request.symbol
            + ",BoundedRecords."
            + response.symbol
            + "> create() { return new OwnedService.Definition<>("
        )
        factory += json.dumps(service.name) + "," + json.dumps(service.identity) + "," + json.dumps(service.codec_identity)
        factory += ",BoundedRecords." + request.symbol + ".CODEC," + str(request.maximum)
        factory += ",BoundedRecords." + response.symbol + ".CODEC," + str(response.maximum) + "); }\n}\n"
        constants = "package " + package + ";\n/** @brief Every original declared constant from the actual resolved IR.\n"
        constants += " * @details Exact names/values/unsigned domains; constants consume no wire bytes and grant no rights.\n"
        constants += " * @see BoundedRecords\n */\n"
        constants += "public final class ClockConstants { private ClockConstants() {}\n"
        for record in ordered:
            if not record.constants:
                continue
            constants += "/** @brief Original constants for " + record.name + ".\n * @see BoundedRecords." + record.symbol + "\n */\n"
            constants += "public static final class " + record.symbol + " { private " + record.symbol + "() {}\n"
            for value in record.constants:
                need(re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", value["name"]) and value["name"] not in managed.JAVA_RESERVED,
                     "original constant Java identifier unsupported")
                typ = managed.SCALARS[value["type"]][2]
                expression = api.bounded.scalar_default_expression(value["type"], value["value"], "java")
                constants += (
                    "/** @brief Original "
                    + value["type"]
                    + " declaration "
                    + value["name"]
                    + ".\n * @see BoundedRecords."
                    + record.symbol
                    + "\n */\n"
                )
                constants += "public static final " + typ + " " + value["name"] + "=" + expression + ";\n"
            constants += "}\n"
        constants += "}\n"
        destination = "src/main/java/" + package.replace(".", "/") + "/"
        outputs = {destination + "BoundedRecords.java": published_java.encode(),
                   destination + "ClockDefinitions.java": factory.encode(),
                   destination + "ClockConstants.java": constants.encode()}
        for role, path in paths.items():
            need(read(path) == captured[role], "actual generator source drift: " + role)
        need(read(canonical / "generation.vendor.json") == proof_raw and read(catalog) == catalog_raw,
             "canonical packet/catalog drift")
        for name, raw in canonical_bytes.items():
            need(read(canonical / name) == raw, "canonical product drift")
        for name, raw in definitions.items():
            need(read(inputs / name) == raw, "actual IDL drift")
        out.mkdir(mode=0o700)
        for name, raw in outputs.items():
            path = out / name
            path.parent.mkdir(parents=True, exist_ok=True)
            with path.open("xb") as stream:
                stream.write(raw)
        result = {"format": "uwvm-clock-complete-java-source-v1", "status": "SOURCE_ONLY_NOT_COMPILED",
                  "canonical_proof": pin(proof_raw), "canonical_outputs": original["outputs"],
                  "source_inputs": source_pins, "generator_sources": {role: pin(raw) for role, raw in captured.items()},
                  "original_java_emitter_output": pin(raw_java.encode()), "package_relocations": 1,
                  "codec_body_unchanged_after_package_relocation": True,
                  "declared_constants": api.constant_facts(ordered), "service_facts": fact,
                  "outputs": {name: pin(raw) for name, raw in outputs.items()},
                  "compiler_executions": 0, "guest_executions": 0, "native_exchanges": 0, "default_authority": []}
        with (out / "generation.clock-java.json").open("x") as stream:
            json.dump(result, stream, indent=2, sort_keys=True)
            stream.write("\n")
        return 0
    finally:
        for name, module in modules.values():
            if sys.modules.get(name) is module:
                del sys.modules[name]


if __name__ == "__main__":
    raise SystemExit(main())
