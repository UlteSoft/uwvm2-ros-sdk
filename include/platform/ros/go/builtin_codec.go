//go:build wasip1 && wasm

// Complete builtin Fibonacci/clock value codecs shared with owned TinyGo source.
// A decoded ID conveys bytes, never native ownership or a capability grant.
package roswasm

import "encoding/binary"

func builtinNeed(out []byte, n uint64) error {
	if n > uint64(len(out)) {
		return APIError{Code: TooLarge, Required: n, HasRequired: true}
	}
	return nil
}

// GoalID is a Gateway-issued Fibonacci ID. Its Go zero value is invalid and
// typed client/reply methods reject it. Copying a decoded ID never transfers
// authority, and its generation/session bits must never be synthesized.
// @brief Exact nonzero full-width original Fibonacci goal identifier value.
// @details DecodeGoalID establishes byte shape only; the Host independently
// authenticates Instance/backend/pending-goal ownership for every operation.
// Raw and Bytes preserve even the invalid zero value without granting authority.
// @see DecodeGoalID; GoalID.Raw; GoalID.Bytes; FibonacciSequence
type GoalID struct{ value uint64 }

// Raw returns the exact goal ID for a reviewed raw operation.
// @brief Read the retained original u64 without signed/float/host-int conversion.
// @details Performs no Host check and does not reject a zero-constructed GoalID.
// The caller still needs exact ownership and an independently granted operation.
// @param[in] id Original local goal-ID value, copied without mutation.
// @return Exact retained uint64, including 0 for the invalid zero value.
// @see GoalID.Bytes; DecodeGoalID; GoalID
func (id GoalID) Raw() uint64 { return id.value }

// Bytes returns the canonical u64 request used by feedback/result/cancel calls.
// A zero-value GoalID has no authority and must not be used as a raw request.
// @brief Encode the retained full goal ID as an eight-byte LE array value.
// @details Returns independent Go array storage without importing or verifying
// native ownership. This observation does not validate a zero-constructed ID.
// @param[in] id Original local goal-ID value, borrowed only during encoding.
// @return Exact eight bytes, including all-zero bytes for an invalid zero value.
// @see GoalID.Raw; DecodeGoalID; FeedbackValue; CancelOwnGoal
func (id GoalID) Bytes() [8]byte {
	var b [8]byte
	binary.LittleEndian.PutUint64(b[:], id.value)
	return b
}

// EncodeFibonacciGoal writes order0..46; the host can require a smaller maximum.
// @brief Encode the original bounded signed i32 Fibonacci order into four LE bytes.
// @details Checks order and full output capacity before any write. The Host's
// independent type/alias policy can require a lower order or deny the operation.
// @param[in] order Exact original signed order in the inclusive range 0..46.
// @param[out] out Caller-owned writable storage; at least four bytes are required.
// @return Initialized prefix length 4 and nil; 0 with APIError(Invalid) for order
// refusal or TooLarge with known Required=4. Checked refusals leave out unchanged.
// @see DecodeFibonacciGoal; SendGoalValue; EncodeFibonacciReply
func EncodeFibonacciGoal(order int32, out []byte) (uint64, error) {
	if order < 0 || order > 46 {
		return 0, invalid()
	}
	if err := builtinNeed(out, 4); err != nil {
		return 0, err
	}
	binary.LittleEndian.PutUint32(out[:4], uint32(order))
	return 4, nil
}

// DecodeGoalID consumes a successful send-goal response without float conversion.
// @brief Validate exactly eight bytes containing a nonzero original goal ID.
// @details Decoding local bytes proves neither successful admission nor native
// ownership. No input storage is retained by the returned scalar GoalID value.
// @param[in] b Complete stable u64 LE ID response, with no trailing bytes.
// @return Exact GoalID and nil, or invalid zero GoalID and APIError(Invalid).
// @see GoalID; DecodeFibonacciGoalEvent; GoalID.Raw; GoalID.Bytes
func DecodeGoalID(b []byte) (GoalID, error) {
	if len(b) != 8 {
		return GoalID{}, invalid()
	}
	v := binary.LittleEndian.Uint64(b)
	if v == 0 {
		return GoalID{}, invalid()
	}
	return GoalID{v}, nil
}

