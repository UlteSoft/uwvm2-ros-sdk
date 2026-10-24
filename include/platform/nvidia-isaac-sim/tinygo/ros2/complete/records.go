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

// @brief Ros2Sensor_msgsMsgJointState preserves every declared ROS2 sensor_msgs/msg/JointState field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Sensor_msgsMsgJointState struct {
	// @brief header: explicit canonical bounds are committed in CodecIdentity.
	Header Ros2Std_msgsMsgHeader
	// @brief name: explicit canonical bounds are committed in CodecIdentity.
	Name []string
	// @brief position: explicit canonical bounds are committed in CodecIdentity.
	Position []float64
	// @brief velocity: explicit canonical bounds are committed in CodecIdentity.
	Velocity []float64
	// @brief effort: explicit canonical bounds are committed in CodecIdentity.
	Effort []float64
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Sensor_msgsMsgJointStateCodecIdentity = "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Sensor_msgsMsgJointStateMaxWireBytes = 5980

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Sensor_msgsMsgJointStateCartesianMaxWireBytes = uint64(5980)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Sensor_msgsMsgJointStateAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Sensor_msgsMsgJointState) WireSize() (int, error) {
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
		if len(value.Name) > 64 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Name {
			_ = element
			if len(element) > 64 || !utf8.ValidString(element) || strings.IndexByte(element, 0) >= 0 {
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
	{
		if len(value.Position) > 64 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Position {
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
	{
		if len(value.Velocity) > 64 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Velocity {
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
	{
		if len(value.Effort) > 64 {
			return 0, boundedInvalid
		}
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
		for _, element := range value.Effort {
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
	if (len(value.Name) != 0 && len(value.Position) != 0 && len(value.Name) != len(value.Position)) || (len(value.Name) != 0 && len(
		value.Velocity) != 0 && len(value.Name) != len(value.Velocity)) || (len(value.Name) != 0 && len(value.Effort) != 0 && len(
		value.Name) != len(value.Effort)) || (len(value.Position) != 0 && len(value.Velocity) != 0 && len(value.Position) != len(
		value.Velocity)) || (len(value.Position) != 0 && len(value.Effort) != 0 && len(value.Position) != len(value.Effort)) || (len(
		value.Velocity) != 0 && len(value.Effort) != 0 && len(value.Velocity) != len(value.Effort)) {
		return 0, boundedInvalid
	}
	if n > 5980 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Sensor_msgsMsgJointState) Encode() ([]byte, error) {
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
func (value Ros2Sensor_msgsMsgJointState) writeBounded(out []byte, at *int) {
	value.Header.writeBounded(out, at)
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Name)))
	*at += 4
	for _, element := range value.Name {
		binary.LittleEndian.PutUint32(out[*at:], uint32(len(element)))
		*at += 4
		copy(out[*at:], element)
		*at += len(element)
	}
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Position)))
	*at += 4
	for _, element := range value.Position {
		binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(element))
		*at += 8
	}
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Velocity)))
	*at += 4
	for _, element := range value.Velocity {
		binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(element))
		*at += 8
	}
	binary.LittleEndian.PutUint32(out[*at:], uint32(len(value.Effort)))
	*at += 4
	for _, element := range value.Effort {
		binary.LittleEndian.PutUint64(out[*at:], math.Float64bits(element))
		*at += 8
	}
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Sensor_msgsMsgJointState(b []byte, at *int) (Ros2Sensor_msgsMsgJointState,
	error) {
	var value Ros2Sensor_msgsMsgJointState
	{
		decoded, err := readRos2Std_msgsMsgHeader(b, at)
		if err != nil {
			return Ros2Sensor_msgsMsgJointState{}, err
		}
		value.Header = decoded
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Sensor_msgsMsgJointState{}, err
		}
		if count > 64 {
			return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
		}
		value.Name = make([]string, int(count))
		for i := 0; i < int(count); i++ {
			size, err := boundedCount(b, at)
			if err != nil || size > 64 {
				return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
			}
			raw,
				err := boundedTake(b, at, int(size))
			if err != nil || !utf8.Valid(raw) {
				return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
			}
			value.Name[i] = string(raw)
			if strings.IndexByte(value.Name[i],
				0) >= 0 {
				return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
			}
		}
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Sensor_msgsMsgJointState{}, err
		}
		if count > 64 {
			return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
		}
		value.Position = make([]float64, int(count))
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 8)
			if err != nil {
				return Ros2Sensor_msgsMsgJointState{}, err
			}
			value.Position[i] = math.Float64frombits(binary.LittleEndian.Uint64(raw))
			if math.IsNaN(float64(value.Position[i])) || math.IsInf(float64(value.Position[i]),
				0) {
				return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
			}
		}
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Sensor_msgsMsgJointState{}, err
		}
		if count > 64 {
			return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
		}
		value.Velocity = make([]float64, int(count))
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 8)
			if err != nil {
				return Ros2Sensor_msgsMsgJointState{}, err
			}
			value.Velocity[i] = math.Float64frombits(binary.LittleEndian.Uint64(raw))
			if math.IsNaN(float64(value.Velocity[i])) || math.IsInf(float64(value.Velocity[i]),
				0) {
				return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
			}
		}
	}
	{
		count, err := boundedCount(b, at)
		if err != nil {
			return Ros2Sensor_msgsMsgJointState{}, err
		}
		if count > 64 {
			return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
		}
		value.Effort = make([]float64, int(count))
		for i := 0; i < int(count); i++ {
			raw, err := boundedTake(b, at, 8)
			if err != nil {
				return Ros2Sensor_msgsMsgJointState{}, err
			}
			value.Effort[i] = math.Float64frombits(binary.LittleEndian.Uint64(raw))
			if math.IsNaN(float64(value.Effort[i])) || math.IsInf(float64(value.Effort[i]), 0) {
				return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
			}
		}
	}
	if (len(value.Name) != 0 && len(value.Position) != 0 && len(value.Name) != len(value.Position)) || (len(value.Name) != 0 && len(
		value.Velocity) != 0 && len(value.Name) != len(value.Velocity)) || (len(value.Name) != 0 && len(value.Effort) != 0 && len(
		value.Name) != len(value.Effort)) || (len(value.Position) != 0 && len(value.Velocity) != 0 && len(value.Position) != len(
		value.Velocity)) || (len(value.Position) != 0 && len(value.Effort) != 0 && len(value.Position) != len(value.Effort)) || (len(
		value.Velocity) != 0 && len(value.Effort) != 0 && len(value.Velocity) != len(
		value.Effort)) {
		return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Sensor_msgsMsgJointState(b []byte) (Ros2Sensor_msgsMsgJointState, error) {
	if len(
		b) > 5980 {
		return Ros2Sensor_msgsMsgJointState{}, boundedTooLarge
	}
	if len(b) < 28 {
		return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
	}
	at := 0
	value, err := readRos2Sensor_msgsMsgJointState(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Sensor_msgsMsgJointState{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_isaac_sim_bridgeMsgClockEvent preserves every declared ROS2 uwvm_isaac_sim_bridge/msg/ClockEvent field.
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_isaac_sim_bridgeMsgClockEvent struct {
	// @brief kind: explicit canonical bounds are committed in CodecIdentity.
	Kind uint8
	// @brief phase: explicit canonical bounds are committed in CodecIdentity.
	Phase uint8
	// @brief frame: explicit canonical bounds are committed in CodecIdentity.
	Frame uint32
	// @brief sec: explicit canonical bounds are committed in CodecIdentity.
	Sec int32
	// @brief nanosec: explicit canonical bounds are committed in CodecIdentity.
	Nanosec uint32
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodecIdentity = "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_isaac_sim_bridgeMsgClockEventMaxWireBytes = 14

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_isaac_sim_bridgeMsgClockEventCartesianMaxWireBytes = uint64(14)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_isaac_sim_bridgeMsgClockEventAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_isaac_sim_bridgeMsgClockEvent) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 1)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 1)
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
	if n > 14 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_isaac_sim_bridgeMsgClockEvent) Encode() ([]byte, error) {
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
func (value Ros2Uwvm_isaac_sim_bridgeMsgClockEvent) writeBounded(out []byte, at *int) {
	out[*at] = byte(value.Kind)
	*at += 1
	out[*at] = byte(value.Phase)
	*at += 1
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Frame))
	*at += 4
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
func readRos2Uwvm_isaac_sim_bridgeMsgClockEvent(b []byte, at *int) (Ros2Uwvm_isaac_sim_bridgeMsgClockEvent,
	error) {
	var value Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
	{
		raw, err := boundedTake(b, at, 1)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{}, err
		}
		value.Kind = uint8(raw[0])
	}
	{
		raw, err := boundedTake(b, at, 1)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{}, err
		}
		value.Phase = uint8(raw[0])
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{}, err
		}
		value.Frame = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{}, err
		}
		value.Sec = int32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{}, err
		}
		value.Nanosec = uint32(binary.LittleEndian.Uint32(raw))
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_isaac_sim_bridgeMsgClockEvent(b []byte) (Ros2Uwvm_isaac_sim_bridgeMsgClockEvent, error) {
	if len(
		b) > 14 {
		return Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{}, boundedTooLarge
	}
	if len(
		b) < 14 {
		return Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_isaac_sim_bridgeMsgClockEvent(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_isaac_sim_bridgeMsgClockEvent{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request struct {
	// @brief operation: explicit canonical bounds are committed in CodecIdentity.
	Operation uint8
	// @brief session_nonce: explicit canonical bounds are committed in CodecIdentity.
	Session_nonce uint64
	// @brief request_sequence: explicit canonical bounds are committed in CodecIdentity.
	Request_sequence uint32
	// @brief phase: explicit canonical bounds are committed in CodecIdentity.
	Phase uint8
	// @brief frame: explicit canonical bounds are committed in CodecIdentity.
	Frame uint32
	// @brief impulse: explicit canonical bounds are committed in CodecIdentity.
	Impulse bool
	// @brief extra_update: explicit canonical bounds are committed in CodecIdentity.
	Extra_update bool
	// @brief pacing_milliseconds: explicit canonical bounds are committed in CodecIdentity.
	Pacing_milliseconds uint16
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodecIdentity = "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestMaxWireBytes = 22

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCartesianMaxWireBytes = uint64(22)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request) WireSize() (int, error) {
	n := 0
	{
		next, err := boundedAdd(n, 1)
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
	{
		next, err := boundedAdd(n, 1)
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
		next, err := boundedAdd(n, 1)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 1)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		next, err := boundedAdd(n, 2)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 22 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request) Encode() ([]byte, error) {
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
func (value Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request) writeBounded(out []byte, at *int) {
	out[*at] = byte(value.Operation)
	*at += 1
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Session_nonce))
	*at += 8
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Request_sequence))
	*at += 4
	out[*at] = byte(value.Phase)
	*at += 1
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Frame))
	*at += 4
	if value.Impulse {
		out[*at] = 1
	} else {
		out[*at] = 0
	}
	*at += 1
	if value.Extra_update {
		out[*at] = 1
	} else {
		out[*at] = 0
	}
	*at += 1
	binary.LittleEndian.PutUint16(out[*at:], uint16(value.Pacing_milliseconds))
	*at += 2
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(b []byte, at *int) (
	Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request, error) {
	var value Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request
	{
		raw, err := boundedTake(b, at, 1)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, err
		}
		value.Operation = uint8(raw[0])
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, err
		}
		value.Session_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, err
		}
		value.Request_sequence = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 1)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, err
		}
		value.Phase = uint8(raw[0])
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, err
		}
		value.Frame = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 1)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, err
		}
		if raw[0] > 1 {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, boundedInvalid
		}
		value.Impulse = raw[0] != 0
	}
	{
		raw, err := boundedTake(b, at, 1)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, err
		}
		if raw[0] > 1 {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, boundedInvalid
		}
		value.Extra_update = raw[0] != 0
	}
	{
		raw, err := boundedTake(b, at, 2)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, err
		}
		value.Pacing_milliseconds = uint16(binary.LittleEndian.Uint16(raw))
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(b []byte) (Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request,
	error) {
	if len(b) > 22 {
		return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, boundedTooLarge
	}
	if len(
		b) < 22 {
		return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request{}, boundedInvalid
	}
	return value, nil
}

