/// @brief Validate a complete original value in genuine BetterC D.
module main;
import franka.ros1.records;
import roswasm.wire : Arena;
import native.d.wasi_stdio : fread, fwrite, ferror, stdin, stdout;
extern(C) uint nl_entry() @nogc nothrow {
    static ubyte[41] input;
    static ubyte[41] output;
    align(16) static ubyte[1048576] region;
    Arena arena;
    arena.storage = region[];
    auto count = fread(input.ptr, 1, input.length, stdin);
    if (ferror(stdin)) return 5;
    Ros1Franka_gripperGraspGoal value;
    auto status = Ros1Franka_gripperGraspGoal.decode(input[0 .. count], arena, value);
    if (status) return cast(int)status;
    size_t length;
    status = value.encode(output[], length);
    if (status) return cast(int)status;
    return fwrite(output.ptr, 1, length, stdout) == length ? 0 : 5;
}
