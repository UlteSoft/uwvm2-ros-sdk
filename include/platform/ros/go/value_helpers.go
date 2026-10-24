//go:build wasip1 && wasm

package roswasm

import (
	"encoding/binary"
	"math"
)

// Error retains the same exact numeric/length facts as APIError. Canonical
// codecs share their data model with TinyGo, never its compiler or runtime.
// @brief Public alias of APIError used by the builtin canonical value codecs.
// @details This is the same Go type and fields, without an error translation or
// extra authority. Other user encoders/decoders can still return arbitrary errors.
// @see APIError; APIError.Code; Message; Canonical
type Error = APIError

// MaxCanonicalBytes bounds complete builtin canonical bodies, including prefixes.
// @brief Inclusive original complete canonical byte limit 4193786.
// @details Readers/writers enforce this local envelope ceiling; native policy
// and per-schema element/field limits may be lower. The value allocates nothing.
// @see MaxRequestBytes; ParameterValue.Encode; DecodeParameter; Image.Encode
const MaxCanonicalBytes uint64 = 4193786

// MaxParameterElements bounds count-prefixed builtin parameter arrays.
// @brief Inclusive local parameter-array count limit 1048576 elements.
// @details The complete MaxCanonicalBytes limit also applies, so wide elements
// can hit the byte ceiling first. Native grants may impose much smaller limits.
// @see ParameterValue; ParameterValue.Encode; DecodeParameter; MaxCanonicalBytes
const MaxParameterElements uint32 = 1048576

func invalid() error { return Error{Code: Invalid} }

// DecodeBool validates the complete one-byte canonical Bool domain.
// @brief Decode exactly byte 0 as false or byte 1 as true without coercion.
// @details Retains no input storage and calls no Host operation. False with nil
// is valid data, distinct from a false result accompanied by a validation error.
// @param[in] bytes Complete stable canonical Bool byte without trailing data.
// @return Bool and nil, or false with APIError(Invalid) for length/domain refusal.
// @see Bool.Encode; Owner.ChangeLifecycleState; Owner.CancelAnyGoal
func DecodeBool(bytes []byte) (bool, error) {
	if len(bytes) != 1 || bytes[0] > 1 {
		return false, invalid()
	}
	return bytes[0] == 1, nil
}

// Encode creates the complete original builtin Trigger/SetBool response body.
// @brief Encode application Bool followed by u32 UTF-8 byte length and full message.
// @details Allocates Go-owned storage, preserves embedded NUL/BOM text and checks
// complete MaxCanonicalBytes/UTF-8 limits. No ID prefix or transport status is added.
// @param[in] value Original Service business result; Success is not an errno.
// @return New complete bytes and nil, or nil with APIError(Invalid/TooLarge).
// Allocation panics remain separate from checked errors.
// @see ServiceResponse; DecodeServiceResponse; RespondValue; Owner.RespondTrigger
func (value ServiceResponse) Encode() ([]byte, error) {
	w := &writer{}
	if value.Success {
		w.u8(1)
	} else {
		w.u8(0)
	}
	w.text(value.Message)
	return w.finish()
}

// EncodeTwist writes original finite linear xyz and angular xyz scalars in order.
// @brief Encode exactly six finite Float64 LE values into a 48-byte prefix.
// @details Preserves IEEE754 bits including negative zero; does not normalize,
// scale, clamp or authorize motion. All values/capacity are checked before writes.
// @param[in] value Original linear xyz in m/s followed by angular xyz in rad/s.
// @param[out] output Caller-owned writable storage for at least 48 bytes.
// @return Initialized prefix extent 48 and nil; 0 with APIError(Invalid) for
// nonfinite values or TooLarge with Required=48. Checked errors leave output unchanged.
// @see Twist; Twist.Encode; DecodeTwist; PublishValue
func EncodeTwist(value [6]float64, output []byte) (uint64, error) {
	for _, v := range value {
		if math.IsNaN(v) || math.IsInf(v, 0) {
			return 0, invalid()
		}
	}
	if len(output) < 48 {
		return 0, Error{Code: TooLarge, Required: 48, HasRequired: true}
	}
	for i, v := range value {
		binary.LittleEndian.PutUint64(output[i*8:i*8+8], math.Float64bits(v))
	}
	return 48, nil
}

