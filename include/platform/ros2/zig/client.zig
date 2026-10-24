// @file client.zig
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

//! Bounded Zig 0.14.1 conveniences over the selected exact numeric ROS module.
//! Caller-owned State and buffers must remain at stable addresses. Single
//! Guest execution thread only; the nonblocking lease detects reentrant use.
const std = @import("std");
const raw = @import("ros");

pub const ok: u32 = 0;
pub const bad_handle: u32 = 9;
pub const again: u32 = 11;
pub const denied: u32 = 13;
pub const busy: u32 = 17;
pub const invalid: u32 = 22;
pub const too_large: u32 = 90;
pub const unsupported: u32 = 95;
pub const max_request: usize = 4193786;
pub const max_output: usize = 4194304;

// State is never moved, reset or reused after a successful open. Owner copies
// borrow this same cell and therefore share retirement. It is not a Host token
// constructor or a security boundary against arbitrary Guest memory writes.
pub const State = struct { handle: u64 = 0, leased: bool = false, spent: bool = false };
pub const OpenResult = struct { code: u32, owner: ?Owner = null };
pub const Result = struct { code: u32, data: []const u8 = &.{}, required: ?u64 = null };
pub const Operation = enum {
    service_call,
    service_respond,
    action_send_goal,
    action_cancel_own_goal,
    action_cancel_any_goal,
    action_receive_feedback,
    action_receive_result,
    action_advertise,
    action_respond,
    tf_lookup,
    tf_broadcast,
    parameter_get,
    parameter_set,
    parameter_delete,
    parameter_exists,
    parameter_list,
    parameter_search,
    graph_inspect_topic,
    graph_inspect_node,
    graph_inspect_service,
    graph_list_topics,
    graph_list_nodes,
    graph_list_services,
    time_read_ros,
    time_read_wall,
    parameter_describe,
    parameter_declare,
    parameter_undeclare,
    graph_inspect_action,
    lifecycle_get_state,
    lifecycle_change_state,
    time_read_system,
    time_read_steady,
};

fn offset(bytes: anytype) u64 {
    return if (bytes.len == 0) 0 else @intFromPtr(bytes[0..].ptr);
}
pub fn supports(comptime operation: Operation) bool {
    return @hasDecl(raw, @tagName(operation));
}

pub fn open(state: *State, alias: []const u8) OpenResult {
    if (state.leased) return .{ .code = busy };
    if (state.spent or state.handle != 0) return .{ .code = bad_handle };
    if (alias.len == 0 or alias.len > 255 or !std.unicode.utf8ValidateSlice(alias) or
        std.mem.indexOfScalar(u8, alias, 0) != null) return .{ .code = invalid };
    state.leased = true;
    defer state.leased = false;
    var slot = [_]u8{0} ** 8;
    const code = raw.capability_open(0, offset(alias), alias.len, offset(&slot));
    if (code != ok) return .{ .code = code };
    const handle = std.mem.readInt(u64, &slot, .little);
    if (handle == 0) return .{ .code = invalid };
    state.handle = handle;
    state.spent = true;
    return .{ .code = ok, .owner = .{ .state = state } };
}
const openOwner = open;

// Error output is erased, including malformed successful lengths. An error90
// may report a known required size of zero; null means the sentinel survived.
fn finish(code: u32, slot: [8]u8, out: []u8) Result {
    const size = std.mem.readInt(u64, &slot, .little);
    if (code == ok and size <= out.len) return .{ .code = ok, .data = out[0..@intCast(size)] };
    @memset(out, 0);
    return .{ .code = if (code == ok) invalid else code, .required = if (code == too_large and size != std.math.maxInt(u64)) size else null };
}

