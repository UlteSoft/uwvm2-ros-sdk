"""Explicit read-only Jetson deployment inventory, outside Wasm.

Exact module/carrier/BSP/model-weight/toolchain compatibility remains an
operator-selected, separately verified deployment fact. Jetson is a platform,
not a ROS motor driver or an extra Guest management capability.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import platform
import stat


def ordinary(path, maximum):
    """@brief Read all bytes of one stable ordinary platform property.

    @details Opens without following a final symlink, closes its descriptor on
    every outcome, bounds the read and checks before/after descriptor/name
    identity. Device-tree/sysfs files may report initial size zero; counted bytes
    are retained, including NULs. The caller freezes ancestors and supplies native
    read permission. This synchronous operation executes/installs no payload.
    @param[in] path Explicit selected property/package file path.
    @param[in] maximum Nonnegative whole-file byte quota.
    @return Independent immutable bytes. ValueError rejects nonordinary files,
    growth/identity drift; OSError/allocation failures propagate.
    @see main
    @see package_contract.inspect
    """
    fd = os.open(path, os.O_RDONLY | os.O_NOFOLLOW | os.O_NONBLOCK | os.O_CLOEXEC)
    try:
        first = os.fstat(fd)
        if not stat.S_ISREG(first.st_mode):
            raise ValueError("ordinary selected platform property required")
        out = bytearray()
        while True:
            chunk = os.read(fd, min(4096, maximum - len(out) + 1))
            if not chunk:
                break
            out.extend(chunk)
            if len(out) > maximum:
                raise ValueError("platform property grew past quota")
        last = os.fstat(fd)
        named = os.lstat(path)
        key = lambda s: (
            s.st_dev,
            s.st_ino,
            s.st_mode,
            s.st_size,
            s.st_mtime_ns,
            s.st_ctime_ns,
        )
        if key(first) != key(last) or key(last) != key(named):
            raise ValueError("platform property identity changed")
        # Device-tree/sysfs virtual properties may report size0 before reading;
        # exact counted bytes are retained, never strlen/strip-NUL projected.
        return bytes(out)
    finally:
        os.close(fd)


def main(argv=None):
    """@brief Observe exact Jetson model/release bytes after explicit read-only admission.

    @details Returns 13 before reading properties unless enabled, and 95 on an
    actual non-aarch64 host. Enabled reads require independent SHA-256 pins and
    at most 65536 bytes per property. Complete bytes are reported as hex without
    stripping NULs. Module/carrier/JetPack/CUDA labels are operator metadata, not
    board, BSP, loader, GPU or model compatibility proof. No installation,
    dynamic loading, CUDA initialization, daemon or robot action occurs.
    @param[in] argv Optional immutable CLI list; None uses sys.argv. Native read
    rights and a finite external process owner are supplied independently.
    @return 0 after a matching observation, 13 for missing admission/hash mismatch,
    22 for invalid explicit paths/pins, or 95 for architecture mismatch. Parser,
    I/O and allocation failures may propagate; no Guest rights are granted.
    @see ordinary
    @see README.md
    """
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--enable-read-only-native", action="store_true")
    p.add_argument("--model-file", required=True)
    p.add_argument("--model-sha256", required=True)
    p.add_argument("--release-file", required=True)
    p.add_argument("--release-sha256", required=True)
    p.add_argument("--carrier-label", required=True)
    p.add_argument("--module-label", required=True)
    p.add_argument("--jetpack-label", required=True)
    p.add_argument("--cuda-label", required=True)
    a = p.parse_args(argv)
    if not a.enable_read_only_native:
        return 13
    if platform.machine() != "aarch64":
        return 95
    rows = []
    for name, path, expected in [
        ("model", a.model_file, a.model_sha256),
        ("release", a.release_file, a.release_sha256),
    ]:
        if (
            not Path(path).is_absolute()
            or len(expected) != 64
            or any(c not in "0123456789abcdef" for c in expected)
        ):
            return 22
        raw = ordinary(path, 65536)
        actual = hashlib.sha256(raw).hexdigest()
        if actual != expected:
            return 13
        rows.append(
            {
                "role": name,
                "path": path,
                "bytes": len(raw),
                "sha256": actual,
                "hex": raw.hex(),
            }
        )
    print(
        json.dumps(
            {
                "format": "uwvm-jetson-read-only-observation-v1",
                "architecture": platform.machine(),
                "properties": rows,
                "operator_labels": {
                    "module": a.module_label,
                    "carrier": a.carrier_label,
                    "JetPack": a.jetpack_label,
                    "CUDA": a.cuda_label,
                },
                "labels_are_native_compatibility_proof": False,
                "guest_management_grants": 0,
            },
            sort_keys=True,
        )
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
