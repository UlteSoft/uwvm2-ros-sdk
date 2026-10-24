//! @file native_command.zig
//! @brief Genuine Zig records, canonical codecs and owned native ROS String/Trigger commands.
//! @details All records own their finite byte arrays. No decoded field borrows
//! response storage. Transport and cleanup remain independent. The C ABI shim
//! only converts pointers; it owns no capability and interprets no record.
const std = @import("std");
/// @brief Read the selected original ROS transport ABI version.
/// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
/// @return Original version value, independently from operation errors.
extern fn nl_version() u32;

/// @brief Open one exact granted alias without retry.
/// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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
/// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
/// @param handle Caller-owned exact opaque capability identifier.
/// @return Original independent unsigned close status.
extern fn nl_close(
    handle: u64,
) u32;

/// @brief Activate one exact already granted topic subscription.
/// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
/// @param handle Caller-owned exact opaque capability identifier.
/// @return Original unsigned ABI operation status.
extern fn nl_subscribe(
    handle: u64,
) u32;

/// @brief Poll exactly one event without implicit retry or decoding.
/// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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
/// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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
/// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
/// @param milliseconds Finite explicitly selected delay in 0..1000 milliseconds.
/// @return Zero, local argument error 22 or original local pause error.
extern fn nl_pause(
    milliseconds: u32,
) u32;

/// @brief Emit complete already owned facts and lossless canonical bytes.
/// @details Borrowed bytes remain valid until return; this import implements no owner or record codec.
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

/// @brief Publish one complete caller-encoded String value without retry.
/// @param handle Acquired instance-local owner. @param bytes Complete immutable wire bytes.
/// @param size Complete initialized extent. @return Original unsigned ABI status.
extern fn nl_publish(handle: u64, bytes: [*]const u8, size: u32) u32;
const wire = @import("roswire");

/// @brief Own the complete original std_msgs String field within an explicit SDK quota.
/// @details The original schema is unbounded; 252 UTF-8 bytes are this command's admission limit.
pub const StringValue = struct {
    pub const minimum_wire_bytes = 4;
    pub const maximum_wire_bytes = 256;
    /// @brief Complete original data, independently owned without input borrowing.
    data: wire.Text(252, false) = .{},
};
/// @brief Own every original std_srvs Trigger response field.
/// @details The request has zero fields. Diagnostic capacity is an explicit SDK quota.
pub const TriggerResponse = struct {
    pub const minimum_wire_bytes = 5;
    pub const maximum_wire_bytes = 256;
    /// @brief Original response success flag, preserved even for service refusal.
    success: bool = false,
    /// @brief Complete original diagnostic, independently owned within 251 UTF-8 bytes.
    message: wire.Text(251, false) = .{},
};
/// @brief Preserve complete values and all independent operation/cleanup facts.
/// @details This result owns only local storage; no ROS owner survives normal return.
pub const Outcome = struct {
    /// @brief First original operation, canonical or complete service-refusal error.
    primary: u32 = 0,
    /// @brief Independent original once-only owner-close result.
    cleanup: u32 = 0,
    /// @brief True only when an actually acquired owner was retired.
    cleanup_present: bool = false,
    /// @brief Original last full unsigned publication, poll or call status.
    rpc: u32 = 0,
    /// @brief Distinguish an entered import from an unattempted operation.
    rpc_present: bool = false,
    /// @brief Original full-width length; maximum preserves an unwritten slot.
    length: u64 = std.math.maxInt(u64),
    /// @brief True only after decoding the complete selected original response.
    response_present: bool = false,
    /// @brief Complete owned original String, selected for publish/subscribe.
    string: StringValue = .{},
    /// @brief Both complete owned original Trigger fields, selected for calling.
    trigger: TriggerResponse = .{},
    /// @brief Owned complete canonical storage; only size bytes are active.
    bytes: [256]u8 = @splat(0),
    /// @brief Initialized complete canonical extent within the backing array.
    size: u32 = 0,
};

