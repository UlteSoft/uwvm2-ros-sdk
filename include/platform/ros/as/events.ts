/**
 * @brief Identify a copied unified event v1 payload or resource transition.
 * @details The 64-byte header uses unaligned little-endian fields. A kind
 * describes a copied record; it neither grants an operation nor selects the
 * source's native type. Decode the body with that source's admitted codec.
 * @see decodeUnifiedEvent
 */
export enum EventKind {
    /**
     * @brief Identify a copied topic message.
     * @details Correlation is zero. Flags are zero or 8 for a parameter-event
     * projection; the body retains the source's canonical message encoding.
     * @see UnifiedEvent.body
     */
    TopicMessage = 1,
    /**
     * @brief Identify an incoming copied service request.
     * @details The nonzero correlation is repeated in the first eight body
     * bytes. Flag 4 distinguishes an incoming Action request where admitted.
     * @see UnifiedEvent.correlation
     */
    ServiceRequest = 2,
    /**
     * @brief Identify a copied service response.
     * @details Correlation is nonzero and flags are zero. The complete body
     * remains in its source codec; this enum does not decode response fields.
     * @see UnifiedEvent.body
     */
    ServiceResponse = 3,
    /**
     * @brief Identify copied Action feedback for one correlation.
     * @details Flags are zero and the first eight body bytes repeat the
     * nonzero correlation. Delivery conveys no cancellation authority.
     * @see UnifiedEvent.correlation
     */
    ActionFeedback = 4,
    /**
     * @brief Identify a copied Action result for one correlation.
     * @details Flags are zero and the first eight body bytes repeat the
     * nonzero correlation. Decode the remaining result with its exact codec.
     * @see UnifiedEvent.body
     */
    ActionResult = 5,
    /**
     * @brief Identify nonzero resource-error metadata with an empty body.
     * @details Only retirement and external-effect flag bits 1 and 2 are
     * allowed. Inspect both flags and error before deciding how to retire.
     * @see UnifiedEvent.error
     */
    ResourceError = 6,
    /**
     * @brief Identify resource-closure metadata with the retired bit set.
     * @details The body is empty and only flag bits 1 and 2 are allowed.
     * Closure does not prove that previously admitted external effects ended.
     * @see UnifiedEvent.flags
     */
    ResourceClosed = 7
}

/**
 * @brief Hold one owning copy of a validated unified event record.
 * @details IDs remain u64 without wasm32 narrowing. Direct construction only
 * supplies local defaults, including invalid zero identity fields; use the
 * decoder for validation. Public fields are mutable local values, not grants.
 * @see decodeUnifiedEvent
 */
export class UnifiedEvent
{
    /**
     * @brief Store the decoded event discriminator.
     * @details Values 1 through 7 select metadata/body validation rules.
     * Changing this field does not change the body's source codec.
     * @see EventKind
     */
    kind: EventKind = EventKind.TopicMessage;
    /**
     * @brief Store the source ROS backend selector.
     * @details Validated records carry 1 for ROS1 or 2 for ROS2. The local
     * default zero is not a valid decoded backend or an ABI version.
     * @see EventBinding
     */
    backend: u8 = 0;
    /**
     * @brief Retain the validated kind-dependent event flags.
     * @details Bit 1 means retired, 2 means admitted external effects may
     * remain, 4 marks an incoming Action and 8 a parameter projection. These
     * are bit values, not bit positions; allowed combinations depend on kind.
     * @see decodeUnifiedEvent
     */
    flags: u8 = 0;
    /**
     * @brief Store the resource status carried by metadata events.
     * @details Ordinary payload events require zero; ResourceError requires
     * nonzero. ResourceClosed may retain a status and always has an empty body.
     * @see EventKind.ResourceError
     */
    error: u32 = 0;
    /**
     * @brief Retain the nonzero opaque source identity.
     * @details This u64 belongs to the producing Instance/session. It is not
     * a Guest memory address and copying it creates no native ownership.
     * @see EventBinding
     */
    source: u64 = 0;
    /**
     * @brief Retain the operation correlation without narrowing.
     * @details Topic messages require zero; service and Action payloads
     * require nonzero. Resource metadata can be uncorrelated.
     * @see EventBinding.decode
     */
    correlation: u64 = 0;
    /**
     * @brief Retain the nonzero per-binding delivery sequence.
     * @details EventBinding accepts exactly the next u64 value, beginning
     * at 1, and refuses wraparound after u64.MAX_VALUE.
     * @see EventBinding.decode
     */
    sequence: u64 = 0;
    /**
     * @brief Retain the nonzero producing Instance identity.
     * @details EventBinding pins this opaque u64 on first acceptance and
     * rejects later changes. The value grants no access to another Instance.
     * @see EventBinding.decode
     */
    instance: u64 = 0;
    /**
     * @brief Retain the nonzero producing session identity.
     * @details EventBinding pins this opaque u64 on first acceptance. A
     * later session change is rejected without committing local sequence.
     * @see EventBinding.decode
     */
    session: u64 = 0;
    /**
     * @brief Own the complete copied canonical event body.
     * @details The decoder slices bytes after the 64-byte header, so input
     * mutations do not alter this array. Resource metadata has an empty body;
     * other kinds retain their source encoding and any correlation prefix.
     * @see decodeUnifiedEvent
     */
    body: Uint8Array = new Uint8Array(0);
}

