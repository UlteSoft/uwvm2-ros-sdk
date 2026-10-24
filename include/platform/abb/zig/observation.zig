//! @file observation.zig
//! @brief Genuine Zig records, canonical codecs and owned ABB observations.
//! @details All records own their finite byte arrays. No decoded field borrows
//! response storage. Transport and cleanup remain independent. The C ABI shim
//! only converts pointers; it owns no capability and interprets no record.
const std = @import("std");
/// @brief Read the selected original ROS transport ABI version.
/// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
/// @return Original version value, independently from operation errors.
extern fn nl_version() u32;

/// @brief Open one exact granted alias without retry.
/// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
/// @param alias Complete immutable strict UTF-8 capability alias.
/// @param size Complete initialized byte extent.
/// @param owner Exclusive writable full-width acquired-owner slot.
/// @return Original unsigned ABI error; owner is acquired only on zero.
extern fn nl_open(
    alias: [*]const u8,
    size: u32,
    owner: *u64,
) u32;

/// @brief Retire one caller-owned acquired capability once.
/// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
/// @param handle Caller-owned exact opaque capability identifier.
/// @return Original independent unsigned close status.
extern fn nl_close(
    handle: u64,
) u32;

/// @brief Activate one exact already granted topic subscription.
/// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
/// @param handle Caller-owned exact opaque capability identifier.
/// @return Original unsigned ABI operation status.
extern fn nl_subscribe(
    handle: u64,
) u32;

/// @brief Poll exactly one event without implicit retry or decoding.
/// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
/// @param handle Caller-owned exact opaque capability identifier.
/// @param output Exclusive writable canonical response storage.
/// @param capacity Complete available response byte extent.
/// @param length Exclusive sentinel-initialized full-width original length slot.
/// @return Original unsigned transport status and unchanged original length facts.
extern fn nl_poll(
    handle: u64,
    output: [*]u8,
    capacity: u32,
    length: *u64,
) u32;

/// @brief Perform one admitted service call without replay or interpretation.
/// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
/// @param handle Caller-owned exact opaque capability identifier.
/// @param input Complete immutable original canonical request bytes.
/// @param size Complete initialized byte extent.
/// @param output Exclusive writable canonical response storage.
/// @param capacity Complete available response byte extent.
/// @param length Exclusive sentinel-initialized full-width original length slot.
/// @return Original unsigned transport status and unchanged original length facts.
extern fn nl_call(
    handle: u64,
    input: [*]const u8,
    size: u32,
    output: [*]u8,
    capacity: u32,
    length: *u64,
) u32;

/// @brief Delay only after an explicitly observed idle poll.
/// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
/// @param milliseconds Finite explicitly selected delay in 0..1000 milliseconds.
/// @return Zero, local argument error 22 or original local pause error.
extern fn nl_pause(
    milliseconds: u32,
) u32;

/// @brief Borrow one complete original WASI command argument.
/// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
/// @param index Original zero-based WASI command argument index.
/// @param extent Exclusive writable original argument byte count.
/// @return Immutable process-lifetime bytes, or absent/empty when unavailable.
extern fn nl_argument(
    index: u32,
    extent: *u32,
) ?[*]const u8;

/// @brief Emit complete already owned facts and lossless canonical bytes.
/// @details Borrowed bytes remain valid until return; this import implements no owner or vendor codec.
/// @param primary First original operation, canonical-codec or controller error.
/// @param cleanup Independent original acquired-owner close status.
/// @param cleanup_present Exactly one only after an acquired-owner close attempt.
/// @param rpc Original full unsigned transport status without narrowing.
/// @param rpc_present Exactly one only after an admitted service call or event poll.
/// @param length_value Original full-width length slot; maximum preserves unwritten state.
/// @param present Exactly one only after whole-record canonical validation.
/// @param wire Complete immutable source-language re-encoded canonical bytes.
/// @param size Complete initialized byte extent.
/// @return Primary, independent cleanup or output error; no numeric narrowing.
extern fn nl_report(
    primary: u32,
    cleanup: u32,
    cleanup_present: u32,
    rpc: u32,
    rpc_present: u32,
    length_value: u64,
    present: u32,
    wire: [*]const u8,
    size: u32,
) u32;

