# SPDX-License-Identifier: Apache-2.0
"""Launch an owned official model through the unmodified Webots ROS2 driver."""
import json
import os
from pathlib import Path
from launch import LaunchDescription, LaunchService
from launch.actions import ExecuteProcess, RegisterEventHandler, EmitEvent
from launch.event_handlers import OnProcessExit
from launch.events import Shutdown
from launch_ros.actions import Node
from webots_ros2_driver.webots_controller import WebotsController
from webots_ros2_driver.webots_launcher import Ros2SupervisorLauncher


def main():
    scene = json.loads(Path(os.environ["UWVM_OFFICIAL_WEBOTS_SCENE"]).read_text())
    namespace = scene["namespace"]
    description = Path(scene["description"]).read_text()
    runtime = Path(os.environ["WEBOTS_HOME"])
    webots = ExecuteProcess(cmd=[
        "xvfb-run", "--auto-servernum",
        "--error-file=" + os.environ["UWVM_OFFICIAL_WEBOTS_XVFB_LOG"],
        "--server-args=-screen 0 1280x1024x24 -nolisten tcp",
        str(runtime / "webots"), "--batch", "--no-rendering", "--mode=realtime",
        "--stdout", "--stderr", "--minimize", scene["world"]], output="screen")
    driver = WebotsController(robot_name=scene["robot_name"], namespace=namespace.lstrip("/"),
        parameters=[{"robot_description": description, "use_sim_time": True,
                     "set_robot_state_publisher": True}, scene["controllers"]], output="screen")
    nodes = [webots, driver, Ros2SupervisorLauncher(respawn=False),
             Node(package="robot_state_publisher", executable="robot_state_publisher",
                  namespace=namespace, parameters=[
                      {"robot_description": '<robot name="scene"><link name="base"/></robot>',
                       "use_sim_time": True}], output="screen")]
    for name in (scene["broadcaster_name"], scene["controller_name"]):
        nodes.append(Node(package="controller_manager", executable="spawner",
                          arguments=[name, "-c", namespace + "/controller_manager",
                                     "--controller-manager-timeout", "40"], output="screen"))
    nodes.append(RegisterEventHandler(OnProcessExit(target_action=webots,
        on_exit=[EmitEvent(event=Shutdown(reason="Owned Webots exited"))])))
    service = LaunchService()
    service.include_launch_description(LaunchDescription(nodes))
    return service.run()


if __name__ == "__main__":
    raise SystemExit(main())
