# @file verify_api.py
# @brief Provide the selected typed SDK binding and ownership boundary for nvidia-isaac-ros.
# @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
# for the documented operation and propagate status or language errors without treating a refused call as success.

"""Read-back gate for actual installed headers; no download or substitute API."""

import argparse
import hashlib
import json
from pathlib import Path
import stat

PINS = {
    "buffer.hpp": ("1154cb7bff2dbe11caaecb465316b8ed311e4335", 17215),
    "buffer_impl_base.hpp": ("09216b25ed4bdec97f0ce12d7ec9f66efadf3c3d", 2078),
    "cpu_buffer_impl.hpp": ("0834eb65250c356edd697b3c053358940ece3ffc", 1910),
}
CUDA = {
    "cuda_buffer.hpp": ("6ee347ce91a3ffdbaa7915b1db221766c3b2eac3", 3855),
    "cuda_buffer_api.hpp": ("0393e9ca28570d5d831288b9cfc44ede5b6ae7c6", 5421),
    "cuda_buffer_handle.hpp": ("af24ec69cc70f741c44887e0b45bee0ca322ec2a", 7595),
    "cuda_buffer_impl.hpp": ("834d354f522dfcc973f8ea109142936698277ec7", 6622),
    "cuda_error.hpp": ("7bd94bf67720cd157bfe2feb57b1138438cea9b3", 2789),
    "cuda_memory_pool.hpp": ("c39d9d442d07bf23d599eff08af6f7ed0314a08c", 4633),
    "visibility_control.h": ("b4fe1bccb0d0a971140b41355c7e2b776f78aed7", 1647),
}


def verify(root, pins, namespace):
    if not root.is_absolute():
        raise ValueError("explicit installed include root required")
    rows = []
    for name, (expected, size) in pins.items():
        path = root / namespace / name
        resolved = path.resolve(strict=True)
        info = resolved.stat()
        if not stat.S_ISREG(info.st_mode) or info.st_size != size:
            raise ValueError("actual API size/type changed: " + str(path))
        raw = resolved.read_bytes()
        actual = hashlib.sha1(
            b"blob " + str(len(raw)).encode() + b"\0" + raw
        ).hexdigest()
        if actual != expected:
            raise ValueError("actual API Git blob changed: " + str(path))
        rows.append(
            {
                "path": str(path),
                "resolved": str(resolved),
                "bytes": len(raw),
                "git_blob_sha1": actual,
                "sha256": hashlib.sha256(raw).hexdigest(),
            }
        )
    return rows


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--rosidl-include", type=Path, required=True)
    parser.add_argument("--cuda-include", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    rows = verify(args.rosidl_include, PINS, "rosidl_buffer")
    if args.cuda_include:
        rows += verify(args.cuda_include, CUDA, "cuda_buffer")
    result = {
        "format": "uwvm-native-buffer-api-readback-v1",
        "headers": rows,
        "rosidl_commit": "4537874f320ef8b350c3df7f5b6b487b409fa22f",
        "cuda_buffer_commit": "4f3b257db3a5cc4c8e62d526f11f344c1e5801dc",
        "scope": "selected installed API headers only; not compiled DSO/loader identity",
        "native_exchanges": 0,
        "guest_executions": 0,
        "default_authority": [],
    }
    if args.output.exists():
        if json.loads(args.output.read_bytes()) != result:
            raise ValueError("retained API read-back belongs to different inputs")
    else:
        with args.output.open("x") as stream:
            stream.write(json.dumps(result, indent=2, sort_keys=True) + "\n")


if __name__ == "__main__":
    main()
