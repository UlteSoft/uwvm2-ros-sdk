//go:build wasip1 && wasm

// Complete builtin canonical value models shared with the owned TinyGo source.
// Official Go compilation/runtime remains a distinct qualification route.
package roswasm

import (
	"encoding/binary"
	"math"
	"strings"
	"unicode/utf8"
)

// Message encodes one complete builtin canonical value. It is a closed ROS guest
// wire convenience, not an arbitrary native ROS/CDR serializer or an authority grant.
// @brief Complete builtin canonical encoding interface, structurally matching Canonical.
// @details Builtin implementations preserve their exact original fields and own
// their returned Go storage. User implementations must supply complete stable
// bytes and their own error/storage contract; interface conformance proves no
// native ROS schema identity, permission or wire compatibility by itself.
// @see Message.Encode; Canonical; String; ParameterValue
type Message interface {
	// Encode returns the complete original canonical body or an implementation error.
	// @brief Encode every original field without publishing partial/default output.
	// @details Builtin methods validate their local bounds and return newly owned
	// Go storage. No import, native type inference or resource grant is performed.
	// @return Complete initialized bytes and nil, or unusable bytes and the original
	// error. Allocation/user implementation panics remain outside the error result.
	// @see Canonical.Encode; Image.Encode; ParameterValue.Encode
	Encode() ([]byte, error)
}

type writer struct {
	b   []byte
	err error
}

func (w *writer) add(b []byte) {
	if w.err != nil {
		return
	}
	if uint64(len(b)) > MaxCanonicalBytes-uint64(len(w.b)) {
		w.err = Error{Code: TooLarge}
		return
	}
	w.b = append(w.b, b...)
}
func (w *writer) u8(v uint8)   { w.add([]byte{v}) }
func (w *writer) u32(v uint32) { var b [4]byte; binary.LittleEndian.PutUint32(b[:], v); w.add(b[:]) }
func (w *writer) u64(v uint64) { var b [8]byte; binary.LittleEndian.PutUint64(b[:], v); w.add(b[:]) }
func (w *writer) real(v float64) {
	if math.IsNaN(v) || math.IsInf(v, 0) {
		w.err = invalid()
		return
	}
	w.u64(math.Float64bits(v))
}
func (w *writer) blob(b []byte) {
	if uint64(len(b)) > uint64(^uint32(0)) {
		w.err = Error{Code: TooLarge}
		return
	}
	w.u32(uint32(len(b)))
	w.add(b)
}
func (w *writer) text(s string) {
	if !utf8.ValidString(s) {
		w.err = invalid()
		return
	}
	w.blob([]byte(s))
}
func (w *writer) finish() ([]byte, error) {
	if w.err != nil {
		return nil, w.err
	}
	return w.b, nil
}

type reader struct {
	b   []byte
	at  uint64
	err error
}

func newReader(b []byte) *reader {
	r := &reader{b: b}
	if uint64(len(b)) > MaxCanonicalBytes {
		r.err = Error{Code: TooLarge}
	}
	return r
}
func (r *reader) bytes(n uint64) []byte {
	if r.err != nil {
		return nil
	}
	if n > uint64(len(r.b))-r.at {
		r.err = invalid()
		return nil
	}
	b := r.b[r.at : r.at+n]
	r.at += n
	return b
}
func (r *reader) u8() uint8 {
	b := r.bytes(1)
	if r.err != nil {
		return 0
	}
	return b[0]
}
func (r *reader) u32() uint32 {
	b := r.bytes(4)
	if r.err != nil {
		return 0
	}
	return binary.LittleEndian.Uint32(b)
}
func (r *reader) u64() uint64 {
	b := r.bytes(8)
	if r.err != nil {
		return 0
	}
	return binary.LittleEndian.Uint64(b)
}
func (r *reader) real() float64 {
	v := math.Float64frombits(r.u64())
	if math.IsNaN(v) || math.IsInf(v, 0) {
		r.err = invalid()
	}
	return v
}
func (r *reader) blob() []byte { n := r.u32(); return r.bytes(uint64(n)) }
func (r *reader) text() string {
	b := r.blob()
	if !utf8.Valid(b) {
		r.err = invalid()
	}
	return string(b)
}
func (r *reader) done() error {
	if r.err != nil {
		return r.err
	}
	if r.at != uint64(len(r.b)) {
		return invalid()
	}
	return nil
}
func (r *reader) count(width uint64) uint32 {
	n := r.u32()
	if r.err != nil {
		return 0
	}
	if n > MaxParameterElements {
		r.err = Error{Code: TooLarge}
		return 0
	}
	if uint64(n) > (uint64(len(r.b))-r.at)/width {
		r.err = invalid()
		return 0
	}
	return n
}
func validStamp(seconds, nanos uint32) bool { return seconds <= 2147483647 && nanos < 1000000000 }
func eventName(s string, node bool) bool {
	maximum := 1024
	separator := byte('/')
	start := 0
	if !node {
		maximum = 255
		separator = '.'
	}
	if len(s) == 0 || len(s) > maximum {
		return false
	}
	if node {
		if len(s) < 2 || s[0] != '/' {
			return false
		}
		start = 1
	}
	first := true
	for i := start; i < len(s); i++ {
		c := s[i]
		if c == separator {
			if first {
				return false
			}
			first = true
			continue
		}
		alpha := c >= 'a' && c <= 'z' || c >= 'A' && c <= 'Z' || c == '_'
		if !alpha && !(c >= '0' && c <= '9' && !first) {
			return false
		}
		first = false
	}
	return !first
}

// String is a canonical UTF-8 ROS String, with a u32 byte-length prefix.
// @brief Original complete UTF-8 message String value without implicit normalization.
// @details Local construction can contain invalid UTF-8; Encode checks it.
// Embedded NUL/BOM remain content bytes, distinct from stricter alias/native-field policy.
// @see String.Encode; EncodeString; DecodeString; PublishValue
type String string

// Encode creates a fresh bounded canonical String. Native fields may be stricter about NUL.
// @brief Encode u32 LE UTF-8 byte length followed by exact complete String bytes.
// @details Validates full UTF-8 and prefix-inclusive MaxCanonicalBytes, retaining
// no source backing after return. It performs no native schema/policy operation.
// @param[in] s Complete immutable original String content, with NUL/BOM preserved.
// @return New owned bytes and nil, or nil with APIError(Invalid/TooLarge).
// Allocation panics are not converted to checked errors.
// @see String; EncodeString; DecodeString; MaxCanonicalBytes
func (s String) Encode() ([]byte, error) { w := &writer{}; w.text(string(s)); return w.finish() }