pub const Owner = struct {
    state: *State,
    fn acquire(self: Owner) u32 {
        if (self.state.leased) return busy;
        if (!self.state.spent or self.state.handle == 0) return bad_handle;
        self.state.leased = true;
        return ok;
    }
    fn retire(self: Owner, revoke_alias: bool) u32 {
        const code = self.acquire();
        if (code != ok) return code;
        defer self.state.leased = false;
        const handle = self.state.handle;
        self.state.handle = 0; // Invalidate every local copy before the import.
        return if (revoke_alias) raw.capability_revoke(handle) else raw.capability_close(handle);
    }
    pub fn close(self: Owner) u32 {
        return self.retire(false);
    }
    pub fn revoke(self: Owner) u32 {
        return self.retire(true);
    }
    fn write(self: Owner, payload: []const u8, logging: bool) u32 {
        if (payload.len > max_request) return too_large;
        const code = self.acquire();
        if (code != ok) return code;
        defer self.state.leased = false;
        return if (logging) raw.log_write(self.state.handle, 0, offset(payload), payload.len) else raw.topic_publish(self.state.handle, 0, offset(payload), payload.len);
    }
    pub fn publish(self: Owner, payload: []const u8) u32 {
        return self.write(payload, false);
    }
    pub fn log(self: Owner, payload: []const u8) u32 {
        return self.write(payload, true);
    }
    fn activate(self: Owner, comptime name: []const u8) u32 {
        if (comptime !@hasDecl(raw, name)) return unsupported;
        const code = self.acquire();
        if (code != ok) return code;
        defer self.state.leased = false;
        return @field(raw, name)(self.state.handle);
    }
    pub fn subscribe(self: Owner) u32 {
        return self.activate("topic_subscribe");
    }
    pub fn advertiseService(self: Owner) u32 {
        return self.activate("service_advertise");
    }
    pub fn subscribeParameterEvents(self: Owner) u32 {
        return self.activate("parameter_subscribe_events");
    }
    pub fn poll(self: Owner, output: []u8) Result {
        return self.receive(output, false);
    }
    /// Complete opaque v1 envelope. Source/instance/correlation validation is
    /// still required before dispatch; this function supplies no such proof.
    pub fn pollEvent(self: Owner, output: []u8) Result {
        return self.receive(output, true);
    }
    fn receive(self: Owner, output: []u8, versioned: bool) Result {
        if (output.len > max_output) return .{ .code = too_large };
        const code = self.acquire();
        if (code != ok) return .{ .code = code };
        defer self.state.leased = false;
        var slot = [_]u8{255} ** 8;
        const status = if (versioned) raw.event_poll_v1(self.state.handle, 0, offset(output), output.len, offset(&slot)) else raw.event_poll(self.state.handle,
             0, offset(output), output.len, offset(&slot));
        return finish(status, slot, output);
    }
    // Compile-time selection admits only the selected backend's exact import.
    // No dynamic symbol lookup, allocation, timeout replay or implicit retry.
    pub fn request(self: Owner, comptime operation: Operation, input: []const u8, output: []u8) Result {
        if (comptime !supports(operation)) return .{ .code = unsupported };
        if (input.len > max_request or output.len > max_output) return .{ .code = too_large };
        if (input.len != 0 and output.len != 0 and offset(input) < offset(output) + output.len and
            offset(output) < offset(input) + input.len) return .{ .code = invalid };
        const code = self.acquire();
        if (code != ok) return .{ .code = code };
        defer self.state.leased = false;
        var slot = [_]u8{255} ** 8;
        const status = @field(raw, @tagName(operation))(self.state.handle, 0, offset(input), input.len, offset(output), output.len, offset(&slot));
        return finish(status, slot, output);
    }
    pub fn watch(self: Owner, source: Owner, correlation: u64) u32 {
        if (self.state == source.state) return invalid;
        const code = self.acquire();
        if (code != ok) return code;
        defer self.state.leased = false;
        const second = source.acquire();
        if (second != ok) return second;
        defer source.state.leased = false;
        return raw.event_watch(self.state.handle, source.state.handle, correlation);
    }
    pub const Readiness = struct { code: u32, events: u64 = 0, next_bytes: u64 = 0, admission_slots: u64 = 0, admission_bytes: u64 = 0 };
    pub fn ready(self: Owner) Readiness {
        const code = self.acquire();
        if (code != ok) return .{ .code = code };
        defer self.state.leased = false;
        var bytes = [_]u8{0} ** 32;
        const status = raw.event_ready(self.state.handle, 0, offset(&bytes));
        if (status != ok) return .{ .code = status };
        return . {
             .code = ok, .events = std.mem.readInt(u64, bytes[0..8], .little), .next_bytes = std.mem.readInt(u64,
                 bytes[8..16], .little), .admission_slots = std.mem.readInt(u64, bytes[16..24], .little), .admission_bytes = std.mem.readInt(u64,
                 bytes[24..32], .little)
        };
    }
    pub const Submission = struct { code: u32, id: u64 = 0 };
    pub fn submit(self: Owner, observer: Owner, input: []const u8) Submission {
        if (input.len > max_request) return .{ .code = too_large };
        if (self.state == observer.state) return .{ .code = invalid };
        const code = self.acquire();
        if (code != ok) return .{ .code = code };
        defer self.state.leased = false;
        const second = observer.acquire();
        if (second != ok) return .{ .code = second };
        defer observer.state.leased = false;
        var bytes = [_]u8{0} ** 8;
        const status = raw.service_submit(self.state.handle, observer.state.handle, 0, offset(input), input.len, offset(&bytes));
        if (status != ok) return .{ .code = status };
        const id = std.mem.readInt(u64, &bytes, .little);
        return .{ .code = if (id == 0) invalid else ok, .id = id };
    }
};