/// @brief Own finite strict Unicode string bytes without a trailing NUL.
/// @details Backing storage belongs to this value; no native ROS owner is created.
/// @param capacity Inclusive original byte bound.
/// @return Complete independent native string value type.
pub fn Text(comptime capacity: usize) type {
    return struct {
        /// @brief Independently owned finite string backing bytes; only size bytes are active.
        data: [capacity]u8 = @splat(0),
        /// @brief Initialized original byte extent, constrained to this string capacity.
        size: u32 = 0,
    };
}

/// @brief Complete original speed response and controller diagnostic.
/// @details Every field is an ordinary owned value; construction grants no capability.
pub const Speed = struct {
    /// @brief Original unscaled controller speed percentage byte.
    speed_ratio: u8 = 0,
    /// @brief Original full unsigned controller result code, including refusals.
    result_code: u16 = 0,
    /// @brief Owned complete strict UTF-8 controller diagnostic, at most 512 bytes.
    message: Text(512) = .{},
};

/// @brief Complete original IO response and controller diagnostic.
/// @details Every field is an ordinary owned value; construction grants no capability.
pub const IO = struct {
    /// @brief Owned complete strict UTF-8 IO signal value, at most 512 bytes.
    value: Text(512) = .{},
    /// @brief Original full unsigned controller result code, including refusals.
    result_code: u16 = 0,
    /// @brief Owned complete strict UTF-8 controller diagnostic, at most 512 bytes.
    message: Text(512) = .{},
};

/// @brief Complete original RAPIDTaskState without field projection.
/// @details Every field is an ordinary owned value; construction grants no capability.
pub const Task = struct {
    /// @brief Owned complete original strict UTF-8 name, at most 64 active bytes.
    name: Text(64) = .{},
    /// @brief Original activation flag, encoded as exactly zero or one.
    activated: bool = false,
    /// @brief Original unscaled RAPID execution_state byte.
    execution_state: u8 = 0,
    /// @brief Original motion_task flag, encoded as exactly zero or one.
    motion_task: bool = false,
};

/// @brief Complete original MechanicalUnitState without field projection.
/// @details Every field is an ordinary owned value; construction grants no capability.
pub const Unit = struct {
    /// @brief Owned complete original strict UTF-8 name, at most 64 active bytes.
    name: Text(64) = .{},
    /// @brief Original activation flag, encoded as exactly zero or one.
    activated: bool = false,
};

/// @brief Complete original ROS 2 Header, flags, RAPID tasks and mechanical units.
/// @details Every field is an ordinary owned value; construction grants no capability.
pub const SystemState = struct {
    /// @brief Original signed ROS 2 timestamp seconds without unit conversion.
    seconds: i32 = 0,
    /// @brief Original normalized timestamp nanoseconds in 0..999999999.
    nanoseconds: u32 = 0,
    /// @brief Owned complete original frame identifier, at most 64 UTF-8 bytes.
    frame_id: Text(64) = .{},
    /// @brief Original motors_on flag, encoded as exactly zero or one.
    motors_on: bool = false,
    /// @brief Original auto_mode flag, encoded as exactly zero or one.
    auto_mode: bool = false,
    /// @brief Original rapid_running flag, encoded as exactly zero or one.
    rapid_running: bool = false,
    /// @brief Independent backing storage for at most 16 complete original RAPID tasks.
    tasks: [16]Task = @splat(.{}),
    /// @brief Active original RAPID task count, constrained to 0..16.
    task_count: u32 = 0,
    /// @brief Independent backing storage for at most 16 complete mechanical units.
    units: [16]Unit = @splat(.{}),
    /// @brief Active original mechanical-unit count, constrained to 0..16.
    unit_count: u32 = 0,
};

