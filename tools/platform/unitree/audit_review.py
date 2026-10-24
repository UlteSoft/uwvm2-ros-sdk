#!/usr/bin/env python3
"""@brief Inventory the reviewed Unitree source closure without compiling a guest.

@details Write the resulting inventory only to an explicitly selected path
outside the distributable SDK. This static maintainer audit checks example path independence, genuine
source extensions, complete source pins, and readable line extents. It does not
invent compiler/native/hardware qualification; actual acceptance is separate.
"""

import argparse
import hashlib
import json
from pathlib import Path

EXTENSIONS = {
    "as": ".ts",
    "c": ".c",
    "c_ffi_bridge": ".c",
    "cpp": ".cpp",
    "go": ".go",
    "objectc": ".m",
    "rs": ".rs",
    "tinygo": ".go",
    "zig": ".zig",
    "d": ".d",
    "nim": ".nim",
    "odin": ".odin",
    "swift": ".swift",
    "haskell": ".hs",
    "py": ".py",
    "js": ".mjs",
    "lua": ".lua",
    "moonbit": ".mbt",
    "ruby": ".rb",
    "php": ".php",
    "java": ".java",
    "kotlin": ".kt",
}
ROOTS = ("include", "src", "lib", "share", "tools", "example", "document")


def audit(sdk):
    """@brief Return exact owned source pins and fail on contradictory source claims.

    @param sdk Authored Unitree review SDK root, never the public SDK destination.
    @return Static source-only report; no guest, compiler, or ROS process is started.
    @details Bytecode/cache/binary artifacts are excluded from source publication.
    Original upstream declarations and licenses are independently pinned by the
    source audit; generated source pins describe the reviewed formatted bytes.
    """
    inputs = []
    long_lines = []
    counts = {language: {"ros1": 0, "ros2": 0} for language in EXTENSIONS}
    for category in ROOTS:
        root = sdk / category / "platform/unitree"
        if not root.is_dir():
            continue
        for path in sorted(root.rglob("*")):
            if not path.is_file():
                continue
            if "__pycache__" in path.parts or path.suffix in (
                ".pyc",
                ".o",
                ".a",
                ".so",
                ".wasm",
            ):
                raise ValueError("Non-source artifact inside review source tree: " + str(path))
            relative = str(path.relative_to(sdk))
            raw = path.read_bytes()
            inputs.append(
                {
                    "path": relative,
                    "bytes": len(raw),
                    "sha256": hashlib.sha256(raw).hexdigest(),
                }
            )
            text = raw.decode("utf-8")
            if category == "example" and "../" in text:
                raise ValueError("Encoded parent hop in example: " + relative)
            if category == "example" and path.name.lower().startswith("main."):
                language = path.relative_to(root).parts[0]
                backend = path.relative_to(root).parts[1]
                if language not in EXTENSIONS or path.suffix != EXTENSIONS[language]:
                    raise ValueError("Language/source-extension mismatch: " + relative)
                counts[language][backend] += 1
            if path.suffix in (
                ".h",
                ".hpp",
                ".c",
                ".cpp",
                ".m",
                ".ts",
                ".go",
                ".rs",
                ".mjs",
                ".zig",
                ".d",
                ".nim",
                ".odin",
                ".swift",
                ".hs",
                ".java",
                ".kt",
                ".mbt",
                ".rb",
                ".php",
                ".lua",
                ".py",
            ):
                for number, line in enumerate(text.splitlines(), 1):
                    if len(line) > 180:
                        long_lines.append({"path": relative, "line": number, "columns": len(line)})
    if any(value != {"ros1": 3, "ros2": 3} for value in counts.values()):
        raise ValueError("Every implemented producer needs three meaningful examples for each source backend")
    if long_lines:
        raise ValueError("Source width review failed: " + str(long_lines[:12]))
    return {
        "format": "uwvm-unitree-static-review-v1",
        "compiler_executed": False,
        "native_ros_executed": False,
        "examples": counts,
        "file_count": len(inputs),
        "files": inputs,
        "source_lines_over_180_columns": long_lines,
        "public_sdk_published_by_worker": False,
        "physical_hardware_tested": False,
    }


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True, help="New audit report outside the SDK distribution")
    args = parser.parse_args()
    root = args.sdk.resolve(strict=True)
    output = args.output.resolve()
    if output.is_relative_to(root) or output.exists():
        parser.error("Choose a new audit report outside the SDK distribution")
    report = audit(root)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_text(json.dumps(report, indent=2) + "\n")
    print(
        "Reviewed files:",
        report["file_count"],
        "long source lines:",
        len(report["source_lines_over_180_columns"]),
    )