// Bool is a canonical one-byte Bool; no integer coercion is inferred.
// @brief Original Bool message value whose complete encoding is exactly 0 or 1.
// @details Construction has no resource/type/permission effect; a native Service
// application Bool remains independent from an operation's unsigned status.
// @see Bool.Encode; DecodeBool; ServiceResponse.Success
type Bool bool

// Encode creates the one-byte canonical0/1 representation.
// @brief Encode false as byte 0 and true as byte 1 in independent Go storage.
// @details Writes no Host memory and establishes no publication or native type grant.
// @param[in] v Original Bool value without integer coercion.
// @return One complete owned byte and nil; runtime allocation can still panic.
// @see Bool; DecodeBool; PublishValue; Canonical
func (v Bool) Encode() ([]byte, error) {
	if v {
		return []byte{1}, nil
	}
	return []byte{0}, nil
}

// Twist contains finite linear xyz followed by angular xyz.
// @brief Original six-component Twist value: linear xyz then angular xyz.
// @details Encode validates finiteness, preserves negative zero and does no
// scaling, clamping or motion authorization. Direct construction can be nonfinite.
// @see Twist.Encode; EncodeTwist; DecodeTwist; PublishValue
type Twist [6]float64

// Encode creates the exact48-byte canonical Twist payload.
// @brief Encode all six original Float64 LE components into a new 48-byte body.
// @details Preserves finite IEEE754 bits and component order, without normalizing
// values or issuing a native operation. Failed encoding exposes no partial output.
// @param[in] v Original linear xyz in m/s followed by angular xyz in rad/s.
// @return Owned complete bytes and nil, or nil with APIError(Invalid) for a
// nonfinite component. Allocation panics remain separate from checked errors.
// @see Twist; EncodeTwist; DecodeTwist; Owner.Publish
func (v Twist) Encode() ([]byte, error) {
	b := make([]byte, 48)
	_, err := EncodeTwist([6]float64(v), b)
	if err != nil {
		return nil, err
	}
	return b, nil
}

// Header carries canonical Image/Transform sequence, stamp and frame. Supply a
// zero Sequence for ROS2; ROS1 native transports may generate their own sequence.
// @brief Original Header fields retained in canonical sequence/stamp/frame order.
// @details Image and Transform keep distinct seconds/native-policy constraints.
// This local value neither selects a native frame nor proves a clock observation.
// @see Image; Transform; Header.Seconds; Header.Frame
type Header struct {
	// Sequence is the canonical Header sequence.
	// @brief Exact unsigned original u32 sequence field, encoded without synthesis.
	// @details ROS2 callers supply 0; actual ROS1 transports may generate their own
	// native sequence independently of this retained canonical source value.
	// @see Image.Encode; Transform.Encode; Header
	Sequence uint32
	// Seconds spans full uint32 for ROS1 Image. ROS2 Image and both Transform
	// adapters additionally require at most2147483647 through host/typed validation.
	// @brief Original unsigned seconds component with adapter-specific native bounds.
	// @details Image's local codec retains all u32 values; Transform locally checks
	// 0..2147483647. Native ROS2 Image independently imposes its signed-seconds bound.
	// @see Header.Nanoseconds; Image.Encode; Transform.Encode
	Seconds uint32
	// Nanoseconds is below one billion.
	// @brief Original subsecond u32 component in the range 0..999999999.
	// @details Both Image and Transform codecs reject higher values; no timestamp
	// normalization, rollover, domain change or current-time inference occurs.
	// @see Header.Seconds; Image; Transform
	Nanoseconds uint32
	// Frame is the exact configured frame name, checked independently by the host.
	// @brief Complete original UTF-8 frame String with its own canonical byte prefix.
	// @details Local codecs check UTF-8/byte limits, while native frame grammar,
	// permitted pair and identity stay Host checks. No renaming/NUL removal occurs.
	// @see Transform.ChildFrame; Image.Header; Header
	Frame string
}

func (h Header) write(w *writer) {
	if h.Nanoseconds >= 1000000000 {
		w.err = invalid()
		return
	}
	w.u32(h.Sequence)
	w.u32(h.Seconds)
	w.u32(h.Nanoseconds)
	w.text(h.Frame)
}
func readHeader(r *reader) Header {
	h := Header{Sequence: r.u32(), Seconds: r.u32(), Nanoseconds: r.u32(), Frame: r.text()}
	if h.Nanoseconds >= 1000000000 {
		r.err = invalid()
	}
	return h
}

// Image is the canonical builtin Image. The host separately checks supported
// native encoding, dimensions, step, payload quota and publication authority.
// @brief Complete original Image fields and bytes in the builtin canonical layout.
// @details Local codec checks cover structure, UTF-8, subsecond bounds and Bool;
// dimension/encoding/row-layout compatibility and native timestamp limits remain
// independent Host policy. Constructing this value grants no image endpoint.
// @see Image.Encode; DecodeImage; Header; PublishValue
type Image struct {
	// Header identifies the timestamp and image frame.
	// @brief Complete original sequence, seconds, nanoseconds and frame fields.
	// @details Image's local seconds representation spans u32; native ROS2 can
	// require a narrower range. Frame/timestamp values are never filled implicitly.
	// @see Header; Image.Encode; DecodeImage
	Header Header
	// Height is the pixel row count.
	// @brief Exact original u32 image height in rows.
	// @details Local encoding preserves even zero; native shape/product/quota
	// admission remains independent and can reject it without substituting a value.
	// @see Image.Width; Image.Step; Image.Data
	Height uint32
	// Width is the pixel column count.
	// @brief Exact original u32 image width in columns.
	// @details No dimension/encoding conversion or implicit row-size calculation
	// occurs in this value codec; native compatibility remains independently checked.
	// @see Image.Height; Image.Encoding; Image.Step
	Width uint32
	// Encoding is an explicit supported native name such as rgb8.
	// @brief Complete original UTF-8 native encoding-name String.
	// @details The local codec does not choose/convert a pixel format or prove that
	// this name is admitted by the selected schema/Host alias.
	// @see Image.BigEndian; Image.Data; Image.Encode
	Encoding string
	// BigEndian is encoded as a canonical one-byte Bool.
	// @brief Original pixel-byte-order flag, canonical false 0 or true 1.
	// @details Header integers remain canonical LE regardless of this pixel-data
	// flag. The codec neither swaps Data bytes nor infers format compatibility.
	// @see Image.Encoding; Image.Data; DecodeImage
	BigEndian bool
	// Step is the bytes per row including explicit padding.
	// @brief Exact original unsigned row stride in bytes.
	// @details Not recomputed from Width/Encoding. Native Host checks must verify
	// row layout and Data extent without treating this field as a storage grant.
	// @see Image.Width; Image.Height; Image.Data
	Step uint32
	// Data contains the raw bounded image bytes.
	// @brief Complete original pixel/padding bytes, encoded after their u32 count.
	// @details Keep the slice stable through Encode, which copies it; DecodeImage
	// returns separate Go-owned bytes. No raw ROS object pointer is represented.
	// @see Image.Encode; DecodeImage; Image.Step
	Data []byte
}

