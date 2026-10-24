// Caller-driven wasm32 resource ownership. All operations are synchronous.
// Use on one Guest execution thread; do not transfer an Owner between actors.
/// @brief Original unsigned ROS Guest status with optional observed capacity.
/// @details Owns copied status values. A timeout can follow an admitted native
/// effect; neither throwing this error nor copying it makes a retry safe.
/// @see Owner.request; Owner.poll; Session.close
public struct RosError: Error, Equatable {
  /// @brief Original unsigned Host errno or local contract-refusal code.
  /// @details Normal checked calls throw nonzero codes. The public initializer
  /// preserves its exact input, including 0, without performing an operation.
  /// @see RosError.init; RosError.required
  public let code: UInt32
  /// @brief Observed required byte extent, or nil when no extent was established.
  /// @details Checked I/O sets this only for status 90 with an overwritten
  /// UInt64.max length sentinel. This advisory value reserves no capacity.
  /// @see Owner.request; Owner.poll; RosError.code
  public let required: UInt64?
  /// @brief Construct an owned error value without calling the Host.
  /// @details Does not validate a grant, replay an effect or change owner state.
  /// @param[in] code Complete unsigned status preserved without narrowing.
  /// @param[in] required Optional original observed byte requirement; nil if unknown.
  /// @return New value owning both copied status fields.
  /// @see RosError.code; RosError.required
  public init(_ code: UInt32, required: UInt64? = nil) {
    self.code = code
    self.required = required
  }
}

/// @brief Complete four-word snapshot from one versioned readiness observation.
/// @details Values report current state only. They reserve no event, queue slot,
/// asynchronous admission or subsequent-operation quota.
/// @see Owner.ready; Owner.watch; Owner.poll
public struct Readiness {
  /// @brief Current ready event-record count as an unsigned 64-bit value.
  /// @details Zero is an idle observation and does not close an owner.
  /// @see Owner.ready; Owner.poll
  public let events: UInt64
  /// @brief Complete next event extent in bytes, including its versioned envelope.
  /// @details A later poll performs independent state, capacity and quota checks.
  /// @see Owner.poll; Readiness.events
  public let nextBytes: UInt64
  /// @brief Currently available asynchronous admission slots.
  /// @details The snapshot does not reserve a later Service submission slot.
  /// @see Owner.submit; Readiness.admissionBytes
  public let admissionSlots: UInt64
  /// @brief Currently available asynchronous admission-byte budget.
  /// @details Exact schema, alias and Host policy can require a smaller body.
  /// @see Owner.submit; Readiness.admissionSlots
  public let admissionBytes: UInt64
}

private func offset(_ p: UnsafeRawPointer?) -> UInt64 {
  p.map { UInt64(UInt(bitPattern: $0)) } ?? 0
}

/// Reference identity shares retirement and the operation lease across aliases.
/// Explicit close reports its status. No finalizer can guarantee trap cleanup.
/// @brief Shared reference identity for one same-Instance/backend opaque handle.
/// @details Copies share retirement and one nonblocking operation/callback lease.
/// All pointer spans stay within synchronous Swift buffer-borrow closures. Use
/// one admitted Guest thread; actor transfer or concurrent mutation is unsupported.
/// There is no implicit reopen, deinit cleanup, executor or background callback.
/// @permissions Each operation needs its exact preexisting Host grant; opening
/// an alias or selecting an SDK never installs policy or changes a native type.
/// @see Owner.open; Owner.close; Owner.revoke; Session
public final class Owner {
  fileprivate var handle: UInt64
  fileprivate var busy = false
  /// @brief Inclusive local request-data ceiling, 4193786 bytes.
  /// @details Fits the original 4 MiB IPC envelope; an alias/schema can allow less.
  /// This constant does not allocate storage or reserve a Host quota.
  /// @see Owner.request; Owner.publish; Owner.maximumOutput
  public static let maximumRequest = 4_193_786
  /// @brief Inclusive local output-allocation ceiling, 4194304 bytes.
  /// @details Allocating this capacity admits no record, operation or ROS right.
  /// @see Owner.request; Owner.poll; Owner.maximumRequest
  public static let maximumOutput = 4_194_304
  private init(_ h: UInt64) { handle = h }

