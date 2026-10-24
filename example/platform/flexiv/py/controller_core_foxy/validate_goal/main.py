"""@brief Decode a complete original value from actual ROS or standard input.
@details All fields remain owned Python values; errors and cleanup are independent.
"""
import sys
from flexiv.py.ros2.flexiv_controller_core_foxy_complete.records import Ros2Sensor_msgsMsgJointState

primary = cleanup = 0
value = None
raw = sys.stdin.buffer.read(9373)
value = Ros2Sensor_msgsMsgJointState.decode(raw)
if value is not None:
    print(value.encode().hex())
print("primary=%d cleanup=%d" % (primary, cleanup), file=sys.stderr)
raise SystemExit(primary or cleanup)
