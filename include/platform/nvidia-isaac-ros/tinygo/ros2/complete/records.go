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

// @brief Ros2Builtin_interfacesMsgTime preserves every declared ROS2 builtin_interfaces/msg/Time field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Builtin_interfacesMsgTime struct {
	// @brief sec: explicit canonical bounds are committed in CodecIdentity.
	Sec int32
	// @brief nanosec: explicit canonical bounds are committed in CodecIdentity.
	Nanosec uint32
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Builtin_interfacesMsgTimeCodecIdentity = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Builtin_interfacesMsgTimeMaxWireBytes = 8

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Builtin_interfacesMsgTimeCartesianMaxWireBytes = uint64(8)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Builtin_interfacesMsgTimeAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Builtin_interfacesMsgTime) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 4)
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
	if value.Nanosec >= 1000000000 {
		return 0, boundedInvalid
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
func (value Ros2Builtin_interfacesMsgTime) Encode() ([]byte, error) {
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
func (value Ros2Builtin_interfacesMsgTime) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Sec))
	*at += 4
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Nanosec))
	*at += 4
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Builtin_interfacesMsgTime(b []byte, at *int) (Ros2Builtin_interfacesMsgTime,
	error) {
	var value Ros2Builtin_interfacesMsgTime
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Builtin_interfacesMsgTime{}, err
		}
		value.Sec = int32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Builtin_interfacesMsgTime{}, err
		}
		value.Nanosec = uint32(binary.LittleEndian.Uint32(raw))
	}
	if value.Nanosec >= 1000000000 {
		return Ros2Builtin_interfacesMsgTime{}, boundedInvalid
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Builtin_interfacesMsgTime(b []byte) (Ros2Builtin_interfacesMsgTime, error) {
	if len(
		b) > 8 {
		return Ros2Builtin_interfacesMsgTime{}, boundedTooLarge
	}
	if len(b) < 8 {
		return Ros2Builtin_interfacesMsgTime{}, boundedInvalid
	}
	at := 0
	value, err := readRos2Builtin_interfacesMsgTime(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Builtin_interfacesMsgTime{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Std_msgsMsgHeader preserves every declared ROS2 std_msgs/msg/Header field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Std_msgsMsgHeader struct {
	// @brief stamp: explicit canonical bounds are committed in CodecIdentity.
	Stamp Ros2Builtin_interfacesMsgTime
	// @brief frame_id: explicit canonical bounds are committed in CodecIdentity.
	Frame_id string
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Std_msgsMsgHeaderCodecIdentity = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Std_msgsMsgHeaderMaxWireBytes = 76

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Std_msgsMsgHeaderCartesianMaxWireBytes = uint64(76)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Std_msgsMsgHeaderAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Std_msgsMsgHeader) WireSize() (int, error) {
	n := 0
	{
		size, err := value.Stamp.WireSize()
		if err != nil {
			return 0, err
		}
		next, err := boundedAdd(n, size)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if len(value.Frame_id) > 64 || !utf8.ValidString(value.Frame_id) || strings.IndexByte(value.Frame_id, 0) >= 0 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		next, err = boundedAdd(n, len(
			value.Frame_id))
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 76 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Std_msgsMsgHeader) Encode() ([]byte, error) {
	n, err := value.WireSize()
	if err != nil {
		return nil, err
	}
	out := make(
		[]byte, n)
	at := 0
	value.writeBounded(out, &at)
	return out, nil
}

// @brief Write every field after the complete record has passed size validation.
// @param value Validated record, borrowed for this write.
// @param out Caller-owned destination with sufficient capacity.
// @param at Internal cursor advanced by the complete encoded record length.
// @pre WireSize succeeded and the destination was allocated to that exact size.
func (value Ros2Std_msgsMsgHeader) writeBounded(out []byte, at *int) {
	value.Stamp.writeBounded(out, at)
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Frame_id)))
	*at += 4
	copy(out[*at:], value.Frame_id)
	*at += len(
		value.Frame_id)
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Std_msgsMsgHeader(b []byte, at *int) (Ros2Std_msgsMsgHeader, error) {
	var value Ros2Std_msgsMsgHeader
	{
		decoded, err := readRos2Builtin_interfacesMsgTime(b, at)
		if err != nil {
			return Ros2Std_msgsMsgHeader{}, err
		}
		value.Stamp = decoded
	}
	{
		size, err := boundedCount(b, at)
		if err != nil || size > 64 {
			return Ros2Std_msgsMsgHeader{}, boundedInvalid
		}
		raw, err := boundedTake(b,
			at, int(size))
		if err != nil || !utf8.Valid(raw) {
			return Ros2Std_msgsMsgHeader{}, boundedInvalid
		}
		value.Frame_id = string(
			raw)
		if strings.IndexByte(value.Frame_id, 0) >= 0 {
			return Ros2Std_msgsMsgHeader{}, boundedInvalid
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Std_msgsMsgHeader(b []byte) (Ros2Std_msgsMsgHeader, error) {
	if len(b) > 76 {
		return Ros2Std_msgsMsgHeader{}, boundedTooLarge
	}
	if len(b) < 12 {
		return Ros2Std_msgsMsgHeader{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Std_msgsMsgHeader(b, &at)
	if err != nil || at != len(b) {
		return Ros2Std_msgsMsgHeader{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Geometry_msgsMsgPoint preserves every declared ROS2 geometry_msgs/msg/Point field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Geometry_msgsMsgPoint struct {
	// @brief x: explicit canonical bounds are committed in CodecIdentity.
	X float64
	// @brief y: explicit canonical bounds are committed in CodecIdentity.
	Y float64
	// @brief z: explicit canonical bounds are committed in CodecIdentity.
	Z float64
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Geometry_msgsMsgPointCodecIdentity = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Geometry_msgsMsgPointMaxWireBytes = 24

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Geometry_msgsMsgPointCartesianMaxWireBytes = uint64(24)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Geometry_msgsMsgPointAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Geometry_msgsMsgPoint) WireSize() (int, error) {
	n := 0
	{
		if math.IsNaN(float64(value.X)) || math.IsInf(float64(value.X), 0) {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if math.IsNaN(float64(value.Y)) || math.IsInf(float64(value.Y), 0) {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if math.IsNaN(float64(value.Z)) || math.IsInf(float64(value.Z), 0) {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 24 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Geometry_msgsMsgPoint) Encode() ([]byte, error) {
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
func (value Ros2Geometry_msgsMsgPoint) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(value.X))
	*at += 8
	binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(value.Y))
	*at += 8
	binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(value.Z))
	*at += 8
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Geometry_msgsMsgPoint(b []byte, at *int) (Ros2Geometry_msgsMsgPoint,
	error) {
	var value Ros2Geometry_msgsMsgPoint
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Geometry_msgsMsgPoint{}, err
		}
		value.X = math.Float64frombits(binary.LittleEndian.Uint64(raw))
		if math.IsNaN(float64(value.X)) || math.IsInf(float64(value.X), 0) {
			return Ros2Geometry_msgsMsgPoint{}, boundedInvalid
		}
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Geometry_msgsMsgPoint{}, err
		}
		value.Y = math.Float64frombits(binary.LittleEndian.Uint64(raw))
		if math.IsNaN(float64(value.Y)) || math.IsInf(float64(value.Y), 0) {
			return Ros2Geometry_msgsMsgPoint{}, boundedInvalid
		}
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Geometry_msgsMsgPoint{}, err
		}
		value.Z = math.Float64frombits(binary.LittleEndian.Uint64(raw))
		if math.IsNaN(float64(value.Z)) || math.IsInf(float64(value.Z), 0) {
			return Ros2Geometry_msgsMsgPoint{}, boundedInvalid
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Geometry_msgsMsgPoint(b []byte) (Ros2Geometry_msgsMsgPoint, error) {
	if len(
		b) > 24 {
		return Ros2Geometry_msgsMsgPoint{}, boundedTooLarge
	}
	if len(b) < 24 {
		return Ros2Geometry_msgsMsgPoint{}, boundedInvalid
	}
	at := 0
	value, err := readRos2Geometry_msgsMsgPoint(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Geometry_msgsMsgPoint{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Geometry_msgsMsgQuaternion preserves every declared ROS2 geometry_msgs/msg/Quaternion field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Geometry_msgsMsgQuaternion struct {
	// @brief x: explicit canonical bounds are committed in CodecIdentity.
	X float64
	// @brief y: explicit canonical bounds are committed in CodecIdentity.
	Y float64
	// @brief z: explicit canonical bounds are committed in CodecIdentity.
	Z float64
	// @brief w: explicit canonical bounds are committed in CodecIdentity.
	W float64
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Geometry_msgsMsgQuaternionCodecIdentity = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Geometry_msgsMsgQuaternionMaxWireBytes = 32

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Geometry_msgsMsgQuaternionCartesianMaxWireBytes = uint64(32)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Geometry_msgsMsgQuaternionAggregateWireBytes = 0

// @brief Construct the record with its explicitly declared schema defaults.
// @return A new owned value with all inherited and nested defaults applied.
// @details The ordinary Go zero value is not substituted for declared defaults.
func DefaultRos2Geometry_msgsMsgQuaternion() Ros2Geometry_msgsMsgQuaternion {
	value := Ros2Geometry_msgsMsgQuaternion{}
	value.X = math.Float64frombits(0x0000000000000000)
	value.Y = math.Float64frombits(0x0000000000000000)
	value.Z = math.Float64frombits(0x0000000000000000)
	value.W = math.Float64frombits(0x3ff0000000000000)
	return value
}

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Geometry_msgsMsgQuaternion) WireSize() (int, error) {
	n := 0
	{
		if math.IsNaN(float64(value.X)) || math.IsInf(float64(value.X), 0) {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if math.IsNaN(float64(value.Y)) || math.IsInf(float64(value.Y), 0) {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if math.IsNaN(float64(value.Z)) || math.IsInf(float64(value.Z), 0) {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if math.IsNaN(float64(value.W)) || math.IsInf(float64(value.W), 0) {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 8)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 32 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Geometry_msgsMsgQuaternion) Encode() ([]byte, error) {
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
func (value Ros2Geometry_msgsMsgQuaternion) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(value.X))
	*at += 8
	binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(value.Y))
	*at += 8
	binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(value.Z))
	*at += 8
	binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(value.W))
	*at += 8
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Geometry_msgsMsgQuaternion(b []byte, at *int) (Ros2Geometry_msgsMsgQuaternion,
	error) {
	var value Ros2Geometry_msgsMsgQuaternion
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Geometry_msgsMsgQuaternion{}, err
		}
		value.X = math.Float64frombits(binary.LittleEndian.Uint64(raw))
		if math.IsNaN(float64(value.X)) || math.IsInf(float64(value.X), 0) {
			return Ros2Geometry_msgsMsgQuaternion{}, boundedInvalid
		}
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Geometry_msgsMsgQuaternion{}, err
		}
		value.Y = math.Float64frombits(binary.LittleEndian.Uint64(raw))
		if math.IsNaN(float64(value.Y)) || math.IsInf(float64(value.Y), 0) {
			return Ros2Geometry_msgsMsgQuaternion{}, boundedInvalid
		}
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Geometry_msgsMsgQuaternion{}, err
		}
		value.Z = math.Float64frombits(binary.LittleEndian.Uint64(raw))
		if math.IsNaN(float64(value.Z)) || math.IsInf(float64(value.Z), 0) {
			return Ros2Geometry_msgsMsgQuaternion{}, boundedInvalid
		}
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Geometry_msgsMsgQuaternion{}, err
		}
		value.W = math.Float64frombits(binary.LittleEndian.Uint64(raw))
		if math.IsNaN(float64(value.W)) || math.IsInf(float64(value.W), 0) {
			return Ros2Geometry_msgsMsgQuaternion{}, boundedInvalid
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Geometry_msgsMsgQuaternion(b []byte) (Ros2Geometry_msgsMsgQuaternion, error) {
	if len(
		b) > 32 {
		return Ros2Geometry_msgsMsgQuaternion{}, boundedTooLarge
	}
	if len(b) < 32 {
		return Ros2Geometry_msgsMsgQuaternion{}, boundedInvalid
	}
	at := 0
	value, err := readRos2Geometry_msgsMsgQuaternion(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Geometry_msgsMsgQuaternion{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Geometry_msgsMsgPose preserves every declared ROS2 geometry_msgs/msg/Pose field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Geometry_msgsMsgPose struct {
	// @brief position: explicit canonical bounds are committed in CodecIdentity.
	Position Ros2Geometry_msgsMsgPoint
	// @brief orientation: explicit canonical bounds are committed in CodecIdentity.
	Orientation Ros2Geometry_msgsMsgQuaternion
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Geometry_msgsMsgPoseCodecIdentity = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Geometry_msgsMsgPoseMaxWireBytes = 56

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Geometry_msgsMsgPoseCartesianMaxWireBytes = uint64(56)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Geometry_msgsMsgPoseAggregateWireBytes = 0

// @brief Construct the record with its explicitly declared schema defaults.
// @return A new owned value with all inherited and nested defaults applied.
// @details The ordinary Go zero value is not substituted for declared defaults.
func DefaultRos2Geometry_msgsMsgPose() Ros2Geometry_msgsMsgPose {
	value := Ros2Geometry_msgsMsgPose{}
	value.Orientation = DefaultRos2Geometry_msgsMsgQuaternion()
	return value
}

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Geometry_msgsMsgPose) WireSize() (int, error) {
	n := 0
	{
		size, err := value.Position.WireSize()
		if err != nil {
			return 0, err
		}
		next, err := boundedAdd(n, size)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		size, err := value.Orientation.WireSize()
		if err != nil {
			return 0, err
		}
		next, err := boundedAdd(n, size)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 56 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Geometry_msgsMsgPose) Encode() ([]byte, error) {
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
func (value Ros2Geometry_msgsMsgPose) writeBounded(out []byte, at *int) {
	value.Position.writeBounded(out, at)
	value.Orientation.writeBounded(out, at)
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Geometry_msgsMsgPose(b []byte, at *int) (Ros2Geometry_msgsMsgPose, error) {
	var value Ros2Geometry_msgsMsgPose
	{
		decoded, err := readRos2Geometry_msgsMsgPoint(b, at)
		if err != nil {
			return Ros2Geometry_msgsMsgPose{}, err
		}
		value.Position = decoded
	}
	{
		decoded, err := readRos2Geometry_msgsMsgQuaternion(b, at)
		if err != nil {
			return Ros2Geometry_msgsMsgPose{}, err
		}
		value.Orientation = decoded
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Geometry_msgsMsgPose(b []byte) (Ros2Geometry_msgsMsgPose, error) {
	if len(
		b) > 56 {
		return Ros2Geometry_msgsMsgPose{}, boundedTooLarge
	}
	if len(b) < 56 {
		return Ros2Geometry_msgsMsgPose{}, boundedInvalid
	}
	at := 0
	value, err := readRos2Geometry_msgsMsgPose(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Geometry_msgsMsgPose{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Geometry_msgsMsgPoseWithCovariance preserves every declared ROS2 geometry_msgs/msg/PoseWithCovariance field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Geometry_msgsMsgPoseWithCovariance struct {
	// @brief pose: explicit canonical bounds are committed in CodecIdentity.
	Pose Ros2Geometry_msgsMsgPose
	// @brief covariance: explicit canonical bounds are committed in CodecIdentity.
	Covariance [36]float64
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Geometry_msgsMsgPoseWithCovarianceCodecIdentity = "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Geometry_msgsMsgPoseWithCovarianceMaxWireBytes = 344

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Geometry_msgsMsgPoseWithCovarianceCartesianMaxWireBytes = uint64(344)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Geometry_msgsMsgPoseWithCovarianceAggregateWireBytes = 0

// @brief Construct the record with its explicitly declared schema defaults.
// @return A new owned value with all inherited and nested defaults applied.
// @details The ordinary Go zero value is not substituted for declared defaults.
func DefaultRos2Geometry_msgsMsgPoseWithCovariance() Ros2Geometry_msgsMsgPoseWithCovariance {
	value := Ros2Geometry_msgsMsgPoseWithCovariance{}
	value.Pose = DefaultRos2Geometry_msgsMsgPose()
	return value
}

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Geometry_msgsMsgPoseWithCovariance) WireSize() (int, error) {
	n := 0
	{
		size, err := value.Pose.WireSize()
		if err != nil {
			return 0, err
		}
		next, err := boundedAdd(n, size)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		for _, element := range value.Covariance {
			_ = element
			if math.IsNaN(float64(element)) || math.IsInf(float64(element), 0) {
				return 0, boundedInvalid
			}
			next, err := boundedAdd(n, 8)
			if err != nil {
				return 0, err
			}
			n = next
		}
	}
	if n > 344 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Geometry_msgsMsgPoseWithCovariance) Encode() ([]byte, error) {
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
func (value Ros2Geometry_msgsMsgPoseWithCovariance) writeBounded(out []byte, at *int) {
	value.Pose.writeBounded(out, at)
	for _, element := range value.Covariance {
		binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(element))
		*at += 8
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Geometry_msgsMsgPoseWithCovariance(b []byte, at *int) (Ros2Geometry_msgsMsgPoseWithCovariance,
	error) {
	var value Ros2Geometry_msgsMsgPoseWithCovariance
	{
		decoded, err := readRos2Geometry_msgsMsgPose(b, at)
		if err != nil {
			return Ros2Geometry_msgsMsgPoseWithCovariance{}, err
		}
		value.Pose = decoded
	}
	{
		count := uint32(36)
		if count > 36 {
			return Ros2Geometry_msgsMsgPoseWithCovariance{}, boundedInvalid
		}
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 8)
			if err != nil {
				return Ros2Geometry_msgsMsgPoseWithCovariance{}, err
			}
			value.Covariance[i] = math.Float64frombits(binary.LittleEndian.Uint64(raw))
			if math.IsNaN(float64(value.Covariance[i])) || math.IsInf(float64(value.Covariance[i]),
				0) {
				return Ros2Geometry_msgsMsgPoseWithCovariance{}, boundedInvalid
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
func DecodeRos2Geometry_msgsMsgPoseWithCovariance(b []byte) (Ros2Geometry_msgsMsgPoseWithCovariance, error) {
	if len(
		b) > 344 {
		return Ros2Geometry_msgsMsgPoseWithCovariance{}, boundedTooLarge
	}
	if len(
		b) < 344 {
		return Ros2Geometry_msgsMsgPoseWithCovariance{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Geometry_msgsMsgPoseWithCovariance(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Geometry_msgsMsgPoseWithCovariance{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Geometry_msgsMsgPoseWithCovarianceStamped preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Geometry_msgsMsgPoseWithCovarianceStamped struct {
	// @brief header: explicit canonical bounds are committed in CodecIdentity.
	Header Ros2Std_msgsMsgHeader
	// @brief pose: explicit canonical bounds are committed in CodecIdentity.
	Pose Ros2Geometry_msgsMsgPoseWithCovariance
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Geometry_msgsMsgPoseWithCovarianceStampedCodecIdentity = "UWVMROS1_ea380172cde0ee5fef319aff50d92a80c314510e3d12efec45e9ae1f74974af3"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Geometry_msgsMsgPoseWithCovarianceStampedMaxWireBytes = 420

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Geometry_msgsMsgPoseWithCovarianceStampedCartesianMaxWireBytes = uint64(420)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Geometry_msgsMsgPoseWithCovarianceStampedAggregateWireBytes = 0

// @brief Construct the record with its explicitly declared schema defaults.
// @return A new owned value with all inherited and nested defaults applied.
// @details The ordinary Go zero value is not substituted for declared defaults.
func DefaultRos2Geometry_msgsMsgPoseWithCovarianceStamped() Ros2Geometry_msgsMsgPoseWithCovarianceStamped {
	value := Ros2Geometry_msgsMsgPoseWithCovarianceStamped{}
	value.Pose = DefaultRos2Geometry_msgsMsgPoseWithCovariance()
	return value
}

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Geometry_msgsMsgPoseWithCovarianceStamped) WireSize() (int, error) {
	n := 0
	{
		size, err := value.Header.WireSize()
		if err != nil {
			return 0, err
		}
		next, err := boundedAdd(n, size)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		size, err := value.Pose.WireSize()
		if err != nil {
			return 0, err
		}
		next, err := boundedAdd(n, size)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 420 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Geometry_msgsMsgPoseWithCovarianceStamped) Encode() ([]byte, error) {
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
func (value Ros2Geometry_msgsMsgPoseWithCovarianceStamped) writeBounded(out []byte, at *int) {
	value.Header.writeBounded(out, at)
	value.Pose.writeBounded(out, at)
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Geometry_msgsMsgPoseWithCovarianceStamped(b []byte, at *int) (Ros2Geometry_msgsMsgPoseWithCovarianceStamped,
	error) {
	var value Ros2Geometry_msgsMsgPoseWithCovarianceStamped
	{
		decoded, err := readRos2Std_msgsMsgHeader(b, at)
		if err != nil {
			return Ros2Geometry_msgsMsgPoseWithCovarianceStamped{}, err
		}
		value.Header = decoded
	}
	{
		decoded, err := readRos2Geometry_msgsMsgPoseWithCovariance(b,
			at)
		if err != nil {
			return Ros2Geometry_msgsMsgPoseWithCovarianceStamped{}, err
		}
		value.Pose = decoded
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Geometry_msgsMsgPoseWithCovarianceStamped(b []byte) (Ros2Geometry_msgsMsgPoseWithCovarianceStamped,
	error) {
	if len(b) > 420 {
		return Ros2Geometry_msgsMsgPoseWithCovarianceStamped{}, boundedTooLarge
	}
	if len(
		b) < 356 {
		return Ros2Geometry_msgsMsgPoseWithCovarianceStamped{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Geometry_msgsMsgPoseWithCovarianceStamped(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Geometry_msgsMsgPoseWithCovarianceStamped{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection struct {
	// @brief family: explicit canonical bounds are committed in CodecIdentity.
	Family string
	// @brief id: explicit canonical bounds are committed in CodecIdentity.
	Id int32
	// @brief center: explicit canonical bounds are committed in CodecIdentity.
	Center Ros2Geometry_msgsMsgPoint
	// @brief corners: explicit canonical bounds are committed in CodecIdentity.
	Corners [4]Ros2Geometry_msgsMsgPoint
	// @brief pose: explicit canonical bounds are committed in CodecIdentity.
	Pose Ros2Geometry_msgsMsgPoseWithCovarianceStamped
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCodecIdentity = "UWVMROS1_5d840f0d9239a948ce5d17bbee6e248db8151ff31070667e506e9c1647ac6fe7"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionMaxWireBytes = 612

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionCartesianMaxWireBytes = uint64(612)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionAggregateWireBytes = 0

// @brief Construct the record with its explicitly declared schema defaults.
// @return A new owned value with all inherited and nested defaults applied.
// @details The ordinary Go zero value is not substituted for declared defaults.
func DefaultRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection() Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection {
	value := Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}
	value.Pose = DefaultRos2Geometry_msgsMsgPoseWithCovarianceStamped()
	return value
}

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection) WireSize() (int, error) {
	n := 0
	{
		if len(value.Family) > 64 || !utf8.ValidString(value.Family) || strings.IndexByte(value.Family, 0) >= 0 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		next, err = boundedAdd(n, len(
			value.Family))
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
		size, err := value.Center.WireSize()
		if err != nil {
			return 0, err
		}
		next, err := boundedAdd(n, size)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		for _, element := range value.Corners {
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
		size, err := value.Pose.WireSize()
		if err != nil {
			return 0, err
		}
		next, err := boundedAdd(n, size)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 612 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection) Encode() ([]byte, error) {
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
func (value Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Family)))
	*at += 4
	copy(out[*at:], value.Family)
	*at += len(
		value.Family)
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Id))
	*at += 4
	value.Center.writeBounded(out, at)
	for _, element := range value.Corners {
		element.writeBounded(out, at)
	}
	value.Pose.writeBounded(out, at)
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(b []byte, at *int) (
	Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection,
	error) {
	var value Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
	{
		size, err := boundedCount(b, at)
		if err != nil || size > 64 {
			return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, boundedInvalid
		}
		raw, err := boundedTake(b, at, int(size))
		if err != nil || !utf8.Valid(
			raw) {
			return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, boundedInvalid
		}
		value.Family = string(
			raw)
		if strings.IndexByte(value.Family, 0) >= 0 {
			return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, boundedInvalid
		}
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, err
		}
		value.Id = int32(binary.LittleEndian.Uint32(raw))
	}
	{
		decoded, err := readRos2Geometry_msgsMsgPoint(b,
			at)
		if err != nil {
			return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, err
		}
		value.Center = decoded
	}
	{
		count := uint32(4)
		if count > 4 {
			return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, boundedInvalid
		}
		for i := 0; i < int(count); i++ {
			decoded, err := readRos2Geometry_msgsMsgPoint(b,
				at)
			if err != nil {
				return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, err
			}
			value.Corners[i] = decoded
		}
	}
	{
		decoded, err := readRos2Geometry_msgsMsgPoseWithCovarianceStamped(b,
			at)
		if err != nil {
			return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, err
		}
		value.Pose = decoded
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(b []byte) (
	Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection, error) {
	if len(
		b) > 612 {
		return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, boundedTooLarge
	}
	if len(
		b) < 484 {
		return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray struct {
	// @brief header: explicit canonical bounds are committed in CodecIdentity.
	Header Ros2Std_msgsMsgHeader
	// @brief detections: explicit canonical bounds are committed in CodecIdentity.
	Detections []Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCodecIdentity = "UWVMROS1_60359e405aedd2a627e60bc35e849989fe5ed1d426afb2a884036aef93bfe0a5"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayMaxWireBytes = 9872

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayCartesianMaxWireBytes = uint64(9872)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArrayAggregateWireBytes = 0

// @brief Construct the record with its explicitly declared schema defaults.
// @return A new owned value with all inherited and nested defaults applied.
// @details The ordinary Go zero value is not substituted for declared defaults.
func DefaultRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray() Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray {
	value := Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray{}
	return value
}

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray) WireSize() (int, error) {
	n := 0
	{
		size, err := value.Header.WireSize()
		if err != nil {
			return 0, err
		}
		next, err := boundedAdd(n, size)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		if len(value.Detections) > 16 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Detections {
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
	if n > 9872 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray) Encode() ([]byte, error) {
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
func (value Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray) writeBounded(out []byte, at *int) {
	value.Header.writeBounded(out, at)
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Detections)))
	*at += 4
	for _, element := range value.Detections {
		element.writeBounded(out, at)
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(b []byte, at *int) (
	Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray,
	error) {
	var value Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray
	{
		decoded, err := readRos2Std_msgsMsgHeader(b,
			at)
		if err != nil {
			return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray{}, err
		}
		value.Header = decoded
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray{}, err
		}
		if count > 16 {
			return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray{}, boundedInvalid
		}
		value.Detections = make([]Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetection, int(count))
		for i := 0; i < int(count); i++ {
			decoded, err := readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetection(b,
				at)
			if err != nil {
				return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray{}, err
			}
			value.Detections[i] = decoded
		}
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(b []byte) (
	Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray, error) {
	if len(
		b) > 9872 {
		return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray{}, boundedTooLarge
	}
	if len(
		b) < 16 {
		return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Isaac_ros_apriltag_interfacesMsgAprilTagDetectionArray{}, boundedInvalid
	}
	return value, nil
}
