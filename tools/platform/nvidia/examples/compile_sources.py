# @file compile_sources.py
# @brief Provide the selected typed SDK binding and ownership boundary for nvidia.
# @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
# for the documented operation and propagate status or language errors without treating a refused call as success.

"""Compile actual native owner sources using the selected genuine CPython 3.12.

This produces checked-hash Python bytecode and captured source. It executes no
ROS/Kit/GR00T import and grants no Guest or native execution permission.
"""

import argparse
import hashlib
import json
from pathlib import Path
import py_compile
import shutil
import sys


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--input", type=Path, required=True)
    parser.add_argument("--sdk-root", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument(
        "--entry", help="Select an actual listed Python application entry"
    )
    args = parser.parse_args()
    if sys.implementation.name != "cpython" or sys.version_info[:2] != (3, 12):
        raise ValueError(
            "the pinned actual native owners select CPython 3.12; no interpreter substitution"
        )
    sdk = args.sdk_root.resolve(strict=True)
    source = args.input.resolve(strict=True)
    if not source.is_relative_to(sdk / "src/platform"):
        raise ValueError("canonical installed native source inventory required")
    specification = json.loads((source / "python-sources.json").read_bytes())
    if specification.get("format") != "uwvm-nvidia-native-python-source-v2":
        raise ValueError("actual selected source inventory required")
    entry_name = args.entry or specification["entry"]
    names = {row["output"] for row in specification["files"]}
    if (
        type(entry_name) is not str
        or entry_name not in names
        or len(Path(entry_name).parts) != 1
        or not entry_name.endswith(".py")
    ):
        raise ValueError(
            "selected application entry must be a listed package-local Python source"
        )
    output = args.output.absolute()
    if output.is_relative_to(sdk):
        raise ValueError("derived package must be outside the canonical SDK")
    output.mkdir(mode=0o700)
    rows = []
    seen = set()
    for item in specification["files"]:
        if type(item) is not dict or set(item) != {"source", "output"}:
            raise ValueError("exact canonical source/output mapping required")
        name = item["output"]
        relative = Path(name)
        selected_relative = Path(item["source"])
        if (relative.is_absolute() or not relative.parts or ".." in relative.parts
                or selected_relative.is_absolute() or ".." in selected_relative.parts
                or name in seen):
            raise ValueError("distinct ordinary relative package paths required")
        seen.add(name)
        selected = sdk / selected_relative
        if (
            selected.is_symlink()
            or not selected.is_file()
            or not selected.resolve(strict=True).is_relative_to(sdk)
            or selected.stat().st_size > 4 * 1024 * 1024
        ):
            raise ValueError("bounded ordinary source required")
        destination = output / relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(selected, destination)
        row = {
            "canonical_source": str(selected),
            "source": str(destination),
            "sha256": hashlib.sha256(destination.read_bytes()).hexdigest(),
        }
        if destination.suffix == ".py":
            bytecode = destination.with_suffix(".pyc")
            py_compile.compile(
                str(destination),
                cfile=str(bytecode),
                dfile=name,
                doraise=True,
                invalidation_mode=py_compile.PycInvalidationMode.CHECKED_HASH,
            )
            row.update(
                pyc=str(bytecode),
                pyc_sha256=hashlib.sha256(bytecode.read_bytes()).hexdigest(),
            )
        rows.append(row)
    entry = output / entry_name
    if not entry.is_file() or not entry.with_suffix(".pyc").is_file():
        raise ValueError("selected actual native Python entry was not compiled")
    receipt = {
        "format": "uwvm-native-python-compiled-v1",
        "interpreter": sys.executable,
        "version": sys.version,
        "entry_source": str(entry),
        "entry_pyc": str(entry.with_suffix(".pyc")),
        "files": rows,
        "guest_executions": 0,
        "native_ros_exchanges": 0,
        "model_calls": 0,
        "simulator_runs": 0,
        "default_authority": [],
    }
    (output / "python-build.json").write_text(
        json.dumps(receipt, indent=2, sort_keys=True) + "\n"
    )


if __name__ == "__main__":
    main()