/// @brief Complete owned records and independent operation, transport and close facts.
/// @details Every field is an ordinary owned value; construction grants no capability.
pub const Observation = struct {
    /// @brief First original operation, canonical-codec or controller failure.
    primary: u32 = 0,
    /// @brief Independent original close status for the once-retired acquired owner.
    cleanup: u32 = 0,
    /// @brief Original last full unsigned transport status without narrowing.
    rpc: u32 = 0,
    /// @brief True only after a close attempt on an actually acquired owner.
    cleanup_present: bool = false,
    /// @brief True only after an admitted service call or explicit event poll.
    rpc_present: bool = false,
    /// @brief Original full-width length slot; the maximum value preserves an unwritten slot.
    length: u64 = std.math.maxInt(u64),
    /// @brief True only after the whole original response passed canonical validation.
    response_present: bool = false,
    /// @brief Complete independently owned speed reply; valid only for a present speed response.
    speed: Speed = .{},
    /// @brief Complete independently owned IO reply; valid only for a present IO response.
    io: IO = .{},
    /// @brief Complete independently owned state; valid only for a present state response.
    state: SystemState = .{},
    /// @brief Owned complete source-language canonical storage, including every response field.
    wire: [2327]u8 = @splat(0),
    /// @brief Initialized complete canonical byte extent, constrained to the backing capacity.
    wire_size: u32 = 0,
};

const CodecError = error{Invalid};
/// @brief Borrow one exclusive complete canonical input span.
/// @details No host action occurs; failed composite values and prefixes remain unusable.
const Reader = struct {
    /// @brief Immutable borrowed input; no pointer is retained by decoded records.
    bytes: []const u8,
    /// @brief Complete consumed or initialized byte prefix, bounded by bytes.len.
    at: usize = 0,
    /// @brief Read one original exact-width little-endian scalar.
    /// @details No host action occurs; failed composite values and prefixes remain unusable.
    /// @param self Exclusive bounded cursor borrowed only until this traversal returns.
    /// @param T Exact original scalar type and signedness.
    /// @return Original scalar or Invalid on truncation.
    fn integer(self: *Reader, comptime T: type) CodecError!T {
        const n = @sizeOf(T);
        if (n > self.bytes.len - self.at) return error.Invalid;
        const value = std.mem.readInt(T, self.bytes[self.at..][0..n], .little);
        self.at += n;
        return value;
    }
    /// @brief Read one exact canonical zero/one boolean.
    /// @details No host action occurs; failed composite values and prefixes remain unusable.
    /// @param self Exclusive bounded cursor borrowed only until this traversal returns.
    /// @return Native boolean or Invalid for truncation or noncanonical bytes.
    fn boolean(self: *Reader) CodecError!bool {
        const value = try self.integer(u8);
        if (value > 1) return error.Invalid;
        return value != 0;
    }
    /// @brief Copy one bounded strict Unicode string into owned storage.
    /// @details No host action occurs; failed composite values and prefixes remain unusable.
    /// @param self Exclusive bounded cursor borrowed only until this traversal returns.
    /// @param capacity Inclusive original UTF-8 byte bound.
    /// @return Complete independent text or Invalid; no input pointer escapes.
    fn text(self: *Reader, comptime capacity: usize) CodecError!Text(capacity) {
        const size = try self.integer(u32);
        if (size > capacity or size > self.bytes.len - self.at) return error.Invalid;
        const bytes = self.bytes[self.at..][0..size];
        if (!std.unicode.utf8ValidateSlice(bytes) or std.mem.indexOfScalar(u8, bytes, 0) != null) return error.Invalid;
        var value: Text(capacity) = .{ .size = size };
        @memcpy(value.data[0..size], bytes);
        self.at += size;
        return value;
    }
};
/// @brief Borrow one exclusive complete canonical output span.
/// @details No host action occurs; failed composite values and prefixes remain unusable.
const Writer = struct {
    /// @brief Exclusive borrowed output span; failed prefixes remain unusable.
    bytes: []u8,
    /// @brief Complete consumed or initialized byte prefix, bounded by bytes.len.
    at: usize = 0,
    /// @brief Write one original exact-width little-endian scalar.
    /// @details No host action occurs; failed composite values and prefixes remain unusable.
    /// @param self Exclusive bounded cursor borrowed only until this traversal returns.
    /// @param T Exact original scalar width and signedness.
    /// @param value Original unscaled scalar value.
    /// @return Void or Invalid; partial output is unusable on failure.
    fn integer(self: *Writer, comptime T: type, value: T) CodecError!void {
        const n = @sizeOf(T);
        if (n > self.bytes.len - self.at) return error.Invalid;
        std.mem.writeInt(T, self.bytes[self.at..][0..n], value, .little);
        self.at += n;
    }
    /// @brief Write one canonical zero/one boolean.
    /// @details No host action occurs; failed composite values and prefixes remain unusable.
    /// @param self Exclusive bounded cursor borrowed only until this traversal returns.
    /// @param value Original native boolean flag.
    /// @return Void or Invalid for insufficient output capacity.
    fn boolean(self: *Writer, value: bool) CodecError!void {
        try self.integer(u8, @intFromBool(value));
    }
    /// @brief Write every byte of one complete finite Unicode string.
    /// @details No host action occurs; failed composite values and prefixes remain unusable.
    /// @param self Exclusive bounded cursor borrowed only until this traversal returns.
    /// @param value Complete independently owned original value; usable only after whole-record success.
    /// @return Void or Invalid for malformed UTF-8, bounds or output capacity.
    fn text(self: *Writer, value: anytype) CodecError!void {
        if (value.size > value.data.len or value.size > self.bytes.len - self.at -| 4) return error.Invalid;
        const bytes = value.data[0..value.size];
        if (!std.unicode.utf8ValidateSlice(bytes) or std.mem.indexOfScalar(u8, bytes, 0) != null) return error.Invalid;
        try self.integer(u32, value.size);
        @memcpy(self.bytes[self.at..][0..value.size], bytes);
        self.at += value.size;
    }
};

