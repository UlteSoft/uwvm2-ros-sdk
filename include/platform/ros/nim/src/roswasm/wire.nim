## Complete bounded canonical scalar/string/container building blocks.
## Generated records call these in declaration order; no native struct casting.
import ../roswasm
import std/[unicode, math]

type
  Writer* = object
    ## ``@brief Bounded canonical byte writer with managed output storage.``
    ## ``@details Scalars append in little-endian order. Nested writers may be``
    ## ``partially advanced on failure; discard a failed writer before reuse.``
    ## ``@thread Keep mutable writer state on one caller thread during each operation.``
    ## ``@see initWriter; put; finish``
    ## @brief Initialized canonical output prefix owned by this writer. @details No capacity padding is serialized. Keep the sequence unchanged
    ## while a write operation borrows the writer. @see put; initWriter
    bytes*: seq[byte]
    ## @brief Inclusive output extent limit, in bytes. @details The supported range is 0..MaximumRequest. Public mutation must preserve that range
    ## and the existing bytes.len <= limit invariant. @see MaximumRequest; initWriter; put
    limit*: int
  Reader* = object
    ## ``@brief Cursor over managed canonical input bytes.``
    ## ``@details Nested decoders advance position without consuming unrelated``
    ## ``enclosing fields. Call finish only after the complete outer value.``
    ## ``@lifetime The sequence reference retains its backing storage; do not mutate``
    ## ``the bytes or cursor concurrently with a read.``
    ## ``@see initReader; take; finish``
    ## @brief Canonical input bytes retained by this reader. @details The input is borrowed as immutable content by each read; assigning another
    ## sequence while decoding invalidates the cursor contract. @see initReader; take
    bytes*: seq[byte]
    ## @brief Next unread byte offset, initially zero. @details Maintain the inclusive range 0..bytes.len. Failed nested reads may have consumed an
    ## earlier prefix; discard the failed reader. @see take; finish
    position*: int

proc initWriter*(limit: int): Writer =
  ## ``@brief Create an empty canonical writer with a finite extent limit.``
  ## ``@details Allocates output on demand and grants no transport authority.``
  ## ``@param[in] limit Inclusive byte ceiling, 0..MaximumRequest.``
  ## ``@return Fresh Writer with empty owned bytes and the requested limit.``
  ## ``@raises RosError Code 90 for an invalid limit; allocation failure follows Nim semantics.``
  ## ``@see Writer; put; initReader``
  if limit < 0 or limit > MaximumRequest: fail(90)
  Writer(limit: limit)
proc initReader*(bytes: seq[byte]; limit: int): Reader =
  ## ``@brief Create a canonical input cursor without decoding a value.``
  ## ``@details Enforce the selected finite input ceiling before nested reads.``
  ## ``Complete-message validation additionally requires finish after decoding.``
  ## ``@param[in] bytes Canonical input sequence; immutable for the reader's use.``
  ## ``@param[in] limit Inclusive input ceiling, 0..MaximumOutput bytes.``
  ## ``@return Fresh Reader at position zero, retaining the input sequence reference.``
  ## ``@raises RosError Code 90 for an invalid limit or input exceeding it.``
  ## ``@see Reader; take; finish``
  if limit < 0 or limit > MaximumOutput or bytes.len > limit: fail(90)
  Reader(bytes: bytes)
proc put*(w: var Writer; b: openArray[byte]) =
  ## ``@brief Append an exact byte span without adding framing.``
  ## ``@details Check remaining capacity before modifying bytes. This primitive``
  ## ``does not validate a selected ROS type or create a native serialized object.``
  ## ``@param[in,out] w Live writer with a valid finite limit; exclusive mutable borrow.``
  ## ``@param[in] b Bytes copied into w; keep them stable until synchronous return.``
  ## ``@raises RosError Code 90 for an invalid writer extent or insufficient capacity.``
  ## ``@see Writer; putInteger; putString``
  if w.limit < 0 or w.limit > MaximumRequest or w.bytes.len > w.limit or b.len > w.limit -
      w.bytes.len: fail(90)
  w.bytes.add(b)
proc take*(r: var Reader; n: int): seq[byte] =
  ## ``@brief Read exactly n bytes and advance the cursor by n.``
  ## ``@details Validate the complete span before slicing; insufficient input``
  ## ``raises instead of returning a shortened prefix. This does not check trailing bytes.``
  ## ``@param[in,out] r Exclusive mutable reader with an unchanged input sequence.``
  ## ``@param[in] n Nonnegative byte count within the remaining input extent.``
  ## ``@return Managed sequence containing the requested bytes.``
  ## ``@raises RosError Code 22 for a negative extent, invalid cursor or truncation.``
  ## ``@see Reader; getInteger; finish``
  if n < 0 or r.position < 0 or r.position > r.bytes.len or n > r.bytes.len - r.position: fail(22)
  result = r.bytes[r.position ..< r.position+n]
  r.position += n
