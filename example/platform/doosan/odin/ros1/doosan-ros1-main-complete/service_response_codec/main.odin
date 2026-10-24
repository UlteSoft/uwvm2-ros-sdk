// @file main.odin
// @brief Exercise complete original dsr_msgs/GetRobotStateResponse values with genuine Odin compilation.
package main
import "core:fmt"
import records "sdk:doosan/odin/ros1/doosan-ros1-main-complete"
main :: proc() {
    value := records.init_Ros1Dsr_msgsGetRobotStateResponse()
    buffer: [2]u8
    wire, status := records.encode_Ros1Dsr_msgsGetRobotStateResponse(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros1Dsr_msgsGetRobotStateResponse(wire, context.allocator)
    assert(code == 0)
    again_buffer: [2]u8
    again, code2 := records.encode_Ros1Dsr_msgsGetRobotStateResponse(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("{\"type\":\"dsr_msgs/GetRobotStateResponse\",\"bytes\":%d}\n", len(wire))
}