// Encode creates a fresh canonical Image, never native ROS serialized bytes.
// @brief Encode every original Header/Image field and complete pixel byte vector.
// @details Checks UTF-8, nanoseconds and MaxCanonicalBytes while building new Go
// storage; it does not validate dimension/row/pixel-format coherence or narrow
// Image seconds. Original Host/native schema checks still apply before delivery.
// @param[in] v Complete original Image; referenced Data must stay stable until return.
// @return New complete owned bytes and nil, or nil with APIError(Invalid/TooLarge).
// No partial body is returned; allocation/runtime panics are not recovered.
// @see DecodeImage; Image; Header; MaxCanonicalBytes
func (v Image) Encode() ([]byte, error) {
	w := &writer{}
	v.Header.write(w)
	w.u32(v.Height)
	w.u32(v.Width)
	w.text(v.Encoding)
	if v.BigEndian {
		w.u8(1)
	} else {
		w.u8(0)
	}
	w.u32(v.Step)
	w.blob(v.Data)
	return w.finish()
}

// DecodeImage validates complete canonical structure and owns the returned data.
// @brief Decode all original Image fields, canonical Bool and exact pixel bytes.
// @details Requires complete bounded input, valid UTF-8/subseconds, Bool 0/1 and
// no trailing bytes; copies pixel data and String contents into Go-managed storage.
// Native encoding/dimensions/stride/authority checks are independent of this codec.
// @param[in] b Stable complete canonical Image body, at most MaxCanonicalBytes.
// @return Full owned Image and nil, or zero unusable Image with APIError for
// size/structure/field refusal. Runtime allocation panics propagate.
// @see Image.Encode; Image; Header; PollValue
func DecodeImage(b []byte) (Image, error) {
	r := newReader(b)
	v := Image{Header: readHeader(r), Height: r.u32(), Width: r.u32(), Encoding: r.text()}
	flag := r.u8()
	if flag > 1 {
		r.err = invalid()
	}
	v.BigEndian = flag != 0
	v.Step = r.u32()
	v.Data = append([]byte(nil), r.blob()...)
	if err := r.done(); err != nil {
		return Image{}, err
	}
	return v, nil
}

// Transform is canonical TransformStamped with finite translation/quaternion.
// There is no implicit normalization or choice of unauthorized frame pairs.
// @brief Complete original TransformStamped header, child frame and seven scalars.
// @details Local encoding validates timestamp/UTF-8/finiteness; native frame pair,
// quaternion/application constraints and operation rights remain independent.
// Direct local construction neither validates fields nor attests to a lookup.
// @see Transform.Encode; DecodeTransform; Owner.LookupTransform; Owner.BroadcastTransform
type Transform struct {
	// Header provides the parent frame and timestamp.
	// @brief Full original parent-frame Header with seconds 0..2147483647.
	// @details Transform codecs additionally require nanoseconds below one billion;
	// no current timestamp, parent frame or ROS2 sequence is synthesized.
	// @see Header; Transform.ChildFrame; Transform.Encode
	Header Header
	// ChildFrame is the exact configured child/source frame.
	// @brief Complete original child-frame UTF-8 String.
	// @details Local codecs preserve text; permitted source/target pair, native
	// grammar and actual frame ownership stay independently checked by the Host.
	// @see Transform.Header; Owner.LookupTransform; Owner.BroadcastTransform
	ChildFrame string
	// Values contains translation xyz followed by quaternion xyzw.
	// @brief Finite Float64 translation xyz in metres, then dimensionless rotation xyzw.
	// @details Preserves finite bits including negative zero; no quaternion
	// normalization, frame conversion, clamping or omitted-component default occurs.
	// @see Transform.Encode; DecodeTransform; Transform.Header
	Values [7]float64
}

// Encode creates one bounded canonical TransformStamped.
// @brief Encode every original Transform field into complete owned canonical bytes.
// @details Requires seconds at most 2147483647, nanoseconds below one billion,
// valid frame UTF-8 and all seven finite scalars within the complete byte limit.
// Native frame/quaternion/policy validation is not replaced by local encoding.
// @param[in] v Complete immutable original Header, child frame and scalar values.
// @return New owned complete bytes and nil, or nil with APIError(Invalid/TooLarge).
// Failed encoding exposes no partial body; allocation panics propagate.
// @see Transform; DecodeTransform; Owner.BroadcastTransform; MaxCanonicalBytes
func (v Transform) Encode() ([]byte, error) {
	if !validStamp(v.Header.Seconds, v.Header.Nanoseconds) {
		return nil, invalid()
	}
	w := &writer{}
	v.Header.write(w)
	w.text(v.ChildFrame)
	for _, x := range v.Values {
		w.real(x)
	}
	return w.finish()
}

// DecodeTransform consumes the entire finite canonical TransformStamped.
// @brief Decode complete bounded Header, child frame and seven finite Float64 fields.
// @details Enforces exact length/UTF-8/subseconds and the signed-compatible seconds
// range, preserves finite scalar bits and copies Strings. No input storage is retained.
// @param[in] b Stable full original canonical body, at most MaxCanonicalBytes.
// @return Complete owned Transform and nil, or zero unusable Transform with
// APIError for size/field/structure refusal. No fallback frame or default value.
// @see Transform.Encode; Transform; Owner.LookupTransform; Header
func DecodeTransform(b []byte) (Transform, error) {
	r := newReader(b)
	v := Transform{Header: readHeader(r), ChildFrame: r.text()}
	if !validStamp(v.Header.Seconds, v.Header.Nanoseconds) {
		r.err = invalid()
	}
	for i := range v.Values {
		v.Values[i] = r.real()
	}
	if err := r.done(); err != nil {
		return Transform{}, err
	}
	return v, nil
}

// ParameterKind fixes the exact canonical adapter. Raw values carry no type tag;
// decoding must use the host-selected kind, without numeric/string coercion.
// @brief Explicit builtin scalar/array parameter adapter identifier, values 1..11.
// @details Canonical parameter bodies omit this selector. Caller and Host must
// already agree on the exact original adapter; selecting a local value neither
// changes the native parameter kind nor makes a backend support that adapter.
// @see ParameterValue; ParameterValue.Encode; DecodeParameter; Owner.GetParameter
type ParameterKind uint8

