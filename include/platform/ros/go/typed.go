//go:build wasip1 && wasm

package roswasm

import (
	"encoding/binary"
	"sync/atomic"
	"unicode/utf8"
)

// APIError preserves the unsigned original status and observed length sentinel.
// @brief Checked original/local refusal with independently observed size information.
// @details Generated codecs and wrappers return this value through error; user
// Canonical/Decoder/callback implementations may return other error types or panic.
// Public construction is local data and attests to no Host call or cleanup effect.
// @see APIError.Error; Result; Error; PublishValue
type APIError struct {
	// Code is the original unsigned status or an explicit local validation refusal.
	// @brief Exact uint32 refusal without signed narrowing or business-Bool coercion.
	// @details Preserve it independently of later cleanup; Error's text omits this value.
	// @see APIError.Error; Cleanup.Code; Invalid
	Code uint32
	// Required is an observed output byte requirement when HasRequired is true.
	// @brief Full uint64 required extent, including a genuinely observed zero extent.
	// @details This advisory value reserves no bytes, future event, quota or retry right.
	// @see APIError.HasRequired; Result.Required; TooLarge
	Required uint64
	// HasRequired distinguishes a known requirement from an untouched sentinel.
	// @brief True when a wrapper/codec has actually established Required.
	// @details Host output wrappers require status 90 and an overwritten all-ones
	// slot; a local fixed-size codec can instead establish its exact required size.
	// @see APIError.Required; Result.HasRequired; EncodeTwist
	HasRequired bool
}

// Error supplies stable diagnostic text while retaining structured numeric fields.
// @brief Return the fixed Go error message for this checked refusal.
// @details Does not format Code/Required, call the Host, allocate a cleanup owner
// or reinterpret a business result. Inspect the APIError fields for exact facts.
// @param[in] e Original error value, copied without changing its unsigned fields.
// @return The literal diagnostic string "ROS Guest operation refused".
// @see APIError.Code; APIError.Required; APIError.HasRequired
func (e APIError) Error() string { return "ROS Guest operation refused" }
func apiError(code uint32, result Result) error {
	if code == OK {
		return nil
	}
	return APIError{code, result.Required, result.HasRequired}
}

// Canonical is implemented by complete generated records. Native identities and
// resource/type/QoS/direction/quotas are independently checked by the Host.
// @brief Complete original canonical-message encoding contract for typed wrappers.
// @details Implementations must return the entire selected schema body, preserve
// original fields/identities and keep returned bytes stable through the receiving
// synchronous wrapper call. Generated implementations own Go-managed storage;
// arbitrary implementations retain their own errors, panics and storage contract.
// The interface provides neither runtime schema discovery nor a native ROS grant.
// @see Canonical.Encode; Decoder; PublishValue; RequestValue
type Canonical interface {
	// Encode produces one complete canonical body or its original implementation error.
	// @brief Encode every field of this value in the selected original wire order.
	// @details Never substitute a valid-looking partial/default message after failure.
	// The implementation defines storage ownership; callers must retain its returned
	// bytes unchanged until the synchronous operation using them has returned.
	// @return Complete stable encoded bytes and nil, or unusable bytes and an error.
	// Runtime panics are not converted into APIError by typed wrappers.
	// @see Canonical; PublishValue; RespondValue; Envelope.Encode
	Encode() ([]byte, error)
}

// Decoder validates one complete canonical body supplied by a typed wrapper.
// @brief Synchronous complete-body decoder preserving its concrete error type.
// @details T may retain safe Go references into bytes; the callback must preserve
// their backing storage and reject malformed/trailing data for its exact schema.
// The SDK neither verifies arbitrary decoder conformance nor recovers its panics.
// @tparam T Original complete decoded value type; a zero value is not success evidence.
// @param[in] bytes Complete stable body borrowed for this callback invocation.
// @return Full decoded T and nil, or an unusable T and the original decoder error.
// @see PollValue; RequestValue; DecodeIncoming; Canonical
type Decoder[T any] func(bytes []byte) (T, error)

