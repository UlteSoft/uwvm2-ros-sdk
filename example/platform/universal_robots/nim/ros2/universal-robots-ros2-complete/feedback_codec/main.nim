## @file main.nim
## @brief Exercise every original ur_msgs/action/FollowJointTrajectoryUntil_Feedback field with genuine Nim values.
import "universal_robots/nim/ros2/universal-robots-ros2-complete/records"
let bytes = encode(initRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback())
let value = decodeRos2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":" & $bytes.len & "}"
