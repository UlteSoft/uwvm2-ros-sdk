## Typed operations over complete generated records, with exact u64 IDs.
import ../roswasm
import ./wire
import std/unicode

type
  ## @brief Caller-supplied complete canonical decoder for value type T. @details Decode every selected field and reject trailing/malformed bytes.
  ## Closures are retained by Executor registrations; a nil decoder is refused. @param[in] bytes Complete managed canonical body, excluding
  ## transport ID prefixes. @return Fully decoded T; decoder exceptions propagate without retry. @thread Called synchronously on the same admitted
  ## Guest executor thread. @see add; callValue; incoming
  Decoder*[T] = proc(bytes: seq[byte]): T {.closure.}
  Incoming*[T] = object
    ## ``@brief One delivered legacy Service request and its exact correlation ID.``
    ## ``@details The request ID belongs to this Instance/backend and actual``
    ## ``delivery; copying this record creates no response or raw12 authority.``
    ## ``@see incoming; respondValue``
    ## @brief Exact nonzero u64 ID of this delivered Service request. @details Preserve all 64 bits and pair only with its admitted responder. @see
    ## incoming; respondValue
    id*: uint64
    ## @brief Complete decoded request body of the selected Service type. @details Managed storage follows T; retain it until application handling
    ## finishes. @see Decoder; Incoming
    value*: T
  Terminal*[T] = object
    ## ``@brief Complete terminal Action result with exact owned goal identity.``
    ## ``@details Only validated ID/outcome/body combinations are returned by``
    ## ``resultValue. Cancellation acknowledgement alone is not a terminal result.``
    ## ``@see resultValue; cancelOwnGoal``
    ## @brief Exact nonzero u64 goal ID matching the requested ownership. @details A copied ID is a value, not a new native ownership grant. @see
    ## resultValue; sendGoalValue
    id*: uint64
    ## @brief Original terminal outcome byte in the inclusive range 2..4. @details Retain the original outcome with the complete result; do not
    ## infer it from a cancel acknowledgement or a default body. @see resultValue; actionReplyValue
    outcome*: uint8
    ## @brief Complete decoded result body of the selected Action. @details Managed ownership follows T. No native object layout is exposed. @see
    ## Decoder; Terminal
    value*: T
  Node* = ref object
    ## ``@brief Local application label paired with a bounded ownership session.``
    ## ``@details This object does not create a native ROS node or infer a namespace,``
    ## ``type or alias. Close explicitly to retire its retained owners.``
    ## ``@thread Single admitted Guest thread; no background executor is installed.``
    ## ``@see newNode; open; close``
    ## @brief Local application label supplied to newNode. @details Changing this string does not rename a native node or rebind any trusted alias,
    ## identity, scope or permission. @see newNode; Node
    name*: string
    session: Session
  Entry = object
    owner: Owner
    capacity: int
    callback: proc(bytes: seq[byte]) {.closure.}
  Executor* = ref object
    ## ``@brief Bounded caller-driven collection of typed legacy receive callbacks.``
    ## ``@details Registration retains owners, decoders and callbacks. Polling and``
    ## ``callback invocation occur only during spinOnce; close drops registrations``
    ## ``without closing their independently owned capabilities.``
    ## ``@thread Single admitted Guest thread; reentrant spin/add/close refuses.``
    ## ``@see newExecutor; add; spinOnce; close``
    entries: seq[Entry]
    capacity: int
    busy, closed: bool

proc idBytes(id: uint64): seq[byte] =
  if id == 0: fail(22)
  var w = initWriter(8)
  putInteger(w, id)
  w.bytes
proc publishValue*[T](o: Owner; value: T) =
  ## ``@brief Encode and publish one complete selected message value.``
  ## ``@details The mixed-in encode validates the selected T before the effect;``
  ## ``publish performs one import and never retries an unknown delivery.``
  ## ``@param[in] o Live exact topic.publish owner, borrowed until synchronous return.``
  ## ``@param[in] value Complete T with the matching selected schema and bounds.``
  ## ``@raises RosError Encoding, ownership or original Host refusal; no successful partial``
  ## ``message.``
  ## ``@permissions Exact Host topic/type/direction/quota/deadline grant.``
  ## ``@see publish; Decoder; share/platform/ros/nim/API-CONTRACT.md``
  mixin encode
  publish(o, encode(value))
