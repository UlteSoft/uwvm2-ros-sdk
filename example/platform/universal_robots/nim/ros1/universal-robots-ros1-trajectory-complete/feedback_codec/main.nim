## @file main.nim
## @brief Exercise every original control_msgs/FollowJointTrajectoryFeedback field with genuine Nim values.
import "universal_robots/nim/ros1/universal-robots-ros1-trajectory-complete/records"
let bytes = encode(initRos1Control_msgsFollowJointTrajectoryFeedback())
let value = decodeRos1Control_msgsFollowJointTrajectoryFeedback(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":" & $bytes.len & "}"