proc putInteger*[T: SomeInteger](w: var Writer; value: T) =
  ## ``@brief Append a signed or unsigned integer in its exact little-endian width.``
  ## ``@details Preserve two's-complement signed bits, including 64-bit extrema.``
  ## ``Use the schema's explicit integer type; Nim int has the target pointer width.``
  ## ``@param[in,out] w Exclusive mutable canonical writer.``
  ## ``@param[in] value Integer of a supported 1/2/4/8-byte type T; no scaling occurs.``
  ## ``@raises RosError Code 90 if the complete scalar does not fit the writer.``
  ## ``@see put; getInteger; putFloat64``
  var b: array[sizeof(T), byte]
  var n: uint64
  when sizeof(T) == 8: n = cast[uint64](value)
  elif sizeof(T) == 4: n = uint64(cast[uint32](value))
  elif sizeof(T) == 2: n = uint64(cast[uint16](value))
  else: n = uint64(cast[uint8](value))
  for i in 0..<sizeof(T): b[i] = byte((n shr (8*i)) and 255)
  put(w, b)
proc getInteger*[T: SomeInteger](r: var Reader; t: typedesc[T]): T =
  ## ``@brief Decode one exact-width little-endian signed or unsigned integer.``
  ## ``@details Interpret original two's-complement bits without narrowing or a``
  ## ``numeric float intermediary. The caller selects the actual schema width.``
  ## ``@param[in,out] r Exclusive mutable reader; advances by sizeof(T) on success.``
  ## ``@param[in] t Explicit 1/2/4/8-byte integer type, normally uintN/intN from the schema.``
  ## ``@return Exact T value, including full-width signed/unsigned extrema.``
  ## ``@raises RosError Code 22 for truncation or an invalid reader span.``
  ## ``@see putInteger; take; finish``
  let b = take(r, sizeof(T))
  var n: uint64
  for i in 0..<sizeof(T): n = n or (uint64(b[i]) shl (8*i))
  when sizeof(T) == 8: result = cast[T](n)
  elif sizeof(T) == 4: result = cast[T](uint32(n))
  elif sizeof(T) == 2: result = cast[T](uint16(n))
  else: result = cast[T](uint8(n))
proc putBool*(w: var Writer; value: bool) =
  ## ``@brief Append one strict canonical Boolean byte.``
  ## ``@details False is 0 and true is 1; there is no native struct or text encoding.``
  ## ``@param[in,out] w Exclusive mutable writer; advances by one byte.``
  ## ``@param[in] value Boolean value to encode.``
  ## ``@raises RosError Code 90 when the byte exceeds the writer limit.``
  ## ``@see getBool; putInteger``
  putInteger(w, uint8(value))
proc getBool*(r: var Reader): bool =
  ## ``@brief Decode one strict canonical Boolean byte.``
  ## ``@details Accept only 0 and 1. Other values raise instead of coercing to true.``
  ## ``@param[in,out] r Exclusive mutable reader; one byte is consumed before validation.``
  ## ``@return False for 0 or true for 1.``
  ## ``@raises RosError Code 22 for truncation or a noncanonical byte.``
  ## ``@see putBool; take``
  let n = getInteger(r, uint8)
  if n > 1: fail(22)
  n == 1
proc putFloat32*(w: var Writer; value: float32) =
  ## ``@brief Append the exact IEEE-754 bits of one finite 32-bit float.``
  ## ``@details Reject NaN/infinities before writing; preserve negative zero and``
  ## ``finite bit patterns. Units and normalization remain the schema's concern.``
  ## ``@param[in,out] w Exclusive mutable writer; requires four remaining bytes.``
  ## ``@param[in] value Finite float32 in the original field's units.``
  ## ``@raises RosError Code 22 for nonfinite input or 90 for insufficient output.``
  ## ``@see getFloat32; putInteger``
  if classify(value) in {fcNan, fcInf, fcNegInf}: fail(22)
  putInteger(w, cast[uint32](value))