/**
 * @brief Validate and copy one complete unified event v1 record.
 * @details Borrow the input only during this call. Validate magic, version,
 * reserved fields, identities, declared body extent, kind/flags/error and
 * required correlation prefixes before returning an object. This function
 * checks record structure without binding sequence or Instance/session.
 * Invalid data returns null, corresponding to Status.Invalid (22); it performs
 * no import or native effect. Allocation failure may trap.
 * @param bytes [in] Complete owning or borrowed record, 64..4194304 bytes.
 * @return UnifiedEvent|null Owning body copy, or null with no partial result.
 * @see EventBinding.decode
 */
export function decodeUnifiedEvent(bytes: Uint8Array): UnifiedEvent|null
{
    if(bytes.length < 64 || bytes.length > 4194304)
        return null;
    const p = bytes.dataStart;
    if(load<u32>(p) != 0x45525755 || load<u16>(p + 4) != 1 || load<u16>(p + 10) != 0)
        return null;
    const kind = load<u16>(p + 6), backend = load<u8>(p + 8), flags = load<u8>(p + 9), error = load<u32>(p + 12);
    const source = load<u64>(p + 16), correlation = load<u64>(p + 24), sequence = load<u64>(p + 32), instance = load<u64>(p + 40), session = load<u64>(p + 48),
          length = load<u64>(p + 56);
    if(kind < 1 || kind > 7 || backend < 1 || backend > 2 || !source || !sequence || !instance || !session || length != <u64>(bytes.length - 64))
        return null;
    if(kind >= 6)
    {
        if(length || (flags & ~< u8 > 3) || (kind == 6 && !error) || (kind == 7 && !(flags & 1)))
            return null;
    }
    else
    {
        if(error)
            return null;
        if(kind == 1)
        {
            if(correlation || (flags != 0 && flags != 8))
                return null;
        }
        else if(!correlation || (kind == 2 ? (flags != 0 && flags != 4) : flags != 0))
            return null;
        if((kind == 2 || kind == 4 || kind == 5) && (length < 8 || load<u64>(p + 64) != correlation))
            return null;
    }
    const result = new UnifiedEvent();
    result.kind = <EventKind>kind;
    result.backend = backend;
    result.flags = flags;
    result.error = error;
    result.source = source;
    result.correlation = correlation;
    result.sequence = sequence;
    result.instance = instance;
    result.session = session;
    result.body = bytes.slice(64);
    return result;
}

/**
 * @brief Hold a copied snapshot of event and admission capacity.
 * @details All four counters retain u64 width. They describe one observation,
 * create no reservation, and may be stale before the next operation. Local
 * construction initializes zero counters without querying native state.
 * @see decodeEventReadiness
 */
