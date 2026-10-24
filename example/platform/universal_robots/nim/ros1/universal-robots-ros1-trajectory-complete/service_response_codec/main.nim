## @file main.nim
## @brief Exercise every original ur_dashboard_msgs/AddToLogResponse field with genuine Nim values.
import "universal_robots/nim/ros1/universal-robots-ros1-trajectory-complete/records"
let bytes = encode(initRos1Ur_dashboard_msgsAddToLogResponse())
let value = decodeRos1Ur_dashboard_msgsAddToLogResponse(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":" & $bytes.len & "}"
