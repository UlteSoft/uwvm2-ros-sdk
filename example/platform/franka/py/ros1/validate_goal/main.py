"""@brief Decode a complete original value from actual ROS or standard input.
@details All fields remain owned Python values; errors and cleanup are independent.
"""
import sys
from franka.py.ros1.franka_ros1_complete.records import Ros1Franka_gripperGraspGoal

primary = cleanup = 0
value = None
raw = sys.stdin.buffer.read(41)
value = Ros1Franka_gripperGraspGoal.decode(raw)
if value is not None:
    print(value.encode().hex())
print("primary=%d cleanup=%d" % (primary, cleanup), file=sys.stderr)
raise SystemExit(primary or cleanup)
