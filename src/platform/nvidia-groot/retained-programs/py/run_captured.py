"""Actual source-bound native entry. No ambient adapter or SDK PYC admission.

Run this entry, not an arbitrary import of native_owner. The normal Python
interpreter reads this __main__ script; explicit adapter source names and SHA are
captured below and executed exactly after sys.modules registration. Root still
owns/freeze-qualifies the Python/native dependency environment and model tree.
"""

import argparse
import hashlib
import os
from pathlib import Path
import stat
import sys
import types

# @brief Exact current authored adapter source identities, distinct from SDK pins.
# @details Refreshed after reviewed formatting/documentation; the independently
# fixed original SDK inventory and historical evidence hashes remain unchanged.
# @see run
EXPECTED = {
    "owned_sdk_source": "8c687d73933d5929ad90992caf876468e3cca65ac0cc5cd16d0eac7393351201",
    "native_conversion": "ae7d5d5c5615f6b0e8d0e089d0de4a82484228b88413a2b9157c9aaab423352f",
    "staged_video": "0ad3512a8e0f7dfb97bbe80ac295bdd169292b1bceed99b6aa10f03bbbd28cb5",
    "native_owner": "aefb228c68e987e51bf22be84feffe10d508595d2858acc8be4a6f5a341eda67",
}


def read(path):
    """@brief Capture a stable ordinary adapter source of at most 131072 bytes.

    @details Opens without following a final symlink and verifies the full
    descriptor/name identity and byte extent before returning owned bytes. This
    reads only an explicitly selected native file and executes no code.
    @param[in] path Physical explicitly selected adapter file retained unchanged by its owner.
    @return Immutable source bytes; ValueError/OSError/allocation failures
    propagate. Synchronous startup use; no permissions are granted.
    @see run
    """
    fd = os.open(path, os.O_RDONLY | os.O_NOFOLLOW | os.O_NONBLOCK | os.O_CLOEXEC)
    try:
        first = os.fstat(fd)
        if not stat.S_ISREG(first.st_mode) or not 0 <= first.st_size <= 131072:
            raise ValueError("bounded adapter source required")
        raw = bytearray()
        while True:
            b = os.read(fd, min(16384, 131073 - len(raw)))
            if not b:
                break
            raw.extend(b)
            if len(raw) > 131072:
                raise ValueError("adapter grew")
        last = os.fstat(fd)
        named = os.lstat(path)
        key = lambda s: (
            s.st_dev,
            s.st_ino,
            s.st_mode,
            s.st_size,
            s.st_mtime_ns,
            s.st_ctime_ns,
            s.st_nlink,
        )
        if (
            len(raw) != first.st_size
            or key(first) != key(last)
            or key(last) != key(named)
        ):
            raise ValueError("adapter source/name drift")
        return bytes(raw)
    finally:
        os.close(fd)


def run(argv=None):
    """@brief Admit all four authored adapter sources before invoking the native CLI.

    @details Reads exact explicitly selected adapter names, verifies EXPECTED hashes, registers each
    module before compiling/executing its captured bytes, and refuses previously
    imported adapters. No ambient adapter/PYC is substituted. native_owner.main
    performs its own default denial before SDK/model/ROS/CUDA admission. The
    operator freezes the native Python environment and serializes startup.
    @return native_owner.main's numeric status. Source/import/compile failures
    propagate; no robot or Guest effect is inferred from a successful import.
    @see EXPECTED
    @see native_owner.main
    @see owned_sdk_source.capture
    """
    arguments = list(sys.argv[1:] if argv is None else argv)
    if "--enable-native-inference" not in arguments:
        return 13
    if sys.implementation.name != "cpython" or sys.version_info[:2] != (3, 12):
        return 95
    selection = argparse.ArgumentParser(add_help=False)
    selection.add_argument("--adapter-root", type=Path, required=True)
    selected, native_arguments = selection.parse_known_args(arguments)
    root = selected.adapter_root
    if not root.is_absolute() or root.resolve(strict=True) != root or not root.is_dir():
        raise ValueError("explicit physical native adapter root required")
    captured = {}
    for name, digest in EXPECTED.items():
        if name in sys.modules:
            raise ValueError("adapter already imported")
        path = root / (name + ".py")
        raw = read(path)
        if hashlib.sha256(raw).hexdigest() != digest:
            raise ValueError("adapter Source SHA differs: " + name)
        captured[name] = (path, raw)
    for name, (path, raw) in captured.items():
        module = types.ModuleType(name)
        module.__file__ = str(path)
        sys.modules[name] = module
        try:
            exec(compile(raw, str(path), "exec", dont_inherit=True), module.__dict__)
        except BaseException:
            if sys.modules.get(name) is module:
                del sys.modules[name]
            raise
    return sys.modules["native_owner"].main(native_arguments)


if __name__ == "__main__":
    raise SystemExit(run())
