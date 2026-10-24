/// @file wire/wire.mbt
/// @brief Encode complete canonical values with strict text and numeric validation.
/// @details Handles, goal/request IDs and addresses remain UInt64. Calls use the caller's exact
/// Instance/backend grants. Normal cleanup outcomes remain separately observable; traps require runtime
/// retirement. This package creates no authority, background executor or retries.

// Canonical byte codecs only: there is no native ROS serialization, identity,
// permission, topic choice, Unicode replacement or automatic retry in this file.

///|
/// @brief Perform the documented u64 operation on complete local values.
/// @param value Borrowed explicit value value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn u64(value : UInt64) -> Bytes {
  Bytes::makei(8, fn(i) { ((value >> (i * 8)) & 255UL).to_int().to_byte() })
}

///|
/// @brief Perform the documented read_u64 operation on complete local values.
/// @param bytes Borrowed complete canonical bytes; no prefix, implicit clipping or native mutation is inferred.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn read_u64(bytes : Bytes) -> Result[UInt64, Int32] {
  if bytes.length() != 8 {
    return Err(22)
  }
  let mut value = 0UL
  for i = 0; i < 8; i = i + 1 {
    value = value | (bytes[i].to_int().to_uint64() << (i * 8))
  }
  Ok(value)
}

///|
/// @brief Perform the documented i32 operation on complete local values.
/// @param value Borrowed explicit value value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn i32(value : Int32) -> Bytes {
  Bytes::makei(4, fn(i) { ((value >> (i * 8)) & 255).to_byte() })
}

///|
/// @brief Perform the documented bool_bytes operation on complete local values.
/// @param value Borrowed explicit value value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn bool_bytes(value : Bool) -> Bytes {
  if value {
    b"\x01"
  } else {
    b"\x00"
  }
}

///|
/// @brief Perform the documented read_bool operation on complete local values.
/// @param bytes Borrowed complete canonical bytes; no prefix, implicit clipping or native mutation is inferred.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn read_bool(bytes : Bytes) -> Result[Bool, Int32] {
  if bytes == b"\x00" {
    Ok(false)
  } else if bytes == b"\x01" {
    Ok(true)
  } else {
    Err(22)
  }
}

/// UTF-8 is copied, never confused with MoonBit's managed UTF-16 representation.
/// The pinned core encoder/strict decoder are explicitly selected by moon.pkg.
/// Literal BOM and embedded NUL are preserved in canonical String messages.

///|
/// @brief Perform the documented bounded_utf8 operation on complete local values.
/// @param value Borrowed explicit value value governed by the original contract below.
/// @param maximum Finite complete byte/entry ceiling, checked before import; never an instruction to retry.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn bounded_utf8(value : String, maximum : Int32) -> Result[Bytes, Int32] {
  if maximum < 0 || value.length() > maximum {
    return Err(90)
  }
  let mut count = 0
  let mut index = 0
  while index < value.length() {
    let unit = value[index].to_int()
    if unit >= 0xD800 && unit <= 0xDBFF {
      if index + 1 >= value.length() {
        return Err(22)
      }
      let trail = value[index + 1].to_int()
      if trail < 0xDC00 || trail > 0xDFFF {
        return Err(22)
      }
      count = count + 4
      index = index + 2
    } else {
      if unit >= 0xDC00 && unit <= 0xDFFF {
        return Err(22)
      }
      count = count +
        (if unit < 0x80 { 1 } else if unit < 0x800 { 2 } else { 3 })
      index = index + 1
    }
    if count > maximum {
      return Err(90)
    }
  }
  Ok(@utf8.encode(value[:]))
}

///|
/// @brief Perform the documented string_bytes operation on complete local values.
/// @param value Borrowed explicit value value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn string_bytes(value : String) -> Result[Bytes, Int32] {
  let bytes = match bounded_utf8(value, 4193782) {
    Ok(value) => value
    Err(code) => return Err(code)
  }
  if bytes.length() > 4193782 {
    return Err(90)
  }
  Ok(i32(bytes.length()) + bytes)
}

///|
/// @brief Perform the documented read_string operation on complete local values.
/// @param bytes Borrowed complete canonical bytes; no prefix, implicit clipping or native mutation is inferred.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn read_string(bytes : Bytes) -> Result[String, Int32] {
  if bytes.length() < 4 || bytes.length() > 4193786 {
    return Err(22)
  }
  let mut count = 0UL
  for i = 0; i < 4; i = i + 1 {
    count = count | (bytes[i].to_int().to_uint64() << (i * 8))
  }
  if count != (bytes.length() - 4).to_uint64() {
    return Err(22)
  }
  Ok(@utf8.decode(bytes[4:], ignore_bom=false)) catch {
    _ => Err(22)
  }
}

/// Fixed six Float64s: linear xyz followed by angular xyz. Existing Runtime
/// finite-float policy remains strict; trust policy may impose tighter bounds.

///|
/// @brief Perform the documented twist operation on complete local values.
/// @param values Borrowed explicit values value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn twist(values : Array[Double]) -> Result[Bytes, Int32] {
  if values.length() != 6 {
    return Err(22)
  }
  for value in values {
    if value.is_nan() || value.is_inf() {
      return Err(22)
    }
  }
  Ok(
    Bytes::makei(48, fn(i) {
      let bits = values[i / 8].reinterpret_as_uint64()
      ((bits >> (i % 8 * 8)) & 255UL).to_int().to_byte()
    }),
  )
}

