// @file main.odin
// @brief Exercise complete original dsr_msgs2/srv/GetRobotState_Response values with genuine Odin compilation.
package main
import "core:fmt"
import records "sdk:doosan/odin/ros2/doosan-ros2-jazzy-complete"
main :: proc() {
    value := records.init_Ros2Dsr_msgs2SrvGetRobotState_Response()
    buffer: [2]u8
    wire, status := records.encode_Ros2Dsr_msgs2SrvGetRobotState_Response(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros2Dsr_msgs2SrvGetRobotState_Response(wire, context.allocator)
    assert(code == 0)
    again_buffer: [2]u8
    again, code2 := records.encode_Ros2Dsr_msgs2SrvGetRobotState_Response(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("{\"type\":\"dsr_msgs2/srv/GetRobotState_Response\",\"bytes\":%d}\n", len(wire))
}
