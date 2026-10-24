// Complete generated records conform to Canonical; aliases retain Host types.
/// @brief Complete original business-ABI incoming Service request and correlation ID.
/// @details Owns the decoded Value after exact ID/body checks. This legacy
/// envelope is independent of the separately required original-control raw12 path.
/// @see Owner.incoming; Owner.respond; Canonical
public struct Incoming<Value> {
  /// @brief Exact nonzero u64 request ID from the original incoming envelope.
  /// @details Retain its full width and use only its original Instance/backend.
  /// @see Owner.incoming; Owner.respond
  public let id: UInt64
  /// @brief Complete independently owned decoded request value.
  /// @details No field projection, borrowed Host pointer or default request is supplied.
  /// @see Canonical.decode; Owner.incoming
  public let value: Value
}
/// @brief Complete terminal Action result with original goal ID and outcome.
/// @details Owns its full decoded result. The outcome remains the actual checked
/// wire discriminator; a timeout/refusal never becomes a synthetic terminal value.
/// @see Owner.result; Owner.actionReply; Canonical
public struct Terminal<Value> {
  /// @brief Exact nonzero original goal ID verified against the caller's request.
  /// @details Never narrow it or treat it as another owner's goal/permission.
  /// @see Owner.sendGoal; Owner.result
  public let id: UInt64
  /// @brief Original terminal outcome discriminator, inclusive range 2 through 4.
  /// @details Retain the selected schema's meaning without coercing an unknown value.
  /// @see Owner.result; Owner.actionReply
  public let outcome: UInt8
  /// @brief Complete independently owned canonical result component.
  /// @details Preserves every original field and rejects trailing/truncated content.
  /// @see Canonical.decode; Owner.result
  public let value: Value
}
private func idBytes(_ id: UInt64) throws -> [UInt8] {
  guard id != 0 else { throw RosError(22) }
  var w = try WireWriter(limit: 8)
  try w.integer(id)
  return w.bytes
}
extension Owner {
  /// @brief Encode and publish one complete selected canonical message.
  /// @details Encodes every original field before the single checked raw publish.
  /// No native type identity, alias or publisher grant comes from the Swift type.
  /// @param[in] value Complete immutable selected message through encoding.
  /// @throws Error Original conformance failure or checked RosError codec/capacity/
  /// owner/Host status; no effect is replayed.
  /// @permissions Exact publisher alias/type/direction/quota/deadline grant.
  /// @see Canonical.encode; Owner.publish; Owner.close
  public func publish<Value: Canonical>(_ value: Value) throws { try publish(value.encode()) }
  /// @brief Poll and completely decode one actual selected message value.
  /// @details Uses the type's original byte ceiling and exact-end decode. A
  /// legacy event may already be consumed when decoding/capacity fails.
  /// @param[in] type Exact selected complete message metatype and canonical contract.
  /// @return Independently owned complete Value from an actual successful poll.
  /// @throws Error Original conformance failure or poll/wire RosError, including
  /// actual idle 11. No default value is returned after a refusal.
  /// @permissions Original exact subscription/observer and delivery grants.
  /// @see Canonical.decode; Owner.poll; Executor.spinOnce
  public func poll<Value: Canonical>(_ type: Value.Type) throws -> Value {
    try Value.decode(poll(capacity: Value.maximumWireBytes))
  }
  /// @brief Make one original business-ABI call with complete request/response types.
  /// @details Encodes Q, performs the exact service_call RPC and fully decodes S.
  /// This route does not provide the distinct original-control owned raw12 transport.
  /// @param[in] request Complete original request value, unchanged through encoding.
  /// @param[in] response Exact complete response metatype with its original byte ceiling.
  /// @return Independently owned fully decoded successful response S.
  /// @throws Error Original conformance failure or checked encode/RPC/decode
  /// RosError status. Timeout can follow an admitted native effect; no replay occurs.
  /// @permissions Exact Service/type/direction/quota/deadline call grant.
  /// @see Owner.request; Canonical; Owner.incoming
  public func call<Q: Canonical, S: Canonical>(_ request: Q, response: S.Type) throws -> S {
    try S.decode(self.request(.service_call, request.encode(), capacity: S.maximumWireBytes))
  }
  /// @brief Poll one complete original business-ABI server request envelope.
  /// @details Checks its eight-byte nonzero ID, exact complete Q decode and
  /// envelope exhaustion. Original-control Services require their separate raw12 path.
  /// @param[in] type Exact complete selected request metatype and byte ceiling.
  /// @return Owned Incoming containing the actual ID and all request fields.
  /// @throws Error Original conformance failure or checked poll/decode RosError;
  /// malformed/zero ID or trailing data uses 22. A consumed event is not retried.
  /// @permissions Exact server advertisement/type and incoming-delivery grant.
  /// @see Owner.advertiseService; Owner.respond; Incoming
  public func incoming<Q: Canonical>(_ type: Q.Type) throws -> Incoming<Q> {
    let bytes = try poll(capacity: Q.maximumWireBytes + 8)
    var r = try WireReader(bytes, limit: Q.maximumWireBytes + 8)
    let id = try r.integer(UInt64.self)
    guard id != 0 else { throw RosError(22) }
    let value = try Q.decode(r.take(bytes.count - 8))
    try r.finish()
    return Incoming(id: id, value: value)
  }
  /// @brief Respond once with the complete selected original Service response.
  /// @details Encodes exact ID8 plus all response fields and requires empty
  /// successful RPC output. No default response or alias is manufactured.
  /// @param[in] id Exact nonzero incoming request ID from this Instance/backend.
  /// @param[in] response Complete immutable response value through encoding.
  /// @throws Error Original conformance failure or checked RosError: zero ID 22,
  /// original RPC status or malformed output. An uncertain send is not replayed.
  /// @permissions Independently granted exact respond/type/quota/deadline owner.
  /// @see Owner.incoming; Owner.request; Incoming.id
  public func respond<S: Canonical>(_ id: UInt64, _ response: S) throws {
    let b = try idBytes(id) + response.encode()
    _ = try request(.service_respond, b, capacity: 0)
  }
  /// @brief Submit one complete selected Action goal and check its actual ID.
  /// @details Requires exactly one successful eight-byte output and a nonzero
  /// u64 ID. Goal admission is independent of feedback or terminal completion.
  /// @param[in] goal Complete immutable original goal value through encoding.
  /// @return Exact full-width nonzero admitted goal ID.
  /// @throws Error Original conformance failure or checked encode/send RosError;
  /// malformed/zero ID uses 22. A possibly admitted goal is never resubmitted.
  /// @permissions Exact Action goal/type/direction/quota/deadline grant.
  /// @see Owner.feedback; Owner.result; Owner.cancelOwnGoal
  public func sendGoal<G: Canonical>(_ goal: G) throws -> UInt64 {
    let b = try request(.action_send_goal, goal.encode(), capacity: 8)
    var r = try WireReader(b, limit: 8)
    let id = try r.integer(UInt64.self)
    try r.finish()
    guard id != 0 else { throw RosError(22) }
    return id
  }
  /// @brief Request cancellation of one goal actually owned by this Action client.
  /// @details Checks exact one-byte canonical Boolean output. A successful
  /// cancellation request does not manufacture an already completed terminal result.
  /// @param[in] id Exact nonzero goal ID issued to this original Instance/backend.
  /// @return Actual accepted cancellation Boolean from the selected native operation.
  /// @throws RosError Zero ID/noncanonical/trailing output 22 or original Host status.
  /// @permissions Exact independently admitted own-goal cancellation grant.
  /// @see Owner.sendGoal; Owner.result; Owner.request
  public func cancelOwnGoal(_ id: UInt64) throws -> Bool {
    let b = try request(.action_cancel_own_goal, idBytes(id), capacity: 1)
    var r = try WireReader(b, limit: 1)
    let result = try r.boolean()
    try r.finish()
    return result
  }
  /// @brief Receive complete selected feedback for one exact admitted goal.
  /// @details Checks returned ID equality before decoding every feedback field
  /// with exact-end semantics. No last/default feedback replaces idle/refusal.
  /// @param[in] id Exact nonzero original goal ID expected in the response envelope.
  /// @param[in] type Complete selected feedback metatype and original byte ceiling.
  /// @return Independently owned complete F from the actual matching envelope.
  /// @throws Error Original conformance failure or checked RPC/wire RosError;
  /// mismatched/truncated ID uses 22. Consumed output is not replayed after failure.
  /// @permissions Exact feedback/type/goal/quota/deadline owner grant.
  /// @see Owner.sendGoal; Owner.result; Canonical.decode
  public func feedback<F: Canonical>(_ id: UInt64, _ type: F.Type) throws -> F {
    let b = try request(.action_receive_feedback, idBytes(id), capacity: F.maximumWireBytes + 8)
    var r = try WireReader(b, limit: F.maximumWireBytes + 8)
    guard try r.integer(UInt64.self) == id else { throw RosError(22) }
    return try F.decode(r.take(b.count - 8))
  }
  /// @brief Receive one complete terminal result for the exact owned Action goal.
  /// @details Verifies ID equality, original outcome in 2 through 4 and every
  /// result field. Keeps the actual terminal discriminator beside the owned value.
  /// @param[in] id Exact nonzero original goal ID expected in this Instance/backend.
  /// @param[in] type Complete original result metatype and canonical byte ceiling.
  /// @return Owned Terminal preserving actual ID, outcome and complete R.
  /// @throws Error Original conformance failure or checked RPC/wire RosError;
  /// malformed/mismatched envelopes use 22. Refusal creates no terminal outcome.
  /// @permissions Exact result/type/goal/quota/deadline owner grant.
  /// @see Terminal; Owner.sendGoal; Owner.feedback
  public func result<R: Canonical>(_ id: UInt64, _ type: R.Type) throws -> Terminal<R> {
    let b = try request(.action_receive_result, idBytes(id), capacity: R.maximumWireBytes + 9)
    var r = try WireReader(b, limit: R.maximumWireBytes + 9)
    guard try r.integer(UInt64.self) == id else { throw RosError(22) }
    let outcome = try r.integer(UInt8.self)
    guard (2...4).contains(outcome) else { throw RosError(22) }
    return Terminal(id: id, outcome: outcome, value: try R.decode(r.take(b.count - 9)))
  }
  /// @brief Send one complete selected Action server feedback/terminal reply.
  /// @details Writes exact ID8 plus kind plus the complete selected component;
  /// the trusted Action schema determines which component is valid for each kind.
  /// @param[in] id Actual nonzero incoming goal ID from this Instance/backend.
  /// @param[in] kind Exact original reply discriminator, inclusive range 1 through 4.
  /// @param[in] value Complete component required by that selected kind and Action schema.
  /// @throws Error Original conformance failure or checked RosError: invalid
  /// ID/kind 22, Host status or nonempty output. Uncertain native sends are not retried.
  /// @permissions Exact Action response/type/direction/quota/deadline grant.
  /// @see Owner.request; Terminal; Canonical.encode
  public func actionReply<V: Canonical>(_ id: UInt64, kind: UInt8, _ value: V) throws {
    guard (1...4).contains(kind) else { throw RosError(22) }
    let b = try idBytes(id) + [kind] + value.encode()
    _ = try request(.action_respond, b, capacity: 0)
  }
}

