## @file main.nim
## @brief Exercise every original lifecycle_msgs/srv/ChangeState_Response field with genuine Nim values.
import "kuka/nim/ros2/kuka-ros2-complete/records"
let bytes = encode(initRos2Lifecycle_msgsSrvChangeState_Response())
let value = decodeRos2Lifecycle_msgsSrvChangeState_Response(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":" & $bytes.len & "}"
