//! @brief Bounded complete original TurtleBot3 Patrol application for Zig 0.14.1.
//! @details Uses the actual shared ROS2 client module. The original native server
//! remains a separate program. No socket, callback thread, retry, automatic
//! cancellation or physical recovery is introduced.
//! @see Goal Report parseGoal run main
const std = @import("std");
const ros = @import("client");

/// @brief Complete original Vector3 Goal: square1/triangle2, metres, float count.
/// @details All three float64 fields are preserved; construction grants no
/// permission and implies no native robot/model safety limit.
/// @see parseGoal run
pub const Goal = struct { mode: f64, distance: f64, count: f64 };

/// @brief Own one complete original bounded UTF-8 result/feedback string.
/// @details Only bytes[0..size] is initialized and readable. size is at most
/// 256; no NUL or malformed UTF-8 is admitted and transport scratch never escapes.
/// @see Report run
pub const Text = struct { bytes: [256]u8 = undefined, size: usize = 0 };

/// @brief Caller-owned finite storage for original outcomes and all role closes.
/// @details primary preserves the first numeric failure (110 means unresolved
/// poll budget). cleanup/attempted use send/cancel-own/feedback/result order.
/// goal_id retains every u64 bit; send_unknown never authorizes replay. Only
/// feedback[0..feedback_used] and a nonzero-terminal_kind result are readable.
/// Allocate this fixed approximately 1 MiB report before opening capabilities.
/// One synchronous Guest caller owns it; no owner/state pointer escapes run.
/// @see run Text parseGoal
pub const Report = struct {
    primary: u32 = 0,
    cleanup: [4]u32 = .{ 0, 0, 0, 0 },
    attempted: [4]bool = .{ false, false, false, false },
    goal_id: u64 = 0,
    send_unknown: bool = false,
    feedback: [4096]Text = undefined,
    feedback_used: usize = 0,
    terminal_kind: u8 = 0,
    result: Text = .{},
};

fn number(text: []const u8, integer: bool) error {
    InvalidGoal
}!f64 {
    if (text.len == 0 or text.len > 255) return error.InvalidGoal;
    var at: usize = 0;
    if (text[at] == '+' or text[at] == '-') at += 1;
    if (at == text.len) return error.InvalidGoal;
    if (integer) {
        for (text[at..]) |value| if (value < '0' or value > '9') return error.InvalidGoal;
    } else {
        for (text) |value| {
            if ((value < '0' or value > '9') and value != '+' and value != '-' and
                value != '.' and value != 'e' and value != 'E') return error.InvalidGoal;
        }
    }
    const value = std.fmt.parseFloat(f64, text) catch return error.InvalidGoal;
    if (!std.math.isFinite(value)) return error.InvalidGoal;
    return if (integer and value == 0) 0 else value;
}

/// @brief Parse the complete original Goal before opening any role.
/// @details Bounded ASCII command input replaces the interactive Python UI.
/// Count accepts signed decimal digits and converts to original finite float64;
/// distance is finite decimal metres. Whitespace, hex, locale and nonfinite input
/// are refused. No native model limit is inferred and no ROS import is invoked.
/// @param mode Exactly s or t; the command handles x without opening a role.
/// @param distance Original finite metre argument, at most 255 ASCII bytes.
/// @param count Original decimal integer argument, at most 255 ASCII bytes.
/// @return Complete Goal, or error.InvalidGoal without an external effect.
/// @see Goal run
pub fn parseGoal(mode: []const u8, distance: []const u8, count: []const u8) error {
    InvalidGoal
}!Goal {
    const selected: f64 = if (std.mem.eql(u8, mode, "s")) 1 else if (std.mem.eql(u8, mode, "t")) 2 else return error.InvalidGoal;
    return .{ .mode = selected, .distance = try number(distance, false), .count = try number(count, true) };
}