/// Local Node owns one bounded Session. Labels do not select native identities.
/// @brief Application label with one bounded local Session ownership group.
/// @details This facade creates no native Node/context, namespace, parameter store
/// or implicit alias. Use only one admitted caller thread and explicit cleanup.
/// @see Node.init; Node.open; Node.close; Session
public final class Node {
  /// @brief Exact application-supplied nonempty UTF-8 label, at most 255 bytes.
  /// @details Contains no NUL and selects no native Node name, namespace or authority.
  /// @see Node.init; Node.open
  public let name: String
  private let session: Session
  /// @brief Validate a local application label and construct bounded Session storage.
  /// @details Performs no Host open or native ROS construction. Swift allocation
  /// failure can trap rather than return an ordinary recoverable RosError.
  /// @param[in] name Explicit nonempty label, at most 255 UTF-8 bytes, without NUL.
  /// @param[in] capacity Positive local owner capacity, at most 1024.
  /// @return New labelled local ownership group with no opened owners.
  /// @throws RosError Invalid label/capacity 22 before any Host call.
  /// @see Node.name; Session.init; Node.close
  public init(name: String, capacity: Int) throws {
    guard !name.isEmpty, name.utf8.count <= 255, !name.utf8.contains(0) else { throw RosError(22) }
    self.name = name
    session = try Session(capacity: capacity)
  }
  /// @brief Open and retain one exact independently granted alias in this Node group.
  /// @details Delegates to its bounded Session; the application label confers no rights.
  /// @param[in] alias Exact explicit Host-policy alias, as required by Owner.open.
  /// @return Shared Owner retained for explicit reverse cleanup.
  /// @throws RosError Closed/full Session or original checked open error.
  /// @permissions Current Instance/backend's exact independently supplied alias grant.
  /// @see Session.open; Owner.open; Node.close
  public func open(_ alias: String) throws -> Owner { try session.open(alias) }
  /// @brief Permanently close this Node's Session in reverse owner order.
  /// @details Busy-owner preflight precedes group mutation. Returned cleanup
  /// failures stay distinct; this operation creates no replacement native Node.
  /// @return Owned array of independently observed owner-close failures.
  /// @throws RosError Already closed 9 or busy owner 17 before retirement starts.
  /// @see Session.close; Owner.close; RosError
  public func close() throws -> [RosError] { try session.close() }
}

