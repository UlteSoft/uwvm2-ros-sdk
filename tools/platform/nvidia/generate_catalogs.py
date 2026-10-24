#!/usr/bin/env python3
"""@file generate_catalogs.py
@brief Emit NVIDIA's complete canonical catalogs using the shared source loader.
@details This tool supplies platform schemas, not a second parser or compiler.
It preserves every original message field and service component. Generated guest
code does not assert a native identity, grant ROS rights or qualify a language.
"""

import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import subprocess
import sys
import types
sys.dont_write_bytecode = True
from source_documentation import decorate, readable_lines


def load(name, path):
    """@brief Load one trusted SDK maintenance module under an isolated identity."""
    specification = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(specification)
    sys.modules[name] = module
    specification.loader.exec_module(module)
    return module


def api_for(sdk):
    """@brief Capture and pair the one shared industrial/canonical source loader.
    @param sdk Read-only installed SDK; source bytes remain caller-owned.
    @return API and exact generator source identities, with no native metadata.
    @exception ValueError Shared source verification or a complete template fails.
    """
    industrial = sdk / "tools/industrial/vendor_profile.py"
    parent = sdk / "tools/custom_types.py"
    bounded = sdk / "tools/custom_types/bounded_profile.py"
    adapter = load("_nvidia_shared_industrial", industrial)
    sources = {path: path.read_bytes() for path in (industrial, parent, bounded)}
    digest = lambda value: hashlib.sha256(value).hexdigest()
    templates = {"interface_templates/bounded_interfaces." + extension + ".in":
                 (bounded.parent / "interface_templates" / ("bounded_interfaces." + extension + ".in")).read_bytes()
                 for extension in ("rs", "mjs", "go", "ts")}
    api = adapter.API(sources[parent], sources[bounded], parent_path=parent, bounded_path=bounded,
                      parent_sha256=digest(sources[parent]), bounded_sha256=digest(sources[bounded]),
                      templates=templates, adapter_raw=sources[industrial], adapter_sha256=digest(sources[industrial]))
    return api


def public_source(body, platform, language):
    """@brief Use installed public module roots without changing codec semantics."""
    body = body.replace("<platform/", "<")
    body = body.replace('"bounded_records.h"', "<" + platform + "/c/ros2/complete/records.h>")
    if language == "cpp":
        body = body.replace('"bounded_records.hpp"', "<" + platform + "/cpp/ros2/complete/records.hpp>")
        body = body.replace('"bounded_interfaces.h"', "<" + platform + "/c/ros2/complete/interfaces.h>")
    body = body.replace("<ros/c/custom-types/bounded-v2/bounded_records.h>", "<" + platform + "/c/ros2/complete/records.h>")
    body = body.replace('"../../../../ros/as/codecs"', '"ros/as/codecs"')
    body = body.replace('"../../assemblyscript/codecs"', '"ros/as/codecs"')
    body = body.replace('"../../../../ros/js/roswasm/codecs.mjs"', '"ros/js/roswasm/codecs.mjs"')
    guard = re.sub("[^A-Z0-9]", "_", platform.upper())
    body = body.replace("UWVM_ROS_BOUNDED_RECORDS", "UWVM_" + guard + "_COMPLETE_RECORDS")
    body = body.replace("UWVM_ROS_BOUNDED_CPP", "UWVM_" + guard + "_COMPLETE_CPP")
    body = body.replace("UWVM_BOUNDED_INTERFACES_H", "UWVM_" + guard + "_COMPLETE_INTERFACES_H")
    body = body.replace("UWVM_BOUNDED_INTERFACES_HPP", "UWVM_" + guard + "_COMPLETE_INTERFACES_HPP")
    return body


