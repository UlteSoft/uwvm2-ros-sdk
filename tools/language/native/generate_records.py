#!/usr/bin/env python3
"""@brief Author complete native record codecs from the shared source-pinned IR.

@details This is maintenance source preparation. It invokes no compiler, guest
runtime, middleware, or permission service. Native registration identities must
come from independent installed ROS metadata; this command invents none.
"""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import sys

sys.dont_write_bytecode = True
sys.path.insert(0, str(Path(__file__).resolve().parents[2] / "shared"))

from backend_layout import profile_path
from record_emitters import emit, bind_rules
from additional_record_emitters import haskell, odin, swift
from source_layout import haskell as layout_haskell


def sha256(path):
    """@brief Hash exact ordinary source bytes for a portable source receipt."""
    return hashlib.sha256(Path(path).read_bytes()).hexdigest()


def api_for(sdk, overlay=None, native_rules=None):
    """@brief Load the shared canonical parser and fixed original templates.

    @param sdk Complete SDK source root with the public industrial IR loader.
    @return Independent source-paired parser API; no globals in that SDK change.
    """

    def source(relative):
        candidate = overlay / relative if overlay else sdk / relative
        return candidate if candidate.is_file() else sdk / relative

    industrial = source("tools/industrial/vendor_profile.py")
    parent = sdk / "tools/custom_types.py"
    bounded = sdk / "tools/custom_types/bounded_profile.py"
    spec = importlib.util.spec_from_file_location("_native_shared_ir", industrial)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    templates = {}
    for extension in ("rs", "mjs", "go", "ts"):
        relative = f"interface_templates/bounded_interfaces.{extension}.in"
        templates[relative] = source("tools/custom_types/" + relative).read_bytes()
    rules_path = (
        Path(native_rules).resolve(strict=True) if native_rules else source("tools/native_languages/records.py")
    )
    sys.path.insert(0, str(sdk / "tools/native_languages"))
    sys.path.insert(0, str(rules_path.parent))
    rules_spec = importlib.util.spec_from_file_location("_native_shared_literal_rules", rules_path)
    rules = importlib.util.module_from_spec(rules_spec)
    rules_spec.loader.exec_module(rules)
    bind_rules(rules)
    return module.API(
        parent.read_bytes(),
        bounded.read_bytes(),
        parent_path=parent,
        bounded_path=bounded,
        parent_sha256=sha256(parent),
        bounded_sha256=sha256(bounded),
        templates=templates,
        adapter_raw=industrial.read_bytes(),
        adapter_sha256=sha256(industrial),
    )


def generate(api, catalog, destination, namespace, profile, major):
    """@brief Preserve every supplied record/component in six genuine languages.

    @param api Exact source-paired shared complete ROS parser.
    @param catalog Complete provider-owned catalog and original definitions.
    @param destination Writable installed SDK candidate root.
    @param namespace Public platform import identifier.
    @param profile Provider-owned exact catalog selector.
    @param major Original ROS source family, one or two.
    @return Complete portable inventory including every field and source hash.
    """
    if not re.fullmatch(r"[a-z][a-z0-9_]*", namespace):
        raise ValueError("Use a lowercase public platform namespace")
    if not re.fullmatch(r"[a-z][a-z0-9_]*", profile):
        raise ValueError("Use a normalized catalog profile identifier")
    records, ordered, interfaces, pins = api.load_catalog(catalog.resolve(strict=True), False)
    if any(record.version != major for record in ordered):
        raise ValueError("The declared ROS major disagrees with the source catalog")
    outputs = []
    for language in ("zig", "d", "nim", "haskell", "odin", "swift"):
        emitter = {"haskell": haskell, "odin": odin, "swift": swift}.get(language)
        arguments = (major, records, ordered, api.env["standard_semantics"], namespace, profile)
        text = emitter(*arguments) if emitter else emit(language, *arguments)
        if language == "haskell":
            text = layout_haskell(text)
        filename = {
            "zig": "records.zig",
            "d": "records.d",
            "nim": "records.nim",
            "haskell": "Records.hs",
            "odin": "records.odin",
            "swift": "Records.swift",
        }[language]
        directory = destination / f"include/platform/{namespace}/{language}/{profile_path(profile)}"
        if language == "haskell":
            directory = (
                destination / f"include/platform/{namespace}/haskell/{namespace.capitalize()}/{profile.capitalize()}"
            )
        directory.mkdir(parents=True, exist_ok=True)
        output = directory / filename
        output.write_text(text)
        outputs.append({"path": output.relative_to(destination).as_posix(), "sha256": sha256(output)})
    # The shared loader's source pins may include build-machine paths. Publish
    # only the bytes' identity and catalog-local roles; raw receipts stay private.
    source_pins = []
    for pin in pins:
        if isinstance(pin, dict):
            source_pins.append(
                {key: value for key, value in pin.items() if key in ("sha256", "bytes", "type", "role", "ros_version")}
            )
    return {
        "format": "uwvm-native-record-source-v1",
        "namespace": namespace,
        "profile": profile,
        "ros_major": major,
        "catalog_sha256": sha256(catalog),
        "record_count": len(ordered),
        "interface_count": len(interfaces),
        "field_count": sum(len(record.members) for record in ordered),
        "constant_count": sum(len(record.constants) for record in ordered),
        "records": [
            {
                "type": record.name,
                "symbol": record.symbol,
                "c_symbol": record.c_symbol,
                "minimum": record.minimum,
                "maximum": record.maximum,
                "codec_identity": record.codec_identity,
                "members": [vars(member) for member in record.members],
                "constants": record.constants,
            }
            for record in ordered
        ],
        "interfaces": [
            {
                "type": interface.name,
                "kind": interface.kind,
                "components": {role: record.name for role, record in interface.components.items()},
            }
            for interface in interfaces
        ],
        "outputs": outputs,
        "source_pins": source_pins,
        "implemented": True,
        "built": False,
        "executed": False,
        "native_registration": False,
        "default_authority": [],
    }


def main():
    """@brief Author one explicit provider profile without compiling or running it."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--shared-sdk", required=True, type=Path)
    parser.add_argument("--shared-generator-overlay", type=Path)
    parser.add_argument("--native-rules", type=Path, help="Exact reviewed shared native rule source for maintenance")
    parser.add_argument("--catalog", required=True, type=Path)
    parser.add_argument("--destination-sdk", required=True, type=Path)
    parser.add_argument("--namespace", required=True)
    parser.add_argument("--profile", required=True)
    parser.add_argument("--ros-major", type=int, choices=(1, 2), required=True)
    args = parser.parse_args()
    report = generate(
        api_for(args.shared_sdk.resolve(strict=True), args.shared_generator_overlay, args.native_rules),
        args.catalog,
        args.destination_sdk.resolve(strict=True),
        args.namespace,
        args.profile,
        args.ros_major,
    )
    location = args.destination_sdk / f"share/platform/{args.namespace}/native-records/{args.profile}.json"
    location.parent.mkdir(parents=True, exist_ok=True)
    location.write_text(json.dumps(report, indent=2) + "\n")
    print(json.dumps({"record_count": report["record_count"], "interface_count": report["interface_count"]}))


if __name__ == "__main__":
    main()
