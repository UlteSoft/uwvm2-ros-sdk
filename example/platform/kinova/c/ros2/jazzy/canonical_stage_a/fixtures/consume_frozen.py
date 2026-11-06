# SPDX-License-Identifier: Apache-2.0
"""Stage the hash-pinned installed C0 artifact without executing guest code."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import tempfile


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--sdk-root", required=True)
    parser.add_argument("--output", required=True)
    args = parser.parse_args()
    identities = json.loads((Path(__file__).resolve().parents[1] / "profiles/input-identities.json").read_text())
    expected = identities["whole_wasm"]
    source = Path(args.sdk_root) / expected["sdk_path"]
    data = source.read_bytes()
    if len(data) != expected["bytes"] or hashlib.sha256(data).hexdigest() != expected["sha256"]:
        raise RuntimeError("BLOCKED_COMPLETE_FROZEN_C0_IDENTITY")
    output = Path(args.output)
    output.parent.mkdir(parents=True, exist_ok=True)
    # Artifact staging is a build step. The scenario runner independently
    # requires live admission before executing this Wasm or any ROS actor.
    temporary = None
    try:
        with tempfile.NamedTemporaryFile(mode="wb", dir=output.parent,
                                         prefix=output.name + ".frozen-", delete=False) as stream:
            temporary = Path(stream.name)
            stream.write(data)
        os.replace(temporary, output)
    finally:
        if temporary is not None:
            temporary.unlink(missing_ok=True)
    if output.read_bytes() != data:
        raise RuntimeError("Frozen whole application copy differs")
    print(json.dumps({"frozen_application_consumed": True, "sha256": expected["sha256"],
                      "bytes": len(data), "Wasm_recompiled": False}))


if __name__ == "__main__":
    main()
