//! Bounded Zig 0.14.1 conveniences over the selected exact numeric ROS module.
//! Caller-owned State and buffers must remain at stable addresses. Single
//! Guest execution thread only; the nonblocking lease detects reentrant use.
const std = @import("std");
const raw = @import("ros");

/// @brief Original unsigned success status 0.
/// @details Only the actual operation result establishes success; a local
/// numeric constant or constructed Result is no Host observation.
/// @see Result; Owner.request; OpenResult
pub const ok: u32 = 0;
/// @brief Original stale, foreign, missing or retired owner status 9.
/// @details Local retirement remains final even if Host cleanup notification fails.
/// @see Owner.close; Owner.revoke; State
pub const bad_handle: u32 = 9;
/// @brief Original idle or temporarily exhausted event/admission status 11.
/// @details Idle is no delivered value and never authorizes a hidden busy loop.
/// @see Owner.poll; Owner.pollEvent; Owner.ready
pub const again: u32 = 11;
/// @brief Original missing exact trusted authority status 13.
/// @details Backend selection, State construction and value decoding create no grant.
/// @see open; Owner.request; Owner.watch
pub const denied: u32 = 13;
/// @brief Local nonblocking owner/callback lease refusal 17.
/// @details No wait, retry owner or replacement generation is created; actual
/// original Host status with this unsigned value is preserved too.
/// @see Owner.dispatchCallback; Owner.close; Session
pub const busy: u32 = 17;
/// @brief Explicit canonical/input/success-output validation refusal 22.
/// @details A zero successful handle/ID or invalid length exposes no default value.
/// @see open; Owner.request; Owner.submit
pub const invalid: u32 = 22;
/// @brief Original local/Host capacity or quota refusal status 90.
/// @details Required bytes are known only when an actual length slot was overwritten.
/// @see Result.required; Owner.poll; Owner.request
pub const too_large: u32 = 90;
/// @brief Original absent backend/feature or unsupported-contract status 95.
/// @details The wrapper never substitutes another backend, schema, clock or library.
/// @see supports; Owner.request; Operation
pub const unsupported: u32 = 95;
/// @brief Inclusive original complete request-data ceiling 4193786 bytes.
/// @details Native schema/alias policy may be smaller; this constant grants no quota.
/// @see Owner.request; Owner.publish; max_output
pub const max_request: usize = 4193786;
/// @brief Inclusive checked caller-output extent ceiling 4194304 bytes.
/// @details Caller storage creates no event, admission reservation or native right.
/// @see Owner.poll; Owner.request; max_request
pub const max_output: usize = 4194304;

// State is never moved, reset or reused after a successful open. Owner copies
// borrow this same cell and therefore share retirement. It is not a Host token
// constructor or a security boundary against arbitrary Guest memory writes.
/// @brief Final-address caller-owned generation/lease cell shared by every Owner copy.
/// @details Initialize once before open and never move/reset/reuse after a
/// successful open. Single Guest execution thread only; ordinary fields are
/// not atomic locks or a security boundary against Guest memory modification.
/// Caller mutation cannot synthesize a valid Host handle or restore a generation.
/// @see open; Owner; Session; State.spent
pub const State = struct {
    /// @brief Actual original nonzero u64 handle after success, or 0 after retirement.
    /// @details Preserve opaque bits; never write a guessed/foreign generation.
    /// Retiring a local owner sets 0 before its one Host notification.
    /// @see open; Owner.close; State.spent
    handle: u64 = 0,
    /// @brief Nonblocking single-thread operation/callback lease state.
    /// @details Active reentry refuses busy; caller writes or cross-thread use
    /// violate this cell's contract rather than adding a concurrency guarantee.
    /// @see Owner.dispatchCallback; Owner.close; Session
    leased: bool = false,
    /// @brief True after the one successful open and permanently true after retirement.
    /// @details A spent cell cannot be reopened, reset or reused by the wrapper;
    /// all copied Owners continue borrowing this same final-address generation.
    /// @see open; State.handle; Owner.revoke
    spent: bool = false,
};

/// @brief Actual open status plus an optional shared borrow of the original State.
/// @details Checked open exposes an Owner only after status 0 and nonzero full
/// handle validation. Public construction is local data, never a Host grant proof.
/// @see open; Owner; State
pub const OpenResult = struct {
    /// @brief Original unsigned open status or exact local validation refusal.
    /// @details Inspect before using owner; success is an actual operation result.
    /// @see open; OpenResult.owner; ok
    code: u32,
    /// @brief Shared State-borrowing Owner present only on checked successful open.
    /// @details Does not own the caller cell/storage or install an automatic finalizer.
    /// @see State; Owner.close; OpenResult.code
    owner: ?Owner = null,
};

