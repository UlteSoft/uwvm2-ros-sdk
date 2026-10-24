/// @file main.d
/// @brief Exercise complete control_msgs/FollowJointTrajectoryFeedback values with genuine D BetterC compilation.
module main;
import universal_robots.ros1.universal_robots_ros1_trajectory_complete.records;
import roswasm.wire : Arena;
import core.stdc.stdio : printf;
extern(C) int main() @nogc nothrow {
    Ros1Control_msgsFollowJointTrajectoryFeedback value;
    ubyte[2356] bytes, again;
    ubyte[1048576] arenaBytes;
    Arena arena;
    arena.storage = arenaBytes[];
    size_t length, second;
    auto status = value.encode(bytes[], length);
    if (status) return cast(int)status;
    Ros1Control_msgsFollowJointTrajectoryFeedback decoded;
    status = Ros1Control_msgsFollowJointTrajectoryFeedback.decode(bytes[0 .. length], arena, decoded);
    if (status) return cast(int)status;
    status = decoded.encode(again[], second);
    if (status || second != length) return 22;
    foreach(i; 0 .. length) if (bytes[i] != again[i]) return 22;
    return printf("{\"type\":\"control_msgs/FollowJointTrajectoryFeedback\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
