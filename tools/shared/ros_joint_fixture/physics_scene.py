# SPDX-License-Identifier: Apache-2.0
"""Select exact official model bytes and launch only native device I/O."""
from pathlib import Path
import hashlib
import json
import os
import time


def prepare(example, run):
    example = Path(example)
    settings = json.loads((example / "mujoco.json").read_text())
    assets = json.loads((example / "model-assets.json").read_text())
    if assets["repository"] != settings["official_repository"]:
        raise RuntimeError("Official model source differs from the selected contract")
    source_root = Path(os.environ["UWVM_OFFICIAL_MUJOCO_ASSETS"]).resolve()
    root = run / "model-assets"
    root.mkdir(exist_ok=False)
    for entry in assets["files"]:
        relative = Path(entry["path"])
        if relative.is_absolute() or ".." in relative.parts:
            raise RuntimeError("Invalid model asset path")
        source = (source_root / relative).resolve()
        if not source.is_relative_to(source_root):
            raise RuntimeError("Model asset escaped the selected tree")
        content = source.read_bytes()
        if len(content) != entry["bytes"] or hashlib.sha256(content).hexdigest() != entry["sha256"]:
            raise RuntimeError("Original model bytes changed: " + str(relative))
        target = root / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(content)
        target.chmod(0o400)
    relative = Path(settings["scene"])
    if relative.is_absolute() or ".." in relative.parts or not (root / relative).is_file():
        raise RuntimeError("Select a pinned original scene")
    return {**settings, "model_path": str(root / relative), "model_root": str(root),
            "assets": assets["files"], "original_model_commit": assets["commit"],
            "control_location": "wasm", "native_role": "official physics and device frames"}


def start_native(run, cfg, report, launch, base):
    scene = report["scene"]
    base.need(scene["namespace"] == cfg["ros2"]["connection"]["namespace"],
              "Device and Wasm namespaces differ")
    pinned = {Path(row["path"]).resolve() for row in cfg["native"]["files"]}
    base.need(Path(cfg["native"]["mujoco"]).resolve() in pinned, "Pin the original MuJoCo engine")
    proc = launch("physics_io", [
        cfg["native"]["physics_io"], scene["model_path"],
        scene.get("initial_keyframe") or "-", scene["namespace"], *scene["joint_names"]])
    end = time.monotonic() + 30
    while "PHYSICS_IO_READY" not in (run / "physics_io.stdout").read_text():
        base.need(proc.poll() is None and time.monotonic() < end, "Physics device did not initialize")
        time.sleep(0.02)
    actual = base.process(proc.pid)
    base.need(actual["executable_sha256"] == base.digest(cfg["native"]["physics_io"]),
              "Actual physics device executable differs")
    base.check_resource_boundary(actual)
    status = (Path("/proc") / str(proc.pid) / "status").read_text()
    fields = dict(line.split(":", 1) for line in status.splitlines() if ":" in line)
    base.need(all(int(fields[k], 16) == 0 for k in ("CapInh", "CapPrm", "CapEff", "CapBnd", "CapAmb")) and
              fields["NoNewPrivs"].strip() == "1" and fields["Seccomp"].strip() == "2",
              "Native device security boundary changed")
    maps = (Path("/proc") / str(proc.pid) / "maps").read_text()
    base.need(str(Path(cfg["native"]["mujoco"]).resolve()) in maps, "Original MuJoCo engine is not mapped")
    base.need(not any(name in maps for name in (
        "libjoint_trajectory_controller", "libcontroller_manager", "libmujoco_ros2_control")),
        "A native control component was loaded")
    report["native_observations"] = [
        {"role": "physics_io", "actual": actual, "security_status": status, "maps": maps}]