// PublishValue encodes before acquiring the owner's operation lease.
// @brief Encode and publish one complete canonical value exactly once.
// @details Propagates arbitrary Encode errors directly, then pins/retains the
// resulting bytes through Owner.Publish. No type registration or retry is implied.
// @tparam T Complete original Canonical message type.
// @param[in] owner Exact independently granted publisher owner; nil refuses locally.
// @param[in] value Original message whose Encode implementation supplies stable bytes.
// @return Nil for actual successful publication, an original encoder error or
// APIError preserving the exact local/Host publication status. Panics propagate.
// @permissions Exact selected alias/type/publish/quota/deadline Host grant.
// @see Canonical.Encode; Owner.Publish; APIError
func PublishValue[T Canonical](owner *Owner, value T) error {
	b, err := value.Encode()
	if err != nil {
		return err
	}
	return apiError(owner.Publish(b), Result{})
}

// PollValue decodes only a successful complete legacy poll output.
// @brief Poll one original message and synchronously decode its complete body.
// @details Rejects a nil decoder before polling. Poll refusal or later decode
// failure can follow event consumption; no automatic retry or grow-and-repoll occurs.
// @tparam T Original complete decoded message type.
// @param[in] owner Exact live independently granted subscription/observer owner.
// @param[in] capacity Explicit complete output allocation, at most MaxOutputBytes.
// @param[in] decode Exact complete-body decoder, invoked once only after successful poll.
// @return Decoded T and nil, zero unusable T with APIError for preflight/poll
// refusal, or the decoder's original value/error pair. Decoder panics propagate.
// @permissions Exact delivery/schema/alias/quota/deadline Host grant.
// @see Owner.Poll; Decoder; PollIncoming; APIError
func PollValue[T any](owner *Owner, capacity uint32, decode Decoder[T]) (T, error) {
	var zero T
	if decode == nil {
		return zero, APIError{Code: Invalid}
	}
	r, code := owner.Poll(capacity)
	if code != OK {
		return zero, apiError(code, r)
	}
	return decode(r.Data)
}

// RequestValue encodes, invokes one exact RPC and decodes its successful output.
// @brief Perform one original typed RPC without replaying effectful refusals.
// @details Rejects a nil decoder before encoding; arbitrary encoder/decoder errors
// remain distinct from checked APIError. Request owns its output allocation, so
// safe Go references retained by the result keep their backing storage alive.
// @tparam Q Original complete Canonical request type.
// @tparam S Original complete decoded response type.
// @param[in] owner Exact independently granted owner for this operation/backend.
// @param[in] op Exact original Operation selector; Request checks backend support.
// @param[in] value Complete original request value, encoded once before invocation.
// @param[in] capacity Explicit complete response allocation, at most MaxOutputBytes.
// @param[in] decode Exact complete-body response decoder; must be nonnil.
// @return Decoded S and nil; zero unusable S with original encoder/APIError on
// those failures; or the decoder's original value/error pair. No panic recovery.
// @permissions Exact operation/type/alias/direction/quota/deadline Host grant.
// @see Owner.Request; Decoder; CallValue; Canonical.Encode
func RequestValue[Q Canonical, S any](owner *Owner, op Operation, value Q, capacity uint32, decode Decoder[S]) (S, error) {
	var zero S
	if decode == nil {
		return zero, APIError{Code: Invalid}
	}
	b, err := value.Encode()
	if err != nil {
		return zero, err
	}
	r, code := owner.Request(op, b, capacity)
	if code != OK {
		return zero, apiError(code, r)
	}
	return decode(r.Data)
}

