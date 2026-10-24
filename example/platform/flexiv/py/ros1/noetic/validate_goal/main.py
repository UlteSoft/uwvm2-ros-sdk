"""@brief Decode a complete original value from actual ROS or standard input.
@details All fields remain owned Python values; errors and cleanup are independent.
"""
import sys
from flexiv.py.ros1.flexiv_ros1_noetic_complete.records import Ros1Flexiv_msgsJointPosVel

primary = cleanup = 0
value = None
raw = sys.stdin.buffer.read(113)
value = Ros1Flexiv_msgsJointPosVel.decode(raw)
if value is not None:
    print(value.encode().hex())
print("primary=%d cleanup=%d" % (primary, cleanup), file=sys.stderr)
raise SystemExit(primary or cleanup)