/// @brief Original status, borrowed complete successful output and optional known requirement.
/// @details data borrows the caller output, never heap/native storage. Post-import
/// failure erases the supplied output before finish returns, while preflight
/// refusals can leave caller bytes unchanged; both expose empty data. Public
/// construction establishes no Host result, native ownership or cleanup effect.
/// @see Owner.request; Owner.poll; Result.required
pub const Result = struct {
    /// @brief Exact original/local unsigned status governing all other fields.
    /// @details Preserve independently from later cleanup; no signed narrowing occurs.
    /// @see Result.data; Result.required; Owner.close
    code: u32,
    /// @brief Borrowed initialized complete prefix, valid only for actual code 0.
    /// @details Keep output storage live and unchanged; a later reuse invalidates
    /// retained views. Error results expose no partial/default decoded message.
    /// @see Owner.poll; Owner.request; Result.code
    data: []const u8 = &.{},
    /// @brief Actual full u64 required bytes only for status 90 with overwritten sentinel.
    /// @details null means unknown; a present 0 is a known zero requirement.
    /// The extent reserves no bytes/event and never authorizes automatic replay.
    /// @see Result.code; too_large; Owner.poll
    required: ?u64 = null,
};

/// @brief Compile-time exact selector for one original seven-argument RPC import.
/// @details Backend presence is checked without dynamic symbol lookup. Selection
/// creates no alias, type, native endpoint, quota or operation grant; unsupported
/// cases return 95 without importing a different backend.
/// @see supports; Owner.request; Operation.service_call
pub const Operation = enum {
    /// @brief Call one original exact Service with complete canonical request/response.
    /// @details Trusted policy fixes type/deadline; uncertain delivery is not replayed.
    /// @see Owner.request; Operation.service_respond
    service_call,
    /// @brief Respond to one actually delivered owned original Service request ID.
    /// @details Requires its own response grant; this legacy RPC is not owned raw12.
    /// @see Owner.request; encodeTriggerResponse
    service_respond,
    /// @brief Submit a complete original Action goal and read its exact nonzero u64 ID.
    /// @details Admission grants neither terminal success nor cancellation authority.
    /// @see Owner.request; Operation.action_receive_result
    action_send_goal,
    /// @brief Cancel one original nonzero goal owned by this current Instance/backend.
    /// @details Bool acknowledgement is distinct from terminal result or physical stopping.
    /// @see Owner.request; Operation.action_cancel_any_goal
    action_cancel_own_goal,
    /// @brief Select the separately granted original any-goal cancellation operation.
    /// @details Only this contract admits zero as its all-goals selector; no own-goal upgrade.
    /// @see Owner.request; Operation.action_cancel_own_goal
    action_cancel_any_goal,
    /// @brief Receive one original full goal-ID prefix and complete feedback body.
    /// @details Caller validates the returned ID before decoding; copying IDs adds no ownership.
    /// @see Owner.request; Operation.action_receive_result
    action_receive_feedback,
    /// @brief Receive original goal ID, terminal kind 2/3/4 and complete result body.
    /// @details Actual successful terminal consumption retires that goal ownership.
    /// @see Owner.request; Operation.action_receive_feedback
    action_receive_result,
    /// @brief Activate the already granted original exact Action server with an empty request.
    /// @details No alternate Action/type or native Guest callback is selected implicitly.
    /// @see Owner.request; Operation.action_respond
    action_advertise,
    /// @brief Send one owned original Action ID/kind/feedback-or-result body.
    /// @details Native pending/cancel state remains checked; unknown terminal delivery is not replayed.
    /// @see Owner.request; Operation.action_advertise
    action_respond,
    /// @brief Lookup the fixed original frame pair at u64 nanoseconds; 0 selects latest.
    /// @details Trusted policy fixes frames/clock domain; payload cannot add another pair.
    /// @see Owner.request; Operation.tf_broadcast
    tf_lookup,
    /// @brief Broadcast every original TransformStamped field in canonical order.
    /// @details No implicit frame renaming, unit conversion or quaternion normalization occurs.
    /// @see Owner.request; Operation.tf_lookup
    tf_broadcast,
    /// @brief Read the exact granted parameter with its configured canonical value kind.
    /// @details An empty request adds no node/key/parent namespace authority.
    /// @see Owner.request; Operation.parameter_set
    parameter_get,
    /// @brief Set the complete original selected scalar/array parameter value once.
    /// @details Unknown timeout may follow mutation and never proves the old value survived.
    /// @see Owner.request; Operation.parameter_get
    parameter_set,
    /// @brief Delete only the independently granted original ROS1 parameter key.
    /// @details A child grant does not cover its parent; ROS2 remains unsupported locally.
    /// @see supports; Owner.request; Operation.parameter_undeclare
    parameter_delete,
    /// @brief Query exact ROS1 key existence and decode a strict original canonical Bool.
    /// @details Error is not false; ROS2 remains unsupported without a backend fallback.
    /// @see Owner.request; Operation.parameter_get
    parameter_exists,
    /// @brief Read the bounded original canonical String list in the granted parameter scope.
    /// @details Returned names add no get/set/delete/declaration permission.
    /// @see Owner.request; decodeString; Operation.parameter_get
    parameter_list,
    /// @brief Perform the separately enabled original ROS1 parent-parameter search.
    /// @details Every native query remains allowed-prefix constrained; ROS2 is unsupported.
    /// @see Owner.request; Operation.parameter_exists
    parameter_search,
    /// @brief Read one original bounded canonical String topic-graph snapshot.
    /// @details Visibility does not create a publisher, subscription or type/traffic grant.
    /// @see Owner.request; Operation.graph_list_topics
    graph_inspect_topic,
    /// @brief Read one original bounded canonical String node-graph snapshot.
    /// @details Returned names confer no native context, endpoint or namespace ownership.
    /// @see Owner.request; Operation.graph_list_nodes
    graph_inspect_node,
    /// @brief Read one original bounded canonical String Service-graph snapshot.
    /// @details Discovery grants neither calls, advertisements nor responses.
    /// @see Owner.request; Operation.graph_list_services
    graph_inspect_service,
    /// @brief Read the original bounded canonical String list of visible topics.
    /// @details Each listed name remains subject to its own independent exact resource grant.
    /// @see Owner.request; Operation.graph_inspect_topic
    graph_list_topics,
    /// @brief Read the original bounded canonical String list of visible nodes.
    /// @details This snapshot reserves no future graph state or native resource.
    /// @see Owner.request; Operation.graph_inspect_node
    graph_list_nodes,
    /// @brief Read the original bounded canonical String list of visible Services.
    /// @details Names supply no exact Service type/call/respond authority.
    /// @see Owner.request; Operation.graph_inspect_service
    graph_list_services,
    /// @brief Read original full u64 nanoseconds in the separately granted ROS clock domain.
    /// @details Both backends admit this selector; no wall/steady fallback or runtime grant.
    /// @see Owner.request; Operation.time_read_wall
    time_read_ros,
    /// @brief Read original full u64 nanoseconds from the separately granted ROS1 wall clock.
    /// @details ROS2 remains unsupported; no system/steady domain is silently substituted.
    /// @see Owner.request; Operation.time_read_system
    time_read_wall,
    /// @brief Query original exact ROS2 parameter metadata without declaration or mutation.
    /// @details ROS1 remains unsupported; returned metadata creates no parameter grant.
    /// @see Owner.request; Operation.parameter_declare
    parameter_describe,
    /// @brief Declare the selected Gateway-local ROS2 parameter with its original default.
    /// @details No remote declaration emulation or ROS1 set fallback is supplied.
    /// @see Owner.request; Operation.parameter_undeclare
    parameter_declare,
    /// @brief Undeclare only the exact independently granted Gateway-local ROS2 parameter.
    /// @details Remote/ROS1 absence remains unsupported instead of delete/set emulation.
    /// @see Owner.request; Operation.parameter_declare
    parameter_undeclare,
    /// @brief Read one original bounded canonical String Action-graph snapshot on ROS2.
    /// @details ROS1 remains unsupported; visibility grants no Action business operation.
    /// @see Owner.request; Operation.action_send_goal
    graph_inspect_action,
    /// @brief Read complete original ROS2 Lifecycle state ID plus canonical UTF-8 label.
    /// @details ROS1 remains unsupported; a refusal never becomes a fabricated state.
    /// @see Owner.request; Operation.lifecycle_change_state
    lifecycle_get_state,
    /// @brief Request the original fixed trusted ROS2 Lifecycle transition and strict Bool.
    /// @details An empty payload cannot choose another transition; unknown effects are not replayed.
    /// @see Owner.request; Operation.lifecycle_get_state
    lifecycle_change_state,
    /// @brief Read original full u64 system-clock nanoseconds on the ROS2 backend.
    /// @details ROS1 remains unsupported; no other clock/time domain or WASI right is selected.
    /// @see Owner.request; Operation.time_read_steady
    time_read_system,
    /// @brief Read original full u64 steady-clock nanoseconds on the ROS2 backend.
    /// @details ROS1 remains unsupported; no origin conversion, timer or runtime grant is inferred.
    /// @see Owner.request; Operation.time_read_ros
    time_read_steady,
};

