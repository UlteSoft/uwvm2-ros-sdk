// @file main.odin
// @brief Exercise complete original lifecycle_msgs/srv/ChangeState_Response values with genuine Odin compilation.
package main
import "core:fmt"
import records "sdk:kuka/odin/ros2/kuka-ros2-complete"
main :: proc() {
    value := records.init_Ros2Lifecycle_msgsSrvChangeState_Response()
    buffer: [1]u8
    wire, status := records.encode_Ros2Lifecycle_msgsSrvChangeState_Response(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros2Lifecycle_msgsSrvChangeState_Response(wire, context.allocator)
    assert(code == 0)
    again_buffer: [1]u8
    again, code2 := records.encode_Ros2Lifecycle_msgsSrvChangeState_Response(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("{\"type\":\"lifecycle_msgs/srv/ChangeState_Response\",\"bytes\":%d}\n", len(wire))
}
