"""Launch only the official RRBot software hardware and official ROS controllers."""
from pathlib import Path
import json
import math
import os
import xml.etree.ElementTree as ET
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription, LaunchService
from launch_ros.actions import Node
import xacro


def main():
    if os.environ.get("ROS_LOCALHOST_ONLY") != "1" or sorted(os.listdir("/sys/class/net")) != ["lo"]:
        raise RuntimeError("BLOCKED_ISOLATED_LOOPBACK_SCENE_REQUIRED")
    package = Path(get_package_share_directory("ros2_control_demo_example_1"))
    description = xacro.process_file(str(package / "urdf/rrbot.urdf.xacro")).toxml()
    model = ET.fromstring(description)
    plugins = [p.text.strip() for p in model.findall("./ros2_control/hardware/plugin")]
    if plugins != ["ros2_control_demo_example_1/RRBotSystemPositionOnlyHardware"]:
        raise RuntimeError("BLOCKED_PHYSICAL_OR_UNKNOWN_HARDWARE_PLUGIN")
    joints = {j.attrib["name"]: j for j in model.findall("./joint")}
    for name in ("joint1", "joint2"):
        joint = joints[name]
        limit = joint.find("limit")
        if joint.attrib.get("type") != "revolute" or limit is None:
            raise RuntimeError("BLOCKED_ACTUAL_BOUNDED_REVOLUTE_URDF")
        lower, upper = float(limit.attrib["lower"]), float(limit.attrib["upper"])
        if not math.isfinite(lower + upper) or lower > -1.0 or upper < 1.0:
            raise RuntimeError("BLOCKED_ADAPTER_OPERATING_BOUNDS_OUTSIDE_NATIVE_MODEL")
    config = str(Path(__file__).with_name("controllers.yaml"))
    service = LaunchService(argv=[])
    service.include_launch_description(LaunchDescription([
        Node(package="robot_state_publisher", executable="robot_state_publisher",
             parameters=[{"robot_description": description}], output="screen"),
        Node(package="controller_manager", executable="ros2_control_node", parameters=[config],
             remappings=[("~/robot_description", "/robot_description")], output="screen"),
        Node(package="controller_manager", executable="spawner",
             arguments=["joint_state_broadcaster", "portable_position_controller", "--param-file", config],
             output="screen")]))
    return service.run()


if __name__ == "__main__":
    raise SystemExit(main())