fn offset(bytes: anytype) u64 {
    return if (bytes.len == 0) 0 else @intFromPtr(bytes[0..].ptr);
}
/// @brief Check compile-time presence of this exact original RPC in the selected raw module.
/// @details Performs no Host query; true means a declaration exists, not that
/// runtime backend support, native dependencies, schema or trusted grants exist.
/// @param[in] operation Exact comptime original Operation selector.
/// @return Bool declaration-presence result without import, allocation or fallback.
/// @see Operation; Owner.request; unsupported
pub fn supports(comptime operation: Operation) bool {
    return @hasDecl(raw, @tagName(operation));
}

/// @brief Open one independently granted exact alias into a fresh final-address State.
/// @details Validates unspent/unleased state and strict UTF-8 nonempty NUL-free
/// alias before one memory-zero import. Checks the actual full nonzero u64 handle,
/// marks the cell permanently spent only on checked success and allocates nothing.
/// @param[in,out] state Fresh stable caller cell, live through every returned Owner copy.
/// @param[in] alias Exact original trusted alias bytes, length 1..255, stable through return.
/// @return Actual unsigned status and shared borrowed Owner on success; null
/// owner with exact validation/Host refusal. No guessed owner or retry grant is made.
/// @permissions Exact current-Instance/backend alias grant supplied by the Host.
/// @see State; OpenResult; Owner.close; Owner.revoke
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

