// @file main.odin
// @brief Exercise complete original urinterfaces/srv/SetAnalogOutput_Response values with genuine Odin compilation.
package main
import "core:fmt"
import records "sdk:universal_robots/odin/ros2/universal-robots-polyscopex-complete"
main :: proc() {
    value := records.init_Ros2UrinterfacesSrvSetAnalogOutput_Response()
    buffer: [1]u8
    wire, status := records.encode_Ros2UrinterfacesSrvSetAnalogOutput_Response(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros2UrinterfacesSrvSetAnalogOutput_Response(wire, context.allocator)
    assert(code == 0)
    again_buffer: [1]u8
    again, code2 := records.encode_Ros2UrinterfacesSrvSetAnalogOutput_Response(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("{\"type\":\"urinterfaces/srv/SetAnalogOutput_Response\",\"bytes\":%d}\n", len(wire))
}
