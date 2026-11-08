# SPDX-License-Identifier: Apache-2.0
"""Compose original Webots physics with device I/O; all control executes in Wasm."""
from pathlib import Path
import hashlib
import json
import os
import pwd
import shutil
import time


def prepare(example, run):
    example = Path(example)
    settings = json.loads((example / "webots.json").read_text())
    assets = json.loads((example / "model-assets.json").read_text())
    if assets["repository"] != "https://github.com/cyberbotics/webots":
        raise RuntimeError("Select original Cyberbotics model assets")
    root = Path(os.environ["UWVM_OFFICIAL_WEBOTS_ASSETS"]).resolve()
    cache_home = run / "webots-cache"
    cache = cache_home / "Cyberbotics/Webots/assets"
    cache.mkdir(parents=True, exist_ok=False)
    os.environ["XDG_CACHE_HOME"] = str(cache_home)
    cached = []
    for entry in assets["files"]:
        relative = Path(entry["path"])
        if relative.is_absolute() or ".." in relative.parts:
            raise RuntimeError("Invalid model asset path")
        source = (root / relative).resolve()
        if not source.is_relative_to(root):
            raise RuntimeError("Model asset escaped the selected asset root")
        content = source.read_bytes()
        if len(content) != entry["bytes"] or hashlib.sha256(content).hexdigest() != entry["sha256"]:
            raise RuntimeError("Original model asset differs: " + str(relative))
        url = ("https://raw.githubusercontent.com/cyberbotics/webots/" +
               assets["release"] + "/" + entry["path"])
        destination = cache / hashlib.sha1(url.encode("utf-8")).hexdigest()
        destination.write_bytes(content)
        cached.append({"url": url, "path": str(destination), "sha256": entry["sha256"]})
    names = settings["joint_names"]
    if not names or len(set(names)) != len(names) or any(not isinstance(n, str) or not n for n in names):
        raise RuntimeError("Select distinct original model joints")
    namespace = settings["namespace"]
    if not namespace.startswith("/") or namespace == "/" or namespace.endswith("/"):
        raise RuntimeError("Select an explicit robot namespace")
    world = run / "robot.wbt"
    shutil.copy2(example / "robot.wbt", world)
    if "Ros2Supervisor" in world.read_text():
        raise RuntimeError("This Wasm control scene does not use a native ROS supervisor")
    return {
        **settings, "offline_assets": cached, "world": str(world),
        "original_model_commit": assets["commit"], "assets": assets["files"],
        "control_location": "wasm", "native_role": "official physics and device frames",
        "derived_input_sha256": {world.name: hashlib.sha256(world.read_bytes()).hexdigest()}}


def start_native(run, cfg, report, launch, base):
    scene = report["scene"]
    base.need(scene["namespace"] == cfg["ros2"]["connection"]["namespace"], "Device namespace differs")
    os.environ["USER"] = pwd.getpwuid(os.getuid()).pw_name
    runtime = Path(os.environ["WEBOTS_HOME"])
    pinned = {Path(row["path"]).resolve() for row in cfg["native"]["files"]}
    for role in ("webots", "webots_controller", "controller_library", "physics_io"):
        base.need(Path(cfg["native"][role]).resolve() in pinned, "Pin native device input " + role)
    base.need((runtime / "bin/webots-bin").resolve() == Path(cfg["native"]["webots"]).resolve(),
              "Official Webots executable differs")
    simulator = launch("webots", [
        "xvfb-run", "--auto-servernum", "--error-file=" + str(run / "xvfb.stderr"),
        "--server-args=-screen 0 1280x1024x24 -nolisten tcp",
        str(runtime / "webots"), "--batch", "--no-rendering", "--mode=realtime",
        "--stdout", "--stderr", "--minimize", scene["world"]])
    device = launch("physics_io", [
        cfg["native"]["webots_controller"], "--robot-name=" + scene["robot_name"],
        "--protocol=ipc", cfg["native"]["physics_io"], scene["namespace"], *scene["joint_names"]])
    deadline = time.monotonic() + 75
    while "PHYSICS_IO_READY" not in (run / "physics_io.stdout").read_text():
        base.need(device.poll() is None and simulator.poll() is None and time.monotonic() < deadline,
                  "Official Webots device did not initialize")
        time.sleep(0.05)
    observed = {"physics_io": base.process(device.pid)}
    base.need(observed["physics_io"]["executable_sha256"] == base.digest(cfg["native"]["physics_io"]),
              "External controller did not exec the pinned device adapter")
    for row in base.session_members(simulator.pid):
        try:
            actual = base.process(row["pid"])
            if actual["executable_sha256"] == base.digest(cfg["native"]["webots"]):
                observed["webots"] = actual
        except (FileNotFoundError, ProcessLookupError):
            pass
    base.need(set(observed) == {"webots", "physics_io"}, "Official simulator process not observed")
    report["native_observations"] = []
    for role, actual in observed.items():
        base.check_resource_boundary(actual)
        status = (Path("/proc") / str(actual["pid"]) / "status").read_text()
        fields = dict(line.split(":", 1) for line in status.splitlines() if ":" in line)
        base.need(all(int(fields[k], 16) == 0 for k in ("CapInh", "CapPrm", "CapEff", "CapBnd", "CapAmb"))
                  and fields["NoNewPrivs"].strip() == "1" and fields["Seccomp"].strip() == "2",
                  "Native device security boundary changed")
        maps = (Path("/proc") / str(actual["pid"]) / "maps").read_text()
        base.need(not any(name in maps for name in (
            "libjoint_trajectory_controller", "libcontroller_manager", "libwebots_ros2_control",
            "libcontrol_toolbox", "librobot_state_publisher")), "Native application component loaded")
        report["native_observations"].append(
            {"role": role, "actual": actual, "security_status": status, "maps": maps})
        if role == "physics_io":
            # The official controller launcher may select the /work bind alias.
            # Verify mapped bytes, rather than confusing two names of one file.
            libraries = {line.split(maxsplit=5)[5] for line in maps.splitlines()
                         if len(line.split(maxsplit=5)) == 6 and line.endswith("/libController.so")}
            expected = base.digest(cfg["native"]["controller_library"])
            base.need(libraries and all(base.digest(p) == expected for p in libraries),
                      "Original Webots device library is not mapped")
