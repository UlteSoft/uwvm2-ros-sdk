/// @file main.d
/// @brief Exercise complete urinterfaces/action/SetMode_Feedback values with genuine D BetterC compilation.
module main;
import universal_robots.ros2.universal_robots_polyscopex_complete.records;
import roswasm.wire : Arena;
import core.stdc.stdio : printf;
extern(C) int main() @nogc nothrow {
    Ros2UrinterfacesActionSetMode_Feedback value;
    ubyte[2] bytes, again;
    ubyte[1048576] arenaBytes;
    Arena arena;
    arena.storage = arenaBytes[];
    size_t length, second;
    auto status = value.encode(bytes[], length);
    if (status) return cast(int)status;
    Ros2UrinterfacesActionSetMode_Feedback decoded;
    status = Ros2UrinterfacesActionSetMode_Feedback.decode(bytes[0 .. length], arena, decoded);
    if (status) return cast(int)status;
    status = decoded.encode(again[], second);
    if (status || second != length) return 22;
    foreach(i; 0 .. length) if (bytes[i] != again[i]) return 22;
    return printf("{\"type\":\"urinterfaces/action/SetMode_Feedback\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
