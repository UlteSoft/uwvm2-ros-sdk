//! Local typed operations, Node ownership groups and caller-driven callbacks.
const std = @import("std");
const client = @import("client");
const wire = @import("roswire");

/// @brief Encode and publish one complete original value into an exact granted owner.
/// @details Requires value.encode(scratch) to produce the full stable original
/// body. Encoding errors return through the Zig error union; its successful
/// payload is still an unsigned Host status that must be checked separately.
/// @param[in] owner Exact original independently granted publisher Owner.
/// @param[in] value Complete original value with a compatible encode method.
/// @param[out] scratch Caller storage for complete encoded bytes, live through publication.
/// @return Encoder error or original u32 publish result; a successful try alone
/// does not mean that publication returned status 0. No automatic replay occurs.
/// @permissions Exact alias/type/publish/quota/deadline trusted Host grant.
/// @see client.Owner.publish; client.Owner.request; wire.Writer
pub fn publishValue(owner: client.Owner, value: anytype, scratch: []u8) !u32 {
    return owner.publish(try value.encode(scratch));
}
/// @brief Independent codec, original Host and validated goal-ID submission outcomes.
/// @details Check codec_error first, then code and the nonzero ID. Encoding
/// failure leaves default code 0 without a Host call; that default is not success.
/// Local construction/ID copying grants no native goal ownership or cancellation.
/// @see sendGoalValue; GoalSubmission.codec_error; GoalSubmission.id
pub const GoalSubmission = struct {
    /// @brief Original/local unsigned operation status when codec_error is null.
    /// @details Default 0 on encoding refusal attests to no submission; malformed
    /// successful output is reported as client.invalid instead of a default ID.
    /// @see GoalSubmission.codec_error; sendGoalValue; client.Result
    code: u32 = 0,
    /// @brief Actual Host-required bytes when its status 90 overwrote the sentinel.
    /// @details null is unknown; present 0 is known. This field supplies no
    /// encoder capacity detail, memory reservation or right to replay admission.
    /// @see GoalSubmission.code; client.Result.required; sendGoalValue
    required: ?u64 = null,
    /// @brief Actual nonzero original u64 ID after successful encoding/request validation.
    /// @details Zero is unusable and a copied ID supplies no native authority;
    /// admission remains distinct from eventual terminal completion.
    /// @see GoalSubmission.codec_error; GoalSubmission.code; sendGoalValue
    id: u64 = 0,
    /// @brief Original compatible wire.Error from goal encoding, independent of code.
    /// @details A present error means no Host request was issued by sendGoalValue;
    /// code/id defaults must not be interpreted as successful native admission.
    /// @see wire.Error; GoalSubmission.code; sendGoalValue
    codec_error: ?wire.Error = null,
};

/// @brief Encode and submit one complete original Action goal with an exact u64 result check.
/// @details The goal encode method must return a wire.Error-compatible error set;
/// incompatible anytype methods fail at compile time. Uses eight response bytes,
/// verifies exact length/nonzero ID and never retries unknown delivery.
/// @param[in] owner Exact independently granted live original Action-send Owner.
/// @param[in] goal Complete original goal with compatible encode(scratch).
/// @param[out] scratch Stable caller storage for the entire encoded request body.
/// @return GoalSubmission with independent codec_error/code/required/id fields;
/// inspect codec_error before code. No value establishes cancel-any rights.
/// @permissions Exact goal/type/direction/quota/deadline trusted Host grant.
/// @see GoalSubmission; client.Owner.request; client.Operation.action_send_goal
pub fn sendGoalValue(owner: client.Owner, goal: anytype, scratch: []u8) GoalSubmission {
    const bytes = goal.encode(scratch) catch |e| return .{ .codec_error = e };
    var output: [8]u8 = undefined;
    const result = owner.request(.action_send_goal, bytes, &output);
    if (result.code != 0) return .{ .code = result.code, .required = result.required };
    if (result.data.len != 8) return .{ .code = 22 };
    const id = std.mem.readInt(u64, &output, .little);
    return .{ .code = if (id == 0) 22 else 0, .id = id };
}
/// @brief Construct the explicit multi-channel result type for a complete response value.
/// @details Codec failure can leave default code 0 without Host success or a
/// decoded value. Check codec_error first, then code and value; public local
/// construction attests to no native response/ownership or authority.
/// @param[in] Response Exact comptime original response-body type.
/// @return Concrete record type retaining original status, known requirement,
/// optional Response and wire.Error without implicit error conversion.
/// @see callValue; wire.Error; client.Result
pub fn TypedResult(comptime Response: type) type {
    return struct {
        /// @brief Original/local unsigned transport status when codec_error is null.
        /// @details Default 0 after encode/decode refusal is not a usable response;
        /// value remains null on every failure returned by callValue.
        /// @see TypedResult(Response).codec_error; callValue
        code: u32 = 0,
        /// @brief Actual full u64 Host capacity requirement when independently observed.
        /// @details null means unknown and a present zero remains distinguishable;
        /// this field grants no allocation, future response or automatic retry.
        /// @see client.Result.required; TypedResult(Response).code; callValue
        required: ?u64 = null,
        /// @brief Complete decoded original Response present only on checked successful callValue.
        /// @details Generated Strings borrow output while sequences borrow the
        /// supplied allocator's regions; preserve both until last value use.
        /// @see TypedResult(Response).codec_error; callValue; wire.Reader
        value: ?Response = null,
        /// @brief Compatible encoder/decoder wire.Error independent of the Host status.
        /// @details Encoding failure occurs before import; decoding failure can
        /// follow an actual native effect. Neither error is replayed automatically.
        /// @see wire.Error; TypedResult(Response).value; callValue
        codec_error: ?wire.Error = null,
    };
}