  /// @brief Open one exact alias already granted to the current Guest Instance.
  /// @details Borrows exact UTF-8 bytes in memory 0, checks original status and
  /// the returned nonzero u64 handle, then publishes its shared reference owner.
  /// @param[in] alias Explicit nonempty alias, at most 255 UTF-8 bytes, without NUL.
  /// @return New owned reference sharing one handle generation across copies.
  /// @throws RosError Local 22 for alias/zero-handle refusal, or original Host status.
  /// No default alias or fallback owner is supplied after failure.
  /// @permissions Exact current-Instance/backend alias grant and Host policy.
  /// @see Owner.close; Owner.revoke; Session.open
  public static func open(_ alias: String) throws -> Owner {
    let a = Array(alias.utf8)
    guard !a.isEmpty, a.count <= 255, !a.contains(0) else { throw RosError(22) }
    let owner = Owner(0)
    var slot = [UInt8](repeating: 0, count: 8)
    let status = a.withUnsafeBytes { a in
      slot.withUnsafeMutableBytes { z in
        Raw.capability_open(0, offset(a.baseAddress), UInt64(a.count), offset(z.baseAddress))
      }
    }
    guard status == 0 else { throw RosError(status) }
    let h = slot.enumerated().reduce(UInt64(0)) { $0 | UInt64($1.element) << ($1.offset * 8) }
    guard h != 0 else { throw RosError(22) }
    owner.handle = h
    return owner
  }

  private func acquire() throws -> UInt64 {
    guard !busy else { throw RosError(17) }
    guard handle != 0 else { throw RosError(9) }
    busy = true
    return handle
  }
  // Keep group retirement effect-free while a Guest handler uses this owner.
  func dispatchCallback(_ body: () throws -> Void) throws {
    _ = try acquire()
    defer { busy = false }
    try body()
  }

  /// @brief Retire this local handle before one actual raw close call.
  /// @details Shared copies become stale before the Host result is known.
  /// Failure does not restore ownership or permit an implicit close retry.
  /// @throws RosError Busy lease 17, stale handle 9 or original close status.
  /// @permissions Existing owner identity; no alias regrant or reopen occurs.
  /// @see Owner.revoke; Session.close; RosError
  public func close() throws {
    let h = try acquire()
    defer { busy = false }
    handle = 0
    let status = Raw.capability_close(h)
    if status != 0 { throw RosError(status) }
  }
  /// @brief Locally retire and explicitly revoke this actual owner generation.
  /// @details Shared references become stale before the single Host call.
  /// Preserve revocation failure separately; no new generation is invented.
  /// @throws RosError Busy lease 17, stale handle 9 or original revoke status.
  /// @permissions Existing exact owner and independently admitted revocation rules.
  /// @see Owner.close; Session.close; RosError
  public func revoke() throws {
    let h = try acquire()
    defer { busy = false }
    handle = 0
    let status = Raw.capability_revoke(h)
    if status != 0 { throw RosError(status) }
  }
  /// @brief Publish one complete canonical payload through this topic owner.
  /// @details Holds the owner lease and stable Swift byte borrow through one
  /// synchronous topic_publish call. An uncertain native effect is not replayed.
  /// @param[in] payload Complete selected schema body, at most maximumRequest bytes.
  /// @throws RosError Local capacity 90, busy 17, stale 9 or original Host status.
  /// @permissions Exact publish alias/type/direction/quota/deadline grant.
  /// @see Canonical.encode; Owner.request; Owner.close
  public func publish(_ payload: [UInt8]) throws { try write(payload, log: false) }
  /// @brief Write the exact canonical log body through this log owner.
  /// @details Does not select a native logger, change its severity policy or
  /// convert arbitrary display text into the configured canonical log schema.
  /// @param[in] payload Complete log body, at most maximumRequest bytes, stable until return.
  /// @throws RosError Local 90/17/9 or original log_write status; no implicit retry.
  /// @permissions Independently granted exact log alias, schema, quota and deadline.
  /// @see Owner.publish; Owner.request; RosError
  public func log(_ payload: [UInt8]) throws { try write(payload, log: true) }
  private func write(_ b: [UInt8], log: Bool) throws {
    guard b.count <= Self.maximumRequest else { throw RosError(90) }
    let h = try acquire()
    defer { busy = false }
    let status = b.withUnsafeBytes { p in
      log
        ? Raw.log_write(h, 0, offset(p.baseAddress), UInt64(p.count))
        : Raw.topic_publish(h, 0, offset(p.baseAddress), UInt64(p.count))
    }
    if status != 0 { throw RosError(status) }
  }
  /// @brief Activate the explicitly granted topic subscription with no payload.
  /// @details Uses the existing owner/type policy; it creates no observer or
  /// callback. Poll the admitted subscription explicitly on the caller thread.
  /// @throws RosError Busy 17, stale 9 or original topic_subscribe status.
  /// @permissions Exact subscription alias/type/direction/quota/deadline grant.
  /// @see Owner.poll; Owner.watch; Owner.close
  public func subscribe() throws {
    let h = try acquire()
    defer { busy = false }
    let status = Raw.topic_subscribe(h)
    if status != 0 { throw RosError(status) }
  }
  /// @brief Activate the original business-ABI Service server for this owner.
  /// @details The empty activation selects no new type, alias or Node. Responses
  /// need their independently granted owner. Original-control raw12 is separate.
  /// @throws RosError Busy 17, stale 9 or original service_advertise status.
  /// @permissions Exact advertise/type/QoS policy; response rights are independent.
  /// @see Owner.incoming; Owner.respond; Owner.poll
  public func advertiseService() throws {
    let h = try acquire()
    defer { busy = false }
    let status = Raw.service_advertise(h)
    if status != 0 { throw RosError(status) }
  }
  /// @brief Activate the separately granted parameter-event subscription.
  /// @details Poll actual admitted events explicitly. No local parameter store,
  /// mutation permission, native Node or observer grant is created.
  /// @throws RosError Busy 17, stale 9 or original parameter_subscribe_events status.
  /// @permissions Exact event-subscription alias, selected schema and quota/deadline.
  /// @see Owner.poll; Owner.watch; Owner.ready
  public func subscribeParameterEvents() throws {
    let h = try acquire()
    defer { busy = false }
    let status = Raw.parameter_subscribe_events(h)
    if status != 0 { throw RosError(status) }
  }

