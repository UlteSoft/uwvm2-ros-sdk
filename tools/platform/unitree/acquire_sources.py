#!/usr/bin/env python3
"""@brief Acquire exact public Unitree ROS declarations with individual file pins.

@details This maintenance tool copies complete official Message/Service/Action
sources. It never downloads an SDK binary, starts a compiler, connects a robot,
or treats the separate Unitree DDS SDK as ROS. Run it in the local authoring
workspace and synchronize the resulting entire platform folders to Linux.
"""

import argparse
import hashlib
import json
from pathlib import Path
import re
import urllib.request

SOURCES = (
    (
        2,
        "unitreerobotics/unitree_ros2",
        "master",
        "cyclonedds_ws/src/unitree/",
        ("unitree_go", "unitree_hg", "unitree_api"),
    ),
    (1, "unitreerobotics/unitree_ros_to_real", "master", "", ("unitree_legged_msgs",)),
)


def fetch(url):
    """@brief Read one public HTTPS source; failures preserve existing outputs."""
    request = urllib.request.Request(url, headers={"User-Agent": "uwvm-unitree-source-maintainer"})
    with urllib.request.urlopen(request, timeout=45) as response:
        return response.read()


def quotas(raw):
    """@brief Declare finite canonical quotas independently of native array sizes."""
    result = {}
    for line in raw.decode("utf-8").splitlines():
        line = line.split("#", 1)[0].strip()
        match = re.match(r"(\w+)(?:<=\d+)?(\[(?:<=)?\d*\])?\s+(\w+)(?:\s|$)", line)
        if not match or "=" in line:
            continue
        scalar, shape, name = match.groups()
        bounds = {}
        if scalar == "string":
            bounds["string"] = 2048
        if shape == "[]":
            bounds["sequence"] = 2048 if scalar in ("uint8", "byte") else 32
        if bounds:
            result[name] = bounds
    return result


def acquire(sdk):
    """@brief Write canonical source catalogs and exact upstream origin receipts.

    @param sdk Existing SDK root, modified only below Unitree share/lib folders.
    @details No declaration is projected or renamed. The catalog's finite text
    and sequence quotas affect canonical acceptance, never the upstream source.
    """
    receipts = []
    for version, repository, branch, prefix, packages in SOURCES:
        commit = json.loads(fetch(f"https://api.github.com/repos/{repository}/commits/{branch}"))["sha"]
        tree = json.loads(fetch(f"https://api.github.com/repos/{repository}/git/trees/{commit}?recursive=1"))
        if tree.get("truncated"):
            raise ValueError("Complete upstream tree required")
        directory = sdk / f"share/platform/unitree/catalogs/ros{version}"
        directory.mkdir(parents=True, exist_ok=True)
        rows = []
        for entry in tree["tree"]:
            original = entry["path"]
            if entry["type"] != "blob" or not original.startswith(prefix):
                continue
            name = original[len(prefix) :]
            parts = name.split("/")
            if (
                len(parts) != 3
                or parts[0] not in packages
                or parts[1] not in ("msg", "srv", "action")
                or not name.endswith((".msg", ".srv", ".action"))
            ):
                continue
            url = f"https://raw.githubusercontent.com/{repository}/{commit}/{original}"
            raw = fetch(url)
            destination = directory / name
            destination.parent.mkdir(parents=True, exist_ok=True)
            destination.write_bytes(raw)
            native = (
                "/".join((parts[0], Path(parts[2]).stem))
                if version == 1
                else "/".join((parts[0], parts[1], Path(parts[2]).stem))
            )
            rows.append(
                {
                    "ros_version": version,
                    "type": native,
                    "file": name,
                    "registered": True,
                    "bounds": quotas(raw),
                }
            )
            receipts.append(
                {
                    "destination": str(destination.relative_to(sdk)),
                    "upstream_path": original,
                    "url": url,
                    "repository": repository,
                    "commit": commit,
                    "git_blob": entry["sha"],
                    "bytes": len(raw),
                    "sha256": hashlib.sha256(raw).hexdigest(),
                    "source_modified": False,
                }
            )
        catalog = {
            "format": "uwvm-ros-vendor-complete-bounded-v1",
            "types": sorted(rows, key=lambda row: row["type"]),
        }
        (directory / "catalog.preparation.json").write_text(json.dumps(catalog, indent=2) + "\n")
        for leaf in ("LICENSE", "README.md"):
            try:
                raw = fetch(f"https://raw.githubusercontent.com/{repository}/{commit}/{leaf}")
            except urllib.error.HTTPError:
                continue
            destination = sdk / "share/platform/unitree/upstream" / repository.split("/")[1] / leaf
            destination.parent.mkdir(parents=True, exist_ok=True)
            destination.write_bytes(raw)
            receipts.append(
                {
                    "destination": str(destination.relative_to(sdk)),
                    "upstream_path": leaf,
                    "url": f"https://raw.githubusercontent.com/{repository}/{commit}/{leaf}",
                    "repository": repository,
                    "commit": commit,
                    "bytes": len(raw),
                    "sha256": hashlib.sha256(raw).hexdigest(),
                    "source_modified": False,
                }
            )
    (sdk / "share/platform/unitree/source-audit.json").write_text(
        json.dumps(
            {
                "format": "uwvm-unitree-source-audit-v1",
                "old_sdk_restored_files": [],
                "official_files": receipts,
                "compiler_executed": False,
                "robot_connected": False,
            },
            indent=2,
        )
        + "\n"
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--sdk", type=Path, required=True)
    acquire(parser.parse_args().sdk.resolve(strict=True))
