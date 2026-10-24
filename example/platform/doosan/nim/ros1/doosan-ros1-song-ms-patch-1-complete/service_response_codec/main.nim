## @file main.nim
## @brief Exercise every original dsr_msgs/GetRobotStateResponse field with genuine Nim values.
import "doosan/nim/ros1/doosan-ros1-song-ms-patch-1-complete/records"
let bytes = encode(initRos1Dsr_msgsGetRobotStateResponse())
let value = decodeRos1Dsr_msgsGetRobotStateResponse(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":" & $bytes.len & "}"