// @brief Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response preserves every declared ROS2
// @details Field order, nested layouts, declared defaults, and canonical bounds
// are preserved by WireSize, Encode, and the corresponding Decode function.
type Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response struct {
	// @brief status: explicit canonical bounds are committed in CodecIdentity.
	Status uint32
	// @brief session_nonce: explicit canonical bounds are committed in CodecIdentity.
	Session_nonce uint64
	// @brief request_sequence: explicit canonical bounds are committed in CodecIdentity.
	Request_sequence uint32
	// @brief state: explicit canonical bounds are committed in CodecIdentity.
	State uint8
	// @brief actual_app_updates: explicit canonical bounds are committed in CodecIdentity.
	Actual_app_updates uint64
	// @brief completed_steps: explicit canonical bounds are committed in CodecIdentity.
	Completed_steps uint32
	// @brief has_event: explicit canonical bounds are committed in CodecIdentity.
	Has_event bool
	// @brief event: explicit canonical bounds are committed in CodecIdentity.
	Event Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
	// @brief cleanup_status: explicit canonical bounds are committed in CodecIdentity.
	Cleanup_status uint32
}

// @brief Immutable canonical codec identity for field order, defaults, and bounds.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodecIdentity = "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502"

// @brief Largest admitted canonical message size, in bytes.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseMaxWireBytes = 48