/// @brief Bounded caller-driven typed poll/callback scheduler.
/// @details Retains owners and closures without opening or closing those owners.
/// A step polls each registered entry at most once in insertion order. It creates
/// no native executor, worker thread, clock, sleep or implicit operation policy.
/// @see Executor.add; Executor.spinOnce; Executor.close; Owner
public final class Executor {
  private struct Entry {
    let owner: Owner
    let capacity: Int
    let callback: ([UInt8]) throws -> Void
  }
  private var entries: [Entry] = []
  private let capacity: Int
  private var busy = false, closed = false
  /// @brief Construct an empty local callback table with an explicit entry ceiling.
  /// @details Reserves only Swift storage; allocation failure may trap and is
  /// distinct from an ordinary checked RosError refusal.
  /// @param[in] capacity Positive callback-entry ceiling, inclusive maximum 1024.
  /// @return New open idle Executor with no registered entries or ROS grants.
  /// @throws RosError Invalid capacity 22 before any Host operation.
  /// @see Executor.add; Executor.close
  public init(capacity: Int) throws {
    guard capacity > 0, capacity <= 1024 else { throw RosError(22) }
    self.capacity = capacity
    entries.reserveCapacity(capacity)
  }
  /// @brief Retain one explicit owner and complete typed callback registration.
  /// @details Captures the owner/closure until Executor.close. No subscription
  /// is activated. Duplicate owner registrations remain separate ordered entries.
  /// @param[in] owner Existing separately granted Owner, retained by reference.
  /// @param[in] type Exact complete canonical metatype and its original byte ceiling.
  /// @param[in] callback Escaping caller closure receiving a fully owned decoded Value;
  /// retain its captured state through registration lifetime.
  /// @throws RosError Busy 17, closed 9 or entry capacity 90 before registration.
  /// @permissions Registration adds no authority; actual later polls use the owner grant.
  /// @see Executor.spinOnce; Executor.close; Canonical.decode
  public func add<Value: Canonical>(
    _ owner: Owner, type: Value.Type, callback: @escaping (Value) throws -> Void
  ) throws {
    guard !busy else { throw RosError(17) }
    guard !closed else { throw RosError(9) }
    guard entries.count < capacity else { throw RosError(90) }
    entries.append(
      Entry(
        owner: owner, capacity: Value.maximumWireBytes, callback: { try callback(Value.decode($0)) }
      ))
  }
  /// Polls each entry at most once. No clock, sleep, native thread or retry.
  /// @brief Perform one finite ordered polling/callback step on the caller thread.
  /// @details Skips only actual idle status 11. Complete decode precedes one
  /// callback under that owner's lease. Reentry/add/close refuses while stepping;
  /// any other error stops after the already completed prefix, without replay.
  /// @return Number of callbacks completed during a successful entire step.
  /// @throws RosError Busy 17, closed 9 or original checked poll/wire refusal.
  /// @throws Error Original conformer/handler failure of any Swift Error type.
  /// A handler error can follow event consumption and is never automatically retried.
  /// @permissions Existing independent owner/type/delivery grants only.
  /// @see Executor.add; Executor.close; Owner.poll; Owner.close
  public func spinOnce() throws -> Int {
    guard !busy else { throw RosError(17) }
    guard !closed else { throw RosError(9) }
    busy = true
    defer { busy = false }
    var delivered = 0
    for entry in entries {
      let bytes: [UInt8]
      do { bytes = try entry.owner.poll(capacity: entry.capacity) } catch let e as RosError
        where e.code == 11
      { continue }
      try entry.owner.dispatchCallback { try entry.callback(bytes) }
      delivered += 1
    }
    return delivered
  }
  /// @brief Permanently close this local scheduler and release retained registrations.
  /// @details Drops captured closures and Owner references. It does not close,
  /// revoke or reopen any raw owner; its Session/caller still owns that cleanup.
  /// @throws RosError Busy step 17 or already closed 9 before table mutation.
  /// @permissions None; no Host operation or native executor shutdown is issued.
  /// @see Executor.spinOnce; Owner.close; Session.close
  public func close() throws {
    guard !busy else { throw RosError(17) }
    guard !closed else { throw RosError(9) }
    closed = true
    entries = []
  }
}
