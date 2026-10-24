/// @file main.d
/// @brief Exercise complete dsr_msgs2/action/JogH2r_Feedback values with genuine D BetterC compilation.
module main;
import doosan.ros2.doosan_ros2_humble_complete.records;
import roswasm.wire : Arena;
import core.stdc.stdio : printf;
extern(C) int main() @nogc nothrow {
    Ros2Dsr_msgs2ActionJogH2r_Feedback value;
    ubyte[48] bytes, again;
    ubyte[1048576] arenaBytes;
    Arena arena;
    arena.storage = arenaBytes[];
    size_t length, second;
    auto status = value.encode(bytes[], length);
    if (status) return cast(int)status;
    Ros2Dsr_msgs2ActionJogH2r_Feedback decoded;
    status = Ros2Dsr_msgs2ActionJogH2r_Feedback.decode(bytes[0 .. length], arena, decoded);
    if (status) return cast(int)status;
    status = decoded.encode(again[], second);
    if (status || second != length) return 22;
    foreach(i; 0 .. length) if (bytes[i] != again[i]) return 22;
    return printf("{\"type\":\"dsr_msgs2/action/JogH2r_Feedback\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
