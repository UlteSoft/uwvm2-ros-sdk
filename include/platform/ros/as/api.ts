/**
 * @brief Name common numeric ABI outcomes without discarding unknown statuses.
 * @details This is a convenience subset, not an exhaustive error whitelist.
 * Values describe one operation's outcome; none confers permission or proves
 * that an admitted external effect was absent. In particular107/110 must not
 * trigger replay. Raw APIs preserve their full u32 result independently.
 * @see Api.request
 */
export enum Status {
    /**
     * @brief Operation-specific success status0.
     * @details Inspect the selected form's output and lifetime contract. This
     * code alone proves neither a native peer delivery nor newly granted rights.
     * @see Api.request
     */
    Success = 0,
    /**
     * @brief Common unavailable/missing-module status2.
     * @details Preserve the numeric outcome and inspect the selected backend;
     * it does not authorize loading an ambient module or choosing a fallback.
     * @see Api.supports
     */
    UnknownModule = 2,
    /**
     * @brief Invalid or no-longer-usable handle status9.
     * @details Handles belong to their original Instance/backend. Numeric
     * copying, reinterpretation or replay cannot revive retired ownership.
     * @see Api.close
     */
    BadHandle = 9,
    /**
     * @brief Nonblocking not-ready status11.
     * @details Distinct from successful data delivery. Scheduling/polling remain
     * explicit and must respect the operation's consumption/deadline contract.
     * @see Api.poll
     */
    Again = 11,
    /**
     * @brief Permission-denied status13.
     * @details The operation lacks an applicable grant. No alias inference,
     * privilege expansion or alternate transport is performed by this SDK.
     * @see Api.open
     */
    Denied = 13,
    /**
     * @brief Conflicting resource or dispatch state status17.
     * @details A callback lease/retirement conflict is not permission to force
     * cleanup or mutate another owner's state. Preserve the original outcome.
     * @see Api.close
     */
    Conflict = 17,
    /**
     * @brief Invalid argument, shape or protocol status22.
     * @details Inspect the operation-specific canonical contract; no field
     * projection, silent coercion or automatic corrective request is implied.
     * @see Api.request
     */
    Invalid = 22,
    /**
     * @brief Capacity or finite quota status90.
     * @details A required-size slot is meaningful only when actually written.
     * This code alone never authorizes replay; dedicated event polling has its
     * own retention rule, unlike arbitrary effectful request operations.
     * @see Api.pollEventV1
     */
    TooLarge = 90,
    /**
     * @brief Unsupported backend/operation status95.
     * @details The unavailable Api base returns this without performing I/O.
     * Real callers must select an actual supported implementation explicitly.
     * @see Api.supports
     */
    Unsupported = 95,
    /**
     * @brief Disconnected or unavailable transport outcome107.
     * @details External admission/effects may already have occurred. Preserve
     * evidence and reconcile explicit protocol state; never replay implicitly.
     * @see Api.submitService
     */
    Disconnected = 107,
    /**
     * @brief Deadline/timeout outcome110.
     * @details A timeout does not establish that an operation was unadmitted,
     * undone or safe to retry. No automatic clock/deadline fallback is provided.
     * @see Api.request
     */
    Timeout = 110,
    /**
     * @brief Revoked or locally shut-down resource outcome125.
     * @details Previously copied IDs do not restore authority. Cleanup and
     * original Instance lifetime remain explicit; no reconnect/grant is inferred.
     * @see Api.revoke
     */
    Revoked = 125
}

/**
 * @brief Select exact version-specific request operations for Api dispatch.
 * @details Ordinals are local SDK selectors, not native handles, wire type
 * identities or permission bits. Api.supports checks actual backend availability
 * separately. All endpoint/type/QoS/quota/deadline and mutation rights remain
 * Host-controlled. Events with dedicated imports are not encoded as selectors.
 * @see Api.supports
 */