/// @brief Copyable borrow of one stable original State generation on one Guest thread.
/// @details Copies share nonblocking operation/callback lease and permanent
/// retirement. This value owns neither the cell nor buffers; keep all backing
/// storage alive and fixed. There is no allocator, finalizer, thread, native
/// callback, automatic retry or panic/trap-time cleanup guarantee.
/// @permissions Every alias/type/operation/direction/quota/deadline grant remains
/// independently supplied by the trusted current Host, never this local value.
/// @see State; open; Owner.close; Owner.request; Session
pub const Owner = struct {
    /// @brief Borrowed final-address generation cell returned by checked open.
    /// @details Keep the cell alive through every Owner copy; replacing/resetting
    /// it or constructing a handle in Guest memory cannot create Host authority.
    /// @see State; open; Owner.close
    state: *State,
    fn acquire(self: Owner) u32 {
        if (self.state.leased) return busy;
        if (!self.state.spent or self.state.handle == 0) return bad_handle;
        self.state.leased = true;
        return ok;
    }
    /// Execute one Guest callback under the same retirement lease. A grouped
    /// close/revoke or recursive use cannot retire an active callback owner.
    /// @brief Invoke exactly one synchronous callback under this original Owner lease.
    /// @details Holds the lease through callback return; same-owner methods and
    /// Session close refuse busy on reentry. Callback code is application status,
    /// not authenticated Host success. Traps need independent Instance cleanup.
    /// @param[in] self Original State-borrowing Owner, with backing cell unchanged.
    /// @param[in] bytes Complete stable caller span borrowed for the callback duration.
    /// @param[in] callback Nonnil exact synchronous function, called once after lease success.
    /// @param[in] context Optional caller-owned opaque context, live through callback return.
    /// @return Callback's exact u32 result, or busy/bad_handle before invocation.
    /// No thread, native callback or stored background invocation is created.
    /// @see Owner; Owner.close; State.leased; Session
    pub fn dispatchCallback(self: Owner, bytes: []const u8, callback: *const fn ([]const u8, ?*anyopaque) u32, context: ?*anyopaque) u32 {
        const code = self.acquire();
        if (code != ok) return code;
        defer self.state.leased = false;
        return callback(bytes, context);
    }
    fn retire(self: Owner, revoke_alias: bool) u32 {
        const code = self.acquire();
        if (code != ok) return code;
        defer self.state.leased = false;
        const handle = self.state.handle;
        self.state.handle = 0; // Invalidate every local copy before the import.
        return if (revoke_alias) raw.capability_revoke(handle) else raw.capability_close(handle);
    }
    /// @brief Permanently retire the shared local generation before its one raw close.
    /// @details Sets the shared handle to 0 before import and keeps spent true;
    /// Host failure never restores ownership or authorizes retrying the old handle.
    /// @param[in] self Original Owner borrowing its stable cell through return.
    /// @return Exact original unsigned close result, busy or bad_handle.
    /// @see Owner.revoke; State; Session; bad_handle
    pub fn close(self: Owner) u32 {
        return self.retire(false);
    }
    /// @brief Retire this shared generation and explicitly revoke its original alias.
    /// @details Actual revocation can invalidate sibling handles of this alias
    /// in the current principal. Failed notification does not reopen/regrant it;
    /// this is neither physical controller stop nor Host policy administration.
    /// @param[in] self Exact original independently granted Owner, borrowed through return.
    /// @return Original unsigned revoke result, busy or bad_handle.
    /// @see Owner.close; open; State.spent
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
    /// @brief Publish one complete already-canonical original message exactly once.
    /// @details Borrows bytes only through its one synchronous memory-zero import;
    /// local byte shape provides no native publisher/schema/traffic authority.
    /// @param[in] self Exact independently granted live publisher Owner.
    /// @param[in] payload Stable immutable full original body, at most max_request bytes.
    /// @return Original unsigned publish status, too_large, busy or bad_handle.
    /// Unknown/timeout/capacity results never trigger automatic replay.
    /// @permissions Exact original alias/type/publish/quota/deadline Host grant.
    /// @see Owner.request; encodeString; Owner.close
    pub fn publish(self: Owner, payload: []const u8) u32 {
        return self.write(payload, false);
    }
    /// @brief Write one complete canonical original String through its separate logger grant.
    /// @details Uses the original log_write import without files, stdout
    /// redirection, native logger discovery or implicit severity/policy changes.
    /// @param[in] self Exact independently granted original logger Owner.
    /// @param[in] payload Complete stable already-canonical String, at most max_request bytes.
    /// @return Original unsigned log status, too_large, busy or bad_handle.
    /// @permissions Exact logger/schema/write/quota/deadline Host grant.
    /// @see encodeString; Owner.publish; Owner.request
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
    /// @brief Activate the existing independently granted original topic subscription.
    /// @details Starts no native Guest callback, thread or hidden poll loop;
    /// delivery/decoding remain separate explicit caller operations.
    /// @param[in] self Exact live original subscription Owner.
    /// @return Original unsigned activation status, busy or bad_handle.
    /// @permissions Exact topic/type/subscribe/delivery/quota/deadline Host grant.
    /// @see Owner.poll; Owner.pollEvent; Owner.watch
    pub fn subscribe(self: Owner) u32 {
        return self.activate("topic_subscribe");
    }
    /// @brief Activate the independently granted exact original legacy Service server.
    /// @details Creates no alternate alias/type and adds no response authority;
    /// owned original-control raw12 requires its separate transport implementation.
    /// @param[in] self Exact live independently granted advertisement Owner.
    /// @return Original unsigned activation status, busy or bad_handle.
    /// @permissions Exact Service type/advertise/native policy grant.
    /// @see Owner.poll; Owner.request; Operation.service_respond
    pub fn advertiseService(self: Owner) u32 {
        return self.activate("service_advertise");
    }
    /// @brief Activate the separate original ROS2 parameter-event projection grant.
    /// @details ROS1 returns unsupported without import or lease acquisition;
    /// scalar get/set rights never imply event subscription or mutation authority.
    /// @param[in] self Exact live independently granted projection Owner.
    /// @return Original unsigned activation status, unsupported, busy or bad_handle.
    /// @permissions Exact projection/schema/delivery/quota/deadline Host grant.
    /// @see Owner.poll; Owner.pollEvent; Owner.ready
    pub fn subscribeParameterEvents(self: Owner) u32 {
        return self.activate("parameter_subscribe_events");
    }
    /// @brief Poll one original legacy subscription/Service/Action event into caller storage.
    /// @details Validates the original sentinel/length before exposing a borrowed
    /// successful prefix. Post-import refusal erases output; preflight refusal
    /// need not. Legacy capacity/decode failure may follow event consumption.
    /// @param[in] self Exact independently granted live original event Owner.
    /// @param[out] output Stable writable complete-event buffer, at most max_output bytes.
    /// @return Borrowed successful Result or original/local refusal with empty
    /// data and only actually observed required bytes. Never grows/retries implicitly.
    /// @permissions Exact original alias/schema/delivery/quota/deadline Host grant.
    /// @see Result; Owner.pollEvent; Owner.ready; too_large
    pub fn poll(self: Owner, output: []u8) Result {
        return self.receive(output, false);
    }
    /// Complete opaque v1 envelope. Source/instance/correlation validation is
    /// still required before dispatch; this function supplies no such proof.
    /// @brief Poll one complete original versioned event into explicit caller storage.
    /// @details Caller must validate the full 64-byte header, source, observer,
    /// Instance and correlation before interpreting the body. Capacity status 90
    /// retains the pinned event under this protocol; 11 is idle, not a value.
    /// @param[in] self Exact independently granted live original observer Owner.
    /// @param[out] output Stable writable full-event buffer, at most max_output bytes.
    /// @return Original/local Result; only actual successful initialized bytes
    /// are exposed. Buffer erasure applies after import, not every preflight refusal.
    /// @permissions Exact observer/schema/delivery/quota/deadline Host grant.
    /// @see Owner.poll; Owner.watch; Owner.ready; Result
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
    /// @brief Invoke one exact original compile-time RPC with complete disjoint buffers.
    /// @details Checks backend declaration, extent limits and input/output
    /// nonoverlap before acquiring the Owner. Borrows memory-zero spans only
    /// until synchronous return, validates full u64 output length and erases
    /// post-import error bytes. Preflight refusal leaves caller storage unchanged.
    /// @param[in] self Exact independently granted original operation Owner.
    /// @param[in] operation Exact comptime Operation for the selected raw backend.
    /// @param[in] input Stable complete original request, at most max_request bytes.
    /// @param[out] output Stable writable storage disjoint from input, at most max_output bytes.
    /// @return Borrowed complete Result or exact local/Host refusal, retaining
    /// a required size only after actual status 90 overwrote its sentinel.
    /// Unknown timeout/effect/capacity never authorizes automatic replay.
    /// @permissions Exact operation/alias/type/direction/quota/deadline Host grant.
    /// @see supports; Operation; Result; Owner.close
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
    /// @brief Watch one distinct independently granted original source through this observer.
    /// @details Same-cell Owner copies refuse invalid; both nonblocking leases
    /// are released on ordinary return. No source activation, role upgrade,
    /// payload reservation or native identity proof is supplied by pairing.
    /// @param[in] self Exact independently granted live observer Owner.
    /// @param[in] source Distinct live same-Instance/backend original source Owner.
    /// @param[in] correlation Exact owned outgoing-goal u64 ID for Action data watches;
    /// metadata-only watches use 0 and a copied number grants no ownership.
    /// @return Original unsigned watch status, invalid, busy or bad_handle.
    /// @permissions Independent exact observer/source pairing and trusted source grants.
    /// @see Owner.ready; Owner.pollEvent; Owner.submit
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
    /// @brief Exact original readiness status plus four full u64 observation words.
    /// @details Only actual code 0 from ready establishes an observation; public
    /// construction/default zeros reserve no future event, slot, byte quota or grant.
    /// @see Owner.ready; Owner.watch; Owner.submit
    pub const Readiness = struct {
        /// @brief Original unsigned readiness status governing all snapshot fields.
        /// @details Failed snapshots contain unusable zeros rather than a valid idle observation.
        /// @see Owner.ready; Owner.Readiness.events
        code: u32,
        /// @brief Current original ready event count from an actual successful snapshot.
        /// @details Zero with code 0 is idle, without retiring or regranting any owner.
        /// @see Owner.ready; Owner.pollEvent
        events: u64 = 0,
        /// @brief Observed complete next-event byte extent, including its envelope.
        /// @details A later poll independently checks current event/state/capacity.
        /// @see Owner.pollEvent; Owner.Readiness.events
        next_bytes: u64 = 0,
        /// @brief Full original available asynchronous admission-slot snapshot.
        /// @details This is no reservation; submit must independently pass exact admission.
        /// @see Owner.submit; Owner.Readiness.admission_bytes
        admission_slots: u64 = 0,
        /// @brief Full original asynchronous admission-byte budget snapshot.
        /// @details It enlarges neither schema/alias limits nor future submission rights.
        /// @see Owner.submit; Owner.Readiness.admission_slots
        admission_bytes: u64 = 0,
    };
    /// @brief Read one complete original four-word readiness snapshot synchronously.
    /// @details Uses explicit memory-zero 32-byte storage and decodes only after
    /// actual successful status; no event/admission reservation or clock is created.
    /// @param[in] self Exact independently granted live readiness observer Owner.
    /// @return Complete Readiness with original code, or unusable zero fields
    /// with exact Host/busy/bad_handle refusal. Native data stays full u64.
    /// @permissions Exact observer/readiness/quota/deadline Host grant.
    /// @see Owner.Readiness; Owner.watch; Owner.pollEvent; Owner.submit
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
    /// @brief Actual asynchronous original Service admission status and nonzero request ID.
    /// @details Admission does not mean a native response completed; IDs are
    /// correlations rather than capability handles or transferable ownership.
    /// @see Owner.submit; Owner.pollEvent; Owner.Submission.id
    pub const Submission = struct {
        /// @brief Exact original/local unsigned admission status governing id validity.
        /// @details Public code 0 construction alone proves no Host effect.
        /// @see Owner.submit; Owner.Submission.id
        code: u32,
        /// @brief Actual full nonzero u64 request ID, valid only after checked successful submit.
        /// @details Never close it as a capability or synthesize generation/ownership bits.
        /// @see Owner.submit; Owner.pollEvent; Owner.Submission.code
        id: u64 = 0,
    };
    /// @brief Submit one complete original Service request with a distinct original observer.
    /// @details Acquires both shared cells without waiting, validates exact
    /// nonzero returned ID and releases leases on ordinary return. Registration/
    /// correlation cleanup and eventual response/resource-error observation remain
    /// explicit; owned original-control raw12 is a separate required transport.
    /// @param[in] self Exact independently granted live original Service-call Owner.
    /// @param[in] observer Distinct live independently granted same-Instance/backend observer.
    /// @param[in] input Complete stable original request, at most max_request bytes.
    /// @return Original Submission; invalid rejects same cell/zero successful ID,
    /// with too_large/busy/bad_handle/Host statuses unchanged. No automatic replay.
    /// @permissions Independent exact call/observer/type/quota/deadline Host grants.
    /// @see Owner.Submission; Owner.pollEvent; Owner.watch; Owner.ready
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

/// @brief Local builtin String/Trigger shape, canonical-limit and buffer failures.
/// @details Invalid rejects input/UTF-8/ID, TooLarge rejects the original request
/// ceiling and NoSpace rejects caller output capacity. These Zig errors remain
/// distinct from original unsigned Host statuses and allocation/runtime traps.
/// @see encodeString; encodeTriggerResponse; Result
pub const CodecError = error{ Invalid, TooLarge, NoSpace };

/// @brief Encode a complete original UTF-8 String into a caller-owned output prefix.
/// @details Writes u32 LE byte count then exact bytes, preserving embedded NUL/BOM
/// and no terminator/normalization. All checked validation/capacity tests precede
/// writes. Source/destination must be disjoint for memcpy and remain stable.
/// @param[in] value Full original strict UTF-8 content, at most max_request minus 4 bytes.
/// @param[out] out Caller-owned writable storage disjoint from value, for the complete body.
/// @return Borrowed initialized prefix; Invalid for UTF-8, TooLarge for total
/// canonical limit or NoSpace for buffer capacity. Checked errors leave out unchanged.
/// @see decodeString; CodecError; Owner.publish; max_request
pub fn encodeString(value: []const u8, out: []u8) CodecError![]const u8 {
    if (!std.unicode.utf8ValidateSlice(value)) return error.Invalid;
    if (value.len > max_request - 4) return error.TooLarge;
    if (out.len < 4 + value.len) return error.NoSpace;
    std.mem.writeInt(u32, out[0..4], @intCast(value.len), .little);
    @memcpy(out[4..][0..value.len], value);
    return out[0 .. 4 + value.len];
}
/// @brief Validate and borrow exactly one complete original canonical UTF-8 String.
/// @details Requires four-byte LE prefix, exact extent/UTF-8 and no trailing data,
/// at most max_output bytes. Does not normalize text, copy storage or enforce an
/// independently stricter native field/alias NUL policy.
/// @param[in] bytes Stable entire original canonical String body.
/// @return Borrowed content slice, including valid empty text, or null for
/// size/prefix/UTF-8 refusal. Keep backing input live/unchanged through last use.
/// @see encodeString; ServiceResponse; decodeServiceResponse
pub fn decodeString(bytes: []const u8) ?[]const u8 {
    if (bytes.len < 4 or bytes.len > max_output or
        std.mem.readInt(u32, bytes[0..4], .little) != bytes.len - 4 or
        !std.unicode.utf8ValidateSlice(bytes[4..])) return null;
    return bytes[4..];
}
/// @brief Original builtin Trigger/SetBool application response with borrowed String content.
/// @details success is business data independent of transport status. Local
/// construction/decoding attests to no native Service ownership or successful call.
/// @see decodeServiceResponse; encodeTriggerResponse; Owner.request
pub const ServiceResponse = struct {
    /// @brief Original canonical application Bool, valid after complete response validation.
    /// @details False can be a valid successful transport result; it is never an errno.
    /// @see decodeServiceResponse; ServiceResponse.message
    success: bool,
    /// @brief Complete original UTF-8 message borrowed from the successful input body.
    /// @details Keep backing input live and unchanged; no allocation/copy or native
    /// object pointer is returned by decodeServiceResponse.
    /// @see decodeString; decodeServiceResponse; ServiceResponse.success
    message: []const u8,
};

/// @brief Decode complete original builtin response: one Bool and one canonical String.
/// @details Requires Bool 0/1, full String/UTF-8 shape and exact bounded length.
/// No input storage is owned; valid application false is distinct from null refusal.
/// @param[in] bytes Stable full original response body, at most max_output bytes.
/// @return Complete ServiceResponse borrowing message bytes, or null for
/// shape/domain/text refusal. No default/partial response is published on failure.
/// @see ServiceResponse; decodeString; encodeTriggerResponse; Owner.request
pub fn decodeServiceResponse(bytes: []const u8) ?ServiceResponse {
    if (bytes.len < 5 or bytes.len > max_output or bytes[0] > 1) return null;
    const message = decodeString(bytes[1..]) orelse return null;
    return .{ .success = bytes[0] == 1, .message = message };
}
/// @brief Validate the entire original incoming empty-Trigger event's u64 ID prefix.
/// @details Requires exactly eight LE bytes and nonzero full ID. Shape decoding
/// alone proves no live server/pending-request ownership or right to respond.
/// @param[in] bytes Complete stable original Trigger event, without trailing body bytes.
/// @return Exact full nonzero u64 ID, or null for length/zero-ID refusal.
/// @see encodeTriggerResponse; Owner.poll; Operation.service_respond
pub fn decodeTriggerRequest(bytes: []const u8) ?u64 {
    if (bytes.len != 8) return null;
    const id = std.mem.readInt(u64, bytes[0..8], .little);
    return if (id == 0) null else id;
}
/// @brief Encode full original request ID, application Bool and complete Trigger response text.
/// @details Checks ID/UTF-8, 13-byte-prefix total limit and output extent before
/// writing. It neither authenticates pending ownership nor sends a response.
/// Keep message disjoint from out so earlier prefix writes cannot alter its input.
/// @param[in] id Exact original nonzero pending request ID without ownership synthesis.
/// @param[in] success Original application Bool, independent of a future import status.
/// @param[in] message Stable complete strict UTF-8 response text, with NUL/BOM preserved.
/// @param[out] out Caller storage disjoint from message, large enough for the entire body.
/// @return Borrowed initialized full prefix, or Invalid/TooLarge/NoSpace.
/// Checked refusal leaves out unchanged; no native operation or retry occurs.
/// @see decodeTriggerRequest; CodecError; Owner.request; Operation.service_respond
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
/// @brief Construct the type of a final-address bounded original-owner cell group.
/// @details Initialize the returned type at its final address and do not copy,
/// reset or move it after successful open. Each success consumes the next cell
/// permanently, even when its Owner is manually closed; this pool does not reuse
/// retired slots. Single Guest thread only, without native context or finalizers.
/// @param[in] capacity Exact comptime cell count, inclusive 1..1024; otherwise compile error.
/// @return Concrete fixed-size Session type with checked open/close and per-cell journal.
/// Type construction allocates no heap storage or native resources.
/// @see State; open; Owner.close; Session(capacity).CleanupResult
pub fn Session(comptime capacity: usize) type {
    if (capacity == 0 or capacity > 1024) @compileError("Session capacity must be1..1024");
    return struct {
        const Self = @This();
        /// @brief Fixed original State array whose addresses are borrowed by returned Owners.
        /// @details Initialize once and never move/reset or replace live cells;
        /// mutating public implementation storage cannot create Host authority.
        /// @see State; Session; Session(capacity).open
        cells: [capacity]State = [_]State{.{}} ** capacity,
        /// @brief Number of permanently consumed successful-open cells, initially zero.
        /// @details Preserve this implementation cursor; manually closing an
        /// Owner does not decrement it or permit reusing that spent generation.
        /// @see Session(capacity).open; State.spent; Session(capacity).cells
        used: usize = 0,
        /// @brief Permanent group-retirement flag set before ordinary cleanup imports.
        /// @details Busy preflight leaves it false; caller writes cannot restore
        /// safe ownership or make a completed close pass retryable.
        /// @see Session(capacity).close; Session(capacity).open; Session(capacity).CleanupResult
        closed: bool = false,

        /// @brief Independent original close journal for one fixed Session cell.
        /// @details An unattempted row's default code 0 is no successful Host
        /// operation. Preserve attempted failures separately from primary errors.
        /// @see Session(capacity).close; Session(capacity).CleanupResult; Owner.close
        pub const Cleanup = struct {
            /// @brief True only when this cleanup pass attempted the cell's raw close.
            /// @details False includes unused/already locally retired cells;
            /// true does not imply the associated native result is success.
            /// @see Session(capacity).Cleanup.code; Session(capacity).close
            attempted: bool = false,
            /// @brief Exact original unsigned close status when attempted is true.
            /// @details Failure leaves local ownership retired and never permits
            /// retrying the old generation; otherwise this default value is unusable.
            /// @see Session(capacity).Cleanup.attempted; Owner.close
            code: u32 = ok,
        };

        /// @brief Outer cleanup-pass status plus all fixed cell journals in storage order.
        /// @details Physical close order is reverse used-cell order. Outer code
        /// 0 means the ordinary pass finished, not that every attempted close succeeded.
        /// @see Session(capacity).close; Session(capacity).Cleanup; Session
        pub const CleanupResult = struct {
            /// @brief Actual outer pass result, independent of every per-cell status.
            /// @details busy or bad_handle means no pass started; default rows
            /// then attest to no Host close.
            /// @see Session(capacity).close; Session(capacity).CleanupResult.rows
            code: u32,
            /// @brief Fixed slot-ordered journal preserving each attempted original result.
            /// @details Check attempted before code; unused/already retired
            /// cells have no close observation and remain default rows.
            /// @see Session(capacity).Cleanup; Session(capacity).close
            rows: [capacity]Cleanup = [_]Cleanup{.{}} ** capacity,
        };

        /// @brief Open one exact independently granted alias in the next never-used State cell.
        /// @details Failed open does not advance used; successful local closure
        /// later does not return the spent slot to this pool. No alias derives
        /// from a group label, and no native quota is increased by local capacity.
        /// @param[in,out] self Final-address live group, used on one Guest execution thread.
        /// @param[in] alias Exact strict UTF-8 nonempty NUL-free alias, at most 255 bytes.
        /// @return Original OpenResult, bad_handle after group close or too_large
        /// after all cells have been consumed. No implicit retry/regrant occurs.
        /// @permissions Exact current-Instance/backend alias grant from the trusted Host.
        /// @see open; State; Session(capacity).close; Session(capacity).used
        pub fn open(self: *Self, alias: []const u8) OpenResult {
            if (self.closed) return .{ .code = bad_handle };
            if (self.used == capacity) return .{ .code = too_large };
            const result = openOwner(&self.cells[self.used], alias);
            if (result.code == ok) self.used += 1;
            return result;
        }
        /// @brief Retire this group once and attempt every still-live used cell in reverse.
        /// @details Checks all used cells for an active lease before effects;
        /// busy leaves the group open. Otherwise marks it closed first, retires
        /// each live generation before its close and preserves every ordinary
        /// native error. Traps need independent Instance cleanup and do not promise
        /// notification of remaining cells. No implicit cleanup retry is made.
        /// @param[in,out] self Existing final-address group, used on one Guest thread.
        /// @return Slot-ordered CleanupResult with outer code 0 after all ordinary
        /// returns, busy for an active callback/operation or bad_handle after closure.
        /// Individual attempted rows can still fail when the outer code is 0.
        /// @see Session(capacity).CleanupResult; Session(capacity).Cleanup; Owner.close; Session(capacity).open
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