const (
	// ParameterBool is one canonical Bool.
	// @brief Adapter 1: exactly one canonical byte 0/1 from ParameterValue.Bool.
	// @details Local codec performs no integer coercion; native scalar rights
	// and the selected alias/kind remain independently checked by the Host.
	// @see ParameterValue.Bool; DecodeBool; DecodeParameter
	ParameterBool ParameterKind = iota + 1
	// ParameterInt32 is a signed four-byte ROS1 scalar.
	// @brief Adapter 2: exact signed i32 two's-complement LE from ParameterValue.Int32.
	// @details Retains the full signed range without Float64 conversion; local
	// encoding alone proves neither ROS1 support nor a native parameter grant.
	// @see ParameterValue.Int32; ParameterInt32Array; DecodeParameter
	ParameterInt32
	// ParameterInt64 is a signed eight-byte ROS2 scalar.
	// @brief Adapter 3: exact signed i64 two's-complement LE from ParameterValue.Int64.
	// @details Preserves full signed precision and generation-independent value
	// bits without coercing a ROS1 scalar or choosing a different native kind.
	// @see ParameterValue.Int64; ParameterInt64Array; DecodeParameter
	ParameterInt64
	// ParameterFloat64 is a finite eight-byte IEEE754 scalar.
	// @brief Adapter 4: finite Float64 LE from ParameterValue.Float64.
	// @details Preserves negative zero and rejects NaN/infinities; no clamping,
	// integer conversion, unit normalization or new native kind is inferred.
	// @see ParameterValue.Float64; ParameterFloat64Array; DecodeParameter
	ParameterFloat64
	// ParameterString is a canonical UTF-8 scalar String.
	// @brief Adapter 5: u32 byte length plus complete UTF-8 ParameterValue.Text.
	// @details Scalar local encoding preserves NUL/BOM; independently configured
	// native field policy can be stricter. It never falls back to a String array.
	// @see ParameterValue.Text; ParameterStringArray; DecodeParameter
	ParameterString
	// ParameterBoolArray is count+canonical Bool values.
	// @brief Adapter 6: u32 count plus exactly one canonical 0/1 byte per element.
	// @details Bounded by MaxParameterElements and the full canonical byte limit;
	// native scalar/array admission is independent and no byte-array coercion occurs.
	// @see ParameterValue.Bools; ParameterByteArray; DecodeParameter
	ParameterBoolArray
	// ParameterInt32Array is count+signed ROS1 i32 values.
	// @brief Adapter 7: u32 count plus exact signed i32 LE elements in order.
	// @details Keeps full signed values without Float64/i64 promotion; actual
	// ROS1 kind, element bounds and byte quota remain native Host checks.
	// @see ParameterValue.Int32s; ParameterInt32; MaxParameterElements
	ParameterInt32Array
	// ParameterInt64Array is count+signed ROS2 i64 values.
	// @brief Adapter 8: u32 count plus exact signed i64 LE elements in order.
	// @details Preserves full precision, applies local count/byte bounds and
	// performs no fallback to i32, Float64 or another backend adapter.
	// @see ParameterValue.Int64s; ParameterInt64; MaxCanonicalBytes
	ParameterInt64Array
	// ParameterFloat64Array is count+finite Float64 values.
	// @brief Adapter 9: u32 count plus finite Float64 LE elements in original order.
	// @details Every element must be finite; negative zero is retained. Local
	// count/byte checks supply no native parameter mutation/observation authority.
	// @see ParameterValue.Float64s; ParameterFloat64; DecodeParameter
	ParameterFloat64Array
	// ParameterStringArray is count+UTF-8 NUL-free Strings.
	// @brief Adapter 10: u32 count plus individually length-prefixed UTF-8 Strings.
	// @details Each element rejects embedded NUL, unlike ordinary message String
	// and the scalar local codec; count and complete canonical byte limits both apply.
	// @see ParameterValue.Strings; ParameterString; DecodeParameter
	ParameterStringArray
	// ParameterByteArray is count+unsigned ROS2 bytes.
	// @brief Adapter 11: u32 count followed by exact original unsigned byte elements.
	// @details Full 0..255 byte values are retained without Bool coercion; native
	// ROS2 kind and scalar/array rights stay separately checked by the Host.
	// @see ParameterValue.Bytes; ParameterBoolArray; DecodeParameter
	ParameterByteArray
)

// ParameterValue stores the member selected by Kind. Other members are ignored;
// they never infer another adapter. Host scalar/array grants remain independent.
// @brief Explicit original builtin parameter union represented by a selected Go field.
// @details Encode uses only Kind's member and writes no wire type tag. Public
// construction is local data; caller-supplied kind must match the Host-selected
// adapter. Slice inputs stay caller-owned through encoding; decoders copy values.
// @see ParameterKind; ParameterValue.Encode; DecodeParameter; Owner.SetParameter
type ParameterValue struct {
	// Kind selects exactly one field and its explicit configured adapter.
	// @brief Required original adapter selector, 1..11; zero is invalid.
	// @details Nonselected members are ignored, and their values cannot infer,
	// promote or change this selection or the independently granted native type.
	// @see ParameterKind; ParameterValue.Encode; DecodeParameter
	Kind ParameterKind
	// Bool is used only for ParameterBool.
	// @brief Original application Bool encoded as exactly byte 0 or 1.
	// @details Ignored for every other Kind; false is valid data, not Host refusal.
	// @see ParameterBool; ParameterValue.Kind; DecodeBool
	Bool bool
	// Int32 is used only for the ROS1 ParameterInt32 adapter.
	// @brief Full signed i32 original scalar with exact two's-complement wire bits.
	// @details No Float64 conversion or promotion to Int64; other Kinds ignore it.
	// @see ParameterInt32; ParameterValue.Int32s; ParameterValue.Kind
	Int32 int32
	// Int64 is used only for the ROS2 ParameterInt64 adapter, with exact precision.
	// @brief Full signed i64 original scalar without floating-point loss.
	// @details All signed extremes are represented directly; the native grant can
	// impose tighter bounds and other Kinds do not inspect this member.
	// @see ParameterInt64; ParameterValue.Int64s; ParameterValue.Kind
	Int64 int64
	// Float64 must be finite and is used only for ParameterFloat64.
	// @brief Original finite Float64 scalar with negative-zero bits preserved.
	// @details NaN/infinities are refused only when selected; other Kinds ignore it.
	// @see ParameterFloat64; ParameterValue.Float64s; ParameterValue.Kind
	Float64 float64
	// Text holds scalar UTF-8 ParameterString.
	// @brief Complete original scalar UTF-8 String, including any local NUL/BOM bytes.
	// @details Validated only for ParameterString. Native text policy may be
	// stricter; no String-array NUL rule is silently applied to this local scalar.
	// @see ParameterString; ParameterValue.Strings; ParameterValue.Kind
	Text string
	// Bools holds ParameterBoolArray.
	// @brief Original Bool elements in order, bounded by count and complete bytes.
	// @details Retain the input slice unchanged through Encode; successful decode
	// owns separate Go storage. Ignored unless Kind is ParameterBoolArray.
	// @see ParameterBoolArray; ParameterValue.Bytes; MaxParameterElements
	Bools []bool
	// Int32s holds ROS1 ParameterInt32Array.
	// @brief Exact original signed i32 elements without promotion or reordering.
	// @details Retain stable input through Encode; decoded storage is independent.
	// Native numeric/element bounds can be lower than the local count/byte limits.
	// @see ParameterInt32Array; ParameterValue.Int32; ParameterValue.Kind
	Int32s []int32
	// Int64s holds ROS2 ParameterInt64Array without Float64 conversion.
	// @brief Exact original signed i64 elements, including full-range extremes.
	// @details Stable caller input is copied by Encode; DecodeParameter owns its
	// output. Ignored unless Kind selects ParameterInt64Array.
	// @see ParameterInt64Array; ParameterValue.Int64; MaxCanonicalBytes
	Int64s []int64
	// Float64s holds finite ParameterFloat64Array.
	// @brief Original finite Float64 elements with exact finite bits and negative zero.
	// @details Each selected element is validated; arrays are not clamped, converted
	// to integers or normalized. Keep input stable through Encode.
	// @see ParameterFloat64Array; ParameterValue.Float64; ParameterValue.Kind
	Float64s []float64
	// Strings holds NUL-free UTF-8 ParameterStringArray.
	// @brief Complete original ordered text elements, each strict UTF-8 and without NUL.
	// @details Encode copies contents after individual byte prefixes and enforces
	// aggregate count/byte bounds. Do not mutate the input slice during encoding.
	// @see ParameterStringArray; ParameterValue.Text; MaxParameterElements
	Strings []string
	// Bytes holds unsigned ParameterByteArray, distinct from Bools.
	// @brief Full original 0..255 byte elements after a canonical u32 count.
	// @details Keep caller storage stable through Encode; successful decode copies
	// it. This selection neither validates bytes as Bool nor grants native ROS2 access.
	// @see ParameterByteArray; ParameterValue.Bools; ParameterValue.Kind
	Bytes []byte
}

