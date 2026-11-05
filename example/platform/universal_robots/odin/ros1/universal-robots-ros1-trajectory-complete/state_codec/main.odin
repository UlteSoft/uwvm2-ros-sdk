// @file main.odin
// @brief Exercise complete original ur_msgs/IOStates values with genuine Odin compilation.
package main
import "core:fmt"
import "base:runtime"
import records "sdk:universal_robots/odin/ros1/universal-robots-ros1-trajectory-complete"
run :: proc() {
    value := records.init_Ros1Ur_msgsIOStates()
    buffer: [404]u8
    wire, status := records.encode_Ros1Ur_msgsIOStates(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros1Ur_msgsIOStates(wire, context.allocator)
    assert(code == 0)
    again_buffer: [404]u8
    again, code2 := records.encode_Ros1Ur_msgsIOStates(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("%s%d%s\n", "{\"type\":\"ur_msgs/IOStates\",\"bytes\":", len(wire), "}")
}

// Enter the real Odin command after WASI C startup.
@(export, link_name="nl_entry")
nl_entry :: proc "c"() -> u32 {
    context = runtime.default_context()
    run()
    return 0
}