fn encode(goal: Goal) error {
    InvalidGoal
}![24]u8 {
    var bytes: [24]u8 = undefined;
    if ((goal.mode != 1 and goal.mode != 2) or !std.math.isFinite(goal.distance) or
        !std.math.isFinite(goal.count) or @trunc(goal.count) != goal.count) return error.InvalidGoal;
    const values = [_]f64{ goal.mode, goal.distance, goal.count };
    for (values, 0..) |value, index| std.mem.writeInt(u64, bytes[index * 8 ..][0..8], @bitCast(value), .little);
    return bytes;
}

fn text(bytes: []const u8, output: *Text) u32 {
    if (bytes.len < 4) return 22;
    const size = std.mem.readInt(u32, bytes[0..4], .little);
    if (size > 256 or @as(u64, size) + 4 != bytes.len or !std.unicode.utf8ValidateSlice(bytes[4..]) or
        std.mem.indexOfScalar(u8, bytes[4..], 0) != null) return 22;
    @memcpy(output.bytes[0..size], bytes[4..]);
    output.size = size;
    return 0;
}

/// @brief Open exact roles, send once, poll complete values and close every owner.
/// @details Uses actual shared Owner.request calls. All storage is caller-owned
/// before effects. Roles and state remain at stable stack addresses until every
/// close completes. Matching full u64 ID, terminal kind2/3/4 and complete string
/// decode precede terminal commit. No cancel-any role or automatic cancellation.
/// A malformed/consumed reply is never retried; idle11 only permits the next
/// finite poll iteration. The original server/driver and native readiness remain
/// independent deployment responsibilities. Default extra authority is empty.
/// @param aliases Four distinct NUL-free UTF-8 1..255-byte aliases in send,
/// cancel-own, feedback, result order, unchanged until return.
/// @param goal Complete reviewed original Goal; distance remains metres.
/// @param polls Integer 1..4096 iterations, each at most two read RPCs.
/// @param report Caller-owned stable Report, at least approximately 1 MiB; no
/// live Owner/State pointer is returned or stored in it.
/// @return void; inspect primary, all cleanup slots and complete value fields.
/// @see Report Goal parseGoal
pub fn run(aliases: [4][]const u8, goal: Goal, polls: usize, report: *Report) void {
    report.* = .{};
    const bytes = encode(goal) catch {
        report.primary = 22;
        return;
    };
    if (polls == 0 or polls > 4096) {
        report.primary = 22;
        return;
    }
    for (aliases, 0..) |alias, index| {
        if (alias.len == 0 or alias.len > 255 or !std.unicode.utf8ValidateSlice(alias) or
            std.mem.indexOfScalar(u8, alias, 0) != null)
        {
            report.primary = 22;
            return;
        }
        for (aliases[0..index]) |earlier| if (std.mem.eql(u8, earlier, alias)) {
            report.primary = 22;
            return;
        };
    }
    var states: [4]ros.State = .{ .{}, .{}, .{}, .{} };
    var owners: [4]?ros.Owner = .{ null, null, null, null };
    defer {
        var index: usize = owners.len;
        while (index != 0) {
            index -= 1;
            if (owners[index]) |owner| {
                report.attempted[index] = true;
                report.cleanup[index] = owner.close();
            }
        }
    }
    for (aliases, 0..) |alias, index| {
        const opened = ros.open(&states[index], alias);
        if (opened.code != 0) {
            report.primary = opened.code;
            return;
        }
        owners[index] = opened.owner;
        if (owners[index] == null) {
            report.primary = 22;
            return;
        }
    }
    var buffer: [269]u8 = undefined;
    report.send_unknown = true;
    const sent = owners[0].?.request(.action_send_goal, &bytes, buffer[0..8]);
    if (sent.code != 0) {
        report.primary = sent.code;
        return;
    }
    if (sent.data.len != 8) {
        report.primary = 22;
        return;
    }
    report.goal_id = std.mem.readInt(u64, sent.data[0..8], .little);
    if (report.goal_id == 0) {
        report.primary = 22;
        return;
    }
    report.send_unknown = false;
    var selector: [8]u8 = undefined;
    std.mem.writeInt(u64, &selector, report.goal_id, .little);
    for (0..polls) |_| {
        const feedback = owners[2].?.request(.action_receive_feedback, &selector, buffer[0..268]);
        if (feedback.code == 0) {
            if (feedback.data.len < 8 or std.mem.readInt(u64, feedback.data[0..8], .little) != report.goal_id) {
                report.primary = 22;
                return;
            }
            report.primary = text(feedback.data[8..], &report.feedback[report.feedback_used]);
            if (report.primary != 0) return;
            report.feedback_used += 1;
        } else if (feedback.code != 11) {
            report.primary = feedback.code;
            return;
        }
        const result = owners[3].?.request(.action_receive_result, &selector, &buffer);
        if (result.code == 11) continue;
        if (result.code != 0) {
            report.primary = result.code;
            return;
        }
        if (result.data.len < 9 or std.mem.readInt(u64, result.data[0..8], .little) != report.goal_id or
            result.data[8] < 2 or result.data[8] > 4)
        {
            report.primary = 22;
            return;
        }
        report.primary = text(result.data[9..], &report.result);
        if (report.primary != 0) return;
        report.terminal_kind = result.data[8];
        return;
    }
    report.primary = 110;
}