// DecodeFibonacciGoalEvent decodes an advertised owned ID followed by i32 order.
// @brief Decode one exact 12-byte original incoming Fibonacci goal envelope.
// @details Checks nonzero full ID and signed order 0..46 without integer/float
// narrowing. Actual server/pending-goal ownership remains a Host decision.
// @param[in] b Complete stable u64 LE ID plus i32 LE order, without trailing bytes.
// @return GoalID, order and nil; zero unusable values and APIError(Invalid)
// for shape, ID or order refusal. No input storage is retained.
// @see DecodeGoalID; DecodeFibonacciGoal; EncodeFibonacciGoal; PollIncoming
func DecodeFibonacciGoalEvent(b []byte) (GoalID, int32, error) {
	if len(b) != 12 {
		return GoalID{}, 0, invalid()
	}
	id, err := DecodeGoalID(b[:8])
	if err != nil {
		return GoalID{}, 0, err
	}
	order := int32(binary.LittleEndian.Uint32(b[8:]))
	if order < 0 || order > 46 {
		return GoalID{}, 0, invalid()
	}
	return id, order, nil
}

// FibonacciSequence is a decoded feedback/result envelope with an exact owned ID.
// @brief Original bounded Fibonacci ID, envelope kind and complete i32 sequence value.
// @details Codec checks establish canonical shape and nonnegative elements,
// not the Fibonacci recurrence, native ownership, successful execution or authority.
// Returned decoder slices own separate Go-managed element storage.
// @see DecodeFibonacciFeedback; DecodeFibonacciResult; DecodeFibonacciReply
type FibonacciSequence struct {
	// Goal is the Gateway-issued goal ID; never construct a zero GoalID.
	// @brief Full original nonzero goal ID after successful codec validation.
	// @details Copying this field does not transfer native pending-goal ownership.
	// @see GoalID; FibonacciSequence.Kind; DecodeGoalID
	Goal GoalID
	// Kind is feedback1, success2, abort3 or cancellation4.
	// @brief Original canonical envelope kind, independent of transport errno.
	// @details Feedback decoding supplies kind 1; terminal decoding accepts only
	// 2..4. Direct public construction does not authenticate a native state change.
	// @see DecodeFibonacciResult; DecodeFibonacciReply; FibonacciSequence.Values
	Kind uint8
	// Values contains at most48 nonnegative signed i32 values.
	// @brief Complete original sequence elements in their original order.
	// @details Decoders copy element values; no input byte slice must remain live.
	// Shape validation does not prove mathematical or application-level correctness.
	// @see EncodeFibonacciReply; EncodeFibonacciFeedback; FibonacciSequence.Goal
	Values []int32
}

func decodeSequence(b []byte, kindByte bool) (FibonacciSequence, error) {
	prefix := uint64(12)
	at := uint64(8)
	kind := uint8(1)
	if kindByte {
		prefix = 13
		at = 9
	}
	if uint64(len(b)) < prefix {
		return FibonacciSequence{}, invalid()
	}
	id, err := DecodeGoalID(b[:8])
	if err != nil {
		return FibonacciSequence{}, err
	}
	if kindByte {
		kind = b[8]
		if kind < 2 || kind > 4 {
			return FibonacciSequence{}, invalid()
		}
	}
	count := binary.LittleEndian.Uint32(b[at : at+4])
	if count > 48 || uint64(len(b))-prefix != uint64(count)*4 {
		return FibonacciSequence{}, invalid()
	}
	out := FibonacciSequence{Goal: id, Kind: kind, Values: make([]int32, count)}
	for i := uint32(0); i < count; i++ {
		start := prefix + uint64(i)*4
		v := int32(binary.LittleEndian.Uint32(b[start : start+4]))
		if v < 0 {
			return FibonacciSequence{}, invalid()
		}
		out.Values[i] = v
	}
	return out, nil
}