  /// Returns only successful initialized bytes. Error output is quarantined.
  /// Capacity refusal can have consumed a legacy event; no automatic retry.
  /// @brief Execute one selected original ABI RPC with complete canonical bytes.
  /// @details Allocates bounded output before acquiring the owner lease, borrows
  /// all buffers through synchronous return and initializes length to UInt64.max.
  /// Only status 0 with an in-capacity observed length exposes an owned prefix.
  /// @param[in] op Exact closed RPC selector from this generated Swift module.
  /// @param[in] input Complete stable canonical request, at most maximumRequest bytes.
  /// @param[in] capacity Explicit output bytes in the range 0 through maximumOutput.
  /// @return Owned successful initialized output prefix, including true Empty.
  /// @throws RosError Bounds 90, busy 17, stale 9, invalid success length 22 or
  /// original Host status. required is present only for an overwritten status-90
  /// length slot. Failure/timeout/consumed-event semantics never imply safe replay.
  /// @permissions Exact operation/alias/type/direction/quota/deadline grant.
  /// @see Owner.poll; RosError.required; Raw; RPC
  public func request(_ op: RPC, _ input: [UInt8], capacity: Int) throws -> [UInt8] {
    guard input.count <= Self.maximumRequest, capacity >= 0,
      capacity <= Self.maximumOutput
    else { throw RosError(90) }
    var output = [UInt8](repeating: 0, count: capacity)
    var slot = [UInt8](repeating: 255, count: 8)
    let h = try acquire()
    defer { busy = false }
    let status = input.withUnsafeBytes { a in
      output.withUnsafeMutableBytes { b in
        slot.withUnsafeMutableBytes { z in
          rawRequest(
            op, h, offset(a.baseAddress), UInt64(a.count), offset(b.baseAddress), UInt64(b.count),
            offset(z.baseAddress))
        }
      }
    }
    return try Self.finish(status, slot, &output)
  }
  /// @brief Poll one actual legacy or versioned event into bounded owned bytes.
  /// @details Initializes length to UInt64.max and exposes only a successful
  /// checked prefix. Original event consumption may precede a capacity refusal;
  /// do not automatically grow/retry or fabricate a default record on idle.
  /// @param[in] capacity Explicit output byte capacity, 0 through maximumOutput.
  /// @param[in] versioned True selects event_poll_v1; false selects event_poll.
  /// @return Owned successful complete event bytes from the selected ABI.
  /// @throws RosError Original idle/quota 11, denial 13, capacity 90, stale 9,
  /// busy 17, invalid success length 22 or other unchanged Host status.
  /// @permissions Exact subscription/observer alias, schema and delivery admission.
  /// @see Owner.request; Owner.ready; RosError.required
  public func poll(capacity: Int, versioned: Bool = false) throws -> [UInt8] {
    guard capacity >= 0, capacity <= Self.maximumOutput else { throw RosError(90) }
    var output = [UInt8](repeating: 0, count: capacity)
    var slot = [UInt8](repeating: 255, count: 8)
    let h = try acquire()
    defer { busy = false }
    let status = output.withUnsafeMutableBytes { b in
      slot.withUnsafeMutableBytes { z in
        versioned
          ? Raw.event_poll_v1(h, 0, offset(b.baseAddress), UInt64(b.count), offset(z.baseAddress))
          : Raw.event_poll(h, 0, offset(b.baseAddress), UInt64(b.count), offset(z.baseAddress))
      }
    }
    return try Self.finish(status, slot, &output)
  }
  static func finish(_ status: UInt32, _ slot: [UInt8], _ output: inout [UInt8]) throws -> [UInt8] {
    let n = slot.enumerated().reduce(UInt64(0)) { $0 | UInt64($1.element) << ($1.offset * 8) }
    if status == 0 && n <= UInt64(output.count) { return Array(output.prefix(Int(n))) }
    output = [UInt8](repeating: 0, count: output.count)
    throw RosError(
      status == 0 ? 22 : status,
      required: status == 90 && n != UInt64.max ? n : nil)
  }
  /// @brief Watch one separately granted source through this observer owner.
  /// @details Acquires both shared leases for one synchronous event_watch call.
  /// Watching grants neither source operations nor a reservation for later events.
  /// @param[in] source Distinct live Owner from the same admitted Instance/backend.
  /// @param[in] correlation Exact unsigned application correlation, including 0.
  /// @throws RosError Same reference 22, busy 17, stale 9 or original Host status.
  /// @permissions Exact observer/source pairing and their independent Host grants.
  /// @see Owner.ready; Owner.poll; Owner.submit
  public func watch(_ source: Owner, correlation: UInt64 = 0) throws {
    guard self !== source else { throw RosError(22) }
    let h = try acquire()
    defer { busy = false }
    let s = try source.acquire()
    defer { source.busy = false }
    let status = Raw.event_watch(h, s, correlation)
    if status != 0 { throw RosError(status) }
  }
  /// @brief Read the complete four-word readiness snapshot for this observer.
  /// @details A successful single event_ready call supplies 32 canonical LE bytes.
  /// No later delivery, asynchronous slot or byte quota is reserved by reading it.
  /// @return Owned Readiness preserving all four unsigned 64-bit values.
  /// @throws RosError Busy 17, stale 9 or original readiness-query status.
  /// @permissions Exact separately admitted observer/readiness operation.
  /// @see Readiness; Owner.watch; Owner.poll
  public func ready() throws -> Readiness {
    var b = [UInt8](repeating: 0, count: 32)
    let h = try acquire()
    defer { busy = false }
    let status = b.withUnsafeMutableBytes { Raw.event_ready(h, 0, offset($0.baseAddress)) }
    if status != 0 { throw RosError(status) }
    func word(_ at: Int) -> UInt64 {
      (0..<8).reduce(UInt64(0)) { $0 | UInt64(b[at + $1]) << ($1 * 8) }
    }
    return Readiness(
      events: word(0), nextBytes: word(8), admissionSlots: word(16), admissionBytes: word(24))
  }
  /// @brief Submit a complete original business-ABI Service request with an observer.
  /// @details Holds both owner leases and checks the actual nonzero u64 admission
  /// ID. Submission is asynchronous admission, not a completed Service response.
  /// This original service_submit route does not implement owned-control raw12.
  /// @param[in] input Complete canonical request, at most maximumRequest bytes.
  /// @param[in] observer Distinct live independently granted observer owner.
  /// @return Original full-width nonzero admitted submission ID.
  /// @throws RosError Same reference/zero ID 22, size 90, busy 17, stale 9 or
  /// original Host status. An uncertain send is not automatically retried.
  /// @permissions Exact call/observer pairing, schema, quota and deadline grants.
  /// @see Owner.poll; Owner.watch; Owner.ready
  public func submit(_ input: [UInt8], observer: Owner) throws -> UInt64 {
    guard self !== observer else { throw RosError(22) }
    guard input.count <= Self.maximumRequest else { throw RosError(90) }
    var slot = [UInt8](repeating: 0, count: 8)
    let h = try acquire()
    defer { busy = false }
    let o = try observer.acquire()
    defer { observer.busy = false }
    let status = input.withUnsafeBytes { a in
      slot.withUnsafeMutableBytes { z in
        Raw.service_submit(h, o, 0, offset(a.baseAddress), UInt64(a.count), offset(z.baseAddress))
      }
    }
    if status != 0 { throw RosError(status) }
    let id = slot.enumerated().reduce(UInt64(0)) { $0 | UInt64($1.element) << ($1.offset * 8) }
    guard id != 0 else { throw RosError(22) }
    return id
  }
}

