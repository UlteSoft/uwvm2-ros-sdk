//! @file observation.zig
//! @brief Own complete original Native observations in a genuine Zig guest.
//! @details Records and canonical bytes own finite storage. The scalar C adapter
//! owns no capability and interprets no vendor field. Normal acquisitions close
//! once; fatal traps or allocation failures cannot promise ordinary cleanup.
const std = @import("std");
const wire = @import("native_wire");

/// @brief Read the selected original ROS ABI version without acquiring an owner.
extern fn nl_version() u32;
/// @brief Open borrowed exact alias bytes and return a caller-owned full-width handle.
extern fn nl_open(alias_bytes: [*]const u8, size: u32, owner: *u64) u32;
/// @brief Close the caller-owned full-width handle once and retain its original status.
extern fn nl_close(owner: u64) u32;
/// @brief Activate the exact already granted native subscription.
extern fn nl_subscribe(owner: u64) u32;
/// @brief Poll borrowed writable storage and the original full-width length slot.
extern fn nl_poll(owner: u64, output: [*]u8, capacity: u32, length: *u64) u32;
/// @brief Wait through the actual granted WASI monotonic clock after idle.
extern fn nl_pause(milliseconds: u32) u32;
/// @brief Count original WASI arguments including the executable name.
extern fn nl_argument_count() u32;
/// @brief Borrow an original WASI argument until command return.
extern fn nl_argument(index: u32, size: *u32) ?[*]const u8;
/// @brief Format owned facts and complete encoded bytes without a ROS operation.
extern fn nl_report(
    primary: u32,
    cleanup: u32,
    cleanup_present: u32,
    rpc: u32,
    rpc_present: u32,
    length: u64,
    present: u32,
    polls: u32,
    bytes: [*]const u8,
    size: u32,
) u32;

/// @brief Own one entire original record and independent operation/close facts.
/// @param Record Exact complete generated original record type.
/// @return Ordinary owned value type; value and bytes require response_present.
/// @details Copying this value grants no native authority. Serialize shared mutation.
pub fn Observation(comptime Record: type) type {
    return struct {
        /// @brief First original validation, transport or complete-codec error.
        primary: u32 = 0,
        /// @brief Independent original acquired-owner close result.
        cleanup: u32 = 0,
        /// @brief True only after the acquired owner's single close attempt.
        cleanup_present: bool = false,
        /// @brief Original final event-poll status before local decoding.
        rpc: u32 = 0,
        /// @brief True only after an actual event poll returned.
        rpc_present: bool = false,
        /// @brief Original full-width length slot; maximum preserves the unwritten sentinel.
        length: u64 = std.math.maxInt(u64),
        /// @brief Actual event polls, including idle results.
        polls: u32 = 0,
        /// @brief True only after complete decoding and complete re-encoding.
        response_present: bool = false,
        /// @brief Entire independently owned record, valid only with response_present.
        value: Record = .{},
        /// @brief Owned canonical bytes containing every accepted original field.
        bytes: [Record.maximum_wire_bytes]u8 = @splat(0),
        /// @brief Complete initialized canonical extent, valid only with response_present.
        size: u32 = 0,
    };
}

/// @brief Retain one exact-type owner and receive one complete original record.
/// @param Record Exact complete original generated schema.
/// @param alias_bytes Borrowed strict UTF-8 alias, stable until return, 1..255 bytes.
/// @param attempts Total finite poll budget, 1..250 including the immediate poll.
/// @return Entire owned value and independent primary, last-poll and cleanup facts.
/// @details Only idle 11 permits another poll, after a real twenty-millisecond
/// WASI wait. Capacity and all other errors are never automatically replayed.
pub fn receive(comptime Record: type, alias_bytes: []const u8, attempts: u32) Observation(Record) {
    var out: Observation(Record) = .{};
    if (alias_bytes.len == 0 or alias_bytes.len > 255 or !std.unicode.utf8ValidateSlice(alias_bytes) or
        std.mem.indexOfScalar(u8, alias_bytes, 0) != null or attempts == 0 or attempts > 250)
    {
        out.primary = 22;
        return out;
    }
    if (nl_version() != 1) {
        out.primary = 95;
        return out;
    }
    var owner: u64 = 0;
    out.primary = nl_open(alias_bytes.ptr, @intCast(alias_bytes.len), &owner);
    if (out.primary != 0) {
        return out;
    }
    out.primary = nl_subscribe(owner);
    if (out.primary == 0) {
        for (0..attempts) |index| {
            out.length = std.math.maxInt(u64);
            out.rpc = nl_poll(owner, &out.bytes, out.bytes.len, &out.length);
            out.rpc_present = true;
            out.polls += 1;
            out.primary = out.rpc;
            if (out.rpc != 11 or index + 1 == attempts) {
                break;
            }
            out.primary = nl_pause(20);
            if (out.primary != 0) {
                break;
            }
        }
        if (out.primary == 0) {
            if (out.length > out.bytes.len) {
                out.primary = 22;
            } else if (wire.decode(Record, out.bytes[0..@intCast(out.length)])) |decoded| {
                out.value = decoded;
                var encoded: [Record.maximum_wire_bytes]u8 = @splat(0);
                if (wire.encode(&out.value, &encoded)) |size| {
                    out.bytes = encoded;
                    out.size = @intCast(size);
                    out.response_present = true;
                } else |_| {
                    out.primary = 22;
                }
            } else |_| {
                out.primary = 22;
            }
        }
    }
    out.cleanup_present = true;
    out.cleanup = nl_close(owner);
    return out;
}

