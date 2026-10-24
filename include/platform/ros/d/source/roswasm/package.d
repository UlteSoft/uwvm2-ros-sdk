module roswasm;
public import roswasm.raw;

// BetterC: no GC, Druntime, allocation, exception or finalizer dependency.
// State storage must have a stable address for every Owner borrowed from it.
@nogc nothrow:
/// @brief Inclusive original request-data ceiling, exactly 4193786 bytes.
/// @details Fits the selected 4 MiB IPC envelope; an exact schema/grant can allow
/// less. The value allocates no buffer and reserves no native operation quota.
/// @see Owner.request; Owner.publish; maximumOutput
enum uint maximumRequest = 4_193_786;
/// @brief Inclusive checked caller-output ceiling, exactly 4194304 bytes.
/// @details Providing that capacity grants no event, admission slot or ROS right.
/// @see Owner.request; Owner.poll; maximumRequest
enum uint maximumOutput = 4_194_304;
/// @brief Caller-owned stable private state for one original owner generation.
/// @details Initialize State.init at its final address before open. Do not copy,
/// move or reset a cell after an Owner/Session/Executor view borrows its address.
/// A successfully spent cell remains spent after retirement; there is no finalizer.
/// @see Owner; open; Session
struct State {
     private ulong handle;
     private bool busy, spent;
}
/// @brief Original checked status and optional borrowed successful output prefix.
/// @details Inspect code before any other field. Direct construction is local
/// data only; it authenticates no Host observation, owner or operation authority.
/// @see Owner.request; Owner.poll; Result
struct Result {
    /// @brief Original unsigned status; 0 means success for a checked call.
    /// @details Nonzero preserves the original local/Host refusal. Invalid
    /// successful output length becomes 22; unknown future codes remain representable.
    /// @see Owner.request; Owner.poll
    uint code;
    /// @brief Initialized successful prefix, meaningful only when code == 0.
    /// @details Borrows caller output. Retain its allocation unchanged while
    /// this slice or any decoded borrowed field is used.
    /// @see Owner.request; Owner.poll; roswasm.wire.Reader
    const(ubyte)[] data;
    /// @brief Whether status 90 actually overwrote the all-ones length sentinel.
    /// @details False means required does not describe an established byte extent.
    /// @see Result.required; Owner.request
    bool hasRequired;
    /// @brief Original observed required bytes, valid only with hasRequired.
    /// @details Advisory capacity information grants neither storage nor a safe
    /// retry after possible legacy consumption or an uncertain native effect.
    /// @see Result.hasRequired; Owner.poll
    ulong required;
}
/// @brief Original status and all four unsigned readiness snapshot words.
/// @details Only code 0 from ready establishes an actual observation; public
/// construction/default zero fields do not establish idle state or reserve work.
/// @see Owner.ready; Owner.watch; Owner.submit
struct Readiness {
    /// @brief Actual readiness-call status; ignore the four words on nonzero.
    /// @details Busy/stale/refusal is distinct from a successful snapshot of zero events.
    /// @see Owner.ready; Readiness.events
    uint code;
    /// @brief Current ready event-record count from a successful snapshot.
    /// @details Zero is an idle observation, not retirement or cancellation.
    /// @see Owner.ready; Owner.poll
    ulong events;
    /// @brief Complete observed next-event bytes, including its versioned envelope.
    /// @details Later polling performs independent state, capacity and quota checks.
    /// @see Owner.poll; Readiness.events
    ulong nextBytes;
    /// @brief Currently observed asynchronous admission-slot budget.
    /// @details This snapshot reserves no later Service submission slot.
    /// @see Owner.submit; Readiness.admissionBytes
    ulong admissionSlots;
    /// @brief Currently observed asynchronous admission-byte budget.
    /// @details Exact selected schema/alias limits may require a smaller payload.
    /// @see Owner.submit; Readiness.admissionSlots
    ulong admissionBytes;
}
/// @brief Original asynchronous submission status and exact admitted ID.
/// @details Admission is distinct from any actual response, feedback or terminal
/// completion. An ordinary local struct value grants no native authority.
/// @see Owner.submit; Owner.poll; Owner.watch
struct Submission {
    /// @brief Original unsigned status; inspect id only after code 0.
    /// @details A zero ID on successful raw output becomes 22; other refusals stay original.
    /// @see Owner.submit; Submission.id
    uint code;
    /// @brief Actual nonzero admitted u64 ID, meaningful only for checked code 0.
    /// @details Never narrow, synthesize, transfer between Instances or interpret
    /// it as a completed response or bearer permission.
    /// @see Owner.submit; Owner.poll
    ulong id;
}
private ulong offset(const(ubyte)[] b) {
     return b.length ? cast(ulong)b.ptr : 0;
}
private ulong word(const(ubyte)[] b, size_t at) {
    ulong n; foreach (i; 0..8) n |= cast(ulong)b[at+i] << (8*i); return n;
}