export enum Operation {
    /**
     * @brief Select one synchronous service call.
     * @details Requires the configured service-call capability and complete
     * request/response codecs. A timeout may follow admission; no replay occurs.
     * @see Api.request
     */
    service_call,
    /**
     * @brief Select one service response operation.
     * @details Requires the separately granted response owner and its actual
     * request correlation. Selecting this value cannot authorize a response.
     * @see Api.request
     */
    service_respond,
    /**
     * @brief Select submission of one complete action goal.
     * @details Goal identity, complete canonical body and operation grants stay
     * explicit. Submission outcome does not stand in for final action result.
     * @see Api.request
     */
    action_send_goal,
    /**
     * @brief Select cancellation scoped to an owned action goal.
     * @details Requires actual goal ownership/cancellation rights; an ID is not
     * transferable authority and cancellation is not proof of a physical stop.
     * @see Api.request
     */
    action_cancel_own_goal,
    /**
     * @brief Select the separately privileged any-goal cancellation operation.
     * @details This selector supplies no escalation from own-goal rights.
     * The Host independently checks the precise cancellation grant.
     * @see Api.request
     */
    action_cancel_any_goal,
    /**
     * @brief Select receipt of copied action feedback.
     * @details Requires the configured feedback capability and explicit goal
     * correlation. Poll/consumption/output bounds remain operation-specific.
     * @see Api.request
     */
    action_receive_feedback,
    /**
     * @brief Select receipt of a copied terminal action result.
     * @details Complete result status/body and goal correlation must be decoded;
     * this local enum value neither completes a goal nor creates a callback.
     * @see Api.request
     */
    action_receive_result,
    /**
     * @brief Select action-server advertisement admission.
     * @details Requires an explicitly configured server grant and native type
     * agreement. Advertising does not start a local executor or handler here.
     * @see Api.request
     */
    action_advertise,
    /**
     * @brief Select an explicitly correlated action-server response.
     * @details Requires the granted response owner and complete operation body;
     * no ownership, goal identity or native acceptance is inferred by selection.
     * @see Api.request
     */
    action_respond,
    /**
     * @brief Select a lookup for the grant's fixed TF frame pair.
     * @details Timestamp and complete canonical transform remain explicit.
     * No frame discovery, identity fallback or current-time substitution occurs.
     * @see Api.request
     */
    tf_lookup,
    /**
     * @brief Select one complete TF broadcast through its separate grant.
     * @details Native frame/finite-bound/quaternion/quota rules still apply.
     * This selector neither normalizes orientation nor grants publication.
     * @see Api.request
     */
    tf_broadcast,
    /**
     * @brief Select parameter-value retrieval.
     * @details The configured grant fixes permitted parameter scope/type;
     * complete canonical decoding remains required and no resource opens here.
     * @see Api.request
     */
    parameter_get,
    /**
     * @brief Select one parameter mutation.
     * @details Requires explicit parameter-set authority and a complete value.
     * Timeout/disconnect may follow the effect and never authorize replay.
     * @see Api.request
     */
    parameter_set,
    /**
     * @brief Select the backend's parameter-delete operation.
     * @details Availability is checked separately and native scope rights still
     * apply. This selector performs no deletion or undeclare fallback itself.
     * @see Api.supports
     */
    parameter_delete,
    /**
     * @brief Select a permitted parameter-existence query.
     * @details A returned presence result is distinct from permission to read
     * or mutate a value. The actual response contract controls interpretation.
     * @see Api.request
     */
    parameter_exists,
    /**
     * @brief Select a bounded parameter-list query.
     * @details Prefix/scope/count/output quotas remain fixed by the operation
     * and grant; no ambient ROS discovery or unbounded enumeration is added.
     * @see Api.request
     */
    parameter_list,
    /**
     * @brief Select the backend's explicit parameter-search query.
     * @details Backend availability and scope rights are independent checks;
     * no cross-scope search or value-read authority is inferred by this value.
     * @see Api.supports
     */
    parameter_search,
    /**
     * @brief Select granted topic-graph inspection.
     * @details Graph visibility is bounded by the Host grant. A graph result
     * supplies no right to publish, subscribe or create endpoints.
     * @see Api.request
     */
    graph_inspect_topic,
    /**
     * @brief Select granted node-graph inspection.
     * @details Uses the complete bounded graph response contract; it neither
     * discovers ambient authority nor creates a native node for the caller.
     * @see Api.request
     */
    graph_inspect_node,
    /**
     * @brief Select granted service-graph inspection.
     * @details Service metadata/visibility does not grant call/respond rights
     * or prove that a later native operation will be available.
     * @see Api.request
     */
    graph_inspect_service,
    /**
     * @brief Select a bounded granted topic-list graph query.
     * @details Complete output, count and scope limits remain explicit; listing
     * a topic does not authorize use or install any native type support.
     * @see Api.request
     */
    graph_list_topics,
    /**
     * @brief Select a bounded granted node-list graph query.
     * @details This selector performs no query itself and supplies no discovery,
     * node-creation or resource-retirement authority.
     * @see Api.request
     */
    graph_list_nodes,
    /**
     * @brief Select a bounded granted service-list graph query.
     * @details Names/metadata remain copied observations, not endpoint handles
     * or callable service permissions. Native availability can change later.
     * @see Api.request
     */
    graph_list_services,
    /**
     * @brief Select the granted ROS-clock read operation.
     * @details Time domain/epoch and canonical response remain operation-defined;
     * no wall/system/steady-clock fallback or WASI clock permission is inferred.
     * @see Api.request
     */
    time_read_ros,
    /**
     * @brief Select the backend's granted wall-clock read operation.
     * @details Backend availability is explicit. The value creates no WASI
     * clock grant and does not convert or substitute another time domain.
     * @see Api.supports
     */
    time_read_wall,
    /**
     * @brief Select bounded parameter-description metadata retrieval.
     * @details Metadata visibility requires the configured grant. A descriptor
     * neither declares the parameter nor authorizes a value change.
     * @see Api.request
     */
    parameter_describe,
    /**
     * @brief Select explicit parameter declaration where supported.
     * @details Requires native declaration authority and complete canonical
     * input. There is no implicit set fallback, replay or availability promise.
     * @see Api.supports
     */
    parameter_declare,
    /**
     * @brief Select explicit parameter undeclaration where supported.
     * @details Grant scope/lifetime rules remain native. This mutating selector
     * does not imply parameter-delete compatibility or safe timeout replay.
     * @see Api.supports
     */
    parameter_undeclare,
    /**
     * @brief Select granted action-graph inspection.
     * @details Action metadata/visibility supplies no goal, server-response or
     * cancellation rights. Complete bounded decoding remains separate.
     * @see Api.request
     */
    graph_inspect_action,
    /**
     * @brief Select a granted lifecycle-state query.
     * @details Readability does not grant transition authority or establish that
     * a returned state will still hold for a later separate operation.
     * @see Api.request
     */
    lifecycle_get_state,
    /**
     * @brief Select one explicitly granted lifecycle transition request.
     * @details Native transition validity and mutation rights are independent
     * checks. Admission/error/timeout does not authorize an automatic replay.
     * @see Api.request
     */
    lifecycle_change_state,
    /**
     * @brief Select the backend's granted system-clock read operation.
     * @details Preserves its native canonical time domain; no ROS/steady clock
     * substitution or WASI clock permission follows from this selector.
     * @see Api.request
     */
    time_read_system,
    /**
     * @brief Select the backend's granted steady-clock read operation.
     * @details Epoch/domain are not rewritten into wall time. Availability and
     * permission remain explicit; selecting this value reads no clock itself.
     * @see Api.supports
     */
    time_read_steady,
    /**
     * @brief Select explicit parameter-event subscription admission.
     * @details Requires the actual supported backend/source grant. No callback,
     * local executor, implicit observer or parameter-read authority is created.
     * @see Api.parameterEvents
     */
    parameter_subscribe_events,
}

