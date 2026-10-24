//go:build tinygo && (wasm || tinygo.wasm) && ros2 && !ros1

// @file records.go
// @brief Encode and decode every bounded record in this ROS2 profile.
// @details Generated from bounded_profile.py and maintained as a public customtypes
// package. Every field is preserved; lengths, UTF-8, finite values, and nested
// bounds are validated where the schema requires them. Returned values are owned
// by the caller. These codecs perform no I/O and do not grant ROS permissions.
package customtypes

import (
	"encoding/binary"
	"math"
	"strings"
	"unicode/utf8"
	ros "uwvm2.local/roswasm"
)

var boundedInvalid = ros.Error{Code: ros.Invalid}
var boundedTooLarge = ros.Error{Code: ros.TooLarge}

// @brief Add two lengths without exceeding the configured canonical wire bound.
// @param n Validated prefix length in bytes.
// @param m Additional nonnegative length in bytes.
// @return Exact total, or the SDK size error without allocating storage.
func boundedAdd(n, m int) (int, error) {
	if n < 0 || m < 0 || n > 32768 || m > 32768-n {
		return 0, boundedTooLarge
	}
	return n + m, nil
}

var _ = math.Float64bits
var _ = utf8.Valid
var _ = strings.IndexByte

// @brief Borrow the next complete region of a canonical input buffer.
// @param b Caller-owned input; the returned slice borrows this storage.
// @param at Internal cursor, initially within zero through len(b); advanced on success.
// @param n Required nonnegative byte count.
// @return Exact borrowed slice or the SDK invalid-wire error.
// @details No partial slice is returned when the requested region is truncated.
func boundedTake(b []byte, at *int, n int) ([]byte, error) {
	if n < 0 || *at > len(b) || n > len(b)-*at {
		return nil, boundedInvalid
	}
	start := *at
	*at += n
	return b[start:*at], nil
}

// @brief Read one complete little-endian unsigned sequence length.
// @param b Borrowed canonical input.
// @param at Internal validated cursor; advanced by four bytes on success.
// @return The original unsigned count, or the invalid-wire error.
func boundedCount(b []byte, at *int) (uint32, error) {
	raw, err := boundedTake(b, at, 4)
	if err != nil {
		return 0, err
	}
	return binary.LittleEndian.Uint32(raw), nil
}

// @brief Copy a validated field into its already allocated wire buffer.
// @param out Caller-owned destination sized by a successful WireSize call.
// @param at Internal write cursor, advanced by the copied byte count.
// @param b Complete encoded field bytes; borrowed for this call only.
// @pre The full destination region is available and inputs were already validated.
func boundedPut(out []byte, at *int, b []byte) {
	copy(out[*at:], b)
	*at += len(b)
}

