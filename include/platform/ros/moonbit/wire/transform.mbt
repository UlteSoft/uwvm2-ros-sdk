/// @file wire/transform.mbt
/// @brief Preserve complete transforms and explicit frame/time contracts.
/// @details Handles, goal/request IDs and addresses remain UInt64. Calls use the caller's exact
/// Instance/backend grants. Normal cleanup outcomes remain separately observable; traps require runtime
/// retirement. This package creates no authority, background executor or retries.

///|
/// Canonical TransformStamped; fixed tuples avoid partial translation/rotation
/// arrays. Frame authority and tighter field bounds remain in the Host grant.
pub(all) struct TransformStamped {
  sequence : UInt64
  seconds : UInt64
  nanoseconds : UInt64
  parent_frame : String
  child_frame : String
  translation : (Double, Double, Double)
  quaternion : (Double, Double, Double, Double)
} derive(Eq)

// TF segments require a letter or underscore first. Image frame validation has
// a different existing profile; do not silently substitute it for TF grammar.

///|
fn transform_frame(name : String) -> Bool {
  if name.length() == 0 || name.length() > 255 {
    return false
  }
  let mut first = true
  for i = 0; i < name.length(); i = i + 1 {
    let c = name[i].to_int()
    if c == 47 {
      if first {
        return false
      }
      first = true
    } else {
      let alpha = (c >= 65 && c <= 90) || (c >= 97 && c <= 122) || c == 95
      if !alpha && !(c >= 48 && c <= 57 && !first) {
        return false
      }
      first = false
    }
  }
  !first
}

/// Both backends use the current Host TF nonnegative signed-i32 seconds
/// profile. ROS1 preserves u32 sequence; ROS2 requires zero. No normalization.

///|
/// @brief Perform the explicit TransformStamped validate operation.
/// @param self Borrowed original owner or local value; retains its documented Session and lifetime.
/// @param backend Borrowed explicit backend value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details The receiver retains its documented owner/session identity. Inspect the complete result and
/// separate cleanup ledger; a failed operation is never replayed automatically.
pub fn TransformStamped::validate(
  self : TransformStamped,
  backend : Int32,
) -> Int32 {
  if backend != 1 && backend != 2 {
    return 22
  }
  if self.sequence > 4294967295UL ||
    (backend == 2 && self.sequence != 0UL) ||
    self.seconds > 2147483647UL ||
    self.nanoseconds >= 1000000000UL ||
    !transform_frame(self.parent_frame) ||
    !transform_frame(self.child_frame) ||
    self.parent_frame == self.child_frame {
    return 22
  }
  for
    value in [
      self.translation.0,
      self.translation.1,
      self.translation.2,
      self.quaternion.0,
      self.quaternion.1,
      self.quaternion.2,
      self.quaternion.3,
    ] {
    if value.is_nan() || value.is_inf() {
      return 22
    }
  }
  let mut norm = 0.0
  for
    value in [
      self.quaternion.0,
      self.quaternion.1,
      self.quaternion.2,
      self.quaternion.3,
    ] {
    norm = norm + value * value
  }
  if norm.is_nan() || norm.is_inf() || norm - 1.0 < -0.001 || norm - 1.0 > 0.001 {
    22
  } else {
    0
  }
}

///|
/// @brief Perform the explicit TransformStamped encode operation.
/// @param self Borrowed original owner or local value; retains its documented Session and lifetime.
/// @param backend Borrowed explicit backend value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details The receiver retains its documented owner/session identity. Inspect the complete result and
/// separate cleanup ledger; a failed operation is never replayed automatically.
pub fn TransformStamped::encode(
  self : TransformStamped,
  backend : Int32,
) -> Result[Bytes, Int32] {
  let code = self.validate(backend)
  if code != 0 {
    return Err(code)
  }
  let parent = match string_bytes(self.parent_frame) {
    Ok(v) => v
    Err(c) => return Err(c)
  }
  let child = match string_bytes(self.child_frame) {
    Ok(v) => v
    Err(c) => return Err(c)
  }
  Ok(
    i32(self.sequence.to_int()) +
    i32(self.seconds.to_int()) +
    i32(self.nanoseconds.to_int()) +
    parent +
    child +
    u64(self.translation.0.reinterpret_as_uint64()) +
    u64(self.translation.1.reinterpret_as_uint64()) +
    u64(self.translation.2.reinterpret_as_uint64()) +
    u64(self.quaternion.0.reinterpret_as_uint64()) +
    u64(self.quaternion.1.reinterpret_as_uint64()) +
    u64(self.quaternion.2.reinterpret_as_uint64()) +
    u64(self.quaternion.3.reinterpret_as_uint64()),
  )
}

///|
fn transform_u32(bytes : Bytes, offset : Int32) -> UInt64 {
  let mut value = 0UL
  for i = 0; i < 4; i = i + 1 {
    value = value | (bytes[offset + i].to_int().to_uint64() << (i * 8))
  }
  value
}

///|
fn transform_real(bytes : Bytes, offset : Int32) -> Double {
  let mut bits = 0UL
  for i = 0; i < 8; i = i + 1 {
    bits = bits | (bytes[offset + i].to_int().to_uint64() << (i * 8))
  }
  bits.reinterpret_as_double()
}

/// Complete bounded decode. Unsigned lengths are checked before narrowing or
/// slicing. No trailing bytes, borrowed arena values or partial output escape.

///|
/// @brief Perform the documented read_transform operation on complete local values.
/// @param bytes Borrowed complete canonical bytes; no prefix, implicit clipping or native mutation is inferred.
/// @param backend Borrowed explicit backend value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn read_transform(
  bytes : Bytes,
  backend : Int32,
) -> Result[TransformStamped, Int32] {
  if (backend != 1 && backend != 2) ||
    bytes.length() < 78 ||
    bytes.length() > 586 {
    return Err(22)
  }
  let parent_size = transform_u32(bytes, 12)
  if parent_size == 0UL ||
    parent_size > 255UL ||
    parent_size > (bytes.length() - 76).to_uint64() {
    return Err(22)
  }
  let p = 16 + parent_size.to_int()
  let child_size = transform_u32(bytes, p)
  if child_size == 0UL ||
    child_size > 255UL ||
    child_size != (bytes.length() - p - 60).to_uint64() {
    return Err(22)
  }
  let q = p + 4 + child_size.to_int()
  let parent_frame = match read_string(bytes[12:p].to_owned()) {
    Ok(v) => v
    Err(c) => return Err(c)
  }
  let child_frame = match read_string(bytes[p:q].to_owned()) {
    Ok(v) => v
    Err(c) => return Err(c)
  }
  let value : TransformStamped = {
    sequence: transform_u32(bytes, 0),
    seconds: transform_u32(bytes, 4),
    nanoseconds: transform_u32(bytes, 8),
    parent_frame,
    child_frame,
    translation: (
      transform_real(bytes, q),
      transform_real(bytes, q + 8),
      transform_real(bytes, q + 16),
    ),
    quaternion: (
      transform_real(bytes, q + 24),
      transform_real(bytes, q + 32),
      transform_real(bytes, q + 40),
      transform_real(bytes, q + 48),
    ),
  }
  let code = value.validate(backend)
  if code != 0 {
    Err(code)
  } else {
    Ok(value)
  }
}
