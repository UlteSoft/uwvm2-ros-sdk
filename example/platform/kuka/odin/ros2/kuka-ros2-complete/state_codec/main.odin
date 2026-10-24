// @file main.odin
// @brief Exercise complete original kuka_driver_interfaces/msg/KssStatus values with genuine Odin compilation.
package main
import "core:fmt"
import records "sdk:kuka/odin/ros2/kuka-ros2-complete"
main :: proc() {
    value := records.init_Ros2Kuka_driver_interfacesMsgKssStatus()
    buffer: [9]u8
    wire, status := records.encode_Ros2Kuka_driver_interfacesMsgKssStatus(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros2Kuka_driver_interfacesMsgKssStatus(wire, context.allocator)
    assert(code == 0)
    again_buffer: [9]u8
    again, code2 := records.encode_Ros2Kuka_driver_interfacesMsgKssStatus(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":%d}\n", len(wire))
}
