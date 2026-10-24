## @file main.nim
## @brief Exercise every original control_msgs/action/FollowJointTrajectory_Feedback field with genuine Nim values.
import "kuka/nim/ros2/kuka-ros2-complete/records"
let bytes = encode(initRos2Control_msgsActionFollowJointTrajectory_Feedback())
let value = decodeRos2Control_msgsActionFollowJointTrajectory_Feedback(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":" & $bytes.len & "}"
