//! @file wire.zig
//! @brief Pure owned finite canonical records for genuine Zig SDK bindings.
//! @details Reflection visits every native-language record field in declaration
//! order. Text and sequence capacities are part of their concrete types. No
//! allocation, host import, authority, pointer borrowing or implicit retry occurs.
const std = @import("std");

/// @brief Own a finite string in an ordinary Zig value.
/// @param capacity Inclusive original schema byte limit.
/// @param raw True only for a catalogued raw-byte string domain.
/// @return Complete fixed-storage string type with explicit initialized size.
pub fn Text(comptime capacity: usize, comptime raw: bool) type {
    return struct {
        /// @brief Select bounded string handling rather than struct traversal.
        pub const wire_text = true;
        /// @brief Preserve the catalogued byte-versus-UTF-8 string domain.
        pub const wire_raw = raw;
        /// @brief Own all text backing storage; bytes after size are inactive.
        data: [capacity]u8 = @splat(0),
        /// @brief Initialized byte count, constrained to the concrete capacity.
        size: u32 = 0,
    };
}

/// @brief Own a bounded variable-length sequence with no heap allocation.
/// @param Element Complete original native-language element type.
/// @param capacity Inclusive original schema element bound.
/// @return Fixed storage plus active count; inactive elements have no wire bytes.
pub fn Sequence(comptime Element: type, comptime capacity: usize) type {
    return struct {
        /// @brief Select counted sequence handling rather than struct traversal.
        pub const wire_sequence = true;
        /// @brief Own every possible active element independently of input bytes.
        items: [capacity]Element = @splat(std.mem.zeroes(Element)),
        /// @brief Active element count, constrained to the concrete capacity.
        size: u32 = 0,
    };
}

/// @brief Represent canonical-shape, field-domain and finite-capacity rejection.
pub const Error = error{ Invalid, TooLarge, OutOfMemory };

/// @brief Own no storage while borrowing one exclusive bounded wire span.
/// @details A failed composite operation may advance a prefix. No record is
/// usable until its complete decoder succeeds and rejects trailing bytes.
pub const Cursor = struct {
    /// @brief Borrowed bytes, live and exclusive until traversal returns.
    bytes: []u8,
    /// @brief Current initialized or consumed prefix extent.
    at: usize = 0,
    /// @brief True encodes; false decodes into an owned native-language value.
    writing: bool = false,

    /// @brief Traverse one complete selected value recursively in source order.
    /// @param value Exclusive complete value, including finite container counts.
    /// @return Void on success or Invalid for a field/domain/storage refusal.
    pub fn field(self: *Cursor, value: anytype) Error!void {
        const T = @TypeOf(value.*);
        switch (@typeInfo(T)) {
            .bool => {
                var raw: u8 = @intFromBool(value.*);
                try self.field(&raw);
                if (raw > 1) return error.Invalid;
                value.* = raw != 0;
            },
            .int => {
                const size = @sizeOf(T);
                if (self.at > self.bytes.len or size > self.bytes.len - self.at) return error.Invalid;
                if (self.writing) {
                    std.mem.writeInt(T, self.bytes[self.at..][0..size], value.*, .little);
                } else {
                    value.* = std.mem.readInt(T, self.bytes[self.at..][0..size], .little);
                }
                self.at += size;
            },
            .float => {
                const Bits = std.meta.Int(.unsigned, @bitSizeOf(T));
                if (self.writing and !std.math.isFinite(value.*)) return error.Invalid;
                var bits: Bits = @bitCast(value.*);
                try self.field(&bits);
                value.* = @bitCast(bits);
                if (!std.math.isFinite(value.*)) return error.Invalid;
            },
            .array => {
                for (value) |*element| try self.field(element);
            },
            .@"struct" => {
                if (@hasDecl(T, "wire_text")) {
                    try self.field(&value.size);
                    if (value.size > value.data.len or value.size > self.bytes.len - self.at) return error.Invalid;
                    const storage = value.data[0..value.size];
                    const wire = self.bytes[self.at..][0..value.size];
                    const input = if (self.writing) storage else wire;
                    if (!T.wire_raw and (!std.unicode.utf8ValidateSlice(input) or std.mem.indexOfScalar(u8, input, 0) != null)) return error.Invalid;
                    if (self.writing) @memcpy(wire, storage) else @memcpy(storage, wire);
                    self.at += value.size;
                } else if (@hasDecl(T, "wire_sequence")) {
                    try self.field(&value.size);
                    if (value.size > value.items.len) return error.Invalid;
                    for (value.items[0..value.size]) |*element| try self.field(element);
                } else {
                    inline for (std.meta.fields(T)) |member| try self.field(&@field(value, member.name));
                    if (@hasDecl(T, "validate")) try value.validate();
                }
            },
            else => @compileError("Canonical records require finite value fields"),
        }
    }
};

/// @brief Encode all fields of one finite owned native-language record.
/// @param value Exclusive complete value; successful encoding preserves fields.
/// @param output Caller-owned disjoint writable bytes, borrowed until return.
/// @return Complete initialized extent or Invalid; ignore partial output on error.
pub fn encode(value: anytype, output: []u8) Error!usize {
    const T = @TypeOf(value.*);
    var cursor: Cursor = .{ .bytes = output[0..@min(output.len, T.maximum_wire_bytes)], .writing = true };
    try cursor.field(value);
    return cursor.at;
}