// DecodeFibonacciFeedback consumes the complete ID+count+values feedback envelope.
// @brief Decode full original feedback: u64 ID, u32 count and exact i32 elements.
// @details Requires nonzero ID, at most 48 elements, nonnegative signed values
// and no trailing bytes. The decoded kind is 1 and the sequence owns its storage.
// @param[in] b Complete stable feedback envelope without a kind byte.
// @return Complete FibonacciSequence and nil, or zero unusable value with
// APIError(Invalid). Allocation panics remain outside the checked error channel.
// @see FibonacciSequence; DecodeFibonacciResult; EncodeFibonacciFeedback
func DecodeFibonacciFeedback(b []byte) (FibonacciSequence, error) { return decodeSequence(b, false) }

// DecodeFibonacciResult consumes a terminal2/3/4 result envelope.
// @brief Decode full original terminal ID, kind, count and i32 sequence body.
// @details Accepts kinds 2/3/4 only, nonzero ID, at most 48 nonnegative signed
// elements and exact complete length. A kind-4 value is no cancellation grant.
// @param[in] b Complete stable terminal envelope, including its one-byte kind.
// @return Complete owned FibonacciSequence and nil, or zero unusable value
// with APIError(Invalid). No input storage is retained; allocation can panic.
// @see DecodeFibonacciFeedback; DecodeFibonacciReply; FibonacciSequence
func DecodeFibonacciResult(b []byte) (FibonacciSequence, error) { return decodeSequence(b, true) }

// EncodeFibonacciReply writes server feedback1/result2/3/4. Cancellation4 remains
// subject to the native state machine; codecs do not grant cancel-any authority.
// @brief Encode one complete original server reply with ID, kind, count and values.
// @details Validates the complete ID/kind/element domain and output capacity
// before writing. It checks shape only and never verifies recurrence or native
// pending/cancel state. Caller storage remains owned by the caller after return.
// @param[in] id Exact nonzero original goal ID; a local copy grants no ownership.
// @param[in] kind Original feedback 1, success 2, abort 3 or cancellation 4.
// @param[in] values Stable complete sequence of at most 48 nonnegative signed i32 values.
// @param[out] out Writable storage disjoint from values for the complete 13+4*N prefix.
// @return Initialized prefix length and nil; 0 with APIError(Invalid) for value
// refusal or TooLarge with the known exact requirement. Checked errors leave out unchanged.
// @see DecodeFibonacciReply; EncodeFibonacciFeedback; ActionReplyValue
func EncodeFibonacciReply(id GoalID, kind uint8, values []int32, out []byte) (uint64, error) {
	if id.value == 0 || kind < 1 || kind > 4 || len(values) > 48 {
		return 0, invalid()
	}
	for _, v := range values {
		if v < 0 {
			return 0, invalid()
		}
	}
	n := uint64(13) + uint64(len(values))*4
	if err := builtinNeed(out, n); err != nil {
		return 0, err
	}
	binary.LittleEndian.PutUint64(out[:8], id.value)
	out[8] = kind
	binary.LittleEndian.PutUint32(out[9:13], uint32(len(values)))
	for i, v := range values {
		binary.LittleEndian.PutUint32(out[13+i*4:17+i*4], uint32(v))
	}
	return n, nil
}

// DecodeTime reads exact unsigned nanoseconds in a separately granted clock domain.
// @brief Decode a complete eight-byte original u64 LE nanosecond value locally.
// @details Retains the full unsigned range and no input storage. Bytes alone
// establish no clock-domain identity, current observation or runtime clock grant.
// @param[in] b Complete stable canonical time bytes without truncation/trailing data.
// @return Exact nanoseconds and nil, or 0 with APIError(Invalid) for size refusal.
// A zero value with nil is valid and is distinct from failure.
// @see EncodeTime; Owner.ReadClock; OpTimeReadRos
func DecodeTime(b []byte) (uint64, error) {
	if len(b) != 8 {
		return 0, invalid()
	}
	return binary.LittleEndian.Uint64(b), nil
}

func putTime(out []byte, v uint64) { binary.LittleEndian.PutUint64(out, v) }

