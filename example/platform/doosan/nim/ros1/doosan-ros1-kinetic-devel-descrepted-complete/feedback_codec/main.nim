## @file main.nim
## @brief Exercise every original dsr_msgs/LogAlarm field with genuine Nim values.
import "doosan/nim/ros1/doosan-ros1-kinetic-devel-descrepted-complete/records"
let bytes = encode(initRos1Dsr_msgsLogAlarm())
let value = decodeRos1Dsr_msgsLogAlarm(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":" & $bytes.len & "}"