func arrayCount(w *writer, n uint64) {
	if n > uint64(MaxParameterElements) {
		w.err = Error{Code: TooLarge}
		return
	}
	w.u32(uint32(n))
}

// Encode produces a fresh canonical selected value with count prefixes for
// arrays. Numeric bounds and explicit native element/byte limits remain host-side.
// @brief Encode exactly Kind's original scalar/array member without a wire kind tag.
// @details Rejects invalid Kind, nonfinite reals, malformed UTF-8, NUL in String
// arrays, excessive array counts or complete bytes. Full signed integer bits and
// finite negative zero are retained; nonselected members are ignored. Native
// kind/numeric/resource policy is independent of these local shape checks.
// @param[in] v Original selected parameter value; referenced slices remain stable until return.
// @return New owned complete bytes and nil, or nil with APIError(Invalid/TooLarge).
// No partial/default payload is exposed; allocation/runtime panics propagate.
// @see ParameterValue; ParameterKind; DecodeParameter; MaxParameterElements
func (v ParameterValue) Encode() ([]byte, error) {
	w := &writer{}
	switch v.Kind {
	case ParameterBool:
		if v.Bool {
			w.u8(1)
		} else {
			w.u8(0)
		}
	case ParameterInt32:
		w.u32(uint32(v.Int32))
	case ParameterInt64:
		w.u64(uint64(v.Int64))
	case ParameterFloat64:
		w.real(v.Float64)
	case ParameterString:
		w.text(v.Text)
	case ParameterBoolArray:
		arrayCount(w, uint64(len(v.Bools)))
		for _, x := range v.Bools {
			if x {
				w.u8(1)
			} else {
				w.u8(0)
			}
		}
	case ParameterInt32Array:
		arrayCount(w, uint64(len(v.Int32s)))
		for _, x := range v.Int32s {
			w.u32(uint32(x))
		}
	case ParameterInt64Array:
		arrayCount(w, uint64(len(v.Int64s)))
		for _, x := range v.Int64s {
			w.u64(uint64(x))
		}
	case ParameterFloat64Array:
		arrayCount(w, uint64(len(v.Float64s)))
		for _, x := range v.Float64s {
			w.real(x)
		}
	case ParameterStringArray:
		arrayCount(w, uint64(len(v.Strings)))
		for _, x := range v.Strings {
			if strings.ContainsRune(x, 0) {
				w.err = invalid()
				break
			}
			w.text(x)
		}
	case ParameterByteArray:
		arrayCount(w, uint64(len(v.Bytes)))
		w.add(v.Bytes)
	default:
		w.err = invalid()
	}
	return w.finish()
}

// DecodeParameter consumes a whole payload using its explicit adapter kind.
// Refusal returns a zero result and does not replace any application variable.
// @brief Decode one complete original scalar/array body using its trusted external kind.
// @details Enforces exact length, local count/byte limits, canonical Bool/UTF-8,
// finite reals and String-array NUL rules. Copies array/text storage; unselected
// members remain zero. It does not infer a type tag or coerce another adapter.
// @param[in] kind Exact original Host-selected ParameterKind, values 1..11.
// @param[in] b Stable entire canonical body without a kind tag or trailing bytes.
// @return Complete owned ParameterValue and nil, or zero unusable value with
// APIError(Invalid/TooLarge). Decoded values alone prove no Host observation or grant.
// Allocation panics remain outside the checked error channel.
// @see ParameterValue.Encode; ParameterKind; Owner.GetParameter; MaxCanonicalBytes
func DecodeParameter(kind ParameterKind, b []byte) (ParameterValue, error) {
	r := newReader(b)
	v := ParameterValue{Kind: kind}
	switch kind {
	case ParameterBool:
		x := r.u8()
		if x > 1 {
			r.err = invalid()
		}
		v.Bool = x != 0
	case ParameterInt32:
		v.Int32 = int32(r.u32())
	case ParameterInt64:
		v.Int64 = int64(r.u64())
	case ParameterFloat64:
		v.Float64 = r.real()
	case ParameterString:
		v.Text = r.text()
	case ParameterBoolArray:
		n := r.count(1)
		v.Bools = make([]bool, n)
		for i := range v.Bools {
			x := r.u8()
			if x > 1 {
				r.err = invalid()
			}
			v.Bools[i] = x != 0
		}
	case ParameterInt32Array:
		n := r.count(4)
		v.Int32s = make([]int32, n)
		for i := range v.Int32s {
			v.Int32s[i] = int32(r.u32())
		}
	case ParameterInt64Array:
		n := r.count(8)
		v.Int64s = make([]int64, n)
		for i := range v.Int64s {
			v.Int64s[i] = int64(r.u64())
		}
	case ParameterFloat64Array:
		n := r.count(8)
		v.Float64s = make([]float64, n)
		for i := range v.Float64s {
			v.Float64s[i] = r.real()
		}
	case ParameterStringArray:
		n := r.count(4)
		v.Strings = make([]string, n)
		for i := range v.Strings {
			x := r.text()
			if strings.ContainsRune(x, 0) {
				r.err = invalid()
			}
			v.Strings[i] = x
		}
	case ParameterByteArray:
		n := r.count(1)
		v.Bytes = append([]byte(nil), r.bytes(uint64(n))...)
	default:
		r.err = invalid()
	}
	if err := r.done(); err != nil {
		return ParameterValue{}, err
	}
	return v, nil
}