// EncodeTriggerRequest returns the canonical empty Trigger request.
// @brief Return the exact zero-length builtin Trigger body without an ID prefix.
// @details Creates no Service owner or request ID; empty encoding still needs
// the exact granted original Trigger Service when submitted to the Host.
// @return Empty Go byte slice representing the entire canonical Trigger request.
// @see DecodeTriggerBody; Owner.CallTrigger; DecodeTriggerRequest
func EncodeTriggerRequest() []byte { return []byte{} }

// DecodeTriggerBody rejects every nonempty request for the Trigger adapter.
// @brief Validate the complete original Trigger body as exactly zero bytes.
// @details Checks only local body shape. An incoming full event has a separate
// nonzero u64 request-ID prefix handled by DecodeTriggerRequest/DecodeIncoming.
// @param[in] b Complete original body only; nil and empty slices both have valid length 0.
// @return Nil for empty body, or APIError(Invalid) for every nonempty input.
// @see EncodeTriggerRequest; DecodeTriggerRequest; DecodeIncoming
func DecodeTriggerBody(b []byte) error {
	if len(b) != 0 {
		return invalid()
	}
	return nil
}

// EncodeFibonacciFeedback writes the incoming ID+count+values shape, without a
// kind byte. This codec helper does not grant native feedback publication rights.
// @brief Encode one complete original feedback envelope without a reply-kind byte.
// @details Checks nonzero ID, at most 48 nonnegative elements and complete output
// capacity before writing. It preserves order but does not verify the recurrence.
// @param[in] id Exact nonzero original goal ID, without ownership synthesis.
// @param[in] values Stable full original nonnegative i32 sequence, at most 48 elements.
// @param[out] out Caller storage disjoint from values, for exactly 12+4*N initialized bytes.
// @return Initialized prefix extent and nil; 0 with APIError(Invalid) or
// TooLarge with known exact requirement. Checked refusals leave output unchanged.
// @see DecodeFibonacciFeedback; EncodeFibonacciReply; FibonacciSequence
func EncodeFibonacciFeedback(id GoalID, values []int32, out []byte) (uint64, error) {
	if id.value == 0 || len(values) > 48 {
		return 0, invalid()
	}
	for _, v := range values {
		if v < 0 {
			return 0, invalid()
		}
	}
	n := uint64(12) + uint64(len(values))*4
	if err := builtinNeed(out, n); err != nil {
		return 0, err
	}
	binary.LittleEndian.PutUint64(out[:8], id.value)
	binary.LittleEndian.PutUint32(out[8:12], uint32(len(values)))
	for i, v := range values {
		binary.LittleEndian.PutUint32(out[12+i*4:16+i*4], uint32(v))
	}
	return n, nil
}

// DecodeFibonacciReply accepts canonical server feedback1 or result2/3/4. It
// checks shape only; it cannot attest to native cancellation/pending-goal state.
// @brief Decode a complete original kind-1 feedback or kind-2/3/4 terminal reply.
// @details Requires nonzero full ID, exact count/length, at most 48 elements and
// nonnegative signed i32 values. Copies all element storage and rejects trailing bytes.
// @param[in] b Stable entire ID/kind/count/body reply envelope.
// @return Complete owned FibonacciSequence and nil, or zero unusable sequence
// with APIError(Invalid). Runtime allocation failure can panic.
// @see DecodeFibonacciResult; DecodeFibonacciFeedback; EncodeFibonacciReply
func DecodeFibonacciReply(b []byte) (FibonacciSequence, error) {
	if len(b) < 13 || b[8] < 1 || b[8] > 4 {
		return FibonacciSequence{}, invalid()
	}
	if b[8] > 1 {
		return DecodeFibonacciResult(b)
	}
	id, err := DecodeGoalID(b[:8])
	if err != nil {
		return FibonacciSequence{}, err
	}
	n := binary.LittleEndian.Uint32(b[9:13])
	if n > 48 || uint64(len(b)-13) != uint64(n)*4 {
		return FibonacciSequence{}, invalid()
	}
	v := FibonacciSequence{Goal: id, Kind: 1, Values: make([]int32, n)}
	for i := range v.Values {
		x := int32(binary.LittleEndian.Uint32(b[13+i*4 : 17+i*4]))
		if x < 0 {
			return FibonacciSequence{}, invalid()
		}
		v.Values[i] = x
	}
	return v, nil
}

