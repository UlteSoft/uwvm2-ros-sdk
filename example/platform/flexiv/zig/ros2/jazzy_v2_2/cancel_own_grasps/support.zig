//! @file support.zig
//! @brief Finite application reporting and an explicitly granted monotonic WASI wait.
//! @details This module preserves complete original action fields and bounded storage.
//! Runtime authority is supplied explicitly by the caller's deployment configuration.

const std = @import("std");
const client = @import("rosclient");
const wire = @import("roswire");
extern fn write(fd: c_int, bytes: [*]const u8, size: usize) isize;
extern "wasi_snapshot_preview1" fn poll_oneoff(usize, usize, usize, usize) u32;
extern "wasi_snapshot_preview1" fn poll_oneoff_wasm64(usize, usize, usize, usize) u32;
/// @brief Write a bounded diagnostic while handling partial stream writes.
/// @param format Compile-time format string.
/// @param values Values formatted into a 1024-byte stack buffer.
/// @return Zero on success or 5 on formatting or output failure.
/// @details The function requires the deployment's explicit WASI stream policy.
pub fn print(comptime format: []const u8, values: anytype) u32
{
    var text: [1024]u8 = undefined;
    const bytes = std.fmt.bufPrint(&text, format, values) catch return 5;
    var at: usize = 0;
    while (at < bytes.len)
    {
        const n = write(1, bytes[at..].ptr, bytes.len - at);
        if (n <= 0)
            return 5;
        at += @intCast(n);
    }
    return 0;
}
/// @brief Report every canonical field of a typed action record in hexadecimal.
/// @param label Compile-time diagnostic record label.
/// @param id Opaque SDK correlation ID, used only for observation.
/// @param kind Public feedback or terminal discriminator.
/// @param value Pointer to the complete bounded original record.
/// @return Zero, encoding status 22, or the stream-write error.
/// @details Encoding and hexadecimal buffers are stack-owned and bounded.
pub fn record(comptime label: []const u8, id: u64, kind: u8, value: anytype) u32
{
    var bytes: [261]u8 = undefined;
    const n = wire.encode(value, &bytes) catch return 22;
    var hex: [522]u8 = undefined;
    const digits = "0123456789abcdef";
    for (bytes[0..n], 0..) |v, i|
    {
        hex[i * 2] = digits[v >> 4];
        hex[i * 2 + 1] = digits[v & 15];
    }
    return print(label ++ " id={d} kind={d} wire={s}\n", .{ id, kind, hex[0 .. n * 2] });
}
/// @brief Wait for a finite monotonic Preview1 clock event.
/// @return Zero for one successful clock event or 5 otherwise.
/// @details The 40 ms wait uses the exact memory32 or memory64 import ABI.
/// Clock access must be granted in the manually supplied deployment policy.
pub fn pause() u32
{
    var input = [_]u64{0} ** 6;
    var events = [_]u64{0} ** 4;
    const bytes = std.mem.asBytes(&input);
    bytes[16] = 1;
    std.mem.writeInt(u64, bytes[24..32], 40000000, .little);
    std.mem.writeInt(u64, bytes[32..40], 1000000, .little);
    var ready: usize = 0;
    const code = if (@sizeOf(usize) == 8)
        poll_oneoff_wasm64(@intFromPtr(&input), @intFromPtr(&events), 1, @intFromPtr(&ready))
    else
        poll_oneoff(@intFromPtr(&input), @intFromPtr(&events), 1, @intFromPtr(&ready));
    const result = std.mem.asBytes(&events);
    return if (code == 0 and ready == 1 and result[8] == 0 and result[9] == 0 and result[10] == 0) 0 else 5;
}
/// @brief Close acquired endpoints in reverse order and preserve the primary error.
/// @param primary Main operation status before cleanup.
/// @param owners Caller-owned optional endpoint slots; each closed slot is cleared.
/// @return Primary failure, first cleanup failure, or final output status.
/// @details Each acquired handle is retired once, even after partial acquisition.
pub fn finish(primary: u32, owners: []?client.Owner) u32
{
    var cleanup: u32 = 0;
    var i = owners.len;
    while (i != 0)
    {
        i -= 1;
        if (owners[i]) |owner|
        {
            const status = owner.close();
            if (cleanup == 0) cleanup = status;
            owners[i] = null;
        }
    }
    const io = print("primary={d} cleanup={d}\n", .{ primary, cleanup });
    return if (primary != 0) primary else if (cleanup != 0) cleanup else io;
}
/// @brief Observe refused escalation and access to an ungranted alias.
/// @param owner Endpoint whose rights deliberately exclude cancel-any.
/// @return Zero only for the expected permission refusals; otherwise an error.
/// @details Unexpectedly acquired handles are closed; no grants are synthesized.
pub fn refusals(owner: client.Owner) u32
{
    var state: client.State = .{};
    const unauthorized = client.open(&state, "unauthorized_cancel");
    if (unauthorized.owner) |unexpected|
    {
        _ = unexpected.close();
        return 22;
    }
    const all = [_]u8{0} ** 8;
    var ack: [1]u8 = undefined;
    const denied = owner.request(.action_cancel_any_goal, &all, &ack);
    const io = print("AUTH any_via_own={d} ungranted={d}\n", .{ denied.code, unauthorized.code });
    return if (io != 0) io else if (denied.code == 13 and unauthorized.code == 13) 0 else 22;
}