// @brief Maximum wire bytes when each independent sequence reaches its declared bound.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCartesianMaxWireBytes = uint64(48)

// @brief Aggregate wire limit in bytes; zero means no additional aggregate limit.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseAggregateWireBytes = 0

// @brief Validate every active record field and measure its canonical wire size.
// @param value Complete record with the declared string and sequence bounds.
// @return Exact byte count, or the original validation or size error.
// @details No allocation, transport call, permission grant, or record mutation occurs.
func (value Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response) WireSize() (int, error) {
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
	{
		next, err := boundedAdd(n, 1)
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
	{
		next, err := boundedAdd(n, 1)
		if err != nil {
			return 0, err
		}
		n = next
	}
	{
		size, err := value.Event.WireSize()
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
		next, err := boundedAdd(n, 4)
		if err != nil {
			return 0, err
		}
		n = next
	}
	if n > 48 {
		return 0, boundedTooLarge
	}
	return n, nil
}

// @brief Encode the complete validated record into one owned byte slice.
// @param value Complete original record; all active fields are validated first.
// @return Caller-owned canonical bytes, or an error with no partial wire value.
// @details The Message interface retains every declared field and schema bound.
func (value Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response) Encode() ([]byte, error) {
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
func (value Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response) writeBounded(out []byte, at *int) {
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Status))
	*at += 4
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Session_nonce))
	*at += 8
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Request_sequence))
	*at += 4
	out[*at] = byte(value.State)
	*at += 1
	binary.LittleEndian.PutUint64(out[*at:], uint64(value.Actual_app_updates))
	*at += 8
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Completed_steps))
	*at += 4
	if value.Has_event {
		out[*at] = 1
	} else {
		out[*at] = 0
	}
	*at += 1
	value.Event.writeBounded(out, at)
	binary.LittleEndian.PutUint32(out[*at:], uint32(value.Cleanup_status))
	*at += 4
}

