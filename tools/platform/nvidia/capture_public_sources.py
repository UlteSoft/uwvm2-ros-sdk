# @file capture_public_sources.py
# @brief Provide the selected typed SDK binding and ownership boundary for nvidia.
# @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
# for the documented operation and propagate status or language errors without treating a refused call as success.

"""Capture fixed public NVIDIA Git trees and complete selected source bodies.

Run only in task 10's finite Linux owner. Tree membership and Git blob SHA-1
are checked separately from stored SHA-256. No archive extraction, compiler,
generator, device access, model download or endpoint is started. Example source
files remain candidates until a human audits actual entry points and helpers.
"""

import argparse
import base64
import hashlib
import json
import os
from pathlib import Path, PurePosixPath
import re
import time
import urllib.parse
import urllib.request


REPOSITORIES = {
    "isaac-ros-common": (
        "NVIDIA-ISAAC-ROS/isaac_ros_common",
        "7bec6ae5dbb2faa11617f40226e8932a4a94e6e4",
    ),
    "isaac-ros-apriltag": (
        "NVIDIA-ISAAC-ROS/isaac_ros_apriltag",
        "95df59e5dc9c253b6e8e11471c10fd510b036fdd",
    ),
    "nitros": (
        "NVIDIA-ISAAC-ROS/isaac_ros_nitros",
        "260cee67e8344db363f7584256ae161d03abfd01",
    ),
    "isaac-sim": ("isaac-sim/IsaacSim", "87c95274f50836068b44eeb030bf62aa2108bdf8"),
    "groot": ("NVIDIA/Isaac-GR00T", "dac54b313160c201c450f97df0fd74ebd379c892"),
    "rosidl-buffer": ("ros2/rosidl", "4537874f320ef8b350c3df7f5b6b487b409fa22f"),
    "cuda-buffer": (
        "ros2/rosidl_buffer_backends",
        "4f3b257db3a5cc4c8e62d526f11f344c1e5801dc",
    ),
}
SCHEMAS = {
    "ROS2PublishImage.ogn",
    "ROS2CameraHelper.ogn",
    "ROS2RtxLidarHelper.ogn",
    "ROS2PublishImu.ogn",
    "ROS2PublishLaserScan.ogn",
    "ROS2PublishPointCloud.ogn",
    "ROS2PublishClock.ogn",
    "ROS2PublishTransformTree.ogn",
    "ROS2Context.ogn",
    "ROS2PublishJointState.ogn",
    "ROS2SubscribeJointState.ogn",
    "IsaacReadIMU.ogn",
    "IsaacReadJointState.ogn",
    "IsaacReadSimulationTime.ogn",
    "IsaacArticulationController.ogn",
    "IsaacCreateRenderProduct.ogn",
    "IsaacSimulationGate.ogn",
    "IsaacComputeTransformTree.ogn",
}


def sha(raw):
    return hashlib.sha256(raw).hexdigest()


def fetch(url, maximum):
    request = urllib.request.Request(
        url,
        headers={
            "User-Agent": "uwvm-nvidia-fixed-source-audit/1",
            "Accept": "application/vnd.github+json",
        },
    )
    with urllib.request.urlopen(request, timeout=25) as response:
        raw = response.read(maximum + 1)
    if len(raw) > maximum:
        raise ValueError("complete response exceeds explicit capture budget: " + url)
    return raw


def save(path, raw):
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("xb") as stream:
        stream.write(raw)


def source_blob(repository, revision, path, item, transport):
    url = (
        "https://raw.githubusercontent.com/"
        + repository
        + "/"
        + revision
        + "/"
        + urllib.parse.quote(path, safe="/")
    )
    try:
        if transport == "raw-with-api-fallback":
            return fetch(url, 2 << 20)
        raise OSError("operator selected official API transport")
    except OSError as error:
        # Some deployment networks reset raw.githubusercontent.com TLS while
        # permitting api.github.com. Retain this fact; verify the same fixed
        # Git blob through GitHub's own blob API, never a third-party mirror.
        print(
            json.dumps(
                {
                    "raw_source_unavailable": url,
                    "error_type": type(error).__name__,
                    "fallback": "official GitHub Git blob API",
                }
            ),
            flush=True,
        )
        encoded = json.loads(
            fetch(
                "https://api.github.com/repos/"
                + repository
                + "/git/blobs/"
                + item["sha"],
                4 << 20,
            )
        )
        if encoded.get("sha") != item["sha"] or encoded.get("encoding") != "base64":
            raise ValueError("official Git blob identity/encoding differs")
        return base64.b64decode(encoded["content"], validate=False)