/// @brief Decode and re-encode a whole selected reply transactionally.
/// @param operation 1=speed, 2=IO, 3=SystemState. @param observation Owned response/facts.
/// @return Invalid on truncation, UTF-8/bounds violations, noncanonical bool or trailing bytes.
/// @details Records become usable only when the caller sets response_present after success.
pub fn decode(operation: u32, observation: *Observation) CodecError!void {
    if (observation.wire_size > observation.wire.len) return error.Invalid;
    var reader: Reader = .{ .bytes = observation.wire[0..observation.wire_size] };
    if (operation == 1) {
        observation.speed = .{ .speed_ratio = try reader.integer(u8), .result_code = try reader.integer(u16), .message = try reader.text(512) };
    } else if (operation == 2) {
        observation.io = .{ .value = try reader.text(512), .result_code = try reader.integer(u16), .message = try reader.text(512) };
    } else if (operation == 3) {
        var value: SystemState = .{};
        value.seconds = try reader.integer(i32);
        value.nanoseconds = try reader.integer(u32);
        if (value.nanoseconds >= 1000000000) return error.Invalid;
        value.frame_id = try reader.text(64);
        value.motors_on = try reader.boolean();
        value.auto_mode = try reader.boolean();
        value.rapid_running = try reader.boolean();
        value.task_count = try reader.integer(u32);
        if (value.task_count > 16) return error.Invalid;
        for (value.tasks[0..value.task_count]) |*task| {
            task.* = .{
                .name = try reader.text(64),
                .activated = try reader.boolean(),
                .execution_state = try reader.integer(u8),
                .motion_task = try reader.boolean(),
            };
        }
        value.unit_count = try reader.integer(u32);
        if (value.unit_count > 16) return error.Invalid;
        for (value.units[0..value.unit_count]) |*unit| {
            unit.* = .{ .name = try reader.text(64), .activated = try reader.boolean() };
        }
        observation.state = value;
    } else return error.Invalid;
    if (reader.at != reader.bytes.len) return error.Invalid;
    try encode(operation, observation);
}

/// @brief Encode every field of a selected owned reply. @param operation Exact record selector.
/// @param observation Owned complete records and writable canonical storage. @return Codec error or void.
pub fn encode(operation: u32, observation: *Observation) CodecError!void {
    var writer: Writer = .{ .bytes = &observation.wire };
    if (operation == 1) {
        try writer.integer(u8, observation.speed.speed_ratio);
        try writer.integer(u16, observation.speed.result_code);
        try writer.text(observation.speed.message);
    } else if (operation == 2) {
        try writer.text(observation.io.value);
        try writer.integer(u16, observation.io.result_code);
        try writer.text(observation.io.message);
    } else if (operation == 3) {
        const value = &observation.state;
        if (value.nanoseconds >= 1000000000 or value.task_count > 16 or value.unit_count > 16) return error.Invalid;
        try writer.integer(i32, value.seconds);
        try writer.integer(u32, value.nanoseconds);
        try writer.text(value.frame_id);
        try writer.boolean(value.motors_on);
        try writer.boolean(value.auto_mode);
        try writer.boolean(value.rapid_running);
        try writer.integer(u32, value.task_count);
        for (value.tasks[0..value.task_count]) |task| {
            try writer.text(task.name);
            try writer.boolean(task.activated);
            try writer.integer(u8, task.execution_state);
            try writer.boolean(task.motion_task);
        }
        try writer.integer(u32, value.unit_count);
        for (value.units[0..value.unit_count]) |unit| {
            try writer.text(unit.name);
            try writer.boolean(unit.activated);
        }
    } else return error.Invalid;
    observation.wire_size = @intCast(writer.at);
}