// Strict UTF-8 without Druntime. Bounds include scalar overlong/surrogate cases.
/// @brief Validate complete UTF-8 without allocation, replacement or normalization.
/// @details Checks continuation, overlong, surrogate and scalar-range constraints.
/// Performs no Host call or native identity/permission lookup.
/// @param[in] b Complete immutable readable bytes, including a valid empty slice.
/// @param[in] rejectNul True additionally rejects embedded 0; false permits it.
/// @return True only for complete UTF-8 satisfying the explicit NUL policy.
/// @see open; roswasm.wire.Writer.text; roswasm.wire.Reader.text
bool validUtf8(const(ubyte)[] b, bool rejectNul = false) {
    size_t at;
    while (at < b.length) {
        auto first = b[at++];
        if (first < 0x80) {
             if (rejectNul && first == 0) return false;
             continue;
        }
        uint remaining; uint value; uint minimum;
        if (first >= 0xc2 && first <= 0xdf) {
             remaining=1;
             value=first&31;
             minimum=0x80;
        }
        else if (first >= 0xe0 && first <= 0xef) {
             remaining=2;
             value=first&15;
             minimum=0x800;
        }
        else if (first >= 0xf0 && first <= 0xf4) {
             remaining=3;
             value=first&7;
             minimum=0x10000;
        }
        else return false;
        if (remaining > b.length-at) return false;
        foreach (i; 0..remaining) {
             auto c=b[at++];
             if ((c&0xc0)!=0x80) return false;
             value=(value<<6)|(c&63);
        }
        if (value<minimum || value>0x10ffff || (value>=0xd800 && value<=0xdfff)) return false;
    }
    return true;
}

private Result finish(uint code, const(ubyte)[] slot, ubyte[] output) {
    auto n=word(slot,0);
    if (code==0 && n<=output.length) return Result(0,output[0..cast(size_t)n]);
    output[]=0;
    return Result(code==0 ? 22 : code, null, code==90 && n!=ulong.max,n);
}