// DecodeFibonacciGoal validates exactly one original signed Fibonacci order.
// @brief Decode four LE bytes as an i32 order in the inclusive range 0..46.
// @details Rejects all truncation/trailing bytes and retains no input storage;
// native policy may admit fewer orders and still independently deny submission.
// @param[in] b Stable complete original four-byte goal body without an ID prefix.
// @return Exact order and nil, or 0 with APIError(Invalid) for shape/domain refusal.
// @see EncodeFibonacciGoal; DecodeFibonacciGoalEvent; SendGoalValue
func DecodeFibonacciGoal(b []byte) (int32, error) {
	if len(b) != 4 {
		return 0, invalid()
	}
	order := int32(binary.LittleEndian.Uint32(b))
	if order < 0 || order > 46 {
		return 0, invalid()
	}
	return order, nil
}

// EncodeTime preserves the complete unsigned nanosecond value in caller storage.
// @brief Write exactly eight original u64 LE time bytes without choosing a clock.
// @details Checks complete capacity before writing and accepts the full u64
// range, including zero. This value codec grants no clock query/control permission.
// @param[in] value Exact original unsigned nanoseconds in the separately known domain.
// @param[out] out Caller-owned writable byte storage with capacity of at least eight.
// @return Initialized prefix length 8 and nil, or 0 with APIError(TooLarge)
// and known Required=8. Checked capacity refusal leaves out unchanged.
// @see DecodeTime; Owner.ReadClock; OpTimeReadSteady
func EncodeTime(value uint64, out []byte) (uint64, error) {
	if err := builtinNeed(out, 8); err != nil {
		return 0, err
	}
	binary.LittleEndian.PutUint64(out, value)
	return 8, nil
}

// Envelope is a complete value prefix and body. Its ID is checked for shape;
// the current Host independently checks actual request/goal ownership.
// @brief Original nonzero u64 correlation prefix plus one complete Canonical body.
// @details Public construction is local data only; encoding checks neither
// native pending-request ownership nor a live server/goal generation.
// @tparam T Original complete body type implementing Canonical.
// @see Envelope.Encode; Incoming; Canonical; RespondValue
type Envelope[T Canonical] struct {
	// ID is the exact original nonzero ID to prefix without narrowing.
	// @brief Full original request/goal correlation value, never a capability handle.
	// @details Envelope.Encode rejects zero; all native ownership checks remain separate.
	// @see Envelope.Encode; Incoming.ID; Envelope.Value
	ID uint64
	// Value is the complete original schema body without its ID prefix.
	// @brief Original Canonical value encoded by its own exact implementation.
	// @details Its arbitrary encoder errors/panics remain distinct from APIError.
	// @see Canonical.Encode; Envelope.Encode; Envelope.ID
	Value T
}

// Encode copies one exact ID prefix and complete body into new bounded Go storage.
// @brief Encode the entire original envelope with its nonzero u64 LE identifier.
// @details Validates ID before invoking Value.Encode, propagates its concrete
// error and checks the combined eight-byte-prefix MaxCanonicalBytes limit.
// No Host import, native ID allocation or automatic retry occurs.
// @param[in] e Original envelope; body encoding must stay stable through the copy.
// @return New owned complete initialized bytes and nil; nil with APIError for
// zero ID/size refusal or original encoder error. Allocation/encoder panics propagate.
// @see Envelope; Canonical.Encode; Incoming; MaxCanonicalBytes
func (e Envelope[T]) Encode() ([]byte, error) {
	if e.ID == 0 {
		return nil, invalid()
	}
	b, err := e.Value.Encode()
	if err != nil {
		return nil, err
	}
	if uint64(len(b))+8 > MaxCanonicalBytes {
		return nil, APIError{Code: TooLarge}
	}
	result := make([]byte, 8+len(b))
	binary.LittleEndian.PutUint64(result, e.ID)
	copy(result[8:], b)
	return result, nil
}