proc putFloat64*(w: var Writer; value: float64) =
  ## ``@brief Append the exact IEEE-754 bits of one finite 64-bit float.``
  ## ``@details No decimal conversion, unit scaling or quaternion normalization occurs.``
  ## ``@param[in,out] w Exclusive mutable writer; requires eight remaining bytes.``
  ## ``@param[in] value Finite float64 in the original field's units; negative zero is preserved.``
  ## ``@raises RosError Code 22 for nonfinite input or 90 for insufficient output.``
  ## ``@see getFloat64; putInteger``
  if classify(value) in {fcNan, fcInf, fcNegInf}: fail(22)
  putInteger(w, cast[uint64](value))
proc getFloat32*(r: var Reader): float32 =
  ## ``@brief Decode one finite IEEE-754 binary32 value.``
  ## ``@details Read four little-endian bytes and preserve their finite bit pattern;``
  ## ``discard the reader after a nonfinite-value refusal.``
  ## ``@param[in,out] r Exclusive mutable reader; advances by four bytes before validation.``
  ## ``@return Finite float32 in the field's original units, including negative zero.``
  ## ``@raises RosError Code 22 for truncation, NaN or infinity.``
  ## ``@see putFloat32; getInteger``
  result = cast[float32](getInteger(r, uint32))
  if classify(result) in {fcNan, fcInf, fcNegInf}: fail(22)
proc getFloat64*(r: var Reader): float64 =
  ## ``@brief Decode one finite IEEE-754 binary64 value.``
  ## ``@details Read eight little-endian bytes without a float-width conversion.``
  ## ``@param[in,out] r Exclusive mutable reader; advances before finite-value validation.``
  ## ``@return Finite float64 in the original units, preserving negative zero.``
  ## ``@raises RosError Code 22 for truncation, NaN or infinity; discard failed cursors.``
  ## ``@see putFloat64; getInteger``
  result = cast[float64](getInteger(r, uint64))
  if classify(result) in {fcNan, fcInf, fcNegInf}: fail(22)
proc putString*(w: var Writer; value: string; bound: int; rejectNul = true) =
  ## ``@brief Append a bounded UTF-8 string with a four-byte byte-count prefix.``
  ## ``@details Validate Unicode and the selected byte bound first. Writer capacity``
  ## ``may still fail after the prefix; discard a failed nested writer.``
  ## ``@param[in,out] w Exclusive mutable writer; output is canonical LE count plus UTF-8 bytes.``
  ## ``@param[in] value Valid UTF-8 string, borrowed unchanged until return.``
  ## ``@param[in] bound Inclusive UTF-8 byte bound from the selected finite schema.``
  ## ``@param[in] rejectNul Reject embedded NUL when true; generated ROS strings use true.``
  ## ``@raises RosError Code 22 for invalid text/bounds or 90 for writer capacity.``
  ## ``@see getString; put; Writer``
  if value.len > bound or validateUtf8(value) != -1 or (rejectNul and '\0' in value): fail(22)
  putInteger(w, uint32(value.len))
  for c in value: putInteger(w, uint8(c))
proc getString*(r: var Reader; bound: int; rejectNul = true): string =
  ## ``@brief Read one bounded count-prefixed UTF-8 string.``
  ## ``@details Count bytes rather than Unicode code points. Decode the complete``
  ## ``selected string without NUL stripping, truncation or native text conversion.``
  ## ``@param[in,out] r Exclusive mutable reader; partial prefixes remain consumed on refusal.``
  ## ``@param[in] bound Nonnegative inclusive UTF-8 byte limit from the schema.``
  ## ``@param[in] rejectNul Reject embedded NUL when true; generated ROS strings use true.``
  ## ``@return Fresh managed string containing the exact valid UTF-8 text.``
  ## ``@raises RosError Code 22 for count/bounds, truncation, malformed UTF-8 or disallowed NUL.``
  ## ``@see putString; take; finish``
  let n = getInteger(r, uint32)
  if bound < 0 or uint64(n) > uint64(bound): fail(22)
  let b = take(r, int(n))
  result = newString(b.len)
  for i, v in b: result[i] = char(v)
  if validateUtf8(result) != -1 or (rejectNul and '\0' in result): fail(22)
proc finish*(r: Reader) =
  ## ``@brief Require complete consumption of the outer canonical value.``
  ## ``@details Reject trailing bytes; nested record readers must defer this check``
  ## ``until the enclosing value is complete. This operation does not advance r.``
  ## ``@param[in] r Completed reader with position exactly equal to bytes.len.``
  ## ``@raises RosError Code 22 if unread/trailing bytes remain or the cursor is inconsistent.``
  ## ``@see initReader; Reader; take``
  if r.position != r.bytes.len: fail(22)
