## @file main.nim
## @brief Exercise every original dsr_msgs/AlterMotionStream field with genuine Nim values.
import "doosan/nim/ros1/doosan-ros1-doosan-robotics-patch-1-complete/records"
let bytes = encode(initRos1Dsr_msgsAlterMotionStream())
let value = decodeRos1Dsr_msgsAlterMotionStream(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":" & $bytes.len & "}"
