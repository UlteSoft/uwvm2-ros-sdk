"""Read-only ELF/package validation for an explicitly selected Jetson payload.

No execution, dynamic loading, GPU initialization or installation occurs. An
ELF AArch64 check is packaging evidence; it is not board, QEMU or GPU evidence.
The manifest binds full file SHA-256 and the actual chosen loader, not labels.
"""

import argparse
import hashlib
import json
from pathlib import Path, PurePosixPath
import struct

from admit_platform import ordinary


def aarch64_elf(raw, interpreter):
    """@brief Inspect complete ELF64 little-endian AArch64 packaging metadata.

    @details Checks actual class/machine/version, executable/shared kind, the full
    1..128-entry program table, segment file extents and exactly matched optional
    PT_INTERP bytes. Never loads, links or executes the payload. This parser does
    not prove relocations, dependency closure, Jetson BSP/GPU compatibility, QEMU
    execution or board behavior. Calls are synchronous and read-only.
    @param[in] raw Stable whole ELF byte buffer retained until return.
    @param[in] interpreter Exact selected absolute ASCII loader path, or None for
    a payload with no PT_INTERP; no guessed host loader is substituted.
    @return Owned metadata dictionary. ValueError/Unicode/struct errors reject
    invalid complete headers/extents. No filesystem or native permission is used.
    @see inspect
    """
    if len(raw) < 64 or raw[:7] != b"\x7fELF\x02\x01\x01":
        raise ValueError("complete little-endian ELF64 header required")
    kind, machine, version = struct.unpack_from("<HHI", raw, 16)
    if kind not in {2, 3} or machine != 183 or version != 1:
        raise ValueError("actual executable/shared AArch64 ELF required")
    phoff = struct.unpack_from("<Q", raw, 32)[0]
    ehsize, phentsize, phnum = struct.unpack_from("<HHH", raw, 52)
    if ehsize != 64 or phentsize != 56 or not 1 <= phnum <= 128:
        raise ValueError("complete bounded ELF64 program table required")
    if phoff < ehsize or phoff > len(raw) or phnum * phentsize > len(raw) - phoff:
        raise ValueError("program table extends beyond whole file")
    actual = None
    for index in range(phnum):
        offset = phoff + index * phentsize
        ptype, flags, start, virtual, physical, size, memsize, alignment = (
            struct.unpack_from("<IIQQQQQQ", raw, offset)
        )
        if start > len(raw) or size > len(raw) - start:
            raise ValueError("program segment extends beyond whole file")
        if ptype == 1 and size > memsize:
            raise ValueError("load segment file extent exceeds memory extent")
        if ptype == 3:
            if actual is not None or not 2 <= size <= 256:
                raise ValueError("exact one bounded interpreter required")
            value = raw[start : start + size]
            if value[-1:] != b"\0" or b"\0" in value[:-1]:
                raise ValueError("whole interpreter string must have one final NUL")
            actual = value[:-1].decode("ascii", "strict")
    if actual != interpreter:
        raise ValueError("actual ELF loader differs from selected package contract")
    return {
        "elf_class": 64,
        "endian": "little",
        "machine": 183,
        "kind": kind,
        "program_headers": phnum,
        "interpreter": actual,
    }


def inspect(root, manifest):
    """@brief Bind every declared Jetson ELF payload to its full bytes and loader.

    @details Requires an exact uwvm-jetson-payload-v1 inventory of 1..128 unique
    ordinary relative members. Reads each whole file <=64 MiB and <=256 MiB total,
    checks its independent lowercase SHA-256 and passes its exact selected loader
    to aarch64_elf. No missing field/member is projected into success. The trusted
    owner freezes the physical root/ancestors and provides native read access.
    @param[in] root Explicit absolute physical package directory.
    @param[in] manifest Immutable complete format/files dictionary; each member
    has exactly path, sha256 and elf_interpreter.
    @return Complete owned packaging observation with execution/GPU/board counts
    zero and default authority empty. ValueError/OSError/allocation failures
    propagate without installation, loading or partial acceptance.
    @see aarch64_elf
    @see admit_platform.ordinary
    """
    if (
        type(manifest) is not dict
        or set(manifest) != {"format", "files"}
        or manifest["format"] != "uwvm-jetson-payload-v1"
    ):
        raise ValueError("exact package manifest schema required")
    rows = manifest["files"]
    if type(rows) is not list or not 1 <= len(rows) <= 128:
        raise ValueError("complete finite package inventory required")
    root = Path(root)
    if not root.is_absolute() or root.resolve(strict=True) != root or not root.is_dir():
        raise ValueError("physical explicit package root required")
    result = []
    names = set()
    total = 0
    for row in rows:
        if type(row) is not dict or set(row) != {"path", "sha256", "elf_interpreter"}:
            raise ValueError("complete exact package row required")
        name = row["path"]
        if type(name) is not str or not name or name in names:
            raise ValueError("unique package member name required")
        relative = PurePosixPath(name)
        if (
            relative.is_absolute()
            or ".." in relative.parts
            or relative.as_posix() != name
        ):
            raise ValueError("ordinary relative package member required")
        names.add(name)
        expected = row["sha256"]
        if (
            type(expected) is not str
            or len(expected) != 64
            or any(c not in "0123456789abcdef" for c in expected)
        ):
            raise ValueError("independently selected member SHA-256 required")
        path = root / name
        if path.parent.resolve(strict=True) != path.parent:
            raise ValueError("package ancestor symlink refused")
        raw = ordinary(path, 64 << 20)
        total += len(raw)
        if total > 256 << 20 or hashlib.sha256(raw).hexdigest() != expected:
            raise ValueError("whole package byte quota or member SHA differs")
        interpreter = row["elf_interpreter"]
        if interpreter is not None and (
            type(interpreter) is not str or not interpreter.startswith("/")
        ):
            raise ValueError("exact absolute selected ELF interpreter or null required")
        result.append(
            {
                "path": name,
                "sha256": expected,
                "bytes": len(raw),
                "elf": aarch64_elf(raw, interpreter),
            }
        )
    return {
        "format": "uwvm-jetson-payload-observation-v1",
        "files": result,
        "bytes": total,
        "executed_artifacts": 0,
        "board_tests": 0,
        "gpu_tests": 0,
        "loader_dependency_closure_verified": False,
        "default_authority": [],
    }


def main(argv=None):
    """@brief Run explicit read-only package inspection without executing a member.

    @details Returns 13 before reading the manifest unless enabled. Binds the
    entire manifest (<=1 MiB) to its independently supplied SHA-256, then reports
    inspect's full file observations. A packaging pass is not deployment proof.
    @param[in] argv Optional immutable CLI list; None uses sys.argv. File read
    authority and finite native process ownership are admitted externally.
    @return 0 for a matching complete observation or 13 for denial/hash mismatch;
    parser, source, schema, ELF and I/O errors may propagate. No Guest or board
    management authority, daemon, model or GPU operation is created.
    @see inspect
    @see README.md
    """
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--enable-read-only-package-inspection", action="store_true")
    p.add_argument("--root", required=True)
    p.add_argument("--manifest", required=True)
    p.add_argument("--manifest-sha256", required=True)
    a = p.parse_args(argv)
    if not a.enable_read_only_package_inspection:
        return 13
    raw = ordinary(a.manifest, 1 << 20)
    if hashlib.sha256(raw).hexdigest() != a.manifest_sha256:
        return 13
    print(json.dumps(inspect(a.root, json.loads(raw)), sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
