## @file main.nim
## @brief Exercise every original dsr_msgs/RobotState field with genuine Nim values.
import "doosan/nim/ros1/doosan-ros1-song-ms-patch-1-complete/records"
let bytes = encode(initRos1Dsr_msgsRobotState())
let value = decodeRos1Dsr_msgsRobotState(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"dsr_msgs/RobotState\",\"bytes\":" & $bytes.len & "}"
