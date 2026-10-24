"""@brief Observe full booster_interface/msg/RemoteControllerState from an explicitly granted fixture alias.
"""
import sys
from ros.py.transport import pause_ms
from booster.py.ros2.observation import wait_remote_controller, output

exitCode = 22
if len(sys.argv) == 2:
    result = wait_remote_controller(sys.argv[1], 250, lambda: pause_ms(20))
    exitCode = output(result)
