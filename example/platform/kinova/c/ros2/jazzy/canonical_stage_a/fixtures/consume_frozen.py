# SPDX-License-Identifier: Apache-2.0
"""Copy the complete installed C0 artifact inside the VM-owned live boundary."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import sys


def boundary(sdk):
    if sys.platform != "linux":
        raise RuntimeError("BLOCKED_SUPPORTED_LINUX_ENVIRONMENT_REQUIRED")
    sys.path.insert(0, str(Path(sdk) / "tools/shared/python"))
    from simulation_example import LiveBoundary, read_json, process_identity, actor_self_namespace
    selected = os.environ.get("UWVM_ROS_SIMULATION_ADMISSION")
    if not selected:
        raise RuntimeError("BLOCKED_LIVE_VM_EXECUTION_ADMISSION")
    value = LiveBoundary(selected, read_json(selected), process_identity, actor_self_namespace)
    value.guard()
    return value


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--sdk-root", required=True)
    parser.add_argument("--output", required=True)
    args = parser.parse_args()
    live = boundary(args.sdk_root)
    identities = json.loads((Path(__file__).resolve().parents[1] / "profiles/input-identities.json").read_text())
    expected = identities["whole_wasm"]
    source = Path(args.sdk_root) / expected["sdk_path"]
    data = source.read_bytes()
    if len(data) != expected["bytes"] or hashlib.sha256(data).hexdigest() != expected["sha256"]:
        raise RuntimeError("BLOCKED_COMPLETE_FROZEN_C0_IDENTITY")
    live.guard()
    output = Path(args.output)
    output.parent.mkdir(parents=True, exist_ok=True)
    temporary = output.with_name(output.name + ".frozen-new")
    with temporary.open("xb") as stream:
        stream.write(data)
    os.replace(temporary, output)
    if output.read_bytes() != data:
        raise RuntimeError("Frozen whole application copy differs")
    live.guard()
    print(json.dumps({"frozen_application_consumed": True, "sha256": expected["sha256"],
                      "bytes": len(data), "Wasm_recompiled": False}))


if __name__ == "__main__":
    main()
