# SPDX-License-Identifier: Apache-2.0
"""Headless CRX10iA scene using the unchanged official FANUC mock components.

The native mock scope and complete Wasm simulation qualification are separate.
"""
from pathlib import Path
import hashlib
import json
import xml.etree.ElementTree as ET
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch_ros.actions import Node
from launch_ros.parameter_descriptions import ParameterFile
import xacro


def generate_launch_description():
    namespace = "fanuc_simulation"
    declared = [
        DeclareLaunchArgument("gpio_config_package", default_value="fanuc_hardware_interface"),
        DeclareLaunchArgument("gpio_config_path", default_value="config/example_gpio_config.yaml"),
    ]
    package = Path(get_package_share_directory("fanuc_hardware_interface"))
    lock = json.loads((Path(__file__).resolve().parent / "provider.source.lock.json").read_text())
    expected = {row["source_path"]: row for row in lock["files"]}
    for relative in ("package.xml", "robot/crx10ia.urdf.xacro", "config/ros2_controllers.yaml",
                     "config/crx_mock_ros2_control_macro.xacro", "config/example_gpio_config.yaml"):
        original = package / relative
        if hashlib.sha256(original.read_bytes()).hexdigest() != expected["fanuc_hardware_interface/" + relative]["sha256"]:
            raise RuntimeError("BLOCKED_ORIGINAL_FANUC_PROVIDER_BYTES: " + relative)
    rendered = xacro.process_file(str(package / "robot/crx10ia.urdf.xacro"), mappings={
        "use_mock": "true", "robot_ip": "127.0.0.1", "prefix": "",
        "origin_xyz": "0 0 0", "origin_rpy": "0 0 0", "parent_link": "world", "child_link": "end_effector",
    }).toxml()
    systems = ET.fromstring(rendered).findall("ros2_control")
    plugins = [node.text for system in systems for node in system.findall("hardware/plugin")]
    names = [node.get("name") for system in systems for node in system.findall("joint")]
    if plugins != ["mock_components/GenericSystem"] or names != ["J" + str(i) for i in range(1, 7)]:
        raise RuntimeError("BLOCKED_ORIGINAL_FANUC_SOFTWARE_ONLY_MODEL_AND_JOINTS")
    description = {"robot_description": rendered}
    controllers = ParameterFile(str(package / "config/ros2_controllers.yaml"), allow_substs=True)
    nodes = [
        Node(package="controller_manager", executable="ros2_control_node", namespace=namespace,
             parameters=[description, controllers], output="screen"),
        Node(package="robot_state_publisher", executable="robot_state_publisher", namespace=namespace,
             parameters=[description], output="screen"),
    ]
    for controller in ("joint_state_broadcaster", "joint_trajectory_controller"):
        nodes.append(Node(package="controller_manager", executable="spawner", namespace=namespace,
            arguments=[controller, "--controller-manager", "controller_manager",
                       "--controller-manager-timeout", "30"], output="screen"))
    return LaunchDescription(declared + nodes)
