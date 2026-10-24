## Synchronous memory-zero ROS Guest ownership. Compile with --threads:off.
## The private generated C bridge selects exactly one backend. Never link rcl.
import roswasm/raw
import std/unicode
export raw

const
  ## @brief Maximum canonical request-data extent, in bytes. @details The 4193786-byte ceiling fits the selected 4 MiB IPC envelope; individual
  ## schema/alias limits may be smaller. It reserves no storage. @see request; publish; MaximumOutput
  MaximumRequest* = 4193786
  ## @brief Maximum caller-requested output allocation, in bytes. @details The inclusive ceiling is 4194304. Allocating that capacity grants no
  ## event, queue slot, resource quota or ROS authority. @see request; poll; MaximumRequest
  MaximumOutput* = 4194304

type
  RosError* = object of CatchableError
    ## ``@brief Original unsigned Host status with optional required byte extent.``
    ## ``@details Synchronous Guest API failures raise this exception. Preserve its``
    ## ``primary code; timeout may follow an admitted native effect. Cleanup errors``
    ## ``are separate values. This type does not make failed outputs usable.``
    ## ``@see fail; request; close``
    ## @brief Unsigned original ABI errno or local contract refusal. @details Zero denotes success and is not raised by normal checked calls;
    ## unknown future nonzero codes remain representable without narrowing. @see fail; share/platform/ros/nim/API-CONTRACT.md
    code*: uint32
    ## @brief Whether required contains an observed capacity requirement. @details True only when status 90 overwrote the UINT64_MAX length
    ## sentinel. An unchanged slot never establishes a required byte count. @see required; request; poll
    hasRequired*: bool
    ## @brief Required output extent in bytes, valid only with hasRequired. @details This is advisory capacity information, not a reservation or
    ## permission to retry an effectful operation or legacy receive. @see hasRequired; request; poll
    required*: uint64
  Owner* = ref object
    ## ``@brief Shared reference to one opaque Instance/backend handle generation.``
    ## ``@details Copies share retirement and a nonblocking operation/callback``
    ## ``lease. Close explicitly; there is no finalizer or implicit reopen.``
    ## ``@thread Single admitted Guest execution thread; compile with threads off.``
    ## ``@see open; close; dispatchCallback``
    handle: uint64
    busy: bool
  Readiness* = object
    ## ``@brief Four unsigned values from one versioned observer-readiness snapshot.``
    ## ``@details Values describe current observation/admission state. They do not``
    ## ``reserve an event or guarantee that a later operation sees the same state.``
    ## ``@see ready; poll; watch``
    ## @brief Currently ready event-record count. @details Zero is an idle snapshot; it does not retire any owner. @see ready; poll
    events*: uint64
    ## @brief Complete next event extent, in bytes. @details Includes the versioned envelope. A later poll still performs its own capacity/quota
    ## checks and may observe another state. @see ready; poll
    nextBytes*: uint64
    ## @brief Currently available asynchronous admission slots. @details A snapshot is not a reservation for a later service submission. @see
    ## ready; submit
    admissionSlots*: uint64
    ## @brief Currently available asynchronous admission-byte budget. @details Payload bytes remain constrained by the selected schema and trusted
    ## alias even when this snapshot reports a larger budget. @see ready; submit
    admissionBytes*: uint64
  Session* = ref object
    ## ``@brief Bounded ownership group with explicit reverse-order cleanup.``
    ## ``@details A session retains its owners and permits at most its fixed``
    ## ``configured capacity. Its closed state is permanent, including when one``
    ## ``Host cleanup returns an error. Construction creates no ROS resources.``
    ## ``@thread Single admitted Guest thread; close preflights callback leases.``
    ## ``@see newSession; open; close``
    owners: seq[Owner]
    capacity: int
    closed: bool

