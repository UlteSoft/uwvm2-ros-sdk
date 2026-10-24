## @file main.nim
## @brief Exercise every original ur_dashboard_msgs/SetModeFeedback field with genuine Nim values.
import "universal_robots/nim/ros1/universal-robots-ros1-complete/records"
let bytes = encode(initRos1Ur_dashboard_msgsSetModeFeedback())
let value = decodeRos1Ur_dashboard_msgsSetModeFeedback(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"ur_dashboard_msgs/SetModeFeedback\",\"bytes\":" & $bytes.len & "}"
