# SPDX-License-Identifier: Apache-2.0
"""Expand the official software mock as an admitted environment actor."""
import argparse
import hashlib
import json
import math
from pathlib import Path
import sys
import xml.etree.ElementTree as ET
from consume_frozen import boundary


def need(value, reason):
    if not value:
        raise RuntimeError(reason)


def main():
    parser = argparse.ArgumentParser()
    for name in ("sdk-root", "output", "facts", "vendor-prefix"):
        parser.add_argument("--" + name, required=True)
    args = parser.parse_args()
    live = boundary(args.sdk_root)
    import xacro
    import yaml
    facts = json.loads(Path(args.facts).read_text())
    model = Path(args.vendor_prefix) / "share/kortex_description/robots/gen3.xacro"
    mappings = {"arm": "gen3", "dof": "7", "vision": "false", "gripper": "",
                "robot_ip": "192.0.2.1", "prefix": "", "use_fake_hardware": "true",
                "fake_sensor_commands": "false", "use_external_cable": "true",
                "use_internal_bus_gripper_comm": "false", "sim_gazebo": "false", "sim_isaac": "false"}
    xml = xacro.process_file(str(model), mappings=mappings).toxml()
    need(len(xml.encode()) < 2 * 1024 ** 2, "Expanded model cap")
    root = ET.fromstring(xml)
    need([row.text.strip() for row in root.findall("./ros2_control/hardware/plugin")] ==
         ["mock_components/GenericSystem"], "Physical or unexpected model plugin refused")
    names = ["joint_" + str(i) for i in range(1, 8)]
    need([row.get("name") for row in root.findall("./ros2_control/joint")] == names,
         "Official model control joint order differs")
    for mapped in facts["joints"]:
        joint = root.find("./joint[@name='" + mapped["native_joint"] + "']")
        need(joint is not None and joint.get("type") == "revolute", "Bounded revolute joint required")
        limit = joint.find("limit")
        lower, upper = float(limit.get("lower")), float(limit.get("upper"))
        need(math.isfinite(lower) and math.isfinite(upper) and lower < 0 < upper and
             mapped["lower_microrad"] >= math.ceil(lower * 1000000) and
             mapped["upper_microrad"] <= math.floor(upper * 1000000), "External bound exceeds real official model")
    need(hashlib.sha256(xml.encode()).hexdigest() == facts["URDF_sha256"],
         "Actual official seven-joint expansion differs from the frozen model")
    live.guard()
    output = Path(args.output)
    output.mkdir(exist_ok=False)
    (output / "robot_description.xml").write_text(xml)
    (output / "robot-description.params.yaml").write_text(yaml.safe_dump(
        {"robot_state_publisher": {"ros__parameters": {"robot_description": xml}}}))
    (output / "model-observation.json").write_text(json.dumps({"actual_expanded_sha256":
        hashlib.sha256(xml.encode()).hexdigest(), "mappings": mappings, "physics": "NOT_RUN",
        "scope": "Official GenericSystem environment only"}, indent=2) + "\n")
    live.guard()


if __name__ == "__main__":
    main()