proc fail*(code: uint32; hasRequired = false; required = 0'u64) {.noreturn.} =
  ## ``@brief Raise a checked ROS Guest failure with its original unsigned code.``
  ## ``@details This helper does not notify the Host, replay an operation or change``
  ## ``ownership. Fatal traps/allocation failures do not promise exception cleanup.``
  ## ``@param[in] code Original nonzero ABI errno or local refusal.``
  ## ``@param[in] hasRequired True only for an actually overwritten capacity slot.``
  ## ``@param[in] required Advisory required bytes, meaningful with hasRequired.``
  ## ``@raises RosError Always; the created exception owns its status fields.``
  ## ``@thread Synchronous caller-thread exception propagation; no task is started.``
  ## ``@see RosError; request; poll``
  var e = newException(RosError, "ROS Guest operation refused")
  e.code = code; e.hasRequired = hasRequired; e.required = required
  raise e

proc offset(b: openArray[byte]): uint64 =
  if b.len == 0: 0'u64 else: uint64(cast[uint](unsafeAddr b[0]))

proc word(b: openArray[byte]; at: int): uint64 =
  for i in 0..<8: result = result or (uint64(b[at+i]) shl (8*i))

proc check(status: uint32) =
  if status != 0: fail(status)

proc acquire(o: Owner): uint64 =
  if o.isNil: fail(9)
  if o.busy: fail(17)
  if o.handle == 0: fail(9)
  o.busy = true
  o.handle

proc dispatchCallback*(o: Owner; body: proc() {.closure.}) =
  ## ``@brief Invoke one local callback while holding the owner's operation lease.``
  ## ``@details Reentrant use/close/revoke of this owner refuses with code 17. The``
  ## ``lease is released even when body raises; no native callback enters the Guest.``
  ## ``@param[in] o Live shared owner reference; borrow through callback completion.``
  ## ``@param[in] body Caller closure, invoked exactly once after successful lease acquisition.``
  ## ``@raises RosError Code 9 for a stale/nil owner or 17 for a busy owner; body failures``
  ## ``propagate.``
  ## ``@thread Call only on the admitted Guest executor thread.``
  ## ``@see Owner; close; roswasm/typed.spinOnce``
  discard acquire(o)
  defer: o.busy = false
  body()

proc open*(alias: string): Owner =
  ## ``@brief Open one explicitly granted alias in the selected Instance/backend.``
  ## ``@details Reserve local ownership storage before the single import and reject``
  ## ``a zero successful handle. An alias selects existing Host policy; it creates``
  ## ``no permission, native name, dynamic type or background executor.``
  ## ``@param[in] alias Strict UTF-8, 1..255 bytes, without NUL; borrowed until return.``
  ## ``@return Fresh shared Owner requiring explicit close; copies share retirement.``
  ## ``@raises RosError Invalid alias/status/handle, denial, revocation or other original Host``
  ## ``refusal.``
  ## ``@permissions Exact trusted alias/type/operation/direction/quota/deadline grant.``
  ## ``@thread Single Guest execution thread; no asynchronous callback is installed.``
  ## ``@see Owner; close; newSession``
  if alias.len == 0 or alias.len > 255 or '\0' in alias or validateUtf8(alias) != -1: fail(22)
  result = Owner(handle: 0) # Reserve bookkeeping before the external open.
  var slot: array[8, byte]
  check raw_capability_open(0, uint64(cast[uint](unsafeAddr alias[0])), uint64(alias.len), offset(slot))
  result.handle = word(slot, 0)
  if result.handle == 0: fail(22)

proc close*(o: Owner) =
  ## ``@brief Retire this shared handle generation and notify the Host once.``
  ## ``@details All reference copies become unusable before notification. A cleanup``
  ## ``error does not restore the handle, and the old generation must not be retried.``
  ## ``@param[in,out] o Live owner; its retirement is permanent after lease acquisition.``
  ## ``@raises RosError Code 9 for stale/nil, 17 for busy, or original Host cleanup failure.``
  ## ``@thread Single Guest thread; closing during this owner's callback is refused.``
  ## ``@see Owner; revoke; Session``
  let h = acquire(o)
  defer: o.busy = false
  o.handle = 0 # Retire all reference copies before notification, even on error.
  check raw_capability_close(h)

proc revoke*(o: Owner) =
  ## ``@brief Revoke the selected alias and retire this local owner generation.``
  ## ``@details Alias siblings in this principal are invalidated by Host policy.``
  ## ``This operation does not certify physical controller stopping or administer``
  ## ``another principal. Local retirement is retained after notification failure.``
  ## ``@param[in,out] o Live owner, borrowed until the synchronous notification returns.``
  ## ``@raises RosError Stale/busy owner or original Host refusal; never auto-retry.``
  ## ``@permissions The selected alias's actual revocation contract.``
  ## ``@see close; Owner; share/platform/ros/nim/API-CONTRACT.md``
  let h = acquire(o)
  defer: o.busy = false
  o.handle = 0
  check raw_capability_revoke(h)

proc write(o: Owner; data: openArray[byte]; logging: bool) =
  if data.len > MaximumRequest: fail(90)
  let h = acquire(o)
  defer: o.busy = false
  check(if logging: raw_log_write(h, 0, offset(data), uint64(data.len))
        else: raw_topic_publish(h, 0, offset(data), uint64(data.len)))

proc publish*(o: Owner; data: openArray[byte]) =
  ## ``@brief Publish one complete selected canonical message.``
  ## ``@details Performs one import after local extent/lease checks. Success is``
  ## ``transport acknowledgement, not a physical actuator-completion certificate.``
  ## ``@param[in] o Live topic.publish owner for the exact selected schema.``
  ## ``@param[in] data Complete canonical bytes, at most MaximumRequest; stable until return.``
  ## ``@raises RosError Original Host status, code 90 for excessive input, or stale/busy refusal.``
  ## ``@permissions Exact topic/type/direction/quota/deadline grant; no implicit ROS access.``
  ## ``@thread Single Guest execution thread; the Host retains no pointer.``
  ## ``@see subscribe; request; roswasm/typed.publishValue``
  write(o, data, false)
proc log*(o: Owner; data: openArray[byte]) =
  ## ``@brief Write a complete canonical String to the selected ROS logger.``
  ## ``@details Ordinary stderr is separate. This operation preserves the selected``
  ## ``logger and performs no formatting, severity inference or automatic replay.``
  ## ``@param[in] o Live log.write owner for the exact Host logger grant.``
  ## ``@param[in] data Complete canonical String bytes, at most MaximumRequest; borrowed until``
  ## ``return.``
  ## ``@raises RosError Extent/ownership refusal or original Host status.``
  ## ``@permissions Explicit ROS logging grant; stderr access conveys none.``
  ## ``@see publish; request; share/platform/ros/nim/API-CONTRACT.md``
  write(o, data, true)
proc subscribe*(o: Owner) =
  ## ``@brief Activate the separately granted topic subscription.``
  ## ``@details Activation does not consume messages or install a Guest callback;``
  ## ``subsequent caller-driven polling handles each complete selected payload.``
  ## ``@param[in] o Live topic.subscribe owner, borrowed through synchronous return.``
  ## ``@raises RosError Stale/busy owner or original Host denial/adapter refusal.``
  ## ``@permissions Exact topic/type/subscription direction and bounded queue grant.``
  ## ``@see poll; watch; publish``
  let h = acquire(o)
  defer: o.busy = false
  check raw_topic_subscribe(h)
proc advertiseService*(o: Owner) =
  ## ``@brief Activate a separately granted legacy Service server.``
  ## ``@details Delivered requests and responder rights remain separate. This``
  ## ``activation does not implement the distinct owned-native raw12 transport.``
  ## ``@param[in] o Live service.advertise owner; no native name is accepted here.``
  ## ``@raises RosError Stale/busy owner or original Host refusal.``
  ## ``@permissions Exact Service/type/server-direction grant and trusted limits.``
  ## ``@see poll; roswasm/typed.incoming; roswasm/typed.respondValue``
  let h = acquire(o)
  defer: o.busy = false
  check raw_service_advertise(h)
proc subscribeParameterEvents*(o: Owner) =
  ## ``@brief Activate the exact ROS 2 parameter-event projection grant.``
  ## ``@details This dedicated one-handle operation is not a seven-argument RPC;``
  ## ``consume the selected event codec explicitly on the Guest thread.``
  ## ``@param[in] o Live independently granted parameter-event owner.``
  ## ``@raises RosError Unsupported ROS 1 backend, stale/busy owner or original Host refusal.``
  ## ``@permissions Exact parameter projection/scope grant; no get/set rights are inherited.``
  ## ``@see poll; request; raw_parameter_subscribe_events``
  let h = acquire(o)
  defer: o.busy = false
  check raw_parameter_subscribe_events(h)

proc finish(status: uint32; slot: array[8, byte]; output: var seq[byte]) =
  let n = word(slot, 0)
  if status == 0 and n <= uint64(output.len):
    output.setLen(int(n))
    return
  for b in output.mitems: b = 0
  if status == 0: fail(22)
  fail(status, status == 90 and n != high(uint64), n)

proc request*(o: Owner; op: RPC; data: openArray[byte]; capacity: int): seq[byte] =
  ## ``@brief Execute one selected original ABI RPC using bounded managed storage.``
  ## ``@details Allocate output before the import, initialize the length sentinel,``
  ## ``and publish bytes only after status/extent checks. Failure clears the output``
  ## ``allocation. No timeout, write or legacy receive is retried automatically.``
  ## ``@param[in] o Live owner matching op, selected type and backend.``
  ## ``@param[in] op Closed RPC selector; unsupported-backend operations return 95.``
  ## ``@param[in] data Complete canonical request, at most MaximumRequest bytes.``
  ## ``@param[in] capacity Requested output extent, 0..MaximumOutput bytes.``
  ## ``@return Fresh sequence containing exactly the successful response extent.``
  ## ``@raises RosError Original status, stale/busy owner or malformed successful output;``
  ## ``status 90 reports required bytes only when the length sentinel was overwritten.``
  ## ``@lifetime Input is borrowed until synchronous return; returned sequence retains its``
  ## ``storage.``
  ## ``@permissions Exact Host operation/type/direction/quota/deadline grant.``
  ## ``@thread Single Guest execution thread; no asynchronous callback is installed.``
  ## ``@see RosError; RPC; poll``
  if capacity < 0 or capacity > MaximumOutput or data.len > MaximumRequest: fail(90)
  result = newSeq[byte](capacity)
  var slot: array[8, byte]
  for b in slot.mitems: b = 255
  let h = acquire(o)
  defer: o.busy = false
  let status = rawRequest(op, h, offset(data), uint64(data.len), offset(result), uint64(capacity),
      offset(slot))
  finish(status, slot, result)

proc poll*(o: Owner; capacity: int; versioned = false): seq[byte] =
  ## ``@brief Poll at most one complete legacy or versioned event into owned bytes.``
  ## ``@details Legacy capacity refusal may consume an event. Versioned polling``
  ## ``retains its pinned event on code 90 and includes the complete 64-byte header;``
  ## ``callers must decode the selected envelope instead of treating it as payload.``
  ## ``@param[in] o Live receive/observer owner for the selected event contract.``
  ## ``@param[in] capacity Output allocation extent, 0..MaximumOutput bytes.``
  ## ``@param[in] versioned Select event_poll_v1 when true; otherwise event_poll.``
  ## ``@return Fresh complete event bytes on success; code 11 raises instead of producing a value.``
  ## ``@raises RosError Original status or malformed extent; no automatic resize/replay occurs.``
  ## ``@lifetime Input owners are borrowed until return; returned sequence retains storage.``
  ## ``@thread Caller-driven single Guest thread; this operation does not spin callbacks.``
  ## ``@see request; ready; watch``
  if capacity < 0 or capacity > MaximumOutput: fail(90)
  result = newSeq[byte](capacity)
  var slot: array[8, byte]
  for b in slot.mitems: b = 255
  let h = acquire(o)
  defer: o.busy = false
  let status = if versioned: raw_event_poll_v1(h, 0, offset(result), uint64(capacity), offset(slot))
               else: raw_event_poll(h, 0, offset(result), uint64(capacity), offset(slot))
  finish(status, slot, result)

proc watch*(o, source: Owner; correlation = 0'u64) =
  ## ``@brief Bind independently authorized observer and source owners.``
  ## ``@details A metadata watch neither activates payload traffic nor inherits``
  ## ``business rights. Both owners receive temporary nonblocking leases.``
  ## ``@param[in] o Live event.observe owner in the current Instance/backend.``
  ## ``@param[in] source Distinct live source owner admitted by trusted pairing policy.``
  ## ``@param[in] correlation Exact owned outgoing Action goal ID for a data watch;``
  ## ``metadata-only watches use 0. Copying an ID conveys no ownership.``
  ## ``@raises RosError Same owner (22), stale/busy owner or original Host refusal.``
  ## ``@lifetime Keep both owners alive until synchronous return and while using the watch.``
  ## ``@permissions Independent observer/source pairing and operation grants.``
  ## ``@see ready; poll; submit``
  if o == source: fail(22)
  let h = acquire(o)
  defer: o.busy = false
  let s = acquire(source)
  defer: source.busy = false
  check raw_event_watch(h, s, correlation)

proc ready*(o: Owner): Readiness =
  ## ``@brief Read one 32-byte observer-readiness snapshot.``
  ## ``@details Decode all four little-endian u64 fields. No event or admission``
  ## ``capacity is reserved, and no subscription or resource is activated.``
  ## ``@param[in] o Live event.observe owner, borrowed through synchronous return.``
  ## ``@return Complete Readiness snapshot; counts and extents retain all 64 bits.``
  ## ``@raises RosError Stale/busy owner or original Host refusal.``
  ## ``@see Readiness; poll; submit``
  var b: array[32, byte]
  let h = acquire(o)
  defer: o.busy = false
  check raw_event_ready(h, 0, offset(b))
  Readiness(events: word(b, 0), nextBytes: word(b, 8), admissionSlots: word(b, 16),
      admissionBytes: word(b, 24))

proc submit*(o, observer: Owner; data: openArray[byte]): uint64 =
  ## ``@brief Admit one asynchronous Service request with independent observation.``
  ## ``@details Register application correlation/cleanup state before submission.``
  ## ``A successful request ID acknowledges admission; completion still requires``
  ## ``explicit service-response and resource-error observation. Never replay an``
  ## ``unknown timeout or infer completion from readiness.``
  ## ``@param[in] o Live source owner for the exact selected Service request type.``
  ## ``@param[in] observer Distinct live observer authorized for this source pairing.``
  ## ``@param[in] data Complete canonical request, at most MaximumRequest bytes; borrowed until``
  ## ``return.``
  ## ``@return Exact nonzero u64 admitted request ID; no native pointer is retained.``
  ## ``@raises RosError Same/stale/busy owners, malformed successful ID or original Host refusal.``
  ## ``@permissions Independent source operation, observer, quota and deadline grants.``
  ## ``@thread Single Guest executor thread; later completion never re-enters the Guest directly.``
  ## ``@see watch; ready; poll``
  if o == observer: fail(22)
  if data.len > MaximumRequest: fail(90)
  var slot: array[8, byte]
  let h = acquire(o)
  defer: o.busy = false
  let s = acquire(observer)
  defer: observer.busy = false
  check raw_service_submit(h, s, 0, offset(data), uint64(data.len), offset(slot))
  result = word(slot, 0)
  if result == 0: fail(22)

proc newSession*(capacity: int): Session =
  ## ``@brief Create a fixed-capacity local ownership session.``
  ## ``@details Reserve bookkeeping before any later external open. Construction``
  ## ``starts no native ROS context, endpoint or executor and obtains no authority.``
  ## ``@param[in] capacity Maximum tracked owners, inclusive range 1..1024.``
  ## ``@return Fresh open Session requiring explicit close.``
  ## ``@raises RosError Code 22 for invalid capacity; allocation failure follows Nim semantics.``
  ## ``@thread Single Guest execution thread; compile with threads off.``
  ## ``@see Session; open; close``
  if capacity < 1 or capacity > 1024: fail(22)
  Session(capacity: capacity, owners: newSeqOfCap[Owner](capacity))
proc open*(s: Session; alias: string): Owner =
  ## ``@brief Open and retain one granted alias within a bounded session.``
  ## ``@details Capacity is checked before the external open. Returned references``
  ## ``share the same Owner retained by the session; copying one adds no capacity.``
  ## ``@param[in,out] s Live open session with an unused ownership slot.``
  ## ``@param[in] alias Strict UTF-8, 1..255 bytes, no NUL; selects existing trusted policy.``
  ## ``@return Shared live Owner, cleaned up by explicit owner/session close.``
  ## ``@raises RosError Closed/nil session (9), capacity (90), invalid alias or original Host``
  ## ``refusal.``
  ## ``@permissions The same exact grant required by the standalone open operation.``
  ## ``@see newSession; Owner; close``
  if s.isNil or s.closed: fail(9)
  if s.owners.len == s.capacity: fail(90)
  result = open(alias)
  s.owners.add(result)
proc close*(s: Session): seq[ref RosError] =
  ## ``@brief Close all session owners in reverse registration order.``
  ## ``@details Preflight every owner lease before retiring any owner. Once``
  ## ``accepted, permanently close the session and attempt every remaining close;``
  ## ``one Host cleanup error does not skip later owners or restore old handles.``
  ## ``@param[in,out] s Live session; callbacks/operations must have completed.``
  ## ``@return Collected independent cleanup exceptions; empty means all notifications succeeded.``
  ## ``@raises RosError Nil/already-closed session (9) or any preflight busy owner (17).``
  ## ``@thread Single Guest thread; no blocking lease wait or background cleanup.``
  ## ``@see Session; close; RosError``
  if s.isNil or s.closed: fail(9)
  for o in s.owners:
    if o.busy: fail(17) # Whole-group preflight before any retirement.
  s.closed = true
  for i in countdown(s.owners.high, 0):
    if s.owners[i].handle != 0:
      try: close(s.owners[i])
      except RosError as e: result.add(e)