def selected(path, lane, scope):
    name = PurePosixPath(path).name
    lower = path.lower()
    if name in {
        "README.md",
        "LICENSE",
        "LICENSE.md",
        "LICENSE.txt",
        "NOTICE",
        "pyproject.toml",
    }:
        return "/" not in path
    if scope == "tree":
        return False
    if scope == "programs":
        if lane == "isaac-ros-apriltag":
            return path.startswith("isaac_ros_apriltag/") and (
                "/launch/" in path
                or "/src/" in path
                or name in {"CMakeLists.txt", "package.xml"}
            )
        if lane == "isaac-sim":
            return path.startswith(
                (
                    "source/standalone_examples/api/isaacsim.ros2.bridge/",
                    "source/standalone_examples/api/isaacsim.ros2.control/",
                )
            ) and name.endswith((".py", ".md", ".yaml"))
        if lane == "groot":
            return path.startswith(
                ("examples/", "getting_started/", "gr00t/eval/", "scripts/deployment/")
            ) and name.endswith((".py", ".sh", ".md", ".toml", ".ipynb"))
        return False
    if scope == "graph":
        return lane == "isaac-sim" and name.removeprefix("Ogn") in SCHEMAS
    if lane == "rosidl-buffer":
        return path.startswith("rosidl_buffer/") and (
            path.startswith("rosidl_buffer/include/")
            or name in {"CMakeLists.txt", "package.xml", "README.md", "LICENSE"}
        )
    if lane == "cuda-buffer":
        return path.startswith("cuda_buffer_backend/") and (
            path.startswith("cuda_buffer_backend/cuda_buffer/include/")
            or path == "cuda_buffer_backend/cuda_buffer/src/cuda_buffer.cpp"
            or path == "cuda_buffer_backend/cuda_buffer/src/cuda_buffer_impl.cpp"
            or name in {"CMakeLists.txt", "package.xml", "README.md", "LICENSE"}
        )
    if lane in {"isaac-ros-common", "isaac-ros-apriltag", "nitros"}:
        return lower.endswith(
            (
                ".msg",
                ".srv",
                ".hpp",
                ".cpp",
                ".launch.py",
                "package.xml",
                "cmakelists.txt",
            )
        ) and ("apriltag" in lower or "rosidl" in lower or "buffer" in lower)
    if lane == "groot":
        return path.startswith(
            (
                "getting_started/",
                "gr00t/policy/",
                "gr00t/data/embodiment_tags",
                "scripts/deployment/",
                "examples/SO100/",
            )
        ) and lower.endswith((".py", ".md", ".toml", ".sh"))
    if lane == "isaac-sim":
        return name.removeprefix("Ogn") in SCHEMAS or (
            lower.endswith(".py")
            and any(
                part in lower
                for part in (
                    "standalone_examples/api/isaacsim.ros2.",
                    "/ros2/bridge/tests/test_ros2_",
                    "/core/experimental/utils/stage.py",
                    "/core/experimental/utils/app.py",
                )
            )
        )
    return False


