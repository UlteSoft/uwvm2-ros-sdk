/// @file bounded_records.mbt
/// @brief Preserve every original Unitree catalog record and field.
/// @details Codecs preserve exact original declarations, full integer widths, nested arrays, strict
/// UTF-8, finite numeric policy, source constants and explicit wire limits. No host operation, native
/// serialization, identity registration or authority occurs here.

/// @brief Own one bounded canonical writer with sticky failure state.
priv struct Writer {
  bytes : Array[Byte]
  limit : Int32
  mut status : Int32
}

///| @brief Allocate a private finite writer before any native operation.
fn Writer::new(limit : Int32) -> Writer {
  {
    bytes: [], limit, status: 0
  }
}

///| @brief Append one byte or retain the original aggregate-capacity error.
fn Writer::byte(self : Writer, value : Byte) -> Unit {
  if self.status != 0 {
    return
  }
  if self.bytes.length() >= self.limit {
    self.status = 90;
    return
  }
  self.bytes.push(value)
}

///| @brief Write the low width bytes of a full-width little-endian integer.
fn Writer::integer(self : Writer, value : UInt64, width : Int32) -> Unit {
  for i = 0; i < width; i = i + 1 {
    self.byte(((value >> (i * 8)) & 255UL).to_int().to_byte())
  }
}

///| @brief Append strict bounded UTF-8 with its exact u32 byte extent.
fn Writer::text(self : Writer, value : String, maximum : Int32) -> Unit {
  if self.status != 0 {
    return
  }
  let bytes = match @wire.bounded_utf8(value, maximum) {
    Ok(value) => value
    Err(_) => {
      self.status = 22;
      return
    }
  }
  for byte in bytes {
    if byte.to_int() == 0 {
      self.status = 22;
      return
    }
  }
  self.integer(bytes.length().to_uint64(), 4)
  for byte in bytes {
    self.byte(byte)
  }
}

///| @brief Return one complete owned wire value or the original writer error.
fn Writer::finish(self : Writer) -> Result[Bytes, Int32] {
  if self.status != 0 {
    return Err(self.status)
  }
  Ok(Bytes::makei(self.bytes.length(), fn(i) {
        self.bytes[i]
      }))
}

/// @brief Borrow complete canonical input while tracking a checked local cursor.
priv struct Reader {
  bytes : Bytes
  mut at : Int32
  mut status : Int32
}

///| @brief Read one little-endian integer without narrowing its unsigned bits.
fn Reader::integer(self : Reader, width : Int32) -> UInt64 {
  if self.status != 0 {
    return 0UL
  }
  if width < 0 || width > self.bytes.length() - self.at {
    self.status = 22
    return 0UL
  }
  let mut value = 0UL
  for i = 0; i < width; i = i + 1 {
    value = value | (self.bytes[self.at + i].to_int().to_uint64() << (i * 8))
  }
  self.at = self.at + width
  value
}

///| @brief Read a finite sequence extent before allocating any element storage.
fn Reader::count(self : Reader, maximum : Int32) -> Int32 {
  let count = self.integer(4)
  if count > maximum.to_uint64() {
    self.status = 22;
    return 0
  }
  if self.status != 0 {
    0
  } else {
    count.to_int()
  }
}

///| @brief Decode strict UTF-8 without replacement, NUL acceptance or clipping.
fn Reader::text(self : Reader, maximum : Int32) -> String {
  let count = self.count(maximum)
  if self.status != 0 {
    return ""
  }
  if count > self.bytes.length() - self.at {
    self.status = 22;
    return ""
  }
  let begin = self.at
  self.at = self.at + count
  for i = begin; i < self.at; i = i + 1 {
    if self.bytes[i].to_int() == 0 {
      self.status = 22;
      return ""
    }
  }
  try {
    @utf8.decode(self.bytes[begin:self.at], ignore_bom=false)
  } catch {
    _ => {
      self.status = 22;
      ""
    }
  }
}

///| @brief Reinterpret all original IEEE 754 float32 bits without a numeric cast.
extern "wasm" fn float_from_bits(value : Int32) -> Float =
  #|(func (param i32) (result f32) (f32.reinterpret_i32 (local.get 0)))

///| @brief Preserve the exact IEEE 754 float32 bit pattern in an unsigned word.
extern "wasm" fn float_bits(value : Float) -> UInt =
  #|(func (param f32) (result i32) (i32.reinterpret_f32 (local.get 0)))

