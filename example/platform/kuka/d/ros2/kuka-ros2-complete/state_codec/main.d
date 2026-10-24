/// @file main.d
/// @brief Exercise complete kuka_driver_interfaces/msg/KssStatus values with genuine D BetterC compilation.
module main;
import kuka.ros2.kuka_ros2_complete.records;
import roswasm.wire : Arena;
import core.stdc.stdio : printf;
extern(C) int main() @nogc nothrow {
    Ros2Kuka_driver_interfacesMsgKssStatus value;
    ubyte[9] bytes, again;
    ubyte[1048576] arenaBytes;
    Arena arena;
    arena.storage = arenaBytes[];
    size_t length, second;
    auto status = value.encode(bytes[], length);
    if (status) return cast(int)status;
    Ros2Kuka_driver_interfacesMsgKssStatus decoded;
    status = Ros2Kuka_driver_interfacesMsgKssStatus.decode(bytes[0 .. length], arena, decoded);
    if (status) return cast(int)status;
    status = decoded.encode(again[], second);
    if (status || second != length) return 22;
    foreach(i; 0 .. length) if (bytes[i] != again[i]) return 22;
    return printf("{\"type\":\"kuka_driver_interfaces/msg/KssStatus\",\"bytes\":%zu}\n", length) < 0 ? 5 : 0;
}