def main():
    """@brief Write complete sources and exact field metadata to an owned overlay.
    @return No value; schema and source errors propagate without success receipts.
    @details Common generator gaps are not hidden by omitting a catalog member.
    All generated files remain candidates until genuine compilation/execution.
    """
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--output-sdk", type=Path, required=True)
    parser.add_argument("--formatter", type=Path, help="Explicit verified clang-format maintenance input")
    parser.add_argument("--gofmt", type=Path, help="Explicit verified Go source formatter maintenance input")
    args = parser.parse_args()
    sdk, output = args.sdk.resolve(strict=True), args.output_sdk.resolve(strict=True)
    api = api_for(sdk)
    routes = {"h": "c", "hpp": "cpp", "rs": "rs", "mjs": "js", "ts": "as", "go": "tinygo"}
    # These are the exact shared emitters approved in the parent source delta.
    # Only schemas and output locations are platform-owned here.
    helper_root = sdk / "tools/native_languages"
    documentation = load("_nvidia_shared_documentation", helper_root / "documentation.py")
    previous_documentation = sys.modules.get("documentation")
    previous_records = sys.modules.get("records")
    sys.modules["documentation"] = documentation
    native = load("_nvidia_shared_records", helper_root / "records.py")
    sys.modules["records"] = native
    native_more = load("_nvidia_shared_records_native", helper_root / "records_native.py")
    managed = load("_nvidia_shared_managed", sdk / "tools/custom_types/managed_profile.py")
    python_records = load("_nvidia_shared_python_records", sdk / "tools/platform/ros/py/control_python_emitter.py")
    moonbit = load("_nvidia_shared_moonbit", sdk / "tools/custom_types/moonbit_profile.py")
    profile = types.SimpleNamespace(**api.env)
    formatters = {}
    for key, program in (("clang-format", args.formatter), ("gofmt", args.gofmt)):
        if program is not None:
            program = program.resolve(strict=True)
            formatters[key] = {"name": program.name, "sha256": hashlib.sha256(program.read_bytes()).hexdigest()}

    def prepare(body, platform, language, filename):
        """@brief Normalize imports, documentation and declared source formatting."""
        body = decorate(public_source(body, platform, language), language)
        if args.formatter and language in ("c", "cpp", "as", "js", "java", "csharp"):
            result = subprocess.run([str(args.formatter), "--assume-filename=" + filename,
                "-style={BasedOnStyle: LLVM, IndentWidth: 4, ColumnLimit: 120, BreakBeforeBraces: Allman}"],
                input=body, capture_output=True, text=True, check=True)
            body = result.stdout
        if args.gofmt and language in ("go", "tinygo"):
            body = subprocess.run([str(args.gofmt)], input=body, capture_output=True, text=True, check=True).stdout
        return readable_lines(body, language)
    for platform in ("nvidia-groot", "nvidia-isaac-ros", "nvidia-isaac-sim"):
        catalog = output / "share/platform" / platform / "schemas/ros2/catalog.complete.json"
        records, ordered, interfaces, pins = api.load_catalog(catalog, False)
        products = api.records(records, ordered)
        products["bounded_interfaces.h"] = api.env["emit_c_interfaces"](interfaces)
        products["bounded_interfaces.hpp"] = api.env["emit_cpp_interfaces"](interfaces)
        facts = {"format": "uwvm-nvidia-complete-catalog-v1", "source_only": True,
                 "native_registry_emitted": False, "generator_inputs": api.sources,
                 "platform_generator_sha256": hashlib.sha256(Path(__file__).read_bytes()).hexdigest(),
                 "source_documentation_sha256": (
                     hashlib.sha256(Path(__file__).with_name("source_documentation.py").read_bytes()).hexdigest()
                 ),
                 "source_inputs": pins, "formatting_inputs": formatters,
                 "records": [], "interfaces": [], "outputs": []}
        for record in ordered:
            facts["records"].append({"type": record.name, "symbol": record.symbol,
                                      "codec_identity": record.codec_identity,
                                      "minimum_wire_bytes": record.minimum, "maximum_wire_bytes": record.maximum,
                                      "constants": record.constants, "members": [dict(vars(member)) for member in record.members]})
        for interface in interfaces:
            facts["interfaces"].append({"type": interface.name, "kind": interface.kind,
                                         "components": {name: value.symbol for name, value in interface.components.items()}})
        # Genuine Go and TinyGo share source schema, but choose their own public
        # ROS foundation. Neither is a renamed C implementation.
        go = api.records(records, ordered, go_foundation="go")["bounded_records.go"]
        products["records.go-go"] = go
        optional = {}
        for language, function, filename in (
            ("swift", native.swift, "Records.swift"), ("nim", native.nim, "records.nim"),
            ("haskell", native.haskell, "RosWasm/Records.hs"),
            ("d", native_more.d, "records.d"), ("odin", native_more.odin, "records.odin"),
            ("zig", native_more.zig, "records.zig"),
        ):
            optional[(language, filename)] = function(profile, records, ordered)
        managed.validate_ir(api.parent, profile, records, ordered, interfaces, ("python", "java", "csharp"))
        for language, function in (("py", python_records.emit_python), ("java", managed.emit_java), ("csharp", managed.emit_csharp)):
            for filename, body in function(api.parent, profile, records, ordered, interfaces).items():
                optional[(language, filename)] = body
        runtime = (sdk / "tools/custom_types/moonbit_runtime.mbt.in").read_text()
        for filename, body in moonbit.emit(api.parent, profile, records, ordered, interfaces, runtime).items():
            if filename.endswith(".json") or filename.endswith(".pkg"):
                continue
            optional[("moonbit", filename)] = body
        for name, body in products.items():
            extension = name.rsplit(".", 1)[-1]
            language = "go" if name == "records.go-go" else routes.get(extension)
            if language is None:
                continue
            basename = "interfaces" if "interfaces" in name else "records"
            extension = "go" if language == "go" else extension
            relative = Path("include/platform", platform, language, "ros2/complete", basename + "." + extension)
            body = prepare(body, platform, language, str(relative.name))
            target = output / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_text(body)
            facts["outputs"].append({"path": str(relative), "sha256": hashlib.sha256(body.encode()).hexdigest()})
        for (language, filename), body in optional.items():
            relative = Path("include/platform", platform, language, "ros2/complete", filename)
            body = prepare(body, platform, language, str(relative.name))
            target = output / relative
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_text(body)
            facts["outputs"].append({"path": str(relative), "sha256": hashlib.sha256(body.encode()).hexdigest()})
        path = output / "share/platform" / platform / "catalog.json"
        path.write_text(json.dumps(facts, indent=2) + "\n")
    if previous_records is None:
        sys.modules.pop("records", None)
    else:
        sys.modules["records"] = previous_records
    if previous_documentation is None:
        sys.modules.pop("documentation", None)
    else:
        sys.modules["documentation"] = previous_documentation


if __name__ == "__main__":
    main()
