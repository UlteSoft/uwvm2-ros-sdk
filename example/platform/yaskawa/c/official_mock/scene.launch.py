# SPDX-License-Identifier: Apache-2.0
"""Use the pinned original GP8 model/configuration in software mode only.

The selected upstream revision has inconsistent ros2_control inputs. Report
those exact blockers before creating any native node; do not repair vendor data
or substitute a controller in this launch fixture.
"""
from pathlib import Path
import hashlib
import json
import xml.etree.ElementTree as ET


def generate_launch_description():
    from ament_index_python.packages import get_package_share_directory
    from launch import LaunchDescription
    from launch_ros.actions import Node
    import xacro
    import yaml

    example = Path(__file__).resolve().parent
    lock = json.loads((example / "provider.source.lock.json").read_text())
    files = {row["source_path"]: row for row in lock["files"]
             if row["repository"] == lock["official_source"]["repository"]}
    description = Path(get_package_share_directory("moveit_resources_moto_description"))
    configuration = Path(get_package_share_directory("moveit_resources_moto_moveit_config"))

    def original(package, relative, source_prefix):
        selected = package / relative
        expected = files[source_prefix + relative]
        if hashlib.sha256(selected.read_bytes()).hexdigest() != expected["sha256"]:
            raise RuntimeError("BLOCKED_ORIGINAL_YASKAWA_PROVIDER_BYTES: " + relative)
        return selected

    model = original(description, "urdf/moto.urdf", "src/motoXY/moto_description/")
    robot = original(configuration, "config/moto.urdf.xacro", "src/motoXY/moto_moveit_config/")
    controllers = original(configuration, "config/ros2_controllers.yaml", "src/motoXY/moto_moveit_config/")
    original(configuration, "config/moto.ros2_control.xacro", "src/motoXY/moto_moveit_config/")
    original(configuration, "config/initial_positions.yaml", "src/motoXY/moto_moveit_config/")
    config = yaml.safe_load(controllers.read_text())
    required = "moto_controller"  # Exact name in the upstream simulation spawner.
    manager = config.get("controller_manager", {}).get("ros__parameters", {})
    errors = []
    if required not in manager:
        errors.append("original spawner selects moto_controller; YAML declares yaskawa")
    parameters = config.get(required, config.get("yaskawa", {})).get("ros__parameters", {})
    if parameters.get("command_interfaces") != ["position"] or not parameters.get("state_interfaces"):
        errors.append("original controller command/state interfaces are empty")
    rendered = xacro.process_file(str(robot)).toxml()
    tree = ET.fromstring(rendered)
    systems = tree.findall("ros2_control")
    if not systems:
        errors.append("original xacro leaves ros2_control include and macro disabled")
    if errors:
        raise RuntimeError("BLOCKED_UNCHANGED_YASKAWA_UPSTREAM_CONFIGURATION: " + "; ".join(errors))
    plugins = [node.text for system in systems for node in system.findall("hardware/plugin")]
    if plugins != ["mock_components/GenericSystem"]:
        raise RuntimeError("BLOCKED_YASKAWA_SOFTWARE_ONLY_PROVIDER_REQUIRED")
    expected = ["joint_" + str(i) for i in range(1, 7)]
    if [node.get("name") for system in systems for node in system.findall("joint")] != expected:
        raise RuntimeError("BLOCKED_ORIGINAL_GP8_JOINT_SET_AND_ORDER")
    namespace = "sdk02_yaskawa"
    nodes = [
        Node(package="controller_manager", executable="ros2_control_node", namespace=namespace,
             parameters=[{"robot_description": rendered}, str(controllers)], output="screen"),
        Node(package="robot_state_publisher", executable="robot_state_publisher", namespace=namespace,
             parameters=[{"robot_description": rendered}], output="screen"),
    ]
    for controller in ("joint_state_broadcaster", required):
        nodes.append(Node(package="controller_manager", executable="spawner", namespace=namespace,
                          arguments=[controller, "--controller-manager", "controller_manager",
                                     "--controller-manager-timeout", "30"], output="screen"))
    return LaunchDescription(nodes)
