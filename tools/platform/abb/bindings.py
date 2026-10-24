#!/usr/bin/env python3
"""@brief Prepare complete ABB language bindings from canonical SDK sources.

@details The industrial schema loader, bounded emitter, templates, and original
ABB declarations all reside in tools/ and share/. No origin directory or test
tree participates. This entry emits the official-Go source variant and enriches
existing complete source records with IR-specific English API documentation.
Compilation and actual ROS execution remain separate acceptance steps.
"""

import argparse
import hashlib
import importlib.util
import json
from pathlib import Path
import re
import sys


def load(name, path):
    """@brief Load one fixed trusted SDK maintenance module by absolute path.

    @param name Private module identity required by Python dataclass resolution.
    @param path Existing ordinary maintained Python source path.
    @return The loaded module; catalogs cannot select arbitrary provider code.
    """
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


def sha(raw):
    """@brief Return the SHA256 digest of one immutable source byte sequence."""
    return hashlib.sha256(raw).hexdigest()


def api_for(sdk):
    """@brief Bind the genuine industrial loader to its canonical source closure.

    @param sdk Resolved SDK root containing tools/custom_types and industrial.
    @return Source-paired industrial API with no native identity qualification.
    @details Every emitter input is read from the maintained SDK. The API checks
    that the source bytes used for execution match the selected SHA256 values.
    """
    industrial = sdk / "tools/industrial/vendor_profile.py"
    parent = sdk / "tools/custom_types.py"
    bounded = sdk / "tools/custom_types/bounded_profile.py"
    adapter = load("_abb_industrial_source", industrial)
    originals = {path: path.read_bytes() for path in (industrial, parent, bounded)}
    templates = {
        "interface_templates/bounded_interfaces."
        + extension
        + ".in": (bounded.parent / "interface_templates" / ("bounded_interfaces." + extension + ".in")).read_bytes()
        for extension in ("rs", "mjs", "go", "ts")
    }
    return adapter.API(
        originals[parent],
        originals[bounded],
        parent_path=parent,
        bounded_path=bounded,
        parent_sha256=sha(originals[parent]),
        bounded_sha256=sha(originals[bounded]),
        templates=templates,
        adapter_raw=originals[industrial],
        adapter_sha256=sha(originals[industrial]),
    )


def documentation(body):
    """@brief Tag existing generated contracts without changing program tokens.

    @param body Complete generated C, C++, AssemblyScript, or JavaScript source.
    @return Source with explicit @brief tags on previously untagged API blocks.
    @details Existing operation descriptions and ownership text remain intact.
    This pass never invents a declaration, parameter, controller guarantee, or
    native identity. Detailed typed contracts are supplied separately from IR.
    """

    def tagged(match):
        comment = match.group(0)
        if "@brief" in comment or "@file" in comment or "@typedef" in comment:
            return comment
        return comment.replace("/**", "/** @brief", 1)

    return re.sub(r"/\*\*.*?\*/", tagged, body, flags=re.DOTALL)


def prepare(sdk):
    """@brief Generate both complete official-Go families and annotate existing APIs.

    @param sdk Existing canonical SDK work copy, modified in place.
    @details Output uses the exact original vendor IR and official-Go transport,
    rather than assuming TinyGo build tags are compatible with Go. Generated
    field/default/constant identities remain bound to their original catalogs.
    Source receipts describe generation only; no compiler pass is claimed here.
    """
    api = api_for(sdk)
    sys.path.insert(0, str(sdk / "tools/native_languages"))
    from records import document_records

    products = []
    for backend in (1, 2):
        catalog = sdk / f"share/platform/abb/catalogs/ros{backend}/catalog.preparation.json"
        records, ordered, interfaces, pins = api.load_catalog(catalog, False)
        body = api.records(records, ordered, go_foundation="go")["bounded_records.go"]
        if backend == 1:
            body = body.replace(
                "//go:build wasip1 && wasm && ros2 && !ros1", "//go:build wasip1 && wasm && ros1 && !ros2", 1
            )
        body = document_records("go", body, ordered)
        directory = sdk / f"include/platform/abb/go/ros{backend}/abb-ros{backend}-complete"
        directory.mkdir(parents=True, exist_ok=True)
        (directory / "bounded_records.go").write_text(body)
        (directory / "go.mod").write_text(
            "module uwvm2.local/abb-records-go\n\ngo 1.24\n\n"
            "require uwvm2.local/roswasmgo v0.0.0\n\n"
            "// The transport is the canonical module in this same SDK.\n"
            "replace uwvm2.local/roswasmgo => ../../../../ros/go\n"
        )
        rust = sdk / f"include/platform/abb/rs/ros{backend}/abb-ros{backend}-complete/bounded_records.rs"
        raw = rust.read_text()
        if "@brief" not in raw:
            rust.write_text(document_records("rust", raw, ordered))
        for language, extension in (("c", "h"), ("cpp", "hpp"), ("as", "ts"), ("js", "mjs")):
            for product in ("bounded_records", "bounded_interfaces"):
                path = (
                    sdk
                    / f"include/platform/abb/{language}/ros{backend}/abb-ros{backend}-complete/{product}.{extension}"
                )
                path.write_text(
                    documentation(path.read_text()).replace("sdk/origin/tinygo", "sdk/include/platform/ros/tinygo")
                )
        products.append(
            {
                "backend": backend,
                "records": len(ordered),
                "interfaces": len(interfaces),
                "catalog_sha256": sha(catalog.read_bytes()),
                "go_source": str((directory / "bounded_records.go").relative_to(sdk)),
                "source_inputs": pins,
            }
        )
    metadata = sdk / "lib/platform/abb/bindings.json"
    # Keep C headers consumable from strict C++ translation units as well.
    from c_headers import prepare as prepare_c_headers

    prepare_c_headers(sdk)
    metadata.parent.mkdir(parents=True, exist_ok=True)
    metadata.write_text(
        json.dumps(
            {
                "format": "uwvm-abb-complete-bindings-v1",
                "families": products,
                "compiler_executed_by_generator": False,
                "native_ros_qualified_by_generator": False,
                "default_authority": [],
            },
            indent=2,
        )
        + "\n"
    )


def main():
    """@brief Select the local canonical work copy and prepare source-only outputs."""
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    arguments = parser.parse_args()
    prepare(arguments.sdk.resolve(strict=True))


if __name__ == "__main__":
    main()
