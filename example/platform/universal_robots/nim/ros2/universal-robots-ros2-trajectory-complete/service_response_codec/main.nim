## @file main.nim
## @brief Exercise every original ur_dashboard_msgs/srv/AddToLog_Response field with genuine Nim values.
import "universal_robots/nim/ros2/universal-robots-ros2-trajectory-complete/records"
let bytes = encode(initRos2Ur_dashboard_msgsSrvAddToLog_Response())
let value = decodeRos2Ur_dashboard_msgsSrvAddToLog_Response(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"ur_dashboard_msgs/srv/AddToLog_Response\",\"bytes\":" & $bytes.len & "}"
