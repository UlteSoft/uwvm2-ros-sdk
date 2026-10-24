## @file main.nim
## @brief Exercise every original urinterfaces/msg/RobotMode field with genuine Nim values.
import "universal_robots/nim/ros2/universal-robots-polyscopex-complete/records"
let bytes = encode(initRos2UrinterfacesMsgRobotMode())
let value = decodeRos2UrinterfacesMsgRobotMode(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"urinterfaces/msg/RobotMode\",\"bytes\":" & $bytes.len & "}"
