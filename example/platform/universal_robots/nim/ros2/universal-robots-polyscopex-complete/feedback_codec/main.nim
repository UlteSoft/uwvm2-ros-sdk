## @file main.nim
## @brief Exercise every original urinterfaces/action/SetMode_Feedback field with genuine Nim values.
import "universal_robots/nim/ros2/universal-robots-polyscopex-complete/records"
let bytes = encode(initRos2UrinterfacesActionSetMode_Feedback())
let value = decodeRos2UrinterfacesActionSetMode_Feedback(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":" & $bytes.len & "}"