// CallValue selects the existing business-ABI Service-call operation.
// @brief Call one exact original Service with complete typed request and response.
// @details Delegates RequestValue with OpServiceCall. It creates no native server
// or discovery identity; original-control owned raw12 uses a separate transport.
// @tparam Q Original complete Canonical Service request type.
// @tparam S Original complete decoded Service response type.
// @param[in] owner Exact independently granted original Service-call owner.
// @param[in] value Complete original Service request, encoded once.
// @param[in] capacity Explicit complete response allocation, at most MaxOutputBytes.
// @param[in] decode Nonnil exact complete Service-response decoder.
// @return RequestValue's exact typed value/error pair; transport success does
// not imply a response's application-specific success field is true.
// @permissions Exact original Service type/call/direction/quota/deadline grant.
// @see RequestValue; Owner.CallTrigger; Canonical; APIError
func CallValue[Q Canonical, S any](owner *Owner, value Q, capacity uint32, decode Decoder[S]) (S, error) {
	return RequestValue(owner, OpServiceCall, value, capacity, decode)
}

// Incoming service/action IDs are exact u64 values. A decoded ID is not proof
// of ownership; only the current Instance/backend's live server may respond.
// @brief Complete decoded original incoming ID prefix and schema body.
// @details Direct construction and decoding establish local shape only. The
// current Host separately checks live server ownership, pending state and rights.
// @tparam T Exact original incoming body value type.
// @see DecodeIncoming; PollIncoming; RespondValue; Envelope
type Incoming[T any] struct {
	// ID preserves the entire original nonzero request/goal identifier.
	// @brief Full u64 LE prefix after successful DecodeIncoming validation.
	// @details It is a correlation value, not a capability handle or transferable grant.
	// @see DecodeIncoming; RespondValue; Incoming.Value
	ID uint64
	// Value holds the complete body from the supplied exact decoder.
	// @brief Decoded original body without its eight-byte ID prefix.
	// @details Its decoder defines retention/ownership; safe Go references keep
	// backing storage reachable. A manually constructed zero value is not an event.
	// @see Decoder; DecodeIncoming; Incoming.ID
	Value T
}

// DecodeIncoming validates the original nonzero u64 prefix before decoding the body.
// @brief Decode one complete incoming legacy Service/Action envelope locally.
// @details Performs no Host call. The supplied decoder must validate all remaining
// schema bytes including trailing-data rejection; it runs once after prefix checks.
// @tparam T Exact original incoming body type.
// @param[in] b Stable full envelope: eight-byte ID followed by complete canonical body.
// @param[in] decode Nonnil synchronous exact complete-body decoder.
// @return Incoming and nil, or zero unusable Incoming with APIError(Invalid)
// for prefix/nil-decoder refusal or the original body decoder error.
// @see Incoming; PollIncoming; Decoder; RespondValue
func DecodeIncoming[T any](b []byte, decode Decoder[T]) (Incoming[T], error) {
	if len(b) < 8 || decode == nil {
		return Incoming[T]{}, APIError{Code: Invalid}
	}
	id := binary.LittleEndian.Uint64(b)
	if id == 0 {
		return Incoming[T]{}, APIError{Code: Invalid}
	}
	value, err := decode(b[8:])
	if err != nil {
		return Incoming[T]{}, err
	}
	return Incoming[T]{id, value}, nil
}

// PollIncoming polls before checking the supplied decoder through DecodeIncoming.
// @brief Receive and decode one complete original incoming ID-plus-body event.
// @details A nil decoder is discovered after a successful poll, so it can still
// consume a legacy event. Decoder/refusal/timeout never causes automatic replay.
// @tparam T Exact original incoming Service/Action body type.
// @param[in] owner Exact independently granted live original server/event owner.
// @param[in] capacity Explicit complete envelope allocation, at most MaxOutputBytes.
// @param[in] decode Exact complete-body decoder; nil produces Invalid after poll success.
// @return Complete Incoming and nil, or zero unusable Incoming with preserved
// poll APIError or the exact DecodeIncoming error. Callback panics propagate.
// @permissions Exact original event/server/type/direction/quota/deadline grant.
// @see DecodeIncoming; Owner.Poll; RespondValue; PollValue
func PollIncoming[T any](owner *Owner, capacity uint32, decode Decoder[T]) (Incoming[T], error) {
	r, code := owner.Poll(capacity)
	if code != OK {
		return Incoming[T]{}, apiError(code, r)
	}
	return DecodeIncoming(r.Data, decode)
}

