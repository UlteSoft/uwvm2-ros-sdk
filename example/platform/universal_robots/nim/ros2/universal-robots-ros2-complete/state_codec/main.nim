## @file main.nim
## @brief Exercise every original ur_msgs/msg/IOStates field with genuine Nim values.
import "universal_robots/nim/ros2/universal-robots-ros2-complete/records"
let bytes = encode(initRos2Ur_msgsMsgIOStates())
let value = decodeRos2Ur_msgsMsgIOStates(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"ur_msgs/msg/IOStates\",\"bytes\":" & $bytes.len & "}"
