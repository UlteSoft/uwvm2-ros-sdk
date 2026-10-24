/// @file wire/image.mbt
/// @brief Preserve complete bounded image values and independent owner results.
/// @details Handles, goal/request IDs and addresses remain UInt64. Calls use the caller's exact
/// Instance/backend grants. Normal cleanup outcomes remain separately observable; traps require runtime
/// retirement. This package creates no authority, background executor or retries.

///|
/// Canonical sensor_msgs/Image, not native ROS serialization. UInt64 fields
/// preserve the complete u32 domain on both MoonBit Wasm backends.
pub(all) struct Image {
  sequence : UInt64
  seconds : UInt64
  nanoseconds : UInt64
  frame_id : String
  height : UInt64
  width : UInt64
  encoding : String
  bigendian : Bool
  step : UInt64
  data : Bytes
} derive(Eq)

///|
fn image_frame(value : String) -> Bool {
  if value.length() == 0 || value.length() > 255 {
    return false
  }
  let mut slash = true
  for i = 0; i < value.length(); i = i + 1 {
    let c = value[i].to_int()
    if c == 47 {
      if slash {
        return false
      }
      slash = true
    } else {
      if !((c >= 65 && c <= 90) ||
        (c >= 97 && c <= 122) ||
        (c >= 48 && c <= 57) ||
        c == 95) {
        return false
      }
      slash = false
    }
  }
  !slash
}

///|
fn image_channels(encoding : String) -> UInt64 {
  match encoding {
    "mono8" => 1UL
    "mono16" => 2UL
    "rgb8" | "bgr8" => 3UL
    "rgba8" | "bgra8" => 4UL
    _ => 0UL
  }
}

/// ROS2 uses sequence zero and nonnegative signed-i32 seconds. ROS1 preserves
/// every u32 second/sequence. Host grants and tighter byte quotas still apply.

///|
/// @brief Perform the explicit Image validate operation.
/// @param self Borrowed original owner or local value; retains its documented Session and lifetime.
/// @param backend Borrowed explicit backend value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details The receiver retains its documented owner/session identity. Inspect the complete result and
/// separate cleanup ledger; a failed operation is never replayed automatically.
pub fn Image::validate(self : Image, backend : Int32) -> Int32 {
  if backend != 1 && backend != 2 {
    return 22
  }
  if self.sequence > 4294967295UL ||
    self.seconds > 4294967295UL ||
    self.nanoseconds >= 1000000000UL ||
    self.height == 0UL ||
    self.height > 4294967295UL ||
    self.width == 0UL ||
    self.width > 4294967295UL ||
    self.step > 4294967295UL ||
    !image_frame(self.frame_id) {
    return 22
  }
  if backend == 2 && (self.sequence != 0UL || self.seconds > 2147483647UL) {
    return 22
  }
  let channels = image_channels(self.encoding)
  if channels == 0UL ||
    self.width * channels > self.step ||
    self.height * self.step != self.data.length().to_uint64() {
    return 22
  }
  // Frame and encoding are validated ASCII, so UTF-16 length equals byte count.
  if self.data.length() >
    4193786 - 37 - self.frame_id.length() - self.encoding.length() {
    return 90
  }
  0
}

///|
/// @brief Perform the explicit Image encode operation.
/// @param self Borrowed original owner or local value; retains its documented Session and lifetime.
/// @param backend Borrowed explicit backend value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details The receiver retains its documented owner/session identity. Inspect the complete result and
/// separate cleanup ledger; a failed operation is never replayed automatically.
pub fn Image::encode(self : Image, backend : Int32) -> Result[Bytes, Int32] {
  let code = self.validate(backend)
  if code != 0 {
    return Err(code)
  }
  let frame = match string_bytes(self.frame_id) {
    Ok(v) => v
    Err(c) => return Err(c)
  }
  let encoding = match string_bytes(self.encoding) {
    Ok(v) => v
    Err(c) => return Err(c)
  }
  Ok(
    i32(self.sequence.to_int()) +
    i32(self.seconds.to_int()) +
    i32(self.nanoseconds.to_int()) +
    frame +
    i32(self.height.to_int()) +
    i32(self.width.to_int()) +
    encoding +
    bool_bytes(self.bigendian) +
    i32(self.step.to_int()) +
    i32(self.data.length()) +
    self.data,
  )
}