/// @brief Count original command arguments without acquiring a native owner.
/// @return Original count including the executable name.
pub fn argumentCount() u32 {
    return nl_argument_count();
}

/// @brief Borrow one original WASI argument for synchronous observation.
/// @param index Original zero-based command argument index.
/// @return Immutable bytes valid until command return; empty when absent.
pub fn argument(index: u32) []const u8 {
    var size: u32 = 0;
    const bytes = nl_argument(index, &size) orelse return "";
    return bytes[0..size];
}

/// @brief Emit the entire accepted canonical body and independent status facts.
/// @param value Borrowed immutable Observation, stable through stdout flush.
/// @return Primary, independent close, then stdout status; no numeric narrowing.
pub fn report(value: anytype) u32 {
    return nl_report(
        value.primary,
        value.cleanup,
        @intFromBool(value.cleanup_present),
        value.rpc,
        @intFromBool(value.rpc_present),
        value.length,
        @intFromBool(value.response_present),
        value.polls,
        &value.bytes,
        value.size,
    );
}

/// @brief Borrow one exact synchronous operation without automatic replay.
extern fn nl_request(operation: u32, owner: u64, input: [*]const u8, size: u32,
    output: [*]u8, capacity: u32, length: *u64) u32;

/// @brief Execute one canonical service/action request and decode its entire response.
/// @param Record Complete original response record type.
/// @param alias_bytes Borrowed strict UTF-8 exact-operation alias, 1..255 bytes.
/// @param operation Service call 1, send goal 2, cancel own 3, feedback 4, result 5.
/// @param input Complete source-language encoded request, at most 32768 bytes.
/// @return Entire owned response and independent original request/close facts.
/// @details No error, timeout or ambiguous effect is replayed. Every ordinary
/// successful acquisition closes once; fatal traps cannot promise cleanup.
pub fn request(comptime Record: type, alias_bytes: []const u8, operation: u32, input: []const u8) Observation(Record) {
    var out: Observation(Record) = .{};
    if (alias_bytes.len == 0 or alias_bytes.len > 255 or !std.unicode.utf8ValidateSlice(alias_bytes) or
        std.mem.indexOfScalar(u8, alias_bytes, 0) != null or operation < 1 or operation > 5 or input.len > 32768)
    {
        out.primary = 22;
        return out;
    }
    if (nl_version() != 1) {
        out.primary = 95;
        return out;
    }
    var owner: u64 = 0;
    out.primary = nl_open(alias_bytes.ptr, @intCast(alias_bytes.len), &owner);
    if (out.primary != 0) {
        return out;
    }
    out.rpc = nl_request(operation, owner, input.ptr, @intCast(input.len), &out.bytes, out.bytes.len, &out.length);
    out.rpc_present = true;
    out.primary = out.rpc;
    if (out.primary == 0) {
        if (out.length > out.bytes.len) {
            out.primary = 22;
        } else if (wire.decode(Record, out.bytes[0..@intCast(out.length)])) |decoded| {
            out.value = decoded;
            var encoded: [Record.maximum_wire_bytes]u8 = @splat(0);
            if (wire.encode(&out.value, &encoded)) |size| {
                out.bytes = encoded;
                out.size = @intCast(size);
                out.response_present = true;
            } else |_| {
                out.primary = 22;
            }
        } else |_| {
            out.primary = 22;
        }
    }
    out.cleanup_present = true;
    out.cleanup = nl_close(owner);
    return out;
}