// EventTag is the exact typed ROS2 parameter-event projection0..9. The tag does
// not authorize a subscription; each projection needs its own host grant.
// @brief Explicit version-2 parameter-event projection selector, values 0..9.
// @details Tag 0 describes deletion without a prior kind/value claim; tags 1..9
// map exactly to configured scalar/array projections. Only local envelope shape
// is checked by codecs; the Host independently authenticates source and grants.
// @see TypedParameterEvent; EventDeletion; DecodeTypedParameterEvent; ParameterKind
type EventTag uint8

const (
	// EventDeletion is a separate NOT_SET deletion notification with no prior type/value attestation.
	// @brief Projection 0: deletion notification without a previous value or kind.
	// @details Admitted only with event kind 3 and no payload; it never attests to
	// the deleted parameter's old type, contents or mutation authority.
	// @see TypedParameterEvent.Tag; TypedParameterEvent.Value; EventBool
	EventDeletion EventTag = iota
	// EventBool selects canonical Bool payloads.
	// @brief Projection 1 maps new/changed payloads to ParameterBool.
	// @details A separately granted exact projection is required; deletion has no
	// Value even if this tag is retained. Local tag selection adds no subscription.
	// @see ParameterBool; TypedParameterEvent; DecodeTypedParameterEvent
	EventBool
	// EventInt64 selects exact signed i64 payloads.
	// @brief Projection 2 maps new/changed payloads to exact ParameterInt64.
	// @details Full signed precision is retained without Float64 conversion; no
	// prior i64 value is inferred when a kind-3 deletion has empty payload.
	// @see ParameterInt64; TypedParameterEvent.Value; EventInt64Array
	EventInt64
	// EventFloat64 selects finite Float64 payloads.
	// @brief Projection 3 maps new/changed payloads to ParameterFloat64.
	// @details Local decoding rejects nonfinite elements and preserves negative
	// zero; native numeric limits and source authentication remain separate.
	// @see ParameterFloat64; TypedParameterEvent.Value; EventFloat64Array
	EventFloat64
	// EventString selects scalar UTF-8 String payloads.
	// @brief Projection 4 maps new/changed payloads to complete ParameterString.
	// @details Scalar local text preserves NUL/BOM; native policy can be stricter.
	// Deletion carries no previous String even if this tag is retained.
	// @see ParameterString; TypedParameterEvent.Value; EventStringArray
	EventString
	// EventByteArray selects unsigned byte-array payloads.
	// @brief Projection 5 maps new/changed payloads to ParameterByteArray.
	// @details Original unsigned bytes, count and complete byte bounds are retained;
	// no Bool coercion or extra native array authority follows from decoding.
	// @see ParameterByteArray; EventBoolArray; TypedParameterEvent
	EventByteArray
	// EventBoolArray selects canonical Bool-array payloads.
	// @brief Projection 6 maps new/changed payloads to ParameterBoolArray.
	// @details Each byte must be canonical 0/1 and all count/byte bounds apply;
	// the selected event projection still needs its independent exact Host grant.
	// @see ParameterBoolArray; EventBool; TypedParameterEvent
	EventBoolArray
	// EventInt64Array selects signed i64-array payloads.
	// @brief Projection 7 maps new/changed payloads to ParameterInt64Array.
	// @details Original signed values/order/precision are retained within local
	// limits; a decoded array attests to no native ownership or mutation permission.
	// @see ParameterInt64Array; EventInt64; TypedParameterEvent
	EventInt64Array
	// EventFloat64Array selects finite Float64-array payloads.
	// @brief Projection 8 maps new/changed payloads to ParameterFloat64Array.
	// @details Every selected value must be finite; local checks do not replace
	// tighter native numeric/count limits or independently granted event delivery.
	// @see ParameterFloat64Array; EventFloat64; TypedParameterEvent
	EventFloat64Array
	// EventStringArray selects UTF-8 NUL-free String-array payloads.
	// @brief Projection 9 maps new/changed payloads to ParameterStringArray.
	// @details Each element is independently byte-prefixed, strict UTF-8 and NUL-free;
	// array count and full canonical byte bounds apply without native type inference.
	// @see ParameterStringArray; EventString; TypedParameterEvent
	EventStringArray
)

func eventParameter(tag EventTag) (ParameterKind, error) {
	switch tag {
	case EventBool:
		return ParameterBool, nil
	case EventInt64:
		return ParameterInt64, nil
	case EventFloat64:
		return ParameterFloat64, nil
	case EventString:
		return ParameterString, nil
	case EventByteArray:
		return ParameterByteArray, nil
	case EventBoolArray:
		return ParameterBoolArray, nil
	case EventInt64Array:
		return ParameterInt64Array, nil
	case EventFloat64Array:
		return ParameterFloat64Array, nil
	case EventStringArray:
		return ParameterStringArray, nil
	default:
		return 0, invalid()
	}
}