proc callValue*[Q, S](o: Owner; value: Q; capacity: int; decode: Decoder[S]): S =
  ## ``@brief Call one selected legacy Service with complete typed request/response.``
  ## ``@details Encode Q before admission and decode the entire returned S. A``
  ## ``timeout may follow native execution; this method never resubmits automatically.``
  ## ``@param[in] o Live service.call owner for exactly Q/S in this Instance/backend.``
  ## ``@param[in] value Complete selected request Q, borrowed through encoding.``
  ## ``@param[in] capacity Response extent budget, 0..MaximumOutput bytes.``
  ## ``@param[in] decode Non-nil complete S decoder; called only after a successful request.``
  ## ``@return Complete decoded response S retaining its managed storage.``
  ## ``@raises RosError Nil decoder (22), codec failure or original Host refusal.``
  ## ``@permissions Exact Service/type/operation/quota/deadline grant.``
  ## ``@thread Synchronous single Guest thread; no callback re-entry or retry.``
  ## ``@see request; incoming; respondValue``
  mixin encode
  if decode.isNil: fail(22)
  decode(request(o, rpc_service_call, encode(value), capacity))
proc incoming*[T](o: Owner; capacity: int; decode: Decoder[T]): Incoming[T] =
  ## ``@brief Poll one delivered Service request and decode its complete body.``
  ## ``@details The first eight bytes carry the nonzero request ID; they are``
  ## ``excluded from the T decoder input. Idle raises instead of inventing a request.``
  ## ``@param[in] o Live server-receive owner after explicit activation.``
  ## ``@param[in] capacity Complete receive budget, including the eight-byte ID; 0..MaximumOutput.``
  ## ``@param[in] decode Non-nil decoder for the exact selected request type T.``
  ## ``@return Incoming value with its exact delivered ID and fully decoded request.``
  ## ``@raises RosError Nil decoder, truncation/zero ID, idle/capacity or original Host refusal.``
  ## ``@lifetime Returned managed fields retain their storage; keep ownership for``
  ## ``handling/responding.``
  ## ``@permissions Exact Service server grant; response needs an independent responder.``
  ## ``@see advertiseService; Incoming; respondValue``
  if decode.isNil: fail(22)
  let bytes = poll(o, capacity)
  var r = initReader(bytes, capacity)
  result.id = getInteger(r, uint64)
  if result.id == 0: fail(22)
  result.value = decode(take(r, bytes.len-8))
  finish(r)
proc respondValue*[T](o: Owner; id: uint64; value: T) =
  ## ``@brief Send one complete typed response for an actually delivered request.``
  ## ``@details Prefix the canonical response with the original eight-byte ID.``
  ## ``This legacy RPC path does not implement the separate owned-native raw12 protocol.``
  ## ``@param[in] o Independently granted service.respond owner for this selected type.``
  ## ``@param[in] id Exact nonzero u64 ID from actual delivery in this Instance/backend.``
  ## ``@param[in] value Complete selected response T; borrowed during encoding.``
  ## ``@raises RosError Zero ID (22), encoding failure or original Host refusal; no automatic``
  ## ``replay.``
  ## ``@permissions Exact responder grant and request ownership; advertising alone grants neither.``
  ## ``@see incoming; Incoming; request``
  mixin encode
  discard request(o, rpc_service_respond, idBytes(id) & encode(value), 0)