// DecodeTwist reads a complete finite builtin Twist without input retention.
// @brief Decode exactly 48 bytes as linear xyz then angular xyz Float64 LE.
// @details Preserves finite IEEE754 bits including negative zero; native motion,
// frame, field-bound and publication checks remain independent Host decisions.
// @param[in] bytes Stable complete original Twist body, with no trailing data.
// @return Six original values and nil, or zero unusable array and APIError(Invalid)
// for size/nonfinite refusal. No unit conversion or normalization occurs.
// @see EncodeTwist; Twist.Encode; Twist; PollValue
func DecodeTwist(bytes []byte) ([6]float64, error) {
	var value [6]float64
	if len(bytes) != 48 {
		return value, invalid()
	}
	for i := range value {
		value[i] = math.Float64frombits(binary.LittleEndian.Uint64(bytes[i*8 : i*8+8]))
		if math.IsNaN(value[i]) || math.IsInf(value[i], 0) {
			return [6]float64{}, invalid()
		}
	}
	return value, nil
}

// GetParameter reads the exact granted value before applying the supplied kind decoder.
// @brief Query one selected original parameter and decode its full canonical body.
// @details The request is empty; kind must match the independently Host-selected
// adapter. Kind validation happens after successful Request, so it cannot change
// the granted native type or undo a consumed response.
// @param[in] o Exact independently granted parameter-get owner.
// @param[in] kind Exact trusted adapter kind, without scalar/array coercion.
// @param[in] capacity Explicit full response allocation, at most MaxOutputBytes.
// @return Complete owned ParameterValue and nil, or zero unusable value with
// exact request APIError or DecodeParameter error. No retry/fallback is performed.
// @permissions Exact node/key/kind/get/quota/deadline Host grant.
// @see DecodeParameter; ParameterKind; Owner.SetParameter; Owner.Request
func (o *Owner) GetParameter(kind ParameterKind, capacity uint32) (ParameterValue, error) {
	r, code := o.Request(OpParameterGet, nil, capacity)
	if code != OK {
		return ParameterValue{}, apiError(code, r)
	}
	return DecodeParameter(kind, r.Data)
}

// SetParameter encodes before issuing one original exact-key mutation request.
// @brief Set one complete selected typed parameter without implicit coercion.
// @details Only Kind's member is encoded, with canonical and element checks.
// An unknown Host timeout can follow an actual mutation; it is never replayed.
// @param[in] o Independently granted exact node/key/kind parameter-set owner.
// @param[in] value Complete original selected canonical value, stable through encoding.
// @return Nil for actual successful set, exact encoder error or request APIError.
// Panics remain outside the checked error channel.
// @permissions Exact key/kind/mutation/quota/deadline Host grant.
// @see ParameterValue.Encode; Owner.GetParameter; Owner.DeclareParameter
func (o *Owner) SetParameter(value ParameterValue) error {
	b, err := value.Encode()
	if err != nil {
		return err
	}
	r, code := o.Request(OpParameterSet, b, 0)
	return apiError(code, r)
}

// DeclareParameter encodes a complete default before requesting ROS2 local declaration.
// @brief Declare one exact granted Gateway-local ROS2 parameter and original default.
// @details Encoding can fail before backend dispatch; an otherwise valid ROS1
// selection returns Unsupported through Request. No remote declaration/set emulation.
// @param[in] o Independently granted exact local ROS2 key/kind declaration owner.
// @param[in] value Original complete selected default value, with no kind coercion.
// @return Nil for actual successful declaration, original encoder error or exact
// request APIError, including Unsupported. No unknown effect is replayed.
// @permissions Exact local node/key/kind/declaration/quota/deadline Host grant.
// @see OpParameterDeclare; Owner.SetParameter; ParameterValue.Encode; Owner.Request
func (o *Owner) DeclareParameter(value ParameterValue) error {
	b, err := value.Encode()
	if err != nil {
		return err
	}
	r, code := o.Request(OpParameterDeclare, b, 0)
	return apiError(code, r)
}