/**
 * @brief Define the synchronous raw dispatch surface for actual NativeApi views.
 * @details Choose ros1/roswasm or ros2/roswasm for real imports. This unavailable
 * base returns0/false for version/support and95 for every operation, ignoring
 * arguments without dereferencing memory or acquiring resources. Overrides use
 * exact u64 Instance-owned IDs and explicit memory-index/byte-offset forms.
 * Convenience wrappers select memory0; raw views retain explicit memory indices.
 * No background thread, callback, retry, native ROS emulation or grant is added.
 * Keep borrowed inputs stable during the synchronous call. Raw close/revoke
 * calls do not supply higher-level ownership witnesses or callback leases.
 * @see Api.version
 */
export class Api
{
    /**
     * @brief Store an explicit local backend selector without native acquisition.
     * @details Base construction stores any u32 without validation. NativeApi
     * constructors select1/2; this value is distinct from the imported ABI version.
     * No ownership, native registry or permission is created. Allocation may trap.
     * @param backend [in] Local selector; use1 for ROS1 or2 for ROS2.
     * @see Api.version
     */
    constructor(
        /**
         * @brief Retain the selected local ROS backend number.
         * @details Public mutable u32 by language syntax, read-only by contract.
         * Modifying it does not change the compiled import namespace or grant.
         * @see Api.version
         */
        public backend: u32)
    {
    }