pub const CodecError = error{ Invalid, TooLarge, NoSpace };
pub fn encodeString(value: []const u8, out: []u8) CodecError![]const u8 {
    if (!std.unicode.utf8ValidateSlice(value)) return error.Invalid;
    if (value.len > max_request - 4) return error.TooLarge;
    if (out.len < 4 + value.len) return error.NoSpace;
    std.mem.writeInt(u32, out[0..4], @intCast(value.len), .little);
    @memcpy(out[4..][0..value.len], value);
    return out[0 .. 4 + value.len];
}
pub fn decodeString(bytes: []const u8) ?[]const u8 {
    if (bytes.len < 4 or bytes.len > max_output or
        std.mem.readInt(u32, bytes[0..4], .little) != bytes.len - 4 or
        !std.unicode.utf8ValidateSlice(bytes[4..])) return null;
    return bytes[4..];
}
pub const ServiceResponse = struct { success: bool, message: []const u8 };
pub fn decodeServiceResponse(bytes: []const u8) ?ServiceResponse {
    if (bytes.len < 5 or bytes.len > max_output or bytes[0] > 1) return null;
    const message = decodeString(bytes[1..]) orelse return null;
    return .{ .success = bytes[0] == 1, .message = message };
}
pub fn decodeTriggerRequest(bytes: []const u8) ?u64 {
    if (bytes.len != 8) return null;
    const id = std.mem.readInt(u64, bytes[0..8], .little);
    return if (id == 0) null else id;
}
pub fn encodeTriggerResponse(id: u64, success: bool, message: []const u8, out: []u8) CodecError![]const u8 {
    if (id == 0 or !std.unicode.utf8ValidateSlice(message)) return error.Invalid;
    if (message.len > max_request - 13) return error.TooLarge;
    if (out.len < 13 + message.len) return error.NoSpace;
    std.mem.writeInt(u64, out[0..8], id, .little);
    out[8] = @intFromBool(success);
    _ = try encodeString(message, out[9..]);
    return out[0 .. 13 + message.len];
}

// Fixed pool; initialize at its final address and do not copy it. Open reserves
// the next unused cell. Close attempts every owned cell in reverse order and
// preserves each cleanup error independently of the caller's primary result.
pub fn Session(comptime capacity: usize) type {
    if (capacity == 0 or capacity > 1024) @compileError("Session capacity must be1..1024");
    return struct {
        const Self = @This();
        cells: [capacity]State = [_]State{.{}} ** capacity,
        used: usize = 0,
        closed: bool = false,
        pub const Cleanup = struct { attempted: bool = false, code: u32 = ok };
        pub const CleanupResult = struct { code: u32, rows: [capacity]Cleanup = [_]Cleanup{.{}} ** capacity };
        pub fn open(self: *Self, alias: []const u8) OpenResult {
            if (self.closed) return .{ .code = bad_handle };
            if (self.used == capacity) return .{ .code = too_large };
            const result = openOwner(&self.cells[self.used], alias);
            if (result.code == ok) self.used += 1;
            return result;
        }
        pub fn close(self: *Self) CleanupResult {
            if (self.closed) return .{ .code = bad_handle };
            // Single-threaded preflight makes Busy effect-free for every cell.
            for (self.cells[0..self.used]) |cell| if (cell.leased) return .{ .code = busy };
            self.closed = true;
            var result: CleanupResult = .{ .code = ok };
            var i = self.used;
            while (i != 0) {
                i -= 1;
                if (self.cells[i].handle == 0) continue;
                result.rows[i] = .{ .attempted = true, .code = (Owner{ .state = &self.cells[i] }).close() };
            }
            return result;
        }
    };
}