// RespondValue prefixes a complete body with the original pending Service request ID.
// @brief Encode and send one original business-ABI Service response exactly once.
// @details Validates the nonzero full ID, encodes before importing and checks the
// combined eight-byte-prefix/request limit. Host pending ownership is independent
// of local ID shape; failed or uncertain native effects never authorize replay.
// @tparam T Exact original complete Canonical Service-response type.
// @param[in] owner Independently granted response owner for this exact live server.
// @param[in] id Original nonzero owned pending request ID, without generation synthesis.
// @param[in] value Complete original response body with its application outcome fields.
// @return Nil for actual successful response; APIError for ID/size/Host refusal
// or the original encoder error. No encoder/allocation panic is recovered.
// @permissions Exact pending request/Service/type/response/quota/deadline grant.
// @see Incoming; Owner.RespondTrigger; Canonical.Encode; Owner.Request
func RespondValue[T Canonical](owner *Owner, id uint64, value T) error {
	if id == 0 {
		return APIError{Code: Invalid}
	}
	body, err := value.Encode()
	if err != nil {
		return err
	}
	if uint64(len(body))+8 > uint64(MaxRequestBytes) {
		return APIError{Code: TooLarge}
	}
	wire := make([]byte, 8+len(body))
	binary.LittleEndian.PutUint64(wire, id)
	copy(wire[8:], body)
	r, code := owner.Request(OpServiceRespond, wire, 0)
	return apiError(code, r)
}

// SendGoalValue checks the exact successful eight-byte nonzero original goal ID.
// @brief Encode and submit one complete original Action goal without automatic retry.
// @details Uses OpActionSendGoal with eight output bytes. An admitted goal or
// returned ID creates no cancel-any permission, observer, endpoint or future result.
// @tparam T Exact original complete Canonical Action-goal type.
// @param[in] owner Independently granted live Action-send owner for the exact schema.
// @param[in] value Complete original goal body; its encoder runs once before import.
// @return Exact nonzero u64 goal ID and nil; 0 with encoder/APIError on refusal
// or Invalid for a malformed successful ID. Uncertain submission is never replayed.
// @permissions Exact goal/type/direction/quota/deadline Host grant.
// @see CancelOwnGoal; FeedbackValue; ResultValue; Owner.Request
func SendGoalValue[T Canonical](owner *Owner, value T) (uint64, error) {
	b, err := value.Encode()
	if err != nil {
		return 0, err
	}
	r, code := owner.Request(OpActionSendGoal, b, 8)
	if code != OK {
		return 0, apiError(code, r)
	}
	if len(r.Data) != 8 {
		return 0, APIError{Code: Invalid}
	}
	id := binary.LittleEndian.Uint64(r.Data)
	if id == 0 {
		return 0, APIError{Code: Invalid}
	}
	return id, nil
}

// CancelOwnGoal requests cancellation only for one exact original owned goal ID.
// @brief Invoke the separately granted own-goal cancellation operation once.
// @details Validates the exact one-byte canonical Bool response. A true native
// response is application data and does not itself supply a terminal Action result.
// @param[in] owner Exact independently granted own-goal cancellation owner.
// @param[in] id Original nonzero goal ID owned by this current Instance/backend.
// @return Native Bool and nil, or false with APIError for zero ID, Host refusal
// or invalid successful Bool. A false value with nil remains a valid response.
// @permissions Exact own-goal/cancel/type/quota/deadline grant; no any-goal upgrade.
// @see Owner.CancelAnyGoal; SendGoalValue; ResultValue; Owner.Request
func CancelOwnGoal(owner *Owner, id uint64) (bool, error) {
	if id == 0 {
		return false, APIError{Code: Invalid}
	}
	b := make([]byte, 8)
	binary.LittleEndian.PutUint64(b, id)
	r, code := owner.Request(OpActionCancelOwnGoal, b, 1)
	if code != OK {
		return false, apiError(code, r)
	}
	if len(r.Data) != 1 || r.Data[0] > 1 {
		return false, APIError{Code: Invalid}
	}
	return r.Data[0] == 1, nil
}

