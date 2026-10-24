## @file main.nim
## @brief Exercise every original kuka_driver_interfaces/msg/KssStatus field with genuine Nim values.
import "kuka/nim/ros2/kuka-ros2-complete/records"
let bytes = encode(initRos2Kuka_driver_interfacesMsgKssStatus())
let value = decodeRos2Kuka_driver_interfacesMsgKssStatus(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":" & $bytes.len & "}"
