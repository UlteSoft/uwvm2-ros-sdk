//go:build wasip1 && wasm

package roswasm

import (
	"encoding/binary"
	"unicode/utf8"
)

// EncodeString validates before allocation and preserves NUL/BOM message bytes.
// Alias validation is a separate stricter contract.
// @brief Encode one complete UTF-8 String as a u32 LE byte count and exact content.
// @details Validates the full string and inclusive MaxRequestBytes envelope
// before allocating a new Go-owned byte slice. It does not normalize text,
// terminate it with NUL or check an independently configured native field policy.
// @param[in] value Complete immutable UTF-8 text; embedded NUL/BOM are preserved.
// @return Owned initialized bytes and OK, nil and Invalid for malformed UTF-8,
// or nil and TooLarge when prefix plus content exceeds MaxRequestBytes.
// Allocation failure can panic; encoding grants no publication permission.
// @see DecodeString; String.Encode; Owner.PublishString; MaxRequestBytes
func EncodeString(value string) ([]byte, uint32) {
	if !utf8.ValidString(value) {
		return nil, Invalid
	}
	if uint64(len(value))+4 > uint64(MaxRequestBytes) {
		return nil, TooLarge
	}
	b := make([]byte, 4+len(value))
	binary.LittleEndian.PutUint32(b, uint32(len(value)))
	copy(b[4:], value)
	return b, OK
}

// DecodeString accepts exactly one complete canonical String without trailing bytes.
// @brief Validate and copy a complete u32-length-prefixed UTF-8 String.
// @details Reads no Host state. The returned string owns Go-managed content and
// does not require the input slice to remain unchanged after this call returns.
// @param[in] b Complete stable canonical bytes, from 4 through MaxOutputBytes.
// @return Full decoded text and OK, or empty unusable text and Invalid for size,
// prefix/content mismatch or malformed UTF-8. Empty text with OK is a valid value.
// @see EncodeString; ServiceResponse; Owner.Poll
func DecodeString(b []byte) (string, uint32) {
	if len(b) < 4 || uint64(len(b)) > uint64(MaxOutputBytes) {
		return "", Invalid
	}
	if uint64(binary.LittleEndian.Uint32(b)) != uint64(len(b)-4) || !utf8.Valid(b[4:]) {
		return "", Invalid
	}
	return string(b[4:]), OK
}

// ServiceResponse contains the builtin Trigger/SetBool response value.
// @brief Application success and message from one complete canonical Service body.
// @details Success is business data independent of the import status. Direct
// construction grants no Service identity, response ownership or native effect.
// @see DecodeServiceResponse; ServiceResponse.Encode; Owner.CallTrigger
type ServiceResponse struct {
	// Success preserves the original application's canonical 0/1 result.
	// @brief Native Service application outcome after successful transport/decode.
	// @details False can be valid successful transport; it is not an errno value.
	// @see DecodeServiceResponse; Owner.CallSetBool
	Success bool
	// Message carries the complete original UTF-8 response text.
	// @brief Owned Go String content with NUL/BOM preserved by the canonical codec.
	// @details Native schema/alias policy remains independently enforced by the Host.
	// @see ServiceResponse.Encode; DecodeString
	Message string
}

// DecodeServiceResponse validates an exact builtin response, including its Bool.
// @brief Decode one canonical Bool followed by one complete canonical String.
// @details Requires at least five bytes, canonical Bool 0/1 and exact String
// length/UTF-8 without trailing bytes. Success=false remains a valid application value.
// @param[in] b Complete stable original response bytes, at most MaxOutputBytes.
// @return Owned response and OK, or zero unusable response and original decode
// status. Allocation/runtime panics are outside the checked status channel.
// @see ServiceResponse; DecodeString; Owner.CallTrigger; Owner.CallSetBool
func DecodeServiceResponse(b []byte) (ServiceResponse, uint32) {
	if len(b) < 5 || uint64(len(b)) > uint64(MaxOutputBytes) || b[0] > 1 {
		return ServiceResponse{}, Invalid
	}
	s, code := DecodeString(b[1:])
	if code != OK {
		return ServiceResponse{}, code
	}
	return ServiceResponse{Success: b[0] == 1, Message: s}, OK
}