// @brief Ros2Uwvm_groot_bridgeMsgRGBFrame preserves every declared ROS2 uwvm_groot_bridge/msg/RGBFrame field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeMsgRGBFrame struct {
	// @brief key: explicit canonical bounds are committed in CodecIdentity.
	Key string
	// @brief shape: explicit canonical bounds are committed in CodecIdentity.
	Shape [5]uint32
	// @brief pixels: explicit canonical bounds are committed in CodecIdentity.
	Pixels []uint8
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeMsgRGBFrameCodecIdentity = "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeMsgRGBFrameMaxWireBytes = 860

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeMsgRGBFrameCartesianMaxWireBytes = uint64(860)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeMsgRGBFrameAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeMsgRGBFrame) WireSize() (int, error) {
	n := 0
	{
		if len(value.Key) > 64 || !utf8.ValidString(value.Key) || strings.IndexByte(value.Key, 0) >= 0 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		next, err = boundedAdd(n, len(value.Key))
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		for _, element := range value.Shape {
			_ = element
			next, err := boundedAdd(n, 4)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	{
		if len(value.Pixels) > 768 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Pixels {
			_ = element
			next, err := boundedAdd(n, 1)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	if n > 860 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeMsgRGBFrame) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeMsgRGBFrame) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Key)))
	*at += 4
	copy(out[*at:], value.Key)
	*at += len(value.Key)
	for _, element := range value.Shape {
		binary.LittleEndian.PutUint32(out[*at:], uint32(element))
		*at += 4
	}
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Pixels)))
	*at += 4
	for _, element := range value.Pixels {
		out[*at] = byte(element)
		*at += 1
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeMsgRGBFrame(b []byte, at *int) (Ros2Uwvm_groot_bridgeMsgRGBFrame,
	error) {
	var value Ros2Uwvm_groot_bridgeMsgRGBFrame
	{
		size, err := boundedCount(b, at)
		if err != nil || size > 64 {
			return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, boundedInvalid
		}
		raw,
			err := boundedTake(b, at, int(size))
		if err != nil || !utf8.Valid(raw) {
			return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, boundedInvalid
		}
		value.Key = string(raw)
		if strings.IndexByte(value.Key,
			0) >= 0 {
			return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, boundedInvalid
		}
	}
	{
		count := uint32(5)
		if count > 5 {
			return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, boundedInvalid
		}
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 4)
			if err != nil {
				return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, err
			}
			value.Shape[i] = uint32(binary.LittleEndian.Uint32(raw))
		}
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, err
		}
		if count > 768 {
			return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, boundedInvalid
		}
		value.Pixels = make([]uint8, int(count))
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 1)
			if err != nil {
				return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, err
			}
			value.Pixels[i] = uint8(raw[0])
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeMsgRGBFrame(b []byte) (Ros2Uwvm_groot_bridgeMsgRGBFrame, error) {
	if len(
		b) > 860 {
		return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, boundedTooLarge
	}
	if len(
		b) < 28 {
		return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeMsgRGBFrame(b, &at)
	if err != nil || at != len(b) {
		return Ros2Uwvm_groot_bridgeMsgRGBFrame{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeMsgFloatTensor preserves every declared ROS2 uwvm_groot_bridge/msg/FloatTensor field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeMsgFloatTensor struct {
	// @brief key: explicit canonical bounds are committed in CodecIdentity.
	Key string
	// @brief shape: explicit canonical bounds are committed in CodecIdentity.
	Shape [3]uint32
	// @brief values: explicit canonical bounds are committed in CodecIdentity.
	Values []float32
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeMsgFloatTensorCodecIdentity = "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeMsgFloatTensorMaxWireBytes = 1364

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeMsgFloatTensorCartesianMaxWireBytes = uint64(1364)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeMsgFloatTensorAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeMsgFloatTensor) WireSize() (int, error) {
	n := 0
	{
		if len(value.Key) > 64 || !utf8.ValidString(value.Key) || strings.IndexByte(value.Key, 0) >= 0 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		next, err = boundedAdd(n, len(value.Key))
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		for _, element := range value.Shape {
			_ = element
			next, err := boundedAdd(n, 4)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	{
		if len(value.Values) > 320 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Values {
			_ = element
			if math.IsNaN(float64(element)) || math.IsInf(float64(element), 0) {
				return 0, boundedInvalid
			}
			next, err := boundedAdd(n, 4)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	if n > 1364 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeMsgFloatTensor) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeMsgFloatTensor) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Key)))
	*at += 4
	copy(out[*at:], value.Key)
	*at += len(value.Key)
	for _, element := range value.Shape {
		binary.LittleEndian.PutUint32(out[*at:], uint32(element))
		*at += 4
	}
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Values)))
	*at += 4
	for _, element := range value.Values {
		binary.LittleEndian.PutUint32(out[*at:], math.Float32bits(element))
		*at += 4
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeMsgFloatTensor(b []byte, at *int) (Ros2Uwvm_groot_bridgeMsgFloatTensor,
	error) {
	var value Ros2Uwvm_groot_bridgeMsgFloatTensor
	{
		size, err := boundedCount(b, at)
		if err != nil || size > 64 {
			return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, boundedInvalid
		}
		raw,
			err := boundedTake(b, at, int(size))
		if err != nil || !utf8.Valid(raw) {
			return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, boundedInvalid
		}
		value.Key = string(raw)
		if strings.IndexByte(value.Key,
			0) >= 0 {
			return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, boundedInvalid
		}
	}
	{
		count := uint32(3)
		if count > 3 {
			return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, boundedInvalid
		}
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 4)
			if err != nil {
				return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, err
			}
			value.Shape[i] = uint32(binary.LittleEndian.Uint32(raw))
		}
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, err
		}
		if count > 320 {
			return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, boundedInvalid
		}
		value.Values = make([]float32, int(count))
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 4)
			if err != nil {
				return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, err
			}
			value.Values[i] = math.Float32frombits(binary.LittleEndian.Uint32(raw))
			if math.IsNaN(float64(value.Values[i])) || math.IsInf(float64(value.Values[i]),
				0) {
				return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, boundedInvalid
			}
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeMsgFloatTensor(b []byte) (Ros2Uwvm_groot_bridgeMsgFloatTensor, error) {
	if len(
		b) > 1364 {
		return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, boundedTooLarge
	}
	if len(
		b) < 20 {
		return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeMsgFloatTensor(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeMsgFloatTensor{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeMsgTextSequence preserves every declared ROS2 uwvm_groot_bridge/msg/TextSequence field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeMsgTextSequence struct {
	// @brief key: explicit canonical bounds are committed in CodecIdentity.
	Key string
	// @brief shape: explicit canonical bounds are committed in CodecIdentity.
	Shape [2]uint32
	// @brief texts: explicit canonical bounds are committed in CodecIdentity.
	Texts []string
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeMsgTextSequenceCodecIdentity = "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeMsgTextSequenceMaxWireBytes = 1120

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeMsgTextSequenceCartesianMaxWireBytes = uint64(1120)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeMsgTextSequenceAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeMsgTextSequence) WireSize() (int, error) {
	n := 0
	{
		if len(value.Key) > 64 || !utf8.ValidString(value.Key) || strings.IndexByte(value.Key, 0) >= 0 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		next, err = boundedAdd(n, len(value.Key))
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		for _, element := range value.Shape {
			_ = element
			next, err := boundedAdd(n, 4)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	{
		if len(value.Texts) > 4 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Texts {
			_ = element
			if len(element) > 256 || !utf8.ValidString(element) || strings.IndexByte(element, 0) >= 0 {
				return 0, boundedInvalid
			}
			next, err := boundedAdd(n, 4)
			if err != nil {
				return 0, err
			}
			n = next
			next, err = boundedAdd(n, len(element))
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	if n > 1120 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeMsgTextSequence) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeMsgTextSequence) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Key)))
	*at += 4
	copy(out[*at:], value.Key)
	*at += len(value.Key)
	for _, element := range value.Shape {
		binary.LittleEndian.PutUint32(out[*at:], uint32(element))
		*at += 4
	}
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Texts)))
	*at += 4
	for _, element := range value.Texts {
		binary.LittleEndian.PutUint32(out[*at:], uint32(len(element)))
		*at += 4
		copy(out[*at:], element)
		*at += len(element)
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeMsgTextSequence(b []byte, at *int) (Ros2Uwvm_groot_bridgeMsgTextSequence,
	error) {
	var value Ros2Uwvm_groot_bridgeMsgTextSequence
	{
		size, err := boundedCount(b, at)
		if err != nil || size > 64 {
			return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedInvalid
		}
		raw,
			err := boundedTake(b, at, int(size))
		if err != nil || !utf8.Valid(raw) {
			return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedInvalid
		}
		value.Key = string(raw)
		if strings.IndexByte(value.Key,
			0) >= 0 {
			return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedInvalid
		}
	}
	{
		count := uint32(2)
		if count > 2 {
			return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedInvalid
		}
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 4)
			if err != nil {
				return Ros2Uwvm_groot_bridgeMsgTextSequence{}, err
			}
			value.Shape[i] = uint32(binary.LittleEndian.Uint32(raw))
		}
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeMsgTextSequence{}, err
		}
		if count > 4 {
			return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedInvalid
		}
		value.Texts = make([]string, int(count))
		for i := 0; i < int(count); i++ {
			size, err := boundedCount(b, at)
			if err != nil || size > 256 {
				return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedInvalid
			}
			raw,
				err := boundedTake(b, at, int(size))
			if err != nil || !utf8.Valid(raw) {
				return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedInvalid
			}
			value.Texts[i] = string(raw)
			if strings.IndexByte(value.Texts[i],
				0) >= 0 {
				return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedInvalid
			}
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeMsgTextSequence(b []byte) (Ros2Uwvm_groot_bridgeMsgTextSequence, error) {
	if len(
		b) > 1120 {
		return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedTooLarge
	}
	if len(
		b) < 16 {
		return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeMsgTextSequence(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeMsgTextSequence{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeSrvInferAction_Request preserves every declared ROS2 uwvm_groot_bridge/srv/InferAction_Request
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeSrvInferAction_Request struct {
	// @brief application_nonce: explicit canonical bounds are committed in CodecIdentity.
	Application_nonce uint64
	// @brief video: explicit canonical bounds are committed in CodecIdentity.
	Video []Ros2Uwvm_groot_bridgeMsgRGBFrame
	// @brief state: explicit canonical bounds are committed in CodecIdentity.
	State []Ros2Uwvm_groot_bridgeMsgFloatTensor
	// @brief language: explicit canonical bounds are committed in CodecIdentity.
	Language []Ros2Uwvm_groot_bridgeMsgTextSequence
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodecIdentity = "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeSrvInferAction_RequestMaxWireBytes = 10296

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeSrvInferAction_RequestCartesianMaxWireBytes = uint64(10296)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeSrvInferAction_RequestAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeSrvInferAction_Request) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if len(value.Video) > 3 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Video {
			_ = element
			size, err := element.WireSize()
			if err != nil {
				return 0, err
			}
			next, err := boundedAdd(n, size)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	{
		if len(value.State) > 4 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.State {
			_ = element
			size, err := element.WireSize()
			if err != nil {
				return 0, err
			}
			next, err := boundedAdd(n, size)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	{
		if len(value.Language) > 2 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Language {
			_ = element
			size, err := element.WireSize()
			if err != nil {
				return 0, err
			}
			next, err := boundedAdd(n, size)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	if n > 10296 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeSrvInferAction_Request) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeSrvInferAction_Request) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Application_nonce))
	*at += 8
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Video)))
	*at += 4
	for _, element := range value.Video {
		element.writeBounded(out, at)
	}
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.State)))
	*at += 4
	for _, element := range value.State {
		element.writeBounded(out, at)
	}
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Language)))
	*at += 4
	for _, element := range value.Language {
		element.writeBounded(out, at)
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeSrvInferAction_Request(b []byte, at *int) (Ros2Uwvm_groot_bridgeSrvInferAction_Request,
	error) {
	var value Ros2Uwvm_groot_bridgeSrvInferAction_Request
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, err
		}
		value.Application_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, err
		}
		if count > 3 {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, boundedInvalid
		}
		value.Video = make([]Ros2Uwvm_groot_bridgeMsgRGBFrame, int(count))
		for i := 0; i < int(count); i++ {
			decoded, err := readRos2Uwvm_groot_bridgeMsgRGBFrame(b,
				at)
			if err != nil {
				return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, err
			}
			value.Video[i] = decoded
		}
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, err
		}
		if count > 4 {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, boundedInvalid
		}
		value.State = make([]Ros2Uwvm_groot_bridgeMsgFloatTensor, int(count))
		for i := 0; i < int(count); i++ {
			decoded, err := readRos2Uwvm_groot_bridgeMsgFloatTensor(b,
				at)
			if err != nil {
				return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, err
			}
			value.State[i] = decoded
		}
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, err
		}
		if count > 2 {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, boundedInvalid
		}
		value.Language = make([]Ros2Uwvm_groot_bridgeMsgTextSequence, int(count))
		for i := 0; i < int(count); i++ {
			decoded, err := readRos2Uwvm_groot_bridgeMsgTextSequence(b,
				at)
			if err != nil {
				return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, err
			}
			value.Language[i] = decoded
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeSrvInferAction_Request(b []byte) (Ros2Uwvm_groot_bridgeSrvInferAction_Request,
	error) {
	if len(b) > 10296 {
		return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, boundedTooLarge
	}
	if len(
		b) < 20 {
		return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeSrvInferAction_Request(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeSrvInferAction_Request{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeSrvInferAction_Response preserves every declared ROS2 uwvm_groot_bridge/srv/InferAction_Response
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeSrvInferAction_Response struct {
	// @brief status: explicit canonical bounds are committed in CodecIdentity.
	Status uint32
	// @brief application_nonce: explicit canonical bounds are committed in CodecIdentity.
	Application_nonce uint64
	// @brief action: explicit canonical bounds are committed in CodecIdentity.
	Action []Ros2Uwvm_groot_bridgeMsgFloatTensor
	// @brief info_is_empty: explicit canonical bounds are committed in CodecIdentity.
	Info_is_empty bool
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodecIdentity = "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeSrvInferAction_ResponseMaxWireBytes = 10929

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCartesianMaxWireBytes = uint64(10929)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeSrvInferAction_ResponseAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeSrvInferAction_Response) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if len(value.Action) > 8 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Action {
			_ = element
			size, err := element.WireSize()
			if err != nil {
				return 0, err
			}
			next, err := boundedAdd(n, size)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	{
		next, err := boundedAdd(n, 1)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 10929 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeSrvInferAction_Response) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeSrvInferAction_Response) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Status))
	*at += 4
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Application_nonce))
	*at += 8
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Action)))
	*at += 4
	for _, element := range value.Action {
		element.writeBounded(out, at)
	}
	if value.Info_is_empty {
		out[*at] = 1
	} else {
		out[*at] = 0
	}
	*at += 1
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeSrvInferAction_Response(b []byte, at *int) (Ros2Uwvm_groot_bridgeSrvInferAction_Response,
	error) {
	var value Ros2Uwvm_groot_bridgeSrvInferAction_Response
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Response{}, err
		}
		value.Status = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Response{}, err
		}
		value.Application_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Response{}, err
		}
		if count > 8 {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Response{}, boundedInvalid
		}
		value.Action = make([]Ros2Uwvm_groot_bridgeMsgFloatTensor, int(count))
		for i := 0; i < int(count); i++ {
			decoded, err := readRos2Uwvm_groot_bridgeMsgFloatTensor(b,
				at)
			if err != nil {
				return Ros2Uwvm_groot_bridgeSrvInferAction_Response{}, err
			}
			value.Action[i] = decoded
		}
	}
	{
		raw, err := boundedTake(b, at, 1)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Response{}, err
		}
		if raw[0] > 1 {
			return Ros2Uwvm_groot_bridgeSrvInferAction_Response{}, boundedInvalid
		}
		value.Info_is_empty = raw[0] != 0
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeSrvInferAction_Response(b []byte) (Ros2Uwvm_groot_bridgeSrvInferAction_Response,
	error) {
	if len(b) > 10929 {
		return Ros2Uwvm_groot_bridgeSrvInferAction_Response{}, boundedTooLarge
	}
	if len(
		b) < 17 {
		return Ros2Uwvm_groot_bridgeSrvInferAction_Response{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeSrvInferAction_Response(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeSrvInferAction_Response{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeMsgRGBDescriptor preserves every declared ROS2 uwvm_groot_bridge/msg/RGBDescriptor field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeMsgRGBDescriptor struct {
	// @brief key: explicit canonical bounds are committed in CodecIdentity.
	Key string
	// @brief shape: explicit canonical bounds are committed in CodecIdentity.
	Shape [5]uint32
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodecIdentity = "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeMsgRGBDescriptorMaxWireBytes = 88

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeMsgRGBDescriptorCartesianMaxWireBytes = uint64(88)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeMsgRGBDescriptorAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeMsgRGBDescriptor) WireSize() (int, error) {
	n := 0
	{
		if len(value.Key) > 64 || !utf8.ValidString(value.Key) || strings.IndexByte(value.Key, 0) >= 0 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		next, err = boundedAdd(n, len(value.Key))
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		for _, element := range value.Shape {
			_ = element
			next, err := boundedAdd(n, 4)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	if n > 88 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeMsgRGBDescriptor) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeMsgRGBDescriptor) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Key)))
	*at += 4
	copy(out[*at:], value.Key)
	*at += len(value.Key)
	for _, element := range value.Shape {
		binary.LittleEndian.PutUint32(out[*at:], uint32(element))
		*at += 4
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeMsgRGBDescriptor(b []byte, at *int) (Ros2Uwvm_groot_bridgeMsgRGBDescriptor,
	error) {
	var value Ros2Uwvm_groot_bridgeMsgRGBDescriptor
	{
		size, err := boundedCount(b, at)
		if err != nil || size > 64 {
			return Ros2Uwvm_groot_bridgeMsgRGBDescriptor{}, boundedInvalid
		}
		raw,
			err := boundedTake(b, at, int(size))
		if err != nil || !utf8.Valid(raw) {
			return Ros2Uwvm_groot_bridgeMsgRGBDescriptor{}, boundedInvalid
		}
		value.Key = string(raw)
		if strings.IndexByte(value.Key,
			0) >= 0 {
			return Ros2Uwvm_groot_bridgeMsgRGBDescriptor{}, boundedInvalid
		}
	}
	{
		count := uint32(5)
		if count > 5 {
			return Ros2Uwvm_groot_bridgeMsgRGBDescriptor{}, boundedInvalid
		}
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 4)
			if err != nil {
				return Ros2Uwvm_groot_bridgeMsgRGBDescriptor{}, err
			}
			value.Shape[i] = uint32(binary.LittleEndian.Uint32(raw))
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeMsgRGBDescriptor(b []byte) (Ros2Uwvm_groot_bridgeMsgRGBDescriptor, error) {
	if len(
		b) > 88 {
		return Ros2Uwvm_groot_bridgeMsgRGBDescriptor{}, boundedTooLarge
	}
	if len(
		b) < 24 {
		return Ros2Uwvm_groot_bridgeMsgRGBDescriptor{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeMsgRGBDescriptor(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeMsgRGBDescriptor{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeSrvBeginObservation_Request preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeSrvBeginObservation_Request struct {
	// @brief observation_nonce: explicit canonical bounds are committed in CodecIdentity.
	Observation_nonce uint64
	// @brief video: explicit canonical bounds are committed in CodecIdentity.
	Video []Ros2Uwvm_groot_bridgeMsgRGBDescriptor
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodecIdentity = "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestMaxWireBytes = 276

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCartesianMaxWireBytes = uint64(276)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeSrvBeginObservation_Request) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if len(value.Video) > 3 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Video {
			_ = element
			size, err := element.WireSize()
			if err != nil {
				return 0, err
			}
			next, err := boundedAdd(n, size)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	if n > 276 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeSrvBeginObservation_Request) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeSrvBeginObservation_Request) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Observation_nonce))
	*at += 8
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Video)))
	*at += 4
	for _, element := range value.Video {
		element.writeBounded(out, at)
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeSrvBeginObservation_Request(b []byte, at *int) (
	Ros2Uwvm_groot_bridgeSrvBeginObservation_Request, error) {
	var value Ros2Uwvm_groot_bridgeSrvBeginObservation_Request
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvBeginObservation_Request{}, err
		}
		value.Observation_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvBeginObservation_Request{}, err
		}
		if count > 3 {
			return Ros2Uwvm_groot_bridgeSrvBeginObservation_Request{}, boundedInvalid
		}
		value.Video = make([]Ros2Uwvm_groot_bridgeMsgRGBDescriptor, int(count))
		for i := 0; i < int(count); i++ {
			decoded, err := readRos2Uwvm_groot_bridgeMsgRGBDescriptor(b,
				at)
			if err != nil {
				return Ros2Uwvm_groot_bridgeSrvBeginObservation_Request{}, err
			}
			value.Video[i] = decoded
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeSrvBeginObservation_Request(b []byte) (Ros2Uwvm_groot_bridgeSrvBeginObservation_Request,
	error) {
	if len(b) > 276 {
		return Ros2Uwvm_groot_bridgeSrvBeginObservation_Request{}, boundedTooLarge
	}
	if len(
		b) < 12 {
		return Ros2Uwvm_groot_bridgeSrvBeginObservation_Request{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeSrvBeginObservation_Request(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeSrvBeginObservation_Request{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeSrvBeginObservation_Response preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeSrvBeginObservation_Response struct {
	// @brief status: explicit canonical bounds are committed in CodecIdentity.
	Status uint32
	// @brief observation_nonce: explicit canonical bounds are committed in CodecIdentity.
	Observation_nonce uint64
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodecIdentity = "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseMaxWireBytes = 12

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCartesianMaxWireBytes = uint64(12)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeSrvBeginObservation_Response) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 12 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeSrvBeginObservation_Response) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeSrvBeginObservation_Response) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Status))
	*at += 4
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Observation_nonce))
	*at += 8
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeSrvBeginObservation_Response(b []byte, at *int) (
	Ros2Uwvm_groot_bridgeSrvBeginObservation_Response, error) {
	var value Ros2Uwvm_groot_bridgeSrvBeginObservation_Response
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvBeginObservation_Response{}, err
		}
		value.Status = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvBeginObservation_Response{}, err
		}
		value.Observation_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeSrvBeginObservation_Response(b []byte) (
	Ros2Uwvm_groot_bridgeSrvBeginObservation_Response, error) {
	if len(
		b) > 12 {
		return Ros2Uwvm_groot_bridgeSrvBeginObservation_Response{}, boundedTooLarge
	}
	if len(
		b) < 12 {
		return Ros2Uwvm_groot_bridgeSrvBeginObservation_Response{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeSrvBeginObservation_Response(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeSrvBeginObservation_Response{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request struct {
	// @brief observation_nonce: explicit canonical bounds are committed in CodecIdentity.
	Observation_nonce uint64
	// @brief key: explicit canonical bounds are committed in CodecIdentity.
	Key string
	// @brief offset: explicit canonical bounds are committed in CodecIdentity.
	Offset uint32
	// @brief pixels: explicit canonical bounds are committed in CodecIdentity.
	Pixels []uint8
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodecIdentity = "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestMaxWireBytes = 852

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCartesianMaxWireBytes = uint64(852)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if len(value.Key) > 64 || !utf8.ValidString(value.Key) || strings.IndexByte(value.Key, 0) >= 0 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		next, err = boundedAdd(n, len(value.Key))
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if len(value.Pixels) > 768 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Pixels {
			_ = element
			next, err := boundedAdd(n, 1)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	if n > 852 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Observation_nonce))
	*at += 8
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Key)))
	*at += 4
	copy(out[*at:], value.Key)
	*at += len(value.Key)
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Offset))
	*at += 4
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Pixels)))
	*at += 4
	for _, element := range value.Pixels {
		out[*at] = byte(element)
		*at += 1
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(b []byte, at *int) (Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request,
	error) {
	var value Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, err
		}
		value.Observation_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		size, err := boundedCount(b, at)
		if err != nil || size > 64 {
			return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, boundedInvalid
		}
		raw, err := boundedTake(b, at, int(size))
		if err != nil || !utf8.Valid(
			raw) {
			return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, boundedInvalid
		}
		value.Key = string(
			raw)
		if strings.IndexByte(value.Key, 0) >= 0 {
			return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, boundedInvalid
		}
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, err
		}
		value.Offset = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, err
		}
		if count > 768 {
			return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, boundedInvalid
		}
		value.Pixels = make([]uint8, int(count))
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 1)
			if err != nil {
				return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, err
			}
			value.Pixels[i] = uint8(raw[0])
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(b []byte) (Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request,
	error) {
	if len(b) > 852 {
		return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, boundedTooLarge
	}
	if len(
		b) < 20 {
		return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response struct {
	// @brief status: explicit canonical bounds are committed in CodecIdentity.
	Status uint32
	// @brief observation_nonce: explicit canonical bounds are committed in CodecIdentity.
	Observation_nonce uint64
	// @brief accepted_bytes: explicit canonical bounds are committed in CodecIdentity.
	Accepted_bytes uint32
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodecIdentity = "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseMaxWireBytes = 16

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCartesianMaxWireBytes = uint64(16)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 16 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Status))
	*at += 4
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Observation_nonce))
	*at += 8
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Accepted_bytes))
	*at += 4
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(b []byte, at *int) (
	Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response, error) {
	var value Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response{}, err
		}
		value.Status = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response{}, err
		}
		value.Observation_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response{}, err
		}
		value.Accepted_bytes = uint32(binary.LittleEndian.Uint32(raw))
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(b []byte) (Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response,
	error) {
	if len(b) > 16 {
		return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response{}, boundedTooLarge
	}
	if len(
		b) < 16 {
		return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request struct {
	// @brief observation_nonce: explicit canonical bounds are committed in CodecIdentity.
	Observation_nonce uint64
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodecIdentity = "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestMaxWireBytes = 8

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCartesianMaxWireBytes = uint64(8)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 8 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Observation_nonce))
	*at += 8
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(b []byte, at *int) (
	Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request,
	error) {
	var value Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request{}, err
		}
		value.Observation_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(b []byte) (
	Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request, error) {
	if len(
		b) > 8 {
		return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request{}, boundedTooLarge
	}
	if len(
		b) < 8 {
		return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response struct {
	// @brief status: explicit canonical bounds are committed in CodecIdentity.
	Status uint32
	// @brief observation_nonce: explicit canonical bounds are committed in CodecIdentity.
	Observation_nonce uint64
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodecIdentity = "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseMaxWireBytes = 12

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCartesianMaxWireBytes = uint64(12)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 12 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Status))
	*at += 4
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Observation_nonce))
	*at += 8
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(b []byte, at *int) (
	Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response,
	error) {
	var value Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response{}, err
		}
		value.Status = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response{}, err
		}
		value.Observation_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(b []byte) (
	Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response, error) {
	if len(
		b) > 12 {
		return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response{}, boundedTooLarge
	}
	if len(
		b) < 12 {
		return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request struct {
	// @brief application_nonce: explicit canonical bounds are committed in CodecIdentity.
	Application_nonce uint64
	// @brief observation_nonce: explicit canonical bounds are committed in CodecIdentity.
	Observation_nonce uint64
	// @brief state: explicit canonical bounds are committed in CodecIdentity.
	State []Ros2Uwvm_groot_bridgeMsgFloatTensor
	// @brief language: explicit canonical bounds are committed in CodecIdentity.
	Language []Ros2Uwvm_groot_bridgeMsgTextSequence
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodecIdentity = "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestMaxWireBytes = 7720

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCartesianMaxWireBytes = uint64(7720)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if len(value.State) > 4 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.State {
			_ = element
			size, err := element.WireSize()
			if err != nil {
				return 0, err
			}
			next, err := boundedAdd(n, size)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	{
		if len(value.Language) > 2 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Language {
			_ = element
			size, err := element.WireSize()
			if err != nil {
				return 0, err
			}
			next, err := boundedAdd(n, size)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	if n > 7720 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Application_nonce))
	*at += 8
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Observation_nonce))
	*at += 8
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.State)))
	*at += 4
	for _, element := range value.State {
		element.writeBounded(out, at)
	}
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Language)))
	*at += 4
	for _, element := range value.Language {
		element.writeBounded(out, at)
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(b []byte, at *int) (
	Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request,
	error) {
	var value Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, err
		}
		value.Application_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, err
		}
		value.Observation_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, err
		}
		if count > 4 {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, boundedInvalid
		}
		value.State = make([]Ros2Uwvm_groot_bridgeMsgFloatTensor, int(count))
		for i := 0; i < int(count); i++ {
			decoded, err := readRos2Uwvm_groot_bridgeMsgFloatTensor(b,
				at)
			if err != nil {
				return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, err
			}
			value.State[i] = decoded
		}
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, err
		}
		if count > 2 {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, boundedInvalid
		}
		value.Language = make([]Ros2Uwvm_groot_bridgeMsgTextSequence, int(count))
		for i := 0; i < int(count); i++ {
			decoded, err := readRos2Uwvm_groot_bridgeMsgTextSequence(b,
				at)
			if err != nil {
				return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, err
			}
			value.Language[i] = decoded
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(b []byte) (
	Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request, error) {
	if len(
		b) > 7720 {
		return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, boundedTooLarge
	}
	if len(
		b) < 24 {
		return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response struct {
	// @brief status: explicit canonical bounds are committed in CodecIdentity.
	Status uint32
	// @brief application_nonce: explicit canonical bounds are committed in CodecIdentity.
	Application_nonce uint64
	// @brief action: explicit canonical bounds are committed in CodecIdentity.
	Action []Ros2Uwvm_groot_bridgeMsgFloatTensor
	// @brief info_is_empty: explicit canonical bounds are committed in CodecIdentity.
	Info_is_empty bool
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodecIdentity = "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseMaxWireBytes = 10929

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCartesianMaxWireBytes = uint64(10929)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if len(value.Action) > 8 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Action {
			_ = element
			size, err := element.WireSize()
			if err != nil {
				return 0, err
			}
			next, err := boundedAdd(n, size)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	{
		next, err := boundedAdd(n, 1)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 10929 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make([]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Status))
	*at += 4
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Application_nonce))
	*at += 8
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Action)))
	*at += 4
	for _, element := range value.Action {
		element.writeBounded(out, at)
	}
	if value.Info_is_empty {
		out[*at] = 1
	} else {
		out[*at] = 0
	}
	*at += 1
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(b []byte, at *int) (
	Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response,
	error) {
	var value Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{}, err
		}
		value.Status = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{}, err
		}
		value.Application_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{}, err
		}
		if count > 8 {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{}, boundedInvalid
		}
		value.Action = make([]Ros2Uwvm_groot_bridgeMsgFloatTensor, int(count))
		for i := 0; i < int(count); i++ {
			decoded, err := readRos2Uwvm_groot_bridgeMsgFloatTensor(b,
				at)
			if err != nil {
				return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{}, err
			}
			value.Action[i] = decoded
		}
	}
	{
		raw, err := boundedTake(b, at, 1)
		if err != nil {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{}, err
		}
		if raw[0] > 1 {
			return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{}, boundedInvalid
		}
		value.Info_is_empty = raw[0] != 0
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(b []byte) (
	Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response, error) {
	if len(
		b) > 10929 {
		return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{}, boundedTooLarge
	}
	if len(
		b) < 17 {
		return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response{}, boundedInvalid
	}
	return value, nil
}
