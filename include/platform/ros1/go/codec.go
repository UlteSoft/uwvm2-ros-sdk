//go:build wasip1 && wasm

// @file codec.go
// @brief Provide the selected typed SDK binding and ownership boundary for ros1.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

package roswasm

import (
	"encoding/binary"
	"unicode/utf8"
)

// EncodeString validates before allocation and preserves NUL/BOM message bytes.
// Alias validation is a separate stricter contract.
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
func DecodeString(b []byte) (string, uint32) {
	if len(b) < 4 || uint64(len(b)) > uint64(MaxOutputBytes) {
		return "", Invalid
	}
	if uint64(binary.LittleEndian.Uint32(b)) != uint64(len(b)-4) || !utf8.Valid(b[4:]) {
		return "", Invalid
	}
	return string(b[4:]), OK
}

type ServiceResponse struct {
	Success bool
	Message string
}

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
func (o *Owner) CallTrigger(capacity uint32) (ServiceResponse, uint32) {
	r, code := o.Request(OpServiceCall, nil, capacity)
	if code != OK {
		return ServiceResponse{}, code
	}
	return DecodeServiceResponse(r.Data)
}
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
