// @file main.odin
// @brief Exercise complete original ur_msgs/action/FollowJointTrajectoryUntil_Feedback values with genuine Odin compilation.
package main
import "core:fmt"
import "base:runtime"
import records "sdk:universal_robots/odin/ros2/universal-robots-ros2-complete"
run :: proc() {
    value := records.init_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback()
    buffer: [2352]u8
    wire, status := records.encode_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(wire, context.allocator)
    assert(code == 0)
    again_buffer: [2352]u8
    again, code2 := records.encode_Ros2Ur_msgsActionFollowJointTrajectoryUntil_Feedback(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("%s%d%s\n", "{\"type\":\"ur_msgs/action/FollowJointTrajectoryUntil_Feedback\",\"bytes\":", len(wire), "}")
}

// Enter the real Odin command after WASI C startup.
@(export, link_name="nl_entry")
nl_entry :: proc "c"() -> u32 {
    context = runtime.default_context()
    run()
    return 0
}