proc sendGoalValue*[T](o: Owner; value: T): uint64 =
  ## ``@brief Submit one complete typed Action goal and retain its exact ID.``
  ## ``@details Admission, acceptance, feedback, cancellation and terminal result``
  ## ``are separate states. Applications record pending state before the effect.``
  ## ``@param[in] o Live action.send_goal owner for the exact selected Action goal type.``
  ## ``@param[in] value Complete goal T; encoding validates all selected fields and bounds.``
  ## ``@return Exact nonzero u64 owned goal ID from an exactly eight-byte response.``
  ## ``@raises RosError Malformed successful ID/extent, codec failure or original Host refusal.``
  ## ``@permissions Exact Action/type/operation/quota/deadline grant; no retry on unknown timeout.``
  ## ``@see feedbackValue; resultValue; cancelOwnGoal``
  mixin encode
  let bytes = request(o, rpc_action_send_goal, encode(value), 8)
  var r = initReader(bytes, 8)
  result = getInteger(r, uint64)
  finish(r)
  if result == 0: fail(22)
proc cancelOwnGoal*(o: Owner; id: uint64): bool =
  ## ``@brief Request cancellation of one owned Action goal.``
  ## ``@details Decode one strict Boolean acknowledgement. Cancellation admission``
  ## ``is not a terminal result or evidence that physical motion has stopped.``
  ## ``@param[in] o Live independently granted own-goal cancellation owner.``
  ## ``@param[in] id Exact nonzero u64 owned goal ID; zero is never an own-goal selector.``
  ## ``@return Original canonical Boolean cancellation acknowledgement.``
  ## ``@raises RosError Zero ID, malformed response, stale ownership or original Host refusal.``
  ## ``@permissions Separate cancel-own grant; a send/feedback/result grant is insufficient.``
  ## ``@see sendGoalValue; resultValue; Terminal``
  let bytes = request(o, rpc_action_cancel_own_goal, idBytes(id), 1)
  var r = initReader(bytes, 1)
  result = getBool(r)
  finish(r)
proc feedbackValue*[T](o: Owner; id: uint64; capacity: int; decode: Decoder[T]): T =
  ## ``@brief Receive and validate typed feedback for one owned Action goal.``
  ## ``@details Require the exact eight-byte ID prefix before decoding the entire``
  ## ``remaining body. Idle is a refusal/status and does not retire goal ownership.``
  ## ``@param[in] o Live exact action.receive_feedback owner.``
  ## ``@param[in] id Original nonzero u64 owned goal ID.``
  ## ``@param[in] capacity Complete budget including the eight-byte ID, 0..MaximumOutput bytes.``
  ## ``@param[in] decode Non-nil complete decoder for the selected feedback type T.``
  ## ``@return Complete feedback T after successful ID/body validation.``
  ## ``@raises RosError Nil decoder, zero/mismatched ID, codec failure or original Host status.``
  ## ``@lifetime Managed return storage follows T; all import buffers are synchronous borrows.``
  ## ``@see sendGoalValue; resultValue; Decoder``
  if decode.isNil: fail(22)
  let bytes = request(o, rpc_action_receive_feedback, idBytes(id), capacity)
  var r = initReader(bytes, capacity)
  if getInteger(r, uint64) != id: fail(22)
  result = decode(take(r, bytes.len-8))
  finish(r)
proc resultValue*[T](o: Owner; id: uint64; capacity: int; decode: Decoder[T]): Terminal[T] =
  ## ``@brief Consume a complete terminal result for one owned Action goal.``
  ## ``@details Validate the eight-byte goal ID, one-byte terminal outcome and``
  ## ``every selected result field. Successful native terminal consumption retires``
  ## ``that goal; a later decode error does not make replay safe.``
  ## ``@param[in] o Live exact action.receive_result owner.``
  ## ``@param[in] id Original nonzero u64 owned goal ID.``
  ## ``@param[in] capacity Complete budget including the nine-byte prefix, 0..MaximumOutput bytes.``
  ## ``@param[in] decode Non-nil complete decoder for result type T.``
  ## ``@return Terminal[T] with matching ID, outcome 2..4 and complete result value.``
  ## ``@raises RosError Nil decoder, ID/outcome/body refusal, idle or original Host status.``
  ## ``@permissions Exact result-consumption grant for the owned Action.``
  ## ``@see Terminal; feedbackValue; cancelOwnGoal``
  if decode.isNil: fail(22)
  let bytes = request(o, rpc_action_receive_result, idBytes(id), capacity)
  var r = initReader(bytes, capacity)
  result.id = getInteger(r, uint64)
  result.outcome = getInteger(r, uint8)
  if result.id != id or result.outcome < 2 or result.outcome > 4: fail(22)
  result.value = decode(take(r, bytes.len-9))
  finish(r)
