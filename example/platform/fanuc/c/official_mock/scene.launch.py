# SPDX-License-Identifier: Apache-2.0
"""Launch the same checked software scene used by the Wasm integration suite."""
from pathlib import Path
import os
import sys
from launch import LaunchDescription
from launch_ros.actions import Node

sys.path.insert(0, str(Path(__file__).resolve().parent))
from prepare_scene import prepare


def generate_launch_description():
    output = Path(os.environ["UWVM_ROS_FANUC_SCENE_OUTPUT"]).resolve()
    output.mkdir(parents=True, exist_ok=True)
    scene = prepare(output)
    namespace = os.environ.get("UWVM_ROS_FANUC_SCENE_NAMESPACE", "fanuc_simulation")
    description = {"robot_description": Path(scene["description"]).read_text()}
    nodes = [Node(package="robot_state_publisher", executable="robot_state_publisher",
                  namespace=namespace, parameters=[description], output="screen"),
             Node(package="controller_manager", executable="ros2_control_node",
                  namespace=namespace, parameters=[scene["controllers"]], output="screen")]
    nodes.append(Node(package="controller_manager", executable="spawner", namespace=namespace,
        arguments=["joint_state_broadcaster", "joint_trajectory_controller", "--controller-manager",
                   "/" + namespace.strip("/") + "/controller_manager", "--controller-manager-timeout", "30"], output="screen"))
    return LaunchDescription(nodes)