// ReadClock selects only an explicit original clock RPC and validates its full output.
// @brief Read exactly one u64 nanosecond value in an independently granted clock domain.
// @details Rejects non-clock selectors before Request; backend-unavailable clocks
// remain Unsupported. This creates no timer, clock conversion or WASI runtime grant.
// @param[in] o Independently granted exact original clock owner.
// @param[in] operation Exact ROS, wall, system or steady clock selector for this backend.
// @return Full uint64 nanoseconds and nil, or 0 with APIError for selector,
// request or malformed-success refusal. Zero with nil is a valid observation.
// @permissions Exact domain/clock-read/quota/deadline Host grant.
// @see DecodeTime; OpTimeReadRos; OpTimeReadWall; OpTimeReadSystem; OpTimeReadSteady
func (o *Owner) ReadClock(operation Operation) (uint64, error) {
	if operation != OpTimeReadRos && operation != OpTimeReadWall && operation != OpTimeReadSystem && operation != OpTimeReadSteady {
		return 0, Error{Code: Invalid}
	}
	r, code := o.Request(operation, nil, 8)
	if code != OK {
		return 0, apiError(code, r)
	}
	if len(r.Data) != 8 {
		return 0, invalid()
	}
	return binary.LittleEndian.Uint64(r.Data), nil
}

// LookupTransform sends the exact original u64 time selector for the configured frame pair.
// @brief Query and completely decode one finite original TransformStamped.
// @details Zero nanoseconds selects latest; source/target frames and time domain
// remain fixed by policy. No frame discovery, quaternion normalization or retry occurs.
// @param[in] o Independently granted exact lookup/frame-pair owner.
// @param[in] nanoseconds Original unsigned requested time in the granted domain; 0 is latest.
// @param[in] capacity Explicit complete response allocation, at most MaxOutputBytes.
// @return Complete owned Transform and nil, or zero unusable Transform with
// exact request APIError or DecodeTransform error. Allocation panics propagate.
// @permissions Exact frame pair/type/lookup/quota/deadline Host grant.
// @see Transform; DecodeTransform; Owner.BroadcastTransform; OpTfLookup
func (o *Owner) LookupTransform(nanoseconds uint64, capacity uint32) (Transform, error) {
	var b [8]byte
	binary.LittleEndian.PutUint64(b[:], nanoseconds)
	r, code := o.Request(OpTfLookup, b[:], capacity)
	if code != OK {
		return Transform{}, apiError(code, r)
	}
	return DecodeTransform(r.Data)
}

// BroadcastTransform validates and encodes before one original publication request.
// @brief Broadcast the complete original TransformStamped fields and units once.
// @details Preserves sequence, timestamp, frames, translation and quaternion
// without normalization/renaming. Native policy still validates exact allowed frames.
// @param[in] o Independently granted exact Transform broadcast owner.
// @param[in] value Complete original finite transform, stable through encoding.
// @return Nil for actual successful broadcast, original encoder error or exact
// request APIError. Unknown timeout/effect is never automatically replayed.
// @permissions Exact frames/type/broadcast/quota/deadline Host grant.
// @see Transform.Encode; Owner.LookupTransform; OpTfBroadcast; Owner.Request
func (o *Owner) BroadcastTransform(value Transform) error {
	b, err := value.Encode()
	if err != nil {
		return err
	}
	r, code := o.Request(OpTfBroadcast, b, 0)
	return apiError(code, r)
}

// GetLifecycleState queries the selected ROS2 state and validates ID plus label together.
// @brief Read one complete original LifecycleState without fabricating failure state.
// @details Uses an empty exact-key request; ROS1 remains Unsupported locally.
// Neither the label nor numeric state authorizes any future transition.
// @param[in] o Independently granted exact ROS2 lifecycle-state owner.
// @param[in] capacity Explicit complete response allocation, at most MaxOutputBytes.
// @return Complete owned state and nil, or zero unusable state with exact request
// APIError or DecodeLifecycleState error. A decode error is not a state observation.
// @permissions Exact node/lifecycle-get/quota/deadline Host grant.
// @see LifecycleState; DecodeLifecycleState; Owner.ChangeLifecycleState
func (o *Owner) GetLifecycleState(capacity uint32) (LifecycleState, error) {
	r, code := o.Request(OpLifecycleGetState, nil, capacity)
	if code != OK {
		return LifecycleState{}, apiError(code, r)
	}
	return DecodeLifecycleState(r.Data)
}

