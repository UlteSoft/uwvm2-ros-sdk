#!/usr/bin/env python3
"""@brief Bind complete Unitree source schemas to independent installed ROS metadata.

@details This pure preparation step uses an actual native metadata receipt read
from the separately compiled ROS reader. It never computes a guessed native
identity, runs a compiler, or grants transport authority. Its exact manifest and
provider must be selected together when building both runtime and gateway.
"""

import argparse
import hashlib
import json
from pathlib import Path
from binding_sources import api_for, write
from native_source_quality import prepare_native_source


def bind(sdk, catalog, metadata, output):
    """@brief Generate formatted native adapters after complete metadata validation.

    @param sdk Authored Unitree SDK review root with the maintained source catalogs.
    @param catalog Exact original source preparation catalog with finite quotas.
    @param metadata Independent JSON native type hash/description receipt.
    @param output Owned source-output directory; existing files are replaced.
    @details The output does not establish robot reachability or service/topic
    behavior. Actual native execution is qualified separately per example.
    """
    api = api_for(sdk)
    helper = sdk / "tools/platform/unitree/native/metadata_reader.cc.in"
    bound, receipt = api.bind(catalog, metadata.read_bytes())
    bound_path = catalog.parent / "catalog.bound.json"
    write(bound_path, json.dumps(bound, indent=2) + "\n")
    products, proof = api.products(
        bound_path, guest_only=False, helper_source=helper.read_bytes()
    )
    _, ordered, _, _ = api.load_catalog(bound_path, True)
    reviewed = {}
    for name in (
        "manifest.hpp",
        "native_ros2.hpp",
        "native_ros1.hpp",
        "native_constants.hpp",
        "bounded_records.h",
    ):
        if name in products:
            body = prepare_native_source(sdk, name, products[name], ordered)
            write(output / name, body)
            reviewed[name] = {
                "bytes": len(body.encode()),
                "sha256": hashlib.sha256(body.encode()).hexdigest(),
            }
    proof["reviewed_native_source_outputs"] = reviewed
    write(output / "generation.json", json.dumps(proof, indent=2) + "\n")
    write(output / "native-binding.json", json.dumps(receipt, indent=2) + "\n")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--catalog", type=Path, required=True)
    parser.add_argument("--metadata", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    bind(
        args.sdk.resolve(strict=True),
        args.catalog.resolve(strict=True),
        args.metadata.resolve(strict=True),
        args.output.resolve(),
    )
