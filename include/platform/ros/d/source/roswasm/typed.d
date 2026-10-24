module roswasm.typed;
import roswasm;
import roswasm.wire;

// Generated records provide exact complete encode/decode methods. All storage
// is caller-owned; no callback runs on a native Gateway thread.
@nogc nothrow:
private ulong id(const(ubyte)[] b) {
     ulong n;
     foreach(i;0..8) n|=cast(ulong)b[i]<<(8*i);
     return n;
}
private void putId(ubyte[] b, ulong value) {
     foreach(i;0..8) b[i]=cast(ubyte)(value>>(8*i));
}
/// @brief Encode and publish one complete original canonical message.
/// @details Full field encoding precedes the single checked publish. This
/// @nogc nothrow BetterC template supplies no native type, allocator or Host grant.
/// @param[in] T Exact complete selected record with its compatible encode method.
/// @param[in] owner Existing independently granted exact publisher view.
/// @param[in] value Complete immutable original message, stable through encoding/call.
/// @param[out] scratch Exclusive caller canonical buffer large enough for all fields;
/// no partial output is published after encode refusal.
/// @return Original unsigned codec/owner/Host status; 0 means actual publish success.
/// An uncertain native effect is never automatically replayed.
/// @permissions Exact publisher/type/direction/quota/deadline grant.
/// @see roswasm.Owner.publish; callValue; roswasm.wire.Writer
uint publishValue(T)(Owner owner, const ref T value, ubyte[] scratch) {
    size_t n; auto c=value.encode(scratch,n); if(c) return c;
    return owner.publish(scratch[0..n]);
}
/// @brief Make one original business-ABI Service call using full request/response codecs.
/// @details Encodes Q, performs exact service_call and completely decodes S.
/// Original-control Services require the distinct owned raw12 transport.
/// @param[in] Q Exact complete original request type with compatible encode.
/// @param[in] S Exact complete original response type with compatible decode.
/// @param[in] owner Exact independently granted original Service-call owner.
/// @param[in] request Complete immutable original request, stable through encoding/call.
/// @param[out] input Exclusive caller request scratch; its initialized prefix
/// must be disjoint from output while the synchronous raw call borrows both.
/// @param[out] output Exclusive caller complete-response buffer; retain it
/// unchanged while decoded string/raw fields borrow its bytes.
/// @param[in,out] arena Dedicated caller region retained for decoded dynamic/nested arrays.
/// @param[out] response Complete decoded S only after status 0; ignore partial
/// out-values/arena state on refusal. D out initialization resets its destination.
/// @return Original unsigned encode/RPC/decode status. Timeout can follow native
/// admission; no request is replayed and no partial/default response is exposed.
/// @permissions Exact call/type/direction/quota/deadline grant.
/// @see roswasm.Owner.request; Arena; pollIncoming; respondValue
uint callValue(Q,S)(Owner owner, const ref Q request, ubyte[] input, ubyte[] output, ref Arena arena, out S response) {
    size_t n; auto c=request.encode(input,n); if(c) return c;
    auto result=owner.request(RPC.service_call,input[0..n],output);if(result.code) return result.code;
    return S.decode(result.data,arena,response);
}
/// @brief Complete original business-ABI incoming request and its actual correlation ID.
/// @details Checked pollIncoming validates ID/body. Direct struct construction
/// is ordinary data and grants no response right or original-control raw12 identity.
/// @param[in] T Exact complete selected original request record type.
/// @see pollIncoming; respondValue; roswasm.Owner.advertiseService
struct Incoming(T) {
    /// @brief Full original request ID, checked nonzero by successful pollIncoming.
    /// @details Use only the original Instance/backend; a numeric copy is not authority.
    /// @see pollIncoming; respondValue
    ulong id;
    /// @brief Complete decoded request with every original selected field.
    /// @details String/raw fields can borrow input scratch; sequences/nested
    /// allocations can borrow the caller Arena. Retain both for this value's lifetime.
    /// @see pollIncoming; Arena; Reader
    T value;
}
/// @brief Poll and completely decode one actual original business-ABI server request.
/// @details Checks the exact ID8 prefix and nonzero original ID before full T
/// decoding. A legacy record can already be consumed on subsequent refusal;
/// no default request or automatic capacity/decode retry is supplied.
/// @param[in] T Complete selected original request type with compatible decode.
/// @param[in] owner Existing exact granted server/incoming-delivery owner.
/// @param[out] scratch Exclusive caller buffer for ID8 plus the complete body;
/// retain bytes unchanged while decoded borrowed fields are used.
/// @param[in,out] arena Dedicated caller region for decoded dynamic/nested arrays.
/// @param[out] value Actual complete Incoming only on 0; ignore partial out-value
/// and discard its dedicated partial decode region after failure.
/// @return Original unsigned poll/decode status, or malformed/zero ID 22.
/// @permissions Exact original server/type and delivery admission grant.
/// @see Incoming; respondValue; roswasm.Owner.poll; Arena
uint pollIncoming(T)(Owner owner, ubyte[] scratch, ref Arena arena, out Incoming!T value) {
    auto r=owner.poll(scratch);if(r.code) return r.code;
    if(r.data.length<8) return 22;value.id=id(r.data);
    if(value.id==0) return 22;return T.decode(r.data[8..$],arena,value.value);
}
/// @brief Respond once with the complete selected original Service response.
/// @details Writes exact request ID8 plus all selected response fields and requires
/// empty successful RPC output. No default response or response right is created.
/// @param[in] T Complete original response type with compatible encode.
/// @param[in] owner Independently granted exact response owner for this Service.
/// @param[in] requestId Actual nonzero incoming ID from this Instance/backend.
/// @param[in] value Complete immutable response, stable through encoding/call return.
/// @param[out] scratch Exclusive caller storage for ID8 plus the full canonical body.
/// @return Original unsigned codec/Host status, zero-ID 22 or prefix capacity 90.
/// An uncertain native response is never automatically replayed.
/// @permissions Exact respond/type/direction/quota/deadline grant.
/// @see pollIncoming; Incoming.id; roswasm.Owner.request
uint respondValue(T)(Owner owner, ulong requestId, const ref T value, ubyte[] scratch) {
    if(requestId==0) return 22;if(scratch.length<8) return 90;
    size_t n;auto c=value.encode(scratch[8..$],n);if(c) return c;
    putId(scratch,requestId);return owner.request(RPC.service_respond,scratch[0..8+n],null).code;
}
/// @brief Submit one complete original Action goal and verify its actual admitted ID.
/// @details Requires exactly eight successful bytes and a nonzero full u64 ID.
/// Goal admission is distinct from feedback or terminal native completion.
/// @param[in] T Complete selected original goal type with compatible encode.
/// @param[in] owner Independently granted exact Action goal owner.
/// @param[in] goal Complete immutable original goal, stable through encoding/call.
/// @param[out] scratch Exclusive caller buffer for the entire canonical goal body.
/// @param[out] goalId Actual nonzero original ID only on 0; ignore on nonzero status.
/// @return Original unsigned codec/send status, or malformed/zero ID 22.
/// A possibly admitted native goal is never automatically resubmitted.
/// @permissions Exact goal/type/direction/quota/deadline grant.
/// @see feedbackValue; resultValue; cancelOwnGoal
uint sendGoalValue(T)(Owner owner, const ref T goal, ubyte[] scratch, out ulong goalId) {
    size_t n;auto c=goal.encode(scratch,n);if(c) return c;
    ubyte[8] output;auto r=owner.request(RPC.action_send_goal,scratch[0..n],output);if(r.code) return r.code;
    if(r.data.length!=8) return 22;goalId=id(r.data);return goalId==0 ? 22 : 0;
}
/// @brief Request cancellation of one exact goal actually owned by this client.
/// @details Checks exact one-byte canonical Boolean output. An accepted request
/// does not manufacture a completed terminal Action result or rollback prior effects.
/// @param[in] owner Independently granted exact own-goal cancellation owner.
/// @param[in] goalId Actual nonzero original ID from this Instance/backend.
/// @param[out] accepted Actual native Boolean only after status 0; ignore on refusal.
/// @return Original unsigned Host status or malformed ID/Boolean/output extent 22.
/// @permissions Exact own-goal/type/quota/deadline cancellation grant.
/// @see sendGoalValue; resultValue; roswasm.Owner.request
uint cancelOwnGoal(Owner owner, ulong goalId, out bool accepted) {
    if(goalId==0) return 22;ubyte[8] input;putId(input,goalId);ubyte[1] output;
    auto r=owner.request(RPC.action_cancel_own_goal,input,output);if(r.code) return r.code;
    if(r.data.length!=1 || r.data[0]>1) return 22;accepted=r.data[0]==1;return 0;
}
/// @brief Receive and completely decode feedback for one exact admitted Action goal.
/// @details Verifies the actual returned ID before every selected feedback field.
/// No idle/refusal becomes a last/default feedback value or automatic receive retry.
/// @param[in] T Complete selected original feedback type with compatible decode.
/// @param[in] owner Independently granted exact feedback owner for this Action.
/// @param[in] goalId Actual nonzero original goal ID expected in the response envelope.
/// @param[out] output Exclusive caller ID8/body buffer, retained unchanged for
/// decoded borrowed string/raw fields.
/// @param[in,out] arena Dedicated caller region retained for decoded dynamic/nested arrays.
/// @param[out] value Complete T only after status 0; ignore partial/default out-values on error.
/// @return Original unsigned RPC/decode status or malformed/mismatched/zero ID 22.
/// @permissions Exact feedback/type/goal/quota/deadline grant.
/// @see sendGoalValue; resultValue; Arena; roswasm.Owner.request
uint feedbackValue(T)(Owner owner, ulong goalId, ubyte[] output, ref Arena arena, out T value) {
    if(goalId==0) return 22;ubyte[8] input;putId(input,goalId);
    auto r=owner.request(RPC.action_receive_feedback,input,output);if(r.code) return r.code;
    if(r.data.length<8 || id(r.data)!=goalId) return 22;return T.decode(r.data[8..$],arena,value);
}
/// @brief Complete terminal Action result with original goal ID and outcome.
/// @details Only checked resultValue establishes an actual validated observation.
/// Public direct construction grants no native completion, identity or rights.
/// @param[in] T Complete selected original result component type.
/// @see resultValue; actionReplyValue; sendGoalValue
struct Terminal(T) {
    /// @brief Full original goal ID verified against the caller's requested nonzero ID.
    /// @details Never narrow it or transfer it between Instance/backend owner associations.
    /// @see resultValue; sendGoalValue
    ulong id;
    /// @brief Original terminal discriminator, checked as 2 through 4 on receive.
    /// @details Preserve its selected schema meaning without coercing unknown values.
    /// @see resultValue; actionReplyValue
    ubyte outcome;
    /// @brief Complete decoded original result with every selected field.
    /// @details Retain both caller output and Arena backing while its borrowed
    /// raw/string fields and allocated arrays/nested regions are used.
    /// @see resultValue; Arena; Reader
    T value;
}
/// @brief Receive one complete terminal result for the exact original Action goal.
/// @details Verifies ID equality, actual outcome 2 through 4 and every selected
/// result field. Timeout/refusal never becomes a fabricated terminal outcome.
/// @param[in] T Complete original result component with compatible decode.
/// @param[in] owner Exact separately granted result owner for the selected Action.
/// @param[in] goalId Actual nonzero original ID expected in this Instance/backend.
/// @param[out] output Exclusive caller ID8/outcome/body buffer, retained unchanged
/// while any decoded field borrows its bytes.
/// @param[in,out] arena Dedicated caller region retained with dynamic/nested arrays.
/// @param[out] value Actual complete Terminal only after 0; ignore partial out-values
/// and discard the dedicated partial decode region after refusal.
/// @return Original unsigned RPC/decode status, or malformed/mismatched envelope 22.
/// @permissions Exact result/type/goal/quota/deadline grant.
/// @see Terminal; feedbackValue; actionReplyValue; Arena
uint resultValue(T)(Owner owner, ulong goalId, ubyte[] output, ref Arena arena, out Terminal!T value) {
    if(goalId==0) return 22;ubyte[8] input;putId(input,goalId);
    auto r=owner.request(RPC.action_receive_result,input,output);if(r.code) return r.code;
    if(r.data.length<9 || id(r.data)!=goalId || r.data[8]<2 || r.data[8]>4) return 22;
    value.id=goalId;value.outcome=r.data[8];return T.decode(r.data[9..$],arena,value.value);
}
/// @brief Send complete selected Action server feedback or terminal response once.
/// @details Writes exact ID8, original kind and all component fields. The trusted
/// selected Action schema determines which complete component each kind requires.
/// @param[in] T Complete original response component with compatible encode.
/// @param[in] owner Independently granted exact Action-response owner.
/// @param[in] goalId Actual nonzero incoming goal ID from this Instance/backend.
/// @param[in] kind Exact original response discriminator, inclusive range 1 through 4.
/// @param[in] value Complete immutable component selected by that kind/schema.
/// @param[out] scratch Exclusive caller storage for ID8, kind and the entire canonical body.
/// @return Original unsigned codec/Host status, invalid ID/kind 22 or prefix capacity 90.
/// No uncertain native feedback/result send is automatically retried.
/// @permissions Exact Action response/type/direction/quota/deadline grant.
/// @see Terminal; roswasm.Owner.request; resultValue
uint actionReplyValue(T)(Owner owner, ulong goalId, ubyte kind, const ref T value, ubyte[] scratch) {
    if(goalId==0 || kind<1 || kind>4) return 22;if(scratch.length<9) return 90;
    size_t n;auto c=value.encode(scratch[9..$],n);if(c) return c;
    putId(scratch,goalId);scratch[8]=kind;
    return owner.request(RPC.action_respond,scratch[0..9+n],null).code;
}