/// @brief Read one full ABB observation with exactly one acquired owner.
/// @param operation 1=speed, 2=IO, 3=state. @param alias Existing exact grant alias.
/// @param signal Complete IO name; unused for other operations. @param attempts State budget 1..1000.
/// @return Independent transport/codec/controller/cleanup facts with complete owned records.
/// @details Only idle 11 is polled again; service calls are never replayed. Closing
/// always retires the owner once, including after transport or decode failure.
pub fn observe(operation: u32, alias: []const u8, signal: []const u8, attempts: u32) Observation {
    var out: Observation = .{};
    if (operation < 1 or operation > 3 or alias.len == 0 or alias.len > 255 or !std.unicode.utf8ValidateSlice(alias) or
        std.mem.indexOfScalar(u8, alias, 0) != null or attempts == 0 or attempts > 1000)
    {
        out.primary = 22;
        return out;
    }
    var request: [516]u8 = @splat(0);
    var request_size: u32 = 0;
    if (operation == 2) {
        if (signal.len == 0 or signal.len > 512 or !std.unicode.utf8ValidateSlice(signal) or std.mem.indexOfScalar(u8, signal, 0) != null) {
            out.primary = 22;
            return out;
        }
        std.mem.writeInt(u32, request[0..4], @intCast(signal.len), .little);
        @memcpy(request[4..][0..signal.len], signal);
        request_size = @intCast(4 + signal.len);
    }
    if (nl_version() != 1) {
        out.primary = 95;
        return out;
    }
    var handle: u64 = 0;
    out.primary = nl_open(alias.ptr, @intCast(alias.len), &handle);
    if (out.primary != 0) return out;
    if (operation == 3) {
        out.primary = nl_subscribe(handle);
        if (out.primary == 0) {
            for (0..attempts) |index| {
                out.length = std.math.maxInt(u64);
                out.rpc = nl_poll(handle, &out.wire, out.wire.len, &out.length);
                out.rpc_present = true;
                out.primary = out.rpc;
                if (out.rpc != 11 or index + 1 == attempts) break;
                out.primary = nl_pause(10);
                if (out.primary != 0) break;
            }
        }
    } else {
        out.rpc = nl_call(handle, &request, request_size, &out.wire, out.wire.len, &out.length);
        out.rpc_present = true;
        out.primary = out.rpc;
    }
    if (out.primary == 0) {
        if (out.length > out.wire.len) {
            out.primary = 22;
        } else {
            out.wire_size = @intCast(out.length);
            decode(operation, &out) catch {
                out.primary = 22;
            };
            if (out.primary == 0) {
                out.response_present = true;
                if ((operation == 1 and (out.speed.result_code != 1 or out.speed.speed_ratio > 100)) or (operation == 2 and
                    out.io.result_code != 1)) out.primary = 5;
            }
        }
    }
    out.cleanup = nl_close(handle);
    out.cleanup_present = true;
    return out;
}

/// @brief Borrow one WASI CLI argument. @param index Original argument index.
/// @return Immutable bytes valid until process return, or an empty slice if absent.
pub fn argument(index: u32) []const u8 {
    var size: u32 = 0;
    const ptr = nl_argument(index, &size) orelse return "";
    return ptr[0..size];
}
/// @brief Emit the complete observation. @param out Owned immutable result.
/// @return Original full status, clamped only by the common WASI entry.
pub fn report(out: *const Observation) u32 {
    return nl_report(
        out.primary,
        out.cleanup,
        @intFromBool(out.cleanup_present),
        out.rpc,
        @intFromBool(out.rpc_present),
        out.length,
        @intFromBool(out.response_present),
        &out.wire,
        out.wire_size,
    );
}