/// Local ownership group. A Node name is an application label, never a grant.
/// @brief Bounded local group retaining owners for explicit reverse-order cleanup.
/// @details Single caller-thread use only. Closed state is permanent. Copies of
/// each Owner still share retirement; construction creates no ROS resources.
/// @see Session.open; Session.close; Node
public final class Session {
  private var owners: [Owner] = []
  private var closed = false
  private let capacity: Int
  /// @brief Construct local bounded owner storage without opening any alias.
  /// @details Reserves Swift array storage; allocation traps are not recoverable
  /// RosError results and do not promise ordinary Guest cleanup.
  /// @param[in] capacity Positive permanent owner ceiling, at most 1024.
  /// @return New open Session with zero retained owners and no Host authority.
  /// @throws RosError Invalid capacity 22 before any Host operation.
  /// @see Session.open; Session.close
  public init(capacity: Int) throws {
    guard capacity > 0, capacity <= 1024 else { throw RosError(22) }
    self.capacity = capacity
    owners.reserveCapacity(capacity)
  }
  /// @brief Open one explicitly granted alias and retain its shared Owner.
  /// @details Refuses a closed/full group before opening. Retained slots are
  /// not recycled when a caller independently closes one of its owners.
  /// @param[in] alias Exact explicit alias accepted by Owner.open.
  /// @return Shared Owner retained by this Session and returned to the caller.
  /// @throws RosError Closed session 9, group capacity 90 or original open error.
  /// @permissions Exact preexisting current-Instance/backend alias grant.
  /// @see Owner.open; Session.close
  public func open(_ alias: String) throws -> Owner {
    guard !closed else { throw RosError(9) }
    guard owners.count < capacity else { throw RosError(90) }
    let o = try Owner.open(alias)
    owners.append(o)
    return o
  }
  /// Attempt every live owner and retain each independent cleanup failure.
  /// @brief Permanently close this group and once-attempt each live owner in reverse.
  /// @details Preflights every busy lease before changing group state. After
  /// admission the group stays closed even if an actual owner close fails.
  /// @return Owned RosError array of independent actual close failures in attempt
  /// order; an empty array means no owner-close failure was observed.
  /// @throws RosError Already closed 9 or any busy owner 17 before group mutation.
  /// Fatal traps/allocation failure provide no promise of complete Guest cleanup.
  /// @permissions Existing owners only; no alias is reopened or implicitly revoked.
  /// @see Owner.close; RosError; Node.close
  public func close() throws -> [RosError] {
    guard !closed else { throw RosError(9) }
    guard !owners.contains(where: { $0.busy }) else { throw RosError(17) }
    closed = true
    var failures: [RosError] = []
    for o in owners.reversed() {
      if o.handle == 0 { continue }
      do { try o.close() } catch let e as RosError { failures.append(e) }
    }
    return failures
  }
}