/// @brief Decode every field and publish an owned record only after completion.
/// @param Record Exact generated complete record type.
/// @param input Complete immutable canonical bytes; no reference escapes return.
/// @return Whole independent value or Invalid for malformed/bounded/trailing input.
pub fn decode(comptime Record: type, input: []const u8) Error!Record {
    if (input.len < Record.minimum_wire_bytes or input.len > Record.maximum_wire_bytes) return error.Invalid;
    var storage: [Record.maximum_wire_bytes]u8 = @splat(0);
    @memcpy(storage[0..input.len], input);
    var cursor: Cursor = .{ .bytes = storage[0..input.len] };
    var value: Record = .{};
    try cursor.field(&value);
    if (cursor.at != input.len) return error.Invalid;
    return value;
}


/// Canonical writer for generated complete records with borrowed strings and
/// allocator-owned sequences. Measurement performs the same validations without
/// touching storage. Limits come from the selected schema, never from authority.
pub const Writer = struct {
    bytes: []u8,
    position: usize = 0,
    measuring: bool = false,
    limit: usize,

    fn reserve(self: *Writer, count: usize) Error!usize {
        if (self.position > self.limit or count > self.limit - self.position) return error.TooLarge;
        if (!self.measuring and (self.position > self.bytes.len or count > self.bytes.len - self.position)) return error.TooLarge;
        const start = self.position;
        self.position += count;
        return start;
    }

    /// Append an integer in canonical little-endian order.
    pub fn integer(self: *Writer, value: anytype) Error!void {
        const T = @TypeOf(value);
        const size = @sizeOf(T);
        const start = try self.reserve(size);
        if (!self.measuring) std.mem.writeInt(T, self.bytes[start..][0..size], value, .little);
    }

    /// Encode exactly zero or one for a Boolean.
    pub fn boolean(self: *Writer, value: bool) Error!void {
        try self.integer(@as(u8, @intFromBool(value)));
    }

    /// Preserve finite IEEE-754 binary32 bits.
    pub fn float32(self: *Writer, value: f32) Error!void {
        if (!std.math.isFinite(value)) return error.Invalid;
        try self.integer(@as(u32, @bitCast(value)));
    }

    /// Preserve finite IEEE-754 binary64 bits.
    pub fn float64(self: *Writer, value: f64) Error!void {
        if (!std.math.isFinite(value)) return error.Invalid;
        try self.integer(@as(u64, @bitCast(value)));
    }

    /// Append a bounded counted string. Raw domains retain arbitrary bytes;
    /// textual domains require strict UTF-8 without embedded NUL.
    pub fn string(self: *Writer, value: []const u8, bound: usize, raw: bool) Error!void {
        if (value.len > bound or value.len > std.math.maxInt(u32)) return error.TooLarge;
        if (!raw and (!std.unicode.utf8ValidateSlice(value) or std.mem.indexOfScalar(u8, value, 0) != null)) return error.Invalid;
        try self.integer(@as(u32, @intCast(value.len)));
        const start = try self.reserve(value.len);
        if (!self.measuring) std.mem.copyForwards(u8, self.bytes[start..][0..value.len], value);
    }
};

/// Bounds-checked canonical reader. Strings borrow the original input; generated
/// record decoders allocate sequences through their caller-supplied allocator.
pub const Reader = struct {
    bytes: []const u8,
    position: usize = 0,

    fn take(self: *Reader, count: usize) Error![]const u8 {
        if (self.position > self.bytes.len or count > self.bytes.len - self.position) return error.Invalid;
        const start = self.position;
        self.position += count;
        return self.bytes[start..][0..count];
    }

    /// Read one little-endian integer after checking its entire extent.
    pub fn integer(self: *Reader, comptime T: type) Error!T {
        const bytes = try self.take(@sizeOf(T));
        return std.mem.readInt(T, bytes[0..@sizeOf(T)], .little);
    }

    /// Reject noncanonical Boolean values instead of normalizing them.
    pub fn boolean(self: *Reader) Error!bool {
        const value = try self.integer(u8);
        if (value > 1) return error.Invalid;
        return value == 1;
    }

    /// Decode only finite IEEE-754 binary32 values.
    pub fn float32(self: *Reader) Error!f32 {
        const value: f32 = @bitCast(try self.integer(u32));
        if (!std.math.isFinite(value)) return error.Invalid;
        return value;
    }

    /// Decode only finite IEEE-754 binary64 values.
    pub fn float64(self: *Reader) Error!f64 {
        const value: f64 = @bitCast(try self.integer(u64));
        if (!std.math.isFinite(value)) return error.Invalid;
        return value;
    }

    /// Validate and borrow one complete counted string.
    pub fn string(self: *Reader, bound: usize, raw: bool) Error![]const u8 {
        const count = try self.integer(u32);
        if (count > bound) return error.Invalid;
        const value = try self.take(count);
        if (!raw and (!std.unicode.utf8ValidateSlice(value) or std.mem.indexOfScalar(u8, value, 0) != null)) return error.Invalid;
        return value;
    }

    /// Reject trailing input after the final declared field.
    pub fn finish(self: *const Reader) Error!void {
        if (self.position != self.bytes.len) return error.Invalid;
    }
};
