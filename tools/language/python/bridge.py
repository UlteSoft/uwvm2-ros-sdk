"""Real CPython/Wasm compatibility bridge inputs shared by both engine builders.

This does not adapt the simpler _uwvm_ros module by aliasing its name.  The
original copied-buffer _roswasm_native implementation retains backend identity,
retirement witnesses, exact unsigned words and original ROS errno semantics.
"""
import hashlib
from pathlib import Path


def bridge(sdk, backend):
    """Select one genuine Wasm bridge; opening it grants no ROS capability."""
    sdk = Path(sdk).resolve(strict=True)
    if backend not in ("ros1", "ros2"):
        raise ValueError("One explicit ROS1/ROS2 backend is required")
    version = 1 if backend == "ros1" else 2
    source = "src/platform/ros/py/_native.c"
    headers = ["include/platform/ros/c/roswasm/detail/common/abi.h",
               f"include/platform/{backend}/c/roswasm/detail/{backend}/abi.h"]
    inputs = []
    for relative in [source, *headers]:
        filename = sdk / relative
        if not filename.is_file() or not filename.resolve().is_relative_to(sdk):
            raise ValueError("The complete installed bridge source is required")
        inputs.append({"path": relative, "bytes": filename.stat().st_size,
                       "sha256": hashlib.sha256(filename.read_bytes()).hexdigest()})
    return {"sources": [sdk / source], "inputs": inputs,
            "flags": [f"-DROSWASM_BACKEND={version}", "-DROSWASM_OWNED_SERVICE=0",
                      "-I" + str(sdk / "include"),
                      "-I" + str(sdk / f"include/platform/{backend}/c/roswasm/detail")]}
