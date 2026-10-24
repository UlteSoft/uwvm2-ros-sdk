#!/usr/bin/env python3
"""@brief Emit complete own-language Unitree codecs from the maintained ROS sources.

@details Generation runs locally without invoking a source compiler or a ROS
participant. The SDK's industrial parser preserves every upstream field and
constant; text and sequence limits are explicit canonical quotas. Independently
exported installed ROS metadata is required before a native provider is emitted.
"""

import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import sys
from source_quality import block, prepare_source, shared_sdk


def load(name, path):
    """@brief Load a fixed maintained Python source with a private module identity."""
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


def api_for(sdk):
    """@brief Pair the current industrial and canonical emitters by exact hashes."""
    sdk = shared_sdk(sdk)
    industrial = sdk / "tools/industrial/vendor_profile.py"
    parent = sdk / "tools/custom_types.py"
    bounded = sdk / "tools/custom_types/bounded_profile.py"
    source = {path: path.read_bytes() for path in (industrial, parent, bounded)}
    sha = lambda value: hashlib.sha256(value).hexdigest()
    adapter = load("_unitree_industrial_sources", industrial)
    templates = {
        "interface_templates/bounded_interfaces."
        + ext
        + ".in": (bounded.parent / "interface_templates" / ("bounded_interfaces." + ext + ".in")).read_bytes()
        for ext in ("rs", "mjs", "go", "ts")
    }
    return adapter.API(
        source[parent],
        source[bounded],
        parent_path=parent,
        bounded_path=bounded,
        parent_sha256=sha(source[parent]),
        bounded_sha256=sha(source[bounded]),
        templates=templates,
        adapter_raw=source[industrial],
        adapter_sha256=sha(source[industrial]),
    )


def write(path, text):
    """@brief Replace one owned generated UTF-8 source, creating its parent folder."""
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text)


def prepare(sdk):
    """@brief Generate all fields for both genuine ROS interface families.

    @param sdk SDK root; only this platform's include/lib folders are modified.
    @details A generated codec is source support, never evidence of compiler,
    runtime, native transport, physical hardware, or memory64 qualification.
    """
    api = api_for(sdk)
    # Publish record modules only for the admitted routes. The Objective-C and
    # C FFI facades reuse the complete C records rather than duplicating codecs.
    published_record_extensions = {
        "h": "c",
        "hpp": "cpp",
        "rs": "rs",
        "ts": "as",
        "go": "tinygo",
    }
    families = []
    for version in (1, 2):
        catalog = sdk / f"share/platform/unitree/catalogs/ros{version}/catalog.preparation.json"
        records, ordered, interfaces, pins = api.load_catalog(catalog, False)
        products = api.records(records, ordered)
        for filename, body in products.items():
            extension = filename.split(".")[-1]
            if extension not in published_record_extensions:
                continue
            language = published_record_extensions[extension]
            if language in ("c", "cpp"):
                body = re.sub(
                    r"/\*\*.*?\*/",
                    block(
                        [
                            "@file records." + extension,
                            "@brief Preserve all complete original Unitree ROS " + str(version) + " canonical records.",
                            (
                                "@details Every field retains its original width, signedness, order and finite quota. "
                                "Caller-owned inline records remain distinct from installed native ROS objects; construction "
                                "grants no transport authority."
                            ),
                        ]
                    ),
                    body,
                    count=1,
                    flags=re.S,
                )
                body = body.replace('"bounded_records.h"', f"<unitree/c/ros{version}/records.h>")
                body = body.replace(
                    "<platform/ros/c/custom-types/bounded-v2/bounded_records.h>",
                    f"<unitree/c/ros{version}/records.h>",
                )
                body = body.replace(
                    "UWVM_ROS_BOUNDED_RECORDS",
                    f"UWVM_UNITREE_ROS{version}_BOUNDED_RECORDS",
                )
                body = body.replace("UWVM_ROS_BOUNDED_CPP", f"UWVM_UNITREE_ROS{version}_BOUNDED_CPP")
                body = body.replace(
                    "UWVM_ROS_BOUNDED_CODEC_HELPERS",
                    f"UWVM_UNITREE_ROS{version}_BOUNDED_CODEC_HELPERS",
                )
                body = body.replace("uwvm_bounded_", f"unitree_ros{version}_bounded_")
                body = body.replace("UWVM_BOUNDED_", f"UNITREE_ROS{version}_BOUNDED_")
            body = re.sub(r'from [\'"](?:\.\./)+ros/as/', 'from "ros/as/', body)
            body = body.replace('"../../ros/as/', '"ros/as/').replace("'../../ros/as/", "'ros/as/")
            body = body.replace("../../assemblyscript/codecs", "ros/as/codecs")
            body = body.replace("ControlCodecError", "UnitreeCodecError").replace(
                "invalid original-control canonical value",
                "invalid Unitree canonical value",
            )
            if language == "as":
                body = body.replace("<u32>(-n)", "<u32>-n")
            body = prepare_source(sdk, language, extension, body, ordered)
            write(
                sdk / f"include/platform/unitree/{language}/ros{version}/records.{extension}",
                body,
            )
        go = api.records(records, ordered, go_foundation="go")["bounded_records.go"]
        go = prepare_source(sdk, "go", "go", go, ordered)
        write(sdk / f"include/platform/unitree/go/ros{version}/records.go", go)
        for language in ("go", "tinygo"):
            transport = "roswasmgo" if language == "go" else "roswasm"
            write(
                sdk / f"include/platform/unitree/{language}/ros{version}/go.mod",
                f"module uwvm2.local/unitree-records-{language}-ros{version}\n\ngo 1.24\n\nrequire uwvm2.local/{transport} v0.0.0\n",
            )
        families.append(
            {
                "ros_version": version,
                "source_inputs": pins,
                "records": [
                    {
                        "type": record.name,
                        "symbol": record.symbol,
                        "c_symbol": record.c_symbol,
                        "codec_identity": record.codec_identity,
                        "minimum_wire_bytes": record.minimum,
                        "maximum_wire_bytes": record.maximum,
                        "fields": [dict(vars(member)) for member in record.members],
                    }
                    for record in ordered
                ],
                "interfaces": [{"type": item.name, "kind": item.kind} for item in interfaces],
            }
        )
    write(
        sdk / "share/platform/unitree/bindings.json",
        json.dumps(
            {
                "format": "uwvm-unitree-bindings-v1",
                "families": families,
                "default_authority": [],
                "record_source_languages": [
                    "c",
                    "cpp",
                    "as",
                    "rs",
                    "go",
                    "tinygo",
                ],
                "compiler_executed_by_generator": False,
                "native_ros_qualified_by_generator": False,
                "physical_hardware_tested": False,
            },
            indent=2,
        )
        + "\n",
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    prepare(parser.parse_args().sdk.resolve(strict=True))