// FeedbackValue verifies the complete original ID prefix before decoding feedback.
// @brief Receive one exact owned Action feedback body for a requested full u64 ID.
// @details Checks ID/nonnil decoder before import and rejects mismatched or
// truncated successful prefixes. Later decode failure can follow consumption;
// no automatic retry, alias upgrade or default feedback value is substituted.
// @tparam T Exact original decoded feedback-body type.
// @param[in] owner Exact independently granted feedback receive owner.
// @param[in] id Original nonzero owned goal ID, preserved without narrowing.
// @param[in] capacity Explicit complete ID-plus-body allocation, at most MaxOutputBytes.
// @param[in] decode Nonnil synchronous decoder for the complete feedback body only.
// @return Decoded T and nil; zero unusable T with preflight/Host/prefix APIError,
// or the decoder's exact value/error pair. Arbitrary decoder panics propagate.
// @permissions Exact goal/feedback/type/delivery/quota/deadline Host grant.
// @see ResultValue; SendGoalValue; Decoder; Owner.Request
func FeedbackValue[T any](owner *Owner, id uint64, capacity uint32, decode Decoder[T]) (T, error) {
	var zero T
	if id == 0 || decode == nil {
		return zero, APIError{Code: Invalid}
	}
	b := make([]byte, 8)
	binary.LittleEndian.PutUint64(b, id)
	r, code := owner.Request(OpActionReceiveFeedback, b, capacity)
	if code != OK {
		return zero, apiError(code, r)
	}
	if len(r.Data) < 8 || binary.LittleEndian.Uint64(r.Data) != id {
		return zero, APIError{Code: Invalid}
	}
	return decode(r.Data[8:])
}

// Terminal contains one validated original Action terminal ID, kind and body.
// @brief Complete terminal result envelope after successful ResultValue decoding.
// @details Direct local construction cannot attest to native completion,
// cancellation, ownership or authority; the returned error still governs validity.
// @tparam T Exact original complete decoded terminal-body type.
// @see ResultValue; ActionReplyValue; FeedbackValue
type Terminal[T any] struct {
	// ID is the exact nonzero original goal ID checked against the requested ID.
	// @brief Full u64 goal prefix without signed, float or host-int conversion.
	// @details Copies remain local data and convey no native ownership transfer.
	// @see ResultValue; Terminal.Outcome
	ID uint64
	// Outcome preserves the canonical original terminal kind.
	// @brief Kind 2 is success, 3 abort and 4 cancellation after successful validation.
	// @details Terminal kind is business state; it is independent of APIError.Code.
	// @see ResultValue; ActionReplyValue; Terminal.Value
	Outcome uint8
	// Value holds the full body decoded after the ID and one-byte terminal kind.
	// @brief Exact original schema value with the decoder's storage contract.
	// @details Safe Go references keep their backing storage reachable; failed
	// decoding does not expose a partial Terminal from ResultValue.
	// @see Decoder; ResultValue; Terminal.ID
	Value T
}

