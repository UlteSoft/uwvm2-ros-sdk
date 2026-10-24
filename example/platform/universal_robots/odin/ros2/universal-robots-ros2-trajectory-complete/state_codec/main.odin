// @file main.odin
// @brief Exercise complete original ur_msgs/msg/IOStates values with genuine Odin compilation.
package main
import "core:fmt"
import records "sdk:universal_robots/odin/ros2/universal-robots-ros2-trajectory-complete"
main :: proc() {
    value := records.init_Ros2Ur_msgsMsgIOStates()
    buffer: [404]u8
    wire, status := records.encode_Ros2Ur_msgsMsgIOStates(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros2Ur_msgsMsgIOStates(wire, context.allocator)
    assert(code == 0)
    again_buffer: [404]u8
    again, code2 := records.encode_Ros2Ur_msgsMsgIOStates(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("{\"type\":\"ur_msgs/msg/IOStates\",\"bytes\":%d}\n", len(wire))
}