    /**
     * @brief Query the imported ABI version through the selected implementation.
     * @details The unavailable base performs no import and returns0. A real
     * view queries its actual backend; version1 compatibility still proves no
     * granted alias, native type agreement or ROS availability. No resource opens.
     * @return u32 ABI version;0 for this unavailable base.
     * @see Api.supports
     */
    version(): u32
    {
        return 0;
    }

    /**
     * @brief Check whether the selected implementation exposes a request selector.
     * @details The base always returnsfalse without I/O. A real view reports
     * registered operation availability, not endpoint grants or native success.
     * Check before acquisition; never use this result as permission to invoke.
     * @param operation [in] Local Operation selector; not a native numeric ID.
     * @return bool Availability only; alwaysfalse in the unavailable base.
     * @see Api.request
     */
    supports(operation: Operation): bool
    {
        return false;
    }

    /**
     * @brief Attempt an explicitly granted alias open using a raw copied-buffer form.
     * @details Real views borrow the alias bytes and write a successful u64
     * handle to slot. Successful ownership requires explicit close/revoke in
     * the original Instance. Prefer Session for rooting and retirement witnesses.
     * This base ignores all arguments and writes nothing; no fallback or retry.
     * @param memory [in] Explicit Guest memory index for every offset/slot.
     * @param offset [in] Byte offset of the complete UTF-8 alias, without NUL.
     * @param length [in] Alias byte length; actual import requires1..255.
     * @param slot [out] Byte offset of a writable eight-byte LE handle slot.
     * @return u32 Numeric status;95 in this base. Only a valid success owns a handle.
     * @see Api.close
     */
    open(memory: u32, offset: u64, length: u64, slot: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Attempt one raw retirement of original Instance-owned capability.
     * @details A real entered close must not be replayed after unknown outcome,
     * timeout or disconnect. Raw API provides no local witness/lease protection;
     * use the capability layer for that. Base returns95 without effect.
     * @param handle [in] Exact nonzero u64 handle owned by this Instance/backend.
     * @return u32 Original status,95 in this base; errors do not prove a live ID.
     * @see Api.revoke
     */
    close(handle: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Attempt explicit revocation using existing Runtime authority.
     * @details Requires the original revocation grant; copying a handle creates
     * no authority. Raw callers must retire affected local ownership and avoid
     * replay after entry/unknown outcome. Base returns95 with no effect.
     * @param handle [in] Exact Instance/backend-owned u64 capability handle.
     * @return u32 Native status,95 here; not proof of a physical device stop.
     * @see Api.close
     */
    revoke(handle: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Attempt one complete canonical message copy through topic.publish.
     * @details Actual type/topic/QoS/quota/deadline rights are fixed by the
     * grant. Success is the import's outcome, not independent native delivery
     * evidence. Input is borrowed synchronously; base performs no read/effect.
     * @param handle [in] Exact owned topic.publish capability.
     * @param memory [in] Explicit Guest memory index.
     * @param offset [in] Byte offset of complete canonical message bytes.
     * @param length [in] Complete byte length subject to ABI/type/endpoint bounds.
     * @return u32 Original status;95 in this base. No automatic retry occurs.
     * @see Api.subscribe
     */
    publish(handle: u64, memory: u32, offset: u64, length: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     *@brief Attempt explicit subscription admission through its owned grant.
     * @details A real view starts the configured subscription; no callback is
     * scheduled by this wrapper. Polling/dispatch remain explicit. Base returns
     *95 and opens nothing; repeated calls are not a recovery policy.
     * @param handle [in] Original Instance/backend-owned subscription capability.
     * @return u32 Numeric status;95 for the unavailable base.
     * @see Api.poll
     */
    subscribe(handle: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Poll one copied canonical payload through explicit raw output storage.
     * @details Performs at most one import in real views and never invokes
     * native callbacks. Check status and the operation-specific written length
     * before reading bytes; raw length slots are not optional-sentinel wrappers.
     * Base ignores all arguments and writes nothing. No retry or grant is added.
     * @param handle [in] Original owned poll-capable resource handle.
     * @param memory [in] Explicit output/length-slot memory index.
     * @param offset [out] Byte offset of writable payload storage.
     * @param capacity [in] Output capacity in bytes; native bounds still apply.
     * @param slot [out] Byte offset of an eight-byte LE output-length slot.
     * @return u32 Original status,95 here; empty/Again is distinct from success.
     * @see Api.pollEventV1
     */
    poll(handle: u64, memory: u32, offset: u64, capacity: u64, slot: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Bind an already owned observer/source pair for unified events.
     * @details Actual view checks same-Instance handles and granted event/source
     * rights. No alias, resource or permission is inferred. Base returns95
     * without binding anything; callbacks/polling remain explicit.
     * @param observer [in] Exact u64 owned observer handle.
     * @param source [in] Exact u64 owned source handle in the same Instance.
     * @param correlation [in] Exact u64 operation correlation;0 where allowed.
     * @return u32 Original status;95 in this unavailable base.
     * @see Api.pollEventV1
     */
    watchEvents(observer: u64, source: u64, correlation: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Poll one complete unified-event v1 envelope into explicit storage.
     * @details A real capacity failure90 retains the queued event according to
     * this dedicated ABI contract; other operations do not inherit that replay
     * rule. Inspect status/written length before decoding. Base writes nothing.
     * @param observer [in] Exact original Instance-owned observer handle.
     * @param memory [in] Explicit output and length-slot memory index.
     * @param output [out] Byte offset of complete envelope storage.
     * @param capacity [in] Complete byte capacity including the64-byte header.
     * @param slot [out] Writable eight-byte LE length/required-size slot.
     * @return u32 Native outcome,95 here; no implicit poll retry or callback.
     * @see Api.eventReady
     */
    pollEventV1(observer: u64, memory: u32, output: u64, capacity: u64, slot: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Observe bounded unified-event readiness without reserving credit.
     * @details Real views write the dedicated32-byte readiness structure.
     * Another operation can change readiness before submission; this is no
     * admission promise or quota reservation. Base ignores storage and writes nothing.
     * @param observer [in] Exact owned u64 observer handle.
     * @param memory [in] Explicit Guest memory index.
     * @param output [out] Byte offset of32 writable readiness bytes.
     * @return u32 Status,95 here. No ROS source/resource is implicitly acquired.
     * @see Api.submitService
     */
    eventReady(observer: u64, memory: u32, output: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Submit one service request to an explicitly bound observer.
     * @details Real success acknowledges admission, not the final service
     * response. Correlation/lifetime are checked through subsequent events.
     * Never replay107/110 or infer no effect from an exception/trap. Base ignores
     * all arguments and writes nothing. No background callback is scheduled.
     * @param source [in] Exact owned service source handle in this Instance.
     * @param observer [in] Exact owned observer from the same Instance.
     * @param memory [in] Explicit request/correlation-slot memory index.
     * @param input [in] Byte offset of the complete canonical request.
     * @param length [in] Complete request bytes within ABI/type/endpoint bounds.
     * @param slot [out] Writable eight-byte LE admitted request-ID slot.
     * @return u32 Admission status,95 in this unavailable base.
     * @see Api.pollEventV1
     */
    submitService(source: u64, observer: u64, memory: u32, input: u64, length: u64, slot: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Attempt advertisement of one explicitly configured service.
     * @details Native endpoint/type/QoS rights remain grant-controlled. This
     * wrapper does not start an executor or invoke a handler; base returns95.
     * @param handle [in] Exact original Instance-owned service-advertise handle.
     * @return u32 Original status;95 in this base. No implicit retry occurs.
     * @see Api.request
     */
    advertiseService(handle: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Attempt explicit ROS2 parameter-event subscription admission.
     * @details Unsupported for ROS1 and this unavailable base. A real ROS2 view
     * requires its configured grant; it starts no local callback/executor.
     * @param handle [in] Exact owned parameter-event source handle.
     * @return u32 Original status;95 for an unavailable implementation.
     * @see Api.poll
     */
    parameterEvents(handle: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     * @brief Attempt one bounded canonical log write through existing authority.
     * @details Actual wire is the canonical length-prefixed text profile, not
     * a C NUL-terminated pointer. Native severity/endpoint/quota restrictions
     * remain in the grant. Base neither reads bytes nor emits a log.
     * @param handle [in] Exact owned log.write capability.
     * @param memory [in] Explicit Guest memory index.
     * @param offset [in] Byte offset of complete canonical log bytes.
     * @param length [in] Complete encoded byte length, including length prefix.
     * @return u32 Original status,95 here; no retry, clock or permission change.
     * @see Api.publish
     */
    log(handle: u64, memory: u32, offset: u64, length: u64): u32
    {
        return Status.Unsupported;
    }

    /**
     *@brief Dispatch one exact operation using complete borrowed/copied buffers.
     * @details Actual NativeApi maps the local selector to its registered ABI
     * import. Every operation's input/output and consumption rules remain
     * distinct: status90 alone does not authorize replay of a consumed effect.
     *107/110 may follow admission. Base ignores every argument, returns95 and
     * writes nothing. No callback, retry, thread, fallback or grant is added.
     * @param operation [in] Local Operation selector supported by this backend.
     * @param handle [in] Original Instance/backend-owned u64 operation handle.
     * @param memory [in] Explicit request/output/length-slot Guest memory index.
     * @param input [in] Byte offset of complete canonical request storage.
     * @param length [in] Complete request byte length within its actual schema/quota.
     * @param output [out] Byte offset of writable canonical response storage.
     * @param capacity [in] Response capacity in bytes; no queue credit is reserved.
     * @param slot [out] Byte offset of writable eight-byte LE response length.
     * @return u32 Original status,95 here; inspect valid output only on its
     * operation-specific success/capacity contract. Raw storage remains caller-owned.
     * @see Api.supports
     */
    request(operation: Operation, handle: u64, memory: u32, input: u64, length: u64, output: u64, capacity: u64, slot: u64): u32
    {
        return Status.Unsupported;
    }
}

/**
 * @brief Trap locally as the explicit standalone AssemblyScript abort override.
 * @details Compile with --use abort=<entry-module>/abortGuest after reexporting
 * this symbol. Always executes unreachable; does not dereference supplied string
 * pointers, emit a ROS log or perform cleanup. A terminal trap requires outer
 * Instance teardown and is not an ordinary recoverable SDK status.
 * @param message [in] AssemblyScript message pointer, ignored by this override.
 * @param fileName [in] AssemblyScript source-file string pointer, ignored.
 * @param line [in] Compiler-supplied source line number, ignored.
 * @param column [in] Compiler-supplied source column number, ignored.
 * @return Never returns; no thread, clock, resource or permission is created.
 * @see Status
 */
export function abortGuest(message: usize, fileName: usize, line: u32, column: u32): void
{
    unreachable();
}
