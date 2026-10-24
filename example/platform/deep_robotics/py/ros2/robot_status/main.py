"""@brief Observe full drdds/msg/RobotStatus from an explicitly granted fixture alias.
"""
import sys
from ros.py.transport import pause_ms
from deep_robotics.py.ros2.observation import wait_robot_status, output

exitCode = 22
if len(sys.argv) == 2:
    result = wait_robot_status(sys.argv[1], 250, lambda: pause_ms(20))
    exitCode = output(result)
