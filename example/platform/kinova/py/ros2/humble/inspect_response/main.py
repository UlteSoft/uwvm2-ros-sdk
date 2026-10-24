"""@brief Decode a complete original value from actual ROS or standard input.
@details All fields remain owned Python values; errors and cleanup are independent.
"""
import sys
from kinova.py.ros2.mobile_fjt_humble_complete.records import Ros2Control_msgsActionFollowJointTrajectory_Result

primary = cleanup = 0
value = None
raw = sys.stdin.buffer.read(265)
value = Ros2Control_msgsActionFollowJointTrajectory_Result.decode(raw)
if value is not None:
    print(value.encode().hex())
print("primary=%d cleanup=%d" % (primary, cleanup), file=sys.stderr)
raise SystemExit(primary or cleanup)