/// @brief Execute one complete publication, subscription, or Trigger call.
/// @param operation Exactly 1 publish, 2 subscribe, or 3 service.call.
/// @param alias Existing exact-operation policy alias, borrowed through return.
/// @return Complete owned values, original transport facts, and one close result.
/// @details Publication emits two explicitly planned samples, separated by one
/// second for native middleware discovery. No failed effect or service is retried.
/// Subscription alone repeats idle 11, at most 250 polls with 20 ms waits.
pub fn run(operation: u32, alias: []const u8) Outcome {
    var facts: Outcome = .{};
    if (operation < 1 or operation > 3 or alias.len == 0 or alias.len > 255 or !std.unicode.utf8ValidateSlice(alias) or std.mem.indexOfScalar(u8, alias, 0) != null) {
        facts.primary = 22;
        return facts;
    }
    if (operation == 1) {
        const sample = "hello native ROS";
        @memcpy(facts.string.data.data[0..sample.len], sample);
        facts.string.data.size = sample.len;
        facts.size = @intCast(wire.encode(&facts.string, &facts.bytes) catch {
            facts.primary = 22;
            return facts;
        });
    }
    if (nl_version() != 1) {
        facts.primary = 95;
        return facts;
    }
    var owner: u64 = 0;
    facts.primary = nl_open(alias.ptr, @intCast(alias.len), &owner);
    if (facts.primary != 0) return facts;
    if (owner == 0) {
        facts.primary = 5;
        return facts;
    }
    if (operation == 1) {
        facts.rpc_present = true;
        facts.rpc = nl_publish(owner, &facts.bytes, facts.size);
        facts.primary = facts.rpc;
        if (facts.primary == 0) facts.primary = nl_pause(1000);
        if (facts.primary == 0) {
            facts.rpc = nl_publish(owner, &facts.bytes, facts.size);
            facts.primary = facts.rpc;
        }
        if (facts.primary == 0) facts.primary = nl_pause(200);
    } else {
        if (operation == 2) facts.primary = nl_subscribe(owner);
        if (facts.primary == 0) {
            for (0..250) |attempt| {
                facts.length = std.math.maxInt(u64);
                facts.rpc_present = true;
                facts.rpc = if (operation == 2) nl_poll(owner, &facts.bytes, facts.bytes.len, &facts.length) else nl_call(owner,
                     &facts.bytes, 0, &facts.bytes, facts.bytes.len, &facts.length);
                facts.primary = facts.rpc;
                if (operation != 2 or facts.rpc != 11 or attempt == 249) break;
                facts.primary = nl_pause(20);
                if (facts.primary != 0) break;
            }
        }
        if (facts.primary == 0) {
            if (facts.length > facts.bytes.len) {
                facts.primary = 22;
            } else if (operation == 2) {
                facts.string = wire.decode(StringValue, facts.bytes[0..@intCast(facts.length)]) catch {
                    facts.primary = 22;
                    facts.cleanup_present = true;
                    facts.cleanup = nl_close(owner);
                    return facts;
                };
                facts.response_present = true;
                facts.size = @intCast(wire.encode(&facts.string, &facts.bytes) catch unreachable);
            } else {
                facts.trigger = wire.decode(TriggerResponse, facts.bytes[0..@intCast(facts.length)]) catch {
                    facts.primary = 22;
                    facts.cleanup_present = true;
                    facts.cleanup = nl_close(owner);
                    return facts;
                };
                facts.response_present = true;
                facts.size = @intCast(wire.encode(&facts.trigger, &facts.bytes) catch unreachable);
                if (!facts.trigger.success) facts.primary = 5;
            }
        }
    }
    facts.cleanup_present = true;
    facts.cleanup = nl_close(owner);
    return facts;
}

/// @brief Emit all accepted canonical bytes after native ownership has retired.
/// @param facts Borrowed complete language-owned result. @return First primary/cleanup/output error.
pub fn report(facts: *const Outcome) u32 {
    return nl_report(facts.primary, facts.cleanup, @intFromBool(facts.cleanup_present), facts.rpc, @intFromBool(facts.rpc_present),
         facts.length, @intFromBool(facts.response_present), &facts.bytes, facts.size);
}