// TypedParameterEvent is a checked version2 envelope over ABI v1 imports.
// Deleted events have no Value; wire bytes cannot prove the native prior value.
// @brief Complete original typed projection envelope with exact timestamp/name/body.
// @details Version 2 is this canonical event layout, not a new base import ABI.
// New/changed events require a matching tag/value kind; deletion has no payload
// for any admitted tag. Public construction and codec validation attest to no
// native source, observer association, previous value or Host permission.
// @see TypedParameterEvent.Encode; DecodeTypedParameterEvent; EventTag; LegacyParameterEvent
type TypedParameterEvent struct {
	// Seconds is a nonnegative timestamp component.
	// @brief Original seconds in the inclusive signed-compatible range 0..2147483647.
	// @details Encoded as u32 LE without clock conversion or current-time synthesis.
	// @see TypedParameterEvent.Nanoseconds; TypedParameterEvent.Encode
	Seconds uint32
	// Nanoseconds is below one billion.
	// @brief Original subsecond component 0..999999999 without normalization.
	// @details Out-of-range construction is rejected by both complete event codecs.
	// @see TypedParameterEvent.Seconds; DecodeTypedParameterEvent
	Nanoseconds uint32
	// Kind is new1, changed2 or deleted3.
	// @brief Exact original event kind: new 1, changed 2 or deletion 3.
	// @details Kind 3 requires nil Value/empty wire payload and cannot attest to
	// previous type/content. New/changed require the exact selected projection value.
	// @see TypedParameterEvent.Tag; TypedParameterEvent.Value; EventDeletion
	Kind uint8
	// Tag is the independently configured projection.
	// @brief Exact admitted projection 0..9 without inferred scalar/array coercion.
	// @details Tag 0 is allowed only for deletion; deletion with tags 1..9 still
	// carries no Value. The actual trusted projection/alias remains a Host check.
	// @see EventTag; TypedParameterEvent.Kind; DecodeTypedParameterEvent
	Tag EventTag
	// Node is the exact configured absolute ROS2 node.
	// @brief Original absolute node name, at most 1024 ASCII bytes in local validation.
	// @details Requires leading slash and nonempty slash-separated segments beginning
	// with a letter/underscore, followed by letters/digits/underscores; no trailing slash.
	// Native exact-name and source policy are independently checked.
	// @see TypedParameterEvent.Name; TypedParameterEvent.Encode; LegacyParameterEvent.Node
	Node string
	// Name is the exact configured dotted parameter name.
	// @brief Original parameter name, at most 255 ASCII bytes in local validation.
	// @details Nonempty dot-separated segments start with letter/underscore and
	// continue with letters/digits/underscores; empty/trailing segments are refused.
	// The name itself grants no read/write/parent-namespace authority.
	// @see TypedParameterEvent.Node; TypedParameterEvent.Encode; ParameterValue
	Name string
	// Value is present only for new/changed events, with the selected kind.
	// @brief Full original matching selected parameter, or nil for deletion.
	// @details New/changed require a nonnil value whose Kind exactly matches Tag.
	// Decoders own copied value storage; Encode borrows the pointer/slices unchanged
	// until return. No previous deleted value is synthesized.
	// @see TypedParameterEvent.Kind; TypedParameterEvent.Tag; ParameterValue
	Value *ParameterValue
}

// Encode creates a bounded typed envelope with outer node/name/payload lengths.
// Tag0 is admitted only for kind3 and deletion payloads must be empty.
// @brief Encode the complete original version-2 timestamp/kind/tag/names/value event.
// @details Validates timestamp, kind/tag, ASCII name grammar and matching payload;
// writes fixed version byte 2 and exact complete byte prefixes. Deleted Value
// must be nil, with an empty body; local shape never authenticates native delivery.
// @param[in] v Original event; referenced Value/slices must stay stable through encoding.
// @return New owned full bytes and nil, or nil with APIError(Invalid/TooLarge).
// No partial/default event is exposed; allocation/runtime panics propagate.
// @see TypedParameterEvent; DecodeTypedParameterEvent; EventTag; ParameterValue.Encode
func (v TypedParameterEvent) Encode() ([]byte, error) {
	if !validStamp(v.Seconds, v.Nanoseconds) || v.Kind < 1 || v.Kind > 3 || v.Tag > 9 || !eventName(v.Node, true) || !eventName(v.Name, false) {
		return nil, invalid()
	}
	var payload []byte
	if v.Kind == 3 {
		if v.Value != nil {
			return nil, invalid()
		}
	} else {
		kind, err := eventParameter(v.Tag)
		if err != nil || v.Value == nil || v.Value.Kind != kind {
			return nil, invalid()
		}
		payload, err = v.Value.Encode()
		if err != nil {
			return nil, err
		}
	}
	w := &writer{}
	w.u32(v.Seconds)
	w.u32(v.Nanoseconds)
	w.u8(v.Kind)
	w.u8(2)
	w.u8(uint8(v.Tag))
	w.text(v.Node)
	w.text(v.Name)
	w.blob(payload)
	return w.finish()
}

// DecodeTypedParameterEvent validates complete version/kind/tag/name/timestamp,
// selected scalar/array payloads and trailing bytes. Deleted prior contents remain unknown.
// @brief Decode every original version-2 field and its exact selected complete payload.
// @details Rejects wrong version, malformed names/stamp/kind/tag, extra outer or
// inner bytes and mismatched payload shape. Copies names/value/array storage;
// deletions require empty payload and return nil Value without an old-value claim.
// @param[in] b Stable whole typed-event body, at most MaxCanonicalBytes.
// @return Complete owned event and nil, or zero unusable event with APIError for
// size/structure/field refusal. This validates no versioned observer/source envelope.
// Allocation panics remain outside the checked error channel.
// @see TypedParameterEvent.Encode; TypedParameterEvent; DecodeParameter; Owner.PollEvent
func DecodeTypedParameterEvent(b []byte) (TypedParameterEvent, error) {
	r := newReader(b)
	v := TypedParameterEvent{Seconds: r.u32(), Nanoseconds: r.u32(), Kind: r.u8()}
	version := r.u8()
	v.Tag = EventTag(r.u8())
	v.Node = r.text()
	v.Name = r.text()
	payload := r.blob()
	if err := r.done(); err != nil {
		return TypedParameterEvent{}, err
	}
	if !validStamp(v.Seconds, v.Nanoseconds) ||
		v.Kind < 1 ||
		v.Kind > 3 ||
		version != 2 ||
		v.Tag > 9 ||
		!eventName(v.Node, true) ||
		!eventName(v.Name, false) {
		return TypedParameterEvent{}, invalid()
	}
	if v.Kind == 3 {
		if len(payload) != 0 {
			return TypedParameterEvent{}, invalid()
		}
	} else {
		kind, err := eventParameter(v.Tag)
		if err != nil {
			return TypedParameterEvent{}, err
		}
		value, err := DecodeParameter(kind, payload)
		if err != nil {
			return TypedParameterEvent{}, err
		}
		v.Value = &value
	}
	return v, nil
}