// Initialize at final address; label and every state/callback backing store
// must outlive this local Node. It creates no native context or identity.
/// @brief Caller-owned local application label and fixed Session ownership pool.
/// @details Keep the embedded resources at its final address without copying or
/// resetting while any Owner/Executor view survives. The label opens no native
/// Node, context, namespace, parameter store or implicit operation grant.
/// @param[in] capacity Compile-time positive owner ceiling accepted by Session, at most 1024.
/// @see Node.initialize; Node.open; Node.close; Session
struct Node(size_t capacity) {
    /// @brief Embedded fixed pool retaining all original State cell addresses.
    /// @details Never copy, move or reset it while borrowed Owner/Executor views
    /// survive; those views still refer to the original cell addresses.
    /// @see Session; Node.open; Node.close
    Session!capacity resources;
    /// @brief Borrowed explicit local application label after initialize.
    /// @details Retain backing bytes unchanged. Direct field changes remain local
    /// data and cannot select a native Node name, namespace or operation authority.
    /// @see Node.initialize; Node.open
    const(ubyte)[] label;
    /// @brief Validate and retain one explicit application label without a Host call.
    /// @details Intended once on a final-address zero Node. A nonempty existing
    /// label refuses reinitialization; no resource pool or owner generation is reset.
    /// @param[in] name Nonempty complete UTF-8 bytes, at most 255, no NUL; retain
    /// the allocation unchanged for the Node label lifetime.
    /// @return Local success 0, invalid label 22 or existing nonempty label 17.
    /// @see Node.label; validUtf8; Node.open
    uint initialize(const(ubyte)[] name) {
        if(name.length==0 || name.length>255 || !validUtf8(name,true)) return 22;
        if(label.length) return 17;label=name;return 0;
    }
    /// @brief Open and retain an exact independently granted alias in this fixed pool.
    /// @details Delegates to Session.open. The local label supplies no authority
    /// and is not used as an authorization or readiness check by this operation.
    /// @param[in] aliasBytes Exact explicit alias accepted by roswasm.open.
    /// @param[out] owner Unused destination for the stable-cell view; ignore on nonzero
    /// and never overwrite a different sole live owner that still needs cleanup.
    /// @return Original Session/open status; 0 publishes the actual borrowed Owner.
    /// @permissions Exact preexisting current-Instance/backend alias grant.
    /// @see Session.open; roswasm.open; Node.close
    uint open(const(ubyte)[] aliasBytes, out Owner owner) {
         return resources.open(aliasBytes,owner);
    }
    /// @brief Permanently close the fixed local pool and preserve all independent statuses.
    /// @details Uses Session.close's busy preflight and newest-first close order.
    /// No native ROS Node is destroyed/replaced by this local facade operation.
    /// @param[out] statuses Caller-owned fixed array assigned by Session.close;
    /// actual used-slot results stay separate from earlier primary errors.
    /// @return Local admission/iteration 0, already closed 9 or busy owner 17.
    /// Outer 0 does not assert every actual raw close succeeded.
    /// @see Session.close; roswasm.Owner.close; Node.resources
    uint close(ref uint[capacity] statuses) {
         return resources.close(statuses);
    }
}
/// @brief Synchronous caller Guest function for one actual successful event prefix.
/// @details Called only during explicit dispatch/spin, never by a native thread.
/// The @nogc nothrow handler completely decodes its selected schema and preserves
/// its original unsigned status. Traps are not recoverable status returns.
/// @param[in] 1 Complete immutable event bytes borrowing the caller output buffer;
/// retain no dangling view beyond its next write without independently copying it.
/// @param[in] 2 Exact caller-owned Guest context pointer, possibly null if valid
/// for the concrete handler; retain its allocation/type through all invocations.
/// @return 0 for a completed handler, otherwise its original unsigned refusal.
/// @see Executor.Entry; Executor.add; Executor.spinOnce; roswasm.Owner.dispatchCallback
alias Callback=uint function(const(ubyte)[],void*) @nogc nothrow;
/// @brief Fixed caller-driven polling table with no implicit native executor.
/// @details Initialize at its final address. Retains caller owners, buffers,
/// function/context values; it opens/closes none of those raw owners. No GC,
/// hidden allocator, clock, sleep, worker thread or automatic retry is supplied.
/// @param[in] capacity Compile-time positive entry ceiling, inclusive maximum 1024.
/// @see Executor.add; Executor.spinOnce; Executor.close; Callback
struct Executor(size_t capacity) if(capacity>0 && capacity<=1024) {
    /// @brief Complete local registration value for one owner/buffer/Guest function.
    /// @details Public construction grants no liveness/schema/Host validation.
    /// Retain every referenced allocation for the complete registration lifetime.
    /// @see Executor.add; Callback; roswasm.Owner.dispatchCallback
    struct Entry {
        /// @brief Shared original State-backed event/subscription owner view.
        /// @details Keep its cell at a stable final address; registration alone
        /// does not prevent ordinary explicit retirement or authenticate a handle.
        /// @see roswasm.Owner; roswasm.State; Executor.spinOnce
        Owner owner;
        /// @brief Exclusive caller complete-event output buffer.
        /// @details Keep it stable; its next write invalidates old decoded
        /// borrowed views unless the handler copied their bytes independently.
        /// @see Callback; roswasm.Owner.poll; roswasm.Result.data
        ubyte[] output;
        /// @brief Non-null caller Guest function retained until table close.
        /// @details Runs under the owner's nonblocking lease after actual poll;
        /// failure can follow event consumption and is not automatically retried.
        /// @see Callback; roswasm.Owner.dispatchCallback
        Callback callback;
        /// @brief Exact caller-owned Guest context pointer forwarded unchanged.
        /// @details May be null if the concrete handler permits it. This is not
        /// a Native ROS pointer or an allocation owned/freed by the executor.
        /// @see Callback; Executor.add
        void* context;
    }
    private Entry[capacity] entries;
    private size_t used;
    private bool busy,closed;
    /// @brief Retain one explicit owner/buffer/function/context registration.
    /// @details Opens no subscription or native endpoint. Actual owner liveness
    /// and Host rights are checked during later polling, not inferred here.
    /// Duplicate owners remain separate ordered entries.
    /// @param[in] owner Original exact State-backed view retained by value;
    /// its underlying cell remains stable through the registration lifetime.
    /// @param[out] output Exclusive complete-event buffer, at most maximumOutput bytes;
    /// retain it through callbacks and every decoded borrowed-value use.
    /// @param[in] callback Non-null synchronous @nogc nothrow Guest handler.
    /// @param[in] context Exact caller-owned Guest context, possibly null if valid
    /// for callback; retain its concrete allocation/type through every invocation.
    /// @return Local success 0, busy 17, closed 9, nil callback 22 or capacity 90.
    /// @permissions None added; actual later polls use exact independent owner grants.
    /// @see Executor.spinOnce; Executor.close; Entry; Callback
    uint add(Owner owner, ubyte[] output, Callback callback, void* context=null) {
        if(busy) return 17;if(closed) return 9;if(callback is null) return 22;
        if(used==capacity || output.length>maximumOutput) return 90;
        entries[used++]=Entry(owner,output,callback,context);return 0;
    }
    /// @brief Poll each registered entry at most once in one ordered caller-thread step.
    /// @details Skips only actual idle 11. Successful bytes precede one handler
    /// under its owner lease. Any other error stops after already completed
    /// effects; neither consumed events nor handler work are rolled back/retried.
    /// @param[out] delivered Number of fully completed callbacks, preserved even
    /// with a later nonzero status. D out initialization starts it at 0.
    /// @return 0 for whole-step success or original poll/handler refusal; busy 17
    /// and closed 9 refuse before any poll. Traps promise no ordinary completion.
    /// @permissions Existing exact owner/schema/delivery/quota/deadline grants only.
    /// @see Executor.add; Executor.close; Callback; roswasm.Owner.poll
    uint spinOnce(out size_t delivered) {
        if(busy) return 17;if(closed) return 9;busy=true;scope(exit) busy=false;
        foreach(ref entry;entries[0..used]) {
            auto r=entry.owner.poll(entry.output);if(r.code==11) continue;if(r.code) return r.code;
            auto c=entry.owner.dispatchCallback(r.data,entry.callback,entry.context);if(c) return c;++delivered;
        }
        return 0;
    }
    /// @brief Permanently close this local table and clear retained registrations.
    /// @details Drops function/context/owner references without freeing caller
    /// buffers or closing/revoking raw owners. Their original Session/caller owns
    /// physical cleanup; no native executor shutdown or allocation is performed.
    /// @return Local success 0, busy step 17 or already closed 9 before mutation.
    /// @permissions None; no Host call, reopen or automatic retry occurs.
    /// @see Executor.spinOnce; roswasm.Session.close; roswasm.Owner.close
    uint close() {
         if(busy) return 17;
        if(closed) return 9;
        closed=true;
        entries[]=Entry.init;
        used=0;
        return 0;
    }
}