proc actionReplyValue*[T](o: Owner; id: uint64; kind: uint8; value: T) =
  ## ``@brief Send one feedback or terminal reply for an actually delivered goal.``
  ## ``@details Prefix the complete canonical body with the original goal ID and``
  ## ``reply kind. A terminal send must not be replayed after an unknown outcome.``
  ## ``@param[in] o Independently granted exact action.respond owner.``
  ## ``@param[in] id Nonzero u64 delivered goal ID owned by this server.``
  ## ``@param[in] kind Original kind byte 1..4; 1 is feedback and 2..4 are terminal outcomes.``
  ## ``@param[in] value Complete selected feedback/result T matching kind and the trusted Action.``
  ## ``@raises RosError Invalid ID/kind, codec failure or original Host refusal.``
  ## ``@permissions Exact responder/type/direction/quota/deadline grant and delivered ownership.``
  ## ``@see raw_action_respond; request; Terminal``
  mixin encode
  if kind < 1 or kind > 4: fail(22)
  discard request(o, rpc_action_respond, idBytes(id) & @[kind] & encode(value), 0)

proc newNode*(name: string; capacity: int): Node =
  ## ``@brief Construct a local application label with a bounded owner session.``
  ## ``@details No native ROS node, namespace or identity is created or renamed.``
  ## ``@param[in] name Strict UTF-8 local label, 1..255 bytes with no NUL.``
  ## ``@param[in] capacity Maximum tracked owners, inclusive range 1..1024.``
  ## ``@return Fresh Node requiring explicit close.``
  ## ``@raises RosError Invalid label/capacity (22); allocation failure follows Nim semantics.``
  ## ``@thread Single Guest thread; construction installs no executor or callback.``
  ## ``@see Node; newSession; open; close``
  # A local application label. Native identity remains fixed by each alias.
  if name.len == 0 or name.len > 255 or '\0' in name or validateUtf8(name) != -1: fail(22)
  Node(name: name, session: newSession(capacity))
proc open*(n: Node; alias: string): Owner =
  ## ``@brief Open and retain one independently granted alias in a local Node.``
  ## ``@details The Node name never supplies a native path, namespace or grant;``
  ## ``its bounded session checks capacity before the external open.``
  ## ``@param[in,out] n Live Node whose ownership session is still open.``
  ## ``@param[in] alias Strict UTF-8, 1..255 bytes, no NUL; exact existing Host grant.``
  ## ``@return Shared live Owner retained by the Node session.``
  ## ``@raises RosError Nil/closed Node, exhausted capacity, invalid alias or original Host``
  ## ``status.``
  ## ``@permissions Exact selected alias/type/operation/direction/quota/deadline grant.``
  ## ``@see Node; close; roswasm.open``
  if n.isNil: fail(9)
  open(n.session, alias)
proc close*(n: Node): seq[ref RosError] =
  ## ``@brief Close a Node's complete retained ownership session.``
  ## ``@details Preflight all leases, retire in reverse registration order and``
  ## ``preserve independent Host cleanup failures. The closed state is permanent.``
  ## ``@param[in,out] n Live Node; its callbacks and active operations must have completed.``
  ## ``@return Collected cleanup exceptions; empty means all notifications succeeded.``
  ## ``@raises RosError Nil/closed Node (9) or any owner busy during preflight (17).``
  ## ``@see Node; Session; roswasm.close``
  if n.isNil: fail(9)
  close(n.session)