///|
fn image_u32(bytes : Bytes, offset : Int32) -> UInt64 {
  let mut n = 0UL
  for i = 0; i < 4; i = i + 1 {
    n = n | (bytes[offset + i].to_int().to_uint64() << (i * 8))
  }
  n
}

/// Strict complete decode: every length is checked before narrowing/slicing;
/// rejects trailing bytes and returns an owned pixel buffer with no arena view.

///|
/// @brief Perform the documented read_image operation on complete local values.
/// @param bytes Borrowed complete canonical bytes; no prefix, implicit clipping or native mutation is inferred.
/// @param backend Borrowed explicit backend value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details Arguments are borrowed for this synchronous call unless the original owner contract
/// explicitly transfers them. Returned managed values retain their own copied storage.
pub fn read_image(bytes : Bytes, backend : Int32) -> Result[Image, Int32] {
  if backend != 1 && backend != 2 {
    return Err(22)
  }
  if bytes.length() > 4193786 {
    return Err(90)
  }
  if bytes.length() < 37 {
    return Err(22)
  }
  let frame_size = image_u32(bytes, 12)
  if frame_size > 255UL || frame_size > (bytes.length() - 37).to_uint64() {
    return Err(22)
  }
  let p = 16 + frame_size.to_int()
  let frame_id = match read_string(bytes[12:p].to_owned()) {
    Ok(v) => v
    Err(c) => return Err(c)
  }
  let encoding_size = image_u32(bytes, p + 8)
  if encoding_size > 255UL ||
    encoding_size > (bytes.length() - p - 21).to_uint64() {
    return Err(22)
  }
  let q = p + 12 + encoding_size.to_int()
  let encoding = match read_string(bytes[p + 8:q].to_owned()) {
    Ok(v) => v
    Err(c) => return Err(c)
  }
  if bytes[q].to_int() > 1 {
    return Err(22)
  }
  let size = image_u32(bytes, q + 5)
  if size != (bytes.length() - q - 9).to_uint64() {
    return Err(22)
  }
  let value : Image = {
    sequence: image_u32(bytes, 0),
    seconds: image_u32(bytes, 4),
    nanoseconds: image_u32(bytes, 8),
    frame_id,
    height: image_u32(bytes, p),
    width: image_u32(bytes, p + 4),
    encoding,
    bigendian: bytes[q].to_int() == 1,
    step: image_u32(bytes, q + 1),
    data: bytes[q + 9:].to_owned(),
  }
  let code = value.validate(backend)
  if code != 0 {
    Err(code)
  } else {
    Ok(value)
  }
}

/// Integer BT.601-style luma (77R+150G+29B)>>8. Row padding is consumed,
/// alpha ignored, output is packed mono8. mono16 refuses95 without guessing
/// endian/range conversion. Header is preserved, and inputs are never mutated.

///|
/// @brief Perform the explicit Image to_mono8 operation.
/// @param self Borrowed original owner or local value; retains its documented Session and lifetime.
/// @param backend Borrowed explicit backend value governed by the original contract below.
/// @return Complete documented value or operation status; inspect independent transport and cleanup facts where
/// provided.
/// @details The receiver retains its documented owner/session identity. Inspect the complete result and
/// separate cleanup ledger; a failed operation is never replayed automatically.
pub fn Image::to_mono8(self : Image, backend : Int32) -> Result[Image, Int32] {
  let code = self.validate(backend)
  if code != 0 {
    return Err(code)
  }
  if self.encoding == "mono16" {
    return Err(95)
  }
  let channels = image_channels(self.encoding).to_int()
  let width = self.width.to_int()
  let stride = self.step.to_int()
  let data = Bytes::makei((self.width * self.height).to_int(), fn(i) {
    let p = i / width * stride + i % width * channels
    if channels == 1 {
      self.data[p]
    } else {
      let reversed = self.encoding == "bgr8" || self.encoding == "bgra8"
      let r = self.data[p + (if reversed { 2 } else { 0 })].to_int()
      let g = self.data[p + 1].to_int()
      let b = self.data[p + (if reversed { 0 } else { 2 })].to_int()
      ((77 * r + 150 * g + 29 * b) >> 8).to_byte()
    }
  })
  Ok({
    sequence: self.sequence,
    seconds: self.seconds,
    nanoseconds: self.nanoseconds,
    frame_id: self.frame_id,
    height: self.height,
    width: self.width,
    encoding: "mono8",
    bigendian: false,
    step: self.width,
    data,
  })
}
