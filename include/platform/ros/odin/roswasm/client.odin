package roswasm

// Caller-owned stable state; one Guest execution thread. No implicit context,
// clock, allocator, network endpoint, native ROS library or authority is opened.
// @brief Inclusive original request-data ceiling, exactly 4193786 bytes.
// @details Fits the selected 4 MiB IPC envelope; an actual schema/grant may allow
// less. This constant neither allocates storage nor reserves Host operation quota.
// @see request; publish; Maximum_Output
Maximum_Request :: 4193786
// @brief Inclusive checked output-byte ceiling, exactly 4194304 bytes.
// @details Supplying that capacity grants no record, admission slot or ROS right.
// @see request; poll; Maximum_Request
Maximum_Output :: 4194304
// @brief Caller-owned stable state for one opaque owner generation.
// @details Initialize to zero at its final address. Do not relocate, copy/recycle
// or externally mutate it while any Owner/Session/Executor reference remains.
// The Host independently authenticates handles; writing fields grants no rights.
// @see Owner; open; close; Session
State :: struct {
    // @brief Full original same-Instance/backend handle; 0 means locally retired.
    // @details Only the ownership operations may update a live cell. Never narrow
    // it, transplant another handle or restore a previously retired generation.
    // @see open; acquire; close
    handle: u64,
    // @brief Nonblocking synchronous operation/callback lease flag.
    // @details Initialize false. Ownership procedures set/release it on their
    // ordinary return paths; it is not a native thread lock or a Host grant.
    // @see acquire; dispatch_callback; session_close
    busy: bool,
    // @brief Whether this cell has completed its first successful open.
    // @details Once true it stays true after retirement; never reset to recycle
    // a cell while old Owner views could still refer to its address.
    // @see open; close; session_open
    spent: bool,
}
// @brief Borrowed view of one caller-owned stable State cell.
// @details Copies share retirement and the operation lease. There is no finalizer,
// implicit reopen or transferred allocation; retain the cell through every view.
// @see State; open; session_close
Owner :: struct {
    // @brief Non-nil stable cell pointer for a valid opened view.
    // @details Caller initialization/borrowing is not native authentication. Do not
    // point it at moved, freed, copied or recycled state storage.
    // @see State; acquire; open
    state: ^State,
}
// @brief Original checked status with an optional successful caller-buffer prefix.
// @details Inspect code before every other result. Data borrows caller output;
// required is advisory only with has_required and never reserves capacity.
// @see request; poll; finish
Result :: struct {
    // @brief Original unsigned status; 0 is success and nonzero is refusal.
    // @details Invalid success length becomes 22. Preserve denial, idle/capacity,
    // unsupported, disconnect and uncertain timeout rather than replaying effects.
    // @see request; poll; Result
    code: u32,
    // @brief Initialized successful prefix, meaningful only when code == 0.
    // @details Borrows the exact caller output buffer; retain it unchanged while
    // this slice or any decoded borrowed field is used.
    // @see request; poll; Reader
    data: []u8,
    // @brief Whether status 90 actually overwrote the all-ones length sentinel.
    // @details False means no required extent was established, even if required
    // contains the sentinel or another unused raw value.
    // @see Result.required; finish
    has_required: bool,
    // @brief Original observed required bytes, valid only with has_required.
    // @details This is neither an allocation nor permission to grow/retry a
    // possibly consumed legacy event or an uncertain effectful operation.
    // @see Result.has_required; request; poll
    required: u64,
}
// @brief Original status and four complete unsigned readiness snapshot words.
// @details Only code 0 supplies an actual observation. No word reserves a later
// event, asynchronous slot, byte quota or native operation permission.
// @see ready; watch; submit
Readiness :: struct {
    // @brief Actual readiness-call status; ignore all snapshot words on nonzero.
    // @details Default zero fields on an error are not a genuine idle observation.
    // @see ready; Readiness.events
    code: u32,
    // @brief Current ready event-record count from the successful snapshot.
    // @details Zero is an idle observation and does not retire any owner.
    // @see ready; poll
    events: u64,
    // @brief Complete observed next-event extent in bytes, including its envelope.
    // @details A later poll performs independent state, capacity and quota checks.
    // @see poll; Readiness.events
    next_bytes: u64,
    // @brief Currently observed asynchronous admission-slot budget.
    // @details The snapshot reserves no later Service submission slot.
    // @see submit; Readiness.admission_bytes
    admission_slots: u64,
    // @brief Currently observed asynchronous admission-byte budget.
    // @details Exact schema/alias limits can be smaller; this value grants none.
    // @see submit; Readiness.admission_slots
    admission_bytes: u64,
}
// @brief Original asynchronous-submission status and full admitted ID.
// @details Admission is separate from feedback/response/terminal completion.
// No failure or timeout manufactures a nonzero admitted request.
// @see submit; poll; watch
Submission :: struct {
    // @brief Original unsigned status; inspect id only after code 0.
    // @details Invalid/zero successful ID becomes 22; other Host errors are unchanged.
    // @see submit; Submission.id
    code: u32,
    // @brief Exact nonzero admitted u64 ID, meaningful only with code 0.
    // @details Do not narrow, synthesize, transfer between Instances or treat as
    // bearer permission or a completed native response.
    // @see submit; poll
    id: u64,
}

