# SPDX-License-Identifier: Apache-2.0
"""Compose an unmodified official Webots robot with the original ROS controllers."""
from pathlib import Path
import hashlib
import json
import os
import pwd
import shutil
import time
import xml.etree.ElementTree as ET


def prepare(example, run):
    import yaml
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
    robot = ET.Element("robot", name=settings["robot_name"])
    ET.SubElement(ET.SubElement(robot, "webots"), "plugin",
                  type="webots_ros2_control::Ros2Control")
    control = ET.SubElement(robot, "ros2_control", name="WebotsControl", type="system")
    ET.SubElement(ET.SubElement(control, "hardware"), "plugin").text = (
        "webots_ros2_control::Ros2ControlSystem")
    for name in names:
        joint = ET.SubElement(control, "joint", name=name)
        ET.SubElement(joint, "state_interface", name="position")
        ET.SubElement(joint, "command_interface", name="position")
    description = run / "robot.urdf"
    ET.ElementTree(robot).write(description, encoding="unicode", xml_declaration=True)
    trajectory = "joint_trajectory_controller"
    broadcaster = "joint_state_broadcaster"
    data = {
        namespace + "/controller_manager": {"ros__parameters": {
            "update_rate": 50,
            trajectory: {"type": "joint_trajectory_controller/JointTrajectoryController"},
            broadcaster: {"type": "joint_state_broadcaster/JointStateBroadcaster"}}},
        namespace + "/" + trajectory: {"ros__parameters": {
            "joints": names, "command_interfaces": ["position"], "state_interfaces": ["position"],
            "allow_partial_joints_goal": False}},
        namespace + "/" + broadcaster: {"ros__parameters": {
            "joints": list(names), "interfaces": ["position"]}}}
    controllers = run / "controllers.yaml"
    controllers.write_text(yaml.safe_dump(data, sort_keys=False))
    world = run / "robot.wbt"
    shutil.copy2(example / "robot.wbt", world)
    result = {
        **settings, "offline_assets": cached, "description": str(description),
        "controllers": str(controllers), "world": str(world),
        "controller_name": trajectory, "broadcaster_name": broadcaster,
        "original_model_commit": assets["commit"], "assets": assets["files"],
        "derived_input_sha256": {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
                                 for p in (description, controllers, world)}}
    scene = run / "webots-launch.json"
    scene.write_text(json.dumps(result, indent=2) + "\n")
    result["launch_configuration"] = str(scene)
    return result


def start_native(run, cfg, report, launch, base):
    scene = report["scene"]
    base.need(scene["namespace"] == cfg["ros2"]["connection"]["namespace"],
              "The deployment and robot namespace differ")
    os.environ["USER"] = pwd.getpwuid(os.getuid()).pw_name
    pinned = {Path(row["path"]).resolve() for row in cfg["native"]["files"]}
    for role in ("webots", "python"):
        base.need(Path(cfg["native"][role]).resolve() in pinned, "Pin the native " + role + " file")
    base.need((Path(os.environ["WEBOTS_HOME"]) / "bin/webots-bin").resolve() ==
              Path(cfg["native"]["webots"]).resolve(), "WEBOTS_HOME and pinned executable differ")
    os.environ.update(UWVM_OFFICIAL_WEBOTS_SCENE=scene["launch_configuration"],
                      UWVM_OFFICIAL_WEBOTS_XVFB_LOG=str(run / "xvfb.stderr"))
    proc = launch("webots_scene", [cfg["native"]["python"],
                  str(Path(__file__).with_name("webots_launch.py"))])
    stdout = run / "webots_scene.stdout"
    deadline = time.monotonic() + 75
    while True:
        base.need(proc.poll() is None and time.monotonic() < deadline,
                  "Original Webots scene did not activate its controllers")
        output = stdout.read_text()
        if all("Configured and activated " + name in output
               for name in (scene["controller_name"], scene["broadcaster_name"])):
            break
        time.sleep(0.05)
    selected = {}
    for row in base.session_members(proc.pid):
        try:
            actual = base.process(row["pid"])
            for role in ("controller_manager", "webots", "robot_state_publisher"):
                if actual["executable_sha256"] == base.digest(cfg["native"][role]):
                    selected[role] = actual
        except (FileNotFoundError, ProcessLookupError):
            pass
    base.need(set(selected) == {"controller_manager", "webots", "robot_state_publisher"},
              "Actual native processes were not observed")
    observations = []
    for role, actual in selected.items():
        base.check_resource_boundary(actual)
        status = (Path("/proc") / str(actual["pid"]) / "status").read_text()
        fields = dict(line.split(":", 1) for line in status.splitlines() if ":" in line)
        base.need(all(int(fields[k], 16) == 0 for k in ("CapEff", "CapPrm", "CapBnd", "CapAmb")) and
                  fields["NoNewPrivs"].strip() == "1" and fields["Seccomp"].strip() == "2",
                  "Native security boundary changed")
        maps = (Path("/proc") / str(actual["pid"]) / "maps").read_text()
        if role == "controller_manager":
            base.need(str(Path(cfg["native"]["controller_plugin"]).resolve()) in maps,
                      "Original trajectory controller plugin is not mapped")
        observations.append({"role": role, "actual": actual, "security_status": status, "maps": maps})
    report["native_observations"] = observations
