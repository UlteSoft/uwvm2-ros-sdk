package roswasm

// Local names and callbacks only. Backing Session/State/storage stays at its
// final address. Handlers execute only during the caller's spin_once call.
// @brief Caller-owned application label and bounded local Session pool.
// @details Initialize the zero value once at its final address through node_init.
// Retain label and State backing storage through all owner/executor views and
// cleanup. The label creates no native Node, context, namespace or ROS authority.
// @see node_init; node_open; node_close; Session
Node :: struct {
    // @brief Borrowed exact application UTF-8 label, nonempty after initialization.
    // @details At most 255 bytes with no NUL. Retain its backing bytes unchanged;
    // do not reset the label to recycle an initialized Node or select a native name.
    // @see node_init; node_open
    label: string,
    // @brief Caller-initialized local pool retaining the original owner State cells.
    // @details Keep this embedded Session and its cells at stable final addresses;
    // externally copying/mutating it after initialization violates view lifetimes.
    // @see Session; node_close
    resources: Session,
}
// @brief Initialize one final-address Node with explicit label and unused State storage.
// @details Creates only local bookkeeping; it opens no alias or native ROS Node.
// A previously initialized label is not reset after close, so reinitialization
// refuses rather than recycling state referenced by older owners.
// @param[in,out] node Non-nil zero-initialized Node at its final stable address.
// @param[in] label Explicit nonempty valid UTF-8 label, at most 255 bytes, no NUL;
// retain its backing storage unchanged for the initialized Node lifetime.
// @param[in,out] storage Caller-owned fixed zeroed State cells, count 1 through 1024;
// retain element addresses through all Owner views/registrations and cleanup.
// @return 0 on local success, invalid input 22, initialized Node 17 or used/busy
// storage 9. No Host operation, allocation or permission is performed.
// @see Node; State; node_open; node_close
node_init :: proc(node: ^Node, label: string, storage: []State) -> u32 {
    if node==nil || len(label)==0 || len(label)>255 || len(storage)==0 || len(storage)>1024 { return 22 }
    if !valid_utf8(transmute([]u8)label,true) { return 22 }
    if len(node.label)!=0 { return 17 }
    for state in storage { if state.spent || state.busy || state.handle!=0 { return 9 } }
    node.label=label;node.resources=Session{cells=storage};return 0
}
// @brief Open and retain one exact independently granted alias in this Node's pool.
// @details Delegates to the original stable Session; the local label supplies no
// native type, owner identity or policy. Only actual success advances pool use.
// @param[in,out] node Existing valid initialized Node whose storage remains stable.
// @param[in] alias_bytes Explicit exact alias accepted by open, stable through return.
// @return Owner and 0, or an unusable empty view with nil/uninitialized/closed 9,
// pool capacity 90 or the original checked open error. No automatic retry occurs.
// @permissions Exact current-Instance/backend alias grant supplied independently.
// @see node_init; session_open; open; node_close
node_open :: proc(node: ^Node, alias_bytes: []u8) -> (Owner,u32) {
    if node==nil || len(node.label)==0 { return {},9 }
    return session_open(&node.resources,alias_bytes)
}
// @brief Permanently close this Node's local Session in reverse successful-open order.
// @details Preflights status capacity and all owner leases before mutation.
// The label remains initialized; no replacement native Node or group is created.
// @param[in,out] node Existing valid initialized final-address Node and stable pool.
// @param[out] statuses Exclusive caller array with at least resources.used entries;
// the assigned prefix preserves each original cell's independent cleanup result.
// @return Local admission/iteration 0, nil/uninitialized/closed 9, storage 90 or
// busy 17. Outer 0 does not assert that every actual close succeeded.
// @permissions Existing original owner associations only.
// @see session_close; close; Session; node_open
node_close :: proc(node: ^Node, statuses: []u32) -> u32 {
    if node==nil || len(node.label)==0 { return 9 }
    return session_close(&node.resources,statuses)
}
// @brief Caller-driven Guest function for one actual successful event byte prefix.
// @details Called only by explicit spin_once/dispatch_callback, never from a
// native thread. The handler performs complete selected-schema decoding and
// returns its original status; no default response or automatic retry is inserted.
// @param[in] data Complete successful bytes borrowing the entry's caller output.
// Copy before retaining beyond the next buffer write; do not retain dangling views.
// @param[in] context_pointer Exact caller-owned Guest context pointer, possibly nil;
// retain its allocation/type invariants through every registration/invocation.
// @return 0 for a completed handler, otherwise its original unsigned refusal.
// @see Executor_Entry; executor_add; spin_once; dispatch_callback
Callback :: #type proc(data: []u8, context_pointer: rawptr) -> u32
// @brief Complete caller-owned registration of one owner, buffer and Guest handler.
// @details Every referenced allocation remains caller-owned. Public direct
// construction grants no liveness/schema/policy validation; executor_add checks
// registration arguments and the actual later poll checks owner/Host admission.
// @see executor_add; dispatch_callback; Executor
Executor_Entry :: struct {
    // @brief Shared view of an existing exact State-backed event/subscription owner.
    // @details Retain the cell at its final address through registration lifetime.
    // Registration alone does not authenticate the handle or keep a closed owner live.
    // @see Owner; State; poll
    owner: Owner,
    // @brief Exclusive caller event-output buffer borrowed by successful callbacks.
    // @details Keep its allocation stable; next poll/any caller write invalidates
    // old decoded borrowed views unless their bytes were separately copied.
    // @see Callback; poll; Result.data
    output: []u8,
    // @brief Non-nil caller Guest handler retained until executor_close.
    // @details Runs synchronously under the owner's operation lease; failure
    // can follow event consumption and is never replayed automatically.
    // @see Callback; dispatch_callback
    callback: Callback,
    // @brief Caller-owned Guest context pointer forwarded unchanged to callback.
    // @details May be nil if the handler permits it. It is not a native ROS pointer
    // and must remain valid under the caller's concrete type/lifetime contract.
    // @see Callback; executor_add
    context_pointer: rawptr,
}
// @brief Caller-initialized bounded table for explicit ordered polling/dispatch.
// @details Initialize used=0, busy=false and closed=false with stable zeroed entry
// storage. Do not resize/copy/recycle the table during use. No allocator, native
// executor, background thread, clock or implicit owner grant is created.
// @see executor_add; spin_once; executor_close
Executor :: struct {
    // @brief Caller-owned fixed stable backing registrations.
    // @details Retain the allocation and every referenced State/buffer/context
    // through use and close. Only executor_add/close may mutate live table slots.
    // @see Executor_Entry; executor_add
    entries: []Executor_Entry,
    // @brief Permanently registered prefix count, initially 0, at most len(entries).
    // @details Maintain through the provided operations; arbitrary external
    // mutation can violate indexing/lifetime preconditions and trap.
    // @see executor_add; executor_close
    used: int,
    // @brief Nonblocking local step/dispatch lease, initially false.
    // @details Reentry/add/close refuses while stepping. This flag supplies no
    // native thread synchronization or promise of cleanup after a fatal trap.
    // @see spin_once; executor_close
    busy: bool,
    // @brief Permanent table-retirement flag, initially false.
    // @details Never reset after executor_close; referenced raw owners are closed
    // separately by their original Session/caller.
    // @see executor_close; session_close
    closed: bool,
}
// @brief Run one valid Guest handler while holding its original owner's local lease.
// @details Low-level direct helper: entry.callback must be non-nil and its context/
// output lifetimes valid. The callback must not reenter/retire the leased owner;
// its nonzero result is preserved after the ordinary deferred lease release.
// @param[in] entry Complete live registration with stable owner/context storage.
// @param[in] data Complete immutable callback byte prefix borrowing the caller buffer;
// retain no dangling view past its next write unless copied independently.
// @return Original callback status or owner busy 17/stale 9. Nil callback or invalid
// caller pointer preconditions can trap rather than produce a checked status.
// @permissions None added; any operation inside the handler needs its own grants.
// @see Callback; Executor_Entry; spin_once; acquire
dispatch_callback :: proc(entry: Executor_Entry, data: []u8) -> u32 {
    _,status:=acquire(entry.owner);if status!=0 { return status }
    defer entry.owner.state.busy=false
    return entry.callback(data,entry.context_pointer)
}
// @brief Retain one explicit owner/buffer/function/context registration.
// @details Opens no subscription or alias. Only non-nil owner state is checked
// here; actual liveness and Host rights are checked during later polling.
// Duplicate owner registrations are separate ordered entries.
// @param[in,out] executor Valid caller-initialized stable table and entry allocation.
// @param[in] owner Existing exact State-backed owner; retain its final-address cell.
// @param[out] output Exclusive caller event buffer, at most Maximum_Output bytes,
// retained stable through all callbacks and decoded borrowed-value use.
// @param[in] callback Non-nil synchronous Guest handler retained until table close.
// @param[in] context_pointer Exact caller-owned Guest context, possibly nil if valid
// for callback; retain its concrete allocation/type through every invocation.
// @return 0 on local registration, nil/closed 9, busy 17, nil callback/state 22 or
// entry/output capacity 90. No native call or allocation is performed.
// @permissions None added; later polls use the owner's exact independent grant.
// @see Executor; Executor_Entry; spin_once; executor_close
executor_add :: proc(executor: ^Executor, owner: Owner, output: []u8, callback: Callback, context_pointer: rawptr = nil) -> u32 {
    if executor==nil || executor.closed { return 9 }
    if executor.busy { return 17 }
    if callback==nil || owner.state==nil { return 22 }
    if executor.used==len(executor.entries) || len(output)>Maximum_Output { return 90 }
    executor.entries[executor.used]=Executor_Entry{owner,output,callback,context_pointer};executor.used+=1;return 0
}
// @brief Poll each registered entry at most once in one ordered caller-thread step.
// @details Skips only actual idle status 11. Complete successful bytes precede
// one handler under its owner's lease. Any other error stops after the already
// completed prefix; effects/consumed events are not rolled back or retried.
// @param[in,out] executor Valid stable open table; reentry/registration/close
// refuses while its local busy lease is held. Keep all entry storage live.
// @return Number of fully completed callbacks and 0 on whole-step success.
// Failure preserves that completed-prefix count and the original poll/handler
// status; nil/closed 9 and already busy 17 return count 0 before any poll.
// @permissions Existing exact owner/schema/delivery/quota/deadline grants only.
// @see executor_add; Callback; dispatch_callback; executor_close
spin_once :: proc(executor: ^Executor) -> (delivered: int,code: u32) {
    if executor==nil || executor.closed { return 0,9 }
    if executor.busy { return 0,17 }
    executor.busy=true;defer executor.busy=false
    for entry in executor.entries[:executor.used] {
        result:=poll(entry.owner,entry.output)
        if result.code==11 { continue }
        if result.code!=0 { return delivered,result.code }
        status:=dispatch_callback(entry,result.data)
        if status!=0 { return delivered,status }
        delivered+=1
    }
    return delivered,0
}
// @brief Permanently close the local callback table and clear its used registrations.
// @details Releases retained function/context/owner references without freeing
// caller arrays or closing/revoking any raw owner. Their original Session/caller
// remains responsible for physical cleanup; no native executor is shut down.
// @param[in,out] executor Valid stable open table whose entries remain live through return.
// @return 0 on local retirement, nil/already closed 9 or busy step 17 before mutation.
// @permissions None; no Host call, allocation, reopen or automatic retry occurs.
// @see spin_once; session_close; close; Executor
executor_close :: proc(executor: ^Executor) -> u32 {
    if executor==nil || executor.closed { return 9 }
    if executor.busy { return 17 }
    executor.closed=true
    for i in 0..<executor.used { executor.entries[i]={} }
    executor.used=0;return 0
}
