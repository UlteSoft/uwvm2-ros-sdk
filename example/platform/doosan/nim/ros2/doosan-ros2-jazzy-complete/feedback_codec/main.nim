## @file main.nim
## @brief Exercise every original dsr_msgs2/action/JogH2r_Feedback field with genuine Nim values.
import "doosan/nim/ros2/doosan-ros2-jazzy-complete/records"
let bytes = encode(initRos2Dsr_msgs2ActionJogH2r_Feedback())
let value = decodeRos2Dsr_msgs2ActionJogH2r_Feedback(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":" & $bytes.len & "}"