// Success is a native service value, independent of the import errno.
// CallTrigger sends the exact empty builtin Trigger request once.
// @brief Call the independently granted builtin Trigger Service and decode its body.
// @details Performs one original business-ABI ServiceCall, followed by complete
// response validation. A decode/capacity/timeout refusal never authorizes replay.
// @param[in] o Exact live independently granted Trigger Service-call owner.
// @param[in] capacity Explicit complete response allocation, at most MaxOutputBytes.
// @return ServiceResponse and OK, or zero unusable response and exact request/
// decode status. A successful response's Success may be false.
// @permissions Exact Trigger call/type/direction/quota/deadline Host grant.
// @see Owner.CallSetBool; Owner.Request; DecodeServiceResponse
func (o *Owner) CallTrigger(capacity uint32) (ServiceResponse, uint32) {
	r, code := o.Request(OpServiceCall, nil, capacity)
	if code != OK {
		return ServiceResponse{}, code
	}
	return DecodeServiceResponse(r.Data)
}

// CallSetBool sends the exact one-byte builtin SetBool request once.
// @brief Call the independently granted builtin SetBool Service with canonical Bool.
// @details Encodes false as 0 and true as 1, invokes the original ServiceCall,
// then validates the complete response; this wrapper creates no native server.
// @param[in] o Exact live independently granted SetBool Service-call owner.
// @param[in] value Original application request Bool, without integer coercion.
// @param[in] capacity Explicit complete response allocation, at most MaxOutputBytes.
// @return ServiceResponse and OK, or zero unusable response and exact request/
// decode status. The response's business Success is independent of that status.
// @permissions Exact SetBool call/type/direction/quota/deadline Host grant.
// @see Owner.CallTrigger; DecodeServiceResponse; Owner.Request
func (o *Owner) CallSetBool(value bool, capacity uint32) (ServiceResponse, uint32) {
	b := byte(0)
	if value {
		b = 1
	}
	r, code := o.Request(OpServiceCall, []byte{b}, capacity)
	if code != OK {
		return ServiceResponse{}, code
	}
	return DecodeServiceResponse(r.Data)
}

// The Host separately checks whether this full-width request ID is owned.
// DecodeTriggerRequest reads the exact ID prefix of an incoming empty Trigger request.
// @brief Validate an eight-byte nonzero original incoming Trigger request ID.
// @details Rejects every truncated or trailing-byte envelope. A decoded integer
// alone proves no server ownership, pending request or permission to respond.
// @param[in] b Complete stable legacy Trigger event: u64 LE ID and empty body.
// @return Exact nonzero ID and OK, or 0 and Invalid for shape or zero ID.
// @see DecodeTriggerBody; Owner.RespondTrigger; DecodeIncoming
func DecodeTriggerRequest(b []byte) (uint64, uint32) {
	if len(b) != 8 {
		return 0, Invalid
	}
	id := binary.LittleEndian.Uint64(b)
	if id == 0 {
		return 0, Invalid
	}
	return id, OK
}

// RespondTrigger constructs one full builtin Trigger response with its original ID.
// @brief Send exactly one owned legacy Trigger response without retrying refusal.
// @details Encodes full u64 ID, canonical Bool, u32 UTF-8 byte length and content.
// The current Host independently checks this Instance/backend's live pending
// request, exact Service type and response rights; a copied ID is insufficient.
// @param[in] o Exact live independently granted Trigger response owner.
// @param[in] id Nonzero original pending request ID, preserved without narrowing.
// @param[in] success Original Service application Bool, independent of transport status.
// @param[in] message Complete valid UTF-8 text; all 13 prefix bytes count toward the limit.
// @return Exact request status, Invalid for zero ID/malformed UTF-8 or TooLarge
// for a full request above MaxRequestBytes. No returned status causes replay.
// @permissions Exact pending request/response/type/direction/quota/deadline grant.
// @see DecodeTriggerRequest; ServiceResponse; RespondValue; Owner.Request
func (o *Owner) RespondTrigger(id uint64, success bool, message string) uint32 {
	if id == 0 || !utf8.ValidString(message) {
		return Invalid
	}
	if uint64(len(message))+13 > uint64(MaxRequestBytes) {
		return TooLarge
	}
	b := make([]byte, 13+len(message))
	binary.LittleEndian.PutUint64(b, id)
	if success {
		b[8] = 1
	}
	binary.LittleEndian.PutUint32(b[9:], uint32(len(message)))
	copy(b[13:], message)
	_, code := o.Request(OpServiceRespond, b, 0)
	return code
}