// LegacyParameterEvent is the independently granted legacy String projection.
// @brief Complete original legacy timestamp/kind/node/name/String event body.
// @details This has no version/tag byte and does not coerce the typed projection.
// Local codecs validate UTF-8/stamp/kind/deletion shape; exact node/name/source
// and native projection policy remain Host checks. No prior deletion value is known.
// @see LegacyParameterEvent.Encode; DecodeLegacyParameterEvent; TypedParameterEvent
type LegacyParameterEvent struct {
	// Seconds is the nonnegative native event timestamp.
	// @brief Exact original u32 seconds constrained locally to 0..2147483647.
	// @details No current-time reading or cross-domain timestamp conversion occurs.
	// @see LegacyParameterEvent.Nanoseconds; LegacyParameterEvent.Encode
	Seconds uint32
	// Nanoseconds is below one billion.
	// @brief Original subsecond value 0..999999999 without implicit normalization.
	// @details Encode/decode refuse an out-of-range component rather than rolling it over.
	// @see LegacyParameterEvent.Seconds; DecodeLegacyParameterEvent
	Nanoseconds uint32
	// Kind is new1, changed2 or deleted3.
	// @brief Exact original new/changed/deleted kind, values 1/2/3.
	// @details Deletion requires empty Value; an empty new/changed String remains
	// valid content and must not be inferred to mean deletion.
	// @see LegacyParameterEvent.Value; LegacyParameterEvent.Encode
	Kind uint8
	// Node is the selected absolute node.
	// @brief Complete original UTF-8 node text, checked against exact native policy separately.
	// @details This legacy codec applies no typed-event ASCII segment grammar;
	// encoding a String alone cannot prove an absolute name or authorized source.
	// @see LegacyParameterEvent.Name; TypedParameterEvent.Node; DecodeLegacyParameterEvent
	Node string
	// Name is the selected parameter name.
	// @brief Complete original UTF-8 parameter-name text without local namespace inference.
	// @details No typed-event dotted-name grammar or parent permission is added by
	// this legacy codec; trusted exact name/prefix/source policy remains independent.
	// @see LegacyParameterEvent.Node; TypedParameterEvent.Name; LegacyParameterEvent.Encode
	Name string
	// Value is the selected String, empty on deletion.
	// @brief Complete original UTF-8 String projection, preserving local NUL/BOM bytes.
	// @details Must be empty for kind 3; deletion exposes neither the old native
	// kind nor previous contents. New/changed empty text is valid distinct data.
	// @see LegacyParameterEvent.Kind; DecodeLegacyParameterEvent; ParameterString
	Value string
}

// Encode creates a bounded canonical legacy event without inventing a typed tag.
// @brief Encode all original legacy stamp/kind/name/String fields without a version tag.
// @details Enforces valid nonnegative stamp, kind 1..3, empty deleted value,
// UTF-8 and aggregate bytes. Native name grammar/source association remains separate.
// @param[in] v Complete immutable original legacy event value.
// @return New owned entire bytes and nil, or nil with APIError(Invalid/TooLarge).
// No partial event is returned; allocation/runtime panics propagate.
// @see LegacyParameterEvent; DecodeLegacyParameterEvent; TypedParameterEvent.Encode
func (v LegacyParameterEvent) Encode() ([]byte, error) {
	if !validStamp(v.Seconds, v.Nanoseconds) || v.Kind < 1 || v.Kind > 3 || v.Kind == 3 && v.Value != "" {
		return nil, invalid()
	}
	w := &writer{}
	w.u32(v.Seconds)
	w.u32(v.Nanoseconds)
	w.u8(v.Kind)
	w.text(v.Node)
	w.text(v.Name)
	w.text(v.Value)
	return w.finish()
}

// DecodeLegacyParameterEvent consumes a complete independently granted String event.
// @brief Decode every original legacy timestamp/kind/name/value field and reject trailing data.
// @details Validates complete byte bounds, UTF-8, stamp/kind and empty deletion
// contents; copies Strings into Go storage. It checks neither typed name grammar
// nor a versioned observer/source envelope or prior deleted value.
// @param[in] b Stable full canonical legacy body, at most MaxCanonicalBytes.
// @return Complete owned event and nil, or zero unusable event with APIError for
// size/structure/field refusal. Allocation panics are not recovered.
// @see LegacyParameterEvent.Encode; LegacyParameterEvent; DecodeTypedParameterEvent
func DecodeLegacyParameterEvent(b []byte) (LegacyParameterEvent, error) {
	r := newReader(b)
	v := LegacyParameterEvent{Seconds: r.u32(), Nanoseconds: r.u32(), Kind: r.u8(), Node: r.text(), Name: r.text(), Value: r.text()}
	if err := r.done(); err != nil {
		return LegacyParameterEvent{}, err
	}
	if !validStamp(v.Seconds, v.Nanoseconds) || v.Kind < 1 || v.Kind > 3 || v.Kind == 3 && v.Value != "" {
		return LegacyParameterEvent{}, invalid()
	}
	return v, nil
}

// LifecycleState carries one native state ID and a canonical UTF-8 label.
// @brief Original complete ROS2 Lifecycle state ID and label value.
// @details Local codecs preserve all u8 IDs and validate the complete String,
// without inventing enum meaning, native state observation or transition rights.
// @see LifecycleState.Encode; DecodeLifecycleState; Owner.GetLifecycleState
type LifecycleState struct {
	// ID is the native lifecycle state identifier.
	// @brief Exact original one-byte unsigned state identifier, including zero.
	// @details The local codec checks no native enumeration/transition graph;
	// direct construction proves neither current state nor successful transition.
	// @see LifecycleState.Label; DecodeLifecycleState; Owner.ChangeLifecycleState
	ID uint8
	// Label is the native lifecycle state label.
	// @brief Complete original UTF-8 state label with its canonical u32 byte prefix.
	// @details Local encoding preserves NUL/BOM; native label/ID agreement and state
	// authenticity remain independent of this complete byte-shape codec.
	// @see LifecycleState.ID; LifecycleState.Encode; DecodeString
	Label string
}

// Encode creates the one-byte ID plus canonical String lifecycle response.
// @brief Encode the complete original u8 state ID and full UTF-8 label.
// @details Copies all fields into Go-owned storage and checks UTF-8/aggregate
// size. It does not validate a native ID enumeration or issue a state transition.
// @param[in] v Original immutable state ID and label value.
// @return New entire initialized bytes and nil, or nil with APIError(Invalid/TooLarge).
// Runtime allocation failure can panic rather than return an APIError.
// @see LifecycleState; DecodeLifecycleState; Owner.GetLifecycleState
func (v LifecycleState) Encode() ([]byte, error) {
	w := &writer{}
	w.u8(v.ID)
	w.text(v.Label)
	return w.finish()
}

// DecodeLifecycleState consumes a complete lifecycle response.
// @brief Decode one original u8 state ID plus complete bounded UTF-8 label.
// @details Rejects truncation/trailing bytes and malformed text, retains every
// u8 ID and copies its String. Bytes alone prove no native state/transition result.
// @param[in] b Stable entire original canonical state body, at most MaxCanonicalBytes.
// @return Complete owned LifecycleState and nil, or zero unusable state with
// APIError for size/structure/UTF-8 refusal. Allocation panics propagate.
// @see LifecycleState.Encode; LifecycleState; Owner.GetLifecycleState
func DecodeLifecycleState(b []byte) (LifecycleState, error) {
	r := newReader(b)
	v := LifecycleState{ID: r.u8(), Label: r.text()}
	if err := r.done(); err != nil {
		return LifecycleState{}, err
	}
	return v, nil
}
