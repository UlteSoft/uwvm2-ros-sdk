/// @file main.d
/// @brief Exercise complete ur_dashboard_msgs/AddToLogResponse values with genuine D BetterC compilation.
module main;
import universal_robots.ros1.universal_robots_ros1_trajectory_complete.records;
import roswasm.wire : Arena;
import core.stdc.stdio : printf;
extern(C) int main() @nogc nothrow {
    Ros1Ur_dashboard_msgsAddToLogResponse value;
    ubyte[261] bytes, again;
    ubyte[1048576] arenaBytes;
    Arena arena;
    arena.storage = arenaBytes[];
    size_t length, second;
    auto status = value.encode(bytes[], length);
    if (status) return cast(int)status;
    Ros1Ur_dashboard_msgsAddToLogResponse decoded;
    status = Ros1Ur_dashboard_msgsAddToLogResponse.decode(bytes[0 .. length], arena, decoded);
    if (status) return cast(int)status;
    status = decoded.encode(again[], second);
    if (status || second != length) return 22;
    foreach(i; 0 .. length) if (bytes[i] != again[i]) return 22;
    return printf("{\"type\":\"ur_dashboard_msgs/AddToLogResponse\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
