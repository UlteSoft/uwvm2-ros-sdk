// @file main.odin
// @brief Exercise complete original dsr_msgs/AlterMotionStream values with genuine Odin compilation.
package main
import "core:fmt"
import "base:runtime"
import records "sdk:doosan/odin/ros1/doosan-ros1-main-complete"
run :: proc() {
    value := records.init_Ros1Dsr_msgsAlterMotionStream()
    buffer: [48]u8
    wire, status := records.encode_Ros1Dsr_msgsAlterMotionStream(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros1Dsr_msgsAlterMotionStream(wire, context.allocator)
    assert(code == 0)
    again_buffer: [48]u8
    again, code2 := records.encode_Ros1Dsr_msgsAlterMotionStream(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("%s%d%s\n", "{\"type\":\"dsr_msgs/AlterMotionStream\",\"bytes\":", len(wire), "}")
}

// Enter the real Odin command after WASI C startup.
@(export, link_name="nl_entry")
nl_entry :: proc "c"() -> u32 {
    context = runtime.default_context()
    run()
    return 0
}
