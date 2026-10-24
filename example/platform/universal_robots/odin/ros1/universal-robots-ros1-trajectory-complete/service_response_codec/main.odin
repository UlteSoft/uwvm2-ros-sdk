// @file main.odin
// @brief Exercise complete original ur_dashboard_msgs/AddToLogResponse values with genuine Odin compilation.
package main
import "core:fmt"
import records "sdk:universal_robots/odin/ros1/universal-robots-ros1-trajectory-complete"
main :: proc() {
    value := records.init_Ros1Ur_dashboard_msgsAddToLogResponse()
    buffer: [261]u8
    wire, status := records.encode_Ros1Ur_dashboard_msgsAddToLogResponse(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros1Ur_dashboard_msgsAddToLogResponse(wire, context.allocator)
    assert(code == 0)
    again_buffer: [261]u8
    again, code2 := records.encode_Ros1Ur_dashboard_msgsAddToLogResponse(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":%d}\n", len(wire))
}
