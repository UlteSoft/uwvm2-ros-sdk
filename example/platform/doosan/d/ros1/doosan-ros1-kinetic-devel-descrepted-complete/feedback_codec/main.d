/// @file main.d
/// @brief Exercise complete dsr_msgs/LogAlarm values with genuine D BetterC compilation.
module main;
import doosan.ros1.doosan_ros1_kinetic_devel_descrepted_complete.records;
import roswasm.wire : Arena;
import core.stdc.stdio : printf;
extern(C) int main() @nogc nothrow {
    Ros1Dsr_msgsLogAlarm value;
    ubyte[792] bytes, again;
    ubyte[1048576] arenaBytes;
    Arena arena;
    arena.storage = arenaBytes[];
    size_t length, second;
    auto status = value.encode(bytes[], length);
    if (status) return cast(int)status;
    Ros1Dsr_msgsLogAlarm decoded;
    status = Ros1Dsr_msgsLogAlarm.decode(bytes[0 .. length], arena, decoded);
    if (status) return cast(int)status;
    status = decoded.encode(again[], second);
    if (status || second != length) return 22;
    foreach(i; 0 .. length) if (bytes[i] != again[i]) return 22;
    return printf("{\"type\":\"dsr_msgs/LogAlarm\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
