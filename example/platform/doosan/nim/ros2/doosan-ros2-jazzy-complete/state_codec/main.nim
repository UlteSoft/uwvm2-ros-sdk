## @file main.nim
## @brief Exercise every original dsr_msgs2/msg/RobotState field with genuine Nim values.
import "doosan/nim/ros2/doosan-ros2-jazzy-complete/records"
let bytes = encode(initRos2Dsr_msgs2MsgRobotState())
let value = decodeRos2Dsr_msgs2MsgRobotState(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"dsr_msgs2/msg/RobotState\",\"bytes\":" & $bytes.len & "}"
