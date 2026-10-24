"""@brief Observe full uwvm_limx_bridge/msg/ImuData from an explicitly granted fixture alias.
"""
import sys
from ros.py.transport import pause_ms
from limx.py.ros2.observation import wait_imu, output

exitCode = 22
if len(sys.argv) == 2:
    result = wait_imu(sys.argv[1], 250, lambda: pause_ms(20))
    exitCode = output(result)