// ResultValue validates the requested ID and terminal kind before decoding the body.
// @brief Receive one complete exact owned Action terminal envelope.
// @details Accepts only kind 2/3/4 and a matching nonzero full ID. Host refusal,
// capacity, envelope or decoder failure never causes replay; the event may
// already be consumed even when a later validation/decoder step fails.
// @tparam T Exact original decoded terminal-body type.
// @param[in] owner Independently granted exact Action-result owner.
// @param[in] id Original nonzero owned goal ID, checked against the actual response.
// @param[in] capacity Explicit full ID/kind/body allocation, at most MaxOutputBytes.
// @param[in] decode Nonnil exact complete-body decoder, excluding ID and kind.
// @return Full Terminal and nil, or zero unusable Terminal with APIError or the
// original decoder error. Arbitrary decoder/allocation panics propagate.
// @permissions Exact goal/result/type/delivery/quota/deadline Host grant.
// @see Terminal; FeedbackValue; SendGoalValue; ActionReplyValue
func ResultValue[T any](owner *Owner, id uint64, capacity uint32, decode Decoder[T]) (Terminal[T], error) {
	if id == 0 || decode == nil {
		return Terminal[T]{}, APIError{Code: Invalid}
	}
	b := make([]byte, 8)
	binary.LittleEndian.PutUint64(b, id)
	r, code := owner.Request(OpActionReceiveResult, b, capacity)
	if code != OK {
		return Terminal[T]{}, apiError(code, r)
	}
	if len(r.Data) < 9 || binary.LittleEndian.Uint64(r.Data) != id || r.Data[8] < 2 || r.Data[8] > 4 {
		return Terminal[T]{}, APIError{Code: Invalid}
	}
	value, err := decode(r.Data[9:])
	if err != nil {
		return Terminal[T]{}, err
	}
	return Terminal[T]{id, r.Data[8], value}, nil
}

// ActionReplyValue prefixes an original reply body with its owned ID and reply kind.
// @brief Encode and send one original Action feedback/result reply exactly once.
// @details Validates nonzero ID and kind 1..4 before encoding; nine prefix bytes
// count toward MaxRequestBytes. Native pending-goal/cancel state and ownership
// remain Host checks; selecting kind 4 does not grant cancellation authority.
// @tparam T Exact original complete Canonical Action-reply body type.
// @param[in] owner Independently granted exact original Action-response owner.
// @param[in] id Original nonzero owned pending goal ID, without synthesis.
// @param[in] kind Original kind: feedback 1, success 2, abort 3 or cancellation 4.
// @param[in] value Complete original reply body, encoded before import.
// @return Nil for actual success, original encoder error or exact local/Host
// APIError. No checked refusal or panic triggers an automatic retry.
// @permissions Exact owned goal/reply/type/direction/quota/deadline Host grant.
// @see Terminal; ResultValue; Canonical.Encode; Owner.Request
func ActionReplyValue[T Canonical](owner *Owner, id uint64, kind uint8, value T) error {
	if id == 0 || kind < 1 || kind > 4 {
		return APIError{Code: Invalid}
	}
	body, err := value.Encode()
	if err != nil {
		return err
	}
	if uint64(len(body))+9 > uint64(MaxRequestBytes) {
		return APIError{Code: TooLarge}
	}
	wire := make([]byte, 9+len(body))
	binary.LittleEndian.PutUint64(wire, id)
	wire[8] = kind
	copy(wire[9:], body)
	r, code := owner.Request(OpActionRespond, wire, 0)
	return apiError(code, r)
}

// Node is a local name and bounded ownership group. No native rcl context,
// discovery permission, executor, clock or endpoint is constructed implicitly.
// @brief Local validated display name plus an explicitly bounded shared Session.
// @details Name does not select an alias or become a native ROS identity. Pointer
// copies share the Session; Open and Close still use its checked ownership state.
// A manually zero-constructed Node has no Session and cannot open Host resources.
// @see NewNode; Node.Name; Node.Open; Node.Close; Session
type Node struct {
	name    string
	session *Session
}

// NewNode validates the local label before allocating the bounded Session.
// @brief Construct a named local ownership group without a native Node import.
// @details Rejects malformed labels; it neither normalizes/resolves an alias
// nor grants discovery, clock, executor or endpoint rights. Allocation can panic.
// @param[in] name Nonempty valid UTF-8 local label, at most 255 bytes, without NUL.
// @param[in] maximum Explicit Session owner-slot count in the range 1..1024.
// @return New Node and OK, or nil and Invalid for name/slot validation refusal.
// @see Node; NewSession; Node.Open; Node.Close
func NewNode(name string, maximum uint32) (*Node, uint32) {
	if name == "" || len(name) > 255 || !utf8.ValidString(name) {
		return nil, Invalid
	}
	for _, r := range name {
		if r == 0 {
			return nil, Invalid
		}
	}
	s, code := NewSession(maximum)
	if code != OK {
		return nil, code
	}
	return &Node{name, s}, OK
}