// @brief Read one nested record while checking each field and sequence bound.
// @param b Borrowed complete canonical input.
// @param at Internal input cursor; callers discard partial state on failure.
// @return The complete nested value or the original decoding error.
// @details This internal helper may advance its cursor before rejecting later data.
func readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(b []byte, at *int) (
	Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response, error) {
	var value Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, err
		}
		value.Status = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, err
		}
		value.Session_nonce = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, err
		}
		value.Request_sequence = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 1)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, err
		}
		value.State = uint8(raw[0])
	}
	{
		raw, err := boundedTake(b, at, 8)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, err
		}
		value.Actual_app_updates = uint64(binary.LittleEndian.Uint64(raw))
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, err
		}
		value.Completed_steps = uint32(binary.LittleEndian.Uint32(raw))
	}
	{
		raw, err := boundedTake(b, at, 1)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, err
		}
		if raw[0] > 1 {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, boundedInvalid
		}
		value.Has_event = raw[0] != 0
	}
	{
		decoded, err := readRos2Uwvm_isaac_sim_bridgeMsgClockEvent(b,
			at)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, err
		}
		value.Event = decoded
	}
	{
		raw, err := boundedTake(b, at, 4)
		if err != nil {
			return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, err
		}
		value.Cleanup_status = uint32(binary.LittleEndian.Uint32(raw))
	}
	return value, nil
}

// @brief Decode exactly one complete canonical record without trailing bytes.
// @param b Borrowed input covering the entire expected record.
// @return An owned complete value, or the zero value and an invalid-wire error.
// @details Strings and sequences are checked against their declared bounds.
// No partial decoded record escapes on truncation or invalid field data.
func DecodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(b []byte) (
	Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response, error) {
	if len(
		b) > 48 {
		return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, boundedTooLarge
	}
	if len(
		b) < 48 {
		return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, boundedInvalid
	}
	at := 0
	value,
		err := readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(b, &at)
	if err != nil || at != len(
		b) {
		return Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response{}, boundedInvalid
	}
	return value, nil
}

// @brief Original schema constant preserved without numeric conversion.
const Ros2Uwvm_isaac_sim_bridgeMsgClockEvent_AUTOMATIC uint8 = 1

// @brief Original schema constant preserved without numeric conversion.
const Ros2Uwvm_isaac_sim_bridgeMsgClockEvent_MANUAL uint8 = 2

// @brief Original schema constant preserved without numeric conversion.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_START uint8 = 1

// @brief Original schema constant preserved without numeric conversion.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_STEP uint8 = 2

// @brief Original schema constant preserved without numeric conversion.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_FINISH uint8 = 3

// @brief Original schema constant preserved without numeric conversion.
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_CANCEL uint8 = 4
