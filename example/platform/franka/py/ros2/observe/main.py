"""@brief Decode a complete original value from actual ROS or standard input.
@details All fields remain owned Python values; errors and cleanup are independent.
"""
import sys
from franka.py.ros2.franka_ros2_complete.records import Ros2Franka_msgsMsgFrankaRobotState

primary = cleanup = 0
value = None
from ros.py.transport import Capability

capability = None
try:
    if len(sys.argv) != 2: raise ValueError("supply one granted topic alias")
    capability, primary = Capability.open(sys.argv[1])
    if not primary: primary = capability.invoke("topic_subscribe", b"", 0)[0]
    if not primary:
        reply = capability.invoke("event_poll", b"", 10169)
        primary = reply[0]
        if not primary:
            value = Ros2Franka_msgsMsgFrankaRobotState.decode(reply[1])
finally:
    if capability is not None: cleanup = capability.close()
if value is not None:
    print(value.encode().hex())
print("primary=%d cleanup=%d" % (primary, cleanup), file=sys.stderr)
raise SystemExit(primary or cleanup)