def capture(lane, out, scope, transport):
    repository, revision = REPOSITORIES[lane]
    root = out / lane
    commit_raw = fetch(
        "https://api.github.com/repos/" + repository + "/git/commits/" + revision,
        1 << 20,
    )
    commit = json.loads(commit_raw)
    if commit["sha"] != revision:
        raise ValueError("selected commit identity differs")
    tree_sha = commit["tree"]["sha"]
    tree_raw = fetch(
        "https://api.github.com/repos/"
        + repository
        + "/git/trees/"
        + tree_sha
        + "?recursive=1",
        16 << 20,
    )
    tree = json.loads(tree_raw)
    if tree["sha"] != tree_sha or tree.get("truncated") is not False:
        raise ValueError("complete fixed recursive tree required")
    save(root / "commit.json", commit_raw)
    save(root / "tree.json", tree_raw)
    files = []
    candidates = []
    total = 0
    for item in tree["tree"]:
        if item["type"] != "blob" or item["mode"] not in {"100644", "100755"}:
            continue
        path = item["path"]
        parts = PurePosixPath(path).parts
        if PurePosixPath(path).is_absolute() or any(p in {"..", "."} for p in parts):
            raise ValueError("nonordinary upstream path")
        if re.search(
            r"(^|/)(examples?|standalone_examples|tutorials?|launch)(/|$)", path
        ) and path.endswith((".py", ".cpp", ".c", ".sh", ".md")):
            candidates.append(
                {
                    "path": path,
                    "git_blob_sha1": item["sha"],
                    "bytes": item.get("size"),
                    "entry_status": "ENTRY_POINT_AND_HELPER_REVIEW_REQUIRED",
                }
            )
        if not selected(path, lane, scope):
            continue
        if item.get("size", 0) > 2 << 20 or len(files) >= 2048:
            raise ValueError("selected source capture exceeds explicit file budget")
        raw = source_blob(repository, revision, path, item, transport)
        blob = hashlib.sha1(
            b"blob " + str(len(raw)).encode("ascii") + b"\0" + raw
        ).hexdigest()
        if blob != item["sha"] or len(raw) != item["size"]:
            raise ValueError("source bytes differ from fixed Git tree: " + path)
        total += len(raw)
        if total > 64 << 20:
            raise ValueError("complete selected source budget exhausted")
        save(root / "files" / path, raw)
        files.append(
            {"path": path, "bytes": len(raw), "sha256": sha(raw), "git_blob_sha1": blob}
        )
    ledger = {
        "format": "uwvm-nvidia-primary-source-capture-v1",
        "repository": repository,
        "commit": revision,
        "git_tree_sha1": tree_sha,
        "scope": scope,
        "commit_body_sha256": sha(commit_raw),
        "tree_body_sha256": sha(tree_raw),
        "captured_files": files,
        "captured_bytes": total,
        "candidate_source_files": candidates,
        "official_example_total": None,
        "upstream_suite_cases_run": 0,
        "default_authority": [],
    }
    save(
        root / "capture.json",
        (json.dumps(ledger, indent=2, sort_keys=True) + "\n").encode(),
    )
    print(
        json.dumps(
            {
                "lane": lane,
                "captured_files": len(files),
                "captured_bytes": total,
                "candidate_source_files": len(candidates),
                "official_example_total": None,
            }
        ),
        flush=True,
    )


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("--enable-source-download", action="store_true")
    p.add_argument("--lane", choices=list(REPOSITORIES) + ["all"], required=True)
    p.add_argument(
        "--scope", choices=["tree", "core", "graph", "programs"], required=True
    )
    p.add_argument(
        "--transport",
        choices=["raw-with-api-fallback", "official-api"],
        default="raw-with-api-fallback",
    )
    p.add_argument("--out", required=True)
    a = p.parse_args()
    if not a.enable_source_download:
        return 13
    if os.environ.get("UWVM_RESOURCE_HEAVY_LOCK_HELD") != "1":
        raise ValueError("shared finite admission/heavy lock required")
    run = Path(os.environ["UWVM_RESOURCE_RUN"]).resolve(strict=True)
    scope = os.environ["UWVM_RESOURCE_SCOPE"]
    prefix = (
        "/host/sys/fs/cgroup"
        if scope.startswith("/host/sys/fs/cgroup")
        else "/sys/fs/cgroup"
    )
    if Path("/proc/self/cgroup").read_text().strip() != "0::" + scope.removeprefix(
        prefix
    ):
        raise ValueError("actual finite owner subgroup membership required")
    out = Path(a.out)
    if not out.is_absolute() or not out.is_relative_to(run / "work") or out.exists():
        raise ValueError(
            "new absolute output inside this finite owner work directory required"
        )
    out.parent.mkdir(parents=True, exist_ok=True)
    if out.parent.resolve(strict=True) != out.parent:
        raise ValueError("physical output parent required")
    out.mkdir()
    started = time.monotonic_ns()
    for lane in REPOSITORIES if a.lane == "all" else [a.lane]:
        capture(lane, out, a.scope, a.transport)
    save(
        out / "completion.json",
        (
            json.dumps(
                {
                    "source_capture_complete": True,
                    "elapsed_ns": time.monotonic_ns() - started,
                    "official_suite_cases_run": 0,
                    "native_ros_exchanges": 0,
                    "guest_executions": 0,
                }
            )
            + "\n"
        ).encode(),
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