/// @brief Encode, call and completely decode one original business-ABI Service response.
/// @details Requires compatible encode(input) and Response.decode(bytes,allocator)
/// methods with wire.Error-compatible errors. Original-control owned raw12 is
/// separate. Generated Strings borrow output and decoded sequences use caller
/// allocation; use a caller arena with explicit success/failure disposal, since
/// partial allocations are not automatically reclaimed by this helper.
/// @param[in] Response Exact comptime complete original Service-response type.
/// @param[in] owner Exact independently granted live original Service-call Owner.
/// @param[in] request Complete original request value, stable through encoding.
/// @param[out] input Caller encoding storage, disjoint from writable output.
/// @param[out] output Stable caller response storage, at most client.max_output bytes.
/// @param[in] allocator Explicit caller-owned allocator, retained through decoded sequence use.
/// @return TypedResult(Response); check codec_error before code and value. Failure
/// never yields a valid default body or permission to replay a possibly effected call.
/// @permissions Exact original Service/type/call/direction/quota/deadline Host grant.
/// @see TypedResult; client.Owner.request; wire.Reader; wire.Error
pub fn callValue(comptime Response: type, owner: client.Owner, request: anytype, input: []u8, output: []u8, allocator: std.mem.Allocator) TypedResult(Response) {
    const bytes = request.encode(input) catch |e| return .{ .codec_error = e };
    const result = owner.request(.service_call, bytes, output);
    if (result.code != 0) return .{ .code = result.code, .required = result.required };
    const value = Response.decode(result.data, allocator) catch |e| return .{ .codec_error = e };
    return .{ .value = value };
}
/// @brief Construct the type of a local label plus final-address bounded Session group.
/// @details No native rcl context, discovery endpoint, executor, clock or alias
/// is created. Place an initialized empty Node at its final address before open;
/// keep its Session cells alive through the last use of every returned Owner copy.
/// @param[in] capacity Exact comptime Session cell count, inclusive 1..1024.
/// @return Concrete Node type with explicit init/open/close; invalid capacity
/// is a compile error through client.Session, not a runtime Host refusal.
/// @see Node(capacity).init; client.Session; client.State
pub fn Node(comptime capacity: usize) type {
    return struct {
        /// @brief Inline fixed Session storage borrowed by all successfully opened Owners.
        /// @details Preserve final addresses and internal generation/slot state;
        /// copying/resetting/replacing the group after open violates its contract.
        /// @see client.Session; Node(capacity).open; Node(capacity).close
        resources: client.Session(capacity) = .{},
        /// @brief Borrowed validated local UTF-8 label without native identity/alias meaning.
        /// @details Keep backing label bytes live/unchanged through their use;
        /// no namespace derivation or original Host capability is inferred.
        /// @see Node(capacity).init; Node(capacity).open
        label: []const u8,

        /// @brief Validate one local label and construct an empty unmoved ownership group.
        /// @details Performs no Host operation or allocation and borrows label
        /// storage. The returned value may be placed at its final address before
        /// first open; moving it after Owners borrow its cells is unsupported.
        /// @param[in] label Nonempty strict UTF-8 bytes, at most 255, without NUL.
        /// @return Empty Node value or error.Invalid for label refusal.
        /// @see Node; Node(capacity).label; Node(capacity).resources
        pub fn init(label: []const u8) !@This() {
            if (label.len == 0 or label.len > 255 or !std.unicode.utf8ValidateSlice(label) or std.mem.indexOfScalar(u8, label, 0) != null) return error.Invalid;
            return .{ .label = label };
        }
        /// @brief Open one independent exact policy alias through the bounded Session.
        /// @details The local label adds no prefix/namespace or grant. Successful
        /// opens permanently consume the next Session cell; retired cells are not reused.
        /// @param[in,out] self Live final-address Node on the single Guest thread.
        /// @param[in] alias Exact strict UTF-8 nonempty NUL-free policy bytes, at most 255.
        /// @return Original client.OpenResult with no fabricated default Owner.
        /// @permissions Exact current-Instance/backend alias grant from the Host.
        /// @see client.Session; client.open; Node(capacity).close
        pub fn open(self: *@This(), alias: []const u8) client.OpenResult {
            return self.resources.open(alias);
        }
        /// @brief Retire the inline Session once and preserve every original per-cell close status.
        /// @details Busy preflight has no retirement effect; otherwise cleanup
        /// runs in reverse used-cell order. Outer success is separate from each
        /// attempted row, and failed notification never restores ownership.
        /// @param[in,out] self Existing final-address Node to retire explicitly.
        /// @return client.Session(capacity).CleanupResult with slot-ordered value journals.
        /// @see client.Session; client.Owner.close; Node(capacity).open
        pub fn close(self: *@This()) client.Session(capacity).CleanupResult {
            return self.resources.close();
        }
    };
}
/// @brief Construct a bounded caller-stepped legacy polling/callback dispatcher type.
/// @details Holds borrowed Owner/output/context references, without owning raw
/// cleanup or creating a thread/timer/native Guest callback. Use one final-address
/// instance on one Guest thread and never copy or edit its implementation state
/// after registration. Active reentry returns busy without waiting.
/// @param[in] capacity Exact comptime registration count 1..1024; otherwise compile error.
/// @return Concrete Executor type with explicit add/spinOnce/close and Step results.
/// @see Executor(capacity).add; Executor(capacity).spinOnce; client.Owner.dispatchCallback
pub fn Executor(comptime capacity: usize) type {
    if (capacity == 0 or capacity > 1024) @compileError("Executor capacity must be1..1024");
    return struct {
        /// Callback bytes and context are borrowed only during synchronous
        /// dispatch. Return 0 for completion or the actual application u32 error;
        /// no native ownership, Host success or authority follows from that value.
        const Callback = *const fn ([]const u8, ?*anyopaque) u32;
        const Entry = struct {
            /// @brief Borrowed exact original Owner retained for each poll/callback lease.
            /// @details Its State must stay alive/fixed; Executor.close does not close it.
            /// @see client.Owner; Executor(capacity).close
            owner: client.Owner,
            /// @brief Caller-owned writable full-event buffer retained through registration.
            /// @details Callback slices borrow this buffer until its next reuse;
            /// a later poll can overwrite data that callers retained without copying.
            /// @see client.Owner.poll; Executor(capacity).spinOnce
            output: []u8,
            /// @brief Exact synchronous nonnull callback invoked after successful poll/lease.
            /// @details Nonzero is application status; the failing callback is
            /// not counted even if it produced effects before returning.
            /// @see Executor(capacity).spinOnce; client.Owner.dispatchCallback
            callback: Callback,
            /// @brief Optional caller-owned opaque context passed unchanged to the callback.
            /// @details Retain pointed-to storage through registration/dispatch;
            /// close releases the reference without destroying caller storage.
            /// @see Executor(capacity).add; Executor(capacity).close
            context: ?*anyopaque,
        };
        /// @brief Fixed optional registration cells owned locally by this dispatcher.
        /// @details Observable implementation storage must not be mutated/reset;
        /// add/close preserve order and the used/closed invariants.
        /// @see Executor(capacity).add; Executor(capacity).used
        entries: [capacity]?Entry = [_]?Entry{null} ** capacity,
        /// @brief Number of initialized ordered registration cells, initially zero.
        /// @details Preserve this implementation cursor; duplicate Owner registrations
        /// consume separate cells and are not deduplicated or implicitly activated.
        /// @see Executor(capacity).entries; Executor(capacity).add
        used: usize = 0,
        /// @brief Single-thread nonblocking lease spanning spinOnce and its callbacks.
        /// @details Reentrant add/spinOnce/close refuses status 17; this ordinary
        /// Bool is not a cross-thread atomic synchronization primitive.
        /// @see Executor(capacity).spinOnce; Executor(capacity).close
        busy: bool = false,
        /// @brief Permanent local dispatcher-retirement flag after checked close.
        /// @details Closing releases registrations only; original Owner resources
        /// still need their separate checked caller/Session cleanup.
        /// @see Executor(capacity).close; client.Owner.close
        closed: bool = false,

        /// @brief Actual step status and completed callback prefix count.
        /// @details A later poll/callback refusal does not roll back earlier
        /// consumption or effects. All-idle successful stepping has delivered 0.
        /// @see Executor(capacity).spinOnce; Executor(capacity).Step.delivered
        pub const Step = struct {
            /// @brief Original poll/local lease status or exact application callback status.
            /// @details Code 0 means the ordinary pass finished, not native
            /// business success or permission created by a callback result.
            /// @see Executor(capacity).spinOnce; Executor(capacity).Step.delivered
            code: u32,
            /// @brief Count of callbacks that actually returned 0 before the step ended.
            /// @details A failing callback is not counted even after its partial
            /// effects; no automatically replayable message count is implied.
            /// @see Executor(capacity).spinOnce; Executor(capacity).Step.code
            delivered: usize = 0,
        };

        /// @brief Retain one ordered exact Owner/output/callback/context registration.
        /// @details Makes no Host call or Owner liveness/grant check; those are
        /// checked by polling later. Duplicate registrations are allowed. Retain
        /// cell, output and context backing storage until close/last callback use.
        /// @param[in,out] self Existing live single-thread dispatcher instance.
        /// @param[in] owner Original independently granted Owner with stable State.
        /// @param[out] output Retained caller poll buffer, at most client.max_output bytes.
        /// @param[in] callback Exact nonnull synchronous function receiving borrowed complete poll bytes.
        /// @param[in] context Optional stable caller-owned callback context pointer.
        /// @return 0 for local registration, 17 for active reentry, 9 after close
        /// or 90 for slot/buffer limit. Local registration is no native activation.
        /// @permissions Adds no rights; each future poll needs its independent grants.
        /// @see Executor(capacity).spinOnce; Executor(capacity).close; client.Owner.poll
        pub fn add(self: *@This(), owner: client.Owner, output: []u8, callback: Callback, context: ?*anyopaque) u32 {
            if (self.busy) return 17;
            if (self.closed) return 9;
            if (self.used == capacity or output.len > client.max_output) return 90;
            self.entries[self.used] = .{ .owner = owner, .output = output, .callback = callback, .context = context };
            self.used += 1;
            return 0;
        }
        /// @brief Poll each registration once in order and invoke ready callbacks synchronously.
        /// @details Skips genuine status 11. Poll and callback use separate
        /// Owner leases; the callback holds its lease through return, so same-
        /// Owner/group close and this Executor's reentry refuse busy. Input slices
        /// borrow caller output and can be overwritten by later polls; copy before
        /// retaining across reuse. No hidden loop, native callback or replay occurs.
        /// @param[in,out] self Existing live single-thread dispatcher with stable registrations.
        /// @return Step with completed callback prefix count and actual local/
        /// poll/callback status. Failure can follow consumed events/partial callback
        /// effects; traps provide no guaranteed remaining cleanup or callbacks.
        /// @permissions Each original poll independently checks exact delivery/schema grants.
        /// @see Executor(capacity).Step; Executor(capacity).add; client.Owner.dispatchCallback
        pub fn spinOnce(self: *@This()) Step {
            if (self.busy) return .{ .code = 17 };
            if (self.closed) return .{ .code = 9 };
            self.busy = true;
            defer self.busy = false;
            var delivered: usize = 0;
            for (self.entries[0..self.used]) |maybe| {
                const entry = maybe.?;
                const result = entry.owner.poll(entry.output);
                if (result.code == 11) continue;
                if (result.code != 0) return .{ .code = result.code, .delivered = delivered };
                const code = entry.owner.dispatchCallback(result.data, entry.callback, entry.context);
                if (code != 0) return .{ .code = code, .delivered = delivered };
                delivered += 1;
            }
            return .{ .code = 0, .delivered = delivered };
        }
        /// @brief Permanently retire this local dispatcher and release all retained entries.
        /// @details Performs no callback, raw close, buffer erasure or context
        /// destruction. Callers/Session must separately close the exact original
        /// Owners and preserve every native result; active dispatch refuses busy.
        /// @param[in,out] self Existing live dispatcher to retire exactly once.
        /// @return 0 for local retirement, 17 while active or 9 after prior close.
        /// @see Executor(capacity).spinOnce; client.Session; client.Owner.close
        pub fn close(self: *@This()) u32 {
            if (self.busy) return 17;
            if (self.closed) return 9;
            self.closed = true;
            self.entries = [_]?Entry{null} ** capacity;
            self.used = 0;
            return 0;
        }
    };
}
