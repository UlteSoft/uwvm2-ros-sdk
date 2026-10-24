/// @brief Validate a complete original value in genuine BetterC D.
module main;
import franka.ros2.records;
import roswasm.wire : Arena;
import core.stdc.stdio : fread, fwrite, ferror, stdin, stdout;
extern(C) int main() @nogc nothrow {
    static ubyte[10170] input;
    static ubyte[10170] output;
    align(16) static ubyte[1048576] region;
    Arena arena;
    arena.storage = region[];
    auto count = fread(input.ptr, 1, input.length, stdin);
    if (ferror(stdin)) return 5;
    Ros2Franka_msgsMsgFrankaRobotState value;
    auto status = Ros2Franka_msgsMsgFrankaRobotState.decode(input[0 .. count], arena, value);
    if (status) return cast(int)status;
    size_t length;
    status = value.encode(output[], length);
    if (status) return cast(int)status;
    return fwrite(output.ptr, 1, length, stdout) == length ? 0 : 5;
}