// @brief Convert a currently live memory-zero slice address to a numeric offset.
// @details Low-level borrowed-address helper; it retains no slice/storage and
// performs no range, target, permission or lifetime validation by itself.
// @param[in] b Stable live Guest slice; its allocation remains rooted through use.
// @return 0 for an empty slice, otherwise the full numeric pointer representation.
// @see request; raw_request; Owner
offset :: proc(b: []u8) -> u64 {
    if len(b)==0 { return 0 }
    return u64(uintptr(raw_data(b)))
}
// @brief Read exactly eight little-endian bytes as an unsigned full-width word.
// @details Low-level helper with caller preconditions; no Host call, native
// struct cast or bounds-refusal status is provided. Invalid indexing can trap.
// @param[in] b Stable readable slice containing the complete selected word.
// @param[in] at Nonnegative start offset with at+8<=len(b).
// @return Complete original u64 bits without narrowing to target int.
// @see finish; ready; submit
word :: proc(b: []u8, at: int) -> u64 {
    n: u64
    for i in 0..<8 { n |= u64(b[at+i]) << uint(8*i) }
    return n
}
// @brief Validate complete UTF-8, including overlong, surrogate and scalar limits.
// @details Pure byte scan without allocation, normalization, replacement or Host
// authority. Caller backing bytes remain stable until synchronous return.
// @param[in] b Complete readable byte slice, including a valid empty slice.
// @param[in] reject_nul True additionally rejects embedded 0; false preserves it.
// @return True only for complete valid UTF-8 satisfying the selected NUL policy.
// @see open; put_string; get_string
valid_utf8 :: proc(b: []u8, reject_nul: bool = false) -> bool {
    at := 0
    for at<len(b) {
        first:=b[at]; at+=1
        if first<0x80 { if reject_nul && first==0 { return false }; continue }
        remaining: int; value,minimum: u32
        if first>=0xc2 && first<=0xdf { remaining=1; value=u32(first&31); minimum=0x80
        } else if first>=0xe0 && first<=0xef { remaining=2; value=u32(first&15); minimum=0x800
        } else if first>=0xf0 && first<=0xf4 { remaining=3; value=u32(first&7); minimum=0x10000
        } else { return false }
        if remaining>len(b)-at { return false }
        for _ in 0..<remaining {
            c:=b[at]; at+=1
            if c&0xc0!=0x80 { return false }
            value=(value<<6)|u32(c&63)
        }
        if value<minimum || value>0x10ffff || (value>=0xd800 && value<=0xdfff) { return false }
    }
    return true
}
// @brief Acquire the shared nonblocking local operation lease for this owner.
// @details Low-level public package helper. On success it leaves busy=true;
// callers must restore that flag on every ordinary exit after their one operation.
// It performs no Host authentication, native open or implicit cleanup.
// @param[in] o View of a live stable cell, unchanged for the lease lifetime.
// @return Original handle and 0, or 0 with stale/nil 9 or already-busy 17.
// @see State.busy; close; request; dispatch_callback
acquire :: proc(o: Owner) -> (u64,u32) {
    if o.state==nil { return 0,9 }
    if o.state.busy { return 0,17 }
    if !o.state.spent || o.state.handle==0 { return 0,9 }
    o.state.busy=true
    return o.state.handle,0
}
// @brief Open one exact granted alias into a previously unused stable cell.
// @details Leases state, borrows exact alias bytes through one memory-zero Host
// call and checks the actual nonzero handle before publishing an Owner.
// A successfully spent cell is never reset/recycled after retirement.
// @param[in,out] state Non-nil zero-initialized caller cell at its final address;
// keep it live and unchanged externally for every returned view's lifetime.
// @param[in] alias_bytes Explicit nonempty UTF-8 policy alias, at most 255 bytes, no NUL.
// @return Owner and 0 on actual success, otherwise unusable empty view and original
// Host status or local nil/alias/zero-handle 22, busy 17 or spent/stale 9.
// @permissions Exact preexisting current-Instance/backend alias grant.
// @see State; Owner; close; session_open
open :: proc(state: ^State, alias_bytes: []u8) -> (Owner,u32) {
    if state==nil { return {},22 }
    if state.busy { return {},17 }
    if state.spent || state.handle!=0 { return {},9 }
    if len(alias_bytes)==0 || len(alias_bytes)>255 || !valid_utf8(alias_bytes,true) { return {},22 }
    state.busy=true; defer state.busy=false
    slot: [8]u8
    c:=raw_capability_open(0,offset(alias_bytes),u64(len(alias_bytes)),offset(slot[:]))
    if c!=0 { return {},c }
    h:=word(slot[:],0)
    if h==0 { return {},22 }
    state.handle=h; state.spent=true
    return Owner{state},0
}
// @brief Permanently retire local state before one close or revoke notification.
// @details Shared views see handle 0 before the Host result; spent remains true.
// Failure never resurrects the old handle or creates a replayable cleanup effect.
// @param[in] o Original shared stable-cell owner view.
// @param[in] revoke_alias True selects capability_revoke; false selects capability_close.
// @return Original unsigned status, or local busy 17/stale 9; 0 means actual success.
// @permissions Existing original owner and independently admitted cleanup operation.
// @see close; revoke; session_close
retire :: proc(o: Owner, revoke_alias: bool) -> u32 {
    h,c:=acquire(o); if c!=0 { return c }
    defer o.state.busy=false
    o.state.handle=0
    if revoke_alias { return raw_capability_revoke(h) }
    return raw_capability_close(h)
}
// @brief Once-retire this shared local generation and call its original raw close.
// @details Preserve a nonzero cleanup result independently of earlier errors;
// all copied views remain stale, including when the Host call fails.
// @param[in] o Live original view whose backing State stays at its final address.
// @return Original unsigned close status, or local busy 17/stale 9; no implicit retry.
// @see retire; revoke; session_close
close :: proc(o: Owner) -> u32 {
     return retire(o,false)
}
// @brief Once-retire this shared local generation and explicitly revoke it.
// @details Does not reopen, regrant or recycle the caller's spent State cell.
// @param[in] o Live original view whose backing storage remains stable through return.
// @return Original unsigned revoke status, or local busy 17/stale 9.
// @see retire; close; session_close
revoke :: proc(o: Owner) -> u32 {
     return retire(o,true)
}
// @brief Write one complete original canonical publish or log body.
// @details Selects exactly one original raw operation, borrows the owner and
// stable bytes through synchronous return, and performs no schema conversion.
// @param[in] o Exact separately granted owner for the selected operation.
// @param[in] data Complete immutable selected body, at most Maximum_Request bytes.
// @param[in] logging True selects log_write; false selects topic_publish.
// @return Original unsigned status or size 90/busy 17/stale 9; no uncertain effect is replayed.
// @permissions Exact selected alias/type/direction/quota/deadline grant.
// @see publish; log_write; request
write :: proc(o: Owner, data: []u8, logging: bool) -> u32 {
    if len(data)>Maximum_Request { return 90 }
    h,c:=acquire(o); if c!=0 { return c }; defer o.state.busy=false
    if logging { return raw_log_write(h,0,offset(data),u64(len(data))) }
    return raw_topic_publish(h,0,offset(data),u64(len(data)))
}
// @brief Publish one complete selected canonical message through its exact owner.
// @details Sends once; this helper does not infer a native type or install a policy.
// @param[in] o Independently granted exact publisher owner.
// @param[in] data Complete stable canonical message body, at most Maximum_Request bytes.
// @return Original unsigned status or local size 90/busy 17/stale 9.
// @permissions Exact publisher/type/direction/quota/deadline grant.
// @see write; request; close
publish :: proc(o: Owner, data: []u8) -> u32 {
     return write(o,data,false)
}
// @brief Write one complete canonical log record through its independent log grant.
// @details Does not select a logger or turn arbitrary display text into the configured schema.
// @param[in] o Exact separately granted log owner.
// @param[in] data Complete stable canonical log body, at most Maximum_Request bytes.
// @return Original unsigned status or local size 90/busy 17/stale 9; no automatic retry.
// @permissions Exact log alias/schema/quota/deadline grant.
// @see write; publish; request
log_write :: proc(o: Owner, data: []u8) -> u32 {
     return write(o,data,true)
}
// @brief Activate the topic subscription selected by this existing owner.
// @details Opens no default native context, observer, callback or executor.
// @param[in] o Exact separately granted subscription owner, borrowed through return.
// @return Original unsigned subscription status or local busy 17/stale 9.
// @permissions Exact subscription/type/delivery/quota/deadline grant.
// @see poll; watch; close
subscribe :: proc(o: Owner) -> u32 {
    h,c:=acquire(o); if c!=0 { return c }; defer o.state.busy=false
    return raw_topic_subscribe(h)
}
// @brief Activate the original business-ABI Service server with an empty command.
// @details Selects no new alias/type or Node. Original-control Services require
// their distinct owned raw12 transport; response rights remain independent.
// @param[in] o Existing exact separately granted advertisement owner.
// @return Original unsigned activation status or local busy 17/stale 9.
// @permissions Exact advertise/type/native-QoS grant; no response grant is added.
// @see poll; request; close
advertise_service :: proc(o: Owner) -> u32 {
    h,c:=acquire(o); if c!=0 { return c }; defer o.state.busy=false
    return raw_service_advertise(h)
}
// @brief Activate the exact independently granted parameter-event subscription.
// @details Creates no parameter store, native Node, mutation right or observer grant.
// @param[in] o Existing exact event-subscription owner, borrowed through return.
// @return Original unsigned activation status or local busy 17/stale 9.
// @permissions Exact event alias/schema/delivery/quota/deadline grant.
// @see poll; watch; ready
subscribe_parameter_events :: proc(o: Owner) -> u32 {
    h,c:=acquire(o); if c!=0 { return c }; defer o.state.busy=false
    return raw_parameter_subscribe_events(h)
}
// @brief Check an actual raw status/length slot before exposing caller output.
// @details Low-level synchronous helper; slot must contain eight readable bytes.
// Status 0 requires an observed length within output. Actual failure/invalid
// success zeroes this output and returns no data slice. It issues no Host call.
// @param[in] c Original unsigned status of the completed raw call.
// @param[in] slot Original eight-byte LE length slot, initialized to max(u64)
// before that raw call. An unchanged sentinel never establishes required bytes.
// @param[out] output Caller-owned writable raw output storage; keep stable and
// retain it unchanged while any successful returned prefix is used.
// @return Successful borrowed prefix, or unchanged nonzero code/invalid-length 22.
// has_required is true only for status 90 and an overwritten length sentinel.
// @see Result; request; poll; word
finish :: proc(c: u32, slot: []u8, output: []u8) -> Result {
    n:=word(slot,0)
    if c==0 && n<=u64(len(output)) { return Result{code=0,data=output[:int(n)]} }
    for &b in output { b=0 }
    return Result{code=c==0 ? 22 : c,has_required=c==90 && n!=max(u64),required=n}
}
// @brief Execute one selected original RPC with bounded disjoint caller buffers.
// @details Retains the owner lease and every live memory-zero slice through one
// synchronous call; output length starts at max(u64). Preflight refusals leave
// caller output untouched, while actual raw-call failures quarantine its bytes.
// @param[in] o Existing exact independently granted owner for this operation.
// @param[in] op Exact closed selector from this generated private numeric bridge.
// @param[in] input Complete immutable canonical request, at most Maximum_Request bytes.
// @param[out] output Exclusive writable output, at most Maximum_Output bytes,
// disjoint from nonempty input; retain it for any successful borrowed result.
// @return Result with original status and only a successful initialized prefix;
// local size 90, overlap 22, busy 17 and stale 9 are distinct refusals. Timeout,
// capacity and possible legacy consumption never imply permission to replay.
// @permissions Exact operation/alias/type/direction/quota/deadline grant.
// @see Result; finish; poll; close
request :: proc(o: Owner, op: RPC, input,output: []u8) -> Result {
    if len(input)>Maximum_Request || len(output)>Maximum_Output { return Result{code=90} }
    if len(input)>0 && len(output)>0 && offset(input)<offset(output)+u64(len(output)) && offset(output)<offset(input)+u64(len(input)) { return Result{code=22} }
    h,c:=acquire(o); if c!=0 { return Result{code=c} }; defer o.state.busy=false
    slot: [8]u8; for &b in slot { b=255 }
    c=raw_request(op,h,offset(input),u64(len(input)),offset(output),u64(len(output)),offset(slot[:]))
    return finish(c,slot[:],output)
}
// @brief Poll one actual legacy/versioned event into bounded caller storage.
// @details Exposes only the original successful initialized prefix. A legacy
// record can already be consumed on capacity refusal; never automatically grow,
// retry or return a fabricated default event for idle status 11.
// @param[in] o Existing exact subscription/observer owner, stable through return.
// @param[out] output Exclusive writable complete-event storage, at most Maximum_Output;
// retain it unchanged while returned/decoded borrowed slices are used.
// @param[in] versioned True selects event_poll_v1; false selects event_poll.
// @return Result preserving original status, optional required bytes and successful
// prefix. Preflight/owner errors leave output untouched but expose no valid data.
// @permissions Exact schema/delivery/observer/quota/deadline admission.
// @see request; finish; ready; watch
poll :: proc(o: Owner, output: []u8, versioned: bool = false) -> Result {
    if len(output)>Maximum_Output { return Result{code=90} }
    h,c:=acquire(o); if c!=0 { return Result{code=c} }; defer o.state.busy=false
    slot: [8]u8; for &b in slot { b=255 }
    if versioned { c=raw_event_poll_v1(h,0,offset(output),u64(len(output)),offset(slot[:]))
    } else { c=raw_event_poll(h,0,offset(output),u64(len(output)),offset(slot[:])) }
    return finish(c,slot[:],output)
}
// @brief Register this observer against one distinct independently granted source.
// @details Holds both stable-cell leases through a single event_watch call.
// Registration reserves no record and grants no source business-operation right.
// @param[in] o Existing exact independently granted observer owner.
// @param[in] source Distinct live State-backed owner from the same Instance/backend.
// @param[in] correlation Exact unsigned application correlation, including 0.
// @return Original unsigned status, same cell 22, busy 17 or stale 9.
// @permissions Exact observer/source pairing and independent trusted grants.
// @see ready; poll; submit
watch :: proc(o,source: Owner, correlation: u64 = 0) -> u32 {
    if o.state==source.state { return 22 }
    h,c:=acquire(o); if c!=0 { return c }; defer o.state.busy=false
    s,d:=acquire(source); if d!=0 { return d }; defer source.state.busy=false
    return raw_event_watch(h,s,correlation)
}
// @brief Read all four words of one actual observer-readiness snapshot.
// @details Decodes the successful 32-byte canonical LE output without narrowing.
// Counts/extents reserve no event or later asynchronous submission capacity.
// @param[in] o Existing exact granted readiness observer, borrowed through return.
// @return Readiness with actual original status; only code 0 makes its four words
// meaningful. Busy 17, stale 9 and Host refusal remain distinct from an idle count.
// @permissions Exact separately admitted observer/readiness operation and limits.
// @see Readiness; watch; poll; submit
ready :: proc(o: Owner) -> Readiness {
    h,c:=acquire(o); if c!=0 { return Readiness{code=c} }; defer o.state.busy=false
    b: [32]u8
    c=raw_event_ready(h,0,offset(b[:]))
    if c!=0 { return Readiness{code=c} }
    return Readiness{code=0,events=word(b[:],0),next_bytes=word(b[:],8),admission_slots=word(b[:],16),admission_bytes=word(b[:],24)}
}
// @brief Submit a complete original business-ABI Service request with an observer.
// @details Leases both owners and verifies the actual nonzero admitted ID.
// Submission is not a completed response; original-control raw12 is separate.
// @param[in] o Existing exact independently granted Service-call owner.
// @param[in] observer Distinct live independently granted observer owner.
// @param[in] input Complete stable canonical request, at most Maximum_Request bytes.
// @return Submission with original status and only a successful full-width nonzero
// ID. Same cell/invalid ID 22, size 90, busy 17 and stale 9 remain distinct errors.
// A possibly admitted native request is never automatically resubmitted.
// @permissions Exact call/observer/type/direction/quota/deadline grants.
// @see Submission; watch; ready; poll
submit :: proc(o,observer: Owner, input: []u8) -> Submission {
    if o.state==observer.state { return Submission{code=22} }
    if len(input)>Maximum_Request { return Submission{code=90} }
    h,c:=acquire(o); if c!=0 { return Submission{code=c} }; defer o.state.busy=false
    s,d:=acquire(observer); if d!=0 { return Submission{code=d} }; defer observer.state.busy=false
    slot: [8]u8
    c=raw_service_submit(h,s,0,offset(input),u64(len(input)),offset(slot[:]))
    if c!=0 { return Submission{code=c} }
    id:=word(slot[:],0)
    return Submission{code=id==0 ? 22 : 0,id=id}
}

