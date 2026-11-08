# SPDX-License-Identifier: Apache-2.0
"""Check a component's complete source adaptation without claiming a package port.

This is a build-time source identity check. Execution, differential behavior,
permissions, native dependency maps and performance require separate evidence.
"""
from pathlib import Path
import argparse
import difflib
import hashlib
import json
import re


def sha(path):
    with Path(path).open("rb") as stream:
        return hashlib.file_digest(stream, "sha256").hexdigest()


def read_json(path):
    def unique(pairs):
        values = {}
        for key, value in pairs:
            if key in values:
                raise ValueError("Duplicate contract key: " + key)
            values[key] = value
        return values
    return json.loads(Path(path).read_text(), object_pairs_hook=unique)


def local(root, name):
    relative = Path(name)
    if relative.is_absolute() or not relative.parts or ".." in relative.parts:
        raise ValueError("Expected a component-relative source path")
    result = (root / relative).resolve()
    if not result.is_relative_to(root) or not result.is_file():
        raise ValueError("Missing source or source escaped component: " + name)
    return result


def audit(component):
    root = Path(component).resolve()
    contract_path = root / "portability.json"
    contract = read_json(contract_path)
    if contract["format"] != "uwvm-sdk-upstream-portability-v1":
        raise ValueError("Unsupported portability contract")
    if (contract["qualification_unit"] != "source-component"
            or contract["package_migration_claimed"] is not False
            or contract["counts_as_migrated_package"] is not False):
        raise ValueError("This source audit does not establish a complete package migration")
    for field in ("component", "upstream_package", "adaptations", "not_migrated", "native_boundary"):
        if not contract.get(field):
            raise ValueError("Missing migration boundary: " + field)
    source_path = local(root, contract["source_manifest"])
    source = read_json(source_path)
    if re.fullmatch(r"[0-9a-f]{40}", source["upstream"]["commit"]) is None:
        raise ValueError("Pin an exact upstream commit")
    declared = source["files"]
    actual = {str(p.relative_to(root)) for p in root.rglob("*")
              if p.is_file() and p != source_path and "__pycache__" not in p.parts}
    if actual != set(declared):
        raise ValueError("The source closure has added or omitted files")
    for name, expected in declared.items():
        if sha(local(root, name)) != expected:
            raise ValueError("Component source identity changed: " + name)
    originals = {entry["path"]: entry for entry in source["upstream"]["files"]}
    mappings = contract["source_mapping"]
    if not mappings or len({m["adapted"] for m in mappings}) != len(mappings):
        raise ValueError("Empty or duplicate source mapping")
    patches, changes = [], []
    for mapping in mappings:
        original = local(root, mapping["original"])
        adapted = local(root, mapping["adapted"])
        upstream_path = mapping["upstream_path"]
        # The locally retained original must be the pinned upstream input.
        expected = originals[upstream_path]
        if sha(original) != expected["sha256"]:
            raise ValueError("Retained original differs from upstream manifest")
        before, after = original.read_text().splitlines(True), adapted.read_text().splitlines(True)
        patch = list(difflib.unified_diff(before, after, fromfile="a/" + upstream_path,
                                         tofile="b/" + upstream_path))
        patches.extend(patch)
        changes.append({"upstream_path": upstream_path, "adapted": mapping["adapted"],
                        "original_sha256": sha(original), "adapted_sha256": sha(adapted),
                        "added_lines": sum(x.startswith("+") and not x.startswith("+++") for x in patch),
                        "removed_lines": sum(x.startswith("-") and not x.startswith("---") for x in patch)})
    patch_path = local(root, contract["patch"])
    if "".join(patches) != patch_path.read_text():
        raise ValueError("The published patch does not describe every mapped source change")
    return {"format": "uwvm-sdk-upstream-source-audit-v1", "status": "SOURCE_IDENTITY_VERIFIED",
            "component": contract["component"], "upstream_package": contract["upstream_package"],
            "upstream": source["upstream"], "contract_sha256": sha(contract_path),
            "source_manifest_sha256": sha(source_path), "patch_sha256": sha(patch_path),
            "pinned_files": len(declared), "source_changes": changes,
            "qualification_unit": "source-component", "migrated_package_count": 0,
            "runtime_execution_checked": False, "behavior_checked": False,
            "adaptations": contract["adaptations"], "not_migrated": contract["not_migrated"],
            "memory_models": contract["memory_models"], "native_boundary": contract["native_boundary"]}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--component", required=True, type=Path)
    parser.add_argument("--output", type=Path)
    args = parser.parse_args()
    report = audit(args.component)
    if args.output:
        args.output.parent.mkdir(parents=True, exist_ok=True)
        args.output.write_text(json.dumps(report, indent=2) + "\n")
    print(report["component"] + ": SOURCE_IDENTITY_VERIFIED; complete ROS packages qualified = 0")


if __name__ == "__main__":
    main()
