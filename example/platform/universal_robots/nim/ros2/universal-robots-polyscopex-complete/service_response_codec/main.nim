## @file main.nim
## @brief Exercise every original urinterfaces/srv/SetAnalogOutput_Response field with genuine Nim values.
import "universal_robots/nim/ros2/universal-robots-polyscopex-complete/records"
let bytes = encode(initRos2UrinterfacesSrvSetAnalogOutput_Response())
let value = decodeRos2UrinterfacesSrvSetAnalogOutput_Response(bytes)
doAssert encode(value) == bytes
echo "{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":" & $bytes.len & "}"