proc newExecutor*(capacity: int): Executor =
  ## ``@brief Create an empty bounded caller-driven receive executor.``
  ## ``@details Construction allocates only local registration storage and performs``
  ## ``no subscribe, advertise, poll, timer or Host operation.``
  ## ``@param[in] capacity Maximum retained receive registrations, 1..1024 inclusive.``
  ## ``@return Fresh open Executor with no registrations or implicit owners.``
  ## ``@raises RosError Invalid capacity (22); allocation failure follows Nim semantics.``
  ## ``@thread Single admitted Guest executor thread; no background loop is started.``
  ## ``@see Executor; add; spinOnce; close``
  if capacity < 1 or capacity > 1024: fail(22)
  Executor(capacity: capacity, entries: newSeqOfCap[Entry](capacity))
proc add*[T](e: Executor; o: Owner; capacity: int; decode: Decoder[T]; callback: proc(
    value: T) {.closure.}) =
  ## ``@brief Register one complete typed legacy receive callback.``
  ## ``@details Retain the owner and closures without polling or activating a``
  ## ``resource. Registration is forbidden while this executor is spinning.``
  ## ``@param[in,out] e Open executor with a free registration slot.``
  ## ``@param[in] o Non-nil owner; its original operation/type grant remains independently``
  ## ``required.``
  ## ``@param[in] capacity Per-poll output extent, 0..MaximumOutput bytes.``
  ## ``@param[in] decode Non-nil decoder for the complete selected payload T.``
  ## ``@param[in] callback Non-nil retained closure invoked with decoded values from spinOnce.``
  ## ``@raises RosError Closed/nil executor (9), reentry (17), capacity (90) or nil argument (22).``
  ## ``@lifetime e retains o/decode/callback until close; captured resources must remain usable.``
  ## ``@thread Single Guest thread; callbacks execute under o's nonblocking lease.``
  ## ``@see spinOnce; close; dispatchCallback``
  if e.isNil or e.closed: fail(9)
  if e.busy: fail(17)
  if capacity < 0 or capacity > MaximumOutput or e.entries.len == e.capacity: fail(90)
  if decode.isNil or callback.isNil or o.isNil: fail(22)
  e.entries.add(Entry(owner: o, capacity: capacity, callback: proc(bytes: seq[byte]) = callback(
      decode(bytes))))
proc spinOnce*(e: Executor): int =
  ## ``@brief Poll each registered owner at most once and invoke ready callbacks.``
  ## ``@details Skip only code 11 idle. Decode and invoke on the caller thread;``
  ## ``each callback holds its owner's lease and must not re-enter that owner.``
  ## ``A later error does not roll back callbacks already delivered in this pass.``
  ## ``@param[in,out] e Open non-busy executor; borrow exclusively until return.``
  ## ``@return Number of callbacks completed in a wholly successful pass.``
  ## ``@raises RosError Closed/nil/reentrant executor or non-idle receive errors;``
  ## ``decoder/callback exceptions propagate and busy state is released.``
  ## ``@permissions Every retained receive owner needs its own exact Host grant.``
  ## ``@thread Single Guest thread; no native callback or asynchronous re-entry occurs.``
  ## ``@see Executor; add; dispatchCallback``
  if e.isNil or e.closed: fail(9)
  if e.busy: fail(17)
  e.busy = true
  defer: e.busy = false
  for entry in e.entries:
    var bytes: seq[byte]
    try: bytes = poll(entry.owner, entry.capacity)
    except RosError as error:
      if error.code == 11: continue
      raise
    dispatchCallback(entry.owner, proc() = entry.callback(bytes))
    inc result
proc close*(e: Executor) =
  ## ``@brief Permanently stop this local executor and drop its registrations.``
  ## ``@details This performs no Host operation and does not close the independently``
  ## ``owned capabilities. Close their Owner/Session/Node explicitly afterwards.``
  ## ``@param[in,out] e Live open executor that is not inside spinOnce.``
  ## ``@raises RosError Nil/closed executor (9) or active/reentrant close (17).``
  ## ``@lifetime Retained closures/owner references are released according to Nim ARC semantics.``
  ## ``@thread Single Guest execution thread; no blocking wait or background shutdown.``
  ## ``@see Executor; spinOnce; roswasm.close``
  if e.isNil or e.closed: fail(9)
  if e.busy: fail(17)
  e.closed = true
  e.entries.setLen(0)