// Name reads only the retained local display label.
// @brief Return this Node's original immutable name without a Host query.
// @details The label remains readable after Session.Close and supplies no native
// identity or capability alias. A nil receiver returns the empty string.
// @param[in] n Local Node pointer; nil is accepted for this observation.
// @return Retained Go string, or empty for nil/zero-constructed Node.
// @see NewNode; Node.Open; Node.Close
func (n *Node) Name() string {
	if n == nil {
		return ""
	}
	return n.name
}

// Open delegates one exact alias open to this Node's bounded Session.
// @brief Open a separately granted original owner without deriving it from Name.
// @details The local label supplies no prefix, namespace or policy fallback;
// Session slot reuse, nonblocking lease and once-only retirement rules apply.
// @param[in] n Existing named local ownership group; nil returns BadHandle.
// @param[in] alias Exact original valid UTF-8 policy alias, at most 255 bytes, no NUL.
// @return New Owner and OK, or nil with exact Session.Open validation/Host status.
// @permissions Exact current-Instance/backend alias grant supplied independently.
// @see Session.Open; Open; Node.Name; Node.Close
func (n *Node) Open(alias string) (*Owner, uint32) {
	if n == nil {
		return nil, BadHandle
	}
	return n.session.Open(alias)
}

// Close delegates one complete reverse-slot cleanup pass to this Node's Session.
// @brief Retire this local Node's retained original owners and preserve each status.
// @details Marks the shared Session closed after acquiring all owner leases;
// journal order is storage order. Outer OK does not imply every native close is OK.
// @param[in] n Local ownership group to retire; nil returns BadHandle.
// @return Owned per-slot journal and Session.Close's exact outer status; nil
// journal with Busy/BadHandle means the cleanup pass did not start.
// @see Session.Close; Cleanup; Node.Open; Owner.Close
func (n *Node) Close() ([]Cleanup, uint32) {
	if n == nil {
		return nil, BadHandle
	}
	return n.session.Close()
}

type executorEntry struct {
	owner    *Owner
	capacity uint32
	callback func([]byte) error
}

func dispatchCallback(entry executorEntry, data []byte) error {
	state, _, code := entry.owner.acquire()
	if code != OK {
		return apiError(code, Result{})
	}
	defer state.busy.Store(false)
	return entry.callback(data)
}

// Executor invokes callbacks only in SpinOnce on the caller goroutine.
// @brief Bounded local ordered poll/callback registrations without a background loop.
// @details Retains Owner/callback references but does not own their raw cleanup,
// open subscriptions, grant authority or start threads/timers. Use the constructed
// pointer and never copy this atomic-bearing value after use. Its nonblocking
// lease covers Add, SpinOnce, callbacks and Close, so reentry returns Busy.
// @see NewExecutor; Executor.Add; Executor.SpinOnce; Executor.Close; Session.Close
type Executor struct {
	busy    atomic.Bool
	closed  bool
	entries []executorEntry
	maximum uint32
}

// NewExecutor allocates only local bounded registration storage.
// @brief Construct an empty explicitly stepped callback dispatcher.
// @details No Host import, native executor, subscription or goroutine starts.
// Allocation failures can panic rather than returning a checked status.
// @param[in] maximum Explicit registration capacity in the range 1..1024.
// @return New Executor and OK, or nil and Invalid for an out-of-range capacity.
// @see Executor; Executor.Add; Executor.SpinOnce; Executor.Close
func NewExecutor(maximum uint32) (*Executor, uint32) {
	if maximum == 0 || maximum > 1024 {
		return nil, Invalid
	}
	return &Executor{entries: make([]executorEntry, 0, maximum), maximum: maximum}, OK
}

