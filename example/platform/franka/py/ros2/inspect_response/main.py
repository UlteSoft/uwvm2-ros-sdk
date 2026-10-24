"""@brief Decode a complete original value from actual ROS or standard input.
@details All fields remain owned Python values; errors and cleanup are independent.
"""
import sys
from franka.py.ros2.franka_ros2_complete.records import Ros2Franka_msgsSrvSetCartesianStiffness_Response

primary = cleanup = 0
value = None
raw = sys.stdin.buffer.read(262)
value = Ros2Franka_msgsSrvSetCartesianStiffness_Response.decode(raw)
if value is not None:
    print(value.encode().hex())
print("primary=%d cleanup=%d" % (primary, cleanup), file=sys.stderr)
raise SystemExit(primary or cleanup)
