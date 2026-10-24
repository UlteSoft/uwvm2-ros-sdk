//! @file main.zig
//! @brief Observe one complete original ROS 2 force_sensor native message.
//! @details One explicit alias is required; the real Zig observer closes before stdout.
const fanuc = @import("fanuc");
/// @brief Enter the genuine compiled Zig command and preserve its full numeric status.
/// @details Read exactly one strict UTF-8 alias from the original WASI argument vector.
/// Invalid argument count returns 22 before acquisition. Normal observations close once before stdout.
/// @return Zero after complete decoding, encoding and successful close; otherwise preserve the first
/// primary, independent close or stdout error. Fatal traps cannot promise ordinary cleanup.
export fn nl_entry() u32 {
    if (fanuc.argumentCount() != 2) {
        return 22;
    }
    const value = fanuc.waitForceSensor(fanuc.argument(1), 250);
    return fanuc.report(&value);
}