/// @brief Borrowed value view of one private stable State cell and generation.
/// @details Copies share retirement and a nonblocking local operation/callback
/// lease. Keep backing State at its final address through every view and cleanup.
/// BetterC supplies no GC, Druntime, finalizer, hidden allocator or native executor.
/// Use one admitted Guest thread; allocation/assert/trap failures promise no cleanup.
/// @permissions Every original alias/operation/type/direction/quota/deadline is
/// independently granted by the current Host. SDK selection grants none.
/// @see open; Owner.close; Owner.revoke; Session
struct Owner {
    private State* state;
    private uint acquire(out ulong h) {
        if (state is null) return 9;
        if (state.busy) return 17;
        if (!state.spent || state.handle==0) return 9;
        state.busy=true; h=state.handle; return 0;
    }
    /// @brief Run one caller Guest function while holding this owner's local lease.
    /// @details No native thread enters D. Reentrant use/close/revoke of this same
    /// cell refuses before mutation. Ordinary return releases the lease; traps
    /// and invalid caller pointers provide no recoverable-cleanup guarantee.
    /// @param[in] data Complete stable callback bytes; any retained borrowed view
    /// remains subject to its caller buffer's lifetime and next write.
    /// @param[in] callback Non-null @nogc nothrow Guest function retained through return.
    /// @param[in] context Exact caller-owned Guest context, possibly null if valid
    /// for callback; retain its concrete allocation/type through the call.
    /// @return Original callback status, nil callback 22, busy 17 or stale 9.
    /// @permissions None added; operations inside the handler need their own grants.
    /// @see roswasm.typed.Callback; roswasm.typed.Executor; Owner.close
    uint dispatchCallback(const(ubyte)[] data, uint function(const(ubyte)[],void*) @nogc nothrow callback, void* context=null) {
        if(callback is null) return 22;
        ulong h;auto c=acquire(h);if(c) return c;
        scope(exit) state.busy=false;
        return callback(data,context);
    }
    /// @brief Permanently retire shared local state before one actual raw close.
    /// @details Every copy becomes stale before the Host result is known. A
    /// refusal cannot restore the old handle or make cleanup replay-safe.
    /// @return Original unsigned close status, busy 17 or stale 9; 0 is actual success.
    /// @see Owner.revoke; Session.close; State
    uint close() {
         return retire(false);
    }
    /// @brief Permanently retire this original generation and explicitly revoke it.
    /// @details Never reopens/regrants the alias or resets the spent caller cell.
    /// @return Original unsigned revoke status, busy 17 or stale 9.
    /// @see Owner.close; Session.close; State
    uint revoke() {
         return retire(true);
    }
    private uint retire(bool revokeAlias) {
        ulong h; auto c=acquire(h); if (c) return c;
        scope(exit) state.busy=false;
        state.handle=0;
        return revokeAlias ? raw_capability_revoke(h) : raw_capability_close(h);
    }
    /// @brief Publish one complete canonical message through this exact owner.
    /// @details Borrows immutable bytes and the owner lease through one synchronous
    /// raw call. No native type, alias or policy is inferred from a byte slice.
    /// @param[in] data Complete selected original message, at most maximumRequest bytes.
    /// @return Original unsigned status or local size 90, busy 17 or stale 9.
    /// An uncertain native effect is never automatically replayed.
    /// @permissions Exact publisher/type/direction/quota/deadline grant.
    /// @see Owner.request; roswasm.typed.publishValue; Owner.close
    uint publish(const(ubyte)[] data) {
         return write(data,false);
    }
    /// @brief Write the exact canonical log record through its independent grant.
    /// @details Does not select a logger, change severity policy or convert
    /// arbitrary display text into the trusted configured canonical schema.
    /// @param[in] data Complete stable log body, at most maximumRequest bytes.
    /// @return Original unsigned log status or local size 90/busy 17/stale 9.
    /// @permissions Exact log alias/schema/direction/quota/deadline grant.
    /// @see Owner.publish; Owner.request; validUtf8
    uint log(const(ubyte)[] data) {
         return write(data,true);
    }
    private uint write(const(ubyte)[] b, bool logging) {
        if (b.length>maximumRequest) return 90;
        ulong h; auto c=acquire(h); if(c) return c;
        scope(exit) state.busy=false;
        return logging ? raw_log_write(h,0,offset(b),b.length) : raw_topic_publish(h,0,offset(b),b.length);
    }
    /// @brief Activate the original subscription through its existing exact owner.
    /// @details Creates no default native context, observer, callback or executor.
    /// Poll actual admitted events explicitly on the caller thread.
    /// @return Original unsigned subscription status, busy 17 or stale 9.
    /// @permissions Exact subscription/type/delivery/quota/deadline grant.
    /// @see Owner.poll; Owner.watch; Owner.close
    uint subscribe() {
        ulong h; auto c=acquire(h); if(c) return c;
        scope(exit) state.busy=false; return raw_topic_subscribe(h);
    }
    /// @brief Activate the original business-ABI Service server with no payload.
    /// @details Selects no new alias, type or Node. Responses need an independent
    /// grant; original-control owned raw12 remains a distinct required transport.
    /// @return Original unsigned activation status, busy 17 or stale 9.
    /// @permissions Exact advertise/type/native-QoS grant; no response right is added.
    /// @see Owner.poll; roswasm.typed.pollIncoming; roswasm.typed.respondValue
    uint advertiseService() {
        ulong h; auto c=acquire(h); if(c) return c;
        scope(exit) state.busy=false; return raw_service_advertise(h);
    }
    /// @brief Activate the separately granted original parameter-event subscription.
    /// @details Creates no parameter store, mutation permission, native Node or observer.
    /// @return Original unsigned activation status, busy 17 or stale 9.
    /// @permissions Exact event alias/schema/delivery/quota/deadline grant.
    /// @see Owner.poll; Owner.watch; Owner.ready
    uint subscribeParameterEvents() {
        ulong h; auto c=acquire(h); if(c) return c;
        scope(exit) state.busy=false; return raw_parameter_subscribe_events(h);
    }
    /// @brief Execute one selected original RPC with bounded disjoint caller buffers.
    /// @details Holds the local lease and live memory-zero borrows through one
    /// synchronous raw call. Length starts at ulong.max; only successful observed
    /// in-capacity bytes are exposed. No automatic retry or output allocation occurs.
    /// @param[in] op Exact closed selector from this generated private bridge.
    /// @param[in] input Complete stable canonical request, at most maximumRequest bytes.
    /// @param[out] output Exclusive stable writable output, at most maximumOutput
    /// bytes, disjoint from nonempty input; retain it for successful borrowed values.
    /// @return Original checked Result, local size 90/overlap 22/busy 17/stale 9 or
    /// invalid successful length 22. Only status 90 with an overwritten length slot
    /// establishes required bytes. Preflight errors leave output untouched; actual
    /// raw-call failures quarantine it. Capacity/timeout/consumption never makes replay safe.
    /// @permissions Exact operation/alias/type/direction/quota/deadline grant.
    /// @see Result; Owner.poll; RPC
    Result request(RPC op, const(ubyte)[] input, ubyte[] output) {
        if(input.length>maximumRequest || output.length>maximumOutput) return Result(90);
        if(input.length && output.length && offset(input)<offset(output)+output.length && offset(output)<offset(input)+input.length) return Result(22);
        ulong h; auto c=acquire(h); if(c) return Result(c);
        scope(exit) state.busy=false;
        ubyte[8] slot=255;
        auto code=rawRequest(op,h,offset(input),input.length,offset(output),output.length,offset(slot));
        return finish(code,slot,output);
    }
    /// @brief Poll one actual legacy or versioned event into caller-owned storage.
    /// @details Checks the original length sentinel before exposing a borrowed
    /// prefix. Legacy events can already be consumed on refusal; never grow/retry
    /// implicitly or fabricate a default event after idle status 11.
    /// @param[out] output Exclusive complete-event storage, at most maximumOutput;
    /// retain it unchanged while returned/decoded borrowed views are used.
    /// @param[in] versioned True selects event_poll_v1; false selects event_poll.
    /// @return Result preserving original status, only successful initialized data
    /// and optional observed required extent. Ignore output on every nonzero status,
    /// including preflight errors that do not zero caller bytes.
    /// @permissions Exact subscription/observer/schema/delivery/quota/deadline grant.
    /// @see Owner.request; Result; Owner.ready; Owner.watch
    Result poll(ubyte[] output, bool versioned=false) {
        if(output.length>maximumOutput) return Result(90);
        ulong h; auto c=acquire(h); if(c) return Result(c);
        scope(exit) state.busy=false;
        ubyte[8] slot=255;
        auto code=versioned ? raw_event_poll_v1(h,0,offset(output),output.length,offset(slot)) : raw_event_poll(h,0,offset(output),output.length,offset(slot));
        return finish(code,slot,output);
    }
    /// @brief Watch one distinct independently granted source through this observer.
    /// @details Leases both original stable cells through a single event_watch call.
    /// Watching grants no source operation or reservation for a future record.
    /// @param[in] source Distinct live original Owner from the same Instance/backend.
    /// @param[in] correlation Exact unsigned application correlation, including 0.
    /// @return Original unsigned status, same cell 22, busy 17 or stale 9.
    /// @permissions Exact observer/source pairing and independent Host grants.
    /// @see Owner.ready; Owner.poll; Owner.submit
    uint watch(Owner source, ulong correlation=0) {
        if(state is source.state) return 22;
        ulong h; auto c=acquire(h); if(c) return c;
        scope(exit) state.busy=false;
        ulong s; c=source.acquire(s); if(c) return c;
        scope(exit) source.state.busy=false;
        return raw_event_watch(h,s,correlation);
    }
    /// @brief Read the complete four-word actual observer-readiness snapshot.
    /// @details Preserves every unsigned LE value from the successful 32-byte
    /// output; no event/admission slot/byte quota is reserved by observing it.
    /// @return Readiness with original status. Only code 0 makes its four words
    /// meaningful; busy/stale/Host refusal is distinct from an actual idle snapshot.
    /// @permissions Exact separately granted observer/readiness operation and limits.
    /// @see Readiness; Owner.watch; Owner.poll; Owner.submit
    Readiness ready() {
        ulong h; auto c=acquire(h); if(c) return Readiness(c);
        scope(exit) state.busy=false;
        ubyte[32] b=0; c=raw_event_ready(h,0,offset(b));
        return c ? Readiness(c) : Readiness(0,word(b,0),word(b,8),word(b,16),word(b,24));
    }
    /// @brief Submit one complete original business-ABI Service request with an observer.
    /// @details Leases both cells and checks the actual nonzero u64 admission ID.
    /// Admission is not a response; original-control owned raw12 is a separate path.
    /// @param[in] observer Distinct live independently granted original observer owner.
    /// @param[in] input Complete stable canonical request, at most maximumRequest bytes.
    /// @return Submission with original status and only a successful nonzero ID.
    /// Same cell/zero ID 22, size 90, busy 17 and stale 9 remain separate refusals;
    /// a possibly admitted native request is never automatically resubmitted.
    /// @permissions Exact call/observer/type/direction/quota/deadline grants.
    /// @see Submission; Owner.watch; Owner.ready; Owner.poll
    Submission submit(Owner observer, const(ubyte)[] input) {
        if(state is observer.state) return Submission(22);
        if(input.length>maximumRequest) return Submission(90);
        ulong h; auto c=acquire(h); if(c) return Submission(c);
        scope(exit) state.busy=false;
        ulong o; c=observer.acquire(o); if(c) return Submission(c);
        scope(exit) observer.state.busy=false;
        ubyte[8] slot=0; c=raw_service_submit(h,o,0,offset(input),input.length,offset(slot));
        if(c) return Submission(c);
        auto id=word(slot,0); return Submission(id==0 ? 22 : 0,id);
    }
}