export class EventReadiness
{
    /**
     * @brief Count records currently ready at the observed source.
     * @details This u64 is a snapshot, not a guarantee that a later poll
     * succeeds or that this Guest has permission to perform that poll.
     * @see EventReadiness.nextEventBytes
     */
    readyEvents: u64 = 0;
    /**
     * @brief Report the next record's complete copied byte extent.
     * @details Preserve the u64 value when checking Guest allocation limits.
     * Zero may accompany an empty queue; this field reserves no output buffer.
     * @see EventReadiness.readyEvents
     */
    nextEventBytes: u64 = 0;
    /**
     * @brief Report currently available admission slots.
     * @details This capacity is observed independently of Guest ownership and
     * operation grants. A later request must still pass native admission.
     * @see EventReadiness.admissionBytes
     */
    admissionSlots: u64 = 0;
    /**
     * @brief Report currently available admission bytes.
     * @details The full-width byte count is advisory capacity, not a memory
     * pointer, preallocation, reservation or permission for external effects.
     * @see EventReadiness.admissionSlots
     */
    admissionBytes: u64 = 0;
}

/**
 * @brief Decode the four full-width event-readiness counters.
 * @details Require exactly 32 bytes and read four unaligned little-endian
 * u64 values without narrowing or imposing semantic relationships between
 * them. Copy values into a new object; no input reference or native resource
 * is retained. Allocation may trap; no host import is performed.
 * @param bytes [in] Complete 32-byte readiness payload.
 * @return EventReadiness|null Copied counters, or null for a different extent.
 * @see EventReadiness
 */
export function decodeEventReadiness(bytes: Uint8Array): EventReadiness|null
{
    if(bytes.length != 32)
        return null;
    const result = new EventReadiness(), p = bytes.dataStart;
    result.readyEvents = load<u64>(p);
    result.nextEventBytes = load<u64>(p + 8);
    result.admissionSlots = load<u64>(p + 16);
    result.admissionBytes = load<u64>(p + 24);
    return result;
}

/**
 * @brief Bind copied events to one source, backend and optional correlation.
 * @details This local state imports no ROS operation and owns no native
 * handle. Structural or identity failure preserves state. Acceptance commits
 * sequence and first Instance/session before the caller dispatches a callback,
 * so a later callback error cannot replay an accepted record through this object.
 * @see EventBinding.decode
 */
export class EventBinding
{
    private sequence: u64 = 0;
    private instance: u64 = 0;
    private session: u64 = 0;
    /**
     * @brief Report whether the initial backend/source pair was admissible.
     * @details Construction sets false for a backend outside 1/2 or source
     * zero. Public mutation cannot change the private selected identities and
     * is outside the contract; false makes decode return null without imports.
     * @see EventBinding.constructor
     */
    valid: bool;

    /**
     * @brief Initialize a local source binding without opening a resource.
     * @details Sequence starts at zero and identities bind on first accepted
     * event. Invalid backend/source sets valid=false without throwing or making
     * an import. Allocation failure may trap; no native cleanup is needed.
     * @param backend [in] Exact selector 1 for ROS1 or 2 for ROS2.
     * @param source [in] Nonzero opaque u64 source identity.
     * @param correlation [in] Zero to accept any correlation; otherwise match
     * nonzero incoming correlations while allowing uncorrelated metadata.
     * @see EventBinding.valid
     */
    constructor(private backend: u32, private source: u64, private correlation: u64 = 0)
    {
        this.valid = (backend == 1 || backend == 2) && source != 0;
    }

    /**
     * @brief Accept the next structurally valid event for this local binding.
     * @details Require the selected backend/source, sequence exactly one
     * greater than the last accepted value, and unchanged Instance/session
     * after first acceptance. A configured nonzero correlation rejects other
     * nonzero correlations but permits zero metadata correlation. Refusal
     * preserves binding state; success commits before returning the owning
     * body copy. A sequence at u64.MAX_VALUE cannot accept a successor.
     * @param bytes [in] One complete event record, borrowed during this call.
     * @return UnifiedEvent|null Accepted copied event, or null with no commit.
     * @see decodeUnifiedEvent
     */
    decode(bytes: Uint8Array): UnifiedEvent|null
    {
        if(!this.valid)
            return null;
        const event = decodeUnifiedEvent(bytes);
        if(event === null)
            return null;
        if(event.backend != this.backend || event.source != this.source || this.sequence == u64.MAX_VALUE || event.sequence != this.sequence + 1 ||
           (this.instance != 0 && (event.instance != this.instance || event.session != this.session)) ||
           (this.correlation != 0 && event.correlation != 0 && event.correlation != this.correlation))
            return null;
        this.sequence = event.sequence;
        this.instance = event.instance;
        this.session = event.session;
        return event;
    }
}
