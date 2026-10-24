"""@brief Observe full uwvm_limx_bridge/msg/JointState from an explicitly granted fixture alias.
"""
import sys
from ros.py.transport import pause_ms
from limx.py.ros2.observation import wait_joint_state, output

exitCode = 22
if len(sys.argv) == 2:
    result = wait_joint_state(sys.argv[1], 250, lambda: pause_ms(20))
    exitCode = output(result)