// ChangeLifecycleState requests only the transition fixed by the exact trusted grant.
// @brief Invoke one configured ROS2 Lifecycle transition and decode its strict Bool.
// @details The empty request cannot choose a different transition. ROS1 returns
// Unsupported; timeout does not establish state or permit replaying a control effect.
// @param[in] o Independently granted exact ROS2 node/transition owner.
// @return Original application Bool and nil, or false with exact request APIError
// or Invalid for malformed successful Bool. False with nil is valid application data.
// @permissions Exact node/transition/change/quota/deadline Host grant.
// @see Owner.GetLifecycleState; OpLifecycleChangeState; DecodeBool; Owner.Request
func (o *Owner) ChangeLifecycleState() (bool, error) {
	r, code := o.Request(OpLifecycleChangeState, nil, 1)
	if code != OK {
		return false, apiError(code, r)
	}
	if len(r.Data) != 1 || r.Data[0] > 1 {
		return false, invalid()
	}
	return r.Data[0] == 1, nil
}

// GraphSnapshot accepts only exact inspect/list selectors and decodes a complete String.
// @brief Read one bounded original graph observation through its independent grant.
// @details Rejects non-graph selectors before import; backend-unavailable Action
// inspection remains Unsupported. Returned names confer no resource or discovery rights.
// @param[in] o Independently granted exact graph-scope owner.
// @param[in] operation Original topic/node/Service/Action inspect or topic/node/Service list.
// @param[in] capacity Explicit complete response allocation, at most MaxOutputBytes.
// @return Complete owned UTF-8 String and nil, or empty unusable String with
// APIError for selector/request/String refusal. Empty with nil is valid data.
// @permissions Exact graph operation/scope/quota/deadline Host grant.
// @see OpGraphInspectTopic; OpGraphInspectAction; OpGraphListServices; DecodeString
func (o *Owner) GraphSnapshot(operation Operation, capacity uint32) (string, error) {
	switch operation {
	case OpGraphInspectTopic, OpGraphInspectNode, OpGraphInspectService, OpGraphInspectAction, OpGraphListTopics, OpGraphListNodes, OpGraphListServices:
	default:
		return "", invalid()
	}
	r, code := o.Request(operation, nil, capacity)
	if code != OK {
		return "", apiError(code, r)
	}
	value, status := DecodeString(r.Data)
	return value, apiError(status, Result{})
}

// CancelAnyGoal uses the separate any-goal grant, including its explicit zero selector.
// @brief Request original cancellation under an independently granted any-goal scope.
// @details Preserves the entire ID and validates the exact returned Bool.
// Cancellation acknowledgement is distinct from terminal result or physical stopping.
// @param[in] o Independently granted exact Action cancel-any owner.
// @param[in] id Original selected u64 goal ID; 0 requests all goals only in this API.
// @return Native Bool and nil, or false with request APIError/Invalid for bad
// successful Bool. False with nil is valid; no refused/uncertain effect is replayed.
// @permissions Exact any-goal scope/cancellation/type/quota/deadline Host grant.
// @see CancelOwnGoal; OpActionCancelAnyGoal; ResultValue; Owner.Request
func (o *Owner) CancelAnyGoal(id uint64) (bool, error) {
	// Zero requests all-goal cancellation only through the separate any grant.
	var b [8]byte
	binary.LittleEndian.PutUint64(b[:], id)
	r, code := o.Request(OpActionCancelAnyGoal, b[:], 1)
	if code != OK {
		return false, apiError(code, r)
	}
	if len(r.Data) != 1 || r.Data[0] > 1 {
		return false, invalid()
	}
	return r.Data[0] == 1, nil
}