fn program(arguments: []const [:0]u8) u32 {
    const allocator = std.heap.page_allocator;
    if (arguments.len == 5 and std.mem.eql(u8, arguments[1], "encode")) {
        const goal = parseGoal(arguments[2], arguments[3], arguments[4]) catch return 22;
        const bytes = encode(goal) catch return 22;
        std.io.getStdOut().writeAll(&bytes) catch return 5;
        return 0;
    }
    if (arguments.len != 9) return 22;
    if (std.mem.eql(u8, arguments[5], "x")) return 0;
    const goal = parseGoal(arguments[5], arguments[6], arguments[7]) catch return 22;
    const value = arguments[8];
    if (value.len == 0 or value.len > 4) return 22;
    for (value) |byte| if (byte < '0' or byte > '9') return 22;
    const polls = std.fmt.parseInt(usize, value, 10) catch return 22;
    const report = allocator.create(Report) catch return 90;
    defer allocator.destroy(report);
    run(.{ arguments[1], arguments[2], arguments[3], arguments[4] }, goal, polls, report);
    var primary = report.primary;
    const out = std.io.getStdOut().writer();
    if (report.goal_id != 0) out.print("accepted goal={d}\n", .{report.goal_id}) catch {
        if (primary == 0) primary = 5;
    };
    for (report.feedback[0..report.feedback_used]) |*feedback| {
        out.print("feedback[{d}]: {s}\n", .{ feedback.size, feedback.bytes[0..feedback.size] }) catch {
            if (primary == 0) primary = 5;
        };
    }
    if (report.terminal_kind != 0) {
        out.print("terminal kind={d} goal={d}\nresult[{d}]: {s}\n", . {
             report.terminal_kind, report.goal_id, report.result.size, report.result.bytes[0..report.result.size]
        }) catch {
            if (primary == 0) primary = 5;
        };
    } else if (report.goal_id != 0 or report.send_unknown) {
        std.io.getStdErr().writer().print("goal={d} send_unknown={} outcome unresolved; no replay or automatic cancel\n", .{ report.goal_id, report.send_unknown }) catch {};
    }
    std.io.getStdErr().writer().print("primary={d} cleanup={any} attempted={any}\n", .{ primary, report.cleanup, report.attempted }) catch {};
    for (report.cleanup, report.attempted) |code, attempted| if (primary == 0 and attempted and code != 0) {
        primary = code;
    };
    return primary;
}

/// @brief Execute the actual Zig WASI argv command and cap only process status.
/// @details All capabilities close before returning from program. encode/x paths
/// open nothing. No native server, Host fallback or implicit authority is added.
/// @see run parseGoal Report
pub fn main() void {
    const allocator = std.heap.page_allocator;
    const code = block: {
        const arguments = std.process.argsAlloc(allocator) catch break :block @as(u32, 22);
        defer std.process.argsFree(allocator, arguments);
        break :block program(arguments);
    };
    std.process.exit(@intCast(@min(code, 125)));
}