///|
/// @brief Represent complete original unitree_api/msg/RequestIdentity.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_apiMsgRequestIdentity {
  /// @brief Exact native native_id field; int64.
  native_id : Int64
  /// @brief Exact native native_api_id field; int64.
  native_api_id : Int64
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_apiMsgRequestIdentity::new() -> Ros2Unitree_apiMsgRequestIdentity {
  Ros2Unitree_apiMsgRequestIdentity:: {
    native_id: 0L,
    native_api_id: 0L,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 16 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_apiMsgRequestIdentity::max_wire_bytes() -> Int32 {
  16
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_apiMsgRequestIdentity::codec_identity() -> String {
  "UWVMROS1_e3daab89abcdaf6526511a189cfcc0c78aaebe8aefc53814ba77f6eb80cdc4e2"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_apiMsgRequestIdentity::write_fields(
  self : Ros2Unitree_apiMsgRequestIdentity,
  writer : Writer,
) -> Unit {
  writer.integer(self.native_id.reinterpret_as_uint64(), 8)
  writer.integer(self.native_api_id.reinterpret_as_uint64(), 8)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_apiMsgRequestIdentity::encode(self : Ros2Unitree_apiMsgRequestIdentity) -> Result[Bytes, Int32] {
  let writer = Writer::new(16)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_apiMsgRequestIdentity::read_fields(reader : Reader) -> Ros2Unitree_apiMsgRequestIdentity {
  let native_id = reader.integer(8).reinterpret_as_int64()
  let native_api_id = reader.integer(8).reinterpret_as_int64()
  Ros2Unitree_apiMsgRequestIdentity:: {
    native_id,
    native_api_id,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_apiMsgRequestIdentity::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_apiMsgRequestIdentity, Int32] {
  if bytes.length() > 16 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_apiMsgRequestIdentity::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_api/msg/RequestLease.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_apiMsgRequestLease {
  /// @brief Exact native native_id field; int64.
  native_id : Int64
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_apiMsgRequestLease::new() -> Ros2Unitree_apiMsgRequestLease {
  Ros2Unitree_apiMsgRequestLease:: {
    native_id: 0L,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 8 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_apiMsgRequestLease::max_wire_bytes() -> Int32 {
  8
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_apiMsgRequestLease::codec_identity() -> String {
  "UWVMROS1_3dcb1fe2998c880e2d9196967da172ccd9060ebc7f6d2feb8682dc3d104c2e6e"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_apiMsgRequestLease::write_fields(
  self : Ros2Unitree_apiMsgRequestLease,
  writer : Writer,
) -> Unit {
  writer.integer(self.native_id.reinterpret_as_uint64(), 8)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_apiMsgRequestLease::encode(self : Ros2Unitree_apiMsgRequestLease) -> Result[Bytes, Int32] {
  let writer = Writer::new(8)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_apiMsgRequestLease::read_fields(reader : Reader) -> Ros2Unitree_apiMsgRequestLease {
  let native_id = reader.integer(8).reinterpret_as_int64()
  Ros2Unitree_apiMsgRequestLease:: {
    native_id,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_apiMsgRequestLease::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_apiMsgRequestLease, Int32] {
  if bytes.length() > 8 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_apiMsgRequestLease::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_api/msg/RequestPolicy.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_apiMsgRequestPolicy {
  /// @brief Exact native native_priority field; int32.
  native_priority : Int32
  /// @brief Exact native native_noreply field; bool.
  native_noreply : Bool
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_apiMsgRequestPolicy::new() -> Ros2Unitree_apiMsgRequestPolicy {
  Ros2Unitree_apiMsgRequestPolicy:: {
    native_priority: 0,
    native_noreply: false,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 5 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_apiMsgRequestPolicy::max_wire_bytes() -> Int32 {
  5
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_apiMsgRequestPolicy::codec_identity() -> String {
  "UWVMROS1_61f1a1eafec2f694d24cf798963dcb5a0c8f40e9791db5a502f0736cc8587bb8"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_apiMsgRequestPolicy::write_fields(
  self : Ros2Unitree_apiMsgRequestPolicy,
  writer : Writer,
) -> Unit {
  writer.integer(self.native_priority.to_uint64(), 4)
  writer.integer(if self.native_noreply {
      1UL
    } else {
      0UL
    }, 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_apiMsgRequestPolicy::encode(self : Ros2Unitree_apiMsgRequestPolicy) -> Result[Bytes, Int32] {
  let writer = Writer::new(5)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_apiMsgRequestPolicy::read_fields(reader : Reader) -> Ros2Unitree_apiMsgRequestPolicy {
  let native_priority = reader.integer(4).to_int()
  let native_noreply = {
    let value = reader.integer(1);
    if value > 1UL {
      reader.status = 22
    };
    value == 1UL
  }
  Ros2Unitree_apiMsgRequestPolicy:: {
    native_priority,
    native_noreply,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_apiMsgRequestPolicy::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_apiMsgRequestPolicy, Int32] {
  if bytes.length() > 5 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_apiMsgRequestPolicy::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_api/msg/RequestHeader.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_apiMsgRequestHeader {
  /// @brief Exact native native_identity field; unitree_api/msg/RequestIdentity.
  native_identity : Ros2Unitree_apiMsgRequestIdentity
  /// @brief Exact native native_lease field; unitree_api/msg/RequestLease.
  native_lease : Ros2Unitree_apiMsgRequestLease
  /// @brief Exact native native_policy field; unitree_api/msg/RequestPolicy.
  native_policy : Ros2Unitree_apiMsgRequestPolicy
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_apiMsgRequestHeader::new() -> Ros2Unitree_apiMsgRequestHeader {
  Ros2Unitree_apiMsgRequestHeader:: {
    native_identity: Ros2Unitree_apiMsgRequestIdentity::new(),
    native_lease: Ros2Unitree_apiMsgRequestLease::new(),
    native_policy: Ros2Unitree_apiMsgRequestPolicy::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 29 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_apiMsgRequestHeader::max_wire_bytes() -> Int32 {
  29
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_apiMsgRequestHeader::codec_identity() -> String {
  "UWVMROS1_c8e8b83e2cdc978c5279483dbfac8d4185a3e05c87799b424643f0fcb02d0fd0"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_apiMsgRequestHeader::write_fields(
  self : Ros2Unitree_apiMsgRequestHeader,
  writer : Writer,
) -> Unit {
  self.native_identity.write_fields(writer)
  self.native_lease.write_fields(writer)
  self.native_policy.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_apiMsgRequestHeader::encode(self : Ros2Unitree_apiMsgRequestHeader) -> Result[Bytes, Int32] {
  let writer = Writer::new(29)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_apiMsgRequestHeader::read_fields(reader : Reader) -> Ros2Unitree_apiMsgRequestHeader {
  let native_identity = Ros2Unitree_apiMsgRequestIdentity::read_fields(reader)
  let native_lease = Ros2Unitree_apiMsgRequestLease::read_fields(reader)
  let native_policy = Ros2Unitree_apiMsgRequestPolicy::read_fields(reader)
  Ros2Unitree_apiMsgRequestHeader:: {
    native_identity,
    native_lease,
    native_policy,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_apiMsgRequestHeader::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_apiMsgRequestHeader, Int32] {
  if bytes.length() > 29 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_apiMsgRequestHeader::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_api/msg/Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_apiMsgRequest {
  /// @brief Exact native native_header field; unitree_api/msg/RequestHeader.
  native_header : Ros2Unitree_apiMsgRequestHeader
  /// @brief Exact native native_parameter field; string.
  native_parameter : String
  /// @brief Exact native native_binary field; uint8 sequence.
  native_binary : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_apiMsgRequest::new() -> Ros2Unitree_apiMsgRequest {
  Ros2Unitree_apiMsgRequest:: {
    native_header: Ros2Unitree_apiMsgRequestHeader::new(),
    native_parameter: "",
    native_binary: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4133 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_apiMsgRequest::max_wire_bytes() -> Int32 {
  4133
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_apiMsgRequest::codec_identity() -> String {
  "UWVMROS1_97acf1a6d8ba00179ad054f92df1f9faa2dc1f6e16396ccc981b28a3cb580192"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_apiMsgRequest::write_fields(
  self : Ros2Unitree_apiMsgRequest,
  writer : Writer,
) -> Unit {
  self.native_header.write_fields(writer)
  writer.text(self.native_parameter, 2048)
  if self.native_binary.length() > 2048 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_binary.length().to_uint64(), 4)
  for item in self.native_binary {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_apiMsgRequest::encode(self : Ros2Unitree_apiMsgRequest) -> Result[Bytes, Int32] {
  let writer = Writer::new(4133)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_apiMsgRequest::read_fields(reader : Reader) -> Ros2Unitree_apiMsgRequest {
  let native_header = Ros2Unitree_apiMsgRequestHeader::read_fields(reader)
  let native_parameter = reader.text(2048)
  let native_binary_count = reader.count(2048)
  let native_binary : Array[UInt] = []
  for i = 0; i < native_binary_count; i = i + 1 {
    native_binary.push(reader.integer(1).to_uint())
  }
  Ros2Unitree_apiMsgRequest:: {
    native_header,
    native_parameter,
    native_binary,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_apiMsgRequest::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_apiMsgRequest, Int32] {
  if bytes.length() > 4133 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_apiMsgRequest::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_api/msg/ResponseStatus.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_apiMsgResponseStatus {
  /// @brief Exact native native_code field; int32.
  native_code : Int32
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_apiMsgResponseStatus::new() -> Ros2Unitree_apiMsgResponseStatus {
  Ros2Unitree_apiMsgResponseStatus:: {
    native_code: 0,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_apiMsgResponseStatus::max_wire_bytes() -> Int32 {
  4
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_apiMsgResponseStatus::codec_identity() -> String {
  "UWVMROS1_aaad17e09d5d6549455f69060d1bb03ec81cddfc0ede323a5f2365a6c1a7b7b1"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_apiMsgResponseStatus::write_fields(
  self : Ros2Unitree_apiMsgResponseStatus,
  writer : Writer,
) -> Unit {
  writer.integer(self.native_code.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_apiMsgResponseStatus::encode(self : Ros2Unitree_apiMsgResponseStatus) -> Result[Bytes, Int32] {
  let writer = Writer::new(4)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_apiMsgResponseStatus::read_fields(reader : Reader) -> Ros2Unitree_apiMsgResponseStatus {
  let native_code = reader.integer(4).to_int()
  Ros2Unitree_apiMsgResponseStatus:: {
    native_code,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_apiMsgResponseStatus::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_apiMsgResponseStatus, Int32] {
  if bytes.length() > 4 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_apiMsgResponseStatus::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_api/msg/ResponseHeader.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_apiMsgResponseHeader {
  /// @brief Exact native native_identity field; unitree_api/msg/RequestIdentity.
  native_identity : Ros2Unitree_apiMsgRequestIdentity
  /// @brief Exact native native_status field; unitree_api/msg/ResponseStatus.
  native_status : Ros2Unitree_apiMsgResponseStatus
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_apiMsgResponseHeader::new() -> Ros2Unitree_apiMsgResponseHeader {
  Ros2Unitree_apiMsgResponseHeader:: {
    native_identity: Ros2Unitree_apiMsgRequestIdentity::new(),
    native_status: Ros2Unitree_apiMsgResponseStatus::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 20 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_apiMsgResponseHeader::max_wire_bytes() -> Int32 {
  20
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_apiMsgResponseHeader::codec_identity() -> String {
  "UWVMROS1_20ddef706f0be7d7e2e356ab2222b6e198bd36fd6d8a81706553d5a883de85e0"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_apiMsgResponseHeader::write_fields(
  self : Ros2Unitree_apiMsgResponseHeader,
  writer : Writer,
) -> Unit {
  self.native_identity.write_fields(writer)
  self.native_status.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_apiMsgResponseHeader::encode(self : Ros2Unitree_apiMsgResponseHeader) -> Result[Bytes, Int32] {
  let writer = Writer::new(20)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_apiMsgResponseHeader::read_fields(reader : Reader) -> Ros2Unitree_apiMsgResponseHeader {
  let native_identity = Ros2Unitree_apiMsgRequestIdentity::read_fields(reader)
  let native_status = Ros2Unitree_apiMsgResponseStatus::read_fields(reader)
  Ros2Unitree_apiMsgResponseHeader:: {
    native_identity,
    native_status,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_apiMsgResponseHeader::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_apiMsgResponseHeader, Int32] {
  if bytes.length() > 20 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_apiMsgResponseHeader::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_api/msg/Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_apiMsgResponse {
  /// @brief Exact native native_header field; unitree_api/msg/ResponseHeader.
  native_header : Ros2Unitree_apiMsgResponseHeader
  /// @brief Exact native native_data field; string.
  native_data : String
  /// @brief Exact native native_binary field; int8 sequence.
  native_binary : Array[Int32]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_apiMsgResponse::new() -> Ros2Unitree_apiMsgResponse {
  Ros2Unitree_apiMsgResponse:: {
    native_header: Ros2Unitree_apiMsgResponseHeader::new(),
    native_data: "",
    native_binary: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 2108 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_apiMsgResponse::max_wire_bytes() -> Int32 {
  2108
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_apiMsgResponse::codec_identity() -> String {
  "UWVMROS1_ccfc12626a209d739946c69e2f812bb41e940f20f17e48803e7ee5d34a97dd8f"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_apiMsgResponse::write_fields(
  self : Ros2Unitree_apiMsgResponse,
  writer : Writer,
) -> Unit {
  self.native_header.write_fields(writer)
  writer.text(self.native_data, 2048)
  if self.native_binary.length() > 32 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_binary.length().to_uint64(), 4)
  for item in self.native_binary {
    if item < -128 || item > 127 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_apiMsgResponse::encode(self : Ros2Unitree_apiMsgResponse) -> Result[Bytes, Int32] {
  let writer = Writer::new(2108)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_apiMsgResponse::read_fields(reader : Reader) -> Ros2Unitree_apiMsgResponse {
  let native_header = Ros2Unitree_apiMsgResponseHeader::read_fields(reader)
  let native_data = reader.text(2048)
  let native_binary_count = reader.count(32)
  let native_binary : Array[Int32] = []
  for i = 0; i < native_binary_count; i = i + 1 {
    native_binary.push(((reader.integer(1).to_int() << 24) >> 24))
  }
  Ros2Unitree_apiMsgResponse:: {
    native_header,
    native_data,
    native_binary,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_apiMsgResponse::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_apiMsgResponse, Int32] {
  if bytes.length() > 2108 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_apiMsgResponse::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/AudioData.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgAudioData {
  /// @brief Exact native native_time_frame field; uint64.
  native_time_frame : UInt64
  /// @brief Exact native native_data field; uint8 sequence.
  native_data : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgAudioData::new() -> Ros2Unitree_goMsgAudioData {
  Ros2Unitree_goMsgAudioData:: {
    native_time_frame: 0UL,
    native_data: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 2060 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgAudioData::max_wire_bytes() -> Int32 {
  2060
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgAudioData::codec_identity() -> String {
  "UWVMROS1_aa14877a076c7fc6b662efa965cc8a75f42b3f84990a078c7c3c5def01d2c9fe"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgAudioData::write_fields(
  self : Ros2Unitree_goMsgAudioData,
  writer : Writer,
) -> Unit {
  writer.integer(self.native_time_frame, 8)
  if self.native_data.length() > 2048 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_data.length().to_uint64(), 4)
  for item in self.native_data {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgAudioData::encode(self : Ros2Unitree_goMsgAudioData) -> Result[Bytes, Int32] {
  let writer = Writer::new(2060)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgAudioData::read_fields(reader : Reader) -> Ros2Unitree_goMsgAudioData {
  let native_time_frame = reader.integer(8)
  let native_data_count = reader.count(2048)
  let native_data : Array[UInt] = []
  for i = 0; i < native_data_count; i = i + 1 {
    native_data.push(reader.integer(1).to_uint())
  }
  Ros2Unitree_goMsgAudioData:: {
    native_time_frame,
    native_data,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgAudioData::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgAudioData, Int32] {
  if bytes.length() > 2060 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgAudioData::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/BmsCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgBmsCmd {
  /// @brief Exact native native_off field; uint8.
  native_off : UInt
  /// @brief Exact native native_reserve field; uint8 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgBmsCmd::new() -> Ros2Unitree_goMsgBmsCmd {
  Ros2Unitree_goMsgBmsCmd:: {
    native_off: 0U,
    native_reserve: Array::makei(3, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgBmsCmd::max_wire_bytes() -> Int32 {
  4
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgBmsCmd::codec_identity() -> String {
  "UWVMROS1_d212c1ab0c92d64801a3b10c3a4d79517ea24a830db3d85ca2bb18e1e0ea5339"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgBmsCmd::write_fields(
  self : Ros2Unitree_goMsgBmsCmd,
  writer : Writer,
) -> Unit {
  if self.native_off > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_off.to_uint64(), 1)
  if self.native_reserve.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgBmsCmd::encode(self : Ros2Unitree_goMsgBmsCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(4)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgBmsCmd::read_fields(reader : Reader) -> Ros2Unitree_goMsgBmsCmd {
  let native_off = reader.integer(1).to_uint()
  let native_reserve_count = 3
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(1).to_uint())
  }
  Ros2Unitree_goMsgBmsCmd:: {
    native_off,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgBmsCmd::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgBmsCmd, Int32] {
  if bytes.length() > 4 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgBmsCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/BmsState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgBmsState {
  /// @brief Exact native native_version_high field; uint8.
  native_version_high : UInt
  /// @brief Exact native native_version_low field; uint8.
  native_version_low : UInt
  /// @brief Exact native native_status field; uint8.
  native_status : UInt
  /// @brief Exact native native_soc field; uint8.
  native_soc : UInt
  /// @brief Exact native native_current field; int32.
  native_current : Int32
  /// @brief Exact native native_cycle field; uint16.
  native_cycle : UInt
  /// @brief Exact native native_bq_ntc field; int8 array.
  native_bq_ntc : Array[Int32]
  /// @brief Exact native native_mcu_ntc field; int8 array.
  native_mcu_ntc : Array[Int32]
  /// @brief Exact native native_cell_vol field; uint16 array.
  native_cell_vol : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgBmsState::new() -> Ros2Unitree_goMsgBmsState {
  Ros2Unitree_goMsgBmsState:: {
    native_version_high: 0U,
    native_version_low: 0U,
    native_status: 0U,
    native_soc: 0U,
    native_current: 0,
    native_cycle: 0U,
    native_bq_ntc: Array::makei(2, fn(_) {
        0
      }),
    native_mcu_ntc: Array::makei(2, fn(_) {
        0
      }),
    native_cell_vol: Array::makei(15, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 44 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgBmsState::max_wire_bytes() -> Int32 {
  44
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgBmsState::codec_identity() -> String {
  "UWVMROS1_7e4d5e3c0a2eddddf39c68b73bff5f7721e1623b0a9322dce23d3e551a07f5b0"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgBmsState::write_fields(
  self : Ros2Unitree_goMsgBmsState,
  writer : Writer,
) -> Unit {
  if self.native_version_high > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_version_high.to_uint64(), 1)
  if self.native_version_low > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_version_low.to_uint64(), 1)
  if self.native_status > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_status.to_uint64(), 1)
  if self.native_soc > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_soc.to_uint64(), 1)
  writer.integer(self.native_current.to_uint64(), 4)
  if self.native_cycle > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_cycle.to_uint64(), 2)
  if self.native_bq_ntc.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_bq_ntc {
    if item < -128 || item > 127 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_mcu_ntc.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_mcu_ntc {
    if item < -128 || item > 127 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_cell_vol.length() != 15 {
    writer.status = 22;
    return
  }
  for item in self.native_cell_vol {
    if item > 65535U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgBmsState::encode(self : Ros2Unitree_goMsgBmsState) -> Result[Bytes, Int32] {
  let writer = Writer::new(44)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgBmsState::read_fields(reader : Reader) -> Ros2Unitree_goMsgBmsState {
  let native_version_high = reader.integer(1).to_uint()
  let native_version_low = reader.integer(1).to_uint()
  let native_status = reader.integer(1).to_uint()
  let native_soc = reader.integer(1).to_uint()
  let native_current = reader.integer(4).to_int()
  let native_cycle = reader.integer(2).to_uint()
  let native_bq_ntc_count = 2
  let native_bq_ntc : Array[Int32] = []
  for i = 0; i < native_bq_ntc_count; i = i + 1 {
    native_bq_ntc.push(((reader.integer(1).to_int() << 24) >> 24))
  }
  let native_mcu_ntc_count = 2
  let native_mcu_ntc : Array[Int32] = []
  for i = 0; i < native_mcu_ntc_count; i = i + 1 {
    native_mcu_ntc.push(((reader.integer(1).to_int() << 24) >> 24))
  }
  let native_cell_vol_count = 15
  let native_cell_vol : Array[UInt] = []
  for i = 0; i < native_cell_vol_count; i = i + 1 {
    native_cell_vol.push(reader.integer(2).to_uint())
  }
  Ros2Unitree_goMsgBmsState:: {
    native_version_high,
    native_version_low,
    native_status,
    native_soc,
    native_current,
    native_cycle,
    native_bq_ntc,
    native_mcu_ntc,
    native_cell_vol,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgBmsState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgBmsState, Int32] {
  if bytes.length() > 44 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgBmsState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/Error.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgError {
  /// @brief Exact native native_source field; uint32.
  native_source : UInt
  /// @brief Exact native native_state field; uint32.
  native_state : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgError::new() -> Ros2Unitree_goMsgError {
  Ros2Unitree_goMsgError:: {
    native_source: 0U,
    native_state: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 8 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgError::max_wire_bytes() -> Int32 {
  8
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgError::codec_identity() -> String {
  "UWVMROS1_c3e572e08288b6ed0b32575e645fe546f92b5091d62e57db01ec00d27f5e4afd"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgError::write_fields(
  self : Ros2Unitree_goMsgError,
  writer : Writer,
) -> Unit {
  writer.integer(self.native_source.to_uint64(), 4)
  writer.integer(self.native_state.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgError::encode(self : Ros2Unitree_goMsgError) -> Result[Bytes, Int32] {
  let writer = Writer::new(8)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgError::read_fields(reader : Reader) -> Ros2Unitree_goMsgError {
  let native_source = reader.integer(4).to_uint()
  let native_state = reader.integer(4).to_uint()
  Ros2Unitree_goMsgError:: {
    native_source,
    native_state,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgError::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgError, Int32] {
  if bytes.length() > 8 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgError::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/Go2FrontVideoData.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgGo2FrontVideoData {
  /// @brief Exact native native_time_frame field; uint64.
  native_time_frame : UInt64
  /// @brief Exact native native_video720p field; uint8 sequence.
  native_video720p : Array[UInt]
  /// @brief Exact native native_video360p field; uint8 sequence.
  native_video360p : Array[UInt]
  /// @brief Exact native native_video180p field; uint8 sequence.
  native_video180p : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgGo2FrontVideoData::new() -> Ros2Unitree_goMsgGo2FrontVideoData {
  Ros2Unitree_goMsgGo2FrontVideoData:: {
    native_time_frame: 0UL,
    native_video720p: [],
    native_video360p: [],
    native_video180p: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 6164 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgGo2FrontVideoData::max_wire_bytes() -> Int32 {
  6164
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgGo2FrontVideoData::codec_identity() -> String {
  "UWVMROS1_07754cf58566a40dcc5a806fa6a346c260931d588eacfdad46f2fc9a168f3cad"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgGo2FrontVideoData::write_fields(
  self : Ros2Unitree_goMsgGo2FrontVideoData,
  writer : Writer,
) -> Unit {
  writer.integer(self.native_time_frame, 8)
  if self.native_video720p.length() > 2048 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_video720p.length().to_uint64(), 4)
  for item in self.native_video720p {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_video360p.length() > 2048 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_video360p.length().to_uint64(), 4)
  for item in self.native_video360p {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_video180p.length() > 2048 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_video180p.length().to_uint64(), 4)
  for item in self.native_video180p {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgGo2FrontVideoData::encode(self : Ros2Unitree_goMsgGo2FrontVideoData) -> Result[Bytes, Int32] {
  let writer = Writer::new(6164)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgGo2FrontVideoData::read_fields(reader : Reader) -> Ros2Unitree_goMsgGo2FrontVideoData {
  let native_time_frame = reader.integer(8)
  let native_video720p_count = reader.count(2048)
  let native_video720p : Array[UInt] = []
  for i = 0; i < native_video720p_count; i = i + 1 {
    native_video720p.push(reader.integer(1).to_uint())
  }
  let native_video360p_count = reader.count(2048)
  let native_video360p : Array[UInt] = []
  for i = 0; i < native_video360p_count; i = i + 1 {
    native_video360p.push(reader.integer(1).to_uint())
  }
  let native_video180p_count = reader.count(2048)
  let native_video180p : Array[UInt] = []
  for i = 0; i < native_video180p_count; i = i + 1 {
    native_video180p.push(reader.integer(1).to_uint())
  }
  Ros2Unitree_goMsgGo2FrontVideoData:: {
    native_time_frame,
    native_video720p,
    native_video360p,
    native_video180p,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgGo2FrontVideoData::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgGo2FrontVideoData, Int32] {
  if bytes.length() > 6164 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgGo2FrontVideoData::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/HeightMap.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgHeightMap {
  /// @brief Exact native native_stamp field; float64.
  native_stamp : Double
  /// @brief Exact native native_frame_id field; string.
  native_frame_id : String
  /// @brief Exact native native_resolution field; float32.
  native_resolution : Float
  /// @brief Exact native native_width field; uint32.
  native_width : UInt
  /// @brief Exact native native_height field; uint32.
  native_height : UInt
  /// @brief Exact native native_origin field; float32 array.
  native_origin : Array[Float]
  /// @brief Exact native native_data field; float32 sequence.
  native_data : Array[Float]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgHeightMap::new() -> Ros2Unitree_goMsgHeightMap {
  Ros2Unitree_goMsgHeightMap:: {
    native_stamp: 0.0,
    native_frame_id: "",
    native_resolution: 0.0F,
    native_width: 0U,
    native_height: 0U,
    native_origin: Array::makei(2, fn(_) {
        0.0F
      }),
    native_data: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 2212 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgHeightMap::max_wire_bytes() -> Int32 {
  2212
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgHeightMap::codec_identity() -> String {
  "UWVMROS1_fb1787b6d02f3110a081629fee6b9968118ffd9b3e05ed1eb2873832c89da56d"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgHeightMap::write_fields(
  self : Ros2Unitree_goMsgHeightMap,
  writer : Writer,
) -> Unit {
  if self.native_stamp.is_nan() || self.native_stamp.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(self.native_stamp.reinterpret_as_uint64(), 8)
  writer.text(self.native_frame_id, 2048)
  if self.native_resolution.is_nan() || self.native_resolution.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_resolution).to_uint64(), 4)
  writer.integer(self.native_width.to_uint64(), 4)
  writer.integer(self.native_height.to_uint64(), 4)
  if self.native_origin.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_origin {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_data.length() > 32 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_data.length().to_uint64(), 4)
  for item in self.native_data {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgHeightMap::encode(self : Ros2Unitree_goMsgHeightMap) -> Result[Bytes, Int32] {
  let writer = Writer::new(2212)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgHeightMap::read_fields(reader : Reader) -> Ros2Unitree_goMsgHeightMap {
  let native_stamp = {
    let value = reader.integer(8).reinterpret_as_double();
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_frame_id = reader.text(2048)
  let native_resolution = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_width = reader.integer(4).to_uint()
  let native_height = reader.integer(4).to_uint()
  let native_origin_count = 2
  let native_origin : Array[Float] = []
  for i = 0; i < native_origin_count; i = i + 1 {
    native_origin.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_data_count = reader.count(32)
  let native_data : Array[Float] = []
  for i = 0; i < native_data_count; i = i + 1 {
    native_data.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  Ros2Unitree_goMsgHeightMap:: {
    native_stamp,
    native_frame_id,
    native_resolution,
    native_width,
    native_height,
    native_origin,
    native_data,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgHeightMap::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgHeightMap, Int32] {
  if bytes.length() > 2212 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgHeightMap::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/IMUState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgIMUState {
  /// @brief Exact native native_quaternion field; float32 array.
  native_quaternion : Array[Float]
  /// @brief Exact native native_gyroscope field; float32 array.
  native_gyroscope : Array[Float]
  /// @brief Exact native native_accelerometer field; float32 array.
  native_accelerometer : Array[Float]
  /// @brief Exact native native_rpy field; float32 array.
  native_rpy : Array[Float]
  /// @brief Exact native native_temperature field; int8.
  native_temperature : Int32
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgIMUState::new() -> Ros2Unitree_goMsgIMUState {
  Ros2Unitree_goMsgIMUState:: {
    native_quaternion: Array::makei(4, fn(_) {
        0.0F
      }),
    native_gyroscope: Array::makei(3, fn(_) {
        0.0F
      }),
    native_accelerometer: Array::makei(3, fn(_) {
        0.0F
      }),
    native_rpy: Array::makei(3, fn(_) {
        0.0F
      }),
    native_temperature: 0,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 53 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgIMUState::max_wire_bytes() -> Int32 {
  53
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgIMUState::codec_identity() -> String {
  "UWVMROS1_e5326e97c3bfaa06962ad1989d1aa13fa0e60af15d39d9ef6da6ac0a37261bbc"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgIMUState::write_fields(
  self : Ros2Unitree_goMsgIMUState,
  writer : Writer,
) -> Unit {
  if self.native_quaternion.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_quaternion {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_gyroscope.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_gyroscope {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_accelerometer.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_accelerometer {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_rpy.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_rpy {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_temperature < -128 || self.native_temperature > 127 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_temperature.to_uint64(), 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgIMUState::encode(self : Ros2Unitree_goMsgIMUState) -> Result[Bytes, Int32] {
  let writer = Writer::new(53)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgIMUState::read_fields(reader : Reader) -> Ros2Unitree_goMsgIMUState {
  let native_quaternion_count = 4
  let native_quaternion : Array[Float] = []
  for i = 0; i < native_quaternion_count; i = i + 1 {
    native_quaternion.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_gyroscope_count = 3
  let native_gyroscope : Array[Float] = []
  for i = 0; i < native_gyroscope_count; i = i + 1 {
    native_gyroscope.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_accelerometer_count = 3
  let native_accelerometer : Array[Float] = []
  for i = 0; i < native_accelerometer_count; i = i + 1 {
    native_accelerometer.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_rpy_count = 3
  let native_rpy : Array[Float] = []
  for i = 0; i < native_rpy_count; i = i + 1 {
    native_rpy.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_temperature = ((reader.integer(1).to_int() << 24) >> 24)
  Ros2Unitree_goMsgIMUState:: {
    native_quaternion,
    native_gyroscope,
    native_accelerometer,
    native_rpy,
    native_temperature,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgIMUState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgIMUState, Int32] {
  if bytes.length() > 53 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgIMUState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/InterfaceConfig.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgInterfaceConfig {
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_value field; uint8.
  native_value : UInt
  /// @brief Exact native native_reserve field; uint8 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgInterfaceConfig::new() -> Ros2Unitree_goMsgInterfaceConfig {
  Ros2Unitree_goMsgInterfaceConfig:: {
    native_mode: 0U,
    native_value: 0U,
    native_reserve: Array::makei(2, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgInterfaceConfig::max_wire_bytes() -> Int32 {
  4
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgInterfaceConfig::codec_identity() -> String {
  "UWVMROS1_9b96ed6672f6a3e039edb28dec8384cd195116dda929d5ba7be85ef7e7668110"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgInterfaceConfig::write_fields(
  self : Ros2Unitree_goMsgInterfaceConfig,
  writer : Writer,
) -> Unit {
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_value > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_value.to_uint64(), 1)
  if self.native_reserve.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgInterfaceConfig::encode(self : Ros2Unitree_goMsgInterfaceConfig) -> Result[Bytes, Int32] {
  let writer = Writer::new(4)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgInterfaceConfig::read_fields(reader : Reader) -> Ros2Unitree_goMsgInterfaceConfig {
  let native_mode = reader.integer(1).to_uint()
  let native_value = reader.integer(1).to_uint()
  let native_reserve_count = 2
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(1).to_uint())
  }
  Ros2Unitree_goMsgInterfaceConfig:: {
    native_mode,
    native_value,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgInterfaceConfig::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgInterfaceConfig, Int32] {
  if bytes.length() > 4 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgInterfaceConfig::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/LidarState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgLidarState {
  /// @brief Exact native native_stamp field; float64.
  native_stamp : Double
  /// @brief Exact native native_firmware_version field; string.
  native_firmware_version : String
  /// @brief Exact native native_software_version field; string.
  native_software_version : String
  /// @brief Exact native native_sdk_version field; string.
  native_sdk_version : String
  /// @brief Exact native native_sys_rotation_speed field; float32.
  native_sys_rotation_speed : Float
  /// @brief Exact native native_com_rotation_speed field; float32.
  native_com_rotation_speed : Float
  /// @brief Exact native native_error_state field; uint8.
  native_error_state : UInt
  /// @brief Exact native native_cloud_frequency field; float32.
  native_cloud_frequency : Float
  /// @brief Exact native native_cloud_packet_loss_rate field; float32.
  native_cloud_packet_loss_rate : Float
  /// @brief Exact native native_cloud_size field; uint32.
  native_cloud_size : UInt
  /// @brief Exact native native_cloud_scan_num field; uint32.
  native_cloud_scan_num : UInt
  /// @brief Exact native native_imu_frequency field; float32.
  native_imu_frequency : Float
  /// @brief Exact native native_imu_packet_loss_rate field; float32.
  native_imu_packet_loss_rate : Float
  /// @brief Exact native native_imu_rpy field; float32 array.
  native_imu_rpy : Array[Float]
  /// @brief Exact native native_serial_recv_stamp field; float64.
  native_serial_recv_stamp : Double
  /// @brief Exact native native_serial_buffer_size field; uint32.
  native_serial_buffer_size : UInt
  /// @brief Exact native native_serial_buffer_read field; uint32.
  native_serial_buffer_read : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgLidarState::new() -> Ros2Unitree_goMsgLidarState {
  Ros2Unitree_goMsgLidarState:: {
    native_stamp: 0.0,
    native_firmware_version: "",
    native_software_version: "",
    native_sdk_version: "",
    native_sys_rotation_speed: 0.0F,
    native_com_rotation_speed: 0.0F,
    native_error_state: 0U,
    native_cloud_frequency: 0.0F,
    native_cloud_packet_loss_rate: 0.0F,
    native_cloud_size: 0U,
    native_cloud_scan_num: 0U,
    native_imu_frequency: 0.0F,
    native_imu_packet_loss_rate: 0.0F,
    native_imu_rpy: Array::makei(3, fn(_) {
        0.0F
      }),
    native_serial_recv_stamp: 0.0,
    native_serial_buffer_size: 0U,
    native_serial_buffer_read: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 6225 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgLidarState::max_wire_bytes() -> Int32 {
  6225
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgLidarState::codec_identity() -> String {
  "UWVMROS1_51fa49a14899ba99fa5c82385d0dbd4bcf69d4f4d819177d15e34f46ff6006eb"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgLidarState::write_fields(
  self : Ros2Unitree_goMsgLidarState,
  writer : Writer,
) -> Unit {
  if self.native_stamp.is_nan() || self.native_stamp.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(self.native_stamp.reinterpret_as_uint64(), 8)
  writer.text(self.native_firmware_version, 2048)
  writer.text(self.native_software_version, 2048)
  writer.text(self.native_sdk_version, 2048)
  if self.native_sys_rotation_speed.is_nan() || self.native_sys_rotation_speed.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_sys_rotation_speed).to_uint64(), 4)
  if self.native_com_rotation_speed.is_nan() || self.native_com_rotation_speed.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_com_rotation_speed).to_uint64(), 4)
  if self.native_error_state > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_error_state.to_uint64(), 1)
  if self.native_cloud_frequency.is_nan() || self.native_cloud_frequency.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_cloud_frequency).to_uint64(), 4)
  if self.native_cloud_packet_loss_rate.is_nan() || self.native_cloud_packet_loss_rate.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_cloud_packet_loss_rate).to_uint64(), 4)
  writer.integer(self.native_cloud_size.to_uint64(), 4)
  writer.integer(self.native_cloud_scan_num.to_uint64(), 4)
  if self.native_imu_frequency.is_nan() || self.native_imu_frequency.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_imu_frequency).to_uint64(), 4)
  if self.native_imu_packet_loss_rate.is_nan() || self.native_imu_packet_loss_rate.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_imu_packet_loss_rate).to_uint64(), 4)
  if self.native_imu_rpy.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_imu_rpy {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_serial_recv_stamp.is_nan() || self.native_serial_recv_stamp.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(self.native_serial_recv_stamp.reinterpret_as_uint64(), 8)
  writer.integer(self.native_serial_buffer_size.to_uint64(), 4)
  writer.integer(self.native_serial_buffer_read.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgLidarState::encode(self : Ros2Unitree_goMsgLidarState) -> Result[Bytes, Int32] {
  let writer = Writer::new(6225)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgLidarState::read_fields(reader : Reader) -> Ros2Unitree_goMsgLidarState {
  let native_stamp = {
    let value = reader.integer(8).reinterpret_as_double();
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_firmware_version = reader.text(2048)
  let native_software_version = reader.text(2048)
  let native_sdk_version = reader.text(2048)
  let native_sys_rotation_speed = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_com_rotation_speed = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_error_state = reader.integer(1).to_uint()
  let native_cloud_frequency = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_cloud_packet_loss_rate = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_cloud_size = reader.integer(4).to_uint()
  let native_cloud_scan_num = reader.integer(4).to_uint()
  let native_imu_frequency = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_imu_packet_loss_rate = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_imu_rpy_count = 3
  let native_imu_rpy : Array[Float] = []
  for i = 0; i < native_imu_rpy_count; i = i + 1 {
    native_imu_rpy.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_serial_recv_stamp = {
    let value = reader.integer(8).reinterpret_as_double();
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_serial_buffer_size = reader.integer(4).to_uint()
  let native_serial_buffer_read = reader.integer(4).to_uint()
  Ros2Unitree_goMsgLidarState:: {
    native_stamp,
    native_firmware_version,
    native_software_version,
    native_sdk_version,
    native_sys_rotation_speed,
    native_com_rotation_speed,
    native_error_state,
    native_cloud_frequency,
    native_cloud_packet_loss_rate,
    native_cloud_size,
    native_cloud_scan_num,
    native_imu_frequency,
    native_imu_packet_loss_rate,
    native_imu_rpy,
    native_serial_recv_stamp,
    native_serial_buffer_size,
    native_serial_buffer_read,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgLidarState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgLidarState, Int32] {
  if bytes.length() > 6225 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgLidarState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/MotorCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgMotorCmd {
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_q field; float32.
  native_q : Float
  /// @brief Exact native native_dq field; float32.
  native_dq : Float
  /// @brief Exact native native_tau field; float32.
  native_tau : Float
  /// @brief Exact native native_kp field; float32.
  native_kp : Float
  /// @brief Exact native native_kd field; float32.
  native_kd : Float
  /// @brief Exact native native_reserve field; uint32 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgMotorCmd::new() -> Ros2Unitree_goMsgMotorCmd {
  Ros2Unitree_goMsgMotorCmd:: {
    native_mode: 0U,
    native_q: 0.0F,
    native_dq: 0.0F,
    native_tau: 0.0F,
    native_kp: 0.0F,
    native_kd: 0.0F,
    native_reserve: Array::makei(3, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 33 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgMotorCmd::max_wire_bytes() -> Int32 {
  33
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgMotorCmd::codec_identity() -> String {
  "UWVMROS1_e5b88c02a6d339ae4ae2706678a3d82f89904f024b6068f4fd174e1e045b0989"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgMotorCmd::write_fields(
  self : Ros2Unitree_goMsgMotorCmd,
  writer : Writer,
) -> Unit {
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_q.is_nan() || self.native_q.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_q).to_uint64(), 4)
  if self.native_dq.is_nan() || self.native_dq.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_dq).to_uint64(), 4)
  if self.native_tau.is_nan() || self.native_tau.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_tau).to_uint64(), 4)
  if self.native_kp.is_nan() || self.native_kp.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_kp).to_uint64(), 4)
  if self.native_kd.is_nan() || self.native_kd.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_kd).to_uint64(), 4)
  if self.native_reserve.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    writer.integer(item.to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgMotorCmd::encode(self : Ros2Unitree_goMsgMotorCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(33)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgMotorCmd::read_fields(reader : Reader) -> Ros2Unitree_goMsgMotorCmd {
  let native_mode = reader.integer(1).to_uint()
  let native_q = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_dq = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_tau = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_kp = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_kd = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_reserve_count = 3
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(4).to_uint())
  }
  Ros2Unitree_goMsgMotorCmd:: {
    native_mode,
    native_q,
    native_dq,
    native_tau,
    native_kp,
    native_kd,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgMotorCmd::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgMotorCmd, Int32] {
  if bytes.length() > 33 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgMotorCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/LowCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgLowCmd {
  /// @brief Exact native native_head field; uint8 array.
  native_head : Array[UInt]
  /// @brief Exact native native_level_flag field; uint8.
  native_level_flag : UInt
  /// @brief Exact native native_frame_reserve field; uint8.
  native_frame_reserve : UInt
  /// @brief Exact native native_sn field; uint32 array.
  native_sn : Array[UInt]
  /// @brief Exact native native_version field; uint32 array.
  native_version : Array[UInt]
  /// @brief Exact native native_bandwidth field; uint16.
  native_bandwidth : UInt
  /// @brief Exact native native_motor_cmd field; unitree_go/msg/MotorCmd array.
  native_motor_cmd : Array[Ros2Unitree_goMsgMotorCmd]
  /// @brief Exact native native_bms_cmd field; unitree_go/msg/BmsCmd.
  native_bms_cmd : Ros2Unitree_goMsgBmsCmd
  /// @brief Exact native native_wireless_remote field; uint8 array.
  native_wireless_remote : Array[UInt]
  /// @brief Exact native native_led field; uint8 array.
  native_led : Array[UInt]
  /// @brief Exact native native_fan field; uint8 array.
  native_fan : Array[UInt]
  /// @brief Exact native native_gpio field; uint8.
  native_gpio : UInt
  /// @brief Exact native native_reserve field; uint32.
  native_reserve : UInt
  /// @brief Exact native native_crc field; uint32.
  native_crc : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgLowCmd::new() -> Ros2Unitree_goMsgLowCmd {
  Ros2Unitree_goMsgLowCmd:: {
    native_head: Array::makei(2, fn(_) {
        0U
      }),
    native_level_flag: 0U,
    native_frame_reserve: 0U,
    native_sn: Array::makei(2, fn(_) {
        0U
      }),
    native_version: Array::makei(2, fn(_) {
        0U
      }),
    native_bandwidth: 0U,
    native_motor_cmd: Array::makei(20, fn(_) {
        Ros2Unitree_goMsgMotorCmd::new()
      }),
    native_bms_cmd: Ros2Unitree_goMsgBmsCmd::new(),
    native_wireless_remote: Array::makei(40, fn(_) {
        0U
      }),
    native_led: Array::makei(12, fn(_) {
        0U
      }),
    native_fan: Array::makei(2, fn(_) {
        0U
      }),
    native_gpio: 0U,
    native_reserve: 0U,
    native_crc: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 749 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgLowCmd::max_wire_bytes() -> Int32 {
  749
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgLowCmd::codec_identity() -> String {
  "UWVMROS1_efd061d06d38ecc686edb95d1a891c26860b16da1e35747fc97eeaf4a5d93d63"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgLowCmd::write_fields(
  self : Ros2Unitree_goMsgLowCmd,
  writer : Writer,
) -> Unit {
  if self.native_head.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_head {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_level_flag > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_level_flag.to_uint64(), 1)
  if self.native_frame_reserve > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_frame_reserve.to_uint64(), 1)
  if self.native_sn.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_sn {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_version.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_version {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_bandwidth > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_bandwidth.to_uint64(), 2)
  if self.native_motor_cmd.length() != 20 {
    writer.status = 22;
    return
  }
  for item in self.native_motor_cmd {
    item.write_fields(writer)
  }
  self.native_bms_cmd.write_fields(writer)
  if self.native_wireless_remote.length() != 40 {
    writer.status = 22;
    return
  }
  for item in self.native_wireless_remote {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_led.length() != 12 {
    writer.status = 22;
    return
  }
  for item in self.native_led {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_fan.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_fan {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_gpio > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_gpio.to_uint64(), 1)
  writer.integer(self.native_reserve.to_uint64(), 4)
  writer.integer(self.native_crc.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgLowCmd::encode(self : Ros2Unitree_goMsgLowCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(749)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgLowCmd::read_fields(reader : Reader) -> Ros2Unitree_goMsgLowCmd {
  let native_head_count = 2
  let native_head : Array[UInt] = []
  for i = 0; i < native_head_count; i = i + 1 {
    native_head.push(reader.integer(1).to_uint())
  }
  let native_level_flag = reader.integer(1).to_uint()
  let native_frame_reserve = reader.integer(1).to_uint()
  let native_sn_count = 2
  let native_sn : Array[UInt] = []
  for i = 0; i < native_sn_count; i = i + 1 {
    native_sn.push(reader.integer(4).to_uint())
  }
  let native_version_count = 2
  let native_version : Array[UInt] = []
  for i = 0; i < native_version_count; i = i + 1 {
    native_version.push(reader.integer(4).to_uint())
  }
  let native_bandwidth = reader.integer(2).to_uint()
  let native_motor_cmd_count = 20
  let native_motor_cmd : Array[Ros2Unitree_goMsgMotorCmd] = []
  for i = 0; i < native_motor_cmd_count; i = i + 1 {
    native_motor_cmd.push(Ros2Unitree_goMsgMotorCmd::read_fields(reader))
  }
  let native_bms_cmd = Ros2Unitree_goMsgBmsCmd::read_fields(reader)
  let native_wireless_remote_count = 40
  let native_wireless_remote : Array[UInt] = []
  for i = 0; i < native_wireless_remote_count; i = i + 1 {
    native_wireless_remote.push(reader.integer(1).to_uint())
  }
  let native_led_count = 12
  let native_led : Array[UInt] = []
  for i = 0; i < native_led_count; i = i + 1 {
    native_led.push(reader.integer(1).to_uint())
  }
  let native_fan_count = 2
  let native_fan : Array[UInt] = []
  for i = 0; i < native_fan_count; i = i + 1 {
    native_fan.push(reader.integer(1).to_uint())
  }
  let native_gpio = reader.integer(1).to_uint()
  let native_reserve = reader.integer(4).to_uint()
  let native_crc = reader.integer(4).to_uint()
  Ros2Unitree_goMsgLowCmd:: {
    native_head,
    native_level_flag,
    native_frame_reserve,
    native_sn,
    native_version,
    native_bandwidth,
    native_motor_cmd,
    native_bms_cmd,
    native_wireless_remote,
    native_led,
    native_fan,
    native_gpio,
    native_reserve,
    native_crc,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgLowCmd::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgLowCmd, Int32] {
  if bytes.length() > 749 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgLowCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/MotorState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgMotorState {
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_q field; float32.
  native_q : Float
  /// @brief Exact native native_dq field; float32.
  native_dq : Float
  /// @brief Exact native native_ddq field; float32.
  native_ddq : Float
  /// @brief Exact native native_tau_est field; float32.
  native_tau_est : Float
  /// @brief Exact native native_q_raw field; float32.
  native_q_raw : Float
  /// @brief Exact native native_dq_raw field; float32.
  native_dq_raw : Float
  /// @brief Exact native native_ddq_raw field; float32.
  native_ddq_raw : Float
  /// @brief Exact native native_temperature field; int8.
  native_temperature : Int32
  /// @brief Exact native native_lost field; uint32.
  native_lost : UInt
  /// @brief Exact native native_reserve field; uint32 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgMotorState::new() -> Ros2Unitree_goMsgMotorState {
  Ros2Unitree_goMsgMotorState:: {
    native_mode: 0U,
    native_q: 0.0F,
    native_dq: 0.0F,
    native_ddq: 0.0F,
    native_tau_est: 0.0F,
    native_q_raw: 0.0F,
    native_dq_raw: 0.0F,
    native_ddq_raw: 0.0F,
    native_temperature: 0,
    native_lost: 0U,
    native_reserve: Array::makei(2, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 42 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgMotorState::max_wire_bytes() -> Int32 {
  42
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgMotorState::codec_identity() -> String {
  "UWVMROS1_b0b5e638b9fd9eec6d0019422d417f80c60e61d47f4750fe9adac8c5084a2a62"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgMotorState::write_fields(
  self : Ros2Unitree_goMsgMotorState,
  writer : Writer,
) -> Unit {
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_q.is_nan() || self.native_q.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_q).to_uint64(), 4)
  if self.native_dq.is_nan() || self.native_dq.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_dq).to_uint64(), 4)
  if self.native_ddq.is_nan() || self.native_ddq.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_ddq).to_uint64(), 4)
  if self.native_tau_est.is_nan() || self.native_tau_est.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_tau_est).to_uint64(), 4)
  if self.native_q_raw.is_nan() || self.native_q_raw.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_q_raw).to_uint64(), 4)
  if self.native_dq_raw.is_nan() || self.native_dq_raw.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_dq_raw).to_uint64(), 4)
  if self.native_ddq_raw.is_nan() || self.native_ddq_raw.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_ddq_raw).to_uint64(), 4)
  if self.native_temperature < -128 || self.native_temperature > 127 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_temperature.to_uint64(), 1)
  writer.integer(self.native_lost.to_uint64(), 4)
  if self.native_reserve.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    writer.integer(item.to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgMotorState::encode(self : Ros2Unitree_goMsgMotorState) -> Result[Bytes, Int32] {
  let writer = Writer::new(42)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgMotorState::read_fields(reader : Reader) -> Ros2Unitree_goMsgMotorState {
  let native_mode = reader.integer(1).to_uint()
  let native_q = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_dq = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_ddq = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_tau_est = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_q_raw = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_dq_raw = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_ddq_raw = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_temperature = ((reader.integer(1).to_int() << 24) >> 24)
  let native_lost = reader.integer(4).to_uint()
  let native_reserve_count = 2
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(4).to_uint())
  }
  Ros2Unitree_goMsgMotorState:: {
    native_mode,
    native_q,
    native_dq,
    native_ddq,
    native_tau_est,
    native_q_raw,
    native_dq_raw,
    native_ddq_raw,
    native_temperature,
    native_lost,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgMotorState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgMotorState, Int32] {
  if bytes.length() > 42 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgMotorState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/LowState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgLowState {
  /// @brief Exact native native_head field; uint8 array.
  native_head : Array[UInt]
  /// @brief Exact native native_level_flag field; uint8.
  native_level_flag : UInt
  /// @brief Exact native native_frame_reserve field; uint8.
  native_frame_reserve : UInt
  /// @brief Exact native native_sn field; uint32 array.
  native_sn : Array[UInt]
  /// @brief Exact native native_version field; uint32 array.
  native_version : Array[UInt]
  /// @brief Exact native native_bandwidth field; uint16.
  native_bandwidth : UInt
  /// @brief Exact native native_imu_state field; unitree_go/msg/IMUState.
  native_imu_state : Ros2Unitree_goMsgIMUState
  /// @brief Exact native native_motor_state field; unitree_go/msg/MotorState array.
  native_motor_state : Array[Ros2Unitree_goMsgMotorState]
  /// @brief Exact native native_bms_state field; unitree_go/msg/BmsState.
  native_bms_state : Ros2Unitree_goMsgBmsState
  /// @brief Exact native native_foot_force field; int16 array.
  native_foot_force : Array[Int32]
  /// @brief Exact native native_foot_force_est field; int16 array.
  native_foot_force_est : Array[Int32]
  /// @brief Exact native native_tick field; uint32.
  native_tick : UInt
  /// @brief Exact native native_wireless_remote field; uint8 array.
  native_wireless_remote : Array[UInt]
  /// @brief Exact native native_bit_flag field; uint8.
  native_bit_flag : UInt
  /// @brief Exact native native_adc_reel field; float32.
  native_adc_reel : Float
  /// @brief Exact native native_temperature_ntc1 field; int8.
  native_temperature_ntc1 : Int32
  /// @brief Exact native native_temperature_ntc2 field; int8.
  native_temperature_ntc2 : Int32
  /// @brief Exact native native_power_v field; float32.
  native_power_v : Float
  /// @brief Exact native native_power_a field; float32.
  native_power_a : Float
  /// @brief Exact native native_fan_frequency field; uint16 array.
  native_fan_frequency : Array[UInt]
  /// @brief Exact native native_reserve field; uint32.
  native_reserve : UInt
  /// @brief Exact native native_crc field; uint32.
  native_crc : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgLowState::new() -> Ros2Unitree_goMsgLowState {
  Ros2Unitree_goMsgLowState:: {
    native_head: Array::makei(2, fn(_) {
        0U
      }),
    native_level_flag: 0U,
    native_frame_reserve: 0U,
    native_sn: Array::makei(2, fn(_) {
        0U
      }),
    native_version: Array::makei(2, fn(_) {
        0U
      }),
    native_bandwidth: 0U,
    native_imu_state: Ros2Unitree_goMsgIMUState::new(),
    native_motor_state: Array::makei(20, fn(_) {
        Ros2Unitree_goMsgMotorState::new()
      }),
    native_bms_state: Ros2Unitree_goMsgBmsState::new(),
    native_foot_force: Array::makei(4, fn(_) {
        0
      }),
    native_foot_force_est: Array::makei(4, fn(_) {
        0
      }),
    native_tick: 0U,
    native_wireless_remote: Array::makei(40, fn(_) {
        0U
      }),
    native_bit_flag: 0U,
    native_adc_reel: 0.0F,
    native_temperature_ntc1: 0,
    native_temperature_ntc2: 0,
    native_power_v: 0.0F,
    native_power_a: 0.0F,
    native_fan_frequency: Array::makei(4, fn(_) {
        0U
      }),
    native_reserve: 0U,
    native_crc: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1050 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgLowState::max_wire_bytes() -> Int32 {
  1050
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgLowState::codec_identity() -> String {
  "UWVMROS1_56c01d52b26d7b2ef1fa7475fc8a353777ed6952a6f1ceee01da81f1edad3cab"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgLowState::write_fields(
  self : Ros2Unitree_goMsgLowState,
  writer : Writer,
) -> Unit {
  if self.native_head.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_head {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_level_flag > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_level_flag.to_uint64(), 1)
  if self.native_frame_reserve > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_frame_reserve.to_uint64(), 1)
  if self.native_sn.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_sn {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_version.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_version {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_bandwidth > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_bandwidth.to_uint64(), 2)
  self.native_imu_state.write_fields(writer)
  if self.native_motor_state.length() != 20 {
    writer.status = 22;
    return
  }
  for item in self.native_motor_state {
    item.write_fields(writer)
  }
  self.native_bms_state.write_fields(writer)
  if self.native_foot_force.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_foot_force {
    if item < -32768 || item > 32767 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  if self.native_foot_force_est.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_foot_force_est {
    if item < -32768 || item > 32767 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  writer.integer(self.native_tick.to_uint64(), 4)
  if self.native_wireless_remote.length() != 40 {
    writer.status = 22;
    return
  }
  for item in self.native_wireless_remote {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_bit_flag > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_bit_flag.to_uint64(), 1)
  if self.native_adc_reel.is_nan() || self.native_adc_reel.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_adc_reel).to_uint64(), 4)
  if self.native_temperature_ntc1 < -128 || self.native_temperature_ntc1 > 127 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_temperature_ntc1.to_uint64(), 1)
  if self.native_temperature_ntc2 < -128 || self.native_temperature_ntc2 > 127 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_temperature_ntc2.to_uint64(), 1)
  if self.native_power_v.is_nan() || self.native_power_v.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_power_v).to_uint64(), 4)
  if self.native_power_a.is_nan() || self.native_power_a.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_power_a).to_uint64(), 4)
  if self.native_fan_frequency.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_fan_frequency {
    if item > 65535U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  writer.integer(self.native_reserve.to_uint64(), 4)
  writer.integer(self.native_crc.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgLowState::encode(self : Ros2Unitree_goMsgLowState) -> Result[Bytes, Int32] {
  let writer = Writer::new(1050)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgLowState::read_fields(reader : Reader) -> Ros2Unitree_goMsgLowState {
  let native_head_count = 2
  let native_head : Array[UInt] = []
  for i = 0; i < native_head_count; i = i + 1 {
    native_head.push(reader.integer(1).to_uint())
  }
  let native_level_flag = reader.integer(1).to_uint()
  let native_frame_reserve = reader.integer(1).to_uint()
  let native_sn_count = 2
  let native_sn : Array[UInt] = []
  for i = 0; i < native_sn_count; i = i + 1 {
    native_sn.push(reader.integer(4).to_uint())
  }
  let native_version_count = 2
  let native_version : Array[UInt] = []
  for i = 0; i < native_version_count; i = i + 1 {
    native_version.push(reader.integer(4).to_uint())
  }
  let native_bandwidth = reader.integer(2).to_uint()
  let native_imu_state = Ros2Unitree_goMsgIMUState::read_fields(reader)
  let native_motor_state_count = 20
  let native_motor_state : Array[Ros2Unitree_goMsgMotorState] = []
  for i = 0; i < native_motor_state_count; i = i + 1 {
    native_motor_state.push(Ros2Unitree_goMsgMotorState::read_fields(reader))
  }
  let native_bms_state = Ros2Unitree_goMsgBmsState::read_fields(reader)
  let native_foot_force_count = 4
  let native_foot_force : Array[Int32] = []
  for i = 0; i < native_foot_force_count; i = i + 1 {
    native_foot_force.push(((reader.integer(2).to_int() << 16) >> 16))
  }
  let native_foot_force_est_count = 4
  let native_foot_force_est : Array[Int32] = []
  for i = 0; i < native_foot_force_est_count; i = i + 1 {
    native_foot_force_est.push(((reader.integer(2).to_int() << 16) >> 16))
  }
  let native_tick = reader.integer(4).to_uint()
  let native_wireless_remote_count = 40
  let native_wireless_remote : Array[UInt] = []
  for i = 0; i < native_wireless_remote_count; i = i + 1 {
    native_wireless_remote.push(reader.integer(1).to_uint())
  }
  let native_bit_flag = reader.integer(1).to_uint()
  let native_adc_reel = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_temperature_ntc1 = ((reader.integer(1).to_int() << 24) >> 24)
  let native_temperature_ntc2 = ((reader.integer(1).to_int() << 24) >> 24)
  let native_power_v = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_power_a = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_fan_frequency_count = 4
  let native_fan_frequency : Array[UInt] = []
  for i = 0; i < native_fan_frequency_count; i = i + 1 {
    native_fan_frequency.push(reader.integer(2).to_uint())
  }
  let native_reserve = reader.integer(4).to_uint()
  let native_crc = reader.integer(4).to_uint()
  Ros2Unitree_goMsgLowState:: {
    native_head,
    native_level_flag,
    native_frame_reserve,
    native_sn,
    native_version,
    native_bandwidth,
    native_imu_state,
    native_motor_state,
    native_bms_state,
    native_foot_force,
    native_foot_force_est,
    native_tick,
    native_wireless_remote,
    native_bit_flag,
    native_adc_reel,
    native_temperature_ntc1,
    native_temperature_ntc2,
    native_power_v,
    native_power_a,
    native_fan_frequency,
    native_reserve,
    native_crc,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgLowState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgLowState, Int32] {
  if bytes.length() > 1050 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgLowState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/MotorCmds.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgMotorCmds {
  /// @brief Exact native native_cmds field; unitree_go/msg/MotorCmd sequence.
  native_cmds : Array[Ros2Unitree_goMsgMotorCmd]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgMotorCmds::new() -> Ros2Unitree_goMsgMotorCmds {
  Ros2Unitree_goMsgMotorCmds:: {
    native_cmds: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1060 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgMotorCmds::max_wire_bytes() -> Int32 {
  1060
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgMotorCmds::codec_identity() -> String {
  "UWVMROS1_d197f3b4853bb06c2379f66e8223dc0807345e8a9c0ce12bb3c6d39e42a7bfb3"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgMotorCmds::write_fields(
  self : Ros2Unitree_goMsgMotorCmds,
  writer : Writer,
) -> Unit {
  if self.native_cmds.length() > 32 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_cmds.length().to_uint64(), 4)
  for item in self.native_cmds {
    item.write_fields(writer)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgMotorCmds::encode(self : Ros2Unitree_goMsgMotorCmds) -> Result[Bytes, Int32] {
  let writer = Writer::new(1060)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgMotorCmds::read_fields(reader : Reader) -> Ros2Unitree_goMsgMotorCmds {
  let native_cmds_count = reader.count(32)
  let native_cmds : Array[Ros2Unitree_goMsgMotorCmd] = []
  for i = 0; i < native_cmds_count; i = i + 1 {
    native_cmds.push(Ros2Unitree_goMsgMotorCmd::read_fields(reader))
  }
  Ros2Unitree_goMsgMotorCmds:: {
    native_cmds,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgMotorCmds::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgMotorCmds, Int32] {
  if bytes.length() > 1060 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgMotorCmds::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/MotorStates.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgMotorStates {
  /// @brief Exact native native_states field; unitree_go/msg/MotorState sequence.
  native_states : Array[Ros2Unitree_goMsgMotorState]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgMotorStates::new() -> Ros2Unitree_goMsgMotorStates {
  Ros2Unitree_goMsgMotorStates:: {
    native_states: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1348 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgMotorStates::max_wire_bytes() -> Int32 {
  1348
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgMotorStates::codec_identity() -> String {
  "UWVMROS1_0280c49a47d3e308c9026dd1d066ad6cf790b30630e075e31f16f26fa0529d3e"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgMotorStates::write_fields(
  self : Ros2Unitree_goMsgMotorStates,
  writer : Writer,
) -> Unit {
  if self.native_states.length() > 32 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_states.length().to_uint64(), 4)
  for item in self.native_states {
    item.write_fields(writer)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgMotorStates::encode(self : Ros2Unitree_goMsgMotorStates) -> Result[Bytes, Int32] {
  let writer = Writer::new(1348)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgMotorStates::read_fields(reader : Reader) -> Ros2Unitree_goMsgMotorStates {
  let native_states_count = reader.count(32)
  let native_states : Array[Ros2Unitree_goMsgMotorState] = []
  for i = 0; i < native_states_count; i = i + 1 {
    native_states.push(Ros2Unitree_goMsgMotorState::read_fields(reader))
  }
  Ros2Unitree_goMsgMotorStates:: {
    native_states,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgMotorStates::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgMotorStates, Int32] {
  if bytes.length() > 1348 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgMotorStates::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/PathPoint.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgPathPoint {
  /// @brief Exact native native_t_from_start field; float32.
  native_t_from_start : Float
  /// @brief Exact native native_x field; float32.
  native_x : Float
  /// @brief Exact native native_y field; float32.
  native_y : Float
  /// @brief Exact native native_yaw field; float32.
  native_yaw : Float
  /// @brief Exact native native_vx field; float32.
  native_vx : Float
  /// @brief Exact native native_vy field; float32.
  native_vy : Float
  /// @brief Exact native native_vyaw field; float32.
  native_vyaw : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgPathPoint::new() -> Ros2Unitree_goMsgPathPoint {
  Ros2Unitree_goMsgPathPoint:: {
    native_t_from_start: 0.0F,
    native_x: 0.0F,
    native_y: 0.0F,
    native_yaw: 0.0F,
    native_vx: 0.0F,
    native_vy: 0.0F,
    native_vyaw: 0.0F,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 28 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgPathPoint::max_wire_bytes() -> Int32 {
  28
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgPathPoint::codec_identity() -> String {
  "UWVMROS1_35eb1cc629dcecbace17b342029c287310c30d4e6d988740bf2c212a1251cee4"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgPathPoint::write_fields(
  self : Ros2Unitree_goMsgPathPoint,
  writer : Writer,
) -> Unit {
  if self.native_t_from_start.is_nan() || self.native_t_from_start.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_t_from_start).to_uint64(), 4)
  if self.native_x.is_nan() || self.native_x.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_x).to_uint64(), 4)
  if self.native_y.is_nan() || self.native_y.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_y).to_uint64(), 4)
  if self.native_yaw.is_nan() || self.native_yaw.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_yaw).to_uint64(), 4)
  if self.native_vx.is_nan() || self.native_vx.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_vx).to_uint64(), 4)
  if self.native_vy.is_nan() || self.native_vy.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_vy).to_uint64(), 4)
  if self.native_vyaw.is_nan() || self.native_vyaw.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_vyaw).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgPathPoint::encode(self : Ros2Unitree_goMsgPathPoint) -> Result[Bytes, Int32] {
  let writer = Writer::new(28)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgPathPoint::read_fields(reader : Reader) -> Ros2Unitree_goMsgPathPoint {
  let native_t_from_start = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_x = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_y = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_yaw = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_vx = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_vy = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_vyaw = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  Ros2Unitree_goMsgPathPoint:: {
    native_t_from_start,
    native_x,
    native_y,
    native_yaw,
    native_vx,
    native_vy,
    native_vyaw,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgPathPoint::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgPathPoint, Int32] {
  if bytes.length() > 28 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgPathPoint::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/Req.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgReq {
  /// @brief Exact native native_uuid field; string.
  native_uuid : String
  /// @brief Exact native native_body field; string.
  native_body : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgReq::new() -> Ros2Unitree_goMsgReq {
  Ros2Unitree_goMsgReq:: {
    native_uuid: "",
    native_body: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4104 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgReq::max_wire_bytes() -> Int32 {
  4104
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgReq::codec_identity() -> String {
  "UWVMROS1_eff40bce6ab17bd2781e77b07b2f43cfb4574654561aa96ebae4e19ecb4966d8"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgReq::write_fields(
  self : Ros2Unitree_goMsgReq,
  writer : Writer,
) -> Unit {
  writer.text(self.native_uuid, 2048)
  writer.text(self.native_body, 2048)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgReq::encode(self : Ros2Unitree_goMsgReq) -> Result[Bytes, Int32] {
  let writer = Writer::new(4104)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgReq::read_fields(reader : Reader) -> Ros2Unitree_goMsgReq {
  let native_uuid = reader.text(2048)
  let native_body = reader.text(2048)
  Ros2Unitree_goMsgReq:: {
    native_uuid,
    native_body,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgReq::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgReq, Int32] {
  if bytes.length() > 4104 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgReq::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/Res.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgRes {
  /// @brief Exact native native_uuid field; string.
  native_uuid : String
  /// @brief Exact native native_data field; uint8 sequence.
  native_data : Array[UInt]
  /// @brief Exact native native_body field; string.
  native_body : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgRes::new() -> Ros2Unitree_goMsgRes {
  Ros2Unitree_goMsgRes:: {
    native_uuid: "",
    native_data: [],
    native_body: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 6156 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgRes::max_wire_bytes() -> Int32 {
  6156
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgRes::codec_identity() -> String {
  "UWVMROS1_b18c13e825767a66420c5a03464d38f0d18058e532654a8079f2f60a82cf4963"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgRes::write_fields(
  self : Ros2Unitree_goMsgRes,
  writer : Writer,
) -> Unit {
  writer.text(self.native_uuid, 2048)
  if self.native_data.length() > 2048 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_data.length().to_uint64(), 4)
  for item in self.native_data {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  writer.text(self.native_body, 2048)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgRes::encode(self : Ros2Unitree_goMsgRes) -> Result[Bytes, Int32] {
  let writer = Writer::new(6156)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgRes::read_fields(reader : Reader) -> Ros2Unitree_goMsgRes {
  let native_uuid = reader.text(2048)
  let native_data_count = reader.count(2048)
  let native_data : Array[UInt] = []
  for i = 0; i < native_data_count; i = i + 1 {
    native_data.push(reader.integer(1).to_uint())
  }
  let native_body = reader.text(2048)
  Ros2Unitree_goMsgRes:: {
    native_uuid,
    native_data,
    native_body,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgRes::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgRes, Int32] {
  if bytes.length() > 6156 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgRes::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/SportModeCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgSportModeCmd {
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_gait_type field; uint8.
  native_gait_type : UInt
  /// @brief Exact native native_speed_level field; uint8.
  native_speed_level : UInt
  /// @brief Exact native native_foot_raise_height field; float32.
  native_foot_raise_height : Float
  /// @brief Exact native native_body_height field; float32.
  native_body_height : Float
  /// @brief Exact native native_position field; float32 array.
  native_position : Array[Float]
  /// @brief Exact native native_euler field; float32 array.
  native_euler : Array[Float]
  /// @brief Exact native native_velocity field; float32 array.
  native_velocity : Array[Float]
  /// @brief Exact native native_yaw_speed field; float32.
  native_yaw_speed : Float
  /// @brief Exact native native_bms_cmd field; unitree_go/msg/BmsCmd.
  native_bms_cmd : Ros2Unitree_goMsgBmsCmd
  /// @brief Exact native native_path_point field; unitree_go/msg/PathPoint array.
  native_path_point : Array[Ros2Unitree_goMsgPathPoint]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgSportModeCmd::new() -> Ros2Unitree_goMsgSportModeCmd {
  Ros2Unitree_goMsgSportModeCmd:: {
    native_mode: 0U,
    native_gait_type: 0U,
    native_speed_level: 0U,
    native_foot_raise_height: 0.0F,
    native_body_height: 0.0F,
    native_position: Array::makei(2, fn(_) {
        0.0F
      }),
    native_euler: Array::makei(3, fn(_) {
        0.0F
      }),
    native_velocity: Array::makei(2, fn(_) {
        0.0F
      }),
    native_yaw_speed: 0.0F,
    native_bms_cmd: Ros2Unitree_goMsgBmsCmd::new(),
    native_path_point: Array::makei(30, fn(_) {
        Ros2Unitree_goMsgPathPoint::new()
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 887 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgSportModeCmd::max_wire_bytes() -> Int32 {
  887
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgSportModeCmd::codec_identity() -> String {
  "UWVMROS1_cf90a065007b9b8cedde3f0b58aa79da3b39a1456dc1b5297f4fe799d92ff22c"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgSportModeCmd::write_fields(
  self : Ros2Unitree_goMsgSportModeCmd,
  writer : Writer,
) -> Unit {
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_gait_type > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_gait_type.to_uint64(), 1)
  if self.native_speed_level > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_speed_level.to_uint64(), 1)
  if self.native_foot_raise_height.is_nan() || self.native_foot_raise_height.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_foot_raise_height).to_uint64(), 4)
  if self.native_body_height.is_nan() || self.native_body_height.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_body_height).to_uint64(), 4)
  if self.native_position.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_position {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_euler.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_euler {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_velocity.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_velocity {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_yaw_speed.is_nan() || self.native_yaw_speed.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_yaw_speed).to_uint64(), 4)
  self.native_bms_cmd.write_fields(writer)
  if self.native_path_point.length() != 30 {
    writer.status = 22;
    return
  }
  for item in self.native_path_point {
    item.write_fields(writer)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgSportModeCmd::encode(self : Ros2Unitree_goMsgSportModeCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(887)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgSportModeCmd::read_fields(reader : Reader) -> Ros2Unitree_goMsgSportModeCmd {
  let native_mode = reader.integer(1).to_uint()
  let native_gait_type = reader.integer(1).to_uint()
  let native_speed_level = reader.integer(1).to_uint()
  let native_foot_raise_height = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_body_height = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_position_count = 2
  let native_position : Array[Float] = []
  for i = 0; i < native_position_count; i = i + 1 {
    native_position.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_euler_count = 3
  let native_euler : Array[Float] = []
  for i = 0; i < native_euler_count; i = i + 1 {
    native_euler.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_velocity_count = 2
  let native_velocity : Array[Float] = []
  for i = 0; i < native_velocity_count; i = i + 1 {
    native_velocity.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_yaw_speed = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_bms_cmd = Ros2Unitree_goMsgBmsCmd::read_fields(reader)
  let native_path_point_count = 30
  let native_path_point : Array[Ros2Unitree_goMsgPathPoint] = []
  for i = 0; i < native_path_point_count; i = i + 1 {
    native_path_point.push(Ros2Unitree_goMsgPathPoint::read_fields(reader))
  }
  Ros2Unitree_goMsgSportModeCmd:: {
    native_mode,
    native_gait_type,
    native_speed_level,
    native_foot_raise_height,
    native_body_height,
    native_position,
    native_euler,
    native_velocity,
    native_yaw_speed,
    native_bms_cmd,
    native_path_point,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgSportModeCmd::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgSportModeCmd, Int32] {
  if bytes.length() > 887 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgSportModeCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/TimeSpec.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgTimeSpec {
  /// @brief Exact native native_sec field; int32.
  native_sec : Int32
  /// @brief Exact native native_nanosec field; uint32.
  native_nanosec : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgTimeSpec::new() -> Ros2Unitree_goMsgTimeSpec {
  Ros2Unitree_goMsgTimeSpec:: {
    native_sec: 0,
    native_nanosec: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 8 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgTimeSpec::max_wire_bytes() -> Int32 {
  8
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgTimeSpec::codec_identity() -> String {
  "UWVMROS1_9ad3c6ed5a9ff0bba22593b50e1d777ae2f63480a01a744d777ee6b7dad0ecc4"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgTimeSpec::write_fields(
  self : Ros2Unitree_goMsgTimeSpec,
  writer : Writer,
) -> Unit {
  writer.integer(self.native_sec.to_uint64(), 4)
  writer.integer(self.native_nanosec.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgTimeSpec::encode(self : Ros2Unitree_goMsgTimeSpec) -> Result[Bytes, Int32] {
  let writer = Writer::new(8)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgTimeSpec::read_fields(reader : Reader) -> Ros2Unitree_goMsgTimeSpec {
  let native_sec = reader.integer(4).to_int()
  let native_nanosec = reader.integer(4).to_uint()
  Ros2Unitree_goMsgTimeSpec:: {
    native_sec,
    native_nanosec,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgTimeSpec::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgTimeSpec, Int32] {
  if bytes.length() > 8 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgTimeSpec::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/SportModeState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgSportModeState {
  /// @brief Exact native native_stamp field; unitree_go/msg/TimeSpec.
  native_stamp : Ros2Unitree_goMsgTimeSpec
  /// @brief Exact native native_error_code field; uint32.
  native_error_code : UInt
  /// @brief Exact native native_imu_state field; unitree_go/msg/IMUState.
  native_imu_state : Ros2Unitree_goMsgIMUState
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_progress field; float32.
  native_progress : Float
  /// @brief Exact native native_gait_type field; uint8.
  native_gait_type : UInt
  /// @brief Exact native native_foot_raise_height field; float32.
  native_foot_raise_height : Float
  /// @brief Exact native native_position field; float32 array.
  native_position : Array[Float]
  /// @brief Exact native native_body_height field; float32.
  native_body_height : Float
  /// @brief Exact native native_velocity field; float32 array.
  native_velocity : Array[Float]
  /// @brief Exact native native_yaw_speed field; float32.
  native_yaw_speed : Float
  /// @brief Exact native native_range_obstacle field; float32 array.
  native_range_obstacle : Array[Float]
  /// @brief Exact native native_foot_force field; int16 array.
  native_foot_force : Array[Int32]
  /// @brief Exact native native_foot_position_body field; float32 array.
  native_foot_position_body : Array[Float]
  /// @brief Exact native native_foot_speed_body field; float32 array.
  native_foot_speed_body : Array[Float]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgSportModeState::new() -> Ros2Unitree_goMsgSportModeState {
  Ros2Unitree_goMsgSportModeState:: {
    native_stamp: Ros2Unitree_goMsgTimeSpec::new(),
    native_error_code: 0U,
    native_imu_state: Ros2Unitree_goMsgIMUState::new(),
    native_mode: 0U,
    native_progress: 0.0F,
    native_gait_type: 0U,
    native_foot_raise_height: 0.0F,
    native_position: Array::makei(3, fn(_) {
        0.0F
      }),
    native_body_height: 0.0F,
    native_velocity: Array::makei(3, fn(_) {
        0.0F
      }),
    native_yaw_speed: 0.0F,
    native_range_obstacle: Array::makei(4, fn(_) {
        0.0F
      }),
    native_foot_force: Array::makei(4, fn(_) {
        0
      }),
    native_foot_position_body: Array::makei(12, fn(_) {
        0.0F
      }),
    native_foot_speed_body: Array::makei(12, fn(_) {
        0.0F
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 227 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgSportModeState::max_wire_bytes() -> Int32 {
  227
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgSportModeState::codec_identity() -> String {
  "UWVMROS1_2935b9d838087267840b379582862a15c2e1a72fe8ad2bcbf8f19af2f8054760"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgSportModeState::write_fields(
  self : Ros2Unitree_goMsgSportModeState,
  writer : Writer,
) -> Unit {
  self.native_stamp.write_fields(writer)
  writer.integer(self.native_error_code.to_uint64(), 4)
  self.native_imu_state.write_fields(writer)
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_progress.is_nan() || self.native_progress.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_progress).to_uint64(), 4)
  if self.native_gait_type > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_gait_type.to_uint64(), 1)
  if self.native_foot_raise_height.is_nan() || self.native_foot_raise_height.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_foot_raise_height).to_uint64(), 4)
  if self.native_position.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_position {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_body_height.is_nan() || self.native_body_height.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_body_height).to_uint64(), 4)
  if self.native_velocity.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_velocity {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_yaw_speed.is_nan() || self.native_yaw_speed.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_yaw_speed).to_uint64(), 4)
  if self.native_range_obstacle.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_range_obstacle {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_foot_force.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_foot_force {
    if item < -32768 || item > 32767 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  if self.native_foot_position_body.length() != 12 {
    writer.status = 22;
    return
  }
  for item in self.native_foot_position_body {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_foot_speed_body.length() != 12 {
    writer.status = 22;
    return
  }
  for item in self.native_foot_speed_body {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgSportModeState::encode(self : Ros2Unitree_goMsgSportModeState) -> Result[Bytes, Int32] {
  let writer = Writer::new(227)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgSportModeState::read_fields(reader : Reader) -> Ros2Unitree_goMsgSportModeState {
  let native_stamp = Ros2Unitree_goMsgTimeSpec::read_fields(reader)
  let native_error_code = reader.integer(4).to_uint()
  let native_imu_state = Ros2Unitree_goMsgIMUState::read_fields(reader)
  let native_mode = reader.integer(1).to_uint()
  let native_progress = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_gait_type = reader.integer(1).to_uint()
  let native_foot_raise_height = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_position_count = 3
  let native_position : Array[Float] = []
  for i = 0; i < native_position_count; i = i + 1 {
    native_position.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_body_height = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_velocity_count = 3
  let native_velocity : Array[Float] = []
  for i = 0; i < native_velocity_count; i = i + 1 {
    native_velocity.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_yaw_speed = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_range_obstacle_count = 4
  let native_range_obstacle : Array[Float] = []
  for i = 0; i < native_range_obstacle_count; i = i + 1 {
    native_range_obstacle.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_foot_force_count = 4
  let native_foot_force : Array[Int32] = []
  for i = 0; i < native_foot_force_count; i = i + 1 {
    native_foot_force.push(((reader.integer(2).to_int() << 16) >> 16))
  }
  let native_foot_position_body_count = 12
  let native_foot_position_body : Array[Float] = []
  for i = 0; i < native_foot_position_body_count; i = i + 1 {
    native_foot_position_body.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_foot_speed_body_count = 12
  let native_foot_speed_body : Array[Float] = []
  for i = 0; i < native_foot_speed_body_count; i = i + 1 {
    native_foot_speed_body.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  Ros2Unitree_goMsgSportModeState:: {
    native_stamp,
    native_error_code,
    native_imu_state,
    native_mode,
    native_progress,
    native_gait_type,
    native_foot_raise_height,
    native_position,
    native_body_height,
    native_velocity,
    native_yaw_speed,
    native_range_obstacle,
    native_foot_force,
    native_foot_position_body,
    native_foot_speed_body,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgSportModeState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgSportModeState, Int32] {
  if bytes.length() > 227 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgSportModeState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/UwbState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgUwbState {
  /// @brief Exact native native_version field; uint8 array.
  native_version : Array[UInt]
  /// @brief Exact native native_channel field; uint8.
  native_channel : UInt
  /// @brief Exact native native_joy_mode field; uint8.
  native_joy_mode : UInt
  /// @brief Exact native native_orientation_est field; float32.
  native_orientation_est : Float
  /// @brief Exact native native_pitch_est field; float32.
  native_pitch_est : Float
  /// @brief Exact native native_distance_est field; float32.
  native_distance_est : Float
  /// @brief Exact native native_yaw_est field; float32.
  native_yaw_est : Float
  /// @brief Exact native native_tag_roll field; float32.
  native_tag_roll : Float
  /// @brief Exact native native_tag_pitch field; float32.
  native_tag_pitch : Float
  /// @brief Exact native native_tag_yaw field; float32.
  native_tag_yaw : Float
  /// @brief Exact native native_base_roll field; float32.
  native_base_roll : Float
  /// @brief Exact native native_base_pitch field; float32.
  native_base_pitch : Float
  /// @brief Exact native native_base_yaw field; float32.
  native_base_yaw : Float
  /// @brief Exact native native_joystick field; float32 array.
  native_joystick : Array[Float]
  /// @brief Exact native native_error_state field; uint8.
  native_error_state : UInt
  /// @brief Exact native native_buttons field; uint8.
  native_buttons : UInt
  /// @brief Exact native native_enabled_from_app field; uint8.
  native_enabled_from_app : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgUwbState::new() -> Ros2Unitree_goMsgUwbState {
  Ros2Unitree_goMsgUwbState:: {
    native_version: Array::makei(2, fn(_) {
        0U
      }),
    native_channel: 0U,
    native_joy_mode: 0U,
    native_orientation_est: 0.0F,
    native_pitch_est: 0.0F,
    native_distance_est: 0.0F,
    native_yaw_est: 0.0F,
    native_tag_roll: 0.0F,
    native_tag_pitch: 0.0F,
    native_tag_yaw: 0.0F,
    native_base_roll: 0.0F,
    native_base_pitch: 0.0F,
    native_base_yaw: 0.0F,
    native_joystick: Array::makei(2, fn(_) {
        0.0F
      }),
    native_error_state: 0U,
    native_buttons: 0U,
    native_enabled_from_app: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 55 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgUwbState::max_wire_bytes() -> Int32 {
  55
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgUwbState::codec_identity() -> String {
  "UWVMROS1_017fbafd61a006aeaf6cb80456ac89f429d30a562da2e0d394c6cfb406e61a34"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgUwbState::write_fields(
  self : Ros2Unitree_goMsgUwbState,
  writer : Writer,
) -> Unit {
  if self.native_version.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_version {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_channel > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_channel.to_uint64(), 1)
  if self.native_joy_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_joy_mode.to_uint64(), 1)
  if self.native_orientation_est.is_nan() || self.native_orientation_est.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_orientation_est).to_uint64(), 4)
  if self.native_pitch_est.is_nan() || self.native_pitch_est.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_pitch_est).to_uint64(), 4)
  if self.native_distance_est.is_nan() || self.native_distance_est.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_distance_est).to_uint64(), 4)
  if self.native_yaw_est.is_nan() || self.native_yaw_est.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_yaw_est).to_uint64(), 4)
  if self.native_tag_roll.is_nan() || self.native_tag_roll.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_tag_roll).to_uint64(), 4)
  if self.native_tag_pitch.is_nan() || self.native_tag_pitch.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_tag_pitch).to_uint64(), 4)
  if self.native_tag_yaw.is_nan() || self.native_tag_yaw.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_tag_yaw).to_uint64(), 4)
  if self.native_base_roll.is_nan() || self.native_base_roll.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_base_roll).to_uint64(), 4)
  if self.native_base_pitch.is_nan() || self.native_base_pitch.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_base_pitch).to_uint64(), 4)
  if self.native_base_yaw.is_nan() || self.native_base_yaw.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_base_yaw).to_uint64(), 4)
  if self.native_joystick.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_joystick {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_error_state > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_error_state.to_uint64(), 1)
  if self.native_buttons > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_buttons.to_uint64(), 1)
  if self.native_enabled_from_app > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_enabled_from_app.to_uint64(), 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgUwbState::encode(self : Ros2Unitree_goMsgUwbState) -> Result[Bytes, Int32] {
  let writer = Writer::new(55)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgUwbState::read_fields(reader : Reader) -> Ros2Unitree_goMsgUwbState {
  let native_version_count = 2
  let native_version : Array[UInt] = []
  for i = 0; i < native_version_count; i = i + 1 {
    native_version.push(reader.integer(1).to_uint())
  }
  let native_channel = reader.integer(1).to_uint()
  let native_joy_mode = reader.integer(1).to_uint()
  let native_orientation_est = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_pitch_est = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_distance_est = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_yaw_est = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_tag_roll = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_tag_pitch = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_tag_yaw = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_base_roll = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_base_pitch = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_base_yaw = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_joystick_count = 2
  let native_joystick : Array[Float] = []
  for i = 0; i < native_joystick_count; i = i + 1 {
    native_joystick.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_error_state = reader.integer(1).to_uint()
  let native_buttons = reader.integer(1).to_uint()
  let native_enabled_from_app = reader.integer(1).to_uint()
  Ros2Unitree_goMsgUwbState:: {
    native_version,
    native_channel,
    native_joy_mode,
    native_orientation_est,
    native_pitch_est,
    native_distance_est,
    native_yaw_est,
    native_tag_roll,
    native_tag_pitch,
    native_tag_yaw,
    native_base_roll,
    native_base_pitch,
    native_base_yaw,
    native_joystick,
    native_error_state,
    native_buttons,
    native_enabled_from_app,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgUwbState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgUwbState, Int32] {
  if bytes.length() > 55 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgUwbState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/UwbSwitch.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgUwbSwitch {
  /// @brief Exact native native_enabled field; uint8.
  native_enabled : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgUwbSwitch::new() -> Ros2Unitree_goMsgUwbSwitch {
  Ros2Unitree_goMsgUwbSwitch:: {
    native_enabled: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgUwbSwitch::max_wire_bytes() -> Int32 {
  1
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgUwbSwitch::codec_identity() -> String {
  "UWVMROS1_4546618797829b3911d1533d8d6bacc9da969d40d7752424de34bbd3de4bede5"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgUwbSwitch::write_fields(
  self : Ros2Unitree_goMsgUwbSwitch,
  writer : Writer,
) -> Unit {
  if self.native_enabled > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_enabled.to_uint64(), 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgUwbSwitch::encode(self : Ros2Unitree_goMsgUwbSwitch) -> Result[Bytes, Int32] {
  let writer = Writer::new(1)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgUwbSwitch::read_fields(reader : Reader) -> Ros2Unitree_goMsgUwbSwitch {
  let native_enabled = reader.integer(1).to_uint()
  Ros2Unitree_goMsgUwbSwitch:: {
    native_enabled,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgUwbSwitch::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgUwbSwitch, Int32] {
  if bytes.length() > 1 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgUwbSwitch::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_go/msg/WirelessController.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_goMsgWirelessController {
  /// @brief Exact native native_lx field; float32.
  native_lx : Float
  /// @brief Exact native native_ly field; float32.
  native_ly : Float
  /// @brief Exact native native_rx field; float32.
  native_rx : Float
  /// @brief Exact native native_ry field; float32.
  native_ry : Float
  /// @brief Exact native native_keys field; uint16.
  native_keys : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_goMsgWirelessController::new() -> Ros2Unitree_goMsgWirelessController {
  Ros2Unitree_goMsgWirelessController:: {
    native_lx: 0.0F,
    native_ly: 0.0F,
    native_rx: 0.0F,
    native_ry: 0.0F,
    native_keys: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 18 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_goMsgWirelessController::max_wire_bytes() -> Int32 {
  18
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_goMsgWirelessController::codec_identity() -> String {
  "UWVMROS1_536e69ce5459227cb68b3c6d484a96bfa40e1400aab820f8ad0d0d62ff6ba438"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_goMsgWirelessController::write_fields(
  self : Ros2Unitree_goMsgWirelessController,
  writer : Writer,
) -> Unit {
  if self.native_lx.is_nan() || self.native_lx.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_lx).to_uint64(), 4)
  if self.native_ly.is_nan() || self.native_ly.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_ly).to_uint64(), 4)
  if self.native_rx.is_nan() || self.native_rx.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_rx).to_uint64(), 4)
  if self.native_ry.is_nan() || self.native_ry.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_ry).to_uint64(), 4)
  if self.native_keys > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_keys.to_uint64(), 2)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_goMsgWirelessController::encode(self : Ros2Unitree_goMsgWirelessController) -> Result[Bytes, Int32] {
  let writer = Writer::new(18)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_goMsgWirelessController::read_fields(reader : Reader) -> Ros2Unitree_goMsgWirelessController {
  let native_lx = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_ly = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_rx = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_ry = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_keys = reader.integer(2).to_uint()
  Ros2Unitree_goMsgWirelessController:: {
    native_lx,
    native_ly,
    native_rx,
    native_ry,
    native_keys,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_goMsgWirelessController::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_goMsgWirelessController, Int32] {
  if bytes.length() > 18 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_goMsgWirelessController::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/BmsCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgBmsCmd {
  /// @brief Exact native native_cmd field; uint8.
  native_cmd : UInt
  /// @brief Exact native native_reserve field; uint8 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgBmsCmd::new() -> Ros2Unitree_hgMsgBmsCmd {
  Ros2Unitree_hgMsgBmsCmd:: {
    native_cmd: 0U,
    native_reserve: Array::makei(40, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 41 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgBmsCmd::max_wire_bytes() -> Int32 {
  41
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgBmsCmd::codec_identity() -> String {
  "UWVMROS1_a267c92d22aa04a15f7d68c87b7638b15a368ac973f49a42021dc91f991b13de"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgBmsCmd::write_fields(
  self : Ros2Unitree_hgMsgBmsCmd,
  writer : Writer,
) -> Unit {
  if self.native_cmd > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_cmd.to_uint64(), 1)
  if self.native_reserve.length() != 40 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgBmsCmd::encode(self : Ros2Unitree_hgMsgBmsCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(41)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgBmsCmd::read_fields(reader : Reader) -> Ros2Unitree_hgMsgBmsCmd {
  let native_cmd = reader.integer(1).to_uint()
  let native_reserve_count = 40
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(1).to_uint())
  }
  Ros2Unitree_hgMsgBmsCmd:: {
    native_cmd,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgBmsCmd::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgBmsCmd, Int32] {
  if bytes.length() > 41 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgBmsCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/BmsState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgBmsState {
  /// @brief Exact native native_version_high field; uint8.
  native_version_high : UInt
  /// @brief Exact native native_version_low field; uint8.
  native_version_low : UInt
  /// @brief Exact native native_fn field; uint8.
  native_fn : UInt
  /// @brief Exact native native_cell_vol field; uint16 array.
  native_cell_vol : Array[UInt]
  /// @brief Exact native native_bmsvoltage field; uint32 array.
  native_bmsvoltage : Array[UInt]
  /// @brief Exact native native_current field; int32.
  native_current : Int32
  /// @brief Exact native native_soc field; uint8.
  native_soc : UInt
  /// @brief Exact native native_soh field; uint8.
  native_soh : UInt
  /// @brief Exact native native_temperature field; int16 array.
  native_temperature : Array[Int32]
  /// @brief Exact native native_cycle field; uint16.
  native_cycle : UInt
  /// @brief Exact native native_manufacturer_date field; uint16.
  native_manufacturer_date : UInt
  /// @brief Exact native native_bmsstate field; uint32 array.
  native_bmsstate : Array[UInt]
  /// @brief Exact native native_reserve field; uint32 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgBmsState::new() -> Ros2Unitree_hgMsgBmsState {
  Ros2Unitree_hgMsgBmsState:: {
    native_version_high: 0U,
    native_version_low: 0U,
    native_fn: 0U,
    native_cell_vol: Array::makei(40, fn(_) {
        0U
      }),
    native_bmsvoltage: Array::makei(3, fn(_) {
        0U
      }),
    native_current: 0,
    native_soc: 0U,
    native_soh: 0U,
    native_temperature: Array::makei(12, fn(_) {
        0
      }),
    native_cycle: 0U,
    native_manufacturer_date: 0U,
    native_bmsstate: Array::makei(5, fn(_) {
        0U
      }),
    native_reserve: Array::makei(3, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 161 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgBmsState::max_wire_bytes() -> Int32 {
  161
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgBmsState::codec_identity() -> String {
  "UWVMROS1_b7ac163c4ab4786d37a9ec027767258adcfc06637ed8b4ef67e30c517397761d"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgBmsState::write_fields(
  self : Ros2Unitree_hgMsgBmsState,
  writer : Writer,
) -> Unit {
  if self.native_version_high > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_version_high.to_uint64(), 1)
  if self.native_version_low > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_version_low.to_uint64(), 1)
  if self.native_fn > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_fn.to_uint64(), 1)
  if self.native_cell_vol.length() != 40 {
    writer.status = 22;
    return
  }
  for item in self.native_cell_vol {
    if item > 65535U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  if self.native_bmsvoltage.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_bmsvoltage {
    writer.integer(item.to_uint64(), 4)
  }
  writer.integer(self.native_current.to_uint64(), 4)
  if self.native_soc > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_soc.to_uint64(), 1)
  if self.native_soh > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_soh.to_uint64(), 1)
  if self.native_temperature.length() != 12 {
    writer.status = 22;
    return
  }
  for item in self.native_temperature {
    if item < -32768 || item > 32767 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  if self.native_cycle > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_cycle.to_uint64(), 2)
  if self.native_manufacturer_date > 65535U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_manufacturer_date.to_uint64(), 2)
  if self.native_bmsstate.length() != 5 {
    writer.status = 22;
    return
  }
  for item in self.native_bmsstate {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_reserve.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    writer.integer(item.to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgBmsState::encode(self : Ros2Unitree_hgMsgBmsState) -> Result[Bytes, Int32] {
  let writer = Writer::new(161)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgBmsState::read_fields(reader : Reader) -> Ros2Unitree_hgMsgBmsState {
  let native_version_high = reader.integer(1).to_uint()
  let native_version_low = reader.integer(1).to_uint()
  let native_fn = reader.integer(1).to_uint()
  let native_cell_vol_count = 40
  let native_cell_vol : Array[UInt] = []
  for i = 0; i < native_cell_vol_count; i = i + 1 {
    native_cell_vol.push(reader.integer(2).to_uint())
  }
  let native_bmsvoltage_count = 3
  let native_bmsvoltage : Array[UInt] = []
  for i = 0; i < native_bmsvoltage_count; i = i + 1 {
    native_bmsvoltage.push(reader.integer(4).to_uint())
  }
  let native_current = reader.integer(4).to_int()
  let native_soc = reader.integer(1).to_uint()
  let native_soh = reader.integer(1).to_uint()
  let native_temperature_count = 12
  let native_temperature : Array[Int32] = []
  for i = 0; i < native_temperature_count; i = i + 1 {
    native_temperature.push(((reader.integer(2).to_int() << 16) >> 16))
  }
  let native_cycle = reader.integer(2).to_uint()
  let native_manufacturer_date = reader.integer(2).to_uint()
  let native_bmsstate_count = 5
  let native_bmsstate : Array[UInt] = []
  for i = 0; i < native_bmsstate_count; i = i + 1 {
    native_bmsstate.push(reader.integer(4).to_uint())
  }
  let native_reserve_count = 3
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(4).to_uint())
  }
  Ros2Unitree_hgMsgBmsState:: {
    native_version_high,
    native_version_low,
    native_fn,
    native_cell_vol,
    native_bmsvoltage,
    native_current,
    native_soc,
    native_soh,
    native_temperature,
    native_cycle,
    native_manufacturer_date,
    native_bmsstate,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgBmsState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgBmsState, Int32] {
  if bytes.length() > 161 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgBmsState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/MotorCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgMotorCmd {
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_q field; float32.
  native_q : Float
  /// @brief Exact native native_dq field; float32.
  native_dq : Float
  /// @brief Exact native native_tau field; float32.
  native_tau : Float
  /// @brief Exact native native_kp field; float32.
  native_kp : Float
  /// @brief Exact native native_kd field; float32.
  native_kd : Float
  /// @brief Exact native native_reserve field; uint32.
  native_reserve : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgMotorCmd::new() -> Ros2Unitree_hgMsgMotorCmd {
  Ros2Unitree_hgMsgMotorCmd:: {
    native_mode: 0U,
    native_q: 0.0F,
    native_dq: 0.0F,
    native_tau: 0.0F,
    native_kp: 0.0F,
    native_kd: 0.0F,
    native_reserve: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 25 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgMotorCmd::max_wire_bytes() -> Int32 {
  25
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgMotorCmd::codec_identity() -> String {
  "UWVMROS1_f3e472df5d061a1515ac185f87b01f702ef2f2bbeff39e42c6c7088d1da26cbb"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgMotorCmd::write_fields(
  self : Ros2Unitree_hgMsgMotorCmd,
  writer : Writer,
) -> Unit {
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_q.is_nan() || self.native_q.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_q).to_uint64(), 4)
  if self.native_dq.is_nan() || self.native_dq.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_dq).to_uint64(), 4)
  if self.native_tau.is_nan() || self.native_tau.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_tau).to_uint64(), 4)
  if self.native_kp.is_nan() || self.native_kp.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_kp).to_uint64(), 4)
  if self.native_kd.is_nan() || self.native_kd.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_kd).to_uint64(), 4)
  writer.integer(self.native_reserve.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgMotorCmd::encode(self : Ros2Unitree_hgMsgMotorCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(25)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgMotorCmd::read_fields(reader : Reader) -> Ros2Unitree_hgMsgMotorCmd {
  let native_mode = reader.integer(1).to_uint()
  let native_q = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_dq = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_tau = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_kp = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_kd = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_reserve = reader.integer(4).to_uint()
  Ros2Unitree_hgMsgMotorCmd:: {
    native_mode,
    native_q,
    native_dq,
    native_tau,
    native_kp,
    native_kd,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgMotorCmd::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgMotorCmd, Int32] {
  if bytes.length() > 25 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgMotorCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/HandCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgHandCmd {
  /// @brief Exact native native_motor_cmd field; unitree_hg/msg/MotorCmd sequence.
  native_motor_cmd : Array[Ros2Unitree_hgMsgMotorCmd]
  /// @brief Exact native native_reserve field; uint32 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgHandCmd::new() -> Ros2Unitree_hgMsgHandCmd {
  Ros2Unitree_hgMsgHandCmd:: {
    native_motor_cmd: [],
    native_reserve: Array::makei(4, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 820 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgHandCmd::max_wire_bytes() -> Int32 {
  820
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgHandCmd::codec_identity() -> String {
  "UWVMROS1_e5215e7e27590939f11d4e93d096535104bb275681fa89a88954227cbdbba006"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgHandCmd::write_fields(
  self : Ros2Unitree_hgMsgHandCmd,
  writer : Writer,
) -> Unit {
  if self.native_motor_cmd.length() > 32 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_motor_cmd.length().to_uint64(), 4)
  for item in self.native_motor_cmd {
    item.write_fields(writer)
  }
  if self.native_reserve.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    writer.integer(item.to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgHandCmd::encode(self : Ros2Unitree_hgMsgHandCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(820)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgHandCmd::read_fields(reader : Reader) -> Ros2Unitree_hgMsgHandCmd {
  let native_motor_cmd_count = reader.count(32)
  let native_motor_cmd : Array[Ros2Unitree_hgMsgMotorCmd] = []
  for i = 0; i < native_motor_cmd_count; i = i + 1 {
    native_motor_cmd.push(Ros2Unitree_hgMsgMotorCmd::read_fields(reader))
  }
  let native_reserve_count = 4
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(4).to_uint())
  }
  Ros2Unitree_hgMsgHandCmd:: {
    native_motor_cmd,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgHandCmd::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgHandCmd, Int32] {
  if bytes.length() > 820 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgHandCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/MotorState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgMotorState {
  /// @brief Exact native native_mode field; uint8.
  native_mode : UInt
  /// @brief Exact native native_q field; float32.
  native_q : Float
  /// @brief Exact native native_dq field; float32.
  native_dq : Float
  /// @brief Exact native native_ddq field; float32.
  native_ddq : Float
  /// @brief Exact native native_tau_est field; float32.
  native_tau_est : Float
  /// @brief Exact native native_temperature field; int16 array.
  native_temperature : Array[Int32]
  /// @brief Exact native native_vol field; float32.
  native_vol : Float
  /// @brief Exact native native_sensor field; uint32 array.
  native_sensor : Array[UInt]
  /// @brief Exact native native_motorstate field; uint32.
  native_motorstate : UInt
  /// @brief Exact native native_reserve field; uint32 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgMotorState::new() -> Ros2Unitree_hgMsgMotorState {
  Ros2Unitree_hgMsgMotorState:: {
    native_mode: 0U,
    native_q: 0.0F,
    native_dq: 0.0F,
    native_ddq: 0.0F,
    native_tau_est: 0.0F,
    native_temperature: Array::makei(2, fn(_) {
        0
      }),
    native_vol: 0.0F,
    native_sensor: Array::makei(2, fn(_) {
        0U
      }),
    native_motorstate: 0U,
    native_reserve: Array::makei(4, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 53 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgMotorState::max_wire_bytes() -> Int32 {
  53
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgMotorState::codec_identity() -> String {
  "UWVMROS1_65497908fe0136a5c90f11b4a2cda2110507bcc8805f9347ac82be3b32fe5934"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgMotorState::write_fields(
  self : Ros2Unitree_hgMsgMotorState,
  writer : Writer,
) -> Unit {
  if self.native_mode > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode.to_uint64(), 1)
  if self.native_q.is_nan() || self.native_q.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_q).to_uint64(), 4)
  if self.native_dq.is_nan() || self.native_dq.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_dq).to_uint64(), 4)
  if self.native_ddq.is_nan() || self.native_ddq.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_ddq).to_uint64(), 4)
  if self.native_tau_est.is_nan() || self.native_tau_est.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_tau_est).to_uint64(), 4)
  if self.native_temperature.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_temperature {
    if item < -32768 || item > 32767 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  if self.native_vol.is_nan() || self.native_vol.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_vol).to_uint64(), 4)
  if self.native_sensor.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_sensor {
    writer.integer(item.to_uint64(), 4)
  }
  writer.integer(self.native_motorstate.to_uint64(), 4)
  if self.native_reserve.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    writer.integer(item.to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgMotorState::encode(self : Ros2Unitree_hgMsgMotorState) -> Result[Bytes, Int32] {
  let writer = Writer::new(53)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgMotorState::read_fields(reader : Reader) -> Ros2Unitree_hgMsgMotorState {
  let native_mode = reader.integer(1).to_uint()
  let native_q = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_dq = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_ddq = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_tau_est = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_temperature_count = 2
  let native_temperature : Array[Int32] = []
  for i = 0; i < native_temperature_count; i = i + 1 {
    native_temperature.push(((reader.integer(2).to_int() << 16) >> 16))
  }
  let native_vol = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_sensor_count = 2
  let native_sensor : Array[UInt] = []
  for i = 0; i < native_sensor_count; i = i + 1 {
    native_sensor.push(reader.integer(4).to_uint())
  }
  let native_motorstate = reader.integer(4).to_uint()
  let native_reserve_count = 4
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(4).to_uint())
  }
  Ros2Unitree_hgMsgMotorState:: {
    native_mode,
    native_q,
    native_dq,
    native_ddq,
    native_tau_est,
    native_temperature,
    native_vol,
    native_sensor,
    native_motorstate,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgMotorState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgMotorState, Int32] {
  if bytes.length() > 53 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgMotorState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/PressSensorState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgPressSensorState {
  /// @brief Exact native native_pressure field; float32 array.
  native_pressure : Array[Float]
  /// @brief Exact native native_temperature field; float32 array.
  native_temperature : Array[Float]
  /// @brief Exact native native_lost field; uint32.
  native_lost : UInt
  /// @brief Exact native native_reserve field; uint32.
  native_reserve : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgPressSensorState::new() -> Ros2Unitree_hgMsgPressSensorState {
  Ros2Unitree_hgMsgPressSensorState:: {
    native_pressure: Array::makei(12, fn(_) {
        0.0F
      }),
    native_temperature: Array::makei(12, fn(_) {
        0.0F
      }),
    native_lost: 0U,
    native_reserve: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 104 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgPressSensorState::max_wire_bytes() -> Int32 {
  104
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgPressSensorState::codec_identity() -> String {
  "UWVMROS1_4abc296d4acd21132c0c1d185e3fafd9f0db8836a5c16ed040ebcc6127380fe5"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgPressSensorState::write_fields(
  self : Ros2Unitree_hgMsgPressSensorState,
  writer : Writer,
) -> Unit {
  if self.native_pressure.length() != 12 {
    writer.status = 22;
    return
  }
  for item in self.native_pressure {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_temperature.length() != 12 {
    writer.status = 22;
    return
  }
  for item in self.native_temperature {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  writer.integer(self.native_lost.to_uint64(), 4)
  writer.integer(self.native_reserve.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgPressSensorState::encode(self : Ros2Unitree_hgMsgPressSensorState) -> Result[Bytes, Int32] {
  let writer = Writer::new(104)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgPressSensorState::read_fields(reader : Reader) -> Ros2Unitree_hgMsgPressSensorState {
  let native_pressure_count = 12
  let native_pressure : Array[Float] = []
  for i = 0; i < native_pressure_count; i = i + 1 {
    native_pressure.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_temperature_count = 12
  let native_temperature : Array[Float] = []
  for i = 0; i < native_temperature_count; i = i + 1 {
    native_temperature.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_lost = reader.integer(4).to_uint()
  let native_reserve = reader.integer(4).to_uint()
  Ros2Unitree_hgMsgPressSensorState:: {
    native_pressure,
    native_temperature,
    native_lost,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgPressSensorState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgPressSensorState, Int32] {
  if bytes.length() > 104 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgPressSensorState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/IMUState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgIMUState {
  /// @brief Exact native native_quaternion field; float32 array.
  native_quaternion : Array[Float]
  /// @brief Exact native native_gyroscope field; float32 array.
  native_gyroscope : Array[Float]
  /// @brief Exact native native_accelerometer field; float32 array.
  native_accelerometer : Array[Float]
  /// @brief Exact native native_rpy field; float32 array.
  native_rpy : Array[Float]
  /// @brief Exact native native_temperature field; int16.
  native_temperature : Int32
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgIMUState::new() -> Ros2Unitree_hgMsgIMUState {
  Ros2Unitree_hgMsgIMUState:: {
    native_quaternion: Array::makei(4, fn(_) {
        0.0F
      }),
    native_gyroscope: Array::makei(3, fn(_) {
        0.0F
      }),
    native_accelerometer: Array::makei(3, fn(_) {
        0.0F
      }),
    native_rpy: Array::makei(3, fn(_) {
        0.0F
      }),
    native_temperature: 0,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 54 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgIMUState::max_wire_bytes() -> Int32 {
  54
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgIMUState::codec_identity() -> String {
  "UWVMROS1_d83832e8c27273785113c8388f7f22ea1251d6198817255f13a7e542afb26420"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgIMUState::write_fields(
  self : Ros2Unitree_hgMsgIMUState,
  writer : Writer,
) -> Unit {
  if self.native_quaternion.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_quaternion {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_gyroscope.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_gyroscope {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_accelerometer.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_accelerometer {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_rpy.length() != 3 {
    writer.status = 22;
    return
  }
  for item in self.native_rpy {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_temperature < -32768 || self.native_temperature > 32767 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_temperature.to_uint64(), 2)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgIMUState::encode(self : Ros2Unitree_hgMsgIMUState) -> Result[Bytes, Int32] {
  let writer = Writer::new(54)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgIMUState::read_fields(reader : Reader) -> Ros2Unitree_hgMsgIMUState {
  let native_quaternion_count = 4
  let native_quaternion : Array[Float] = []
  for i = 0; i < native_quaternion_count; i = i + 1 {
    native_quaternion.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_gyroscope_count = 3
  let native_gyroscope : Array[Float] = []
  for i = 0; i < native_gyroscope_count; i = i + 1 {
    native_gyroscope.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_accelerometer_count = 3
  let native_accelerometer : Array[Float] = []
  for i = 0; i < native_accelerometer_count; i = i + 1 {
    native_accelerometer.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_rpy_count = 3
  let native_rpy : Array[Float] = []
  for i = 0; i < native_rpy_count; i = i + 1 {
    native_rpy.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_temperature = ((reader.integer(2).to_int() << 16) >> 16)
  Ros2Unitree_hgMsgIMUState:: {
    native_quaternion,
    native_gyroscope,
    native_accelerometer,
    native_rpy,
    native_temperature,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgIMUState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgIMUState, Int32] {
  if bytes.length() > 54 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgIMUState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/HandState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgHandState {
  /// @brief Exact native native_motor_state field; unitree_hg/msg/MotorState sequence.
  native_motor_state : Array[Ros2Unitree_hgMsgMotorState]
  /// @brief Exact native native_press_sensor_state field; unitree_hg/msg/PressSensorState sequence.
  native_press_sensor_state : Array[Ros2Unitree_hgMsgPressSensorState]
  /// @brief Exact native native_imu_state field; unitree_hg/msg/IMUState.
  native_imu_state : Ros2Unitree_hgMsgIMUState
  /// @brief Exact native native_power_v field; float32.
  native_power_v : Float
  /// @brief Exact native native_power_a field; float32.
  native_power_a : Float
  /// @brief Exact native native_system_v field; float32.
  native_system_v : Float
  /// @brief Exact native native_device_v field; float32.
  native_device_v : Float
  /// @brief Exact native native_error field; uint32 array.
  native_error : Array[UInt]
  /// @brief Exact native native_reserve field; uint32 array.
  native_reserve : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgHandState::new() -> Ros2Unitree_hgMsgHandState {
  Ros2Unitree_hgMsgHandState:: {
    native_motor_state: [],
    native_press_sensor_state: [],
    native_imu_state: Ros2Unitree_hgMsgIMUState::new(),
    native_power_v: 0.0F,
    native_power_a: 0.0F,
    native_system_v: 0.0F,
    native_device_v: 0.0F,
    native_error: Array::makei(2, fn(_) {
        0U
      }),
    native_reserve: Array::makei(2, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 5118 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgHandState::max_wire_bytes() -> Int32 {
  5118
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgHandState::codec_identity() -> String {
  "UWVMROS1_ea3f597b4453ca352d3a973920d0b3b29639e555cec273f6c63fc5fe95c905f6"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgHandState::write_fields(
  self : Ros2Unitree_hgMsgHandState,
  writer : Writer,
) -> Unit {
  if self.native_motor_state.length() > 32 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_motor_state.length().to_uint64(), 4)
  for item in self.native_motor_state {
    item.write_fields(writer)
  }
  if self.native_press_sensor_state.length() > 32 {
    writer.status = 22;
    return
  }
  writer.integer(self.native_press_sensor_state.length().to_uint64(), 4)
  for item in self.native_press_sensor_state {
    item.write_fields(writer)
  }
  self.native_imu_state.write_fields(writer)
  if self.native_power_v.is_nan() || self.native_power_v.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_power_v).to_uint64(), 4)
  if self.native_power_a.is_nan() || self.native_power_a.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_power_a).to_uint64(), 4)
  if self.native_system_v.is_nan() || self.native_system_v.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_system_v).to_uint64(), 4)
  if self.native_device_v.is_nan() || self.native_device_v.is_inf() {
    writer.status = 22;
    return
  }
  writer.integer(float_bits(self.native_device_v).to_uint64(), 4)
  if self.native_error.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_error {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_reserve.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    writer.integer(item.to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgHandState::encode(self : Ros2Unitree_hgMsgHandState) -> Result[Bytes, Int32] {
  let writer = Writer::new(5118)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgHandState::read_fields(reader : Reader) -> Ros2Unitree_hgMsgHandState {
  let native_motor_state_count = reader.count(32)
  let native_motor_state : Array[Ros2Unitree_hgMsgMotorState] = []
  for i = 0; i < native_motor_state_count; i = i + 1 {
    native_motor_state.push(Ros2Unitree_hgMsgMotorState::read_fields(reader))
  }
  let native_press_sensor_state_count = reader.count(32)
  let native_press_sensor_state : Array[Ros2Unitree_hgMsgPressSensorState] = []
  for i = 0; i < native_press_sensor_state_count; i = i + 1 {
    native_press_sensor_state.push(Ros2Unitree_hgMsgPressSensorState::read_fields(reader))
  }
  let native_imu_state = Ros2Unitree_hgMsgIMUState::read_fields(reader)
  let native_power_v = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_power_a = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_system_v = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_device_v = {
    let value = float_from_bits(reader.integer(4).to_int());
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    };
    value
  }
  let native_error_count = 2
  let native_error : Array[UInt] = []
  for i = 0; i < native_error_count; i = i + 1 {
    native_error.push(reader.integer(4).to_uint())
  }
  let native_reserve_count = 2
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(4).to_uint())
  }
  Ros2Unitree_hgMsgHandState:: {
    native_motor_state,
    native_press_sensor_state,
    native_imu_state,
    native_power_v,
    native_power_a,
    native_system_v,
    native_device_v,
    native_error,
    native_reserve,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgHandState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgHandState, Int32] {
  if bytes.length() > 5118 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgHandState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/LowCmd.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgLowCmd {
  /// @brief Exact native native_mode_pr field; uint8.
  native_mode_pr : UInt
  /// @brief Exact native native_mode_machine field; uint8.
  native_mode_machine : UInt
  /// @brief Exact native native_motor_cmd field; unitree_hg/msg/MotorCmd array.
  native_motor_cmd : Array[Ros2Unitree_hgMsgMotorCmd]
  /// @brief Exact native native_reserve field; uint32 array.
  native_reserve : Array[UInt]
  /// @brief Exact native native_crc field; uint32.
  native_crc : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgLowCmd::new() -> Ros2Unitree_hgMsgLowCmd {
  Ros2Unitree_hgMsgLowCmd:: {
    native_mode_pr: 0U,
    native_mode_machine: 0U,
    native_motor_cmd: Array::makei(35, fn(_) {
        Ros2Unitree_hgMsgMotorCmd::new()
      }),
    native_reserve: Array::makei(4, fn(_) {
        0U
      }),
    native_crc: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 897 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgLowCmd::max_wire_bytes() -> Int32 {
  897
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgLowCmd::codec_identity() -> String {
  "UWVMROS1_8303ac6e2e3273251662d31daf966a11ced5b5ac10b93aa6253eebc56f4ec461"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgLowCmd::write_fields(
  self : Ros2Unitree_hgMsgLowCmd,
  writer : Writer,
) -> Unit {
  if self.native_mode_pr > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode_pr.to_uint64(), 1)
  if self.native_mode_machine > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode_machine.to_uint64(), 1)
  if self.native_motor_cmd.length() != 35 {
    writer.status = 22;
    return
  }
  for item in self.native_motor_cmd {
    item.write_fields(writer)
  }
  if self.native_reserve.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    writer.integer(item.to_uint64(), 4)
  }
  writer.integer(self.native_crc.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgLowCmd::encode(self : Ros2Unitree_hgMsgLowCmd) -> Result[Bytes, Int32] {
  let writer = Writer::new(897)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgLowCmd::read_fields(reader : Reader) -> Ros2Unitree_hgMsgLowCmd {
  let native_mode_pr = reader.integer(1).to_uint()
  let native_mode_machine = reader.integer(1).to_uint()
  let native_motor_cmd_count = 35
  let native_motor_cmd : Array[Ros2Unitree_hgMsgMotorCmd] = []
  for i = 0; i < native_motor_cmd_count; i = i + 1 {
    native_motor_cmd.push(Ros2Unitree_hgMsgMotorCmd::read_fields(reader))
  }
  let native_reserve_count = 4
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(4).to_uint())
  }
  let native_crc = reader.integer(4).to_uint()
  Ros2Unitree_hgMsgLowCmd:: {
    native_mode_pr,
    native_mode_machine,
    native_motor_cmd,
    native_reserve,
    native_crc,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgLowCmd::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgLowCmd, Int32] {
  if bytes.length() > 897 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgLowCmd::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/LowState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgLowState {
  /// @brief Exact native native_version field; uint32 array.
  native_version : Array[UInt]
  /// @brief Exact native native_mode_pr field; uint8.
  native_mode_pr : UInt
  /// @brief Exact native native_mode_machine field; uint8.
  native_mode_machine : UInt
  /// @brief Exact native native_tick field; uint32.
  native_tick : UInt
  /// @brief Exact native native_imu_state field; unitree_hg/msg/IMUState.
  native_imu_state : Ros2Unitree_hgMsgIMUState
  /// @brief Exact native native_motor_state field; unitree_hg/msg/MotorState array.
  native_motor_state : Array[Ros2Unitree_hgMsgMotorState]
  /// @brief Exact native native_wireless_remote field; uint8 array.
  native_wireless_remote : Array[UInt]
  /// @brief Exact native native_reserve field; uint32 array.
  native_reserve : Array[UInt]
  /// @brief Exact native native_crc field; uint32.
  native_crc : UInt
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgLowState::new() -> Ros2Unitree_hgMsgLowState {
  Ros2Unitree_hgMsgLowState:: {
    native_version: Array::makei(2, fn(_) {
        0U
      }),
    native_mode_pr: 0U,
    native_mode_machine: 0U,
    native_tick: 0U,
    native_imu_state: Ros2Unitree_hgMsgIMUState::new(),
    native_motor_state: Array::makei(35, fn(_) {
        Ros2Unitree_hgMsgMotorState::new()
      }),
    native_wireless_remote: Array::makei(40, fn(_) {
        0U
      }),
    native_reserve: Array::makei(4, fn(_) {
        0U
      }),
    native_crc: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1983 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgLowState::max_wire_bytes() -> Int32 {
  1983
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgLowState::codec_identity() -> String {
  "UWVMROS1_7eed2692672f536a476643f1d3a07affc8e5b3272663e3d282c199fff1c2fa1d"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgLowState::write_fields(
  self : Ros2Unitree_hgMsgLowState,
  writer : Writer,
) -> Unit {
  if self.native_version.length() != 2 {
    writer.status = 22;
    return
  }
  for item in self.native_version {
    writer.integer(item.to_uint64(), 4)
  }
  if self.native_mode_pr > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode_pr.to_uint64(), 1)
  if self.native_mode_machine > 255U {
    writer.status = 22;
    return
  }
  writer.integer(self.native_mode_machine.to_uint64(), 1)
  writer.integer(self.native_tick.to_uint64(), 4)
  self.native_imu_state.write_fields(writer)
  if self.native_motor_state.length() != 35 {
    writer.status = 22;
    return
  }
  for item in self.native_motor_state {
    item.write_fields(writer)
  }
  if self.native_wireless_remote.length() != 40 {
    writer.status = 22;
    return
  }
  for item in self.native_wireless_remote {
    if item > 255U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 1)
  }
  if self.native_reserve.length() != 4 {
    writer.status = 22;
    return
  }
  for item in self.native_reserve {
    writer.integer(item.to_uint64(), 4)
  }
  writer.integer(self.native_crc.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgLowState::encode(self : Ros2Unitree_hgMsgLowState) -> Result[Bytes, Int32] {
  let writer = Writer::new(1983)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgLowState::read_fields(reader : Reader) -> Ros2Unitree_hgMsgLowState {
  let native_version_count = 2
  let native_version : Array[UInt] = []
  for i = 0; i < native_version_count; i = i + 1 {
    native_version.push(reader.integer(4).to_uint())
  }
  let native_mode_pr = reader.integer(1).to_uint()
  let native_mode_machine = reader.integer(1).to_uint()
  let native_tick = reader.integer(4).to_uint()
  let native_imu_state = Ros2Unitree_hgMsgIMUState::read_fields(reader)
  let native_motor_state_count = 35
  let native_motor_state : Array[Ros2Unitree_hgMsgMotorState] = []
  for i = 0; i < native_motor_state_count; i = i + 1 {
    native_motor_state.push(Ros2Unitree_hgMsgMotorState::read_fields(reader))
  }
  let native_wireless_remote_count = 40
  let native_wireless_remote : Array[UInt] = []
  for i = 0; i < native_wireless_remote_count; i = i + 1 {
    native_wireless_remote.push(reader.integer(1).to_uint())
  }
  let native_reserve_count = 4
  let native_reserve : Array[UInt] = []
  for i = 0; i < native_reserve_count; i = i + 1 {
    native_reserve.push(reader.integer(4).to_uint())
  }
  let native_crc = reader.integer(4).to_uint()
  Ros2Unitree_hgMsgLowState:: {
    native_version,
    native_mode_pr,
    native_mode_machine,
    native_tick,
    native_imu_state,
    native_motor_state,
    native_wireless_remote,
    native_reserve,
    native_crc,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgLowState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgLowState, Int32] {
  if bytes.length() > 1983 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgLowState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original unitree_hg/msg/MainBoardState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.

pub(all) struct Ros2Unitree_hgMsgMainBoardState {
  /// @brief Exact native native_fan_state field; uint16 array.
  native_fan_state : Array[UInt]
  /// @brief Exact native native_temperature field; int16 array.
  native_temperature : Array[Int32]
  /// @brief Exact native native_value field; float32 array.
  native_value : Array[Float]
  /// @brief Exact native native_state field; uint32 array.
  native_state : Array[UInt]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.

pub fn Ros2Unitree_hgMsgMainBoardState::new() -> Ros2Unitree_hgMsgMainBoardState {
  Ros2Unitree_hgMsgMainBoardState:: {
    native_fan_state: Array::makei(6, fn(_) {
        0U
      }),
    native_temperature: Array::makei(6, fn(_) {
        0
      }),
    native_value: Array::makei(6, fn(_) {
        0.0F
      }),
    native_state: Array::makei(6, fn(_) {
        0U
      }),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 72 bytes, preserving the catalog's separate aggregate limit.

pub fn Ros2Unitree_hgMsgMainBoardState::max_wire_bytes() -> Int32 {
  72
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.

pub fn Ros2Unitree_hgMsgMainBoardState::codec_identity() -> String {
  "UWVMROS1_2a27a979aadc7bef33a757e169680faa632936c2634ee787f0c9f25cb08535a6"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.

fn Ros2Unitree_hgMsgMainBoardState::write_fields(
  self : Ros2Unitree_hgMsgMainBoardState,
  writer : Writer,
) -> Unit {
  if self.native_fan_state.length() != 6 {
    writer.status = 22;
    return
  }
  for item in self.native_fan_state {
    if item > 65535U {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  if self.native_temperature.length() != 6 {
    writer.status = 22;
    return
  }
  for item in self.native_temperature {
    if item < -32768 || item > 32767 {
      writer.status = 22;
      return
    }
    writer.integer(item.to_uint64(), 2)
  }
  if self.native_value.length() != 6 {
    writer.status = 22;
    return
  }
  for item in self.native_value {
    if item.is_nan() || item.is_inf() {
      writer.status = 22;
      return
    }
    writer.integer(float_bits(item).to_uint64(), 4)
  }
  if self.native_state.length() != 6 {
    writer.status = 22;
    return
  }
  for item in self.native_state {
    writer.integer(item.to_uint64(), 4)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.

pub fn Ros2Unitree_hgMsgMainBoardState::encode(self : Ros2Unitree_hgMsgMainBoardState) -> Result[Bytes, Int32] {
  let writer = Writer::new(72)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.

fn Ros2Unitree_hgMsgMainBoardState::read_fields(reader : Reader) -> Ros2Unitree_hgMsgMainBoardState {
  let native_fan_state_count = 6
  let native_fan_state : Array[UInt] = []
  for i = 0; i < native_fan_state_count; i = i + 1 {
    native_fan_state.push(reader.integer(2).to_uint())
  }
  let native_temperature_count = 6
  let native_temperature : Array[Int32] = []
  for i = 0; i < native_temperature_count; i = i + 1 {
    native_temperature.push(((reader.integer(2).to_int() << 16) >> 16))
  }
  let native_value_count = 6
  let native_value : Array[Float] = []
  for i = 0; i < native_value_count; i = i + 1 {
    native_value.push( {
        let value = float_from_bits(reader.integer(4).to_int()); if value.is_nan() || value.is_inf() {
          reader.status = 22
        }; value
      })
  }
  let native_state_count = 6
  let native_state : Array[UInt] = []
  for i = 0; i < native_state_count; i = i + 1 {
    native_state.push(reader.integer(4).to_uint())
  }
  Ros2Unitree_hgMsgMainBoardState:: {
    native_fan_state,
    native_temperature,
    native_value,
    native_state,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Ok with the entire owned typed record, or Err(22) for any malformed/extra bytes.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.

pub fn Ros2Unitree_hgMsgMainBoardState::decode(
  bytes : Bytes,
) -> Result[Ros2Unitree_hgMsgMainBoardState, Int32] {
  if bytes.length() > 72 {
    return Err(90)
  }
  let reader : Reader = {
    bytes, at: 0, status: 0
  }
  let value = Ros2Unitree_hgMsgMainBoardState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}
