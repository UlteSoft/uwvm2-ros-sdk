//! @brief Consume three preloaded modules through scalar ABI calls.
const std = @import("std");
extern "algorithm" fn algorithm_mix(u32) u32;
extern "algorithm" fn algorithm_denied() u32;
extern "io" fn io_report(u32) u32;
extern "io" fn io_denied() u32;
extern "ros_comm" fn ros_comm_publish(u32) u32;
extern fn nl_argument_count() u32;
extern fn nl_argument(u32, *u32) ?[*]const u8;
extern fn nl_open([*]const u8, u32, *u64) u32;
extern fn nl_close(u64) u32;

/// @brief Parse bounded decimal input, check denied callers, and run the pipeline.
/// @details argv belongs to this module. Only integer values cross Wasm calls.
export fn nl_entry() u32
{
    if (nl_argument_count() != 3)
        return 64;
    var size: u32 = 0;
    const input_bytes = (nl_argument(1, &size) orelse return 64)[0..size];
    if (input_bytes.len == 0 or input_bytes.len > 8)
        return 64;
    var input: u32 = 0;
    for (input_bytes) |byte|
    {
        if (byte < '0' or byte > '9')
            return 64;
        input = input * 10 + byte - '0';
    }
    const mode = (nl_argument(2, &size) orelse return 64)[0..size];
    const granted = std.mem.eql(u8, mode, "granted");
    if (!granted and !std.mem.eql(u8, mode, "denied"))
        return 64;
    const alias = "library_pub";
    var owner: u64 = 0xfedcba9876543210;
    const denied = nl_open(alias.ptr, alias.len, &owner);
    if (denied == 0)
    {
        _ = nl_close(owner);
        return 104;
    }
    if (denied != 13 or owner != 0xfedcba9876543210)
        return 105;
    if (algorithm_denied() != 13 or io_denied() != 13)
        return 106;
    const result = algorithm_mix(input);
    if (result != input *% 3 +% 11)
        return 107;
    const native = ros_comm_publish(result);
    if (native != (if (granted) @as(u32, 0) else @as(u32, 13)))
        return 108;
    return if (io_report(result) == 0) 0 else 5;
}
