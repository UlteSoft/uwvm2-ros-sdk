## @file main.nim
## @brief Exercise every original ur_msgs/IOStates field with genuine Nim values.
import "universal_robots/nim/ros1/universal-robots-ros1-complete/records"
let bytes = encode(initRos1Ur_msgsIOStates())
let value = decodeRos1Ur_msgsIOStates(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"ur_msgs/IOStates\",\"bytes\":" & $bytes.len & "}"
