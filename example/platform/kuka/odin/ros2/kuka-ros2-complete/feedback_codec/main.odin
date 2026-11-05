// @file main.odin
// @brief Exercise complete original control_msgs/action/FollowJointTrajectory_Feedback values with genuine Odin compilation.
package main
import "core:fmt"
import "base:runtime"
import records "sdk:kuka/odin/ros2/kuka-ros2-complete"
run :: proc() {
    value := records.init_Ros2Control_msgsActionFollowJointTrajectory_Feedback()
    buffer: [4128]u8
    wire, status := records.encode_Ros2Control_msgsActionFollowJointTrajectory_Feedback(&value, buffer[:])
    assert(status == 0)
    decoded, code := records.decode_Ros2Control_msgsActionFollowJointTrajectory_Feedback(wire, context.allocator)
    assert(code == 0)
    again_buffer: [4128]u8
    again, code2 := records.encode_Ros2Control_msgsActionFollowJointTrajectory_Feedback(&decoded, again_buffer[:])
    assert(code2 == 0 && len(again) == len(wire))
    for byte, i in wire { assert(byte == again[i]) }
    fmt.printf("%s%d%s\n", "{\"type\":\"control_msgs/action/FollowJointTrajectory_Feedback\",\"bytes\":", len(wire), "}")
}

// Enter the real Odin command after WASI C startup.
@(export, link_name="nl_entry")
nl_entry :: proc "c"() -> u32 {
    context = runtime.default_context()
    run()
    return 0
}