// Add retains one ordered registration without polling or acquiring the Owner.
// @brief Register one synchronous callback and explicit complete-event allocation.
// @details Validates nonnil pointers/callback and local capacity only; an Owner's
// actual liveness/grants are checked at SpinOnce. Duplicate registrations are
// allowed and occupy separate entries. Close releases references, not owners.
// @param[in,out] e Existing live Executor; concurrent/reentrant entry returns Busy.
// @param[in] owner Retained original Owner pointer; it must remain usable for polling.
// @param[in] capacity Explicit full poll output allocation, at most MaxOutputBytes.
// @param[in] callback Nonnil synchronous function receiving complete legacy poll bytes.
// @return OK for local registration, Invalid for nil owner/callback, TooLarge
// for capacity limits, or Busy/BadHandle. OK is not native subscription success.
// @permissions No rights are added; polling still needs the owner's exact grants.
// @see Executor.SpinOnce; Executor.Close; Owner.Poll; NewExecutor
func (e *Executor) Add(owner *Owner, capacity uint32, callback func([]byte) error) uint32 {
	if e == nil {
		return BadHandle
	}
	if !e.busy.CompareAndSwap(false, true) {
		return Busy
	}
	defer e.busy.Store(false)
	if e.closed {
		return BadHandle
	}
	if owner == nil || callback == nil {
		return Invalid
	}
	if uint32(len(e.entries)) == e.maximum || capacity > MaxOutputBytes {
		return TooLarge
	}
	e.entries = append(e.entries, executorEntry{owner, capacity, callback})
	return OK
}

// SpinOnce visits retained entries once in registration order on the calling goroutine.
// @brief Poll and synchronously dispatch each ready legacy event without a hidden loop.
// @details Skips actual Again statuses. After a successful poll it reacquires the
// same Owner lease for callback duration; that reacquire can fail after event
// consumption. Reentry on this Executor or the callback's leased Owner returns
// Busy. A callback may retain safe Go references to its owned poll slice; bytes
// are not reused by the next poll. Arbitrary callback errors/panics propagate,
// defers release leases, and no failed/consumed operation is automatically retried.
// @param[in,out] e Existing live Executor, borrowed through every synchronous callback.
// @return Completed successful callback count and nil, or completed prefix count
// plus exact poll/reacquire APIError or callback error. The failing callback is
// not counted even if it produced effects before returning its error.
// @permissions Each poll uses the original owner's independent delivery/schema grants.
// @see Executor.Add; Executor.Close; Owner.Poll; APIError
func (e *Executor) SpinOnce() (uint32, error) {
	if e == nil {
		return 0, APIError{Code: BadHandle}
	}
	if !e.busy.CompareAndSwap(false, true) {
		return 0, APIError{Code: Busy}
	}
	defer e.busy.Store(false)
	if e.closed {
		return 0, APIError{Code: BadHandle}
	}
	var delivered uint32
	for _, entry := range e.entries {
		r, code := entry.owner.Poll(entry.capacity)
		if code == Again {
			continue
		}
		if code != OK {
			return delivered, apiError(code, r)
		}
		if err := dispatchCallback(entry, r.Data); err != nil {
			return delivered, err
		}
		delivered++
	}
	return delivered, nil
}

// Close releases local callback references. Resource owners need checked close.
// @brief Permanently retire this local dispatcher and release retained registrations.
// @details Performs no raw capability close, event consumption or callback. The
// owning Session/caller must separately close each original Owner and retain its
// result. Concurrent/reentrant Close during dispatch returns Busy without changes.
// @param[in,out] e Existing live Executor to retire exactly once.
// @return OK for local retirement, Busy for active use or BadHandle for nil/already closed.
// @see Executor.SpinOnce; Executor.Add; Session.Close; Owner.Close
func (e *Executor) Close() uint32 {
	if e == nil {
		return BadHandle
	}
	if !e.busy.CompareAndSwap(false, true) {
		return Busy
	}
	defer e.busy.Store(false)
	if e.closed {
		return BadHandle
	}
	e.closed = true
	e.entries = nil
	return OK
}