// Initialize at the final address. Used cells are never recycled. The caller
// owns both backing arrays and inspects each independent cleanup status.
// @brief Caller-initialized stable pool retaining original owner State cells.
// @details Initialize cells with distinct zeroed final-address storage, used=0
// and closed=false. Do not copy/move the pool or externally mutate its counters
// after any Owner borrows a cell; the procedures rely on those lifetime invariants.
// @see session_open; session_close; State; Node
Session :: struct {
    // @brief Caller-owned fixed stable backing cells for successful owner opens.
    // @details Retain this slice's allocation and element addresses through all
    // views/executor registrations and cleanup; never resize or share cells across pools.
    // @see State; session_open
    cells: []State,
    // @brief Number of successful permanently consumed cells, 0 through len(cells).
    // @details Initialize 0; only session_open advances it. Failed opens do not
    // advance it, and independently retired successful cells are never recycled.
    // @see session_open; session_close
    used: int,
    // @brief Permanent local group-retirement flag.
    // @details Initialize false and never reset it after session_close admission,
    // even when one of its actual raw-owner close calls reports a failure.
    // @see session_close; Session.used
    closed: bool,
}
// @brief Open one exact independently granted alias in the next unused pool cell.
// @details Requires the caller-maintained stable Session invariants. Refuses
// nil/closed/full pools before opening; only actual success advances used.
// @param[in,out] s Valid caller-initialized pool at its final address; retain its
// cells and this object while any returned Owner or executor view remains live.
// @param[in] alias_bytes Exact explicit policy alias accepted by open.
// @return Owner and 0 on success, otherwise an unusable empty view and original
// open error or nil/closed 9/capacity 90. No implicit retry/regrant occurs.
// @permissions Exact current-Instance/backend alias grant.
// @see open; Session; session_close
session_open :: proc(s: ^Session, alias_bytes: []u8) -> (Owner,u32) {
    if s==nil || s.closed { return {},9 }
    if s.used==len(s.cells) { return {},90 }
    owner,c:=open(&s.cells[s.used],alias_bytes)
    if c==0 { s.used+=1 }
    return owner,c
}
// @brief Preflight and permanently close the pool, preserving each owner status.
// @details Checks result capacity and every busy cell before group mutation.
// Admitted cleanup visits successful cells newest-first and never retries a
// retired handle. Fatal traps do not promise completion of remaining closes.
// @param[in,out] s Valid stable Session with unmodified used/cell lifetime invariants.
// @param[out] statuses Exclusive caller array of at least s.used entries. After
// success, indices 0..<used match original cell order; already locally retired
// entries receive 0 without a new Host call. Entries beyond used are unchanged.
// @return Local admission/iteration status 0, nil/closed 9, insufficient status
// storage 90 or busy owner 17. Outer 0 does not assert every actual close status
// is 0: inspect the complete statuses prefix and preserve prior primary errors.
// @permissions Existing owner associations only; no reopen or implicit revoke.
// @see Session; close; State.busy; node_close
session_close :: proc(s: ^Session, statuses: []u32) -> u32 {
    if s==nil || s.closed { return 9 }
    if len(statuses)<s.used { return 90 }
    for cell in s.cells[:s.used] { if cell.busy { return 17 } }
    s.closed=true
    for i:=s.used-1; i>=0; i-=1 {
        statuses[i]=0
        if s.cells[i].handle!=0 { statuses[i]=close(Owner{&s.cells[i]}) }
    }
    return 0
}