///|
/// @brief Perform the documented read_twist operation on complete local values.
/// @param bytes Borrowed complete canonical bytes; no prefix, implicit clipping or native mutation is inferred.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn read_twist(bytes : Bytes) -> Result[Array[Double], Int32] {
  if bytes.length() != 48 {
    return Err(22)
  }
  let values : Array[Double] = []
  for n = 0; n < 6; n = n + 1 {
    let mut bits = 0UL
    for i = 0; i < 8; i = i + 1 {
      bits = bits | (bytes[n * 8 + i].to_int().to_uint64() << (i * 8))
    }
    let value = bits.reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      return Err(22)
    }
    values.push(value)
  }
  Ok(values)
}

///|
pub(all) struct ServiceResponse {
  success : Bool
  message : String
}

///|
/// @brief Perform the documented service_response operation on complete local values.
/// @param success Borrowed explicit success value governed by the original contract below.
/// @param message Borrowed explicit message value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn service_response(
  success : Bool,
  message : String,
) -> Result[Bytes, Int32] {
  match string_bytes(message) {
    Err(code) => Err(code)
    Ok(body) =>
      if body.length() > 4193785 {
        Err(90)
      } else {
        Ok(bool_bytes(success) + body)
      }
  }
}

///|
/// @brief Perform the documented read_service_response operation on complete local values.
/// @param bytes Borrowed complete canonical bytes; no prefix, implicit clipping or native mutation is inferred.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn read_service_response(bytes : Bytes) -> Result[ServiceResponse, Int32] {
  if bytes.length() < 5 {
    return Err(22)
  }
  let bit = bytes[0].to_int()
  if bit > 1 {
    return Err(22)
  }
  match read_string(bytes[1:].to_owned()) {
    Err(code) => Err(code)
    Ok(message) => Ok({ success: bit == 1, message, })
  }
}

/// Service IDs and Action goal IDs are opaque u64, not floating-point numbers.
/// Native ownership is still checked by the actual import, never by this codec.

///|
/// @brief Perform the documented id_prefix operation on complete local values.
/// @param id Exact full-width UInt64 opaque identity; preserve every unsigned bit and original ownership.
/// @param body Borrowed complete canonical bytes; no prefix, implicit clipping or native mutation is inferred.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn id_prefix(id : UInt64, body : Bytes) -> Result[Bytes, Int32] {
  if id == 0UL {
    return Err(22)
  }
  if body.length() > 4193778 {
    return Err(90)
  }
  Ok(u64(id) + body)
}

///|
/// @brief Perform the documented fibonacci_goal operation on complete local values.
/// @param order Borrowed explicit order value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn fibonacci_goal(order : Int32) -> Result[Bytes, Int32] {
  if order < 0 || order > 46 {
    Err(22)
  } else {
    Ok(i32(order))
  }
}

///|
pub(all) struct FibonacciSequence {
  goal : UInt64
  kind : Int32
  values : Array[Int32]
}

/// Feedback is ID8/count4/values; terminal result inserts outcome byte2/3/4.
/// Reject trailing bytes, zero IDs, oversized counts and negative sequence values.

///|
/// @brief Perform the documented fibonacci_sequence operation on complete local values.
/// @param bytes Borrowed complete canonical bytes; no prefix, implicit clipping or native mutation is inferred.
/// @param terminal Borrowed explicit terminal value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn fibonacci_sequence(
  bytes : Bytes,
  terminal : Bool,
) -> Result[FibonacciSequence, Int32] {
  let start = if terminal { 9 } else { 8 }
  if bytes.length() < start + 4 || bytes.length() > 4193786 {
    return Err(22)
  }
  let id = match read_u64(bytes[:8].to_owned()) {
    Ok(value) => value
    Err(code) => return Err(code)
  }
  if id == 0UL {
    return Err(22)
  }
  let kind = if terminal { bytes[8].to_int() } else { 1 }
  if terminal && (kind < 2 || kind > 4) {
    return Err(22)
  }
  let mut count = 0UL
  for i = 0; i < 4; i = i + 1 {
    count = count | (bytes[start + i].to_int().to_uint64() << (i * 8))
  }
  if count > 48UL || count * 4UL != (bytes.length() - start - 4).to_uint64() {
    return Err(22)
  }
  let values : Array[Int32] = []
  for n = 0; n < count.to_int(); n = n + 1 {
    let mut value = 0UL
    for i = 0; i < 4; i = i + 1 {
      value = value |
        (bytes[start + 4 + n * 4 + i].to_int().to_uint64() << (i * 8))
    }
    if value > 2147483647UL {
      return Err(22)
    }
    values.push(value.to_int())
  }
  Ok({ goal: id, kind, values, })
}

/// Byte-level response correlation only; it grants no ownership or permission.
/// Custom action payloads retain their own complete canonical decoder. The
/// common envelope is ID8, followed by kind2/3/4 for terminal results only.

///|
/// @brief Perform the documented action_envelope operation on complete local values.
/// @param bytes Borrowed complete canonical bytes; no prefix, implicit clipping or native mutation is inferred.
/// @param expected Borrowed explicit expected value governed by the original contract below.
/// @param terminal Borrowed explicit terminal value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn action_envelope(
  bytes : Bytes,
  expected : UInt64,
  terminal : Bool,
) -> Bool {
  if expected == 0UL || bytes.length() < (if terminal { 9 } else { 8 }) {
    return false
  }
  let mut actual = 0UL
  for i = 0; i < 8; i = i + 1 {
    actual = actual | (bytes[i].to_int().to_uint64() << (i * 8))
  }
  if actual != expected {
    return false
  }
  if terminal {
    let kind = bytes[8].to_int()
    if kind < 2 || kind > 4 {
      return false
    }
  }
  true
}