/// @brief Open one exact independently granted alias into an unused stable State.
/// @details Leases state, borrows exact alias bytes through one raw memory-zero
/// open and validates the actual nonzero handle before publishing owner.
/// A successfully spent cell cannot be recycled after retirement.
/// @param[in,out] state State.init storage at its final address; retain it through
/// every returned Owner view/executor registration and cleanup, without copying/resetting.
/// @param[in] aliasBytes Explicit nonempty UTF-8 policy alias, at most 255 bytes, no NUL.
/// @param[out] owner Unused output destination; D out initialization resets it even
/// on failure, so never overwrite the sole live view of a different unclosed owner.
/// @return 0 and a borrowed original Owner on success, otherwise unusable out-value
/// and original Host status or local busy 17/spent 9/alias-or-zero-handle 22.
/// @permissions Exact current-Instance/backend alias grant supplied independently.
/// @see State; Owner; Owner.close; Session.open
uint open(ref State state, const(ubyte)[] aliasBytes, out Owner owner) {
    if(state.busy) return 17;
    if(state.spent || state.handle!=0) return 9;
    if(aliasBytes.length==0 || aliasBytes.length>255 || !validUtf8(aliasBytes,true)) return 22;
    state.busy=true; scope(exit) state.busy=false;
    ubyte[8] slot=0;
    auto code=raw_capability_open(0,offset(aliasBytes),aliasBytes.length,offset(slot));
    if(code) return code;
    auto h=word(slot,0); if(h==0) return 22;
    state.handle=h; state.spent=true; owner.state=&state; return 0;
}

