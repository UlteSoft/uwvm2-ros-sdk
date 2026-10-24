/// @brief Validate a complete original value in genuine BetterC D.
module main;
import flexiv.ros1noetic.records;
import roswasm.wire : Arena;
import core.stdc.stdio : fread, fwrite, ferror, stdin, stdout;
extern(C) int main() @nogc nothrow {
    static ubyte[2] input;
    static ubyte[2] output;
    align(16) static ubyte[1048576] region;
    Arena arena;
    arena.storage = region[];
    auto count = fread(input.ptr, 1, input.length, stdin);
    if (ferror(stdin)) return 5;
    Ros1Flexiv_msgsMode value;
    auto status = Ros1Flexiv_msgsMode.decode(input[0 .. count], arena, value);
    if (status) return cast(int)status;
    size_t length;
    status = value.encode(output[], length);
    if (status) return cast(int)status;
    return fwrite(output.ptr, 1, length, stdout) == length ? 0 : 5;
}
