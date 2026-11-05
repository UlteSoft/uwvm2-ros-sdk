/// @brief Validate a complete original value in genuine BetterC D.
module main;
import flexiv.controllercorehumble.records;
import roswasm.wire : Arena;
import native.d.wasi_stdio : fread, fwrite, ferror, stdin, stdout;
extern(C) uint nl_entry() @nogc nothrow {
    static ubyte[16981] input;
    static ubyte[16981] output;
    align(16) static ubyte[1048576] region;
    Arena arena;
    arena.storage = region[];
    auto count = fread(input.ptr, 1, input.length, stdin);
    if (ferror(stdin)) return 5;
    Ros2Trajectory_msgsMsgJointTrajectory value;
    auto status = Ros2Trajectory_msgsMsgJointTrajectory.decode(input[0 .. count], arena, value);
    if (status) return cast(int)status;
    size_t length;
    status = value.encode(output[], length);
    if (status) return cast(int)status;
    return fwrite(output.ptr, 1, length, stdout) == length ? 0 : 5;
}