// Fixed lifetime pool, intentionally caller-initialized and never copied.
/// @brief Fixed caller-owned lifetime pool with explicit reverse-order cleanup.
/// @details Initialize at its final address and never copy/move/reset it while
/// any Owner/Executor view borrows a cell. Construction creates no native Node,
/// alias, allocator or grant. Successful cells are never recycled after close.
/// @param[in] capacity Compile-time positive permanent owner ceiling, at most 1024.
/// @see Session.open; Session.close; State; roswasm.typed.Node
struct Session(size_t capacity) if(capacity>0 && capacity<=1024) {
    private State[capacity] cells;
    private size_t used;
    private bool closed;
    /// @brief Open one exact granted alias in the next unused fixed pool cell.
    /// @details Refuses closed/full state before the raw open. Only actual
    /// success advances permanent pool use; independently retired cells remain used.
    /// @param[in] aliasBytes Exact explicit alias accepted by roswasm.open.
    /// @param[out] owner Unused caller destination for the borrowed stable-cell view;
    /// ignore/reset out-values on nonzero and do not overwrite another sole live owner.
    /// @return Original open status, closed 9 or capacity 90; 0 publishes the live view.
    /// @permissions Exact independently supplied current-Instance/backend alias grant.
    /// @see roswasm.open; Owner; Session.close
    uint open(const(ubyte)[] aliasBytes, out Owner owner) {
        if(closed) return 9; if(used==capacity) return 90;
        auto c=roswasm.open(cells[used],aliasBytes,owner); if(!c) ++used; return c;
    }
    /// @brief Preflight and permanently close the fixed pool, preserving each raw status.
    /// @details All busy cells are checked before group mutation. Admitted cleanup
    /// visits successful cells newest-first; spent state is never reset or replayed.
    /// @param[out] statuses Caller-owned fixed result array. The complete array is
    /// zeroed after admission; each live used slot receives its actual close status.
    /// A previously locally retired or unused slot stays 0 without a new Host call.
    /// @return Local iteration/admission status 0, already closed 9 or busy 17.
    /// Outer 0 does not assert every raw close succeeded: inspect all actual used
    /// slot results and retain earlier primary errors separately. Traps may interrupt cleanup.
    /// @permissions Existing original owner associations only.
    /// @see Owner.close; State; roswasm.typed.Node.close
    uint close(ref uint[capacity] statuses) {
        if(closed) return 9;
        foreach(ref cell; cells[0..used]) if(cell.busy) return 17;
        closed=true; statuses[]=0;
        foreach_reverse(i; 0..used) if(cells[i].handle!=0) {
             Owner o;
             o.state=&cells[i];
             statuses[i]=o.close();
        }
        return 0;
    }
}
