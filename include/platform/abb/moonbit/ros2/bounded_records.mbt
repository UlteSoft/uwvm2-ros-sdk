/// @file bounded_records.mbt
/// @brief Preserve every original ABB catalog record and field.
/// @details Codecs preserve exact original declarations, full integer widths, nested arrays, strict
/// UTF-8, finite numeric policy, source constants and explicit wire limits. No host operation, native
/// serialization, identity registration or authority occurs here.

///|
/// @brief Own one bounded canonical writer with sticky failure state.
priv struct Writer {
  bytes : Array[Byte]
  limit : Int32
  mut status : Int32
}

///|
/// @brief Allocate a private finite writer before any native operation.
fn Writer::new(limit : Int32) -> Writer {
  { bytes: [], limit, status: 0, }
}

///|
/// @brief Append one byte or retain the original aggregate-capacity error.
fn Writer::byte(self : Writer, value : Byte) -> Unit {
  if self.status != 0 {
    return
  }
  if self.bytes.length() >= self.limit {
    self.status = 90
    return
  }
  self.bytes.push(value)
}

///|
/// @brief Write the low width bytes of a full-width little-endian integer.
fn Writer::integer(self : Writer, value : UInt64, width : Int32) -> Unit {
  for i = 0; i < width; i = i + 1 {
    self.byte(((value >> (i * 8)) & 255UL).to_int().to_byte())
  }
}

///|
/// @brief Append strict bounded UTF-8 with its exact u32 byte extent.
fn Writer::text(self : Writer, value : String, maximum : Int32) -> Unit {
  if self.status != 0 {
    return
  }
  let bytes = match @wire.bounded_utf8(value, maximum) {
    Ok(value) => value
    Err(_) => {
      self.status = 22
      return
    }
  }
  for byte in bytes {
    if byte.to_int() == 0 {
      self.status = 22
      return
    }
  }
  self.integer(bytes.length().to_uint64(), 4)
  for byte in bytes {
    self.byte(byte)
  }
}

///|
/// @brief Return one complete owned wire value or the original writer error.
fn Writer::finish(self : Writer) -> Result[Bytes, Int32] {
  if self.status != 0 {
    return Err(self.status)
  }
  Ok(Bytes::makei(self.bytes.length(), fn(i) { self.bytes[i] }))
}

///|
/// @brief Borrow complete canonical input while tracking a checked local cursor.
priv struct Reader {
  bytes : Bytes
  mut at : Int32
  mut status : Int32
}

///|
/// @brief Read one little-endian integer without narrowing its unsigned bits.
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

///|
/// @brief Read a finite sequence extent before allocating any element storage.
fn Reader::count(self : Reader, maximum : Int32) -> Int32 {
  let count = self.integer(4)
  if count > maximum.to_uint64() {
    self.status = 22
    return 0
  }
  if self.status != 0 {
    0
  } else {
    count.to_int()
  }
}

///|
/// @brief Decode strict UTF-8 without replacement, NUL acceptance or clipping.
fn Reader::text(self : Reader, maximum : Int32) -> String {
  let count = self.count(maximum)
  if self.status != 0 {
    return ""
  }
  if count > self.bytes.length() - self.at {
    self.status = 22
    return ""
  }
  let begin = self.at
  self.at = self.at + count
  for i = begin; i < self.at; i = i + 1 {
    if self.bytes[i].to_int() == 0 {
      self.status = 22
      return ""
    }
  }
  @utf8.decode(self.bytes[begin:self.at], ignore_bom=false) catch {
    _ => {
      self.status = 22
      ""
    }
  }
}

///|
/// @brief Reinterpret all original IEEE 754 float32 bits without a numeric cast.
extern "wasm" fn float_from_bits(value : Int32) -> Float =
  #|(func (param i32) (result f32) (f32.reinterpret_i32 (local.get 0)))

///|
/// @brief Preserve the exact IEEE 754 float32 bit pattern in an unsigned word.
extern "wasm" fn float_bits(value : Float) -> UInt32 =
  #|(func (param f32) (result i32) (i32.reinterpret_f32 (local.get 0)))

///|
/// @brief Represent complete original abb_egm_msgs/msg/EGMChannelState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_egm_msgsMsgEGMChannelState {
  /// @brief Exact native name field; string.
  name : String
  /// @brief Exact native active field; bool.
  active : Bool
  /// @brief Exact native egm_convergence_met field; bool.
  egm_convergence_met : Bool
  /// @brief Exact native egm_client_state field; uint8.
  egm_client_state : UInt32
  /// @brief Exact native motor_state field; uint8.
  motor_state : UInt32
  /// @brief Exact native rapid_execution_state field; uint8.
  rapid_execution_state : UInt32
  /// @brief Exact native utilization_rate field; float64.
  utilization_rate : Double
}

///|
/// @brief Return the original EGM_UNDEFINED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::constant_egm_undefined() -> UInt32 {
  1U
}

///|
/// @brief Return the original EGM_ERROR source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::constant_egm_error() -> UInt32 {
  2U
}

///|
/// @brief Return the original EGM_STOPPED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::constant_egm_stopped() -> UInt32 {
  3U
}

///|
/// @brief Return the original EGM_RUNNING source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::constant_egm_running() -> UInt32 {
  4U
}

///|
/// @brief Return the original MOTORS_UNDEFINED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::constant_motors_undefined() -> UInt32 {
  1U
}

///|
/// @brief Return the original MOTORS_ON source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::constant_motors_on() -> UInt32 {
  2U
}

///|
/// @brief Return the original MOTORS_OFF source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::constant_motors_off() -> UInt32 {
  3U
}

///|
/// @brief Return the original RAPID_UNDEFINED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::constant_rapid_undefined() -> UInt32 {
  1U
}

///|
/// @brief Return the original RAPID_STOPPED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::constant_rapid_stopped() -> UInt32 {
  2U
}

///|
/// @brief Return the original RAPID_RUNNING source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::constant_rapid_running() -> UInt32 {
  3U
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::new() -> Ros2Abb_egm_msgsMsgEGMChannelState {
  Ros2Abb_egm_msgsMsgEGMChannelState::{
    name: "",
    active: false,
    egm_convergence_met: false,
    egm_client_state: 0U,
    motor_state: 0U,
    rapid_execution_state: 0U,
    utilization_rate: 0.0,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 81 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::max_wire_bytes() -> Int32 {
  81
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::codec_identity() -> String {
  "UWVMROS1_fbd288b93963fccc92aa114570c0a4f6a1fdc5b473cb8e252922720f5d88b519"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_egm_msgsMsgEGMChannelState::write_fields(
  self : Ros2Abb_egm_msgsMsgEGMChannelState,
  writer : Writer,
) -> Unit {
  writer.text(self.name, 64)
  writer.integer(if self.active { 1UL } else { 0UL }, 1)
  writer.integer(if self.egm_convergence_met { 1UL } else { 0UL }, 1)
  if self.egm_client_state > 255U {
    writer.status = 22
    return
  }
  writer.integer(self.egm_client_state.to_uint64(), 1)
  if self.motor_state > 255U {
    writer.status = 22
    return
  }
  writer.integer(self.motor_state.to_uint64(), 1)
  if self.rapid_execution_state > 255U {
    writer.status = 22
    return
  }
  writer.integer(self.rapid_execution_state.to_uint64(), 1)
  if self.utilization_rate.is_nan() || self.utilization_rate.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.utilization_rate.reinterpret_as_uint64(), 8)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::encode(
  self : Ros2Abb_egm_msgsMsgEGMChannelState,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(81)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_egm_msgsMsgEGMChannelState::read_fields(
  reader : Reader,
) -> Ros2Abb_egm_msgsMsgEGMChannelState {
  let name = reader.text(64)
  let active = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let egm_convergence_met = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let egm_client_state = reader.integer(1).to_uint()
  let motor_state = reader.integer(1).to_uint()
  let rapid_execution_state = reader.integer(1).to_uint()
  let utilization_rate = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_egm_msgsMsgEGMChannelState::{
    name,
    active,
    egm_convergence_met,
    egm_client_state,
    motor_state,
    rapid_execution_state,
    utilization_rate,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_egm_msgsMsgEGMChannelState::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_egm_msgsMsgEGMChannelState, Int32] {
  if bytes.length() > 81 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_egm_msgsMsgEGMChannelState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original builtin_interfaces/msg/Time.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Builtin_interfacesMsgTime {
  /// @brief Exact native sec field; int32.
  sec : Int32
  /// @brief Exact native nanosec field; uint32.
  nanosec : UInt32
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Builtin_interfacesMsgTime::new() -> Ros2Builtin_interfacesMsgTime {
  Ros2Builtin_interfacesMsgTime::{ sec: 0, nanosec: 0U, }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 8 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Builtin_interfacesMsgTime::max_wire_bytes() -> Int32 {
  8
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Builtin_interfacesMsgTime::codec_identity() -> String {
  "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Builtin_interfacesMsgTime::write_fields(
  self : Ros2Builtin_interfacesMsgTime,
  writer : Writer,
) -> Unit {
  if self.nanosec >= 1000000000U {
    writer.status = 22
    return
  }
  writer.integer(self.sec.to_uint64(), 4)
  writer.integer(self.nanosec.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Builtin_interfacesMsgTime::encode(
  self : Ros2Builtin_interfacesMsgTime,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(8)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Builtin_interfacesMsgTime::read_fields(
  reader : Reader,
) -> Ros2Builtin_interfacesMsgTime {
  let sec = reader.integer(4).to_int()
  let nanosec = reader.integer(4).to_uint()
  if nanosec >= 1000000000U {
    reader.status = 22
  }
  Ros2Builtin_interfacesMsgTime::{ sec, nanosec, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Builtin_interfacesMsgTime::decode(
  bytes : Bytes,
) -> Result[Ros2Builtin_interfacesMsgTime, Int32] {
  if bytes.length() > 8 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Builtin_interfacesMsgTime::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original std_msgs/msg/Header.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Std_msgsMsgHeader {
  /// @brief Exact native stamp field; builtin_interfaces/msg/Time.
  stamp : Ros2Builtin_interfacesMsgTime
  /// @brief Exact native frame_id field; string.
  frame_id : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Std_msgsMsgHeader::new() -> Ros2Std_msgsMsgHeader {
  Ros2Std_msgsMsgHeader::{
    stamp: Ros2Builtin_interfacesMsgTime::new(),
    frame_id: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 76 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Std_msgsMsgHeader::max_wire_bytes() -> Int32 {
  76
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Std_msgsMsgHeader::codec_identity() -> String {
  "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Std_msgsMsgHeader::write_fields(
  self : Ros2Std_msgsMsgHeader,
  writer : Writer,
) -> Unit {
  self.stamp.write_fields(writer)
  writer.text(self.frame_id, 64)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Std_msgsMsgHeader::encode(
  self : Ros2Std_msgsMsgHeader,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(76)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Std_msgsMsgHeader::read_fields(reader : Reader) -> Ros2Std_msgsMsgHeader {
  let stamp = Ros2Builtin_interfacesMsgTime::read_fields(reader)
  let frame_id = reader.text(64)
  Ros2Std_msgsMsgHeader::{ stamp, frame_id, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Std_msgsMsgHeader::decode(
  bytes : Bytes,
) -> Result[Ros2Std_msgsMsgHeader, Int32] {
  if bytes.length() > 76 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Std_msgsMsgHeader::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_egm_msgs/msg/EGMState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_egm_msgsMsgEGMState {
  /// @brief Exact native header field; std_msgs/msg/Header.
  header : Ros2Std_msgsMsgHeader
  /// @brief Exact native egm_channels field; abb_egm_msgs/msg/EGMChannelState sequence.
  egm_channels : Array[Ros2Abb_egm_msgsMsgEGMChannelState]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_egm_msgsMsgEGMState::new() -> Ros2Abb_egm_msgsMsgEGMState {
  Ros2Abb_egm_msgsMsgEGMState::{
    header: Ros2Std_msgsMsgHeader::new(),
    egm_channels: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1376 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_egm_msgsMsgEGMState::max_wire_bytes() -> Int32 {
  1376
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_egm_msgsMsgEGMState::codec_identity() -> String {
  "UWVMROS1_5b10efb13c3be7290c7e391d55679a174969887edd1b8baca682edac311a8e5d"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_egm_msgsMsgEGMState::write_fields(
  self : Ros2Abb_egm_msgsMsgEGMState,
  writer : Writer,
) -> Unit {
  self.header.write_fields(writer)
  if self.egm_channels.length() > 16 {
    writer.status = 22
    return
  }
  writer.integer(self.egm_channels.length().to_uint64(), 4)
  for item in self.egm_channels {
    item.write_fields(writer)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_egm_msgsMsgEGMState::encode(
  self : Ros2Abb_egm_msgsMsgEGMState,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(1376)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_egm_msgsMsgEGMState::read_fields(
  reader : Reader,
) -> Ros2Abb_egm_msgsMsgEGMState {
  let header = Ros2Std_msgsMsgHeader::read_fields(reader)
  let egm_channels_count = reader.count(16)
  let egm_channels : Array[Ros2Abb_egm_msgsMsgEGMChannelState] = []
  for i = 0; i < egm_channels_count; i = i + 1 {
    egm_channels.push(Ros2Abb_egm_msgsMsgEGMChannelState::read_fields(reader))
  }
  Ros2Abb_egm_msgsMsgEGMState::{ header, egm_channels, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_egm_msgsMsgEGMState::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_egm_msgsMsgEGMState, Int32] {
  if bytes.length() > 1376 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_egm_msgsMsgEGMState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/ConfData.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgConfData {
  /// @brief Exact native cf1 field; float32.
  cf1 : Float
  /// @brief Exact native cf4 field; float32.
  cf4 : Float
  /// @brief Exact native cf6 field; float32.
  cf6 : Float
  /// @brief Exact native cfx field; float32.
  cfx : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgConfData::new() -> Ros2Abb_rapid_msgsMsgConfData {
  Ros2Abb_rapid_msgsMsgConfData::{ cf1: 0.0F, cf4: 0.0F, cf6: 0.0F, cfx: 0.0F, }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 16 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgConfData::max_wire_bytes() -> Int32 {
  16
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgConfData::codec_identity() -> String {
  "UWVMROS1_0c22cc29db62f5001ef20ea7b131de63099e31ac5f150d3e9f0bb62120d60571"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgConfData::write_fields(
  self : Ros2Abb_rapid_msgsMsgConfData,
  writer : Writer,
) -> Unit {
  if self.cf1.is_nan() || self.cf1.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.cf1).to_uint64(), 4)
  if self.cf4.is_nan() || self.cf4.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.cf4).to_uint64(), 4)
  if self.cf6.is_nan() || self.cf6.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.cf6).to_uint64(), 4)
  if self.cfx.is_nan() || self.cfx.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.cfx).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgConfData::encode(
  self : Ros2Abb_rapid_msgsMsgConfData,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(16)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgConfData::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgConfData {
  let cf1 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let cf4 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let cf6 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let cfx = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_msgsMsgConfData::{ cf1, cf4, cf6, cfx, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgConfData::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgConfData, Int32] {
  if bytes.length() > 16 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgConfData::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/ExtJoint.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgExtJoint {
  /// @brief Exact native eax_a field; float32.
  eax_a : Float
  /// @brief Exact native eax_b field; float32.
  eax_b : Float
  /// @brief Exact native eax_c field; float32.
  eax_c : Float
  /// @brief Exact native eax_d field; float32.
  eax_d : Float
  /// @brief Exact native eax_e field; float32.
  eax_e : Float
  /// @brief Exact native eax_f field; float32.
  eax_f : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgExtJoint::new() -> Ros2Abb_rapid_msgsMsgExtJoint {
  Ros2Abb_rapid_msgsMsgExtJoint::{
    eax_a: 0.0F,
    eax_b: 0.0F,
    eax_c: 0.0F,
    eax_d: 0.0F,
    eax_e: 0.0F,
    eax_f: 0.0F,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 24 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgExtJoint::max_wire_bytes() -> Int32 {
  24
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgExtJoint::codec_identity() -> String {
  "UWVMROS1_8b799c6bec9e4eab0900a633a93375a7792e49fde0bf302f6752115a001a4ae2"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgExtJoint::write_fields(
  self : Ros2Abb_rapid_msgsMsgExtJoint,
  writer : Writer,
) -> Unit {
  if self.eax_a.is_nan() || self.eax_a.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.eax_a).to_uint64(), 4)
  if self.eax_b.is_nan() || self.eax_b.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.eax_b).to_uint64(), 4)
  if self.eax_c.is_nan() || self.eax_c.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.eax_c).to_uint64(), 4)
  if self.eax_d.is_nan() || self.eax_d.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.eax_d).to_uint64(), 4)
  if self.eax_e.is_nan() || self.eax_e.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.eax_e).to_uint64(), 4)
  if self.eax_f.is_nan() || self.eax_f.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.eax_f).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgExtJoint::encode(
  self : Ros2Abb_rapid_msgsMsgExtJoint,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(24)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgExtJoint::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgExtJoint {
  let eax_a = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let eax_b = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let eax_c = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let eax_d = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let eax_e = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let eax_f = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_msgsMsgExtJoint::{ eax_a, eax_b, eax_c, eax_d, eax_e, eax_f, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgExtJoint::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgExtJoint, Int32] {
  if bytes.length() > 24 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgExtJoint::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/RobJoint.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgRobJoint {
  /// @brief Exact native rax_1 field; float32.
  rax_1 : Float
  /// @brief Exact native rax_2 field; float32.
  rax_2 : Float
  /// @brief Exact native rax_3 field; float32.
  rax_3 : Float
  /// @brief Exact native rax_4 field; float32.
  rax_4 : Float
  /// @brief Exact native rax_5 field; float32.
  rax_5 : Float
  /// @brief Exact native rax_6 field; float32.
  rax_6 : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgRobJoint::new() -> Ros2Abb_rapid_msgsMsgRobJoint {
  Ros2Abb_rapid_msgsMsgRobJoint::{
    rax_1: 0.0F,
    rax_2: 0.0F,
    rax_3: 0.0F,
    rax_4: 0.0F,
    rax_5: 0.0F,
    rax_6: 0.0F,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 24 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgRobJoint::max_wire_bytes() -> Int32 {
  24
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgRobJoint::codec_identity() -> String {
  "UWVMROS1_6d842aebc0a3b222a727063a41ef7e96f2b8c14ffbba5c8d6e140ba2890e69cd"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgRobJoint::write_fields(
  self : Ros2Abb_rapid_msgsMsgRobJoint,
  writer : Writer,
) -> Unit {
  if self.rax_1.is_nan() || self.rax_1.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.rax_1).to_uint64(), 4)
  if self.rax_2.is_nan() || self.rax_2.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.rax_2).to_uint64(), 4)
  if self.rax_3.is_nan() || self.rax_3.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.rax_3).to_uint64(), 4)
  if self.rax_4.is_nan() || self.rax_4.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.rax_4).to_uint64(), 4)
  if self.rax_5.is_nan() || self.rax_5.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.rax_5).to_uint64(), 4)
  if self.rax_6.is_nan() || self.rax_6.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.rax_6).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgRobJoint::encode(
  self : Ros2Abb_rapid_msgsMsgRobJoint,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(24)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgRobJoint::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgRobJoint {
  let rax_1 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let rax_2 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let rax_3 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let rax_4 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let rax_5 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let rax_6 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_msgsMsgRobJoint::{ rax_1, rax_2, rax_3, rax_4, rax_5, rax_6, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgRobJoint::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgRobJoint, Int32] {
  if bytes.length() > 24 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgRobJoint::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/JointTarget.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgJointTarget {
  /// @brief Exact native robax field; abb_rapid_msgs/msg/RobJoint.
  robax : Ros2Abb_rapid_msgsMsgRobJoint
  /// @brief Exact native extax field; abb_rapid_msgs/msg/ExtJoint.
  extax : Ros2Abb_rapid_msgsMsgExtJoint
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgJointTarget::new() -> Ros2Abb_rapid_msgsMsgJointTarget {
  Ros2Abb_rapid_msgsMsgJointTarget::{
    robax: Ros2Abb_rapid_msgsMsgRobJoint::new(),
    extax: Ros2Abb_rapid_msgsMsgExtJoint::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 48 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgJointTarget::max_wire_bytes() -> Int32 {
  48
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgJointTarget::codec_identity() -> String {
  "UWVMROS1_5949cf0121391646c1f04b54d8f7deaae0497f4920f7817739fc25bfddc4e540"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgJointTarget::write_fields(
  self : Ros2Abb_rapid_msgsMsgJointTarget,
  writer : Writer,
) -> Unit {
  self.robax.write_fields(writer)
  self.extax.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgJointTarget::encode(
  self : Ros2Abb_rapid_msgsMsgJointTarget,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(48)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgJointTarget::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgJointTarget {
  let robax = Ros2Abb_rapid_msgsMsgRobJoint::read_fields(reader)
  let extax = Ros2Abb_rapid_msgsMsgExtJoint::read_fields(reader)
  Ros2Abb_rapid_msgsMsgJointTarget::{ robax, extax, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgJointTarget::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgJointTarget, Int32] {
  if bytes.length() > 48 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgJointTarget::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/Pos.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgPos {
  /// @brief Exact native x field; float32.
  x : Float
  /// @brief Exact native y field; float32.
  y : Float
  /// @brief Exact native z field; float32.
  z : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgPos::new() -> Ros2Abb_rapid_msgsMsgPos {
  Ros2Abb_rapid_msgsMsgPos::{ x: 0.0F, y: 0.0F, z: 0.0F, }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 12 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgPos::max_wire_bytes() -> Int32 {
  12
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgPos::codec_identity() -> String {
  "UWVMROS1_31d490d6ead5a1a78295dc4e934f0b89e74e4732da2b57d28d297477bf4cbdd2"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgPos::write_fields(
  self : Ros2Abb_rapid_msgsMsgPos,
  writer : Writer,
) -> Unit {
  if self.x.is_nan() || self.x.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.x).to_uint64(), 4)
  if self.y.is_nan() || self.y.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.y).to_uint64(), 4)
  if self.z.is_nan() || self.z.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.z).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgPos::encode(
  self : Ros2Abb_rapid_msgsMsgPos,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(12)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgPos::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgPos {
  let x = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let y = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let z = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_msgsMsgPos::{ x, y, z, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgPos::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgPos, Int32] {
  if bytes.length() > 12 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgPos::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/Orient.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgOrient {
  /// @brief Exact native q1 field; float32.
  q1 : Float
  /// @brief Exact native q2 field; float32.
  q2 : Float
  /// @brief Exact native q3 field; float32.
  q3 : Float
  /// @brief Exact native q4 field; float32.
  q4 : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgOrient::new() -> Ros2Abb_rapid_msgsMsgOrient {
  Ros2Abb_rapid_msgsMsgOrient::{ q1: 0.0F, q2: 0.0F, q3: 0.0F, q4: 0.0F, }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 16 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgOrient::max_wire_bytes() -> Int32 {
  16
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgOrient::codec_identity() -> String {
  "UWVMROS1_821d887b88298422f9466aaf3926db580f878e964055fbd72226b7f76f2f536e"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgOrient::write_fields(
  self : Ros2Abb_rapid_msgsMsgOrient,
  writer : Writer,
) -> Unit {
  if self.q1.is_nan() || self.q1.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.q1).to_uint64(), 4)
  if self.q2.is_nan() || self.q2.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.q2).to_uint64(), 4)
  if self.q3.is_nan() || self.q3.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.q3).to_uint64(), 4)
  if self.q4.is_nan() || self.q4.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.q4).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgOrient::encode(
  self : Ros2Abb_rapid_msgsMsgOrient,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(16)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgOrient::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgOrient {
  let q1 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let q2 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let q3 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let q4 = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_msgsMsgOrient::{ q1, q2, q3, q4, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgOrient::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgOrient, Int32] {
  if bytes.length() > 16 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgOrient::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/LoadData.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgLoadData {
  /// @brief Exact native mass field; float32.
  mass : Float
  /// @brief Exact native cog field; abb_rapid_msgs/msg/Pos.
  cog : Ros2Abb_rapid_msgsMsgPos
  /// @brief Exact native aom field; abb_rapid_msgs/msg/Orient.
  aom : Ros2Abb_rapid_msgsMsgOrient
  /// @brief Exact native ix field; float32.
  ix : Float
  /// @brief Exact native iy field; float32.
  iy : Float
  /// @brief Exact native iz field; float32.
  iz : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgLoadData::new() -> Ros2Abb_rapid_msgsMsgLoadData {
  Ros2Abb_rapid_msgsMsgLoadData::{
    mass: 0.0F,
    cog: Ros2Abb_rapid_msgsMsgPos::new(),
    aom: Ros2Abb_rapid_msgsMsgOrient::new(),
    ix: 0.0F,
    iy: 0.0F,
    iz: 0.0F,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 44 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgLoadData::max_wire_bytes() -> Int32 {
  44
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgLoadData::codec_identity() -> String {
  "UWVMROS1_f73e480a0e6746a4df8f4d62bc123d68d01d3dc48f0bc5f0eac51b859a0750f9"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgLoadData::write_fields(
  self : Ros2Abb_rapid_msgsMsgLoadData,
  writer : Writer,
) -> Unit {
  if self.mass.is_nan() || self.mass.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.mass).to_uint64(), 4)
  self.cog.write_fields(writer)
  self.aom.write_fields(writer)
  if self.ix.is_nan() || self.ix.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.ix).to_uint64(), 4)
  if self.iy.is_nan() || self.iy.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.iy).to_uint64(), 4)
  if self.iz.is_nan() || self.iz.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.iz).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgLoadData::encode(
  self : Ros2Abb_rapid_msgsMsgLoadData,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(44)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgLoadData::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgLoadData {
  let mass = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let cog = Ros2Abb_rapid_msgsMsgPos::read_fields(reader)
  let aom = Ros2Abb_rapid_msgsMsgOrient::read_fields(reader)
  let ix = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let iy = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let iz = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_msgsMsgLoadData::{ mass, cog, aom, ix, iy, iz, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgLoadData::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgLoadData, Int32] {
  if bytes.length() > 44 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgLoadData::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/Pose.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgPose {
  /// @brief Exact native trans field; abb_rapid_msgs/msg/Pos.
  trans : Ros2Abb_rapid_msgsMsgPos
  /// @brief Exact native rot field; abb_rapid_msgs/msg/Orient.
  rot : Ros2Abb_rapid_msgsMsgOrient
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgPose::new() -> Ros2Abb_rapid_msgsMsgPose {
  Ros2Abb_rapid_msgsMsgPose::{
    trans: Ros2Abb_rapid_msgsMsgPos::new(),
    rot: Ros2Abb_rapid_msgsMsgOrient::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 28 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgPose::max_wire_bytes() -> Int32 {
  28
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgPose::codec_identity() -> String {
  "UWVMROS1_8f1535fe21326706fd0b16314857162d36bca91ce8e8f6a8bec3864dafb9e2f2"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgPose::write_fields(
  self : Ros2Abb_rapid_msgsMsgPose,
  writer : Writer,
) -> Unit {
  self.trans.write_fields(writer)
  self.rot.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgPose::encode(
  self : Ros2Abb_rapid_msgsMsgPose,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(28)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgPose::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgPose {
  let trans = Ros2Abb_rapid_msgsMsgPos::read_fields(reader)
  let rot = Ros2Abb_rapid_msgsMsgOrient::read_fields(reader)
  Ros2Abb_rapid_msgsMsgPose::{ trans, rot, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgPose::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgPose, Int32] {
  if bytes.length() > 28 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgPose::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/RobTarget.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgRobTarget {
  /// @brief Exact native trans field; abb_rapid_msgs/msg/Pos.
  trans : Ros2Abb_rapid_msgsMsgPos
  /// @brief Exact native rot field; abb_rapid_msgs/msg/Orient.
  rot : Ros2Abb_rapid_msgsMsgOrient
  /// @brief Exact native robconf field; abb_rapid_msgs/msg/ConfData.
  robconf : Ros2Abb_rapid_msgsMsgConfData
  /// @brief Exact native extax field; abb_rapid_msgs/msg/ExtJoint.
  extax : Ros2Abb_rapid_msgsMsgExtJoint
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgRobTarget::new() -> Ros2Abb_rapid_msgsMsgRobTarget {
  Ros2Abb_rapid_msgsMsgRobTarget::{
    trans: Ros2Abb_rapid_msgsMsgPos::new(),
    rot: Ros2Abb_rapid_msgsMsgOrient::new(),
    robconf: Ros2Abb_rapid_msgsMsgConfData::new(),
    extax: Ros2Abb_rapid_msgsMsgExtJoint::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 68 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgRobTarget::max_wire_bytes() -> Int32 {
  68
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgRobTarget::codec_identity() -> String {
  "UWVMROS1_8decb56e8faf0a6a954af974adfea5c500aea8392e6a778ae7394174323489d8"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgRobTarget::write_fields(
  self : Ros2Abb_rapid_msgsMsgRobTarget,
  writer : Writer,
) -> Unit {
  self.trans.write_fields(writer)
  self.rot.write_fields(writer)
  self.robconf.write_fields(writer)
  self.extax.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgRobTarget::encode(
  self : Ros2Abb_rapid_msgsMsgRobTarget,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(68)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgRobTarget::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgRobTarget {
  let trans = Ros2Abb_rapid_msgsMsgPos::read_fields(reader)
  let rot = Ros2Abb_rapid_msgsMsgOrient::read_fields(reader)
  let robconf = Ros2Abb_rapid_msgsMsgConfData::read_fields(reader)
  let extax = Ros2Abb_rapid_msgsMsgExtJoint::read_fields(reader)
  Ros2Abb_rapid_msgsMsgRobTarget::{ trans, rot, robconf, extax, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgRobTarget::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgRobTarget, Int32] {
  if bytes.length() > 68 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgRobTarget::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/ToolData.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgToolData {
  /// @brief Exact native robhold field; bool.
  robhold : Bool
  /// @brief Exact native tframe field; abb_rapid_msgs/msg/Pose.
  tframe : Ros2Abb_rapid_msgsMsgPose
  /// @brief Exact native tload field; abb_rapid_msgs/msg/LoadData.
  tload : Ros2Abb_rapid_msgsMsgLoadData
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgToolData::new() -> Ros2Abb_rapid_msgsMsgToolData {
  Ros2Abb_rapid_msgsMsgToolData::{
    robhold: false,
    tframe: Ros2Abb_rapid_msgsMsgPose::new(),
    tload: Ros2Abb_rapid_msgsMsgLoadData::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 73 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgToolData::max_wire_bytes() -> Int32 {
  73
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgToolData::codec_identity() -> String {
  "UWVMROS1_948fa0bbaaf95f0d88ca03cad687f16102261f54b0da889ae8bca82042fc5237"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgToolData::write_fields(
  self : Ros2Abb_rapid_msgsMsgToolData,
  writer : Writer,
) -> Unit {
  writer.integer(if self.robhold { 1UL } else { 0UL }, 1)
  self.tframe.write_fields(writer)
  self.tload.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgToolData::encode(
  self : Ros2Abb_rapid_msgsMsgToolData,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(73)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgToolData::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgToolData {
  let robhold = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let tframe = Ros2Abb_rapid_msgsMsgPose::read_fields(reader)
  let tload = Ros2Abb_rapid_msgsMsgLoadData::read_fields(reader)
  Ros2Abb_rapid_msgsMsgToolData::{ robhold, tframe, tload, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgToolData::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgToolData, Int32] {
  if bytes.length() > 73 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgToolData::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_msgs/msg/WObjData.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_msgsMsgWObjData {
  /// @brief Exact native robhold field; bool.
  robhold : Bool
  /// @brief Exact native ufprog field; bool.
  ufprog : Bool
  /// @brief Exact native ufmec field; string.
  ufmec : String
  /// @brief Exact native uframe field; abb_rapid_msgs/msg/Pose.
  uframe : Ros2Abb_rapid_msgsMsgPose
  /// @brief Exact native oframe field; abb_rapid_msgs/msg/Pose.
  oframe : Ros2Abb_rapid_msgsMsgPose
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_msgsMsgWObjData::new() -> Ros2Abb_rapid_msgsMsgWObjData {
  Ros2Abb_rapid_msgsMsgWObjData::{
    robhold: false,
    ufprog: false,
    ufmec: "",
    uframe: Ros2Abb_rapid_msgsMsgPose::new(),
    oframe: Ros2Abb_rapid_msgsMsgPose::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 574 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_msgsMsgWObjData::max_wire_bytes() -> Int32 {
  574
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_msgsMsgWObjData::codec_identity() -> String {
  "UWVMROS1_b36f0448512fab6028431d19b39a8ae31b7b81b2615ffc8311139f63b5d8e7cd"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_msgsMsgWObjData::write_fields(
  self : Ros2Abb_rapid_msgsMsgWObjData,
  writer : Writer,
) -> Unit {
  writer.integer(if self.robhold { 1UL } else { 0UL }, 1)
  writer.integer(if self.ufprog { 1UL } else { 0UL }, 1)
  writer.text(self.ufmec, 512)
  self.uframe.write_fields(writer)
  self.oframe.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_msgsMsgWObjData::encode(
  self : Ros2Abb_rapid_msgsMsgWObjData,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(574)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_msgsMsgWObjData::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_msgsMsgWObjData {
  let robhold = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let ufprog = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let ufmec = reader.text(512)
  let uframe = Ros2Abb_rapid_msgsMsgPose::read_fields(reader)
  let oframe = Ros2Abb_rapid_msgsMsgPose::read_fields(reader)
  Ros2Abb_rapid_msgsMsgWObjData::{ robhold, ufprog, ufmec, uframe, oframe, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_msgsMsgWObjData::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_msgsMsgWObjData, Int32] {
  if bytes.length() > 574 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_msgsMsgWObjData::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings {
  /// @brief Exact native tool field; abb_rapid_msgs/msg/ToolData.
  tool : Ros2Abb_rapid_msgsMsgToolData
  /// @brief Exact native wobj field; abb_rapid_msgs/msg/WObjData.
  wobj : Ros2Abb_rapid_msgsMsgWObjData
  /// @brief Exact native correction_frame field; abb_rapid_msgs/msg/Pose.
  correction_frame : Ros2Abb_rapid_msgsMsgPose
  /// @brief Exact native sensor_frame field; abb_rapid_msgs/msg/Pose.
  sensor_frame : Ros2Abb_rapid_msgsMsgPose
  /// @brief Exact native cond_min_max field; float32.
  cond_min_max : Float
  /// @brief Exact native lp_filter field; float32.
  lp_filter : Float
  /// @brief Exact native sample_rate field; uint8.
  sample_rate : UInt32
  /// @brief Exact native max_speed_deviation field; float32.
  max_speed_deviation : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::new() -> Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings {
  Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::{
    tool: Ros2Abb_rapid_msgsMsgToolData::new(),
    wobj: Ros2Abb_rapid_msgsMsgWObjData::new(),
    correction_frame: Ros2Abb_rapid_msgsMsgPose::new(),
    sensor_frame: Ros2Abb_rapid_msgsMsgPose::new(),
    cond_min_max: 0.0F,
    lp_filter: 0.0F,
    sample_rate: 0U,
    max_speed_deviation: 0.0F,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 716 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::max_wire_bytes() -> Int32 {
  716
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::codec_identity() -> String {
  "UWVMROS1_fce73aea80d9b8a299b8e2ab742602871146b3ebbd624a2e807e25c1ac107cfa"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings,
  writer : Writer,
) -> Unit {
  self.tool.write_fields(writer)
  self.wobj.write_fields(writer)
  self.correction_frame.write_fields(writer)
  self.sensor_frame.write_fields(writer)
  if self.cond_min_max.is_nan() || self.cond_min_max.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.cond_min_max).to_uint64(), 4)
  if self.lp_filter.is_nan() || self.lp_filter.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.lp_filter).to_uint64(), 4)
  if self.sample_rate > 255U {
    writer.status = 22
    return
  }
  writer.integer(self.sample_rate.to_uint64(), 1)
  if self.max_speed_deviation.is_nan() || self.max_speed_deviation.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.max_speed_deviation).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::encode(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(716)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings {
  let tool = Ros2Abb_rapid_msgsMsgToolData::read_fields(reader)
  let wobj = Ros2Abb_rapid_msgsMsgWObjData::read_fields(reader)
  let correction_frame = Ros2Abb_rapid_msgsMsgPose::read_fields(reader)
  let sensor_frame = Ros2Abb_rapid_msgsMsgPose::read_fields(reader)
  let cond_min_max = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let lp_filter = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let sample_rate = reader.integer(1).to_uint()
  let max_speed_deviation = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::{
    tool,
    wobj,
    correction_frame,
    sensor_frame,
    cond_min_max,
    lp_filter,
    sample_rate,
    max_speed_deviation,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings, Int32] {
  if bytes.length() > 716 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings {
  /// @brief Exact native cond_time field; float32.
  cond_time : Float
  /// @brief Exact native ramp_in_time field; float32.
  ramp_in_time : Float
  /// @brief Exact native offset field; abb_rapid_msgs/msg/Pose.
  offset : Ros2Abb_rapid_msgsMsgPose
  /// @brief Exact native pos_corr_gain field; float32.
  pos_corr_gain : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::new() -> Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings {
  Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::{
    cond_time: 0.0F,
    ramp_in_time: 0.0F,
    offset: Ros2Abb_rapid_msgsMsgPose::new(),
    pos_corr_gain: 0.0F,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 40 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::max_wire_bytes() -> Int32 {
  40
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::codec_identity() -> String {
  "UWVMROS1_92a2a654eb2eda89077933f955f04ed87884827b8875cf563570eed5d211b0e2"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings,
  writer : Writer,
) -> Unit {
  if self.cond_time.is_nan() || self.cond_time.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.cond_time).to_uint64(), 4)
  if self.ramp_in_time.is_nan() || self.ramp_in_time.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.ramp_in_time).to_uint64(), 4)
  self.offset.write_fields(writer)
  if self.pos_corr_gain.is_nan() || self.pos_corr_gain.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.pos_corr_gain).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::encode(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(40)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings {
  let cond_time = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let ramp_in_time = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let offset = Ros2Abb_rapid_msgsMsgPose::read_fields(reader)
  let pos_corr_gain = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::{
    cond_time,
    ramp_in_time,
    offset,
    pos_corr_gain,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings, Int32] {
  if bytes.length() > 40 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings {
  /// @brief Exact native use_filtering field; bool.
  use_filtering : Bool
  /// @brief Exact native comm_timeout field; float32.
  comm_timeout : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::new() -> Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings {
  Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::{
    use_filtering: false,
    comm_timeout: 0.0F,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 5 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::max_wire_bytes() -> Int32 {
  5
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::codec_identity() -> String {
  "UWVMROS1_2565bed5b83b132c69f37d7294c69181800ad2974ddc54f60868da57e28e782c"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings,
  writer : Writer,
) -> Unit {
  writer.integer(if self.use_filtering { 1UL } else { 0UL }, 1)
  if self.comm_timeout.is_nan() || self.comm_timeout.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.comm_timeout).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::encode(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(5)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings {
  let use_filtering = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let comm_timeout = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::{
    use_filtering,
    comm_timeout,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings, Int32] {
  if bytes.length() > 5 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings {
  /// @brief Exact native ramp_out_time field; float32.
  ramp_out_time : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::new() -> Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings {
  Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::{ ramp_out_time: 0.0F, }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::max_wire_bytes() -> Int32 {
  4
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::codec_identity() -> String {
  "UWVMROS1_0f3f2f6034567a7d49dd140ff9ff620e8567548139597b9b823e63a947673cee"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings,
  writer : Writer,
) -> Unit {
  if self.ramp_out_time.is_nan() || self.ramp_out_time.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.ramp_out_time).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::encode(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(4)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings {
  let ramp_out_time = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::{ ramp_out_time, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings, Int32] {
  if bytes.length() > 4 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/msg/EGMSettings.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings {
  /// @brief Exact native allow_egm_motions field; bool.
  allow_egm_motions : Bool
  /// @brief Exact native use_presync field; bool.
  use_presync : Bool
  /// @brief Exact native setup_uc field; abb_rapid_sm_addin_msgs/msg/EGMSetupSettings.
  setup_uc : Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings
  /// @brief Exact native activate field; abb_rapid_sm_addin_msgs/msg/EGMActivateSettings.
  activate : Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings
  /// @brief Exact native run field; abb_rapid_sm_addin_msgs/msg/EGMRunSettings.
  run : Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings
  /// @brief Exact native stop field; abb_rapid_sm_addin_msgs/msg/EGMStopSettings.
  stop : Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::new() -> Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings {
  Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::{
    allow_egm_motions: false,
    use_presync: false,
    setup_uc: Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::new(),
    activate: Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::new(),
    run: Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::new(),
    stop: Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 767 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::max_wire_bytes() -> Int32 {
  767
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::codec_identity() -> String {
  "UWVMROS1_622d3a975eecb11f7729aecfadc161cada271208d6fe7599f455750b90144ef3"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings,
  writer : Writer,
) -> Unit {
  writer.integer(if self.allow_egm_motions { 1UL } else { 0UL }, 1)
  writer.integer(if self.use_presync { 1UL } else { 0UL }, 1)
  self.setup_uc.write_fields(writer)
  self.activate.write_fields(writer)
  self.run.write_fields(writer)
  self.stop.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::encode(
  self : Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(767)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings {
  let allow_egm_motions = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let use_presync = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let setup_uc = Ros2Abb_rapid_sm_addin_msgsMsgEGMSetupSettings::read_fields(
    reader,
  )
  let activate = Ros2Abb_rapid_sm_addin_msgsMsgEGMActivateSettings::read_fields(
    reader,
  )
  let run = Ros2Abb_rapid_sm_addin_msgsMsgEGMRunSettings::read_fields(reader)
  let stop = Ros2Abb_rapid_sm_addin_msgsMsgEGMStopSettings::read_fields(reader)
  Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::{
    allow_egm_motions,
    use_presync,
    setup_uc,
    activate,
    run,
    stop,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings, Int32] {
  if bytes.length() > 767 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/msg/StateMachineState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState {
  /// @brief Exact native rapid_task field; string.
  rapid_task : String
  /// @brief Exact native sm_state field; uint8.
  sm_state : UInt32
  /// @brief Exact native egm_action field; uint8.
  egm_action : UInt32
}

///|
/// @brief Return the original SM_STATE_UNKNOWN source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_sm_state_unknown() -> UInt32 {
  1U
}

///|
/// @brief Return the original SM_STATE_IDLE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_sm_state_idle() -> UInt32 {
  2U
}

///|
/// @brief Return the original SM_STATE_INITIALIZE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_sm_state_initialize() -> UInt32 {
  3U
}

///|
/// @brief Return the original SM_STATE_RUN_RAPID_ROUTINE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_sm_state_run_rapid_routine() -> UInt32 {
  4U
}

///|
/// @brief Return the original SM_STATE_RUN_EGM_ROUTINE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_sm_state_run_egm_routine() -> UInt32 {
  5U
}

///|
/// @brief Return the original EGM_ACTION_UNKNOWN source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_egm_action_unknown() -> UInt32 {
  1U
}

///|
/// @brief Return the original EGM_ACTION_NONE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_egm_action_none() -> UInt32 {
  2U
}

///|
/// @brief Return the original EGM_ACTION_RUN_JOINT source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_egm_action_run_joint() -> UInt32 {
  3U
}

///|
/// @brief Return the original EGM_ACTION_RUN_POSE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_egm_action_run_pose() -> UInt32 {
  4U
}

///|
/// @brief Return the original EGM_ACTION_STOP source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_egm_action_stop() -> UInt32 {
  5U
}

///|
/// @brief Return the original EGM_ACTION_START_STREAM source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_egm_action_start_stream() -> UInt32 {
  6U
}

///|
/// @brief Return the original EGM_ACTION_STOP_STREAM source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::constant_egm_action_stop_stream() -> UInt32 {
  7U
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::new() -> Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState {
  Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::{
    rapid_task: "",
    sm_state: 0U,
    egm_action: 0U,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::codec_identity() -> String {
  "UWVMROS1_ff2a09e4b6e8ef26cbdc3ecdffdceb33d6b2c82f0d51ed2c38ce9648c6f47711"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState,
  writer : Writer,
) -> Unit {
  writer.text(self.rapid_task, 512)
  if self.sm_state > 255U {
    writer.status = 22
    return
  }
  writer.integer(self.sm_state.to_uint64(), 1)
  if self.egm_action > 255U {
    writer.status = 22
    return
  }
  writer.integer(self.egm_action.to_uint64(), 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::encode(
  self : Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState {
  let rapid_task = reader.text(512)
  let sm_state = reader.integer(1).to_uint()
  let egm_action = reader.integer(1).to_uint()
  Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::{
    rapid_task,
    sm_state,
    egm_action,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/msg/RuntimeState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState {
  /// @brief Exact native header field; std_msgs/msg/Header.
  header : Ros2Std_msgsMsgHeader
  /// @brief Exact native state_machines field; abb_rapid_sm_addin_msgs/msg/StateMachineState sequence.
  state_machines : Array[Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::new() -> Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState {
  Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::{
    header: Ros2Std_msgsMsgHeader::new(),
    state_machines: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 8368 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::max_wire_bytes() -> Int32 {
  8368
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::codec_identity() -> String {
  "UWVMROS1_3c0f157544fa82c4e206a4fb42f8ba7f67213d19533f79b77c66dec6fd0460d9"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState,
  writer : Writer,
) -> Unit {
  self.header.write_fields(writer)
  if self.state_machines.length() > 16 {
    writer.status = 22
    return
  }
  writer.integer(self.state_machines.length().to_uint64(), 4)
  for item in self.state_machines {
    item.write_fields(writer)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::encode(
  self : Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(8368)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState {
  let header = Ros2Std_msgsMsgHeader::read_fields(reader)
  let state_machines_count = reader.count(16)
  let state_machines : Array[Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState] = []
  for i = 0; i < state_machines_count; i = i + 1 {
    state_machines.push(
      Ros2Abb_rapid_sm_addin_msgsMsgStateMachineState::read_fields(reader),
    )
  }
  Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::{ header, state_machines, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState, Int32] {
  if bytes.length() > 8368 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsMsgRuntimeState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request {
  /// @brief Exact native task field; string.
  task : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::new(
    ) -> Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request {
  Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::{ task: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 68 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::max_wire_bytes() -> Int32 {
  68
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::codec_identity() -> String {
  "UWVMROS1_363be2459fcc9c475c6305cbcfebf7689e891eb27645b7667960aace23d56e8e"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request,
  writer : Writer,
) -> Unit {
  writer.text(self.task, 64)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::encode(
  self : Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(68)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request {
  let task = reader.text(64)
  Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::{ task, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request, Int32] {
  if bytes.length() > 68 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Request::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/srv/GetEGMSettings_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response {
  /// @brief Exact native settings field; abb_rapid_sm_addin_msgs/msg/EGMSettings.
  settings : Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::new(
    ) -> Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response {
  Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::{
    settings: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::new(),
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1285 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::max_wire_bytes() -> Int32 {
  1285
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::codec_identity() -> String {
  "UWVMROS1_d8f340e1c6d78fc0a782c3279efb34ae5e11df175a82f9dd5ee82e603d6b2ffb"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response,
  writer : Writer,
) -> Unit {
  self.settings.write_fields(writer)
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::encode(
  self : Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(1285)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response {
  let settings = Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::read_fields(reader)
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::{
    settings,
    result_code,
    message,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response, Int32] {
  if bytes.length() > 1285 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsSrvGetEGMSettings_Response::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request {
  /// @brief Exact native task field; string.
  task : String
  /// @brief Exact native settings field; abb_rapid_sm_addin_msgs/msg/EGMSettings.
  settings : Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::new(
    ) -> Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request {
  Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::{
    task: "",
    settings: Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 835 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::max_wire_bytes() -> Int32 {
  835
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::codec_identity() -> String {
  "UWVMROS1_c2f3dd535e9475526bf18bdffa0e9a839049d315c9aebb150f8561ee3361a2bd"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request,
  writer : Writer,
) -> Unit {
  writer.text(self.task, 64)
  self.settings.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::encode(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(835)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request {
  let task = reader.text(64)
  let settings = Ros2Abb_rapid_sm_addin_msgsMsgEGMSettings::read_fields(reader)
  Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::{ task, settings, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request, Int32] {
  if bytes.length() > 835 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Request::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/srv/SetEGMSettings_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::new(
    ) -> Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response {
  Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::{
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::codec_identity() -> String {
  "UWVMROS1_6a1adeebe31dfe101a6d57019e26ee2f1144b9a6ce30aee08d4c6fe56ea6838d"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::encode(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::{
    result_code,
    message,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsSrvSetEGMSettings_Response::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request {
  /// @brief Exact native task field; string.
  task : String
  /// @brief Exact native routine field; string.
  routine : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::new(
    ) -> Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request {
  Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::{
    task: "",
    routine: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 584 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::max_wire_bytes() -> Int32 {
  584
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::codec_identity() -> String {
  "UWVMROS1_4561b7e5e296a1a329d5f5684bcbde1ef41324554a34e9a79a85824286dd477c"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request,
  writer : Writer,
) -> Unit {
  writer.text(self.task, 64)
  writer.text(self.routine, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::encode(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(584)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request {
  let task = reader.text(64)
  let routine = reader.text(512)
  Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::{ task, routine, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request, Int32] {
  if bytes.length() > 584 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Request::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/srv/SetRAPIDRoutine_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::new(
    ) -> Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response {
  Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::{
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::codec_identity() -> String {
  "UWVMROS1_980d2a16536289f446161acdf2fc57d459baa2290d74f1dd5aaf8129126cbba1"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::encode(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::{
    result_code,
    message,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsSrvSetRAPIDRoutine_Response::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request {
  /// @brief Exact native task field; string.
  task : String
  /// @brief Exact native command field; uint8.
  command : UInt32
  /// @brief Exact native target_position field; float32.
  target_position : Float
}

///|
/// @brief Return the original SG_COMMAND_UNKNOWN source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_unknown() -> UInt32 {
  1U
}

///|
/// @brief Return the original SG_COMMAND_NONE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_none() -> UInt32 {
  2U
}

///|
/// @brief Return the original SG_COMMAND_INITIALIZE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_initialize() -> UInt32 {
  3U
}

///|
/// @brief Return the original SG_COMMAND_CALIBRATE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_calibrate() -> UInt32 {
  4U
}

///|
/// @brief Return the original SG_COMMAND_MOVE_TO source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_move_to() -> UInt32 {
  5U
}

///|
/// @brief Return the original SG_COMMAND_GRIP_IN source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_grip_in() -> UInt32 {
  6U
}

///|
/// @brief Return the original SG_COMMAND_GRIP_OUT source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_grip_out() -> UInt32 {
  7U
}

///|
/// @brief Return the original SG_COMMAND_BLOW_ON_1 source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_blow_on_1() -> UInt32 {
  8U
}

///|
/// @brief Return the original SG_COMMAND_BLOW_ON_2 source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_blow_on_2() -> UInt32 {
  9U
}

///|
/// @brief Return the original SG_COMMAND_BLOW_OFF_1 source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_blow_off_1() -> UInt32 {
  10U
}

///|
/// @brief Return the original SG_COMMAND_BLOW_OFF_2 source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_blow_off_2() -> UInt32 {
  11U
}

///|
/// @brief Return the original SG_COMMAND_VACUUM_ON_1 source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_vacuum_on_1() -> UInt32 {
  12U
}

///|
/// @brief Return the original SG_COMMAND_VACUUM_ON_2 source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_vacuum_on_2() -> UInt32 {
  13U
}

///|
/// @brief Return the original SG_COMMAND_VACUUM_OFF_1 source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_vacuum_off_1() -> UInt32 {
  14U
}

///|
/// @brief Return the original SG_COMMAND_VACUUM_OFF_2 source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::constant_sg_command_vacuum_off_2() -> UInt32 {
  15U
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::new() -> Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request {
  Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::{
    task: "",
    command: 0U,
    target_position: 0.0F,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 73 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::max_wire_bytes() -> Int32 {
  73
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::codec_identity() -> String {
  "UWVMROS1_5d6983aa85c2c52f8ec06cbd723d5929cfc381db2e0bfffb4c27078497d86c90"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request,
  writer : Writer,
) -> Unit {
  writer.text(self.task, 64)
  if self.command > 255U {
    writer.status = 22
    return
  }
  writer.integer(self.command.to_uint64(), 1)
  if self.target_position.is_nan() || self.target_position.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.target_position).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::encode(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(73)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request {
  let task = reader.text(64)
  let command = reader.integer(1).to_uint()
  let target_position = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::{
    task,
    command,
    target_position,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request, Int32] {
  if bytes.length() > 73 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Request::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_rapid_sm_addin_msgs/srv/SetSGCommand_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::new(
    ) -> Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response {
  Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::{
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::codec_identity() -> String {
  "UWVMROS1_87cdc41c81d49930dce7193d4b7af98add266a6e9a7cf5e69457d01ded388cf8"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::write_fields(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::encode(
  self : Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::{ result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_rapid_sm_addin_msgsSrvSetSGCommand_Response::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/msg/MechanicalUnitState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsMsgMechanicalUnitState {
  /// @brief Exact native name field; string.
  name : String
  /// @brief Exact native activated field; bool.
  activated : Bool
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsMsgMechanicalUnitState::new() -> Ros2Abb_robot_msgsMsgMechanicalUnitState {
  Ros2Abb_robot_msgsMsgMechanicalUnitState::{ name: "", activated: false, }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 69 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsMsgMechanicalUnitState::max_wire_bytes() -> Int32 {
  69
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsMsgMechanicalUnitState::codec_identity() -> String {
  "UWVMROS1_1dc7a7dcbaa19e78cd6419f8844287a7fbd9d7a839ab1a8ad97ef0be34f3a3a8"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsMsgMechanicalUnitState::write_fields(
  self : Ros2Abb_robot_msgsMsgMechanicalUnitState,
  writer : Writer,
) -> Unit {
  writer.text(self.name, 64)
  writer.integer(if self.activated { 1UL } else { 0UL }, 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsMsgMechanicalUnitState::encode(
  self : Ros2Abb_robot_msgsMsgMechanicalUnitState,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(69)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsMsgMechanicalUnitState::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsMsgMechanicalUnitState {
  let name = reader.text(64)
  let activated = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  Ros2Abb_robot_msgsMsgMechanicalUnitState::{ name, activated, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsMsgMechanicalUnitState::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsMsgMechanicalUnitState, Int32] {
  if bytes.length() > 69 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsMsgMechanicalUnitState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/msg/RAPIDSymbolPath.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsMsgRAPIDSymbolPath {
  /// @brief Exact native task field; string.
  task : String
  /// @brief Exact native module field; string.
  module : String
  /// @brief Exact native symbol field; string.
  symbol : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new() -> Ros2Abb_robot_msgsMsgRAPIDSymbolPath {
  Ros2Abb_robot_msgsMsgRAPIDSymbolPath::{ task: "", module: "", symbol: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 204 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsMsgRAPIDSymbolPath::max_wire_bytes() -> Int32 {
  204
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsMsgRAPIDSymbolPath::codec_identity() -> String {
  "UWVMROS1_249523197567fbf638f30487a7f5b8d8ff5ea746fcd4a65a35f2dbb18a3adf0e"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsMsgRAPIDSymbolPath::write_fields(
  self : Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
  writer : Writer,
) -> Unit {
  writer.text(self.task, 64)
  writer.text(self.module, 64)
  writer.text(self.symbol, 64)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsMsgRAPIDSymbolPath::encode(
  self : Ros2Abb_robot_msgsMsgRAPIDSymbolPath,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(204)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsMsgRAPIDSymbolPath {
  let task = reader.text(64)
  let module = reader.text(64)
  let symbol = reader.text(64)
  Ros2Abb_robot_msgsMsgRAPIDSymbolPath::{ task, module, symbol, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsMsgRAPIDSymbolPath::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsMsgRAPIDSymbolPath, Int32] {
  if bytes.length() > 204 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/msg/RAPIDTaskState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsMsgRAPIDTaskState {
  /// @brief Exact native name field; string.
  name : String
  /// @brief Exact native activated field; bool.
  activated : Bool
  /// @brief Exact native execution_state field; uint8.
  execution_state : UInt32
  /// @brief Exact native motion_task field; bool.
  motion_task : Bool
}

///|
/// @brief Return the original EXECUTION_STATE_UNKNOWN source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::constant_execution_state_unknown() -> UInt32 {
  1U
}

///|
/// @brief Return the original EXECUTION_STATE_READY source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::constant_execution_state_ready() -> UInt32 {
  2U
}

///|
/// @brief Return the original EXECUTION_STATE_STOPPED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::constant_execution_state_stopped() -> UInt32 {
  3U
}

///|
/// @brief Return the original EXECUTION_STATE_STARTED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::constant_execution_state_started() -> UInt32 {
  4U
}

///|
/// @brief Return the original EXECUTION_STATE_UNINITIALIZED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::constant_execution_state_uninitialized() -> UInt32 {
  5U
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::new() -> Ros2Abb_robot_msgsMsgRAPIDTaskState {
  Ros2Abb_robot_msgsMsgRAPIDTaskState::{
    name: "",
    activated: false,
    execution_state: 0U,
    motion_task: false,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 71 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::max_wire_bytes() -> Int32 {
  71
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::codec_identity() -> String {
  "UWVMROS1_ff698e375b0ff33026cfd248c1ac734f939763aba25a6c4f7cac628d445422fd"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsMsgRAPIDTaskState::write_fields(
  self : Ros2Abb_robot_msgsMsgRAPIDTaskState,
  writer : Writer,
) -> Unit {
  writer.text(self.name, 64)
  writer.integer(if self.activated { 1UL } else { 0UL }, 1)
  if self.execution_state > 255U {
    writer.status = 22
    return
  }
  writer.integer(self.execution_state.to_uint64(), 1)
  writer.integer(if self.motion_task { 1UL } else { 0UL }, 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::encode(
  self : Ros2Abb_robot_msgsMsgRAPIDTaskState,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(71)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsMsgRAPIDTaskState::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsMsgRAPIDTaskState {
  let name = reader.text(64)
  let activated = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let execution_state = reader.integer(1).to_uint()
  let motion_task = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  Ros2Abb_robot_msgsMsgRAPIDTaskState::{
    name,
    activated,
    execution_state,
    motion_task,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsMsgRAPIDTaskState::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsMsgRAPIDTaskState, Int32] {
  if bytes.length() > 71 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsMsgRAPIDTaskState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/msg/ServiceResponses.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsMsgServiceResponses {}

///|
/// @brief Return the original SUCCESS source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_success() -> String {
  ""
}

///|
/// @brief Return the original RC_SUCCESS source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_success() -> UInt32 {
  1U
}

///|
/// @brief Return the original FAILED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_failed() -> String {
  "Service failed (e.g. timeout or resource not found, see the DEBUG log for details)"
}

///|
/// @brief Return the original RC_FAILED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_failed() -> UInt32 {
  2U
}

///|
/// @brief Return the original SERVER_IS_BUSY source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_server_is_busy() -> String {
  "Server is busy"
}

///|
/// @brief Return the original RC_SERVER_IS_BUSY source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_server_is_busy() -> UInt32 {
  1001U
}

///|
/// @brief Return the original EMPTY_FILENAME source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_empty_filename() -> String {
  "Filename is empty"
}

///|
/// @brief Return the original RC_EMPTY_FILENAME source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_empty_filename() -> UInt32 {
  2001U
}

///|
/// @brief Return the original EMPTY_SIGNAL_NAME source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_empty_signal_name() -> String {
  "Signal name is empty"
}

///|
/// @brief Return the original RC_EMPTY_SIGNAL_NAME source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_empty_signal_name() -> UInt32 {
  2002U
}

///|
/// @brief Return the original EMPTY_RAPID_TASK_NAME source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_empty_rapid_task_name() -> String {
  "RAPID task name is empty"
}

///|
/// @brief Return the original RC_EMPTY_RAPID_TASK_NAME source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_empty_rapid_task_name() -> UInt32 {
  2003U
}

///|
/// @brief Return the original EMPTY_RAPID_MODULE_NAME source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_empty_rapid_module_name() -> String {
  "RAPID module name is empty"
}

///|
/// @brief Return the original RC_EMPTY_RAPID_MODULE_NAME source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_empty_rapid_module_name() -> UInt32 {
  2004U
}

///|
/// @brief Return the original EMPTY_RAPID_SYMBOL_NAME source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_empty_rapid_symbol_name() -> String {
  "RAPID symbol name is empty"
}

///|
/// @brief Return the original RC_EMPTY_RAPID_SYMBOL_NAME source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_empty_rapid_symbol_name() -> UInt32 {
  2005U
}

///|
/// @brief Return the original NOT_IN_AUTO_MODE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_not_in_auto_mode() -> String {
  "Robot controller is not in AUTO mode"
}

///|
/// @brief Return the original RC_NOT_IN_AUTO_MODE source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_not_in_auto_mode() -> UInt32 {
  3001U
}

///|
/// @brief Return the original MOTORS_ARE_OFF source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_motors_are_off() -> String {
  "Motors are off"
}

///|
/// @brief Return the original RC_MOTORS_ARE_OFF source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_motors_are_off() -> UInt32 {
  3002U
}

///|
/// @brief Return the original MOTORS_ARE_ON source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_motors_are_on() -> String {
  "Motors are on"
}

///|
/// @brief Return the original RC_MOTORS_ARE_ON source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_motors_are_on() -> UInt32 {
  3003U
}

///|
/// @brief Return the original RAPID_NOT_STOPPED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rapid_not_stopped() -> String {
  "RAPID has not been stopped"
}

///|
/// @brief Return the original RC_RAPID_NOT_STOPPED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_rapid_not_stopped() -> UInt32 {
  3004U
}

///|
/// @brief Return the original RAPID_NOT_RUNNING source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rapid_not_running() -> String {
  "RAPID is not running"
}

///|
/// @brief Return the original RC_RAPID_NOT_RUNNING source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_rapid_not_running() -> UInt32 {
  3005U
}

///|
/// @brief Return the original SM_RUNTIME_STATES_MISSING source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_sm_runtime_states_missing() -> String {
  "No runtime states received for any StateMachine Add-In instance"
}

///|
/// @brief Return the original RC_SM_RUNTIME_STATES_MISSING source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_sm_runtime_states_missing() -> UInt32 {
  4001U
}

///|
/// @brief Return the original SM_UNKNOWN_RAPID_TASK source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_sm_unknown_rapid_task() -> String {
  "RAPID task not found among known StateMachine Add-In instances"
}

///|
/// @brief Return the original RC_SM_UNKNOWN_RAPID_TASK source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_sm_unknown_rapid_task() -> UInt32 {
  4002U
}

///|
/// @brief Return the original SM_UNINITIALIZED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_sm_uninitialized() -> String {
  "StateMachine Add-In instance has not been initialized"
}

///|
/// @brief Return the original RC_SM_UNINITIALIZED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::constant_rc_sm_uninitialized() -> UInt32 {
  4003U
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::new() -> Ros2Abb_robot_msgsMsgServiceResponses {
  Ros2Abb_robot_msgsMsgServiceResponses::{ }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 0 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::max_wire_bytes() -> Int32 {
  0
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::codec_identity() -> String {
  "UWVMROS1_4e01b972b67454e851801f28aee09c0774b67907d2241cc67cae7d045c18f646"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsMsgServiceResponses::write_fields(
  self : Ros2Abb_robot_msgsMsgServiceResponses,
  writer : Writer,
) -> Unit {

}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::encode(
  self : Ros2Abb_robot_msgsMsgServiceResponses,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(0)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsMsgServiceResponses::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsMsgServiceResponses {
  Ros2Abb_robot_msgsMsgServiceResponses::{ }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsMsgServiceResponses::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsMsgServiceResponses, Int32] {
  if bytes.length() > 0 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsMsgServiceResponses::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/msg/SystemState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsMsgSystemState {
  /// @brief Exact native header field; std_msgs/msg/Header.
  header : Ros2Std_msgsMsgHeader
  /// @brief Exact native motors_on field; bool.
  motors_on : Bool
  /// @brief Exact native auto_mode field; bool.
  auto_mode : Bool
  /// @brief Exact native rapid_running field; bool.
  rapid_running : Bool
  /// @brief Exact native rapid_tasks field; abb_robot_msgs/msg/RAPIDTaskState sequence.
  rapid_tasks : Array[Ros2Abb_robot_msgsMsgRAPIDTaskState]
  /// @brief Exact native mechanical_units field; abb_robot_msgs/msg/MechanicalUnitState sequence.
  mechanical_units : Array[Ros2Abb_robot_msgsMsgMechanicalUnitState]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsMsgSystemState::new() -> Ros2Abb_robot_msgsMsgSystemState {
  Ros2Abb_robot_msgsMsgSystemState::{
    header: Ros2Std_msgsMsgHeader::new(),
    motors_on: false,
    auto_mode: false,
    rapid_running: false,
    rapid_tasks: [],
    mechanical_units: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 2327 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsMsgSystemState::max_wire_bytes() -> Int32 {
  2327
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsMsgSystemState::codec_identity() -> String {
  "UWVMROS1_c1cdbf0e578fddc5bf70cc2cc181d786f3e8189afc6a67962de6eb273973a38f"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsMsgSystemState::write_fields(
  self : Ros2Abb_robot_msgsMsgSystemState,
  writer : Writer,
) -> Unit {
  self.header.write_fields(writer)
  writer.integer(if self.motors_on { 1UL } else { 0UL }, 1)
  writer.integer(if self.auto_mode { 1UL } else { 0UL }, 1)
  writer.integer(if self.rapid_running { 1UL } else { 0UL }, 1)
  if self.rapid_tasks.length() > 16 {
    writer.status = 22
    return
  }
  writer.integer(self.rapid_tasks.length().to_uint64(), 4)
  for item in self.rapid_tasks {
    item.write_fields(writer)
  }
  if self.mechanical_units.length() > 16 {
    writer.status = 22
    return
  }
  writer.integer(self.mechanical_units.length().to_uint64(), 4)
  for item in self.mechanical_units {
    item.write_fields(writer)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsMsgSystemState::encode(
  self : Ros2Abb_robot_msgsMsgSystemState,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(2327)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsMsgSystemState::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsMsgSystemState {
  let header = Ros2Std_msgsMsgHeader::read_fields(reader)
  let motors_on = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let auto_mode = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let rapid_running = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let rapid_tasks_count = reader.count(16)
  let rapid_tasks : Array[Ros2Abb_robot_msgsMsgRAPIDTaskState] = []
  for i = 0; i < rapid_tasks_count; i = i + 1 {
    rapid_tasks.push(Ros2Abb_robot_msgsMsgRAPIDTaskState::read_fields(reader))
  }
  let mechanical_units_count = reader.count(16)
  let mechanical_units : Array[Ros2Abb_robot_msgsMsgMechanicalUnitState] = []
  for i = 0; i < mechanical_units_count; i = i + 1 {
    mechanical_units.push(
      Ros2Abb_robot_msgsMsgMechanicalUnitState::read_fields(reader),
    )
  }
  Ros2Abb_robot_msgsMsgSystemState::{
    header,
    motors_on,
    auto_mode,
    rapid_running,
    rapid_tasks,
    mechanical_units,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsMsgSystemState::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsMsgSystemState, Int32] {
  if bytes.length() > 2327 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsMsgSystemState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetFileContents_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetFileContents_Request {
  /// @brief Exact native filename field; string.
  filename : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Request::new() -> Ros2Abb_robot_msgsSrvGetFileContents_Request {
  Ros2Abb_robot_msgsSrvGetFileContents_Request::{ filename: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 516 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Request::max_wire_bytes() -> Int32 {
  516
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Request::codec_identity() -> String {
  "UWVMROS1_bdcf73a965bd05356e48019b74d633176fdeda62452bc7185d6b6ff30576016b"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetFileContents_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvGetFileContents_Request,
  writer : Writer,
) -> Unit {
  writer.text(self.filename, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Request::encode(
  self : Ros2Abb_robot_msgsSrvGetFileContents_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(516)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetFileContents_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetFileContents_Request {
  let filename = reader.text(512)
  Ros2Abb_robot_msgsSrvGetFileContents_Request::{ filename, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetFileContents_Request, Int32] {
  if bytes.length() > 516 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetFileContents_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetFileContents_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetFileContents_Response {
  /// @brief Exact native contents field; string.
  contents : String
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Response::new() -> Ros2Abb_robot_msgsSrvGetFileContents_Response {
  Ros2Abb_robot_msgsSrvGetFileContents_Response::{
    contents: "",
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4618 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Response::max_wire_bytes() -> Int32 {
  4618
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Response::codec_identity() -> String {
  "UWVMROS1_f05617145a40043e87cbc251f833274d2a962bd7cdaabc5f9a8e4591bd56e107"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetFileContents_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvGetFileContents_Response,
  writer : Writer,
) -> Unit {
  writer.text(self.contents, 4096)
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Response::encode(
  self : Ros2Abb_robot_msgsSrvGetFileContents_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(4618)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetFileContents_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetFileContents_Response {
  let contents = reader.text(4096)
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvGetFileContents_Response::{
    contents,
    result_code,
    message,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetFileContents_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetFileContents_Response, Int32] {
  if bytes.length() > 4618 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetFileContents_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetIOSignal_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetIOSignal_Request {
  /// @brief Exact native signal field; string.
  signal : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Request::new() -> Ros2Abb_robot_msgsSrvGetIOSignal_Request {
  Ros2Abb_robot_msgsSrvGetIOSignal_Request::{ signal: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 516 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Request::max_wire_bytes() -> Int32 {
  516
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Request::codec_identity() -> String {
  "UWVMROS1_2406d53c2fce44e72ad7e6f1c9e75ea19c4df694ff9f00917229ec758209b1f5"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetIOSignal_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvGetIOSignal_Request,
  writer : Writer,
) -> Unit {
  writer.text(self.signal, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Request::encode(
  self : Ros2Abb_robot_msgsSrvGetIOSignal_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(516)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetIOSignal_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetIOSignal_Request {
  let signal = reader.text(512)
  Ros2Abb_robot_msgsSrvGetIOSignal_Request::{ signal, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetIOSignal_Request, Int32] {
  if bytes.length() > 516 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetIOSignal_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetIOSignal_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetIOSignal_Response {
  /// @brief Exact native value field; string.
  value : String
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Response::new() -> Ros2Abb_robot_msgsSrvGetIOSignal_Response {
  Ros2Abb_robot_msgsSrvGetIOSignal_Response::{
    value: "",
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1034 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Response::max_wire_bytes() -> Int32 {
  1034
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Response::codec_identity() -> String {
  "UWVMROS1_1f668ef78c353f2ec8defdac619d349cda731576f2429cf07107b9b56ba9030e"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetIOSignal_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvGetIOSignal_Response,
  writer : Writer,
) -> Unit {
  writer.text(self.value, 512)
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Response::encode(
  self : Ros2Abb_robot_msgsSrvGetIOSignal_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(1034)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetIOSignal_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetIOSignal_Response {
  let value = reader.text(512)
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvGetIOSignal_Response::{ value, result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetIOSignal_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetIOSignal_Response, Int32] {
  if bytes.length() > 1034 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetIOSignal_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRAPIDBool_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRAPIDBool_Request {
  /// @brief Exact native path field; abb_robot_msgs/msg/RAPIDSymbolPath.
  path : Ros2Abb_robot_msgsMsgRAPIDSymbolPath
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::new() -> Ros2Abb_robot_msgsSrvGetRAPIDBool_Request {
  Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::{
    path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 204 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::max_wire_bytes() -> Int32 {
  204
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::codec_identity() -> String {
  "UWVMROS1_c381080d235c78216a8e64275819ff3fb97e1b1de96e7da758c4889630b8e0ff"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRAPIDBool_Request,
  writer : Writer,
) -> Unit {
  self.path.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::encode(
  self : Ros2Abb_robot_msgsSrvGetRAPIDBool_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(204)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRAPIDBool_Request {
  let path = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::{ path, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRAPIDBool_Request, Int32] {
  if bytes.length() > 204 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRAPIDBool_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRAPIDBool_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRAPIDBool_Response {
  /// @brief Exact native value field; bool.
  value : Bool
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::new() -> Ros2Abb_robot_msgsSrvGetRAPIDBool_Response {
  Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::{
    value: false,
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 519 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::max_wire_bytes() -> Int32 {
  519
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::codec_identity() -> String {
  "UWVMROS1_b853e212489fb815866fa29b165eea474a977483158b6203699c4a1293aa6acd"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRAPIDBool_Response,
  writer : Writer,
) -> Unit {
  writer.integer(if self.value { 1UL } else { 0UL }, 1)
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::encode(
  self : Ros2Abb_robot_msgsSrvGetRAPIDBool_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(519)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRAPIDBool_Response {
  let value = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::{ value, result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRAPIDBool_Response, Int32] {
  if bytes.length() > 519 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRAPIDBool_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRAPIDDnum_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request {
  /// @brief Exact native path field; abb_robot_msgs/msg/RAPIDSymbolPath.
  path : Ros2Abb_robot_msgsMsgRAPIDSymbolPath
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::new() -> Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request {
  Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::{
    path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 204 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::max_wire_bytes() -> Int32 {
  204
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::codec_identity() -> String {
  "UWVMROS1_71057c2fe44bc96505ec6e05d998fcb6323b281fff40808ce990207c48626979"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request,
  writer : Writer,
) -> Unit {
  self.path.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::encode(
  self : Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(204)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request {
  let path = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::{ path, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request, Int32] {
  if bytes.length() > 204 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRAPIDDnum_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRAPIDDnum_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response {
  /// @brief Exact native value field; float64.
  value : Double
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::new() -> Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response {
  Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::{
    value: 0.0,
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 526 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::max_wire_bytes() -> Int32 {
  526
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::codec_identity() -> String {
  "UWVMROS1_af0420c126368a7e45b728c7fef76062b5ef2f0adea7535ad38e4771244edd56"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response,
  writer : Writer,
) -> Unit {
  if self.value.is_nan() || self.value.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.value.reinterpret_as_uint64(), 8)
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::encode(
  self : Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(526)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response {
  let value = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::{ value, result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response, Int32] {
  if bytes.length() > 526 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRAPIDDnum_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRAPIDNum_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRAPIDNum_Request {
  /// @brief Exact native path field; abb_robot_msgs/msg/RAPIDSymbolPath.
  path : Ros2Abb_robot_msgsMsgRAPIDSymbolPath
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::new() -> Ros2Abb_robot_msgsSrvGetRAPIDNum_Request {
  Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::{
    path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 204 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::max_wire_bytes() -> Int32 {
  204
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::codec_identity() -> String {
  "UWVMROS1_03d5da34af8d90ed8a20f8ca38fa75d9e777496828978f0f348e3c1c8f67d0a5"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRAPIDNum_Request,
  writer : Writer,
) -> Unit {
  self.path.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::encode(
  self : Ros2Abb_robot_msgsSrvGetRAPIDNum_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(204)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRAPIDNum_Request {
  let path = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::{ path, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRAPIDNum_Request, Int32] {
  if bytes.length() > 204 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRAPIDNum_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRAPIDNum_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRAPIDNum_Response {
  /// @brief Exact native value field; float32.
  value : Float
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::new() -> Ros2Abb_robot_msgsSrvGetRAPIDNum_Response {
  Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::{
    value: 0.0F,
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 522 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::max_wire_bytes() -> Int32 {
  522
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::codec_identity() -> String {
  "UWVMROS1_a0da03014dd001e58efc4a5b274cd5c62016e7fa257af1120a8142a79635220d"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRAPIDNum_Response,
  writer : Writer,
) -> Unit {
  if self.value.is_nan() || self.value.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.value).to_uint64(), 4)
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::encode(
  self : Ros2Abb_robot_msgsSrvGetRAPIDNum_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(522)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRAPIDNum_Response {
  let value = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::{ value, result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRAPIDNum_Response, Int32] {
  if bytes.length() > 522 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRAPIDNum_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRAPIDString_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRAPIDString_Request {
  /// @brief Exact native path field; abb_robot_msgs/msg/RAPIDSymbolPath.
  path : Ros2Abb_robot_msgsMsgRAPIDSymbolPath
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Request::new() -> Ros2Abb_robot_msgsSrvGetRAPIDString_Request {
  Ros2Abb_robot_msgsSrvGetRAPIDString_Request::{
    path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 204 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Request::max_wire_bytes() -> Int32 {
  204
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Request::codec_identity() -> String {
  "UWVMROS1_c7bc9c788301e619a165c18a1cdb0aca80df8def5be31da5dbf34c0038e73596"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRAPIDString_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRAPIDString_Request,
  writer : Writer,
) -> Unit {
  self.path.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Request::encode(
  self : Ros2Abb_robot_msgsSrvGetRAPIDString_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(204)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRAPIDString_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRAPIDString_Request {
  let path = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  Ros2Abb_robot_msgsSrvGetRAPIDString_Request::{ path, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRAPIDString_Request, Int32] {
  if bytes.length() > 204 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRAPIDString_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRAPIDString_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRAPIDString_Response {
  /// @brief Exact native value field; string.
  value : String
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Response::new() -> Ros2Abb_robot_msgsSrvGetRAPIDString_Response {
  Ros2Abb_robot_msgsSrvGetRAPIDString_Response::{
    value: "",
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1034 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Response::max_wire_bytes() -> Int32 {
  1034
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Response::codec_identity() -> String {
  "UWVMROS1_cf7bfdb2af5b91eb58b19b909f7fa3357dc1dad02716f8fa4465b53f3f4a1458"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRAPIDString_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRAPIDString_Response,
  writer : Writer,
) -> Unit {
  writer.text(self.value, 512)
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Response::encode(
  self : Ros2Abb_robot_msgsSrvGetRAPIDString_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(1034)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRAPIDString_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRAPIDString_Response {
  let value = reader.text(512)
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvGetRAPIDString_Response::{ value, result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDString_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRAPIDString_Response, Int32] {
  if bytes.length() > 1034 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRAPIDString_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRAPIDSymbol_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request {
  /// @brief Exact native path field; abb_robot_msgs/msg/RAPIDSymbolPath.
  path : Ros2Abb_robot_msgsMsgRAPIDSymbolPath
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::new() -> Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request {
  Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::{
    path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 204 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::max_wire_bytes() -> Int32 {
  204
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::codec_identity() -> String {
  "UWVMROS1_e216a54cdae70f8147489928ff05a4b172ba4fc47e9ed5df4828b070354ac469"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request,
  writer : Writer,
) -> Unit {
  self.path.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::encode(
  self : Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(204)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request {
  let path = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::{ path, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request, Int32] {
  if bytes.length() > 204 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRAPIDSymbol_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response {
  /// @brief Exact native value field; string.
  value : String
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::new() -> Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response {
  Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::{
    value: "",
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1034 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::max_wire_bytes() -> Int32 {
  1034
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::codec_identity() -> String {
  "UWVMROS1_b1f6de7ad0640f5645678d327804dc7e732bdad38805e642b13ed7294c21d602"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response,
  writer : Writer,
) -> Unit {
  writer.text(self.value, 512)
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::encode(
  self : Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(1034)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response {
  let value = reader.text(512)
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::{ value, result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response, Int32] {
  if bytes.length() > 1034 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRAPIDSymbol_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRobotControllerDescription_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request {}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::new(
    ) -> Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request {
  Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::{ }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 0 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::max_wire_bytes() -> Int32 {
  0
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::codec_identity() -> String {
  "UWVMROS1_caf70e11b386a933f62d06a433ca1cedaa3c8ecc75b7e8de8c1d5ae00a29f03e"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request,
  writer : Writer,
) -> Unit {

}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::encode(
  self : Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(0)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request {
  Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::{ }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request, Int32] {
  if bytes.length() > 0 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Request::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetRobotControllerDescription_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response {
  /// @brief Exact native description field; string.
  description : String
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::new(
    ) -> Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response {
  Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::{
    description: "",
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4618 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::max_wire_bytes() -> Int32 {
  4618
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::codec_identity() -> String {
  "UWVMROS1_1af2591f035379597f376ed1e2343f73a89f9fef5c29269aa420243a82e6c368"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response,
  writer : Writer,
) -> Unit {
  writer.text(self.description, 4096)
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::encode(
  self : Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(4618)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response {
  let description = reader.text(4096)
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::{
    description,
    result_code,
    message,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response, Int32] {
  if bytes.length() > 4618 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetRobotControllerDescription_Response::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetSpeedRatio_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetSpeedRatio_Request {}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::new() -> Ros2Abb_robot_msgsSrvGetSpeedRatio_Request {
  Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::{ }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 0 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::max_wire_bytes() -> Int32 {
  0
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::codec_identity() -> String {
  "UWVMROS1_54ee2c897e2bf2f39c96cc42246ffe5997c8df280280433e8748b3bcf24c299c"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvGetSpeedRatio_Request,
  writer : Writer,
) -> Unit {

}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::encode(
  self : Ros2Abb_robot_msgsSrvGetSpeedRatio_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(0)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetSpeedRatio_Request {
  Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::{ }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetSpeedRatio_Request, Int32] {
  if bytes.length() > 0 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetSpeedRatio_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/GetSpeedRatio_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvGetSpeedRatio_Response {
  /// @brief Exact native speed_ratio field; uint8.
  speed_ratio : UInt32
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::new() -> Ros2Abb_robot_msgsSrvGetSpeedRatio_Response {
  Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::{
    speed_ratio: 0U,
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 519 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::max_wire_bytes() -> Int32 {
  519
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::codec_identity() -> String {
  "UWVMROS1_baa271a258c7ca274e0145fea1abb7cbc43e98c82b8e40d67c4743237a19910b"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvGetSpeedRatio_Response,
  writer : Writer,
) -> Unit {
  if self.speed_ratio > 255U {
    writer.status = 22
    return
  }
  writer.integer(self.speed_ratio.to_uint64(), 1)
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::encode(
  self : Ros2Abb_robot_msgsSrvGetSpeedRatio_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(519)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvGetSpeedRatio_Response {
  let speed_ratio = reader.integer(1).to_uint()
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::{
    speed_ratio,
    result_code,
    message,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvGetSpeedRatio_Response, Int32] {
  if bytes.length() > 519 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvGetSpeedRatio_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetFileContents_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetFileContents_Request {
  /// @brief Exact native filename field; string.
  filename : String
  /// @brief Exact native contents field; string.
  contents : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Request::new() -> Ros2Abb_robot_msgsSrvSetFileContents_Request {
  Ros2Abb_robot_msgsSrvSetFileContents_Request::{ filename: "", contents: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4616 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Request::max_wire_bytes() -> Int32 {
  4616
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Request::codec_identity() -> String {
  "UWVMROS1_3bfa8ad1846fc31acae47a875d3555a78a64b777923eb9b62e87a836f041b26b"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetFileContents_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvSetFileContents_Request,
  writer : Writer,
) -> Unit {
  writer.text(self.filename, 512)
  writer.text(self.contents, 4096)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Request::encode(
  self : Ros2Abb_robot_msgsSrvSetFileContents_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(4616)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetFileContents_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetFileContents_Request {
  let filename = reader.text(512)
  let contents = reader.text(4096)
  Ros2Abb_robot_msgsSrvSetFileContents_Request::{ filename, contents, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetFileContents_Request, Int32] {
  if bytes.length() > 4616 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetFileContents_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetFileContents_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetFileContents_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Response::new() -> Ros2Abb_robot_msgsSrvSetFileContents_Response {
  Ros2Abb_robot_msgsSrvSetFileContents_Response::{
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Response::codec_identity() -> String {
  "UWVMROS1_1586344401d43055460b49f2487567638f66838cfe5cac99a47e0a39c0b06ede"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetFileContents_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvSetFileContents_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Response::encode(
  self : Ros2Abb_robot_msgsSrvSetFileContents_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetFileContents_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetFileContents_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvSetFileContents_Response::{ result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetFileContents_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetFileContents_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetFileContents_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetIOSignal_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetIOSignal_Request {
  /// @brief Exact native signal field; string.
  signal : String
  /// @brief Exact native value field; string.
  value : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Request::new() -> Ros2Abb_robot_msgsSrvSetIOSignal_Request {
  Ros2Abb_robot_msgsSrvSetIOSignal_Request::{ signal: "", value: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1032 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Request::max_wire_bytes() -> Int32 {
  1032
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Request::codec_identity() -> String {
  "UWVMROS1_2d206d0020179263e83e745a428616ed53d809b0c65a79ad495cb882ae9e49b7"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetIOSignal_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvSetIOSignal_Request,
  writer : Writer,
) -> Unit {
  writer.text(self.signal, 512)
  writer.text(self.value, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Request::encode(
  self : Ros2Abb_robot_msgsSrvSetIOSignal_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(1032)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetIOSignal_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetIOSignal_Request {
  let signal = reader.text(512)
  let value = reader.text(512)
  Ros2Abb_robot_msgsSrvSetIOSignal_Request::{ signal, value, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetIOSignal_Request, Int32] {
  if bytes.length() > 1032 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetIOSignal_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetIOSignal_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetIOSignal_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Response::new() -> Ros2Abb_robot_msgsSrvSetIOSignal_Response {
  Ros2Abb_robot_msgsSrvSetIOSignal_Response::{ result_code: 0U, message: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Response::codec_identity() -> String {
  "UWVMROS1_1fa28cc3160d51f71d0740cbe145663ec360d6fa488c2a6bf14ad6ab92004a75"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetIOSignal_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvSetIOSignal_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Response::encode(
  self : Ros2Abb_robot_msgsSrvSetIOSignal_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetIOSignal_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetIOSignal_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvSetIOSignal_Response::{ result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetIOSignal_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetIOSignal_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetIOSignal_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetRAPIDBool_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetRAPIDBool_Request {
  /// @brief Exact native path field; abb_robot_msgs/msg/RAPIDSymbolPath.
  path : Ros2Abb_robot_msgsMsgRAPIDSymbolPath
  /// @brief Exact native value field; bool.
  value : Bool
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::new() -> Ros2Abb_robot_msgsSrvSetRAPIDBool_Request {
  Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::{
    path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new(),
    value: false,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 205 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::max_wire_bytes() -> Int32 {
  205
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::codec_identity() -> String {
  "UWVMROS1_4e707e429acc860d032d216bcd2c1eb1a0f731fad7e7c0bef7beed810c6e4a52"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvSetRAPIDBool_Request,
  writer : Writer,
) -> Unit {
  self.path.write_fields(writer)
  writer.integer(if self.value { 1UL } else { 0UL }, 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::encode(
  self : Ros2Abb_robot_msgsSrvSetRAPIDBool_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(205)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetRAPIDBool_Request {
  let path = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  let value = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::{ path, value, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetRAPIDBool_Request, Int32] {
  if bytes.length() > 205 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetRAPIDBool_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetRAPIDBool_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetRAPIDBool_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::new() -> Ros2Abb_robot_msgsSrvSetRAPIDBool_Response {
  Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::{ result_code: 0U, message: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::codec_identity() -> String {
  "UWVMROS1_80d2b31c93771cfa8a19ff82a3d9d63951bf9d28c039d2725017327fa3b0114a"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvSetRAPIDBool_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::encode(
  self : Ros2Abb_robot_msgsSrvSetRAPIDBool_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetRAPIDBool_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::{ result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetRAPIDBool_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetRAPIDBool_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetRAPIDDnum_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request {
  /// @brief Exact native path field; abb_robot_msgs/msg/RAPIDSymbolPath.
  path : Ros2Abb_robot_msgsMsgRAPIDSymbolPath
  /// @brief Exact native value field; float64.
  value : Double
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::new() -> Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request {
  Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::{
    path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new(),
    value: 0.0,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 212 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::max_wire_bytes() -> Int32 {
  212
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::codec_identity() -> String {
  "UWVMROS1_cece086311a908f12c0b0ab3988ca829e891749c74687c717d2a52bfb8ceaf76"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request,
  writer : Writer,
) -> Unit {
  self.path.write_fields(writer)
  if self.value.is_nan() || self.value.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.value.reinterpret_as_uint64(), 8)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::encode(
  self : Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(212)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request {
  let path = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  let value = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::{ path, value, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request, Int32] {
  if bytes.length() > 212 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetRAPIDDnum_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetRAPIDDnum_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::new() -> Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response {
  Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::{ result_code: 0U, message: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::codec_identity() -> String {
  "UWVMROS1_e5f77fe9850f109d873a2784b9690c8aa0632b9e91d158ed4d14daf1aaf90ea6"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::encode(
  self : Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::{ result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetRAPIDDnum_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetRAPIDNum_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetRAPIDNum_Request {
  /// @brief Exact native path field; abb_robot_msgs/msg/RAPIDSymbolPath.
  path : Ros2Abb_robot_msgsMsgRAPIDSymbolPath
  /// @brief Exact native value field; float32.
  value : Float
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::new() -> Ros2Abb_robot_msgsSrvSetRAPIDNum_Request {
  Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::{
    path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new(),
    value: 0.0F,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 208 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::max_wire_bytes() -> Int32 {
  208
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::codec_identity() -> String {
  "UWVMROS1_a5bee9a64be69dc4246f68837a44362f52795ae3c6420a2df47685606283ea02"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvSetRAPIDNum_Request,
  writer : Writer,
) -> Unit {
  self.path.write_fields(writer)
  if self.value.is_nan() || self.value.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(float_bits(self.value).to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::encode(
  self : Ros2Abb_robot_msgsSrvSetRAPIDNum_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(208)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetRAPIDNum_Request {
  let path = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  let value = {
    let value = float_from_bits(reader.integer(4).to_int())
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::{ path, value, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetRAPIDNum_Request, Int32] {
  if bytes.length() > 208 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetRAPIDNum_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetRAPIDNum_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetRAPIDNum_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::new() -> Ros2Abb_robot_msgsSrvSetRAPIDNum_Response {
  Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::{ result_code: 0U, message: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::codec_identity() -> String {
  "UWVMROS1_744f3c5fac58ff098c96cedcea94fe6fa87c88ceb89674449f50fbdcd1ca30bb"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvSetRAPIDNum_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::encode(
  self : Ros2Abb_robot_msgsSrvSetRAPIDNum_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetRAPIDNum_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::{ result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetRAPIDNum_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetRAPIDNum_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetRAPIDString_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetRAPIDString_Request {
  /// @brief Exact native path field; abb_robot_msgs/msg/RAPIDSymbolPath.
  path : Ros2Abb_robot_msgsMsgRAPIDSymbolPath
  /// @brief Exact native value field; string.
  value : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Request::new() -> Ros2Abb_robot_msgsSrvSetRAPIDString_Request {
  Ros2Abb_robot_msgsSrvSetRAPIDString_Request::{
    path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new(),
    value: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 720 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Request::max_wire_bytes() -> Int32 {
  720
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Request::codec_identity() -> String {
  "UWVMROS1_f21c45f3f8cd4c0b50781bdd487fdc6ec0c0b35adbc7e36e9ca5b7cc47c3d461"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetRAPIDString_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvSetRAPIDString_Request,
  writer : Writer,
) -> Unit {
  self.path.write_fields(writer)
  writer.text(self.value, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Request::encode(
  self : Ros2Abb_robot_msgsSrvSetRAPIDString_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(720)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetRAPIDString_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetRAPIDString_Request {
  let path = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  let value = reader.text(512)
  Ros2Abb_robot_msgsSrvSetRAPIDString_Request::{ path, value, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetRAPIDString_Request, Int32] {
  if bytes.length() > 720 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetRAPIDString_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetRAPIDString_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetRAPIDString_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Response::new() -> Ros2Abb_robot_msgsSrvSetRAPIDString_Response {
  Ros2Abb_robot_msgsSrvSetRAPIDString_Response::{
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Response::codec_identity() -> String {
  "UWVMROS1_1496ef4f4ffe48fe74b9e25b925c19f10f0e171a9d33fa2e56c15aa5cfbe4774"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetRAPIDString_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvSetRAPIDString_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Response::encode(
  self : Ros2Abb_robot_msgsSrvSetRAPIDString_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetRAPIDString_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetRAPIDString_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvSetRAPIDString_Response::{ result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDString_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetRAPIDString_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetRAPIDString_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetRAPIDSymbol_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request {
  /// @brief Exact native path field; abb_robot_msgs/msg/RAPIDSymbolPath.
  path : Ros2Abb_robot_msgsMsgRAPIDSymbolPath
  /// @brief Exact native value field; string.
  value : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::new() -> Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request {
  Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::{
    path: Ros2Abb_robot_msgsMsgRAPIDSymbolPath::new(),
    value: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 720 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::max_wire_bytes() -> Int32 {
  720
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::codec_identity() -> String {
  "UWVMROS1_928d427801b79775595fed6e3779f9ba9e7e8e27f2de66cf79610cb51bb72bcf"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request,
  writer : Writer,
) -> Unit {
  self.path.write_fields(writer)
  writer.text(self.value, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::encode(
  self : Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(720)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request {
  let path = Ros2Abb_robot_msgsMsgRAPIDSymbolPath::read_fields(reader)
  let value = reader.text(512)
  Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::{ path, value, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request, Int32] {
  if bytes.length() > 720 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetRAPIDSymbol_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::new() -> Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response {
  Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::{
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::codec_identity() -> String {
  "UWVMROS1_e156616a51bf4691a1c3853d62a8b0c43bb17d1a330cd4e7a58eceb5fe442382"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::encode(
  self : Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::{ result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetRAPIDSymbol_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetSpeedRatio_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetSpeedRatio_Request {
  /// @brief Exact native speed_ratio field; uint8.
  speed_ratio : UInt32
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::new() -> Ros2Abb_robot_msgsSrvSetSpeedRatio_Request {
  Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::{ speed_ratio: 0U, }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::max_wire_bytes() -> Int32 {
  1
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::codec_identity() -> String {
  "UWVMROS1_da30970377ba1bc151b544560773f02e17f4eaed56eb4c8d791de72bdef04355"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvSetSpeedRatio_Request,
  writer : Writer,
) -> Unit {
  if self.speed_ratio > 255U {
    writer.status = 22
    return
  }
  writer.integer(self.speed_ratio.to_uint64(), 1)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::encode(
  self : Ros2Abb_robot_msgsSrvSetSpeedRatio_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(1)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetSpeedRatio_Request {
  let speed_ratio = reader.integer(1).to_uint()
  Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::{ speed_ratio, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetSpeedRatio_Request, Int32] {
  if bytes.length() > 1 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetSpeedRatio_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/SetSpeedRatio_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvSetSpeedRatio_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::new() -> Ros2Abb_robot_msgsSrvSetSpeedRatio_Response {
  Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::{ result_code: 0U, message: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::codec_identity() -> String {
  "UWVMROS1_25e6d7edaa0503a4d45d893e886db4215bfd0af8711307c141bc63552609e3a5"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvSetSpeedRatio_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::encode(
  self : Ros2Abb_robot_msgsSrvSetSpeedRatio_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvSetSpeedRatio_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::{ result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvSetSpeedRatio_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvSetSpeedRatio_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/TriggerWithResultCode_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request {}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::new() -> Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request {
  Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::{ }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 0 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::max_wire_bytes() -> Int32 {
  0
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::codec_identity() -> String {
  "UWVMROS1_fd1d49c3b4e489464c6662f306210137f71d15192f64cd8a8abf93acd5fbff8d"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::write_fields(
  self : Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request,
  writer : Writer,
) -> Unit {

}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::encode(
  self : Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(0)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request {
  Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::{ }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request, Int32] {
  if bytes.length() > 0 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvTriggerWithResultCode_Request::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original abb_robot_msgs/srv/TriggerWithResultCode_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response {
  /// @brief Exact native result_code field; uint16.
  result_code : UInt32
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::new(
    ) -> Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response {
  Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::{
    result_code: 0U,
    message: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 518 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::max_wire_bytes() -> Int32 {
  518
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::codec_identity() -> String {
  "UWVMROS1_e38422b2a008f07e108505ac3ce65c24189a1d6657e88a6289e17d7d4ae38d51"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::write_fields(
  self : Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response,
  writer : Writer,
) -> Unit {
  if self.result_code > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.result_code.to_uint64(), 2)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::encode(
  self : Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(518)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::read_fields(
  reader : Reader,
) -> Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response {
  let result_code = reader.integer(2).to_uint()
  let message = reader.text(512)
  Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::{ result_code, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response, Int32] {
  if bytes.length() > 518 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Abb_robot_msgsSrvTriggerWithResultCode_Response::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original builtin_interfaces/msg/Duration.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Builtin_interfacesMsgDuration {
  /// @brief Exact native sec field; int32.
  sec : Int32
  /// @brief Exact native nanosec field; uint32.
  nanosec : UInt32
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Builtin_interfacesMsgDuration::new() -> Ros2Builtin_interfacesMsgDuration {
  Ros2Builtin_interfacesMsgDuration::{ sec: 0, nanosec: 0U, }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 8 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Builtin_interfacesMsgDuration::max_wire_bytes() -> Int32 {
  8
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Builtin_interfacesMsgDuration::codec_identity() -> String {
  "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Builtin_interfacesMsgDuration::write_fields(
  self : Ros2Builtin_interfacesMsgDuration,
  writer : Writer,
) -> Unit {
  if self.nanosec >= 1000000000U {
    writer.status = 22
    return
  }
  writer.integer(self.sec.to_uint64(), 4)
  writer.integer(self.nanosec.to_uint64(), 4)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Builtin_interfacesMsgDuration::encode(
  self : Ros2Builtin_interfacesMsgDuration,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(8)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Builtin_interfacesMsgDuration::read_fields(
  reader : Reader,
) -> Ros2Builtin_interfacesMsgDuration {
  let sec = reader.integer(4).to_int()
  let nanosec = reader.integer(4).to_uint()
  if nanosec >= 1000000000U {
    reader.status = 22
  }
  Ros2Builtin_interfacesMsgDuration::{ sec, nanosec, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Builtin_interfacesMsgDuration::decode(
  bytes : Bytes,
) -> Result[Ros2Builtin_interfacesMsgDuration, Int32] {
  if bytes.length() > 8 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Builtin_interfacesMsgDuration::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original trajectory_msgs/msg/JointTrajectoryPoint.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  /// @brief Exact native positions field; float64 sequence.
  positions : Array[Double]
  /// @brief Exact native velocities field; float64 sequence.
  velocities : Array[Double]
  /// @brief Exact native accelerations field; float64 sequence.
  accelerations : Array[Double]
  /// @brief Exact native effort field; float64 sequence.
  effort : Array[Double]
  /// @brief Exact native time_from_start field; builtin_interfaces/msg/Duration.
  time_from_start : Ros2Builtin_interfacesMsgDuration
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::new() -> Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  Ros2Trajectory_msgsMsgJointTrajectoryPoint::{
    positions: [],
    velocities: [],
    accelerations: [],
    effort: [],
    time_from_start: Ros2Builtin_interfacesMsgDuration::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 408 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::max_wire_bytes() -> Int32 {
  408
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::codec_identity() -> String {
  "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::write_fields(
  self : Ros2Trajectory_msgsMsgJointTrajectoryPoint,
  writer : Writer,
) -> Unit {
  if self.positions.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.positions.length().to_uint64(), 4)
  for item in self.positions {
    if item.is_nan() || item.is_inf() {
      writer.status = 22
      return
    }
    writer.integer(item.reinterpret_as_uint64(), 8)
  }
  if self.velocities.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.velocities.length().to_uint64(), 4)
  for item in self.velocities {
    if item.is_nan() || item.is_inf() {
      writer.status = 22
      return
    }
    writer.integer(item.reinterpret_as_uint64(), 8)
  }
  if self.accelerations.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.accelerations.length().to_uint64(), 4)
  for item in self.accelerations {
    if item.is_nan() || item.is_inf() {
      writer.status = 22
      return
    }
    writer.integer(item.reinterpret_as_uint64(), 8)
  }
  if self.effort.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.effort.length().to_uint64(), 4)
  for item in self.effort {
    if item.is_nan() || item.is_inf() {
      writer.status = 22
      return
    }
    writer.integer(item.reinterpret_as_uint64(), 8)
  }
  self.time_from_start.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::encode(
  self : Ros2Trajectory_msgsMsgJointTrajectoryPoint,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(408)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::read_fields(
  reader : Reader,
) -> Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  let positions_count = reader.count(12)
  let positions : Array[Double] = []
  for i = 0; i < positions_count; i = i + 1 {
    positions.push(
      {
        let value = reader.integer(8).reinterpret_as_double()
        if value.is_nan() || value.is_inf() {
          reader.status = 22
        }
        value
      },
    )
  }
  let velocities_count = reader.count(12)
  let velocities : Array[Double] = []
  for i = 0; i < velocities_count; i = i + 1 {
    velocities.push(
      {
        let value = reader.integer(8).reinterpret_as_double()
        if value.is_nan() || value.is_inf() {
          reader.status = 22
        }
        value
      },
    )
  }
  let accelerations_count = reader.count(12)
  let accelerations : Array[Double] = []
  for i = 0; i < accelerations_count; i = i + 1 {
    accelerations.push(
      {
        let value = reader.integer(8).reinterpret_as_double()
        if value.is_nan() || value.is_inf() {
          reader.status = 22
        }
        value
      },
    )
  }
  let effort_count = reader.count(12)
  let effort : Array[Double] = []
  for i = 0; i < effort_count; i = i + 1 {
    effort.push(
      {
        let value = reader.integer(8).reinterpret_as_double()
        if value.is_nan() || value.is_inf() {
          reader.status = 22
        }
        value
      },
    )
  }
  let time_from_start = Ros2Builtin_interfacesMsgDuration::read_fields(reader)
  Ros2Trajectory_msgsMsgJointTrajectoryPoint::{
    positions,
    velocities,
    accelerations,
    effort,
    time_from_start,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::decode(
  bytes : Bytes,
) -> Result[Ros2Trajectory_msgsMsgJointTrajectoryPoint, Int32] {
  if bytes.length() > 408 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Trajectory_msgsMsgJointTrajectoryPoint::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original trajectory_msgs/msg/JointTrajectory.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Trajectory_msgsMsgJointTrajectory {
  /// @brief Exact native header field; std_msgs/msg/Header.
  header : Ros2Std_msgsMsgHeader
  /// @brief Exact native joint_names field; string sequence.
  joint_names : Array[String]
  /// @brief Exact native points field; trajectory_msgs/msg/JointTrajectoryPoint sequence.
  points : Array[Ros2Trajectory_msgsMsgJointTrajectoryPoint]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Trajectory_msgsMsgJointTrajectory::new() -> Ros2Trajectory_msgsMsgJointTrajectory {
  Ros2Trajectory_msgsMsgJointTrajectory::{
    header: Ros2Std_msgsMsgHeader::new(),
    joint_names: [],
    points: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4164 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Trajectory_msgsMsgJointTrajectory::max_wire_bytes() -> Int32 {
  4164
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Trajectory_msgsMsgJointTrajectory::codec_identity() -> String {
  "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Trajectory_msgsMsgJointTrajectory::write_fields(
  self : Ros2Trajectory_msgsMsgJointTrajectory,
  writer : Writer,
) -> Unit {
  self.header.write_fields(writer)
  if self.joint_names.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.joint_names.length().to_uint64(), 4)
  for item in self.joint_names {
    writer.text(item, 64)
  }
  if self.points.length() > 8 {
    writer.status = 22
    return
  }
  writer.integer(self.points.length().to_uint64(), 4)
  for item in self.points {
    item.write_fields(writer)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Trajectory_msgsMsgJointTrajectory::encode(
  self : Ros2Trajectory_msgsMsgJointTrajectory,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(4164)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Trajectory_msgsMsgJointTrajectory::read_fields(
  reader : Reader,
) -> Ros2Trajectory_msgsMsgJointTrajectory {
  let header = Ros2Std_msgsMsgHeader::read_fields(reader)
  let joint_names_count = reader.count(12)
  let joint_names : Array[String] = []
  for i = 0; i < joint_names_count; i = i + 1 {
    joint_names.push(reader.text(64))
  }
  let points_count = reader.count(8)
  let points : Array[Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  for i = 0; i < points_count; i = i + 1 {
    points.push(Ros2Trajectory_msgsMsgJointTrajectoryPoint::read_fields(reader))
  }
  Ros2Trajectory_msgsMsgJointTrajectory::{ header, joint_names, points, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Trajectory_msgsMsgJointTrajectory::decode(
  bytes : Bytes,
) -> Result[Ros2Trajectory_msgsMsgJointTrajectory, Int32] {
  if bytes.length() > 4164 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Trajectory_msgsMsgJointTrajectory::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original geometry_msgs/msg/Vector3.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Geometry_msgsMsgVector3 {
  /// @brief Exact native x field; float64.
  x : Double
  /// @brief Exact native y field; float64.
  y : Double
  /// @brief Exact native z field; float64.
  z : Double
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Geometry_msgsMsgVector3::new() -> Ros2Geometry_msgsMsgVector3 {
  Ros2Geometry_msgsMsgVector3::{ x: 0.0, y: 0.0, z: 0.0, }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 24 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Geometry_msgsMsgVector3::max_wire_bytes() -> Int32 {
  24
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Geometry_msgsMsgVector3::codec_identity() -> String {
  "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Geometry_msgsMsgVector3::write_fields(
  self : Ros2Geometry_msgsMsgVector3,
  writer : Writer,
) -> Unit {
  if self.x.is_nan() || self.x.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.x.reinterpret_as_uint64(), 8)
  if self.y.is_nan() || self.y.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.y.reinterpret_as_uint64(), 8)
  if self.z.is_nan() || self.z.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.z.reinterpret_as_uint64(), 8)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Geometry_msgsMsgVector3::encode(
  self : Ros2Geometry_msgsMsgVector3,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(24)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Geometry_msgsMsgVector3::read_fields(
  reader : Reader,
) -> Ros2Geometry_msgsMsgVector3 {
  let x = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let y = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let z = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Geometry_msgsMsgVector3::{ x, y, z, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Geometry_msgsMsgVector3::decode(
  bytes : Bytes,
) -> Result[Ros2Geometry_msgsMsgVector3, Int32] {
  if bytes.length() > 24 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Geometry_msgsMsgVector3::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original geometry_msgs/msg/Quaternion.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Geometry_msgsMsgQuaternion {
  /// @brief Exact native x field; float64.
  x : Double
  /// @brief Exact native y field; float64.
  y : Double
  /// @brief Exact native z field; float64.
  z : Double
  /// @brief Exact native w field; float64.
  w : Double
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Geometry_msgsMsgQuaternion::new() -> Ros2Geometry_msgsMsgQuaternion {
  Ros2Geometry_msgsMsgQuaternion::{ x: 0.0, y: 0.0, z: 0.0, w: 1.0, }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 32 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Geometry_msgsMsgQuaternion::max_wire_bytes() -> Int32 {
  32
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Geometry_msgsMsgQuaternion::codec_identity() -> String {
  "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Geometry_msgsMsgQuaternion::write_fields(
  self : Ros2Geometry_msgsMsgQuaternion,
  writer : Writer,
) -> Unit {
  if self.x.is_nan() || self.x.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.x.reinterpret_as_uint64(), 8)
  if self.y.is_nan() || self.y.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.y.reinterpret_as_uint64(), 8)
  if self.z.is_nan() || self.z.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.z.reinterpret_as_uint64(), 8)
  if self.w.is_nan() || self.w.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.w.reinterpret_as_uint64(), 8)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Geometry_msgsMsgQuaternion::encode(
  self : Ros2Geometry_msgsMsgQuaternion,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(32)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Geometry_msgsMsgQuaternion::read_fields(
  reader : Reader,
) -> Ros2Geometry_msgsMsgQuaternion {
  let x = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let y = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let z = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let w = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Geometry_msgsMsgQuaternion::{ x, y, z, w, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Geometry_msgsMsgQuaternion::decode(
  bytes : Bytes,
) -> Result[Ros2Geometry_msgsMsgQuaternion, Int32] {
  if bytes.length() > 32 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Geometry_msgsMsgQuaternion::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original geometry_msgs/msg/Transform.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Geometry_msgsMsgTransform {
  /// @brief Exact native translation field; geometry_msgs/msg/Vector3.
  translation : Ros2Geometry_msgsMsgVector3
  /// @brief Exact native rotation field; geometry_msgs/msg/Quaternion.
  rotation : Ros2Geometry_msgsMsgQuaternion
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Geometry_msgsMsgTransform::new() -> Ros2Geometry_msgsMsgTransform {
  Ros2Geometry_msgsMsgTransform::{
    translation: Ros2Geometry_msgsMsgVector3::new(),
    rotation: Ros2Geometry_msgsMsgQuaternion::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 56 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Geometry_msgsMsgTransform::max_wire_bytes() -> Int32 {
  56
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Geometry_msgsMsgTransform::codec_identity() -> String {
  "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Geometry_msgsMsgTransform::write_fields(
  self : Ros2Geometry_msgsMsgTransform,
  writer : Writer,
) -> Unit {
  self.translation.write_fields(writer)
  self.rotation.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Geometry_msgsMsgTransform::encode(
  self : Ros2Geometry_msgsMsgTransform,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(56)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Geometry_msgsMsgTransform::read_fields(
  reader : Reader,
) -> Ros2Geometry_msgsMsgTransform {
  let translation = Ros2Geometry_msgsMsgVector3::read_fields(reader)
  let rotation = Ros2Geometry_msgsMsgQuaternion::read_fields(reader)
  Ros2Geometry_msgsMsgTransform::{ translation, rotation, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Geometry_msgsMsgTransform::decode(
  bytes : Bytes,
) -> Result[Ros2Geometry_msgsMsgTransform, Int32] {
  if bytes.length() > 56 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Geometry_msgsMsgTransform::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original geometry_msgs/msg/Twist.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Geometry_msgsMsgTwist {
  /// @brief Exact native linear field; geometry_msgs/msg/Vector3.
  linear : Ros2Geometry_msgsMsgVector3
  /// @brief Exact native angular field; geometry_msgs/msg/Vector3.
  angular : Ros2Geometry_msgsMsgVector3
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Geometry_msgsMsgTwist::new() -> Ros2Geometry_msgsMsgTwist {
  Ros2Geometry_msgsMsgTwist::{
    linear: Ros2Geometry_msgsMsgVector3::new(),
    angular: Ros2Geometry_msgsMsgVector3::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 48 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Geometry_msgsMsgTwist::max_wire_bytes() -> Int32 {
  48
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Geometry_msgsMsgTwist::codec_identity() -> String {
  "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Geometry_msgsMsgTwist::write_fields(
  self : Ros2Geometry_msgsMsgTwist,
  writer : Writer,
) -> Unit {
  self.linear.write_fields(writer)
  self.angular.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Geometry_msgsMsgTwist::encode(
  self : Ros2Geometry_msgsMsgTwist,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(48)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Geometry_msgsMsgTwist::read_fields(
  reader : Reader,
) -> Ros2Geometry_msgsMsgTwist {
  let linear = Ros2Geometry_msgsMsgVector3::read_fields(reader)
  let angular = Ros2Geometry_msgsMsgVector3::read_fields(reader)
  Ros2Geometry_msgsMsgTwist::{ linear, angular, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Geometry_msgsMsgTwist::decode(
  bytes : Bytes,
) -> Result[Ros2Geometry_msgsMsgTwist, Int32] {
  if bytes.length() > 48 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Geometry_msgsMsgTwist::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  /// @brief Exact native transforms field; geometry_msgs/msg/Transform sequence.
  transforms : Array[Ros2Geometry_msgsMsgTransform]
  /// @brief Exact native velocities field; geometry_msgs/msg/Twist sequence.
  velocities : Array[Ros2Geometry_msgsMsgTwist]
  /// @brief Exact native accelerations field; geometry_msgs/msg/Twist sequence.
  accelerations : Array[Ros2Geometry_msgsMsgTwist]
  /// @brief Exact native time_from_start field; builtin_interfaces/msg/Duration.
  time_from_start : Ros2Builtin_interfacesMsgDuration
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::{
    transforms: [],
    velocities: [],
    accelerations: [],
    time_from_start: Ros2Builtin_interfacesMsgDuration::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 324 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::max_wire_bytes() -> Int32 {
  324
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::codec_identity() -> String {
  "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::write_fields(
  self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
  writer : Writer,
) -> Unit {
  if self.transforms.length() > 2 {
    writer.status = 22
    return
  }
  writer.integer(self.transforms.length().to_uint64(), 4)
  for item in self.transforms {
    item.write_fields(writer)
  }
  if self.velocities.length() > 2 {
    writer.status = 22
    return
  }
  writer.integer(self.velocities.length().to_uint64(), 4)
  for item in self.velocities {
    item.write_fields(writer)
  }
  if self.accelerations.length() > 2 {
    writer.status = 22
    return
  }
  writer.integer(self.accelerations.length().to_uint64(), 4)
  for item in self.accelerations {
    item.write_fields(writer)
  }
  self.time_from_start.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::encode(
  self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(324)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::read_fields(
  reader : Reader,
) -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  let transforms_count = reader.count(2)
  let transforms : Array[Ros2Geometry_msgsMsgTransform] = []
  for i = 0; i < transforms_count; i = i + 1 {
    transforms.push(Ros2Geometry_msgsMsgTransform::read_fields(reader))
  }
  let velocities_count = reader.count(2)
  let velocities : Array[Ros2Geometry_msgsMsgTwist] = []
  for i = 0; i < velocities_count; i = i + 1 {
    velocities.push(Ros2Geometry_msgsMsgTwist::read_fields(reader))
  }
  let accelerations_count = reader.count(2)
  let accelerations : Array[Ros2Geometry_msgsMsgTwist] = []
  for i = 0; i < accelerations_count; i = i + 1 {
    accelerations.push(Ros2Geometry_msgsMsgTwist::read_fields(reader))
  }
  let time_from_start = Ros2Builtin_interfacesMsgDuration::read_fields(reader)
  Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::{
    transforms,
    velocities,
    accelerations,
    time_from_start,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::decode(
  bytes : Bytes,
) -> Result[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint, Int32] {
  if bytes.length() > 324 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original trajectory_msgs/msg/MultiDOFJointTrajectory.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  /// @brief Exact native header field; std_msgs/msg/Header.
  header : Ros2Std_msgsMsgHeader
  /// @brief Exact native joint_names field; string sequence.
  joint_names : Array[String]
  /// @brief Exact native points field; trajectory_msgs/msg/MultiDOFJointTrajectoryPoint sequence.
  points : Array[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::new() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::{
    header: Ros2Std_msgsMsgHeader::new(),
    joint_names: [],
    points: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1516 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::max_wire_bytes() -> Int32 {
  1516
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::codec_identity() -> String {
  "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::write_fields(
  self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectory,
  writer : Writer,
) -> Unit {
  self.header.write_fields(writer)
  if self.joint_names.length() > 2 {
    writer.status = 22
    return
  }
  writer.integer(self.joint_names.length().to_uint64(), 4)
  for item in self.joint_names {
    writer.text(item, 64)
  }
  if self.points.length() > 4 {
    writer.status = 22
    return
  }
  writer.integer(self.points.length().to_uint64(), 4)
  for item in self.points {
    item.write_fields(writer)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::encode(
  self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectory,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(1516)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::read_fields(
  reader : Reader,
) -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  let header = Ros2Std_msgsMsgHeader::read_fields(reader)
  let joint_names_count = reader.count(2)
  let joint_names : Array[String] = []
  for i = 0; i < joint_names_count; i = i + 1 {
    joint_names.push(reader.text(64))
  }
  let points_count = reader.count(4)
  let points : Array[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = []
  for i = 0; i < points_count; i = i + 1 {
    points.push(
      Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::read_fields(reader),
    )
  }
  Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::{
    header,
    joint_names,
    points,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::decode(
  bytes : Bytes,
) -> Result[Ros2Trajectory_msgsMsgMultiDOFJointTrajectory, Int32] {
  if bytes.length() > 1516 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original control_msgs/msg/JointTolerance.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Control_msgsMsgJointTolerance {
  /// @brief Exact native name field; string.
  name : String
  /// @brief Exact native position field; float64.
  position : Double
  /// @brief Exact native velocity field; float64.
  velocity : Double
  /// @brief Exact native acceleration field; float64.
  acceleration : Double
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Control_msgsMsgJointTolerance::new() -> Ros2Control_msgsMsgJointTolerance {
  Ros2Control_msgsMsgJointTolerance::{
    name: "",
    position: 0.0,
    velocity: 0.0,
    acceleration: 0.0,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 92 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Control_msgsMsgJointTolerance::max_wire_bytes() -> Int32 {
  92
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Control_msgsMsgJointTolerance::codec_identity() -> String {
  "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Control_msgsMsgJointTolerance::write_fields(
  self : Ros2Control_msgsMsgJointTolerance,
  writer : Writer,
) -> Unit {
  writer.text(self.name, 64)
  if self.position.is_nan() || self.position.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.position.reinterpret_as_uint64(), 8)
  if self.velocity.is_nan() || self.velocity.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.velocity.reinterpret_as_uint64(), 8)
  if self.acceleration.is_nan() || self.acceleration.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.acceleration.reinterpret_as_uint64(), 8)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Control_msgsMsgJointTolerance::encode(
  self : Ros2Control_msgsMsgJointTolerance,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(92)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Control_msgsMsgJointTolerance::read_fields(
  reader : Reader,
) -> Ros2Control_msgsMsgJointTolerance {
  let name = reader.text(64)
  let position = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let velocity = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let acceleration = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Control_msgsMsgJointTolerance::{ name, position, velocity, acceleration, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Control_msgsMsgJointTolerance::decode(
  bytes : Bytes,
) -> Result[Ros2Control_msgsMsgJointTolerance, Int32] {
  if bytes.length() > 92 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Control_msgsMsgJointTolerance::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original control_msgs/msg/JointComponentTolerance.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Control_msgsMsgJointComponentTolerance {
  /// @brief Exact native joint_name field; string.
  joint_name : String
  /// @brief Exact native component field; uint16.
  component : UInt32
  /// @brief Exact native position field; float64.
  position : Double
  /// @brief Exact native velocity field; float64.
  velocity : Double
  /// @brief Exact native acceleration field; float64.
  acceleration : Double
}

///|
/// @brief Return the original X_AXIS source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsMsgJointComponentTolerance::constant_x_axis() -> UInt32 {
  1U
}

///|
/// @brief Return the original Y_AXIS source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsMsgJointComponentTolerance::constant_y_axis() -> UInt32 {
  2U
}

///|
/// @brief Return the original Z_AXIS source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsMsgJointComponentTolerance::constant_z_axis() -> UInt32 {
  3U
}

///|
/// @brief Return the original TRANSLATION source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsMsgJointComponentTolerance::constant_translation() -> UInt32 {
  4U
}

///|
/// @brief Return the original ROTATION source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsMsgJointComponentTolerance::constant_rotation() -> UInt32 {
  5U
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Control_msgsMsgJointComponentTolerance::new() -> Ros2Control_msgsMsgJointComponentTolerance {
  Ros2Control_msgsMsgJointComponentTolerance::{
    joint_name: "",
    component: 0U,
    position: 0.0,
    velocity: 0.0,
    acceleration: 0.0,
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 542 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Control_msgsMsgJointComponentTolerance::max_wire_bytes() -> Int32 {
  542
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Control_msgsMsgJointComponentTolerance::codec_identity() -> String {
  "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Control_msgsMsgJointComponentTolerance::write_fields(
  self : Ros2Control_msgsMsgJointComponentTolerance,
  writer : Writer,
) -> Unit {
  writer.text(self.joint_name, 512)
  if self.component > 65535U {
    writer.status = 22
    return
  }
  writer.integer(self.component.to_uint64(), 2)
  if self.position.is_nan() || self.position.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.position.reinterpret_as_uint64(), 8)
  if self.velocity.is_nan() || self.velocity.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.velocity.reinterpret_as_uint64(), 8)
  if self.acceleration.is_nan() || self.acceleration.is_inf() {
    writer.status = 22
    return
  }
  writer.integer(self.acceleration.reinterpret_as_uint64(), 8)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Control_msgsMsgJointComponentTolerance::encode(
  self : Ros2Control_msgsMsgJointComponentTolerance,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(542)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Control_msgsMsgJointComponentTolerance::read_fields(
  reader : Reader,
) -> Ros2Control_msgsMsgJointComponentTolerance {
  let joint_name = reader.text(512)
  let component = reader.integer(2).to_uint()
  let position = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let velocity = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  let acceleration = {
    let value = reader.integer(8).reinterpret_as_double()
    if value.is_nan() || value.is_inf() {
      reader.status = 22
    }
    value
  }
  Ros2Control_msgsMsgJointComponentTolerance::{
    joint_name,
    component,
    position,
    velocity,
    acceleration,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Control_msgsMsgJointComponentTolerance::decode(
  bytes : Bytes,
) -> Result[Ros2Control_msgsMsgJointComponentTolerance, Int32] {
  if bytes.length() > 542 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Control_msgsMsgJointComponentTolerance::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original control_msgs/action/FollowJointTrajectory_Goal.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_Goal {
  /// @brief Exact native trajectory field; trajectory_msgs/msg/JointTrajectory.
  trajectory : Ros2Trajectory_msgsMsgJointTrajectory
  /// @brief Exact native multi_dof_trajectory field; trajectory_msgs/msg/MultiDOFJointTrajectory.
  multi_dof_trajectory : Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  /// @brief Exact native path_tolerance field; control_msgs/msg/JointTolerance sequence.
  path_tolerance : Array[Ros2Control_msgsMsgJointTolerance]
  /// @brief Exact native component_path_tolerance field; control_msgs/msg/JointComponentTolerance sequence.
  component_path_tolerance : Array[Ros2Control_msgsMsgJointComponentTolerance]
  /// @brief Exact native goal_tolerance field; control_msgs/msg/JointTolerance sequence.
  goal_tolerance : Array[Ros2Control_msgsMsgJointTolerance]
  /// @brief Exact native component_goal_tolerance field; control_msgs/msg/JointComponentTolerance sequence.
  component_goal_tolerance : Array[Ros2Control_msgsMsgJointComponentTolerance]
  /// @brief Exact native goal_time_tolerance field; builtin_interfaces/msg/Duration.
  goal_time_tolerance : Ros2Builtin_interfacesMsgDuration
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Goal::new() -> Ros2Control_msgsActionFollowJointTrajectory_Goal {
  Ros2Control_msgsActionFollowJointTrajectory_Goal::{
    trajectory: Ros2Trajectory_msgsMsgJointTrajectory::new(),
    multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::new(),
    path_tolerance: [],
    component_path_tolerance: [],
    goal_tolerance: [],
    component_goal_tolerance: [],
    goal_time_tolerance: Ros2Builtin_interfacesMsgDuration::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 20920 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Goal::max_wire_bytes() -> Int32 {
  20920
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Goal::codec_identity() -> String {
  "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Control_msgsActionFollowJointTrajectory_Goal::write_fields(
  self : Ros2Control_msgsActionFollowJointTrajectory_Goal,
  writer : Writer,
) -> Unit {
  self.trajectory.write_fields(writer)
  self.multi_dof_trajectory.write_fields(writer)
  if self.path_tolerance.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.path_tolerance.length().to_uint64(), 4)
  for item in self.path_tolerance {
    item.write_fields(writer)
  }
  if self.component_path_tolerance.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.component_path_tolerance.length().to_uint64(), 4)
  for item in self.component_path_tolerance {
    item.write_fields(writer)
  }
  if self.goal_tolerance.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.goal_tolerance.length().to_uint64(), 4)
  for item in self.goal_tolerance {
    item.write_fields(writer)
  }
  if self.component_goal_tolerance.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.component_goal_tolerance.length().to_uint64(), 4)
  for item in self.component_goal_tolerance {
    item.write_fields(writer)
  }
  self.goal_time_tolerance.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Goal::encode(
  self : Ros2Control_msgsActionFollowJointTrajectory_Goal,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(20920)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Control_msgsActionFollowJointTrajectory_Goal::read_fields(
  reader : Reader,
) -> Ros2Control_msgsActionFollowJointTrajectory_Goal {
  let trajectory = Ros2Trajectory_msgsMsgJointTrajectory::read_fields(reader)
  let multi_dof_trajectory = Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::read_fields(
    reader,
  )
  let path_tolerance_count = reader.count(12)
  let path_tolerance : Array[Ros2Control_msgsMsgJointTolerance] = []
  for i = 0; i < path_tolerance_count; i = i + 1 {
    path_tolerance.push(Ros2Control_msgsMsgJointTolerance::read_fields(reader))
  }
  let component_path_tolerance_count = reader.count(12)
  let component_path_tolerance : Array[
    Ros2Control_msgsMsgJointComponentTolerance,
  ] = []
  for i = 0; i < component_path_tolerance_count; i = i + 1 {
    component_path_tolerance.push(
      Ros2Control_msgsMsgJointComponentTolerance::read_fields(reader),
    )
  }
  let goal_tolerance_count = reader.count(12)
  let goal_tolerance : Array[Ros2Control_msgsMsgJointTolerance] = []
  for i = 0; i < goal_tolerance_count; i = i + 1 {
    goal_tolerance.push(Ros2Control_msgsMsgJointTolerance::read_fields(reader))
  }
  let component_goal_tolerance_count = reader.count(12)
  let component_goal_tolerance : Array[
    Ros2Control_msgsMsgJointComponentTolerance,
  ] = []
  for i = 0; i < component_goal_tolerance_count; i = i + 1 {
    component_goal_tolerance.push(
      Ros2Control_msgsMsgJointComponentTolerance::read_fields(reader),
    )
  }
  let goal_time_tolerance = Ros2Builtin_interfacesMsgDuration::read_fields(
    reader,
  )
  Ros2Control_msgsActionFollowJointTrajectory_Goal::{
    trajectory,
    multi_dof_trajectory,
    path_tolerance,
    component_path_tolerance,
    goal_tolerance,
    component_goal_tolerance,
    goal_time_tolerance,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Goal::decode(
  bytes : Bytes,
) -> Result[Ros2Control_msgsActionFollowJointTrajectory_Goal, Int32] {
  if bytes.length() > 20920 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Control_msgsActionFollowJointTrajectory_Goal::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original control_msgs/action/FollowJointTrajectory_Result.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_Result {
  /// @brief Exact native error_code field; int32.
  error_code : Int32
  /// @brief Exact native error_string field; string.
  error_string : String
}

///|
/// @brief Return the original SUCCESSFUL source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::constant_successful() -> Int32 {
  0
}

///|
/// @brief Return the original INVALID_GOAL source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::constant_invalid_goal() -> Int32 {
  -1
}

///|
/// @brief Return the original INVALID_JOINTS source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::constant_invalid_joints() -> Int32 {
  -2
}

///|
/// @brief Return the original OLD_HEADER_TIMESTAMP source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::constant_old_header_timestamp() -> Int32 {
  -3
}

///|
/// @brief Return the original PATH_TOLERANCE_VIOLATED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::constant_path_tolerance_violated() -> Int32 {
  -4
}

///|
/// @brief Return the original GOAL_TOLERANCE_VIOLATED source constant.
/// @return Exact declaration value; no wire bytes or instance state.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::constant_goal_tolerance_violated() -> Int32 {
  -5
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::new() -> Ros2Control_msgsActionFollowJointTrajectory_Result {
  Ros2Control_msgsActionFollowJointTrajectory_Result::{
    error_code: 0,
    error_string: "",
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4104 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::max_wire_bytes() -> Int32 {
  4104
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::codec_identity() -> String {
  "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Control_msgsActionFollowJointTrajectory_Result::write_fields(
  self : Ros2Control_msgsActionFollowJointTrajectory_Result,
  writer : Writer,
) -> Unit {
  writer.integer(self.error_code.to_uint64(), 4)
  writer.text(self.error_string, 4096)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::encode(
  self : Ros2Control_msgsActionFollowJointTrajectory_Result,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(4104)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Control_msgsActionFollowJointTrajectory_Result::read_fields(
  reader : Reader,
) -> Ros2Control_msgsActionFollowJointTrajectory_Result {
  let error_code = reader.integer(4).to_int()
  let error_string = reader.text(4096)
  Ros2Control_msgsActionFollowJointTrajectory_Result::{
    error_code,
    error_string,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::decode(
  bytes : Bytes,
) -> Result[Ros2Control_msgsActionFollowJointTrajectory_Result, Int32] {
  if bytes.length() > 4104 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Control_msgsActionFollowJointTrajectory_Result::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original control_msgs/action/FollowJointTrajectory_Feedback.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  /// @brief Exact native header field; std_msgs/msg/Header.
  header : Ros2Std_msgsMsgHeader
  /// @brief Exact native joint_names field; string sequence.
  joint_names : Array[String]
  /// @brief Exact native desired field; trajectory_msgs/msg/JointTrajectoryPoint.
  desired : Ros2Trajectory_msgsMsgJointTrajectoryPoint
  /// @brief Exact native actual field; trajectory_msgs/msg/JointTrajectoryPoint.
  actual : Ros2Trajectory_msgsMsgJointTrajectoryPoint
  /// @brief Exact native error field; trajectory_msgs/msg/JointTrajectoryPoint.
  error : Ros2Trajectory_msgsMsgJointTrajectoryPoint
  /// @brief Exact native multi_dof_joint_names field; string sequence.
  multi_dof_joint_names : Array[String]
  /// @brief Exact native multi_dof_desired field; trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  multi_dof_desired : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  /// @brief Exact native multi_dof_actual field; trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  multi_dof_actual : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  /// @brief Exact native multi_dof_error field; trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  multi_dof_error : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::new(
    ) -> Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  Ros2Control_msgsActionFollowJointTrajectory_Feedback::{
    header: Ros2Std_msgsMsgHeader::new(),
    joint_names: [],
    desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint::new(),
    actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint::new(),
    error: Ros2Trajectory_msgsMsgJointTrajectoryPoint::new(),
    multi_dof_joint_names: [],
    multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new(),
    multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new(),
    multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new(),
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 4128 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::max_wire_bytes() -> Int32 {
  4128
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::codec_identity() -> String {
  "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::write_fields(
  self : Ros2Control_msgsActionFollowJointTrajectory_Feedback,
  writer : Writer,
) -> Unit {
  self.header.write_fields(writer)
  if self.joint_names.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.joint_names.length().to_uint64(), 4)
  for item in self.joint_names {
    writer.text(item, 64)
  }
  self.desired.write_fields(writer)
  self.actual.write_fields(writer)
  self.error.write_fields(writer)
  if self.multi_dof_joint_names.length() > 2 {
    writer.status = 22
    return
  }
  writer.integer(self.multi_dof_joint_names.length().to_uint64(), 4)
  for item in self.multi_dof_joint_names {
    writer.text(item, 512)
  }
  self.multi_dof_desired.write_fields(writer)
  self.multi_dof_actual.write_fields(writer)
  self.multi_dof_error.write_fields(writer)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::encode(
  self : Ros2Control_msgsActionFollowJointTrajectory_Feedback,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(4128)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::read_fields(
  reader : Reader,
) -> Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  let header = Ros2Std_msgsMsgHeader::read_fields(reader)
  let joint_names_count = reader.count(12)
  let joint_names : Array[String] = []
  for i = 0; i < joint_names_count; i = i + 1 {
    joint_names.push(reader.text(64))
  }
  let desired = Ros2Trajectory_msgsMsgJointTrajectoryPoint::read_fields(reader)
  let actual = Ros2Trajectory_msgsMsgJointTrajectoryPoint::read_fields(reader)
  let error = Ros2Trajectory_msgsMsgJointTrajectoryPoint::read_fields(reader)
  let multi_dof_joint_names_count = reader.count(2)
  let multi_dof_joint_names : Array[String] = []
  for i = 0; i < multi_dof_joint_names_count; i = i + 1 {
    multi_dof_joint_names.push(reader.text(512))
  }
  let multi_dof_desired = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::read_fields(
    reader,
  )
  let multi_dof_actual = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::read_fields(
    reader,
  )
  let multi_dof_error = Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::read_fields(
    reader,
  )
  Ros2Control_msgsActionFollowJointTrajectory_Feedback::{
    header,
    joint_names,
    desired,
    actual,
    error,
    multi_dof_joint_names,
    multi_dof_desired,
    multi_dof_actual,
    multi_dof_error,
  }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::decode(
  bytes : Bytes,
) -> Result[Ros2Control_msgsActionFollowJointTrajectory_Feedback, Int32] {
  if bytes.length() > 4128 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Control_msgsActionFollowJointTrajectory_Feedback::read_fields(
    reader,
  )
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original sensor_msgs/msg/JointState.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Sensor_msgsMsgJointState {
  /// @brief Exact native header field; std_msgs/msg/Header.
  header : Ros2Std_msgsMsgHeader
  /// @brief Exact native name field; string sequence.
  name : Array[String]
  /// @brief Exact native position field; float64 sequence.
  position : Array[Double]
  /// @brief Exact native velocity field; float64 sequence.
  velocity : Array[Double]
  /// @brief Exact native effort field; float64 sequence.
  effort : Array[Double]
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Sensor_msgsMsgJointState::new() -> Ros2Sensor_msgsMsgJointState {
  Ros2Sensor_msgsMsgJointState::{
    header: Ros2Std_msgsMsgHeader::new(),
    name: [],
    position: [],
    velocity: [],
    effort: [],
  }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 1196 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Sensor_msgsMsgJointState::max_wire_bytes() -> Int32 {
  1196
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Sensor_msgsMsgJointState::codec_identity() -> String {
  "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Sensor_msgsMsgJointState::write_fields(
  self : Ros2Sensor_msgsMsgJointState,
  writer : Writer,
) -> Unit {
  if (
      self.name.length() != 0 &&
      self.position.length() != 0 &&
      self.name.length() != self.position.length()
    ) ||
    (
      self.name.length() != 0 &&
      self.velocity.length() != 0 &&
      self.name.length() != self.velocity.length()
    ) ||
    (
      self.name.length() != 0 &&
      self.effort.length() != 0 &&
      self.name.length() != self.effort.length()
    ) ||
    (
      self.position.length() != 0 &&
      self.velocity.length() != 0 &&
      self.position.length() != self.velocity.length()
    ) ||
    (
      self.position.length() != 0 &&
      self.effort.length() != 0 &&
      self.position.length() != self.effort.length()
    ) ||
    (
      self.velocity.length() != 0 &&
      self.effort.length() != 0 &&
      self.velocity.length() != self.effort.length()
    ) {
    writer.status = 22
    return
  }
  self.header.write_fields(writer)
  if self.name.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.name.length().to_uint64(), 4)
  for item in self.name {
    writer.text(item, 64)
  }
  if self.position.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.position.length().to_uint64(), 4)
  for item in self.position {
    if item.is_nan() || item.is_inf() {
      writer.status = 22
      return
    }
    writer.integer(item.reinterpret_as_uint64(), 8)
  }
  if self.velocity.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.velocity.length().to_uint64(), 4)
  for item in self.velocity {
    if item.is_nan() || item.is_inf() {
      writer.status = 22
      return
    }
    writer.integer(item.reinterpret_as_uint64(), 8)
  }
  if self.effort.length() > 12 {
    writer.status = 22
    return
  }
  writer.integer(self.effort.length().to_uint64(), 4)
  for item in self.effort {
    if item.is_nan() || item.is_inf() {
      writer.status = 22
      return
    }
    writer.integer(item.reinterpret_as_uint64(), 8)
  }
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Sensor_msgsMsgJointState::encode(
  self : Ros2Sensor_msgsMsgJointState,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(1196)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Sensor_msgsMsgJointState::read_fields(
  reader : Reader,
) -> Ros2Sensor_msgsMsgJointState {
  let header = Ros2Std_msgsMsgHeader::read_fields(reader)
  let name_count = reader.count(12)
  let name : Array[String] = []
  for i = 0; i < name_count; i = i + 1 {
    name.push(reader.text(64))
  }
  let position_count = reader.count(12)
  let position : Array[Double] = []
  for i = 0; i < position_count; i = i + 1 {
    position.push(
      {
        let value = reader.integer(8).reinterpret_as_double()
        if value.is_nan() || value.is_inf() {
          reader.status = 22
        }
        value
      },
    )
  }
  let velocity_count = reader.count(12)
  let velocity : Array[Double] = []
  for i = 0; i < velocity_count; i = i + 1 {
    velocity.push(
      {
        let value = reader.integer(8).reinterpret_as_double()
        if value.is_nan() || value.is_inf() {
          reader.status = 22
        }
        value
      },
    )
  }
  let effort_count = reader.count(12)
  let effort : Array[Double] = []
  for i = 0; i < effort_count; i = i + 1 {
    effort.push(
      {
        let value = reader.integer(8).reinterpret_as_double()
        if value.is_nan() || value.is_inf() {
          reader.status = 22
        }
        value
      },
    )
  }
  if (
      name.length() != 0 &&
      position.length() != 0 &&
      name.length() != position.length()
    ) ||
    (
      name.length() != 0 &&
      velocity.length() != 0 &&
      name.length() != velocity.length()
    ) ||
    (
      name.length() != 0 &&
      effort.length() != 0 &&
      name.length() != effort.length()
    ) ||
    (
      position.length() != 0 &&
      velocity.length() != 0 &&
      position.length() != velocity.length()
    ) ||
    (
      position.length() != 0 &&
      effort.length() != 0 &&
      position.length() != effort.length()
    ) ||
    (
      velocity.length() != 0 &&
      effort.length() != 0 &&
      velocity.length() != effort.length()
    ) {
    reader.status = 22
  }
  Ros2Sensor_msgsMsgJointState::{ header, name, position, velocity, effort, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Sensor_msgsMsgJointState::decode(
  bytes : Bytes,
) -> Result[Ros2Sensor_msgsMsgJointState, Int32] {
  if bytes.length() > 1196 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Sensor_msgsMsgJointState::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original std_srvs/srv/Trigger_Request.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Std_srvsSrvTrigger_Request {}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Std_srvsSrvTrigger_Request::new() -> Ros2Std_srvsSrvTrigger_Request {
  Ros2Std_srvsSrvTrigger_Request::{ }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 0 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Std_srvsSrvTrigger_Request::max_wire_bytes() -> Int32 {
  0
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Std_srvsSrvTrigger_Request::codec_identity() -> String {
  "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Std_srvsSrvTrigger_Request::write_fields(
  self : Ros2Std_srvsSrvTrigger_Request,
  writer : Writer,
) -> Unit {

}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Std_srvsSrvTrigger_Request::encode(
  self : Ros2Std_srvsSrvTrigger_Request,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(0)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Std_srvsSrvTrigger_Request::read_fields(
  reader : Reader,
) -> Ros2Std_srvsSrvTrigger_Request {
  Ros2Std_srvsSrvTrigger_Request::{ }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Std_srvsSrvTrigger_Request::decode(
  bytes : Bytes,
) -> Result[Ros2Std_srvsSrvTrigger_Request, Int32] {
  if bytes.length() > 0 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Std_srvsSrvTrigger_Request::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}

///|
/// @brief Represent complete original std_srvs/srv/Trigger_Response.
/// @details All fields retain their original native spelling and order; managed storage owns its copied
/// values.
pub(all) struct Ros2Std_srvsSrvTrigger_Response {
  /// @brief Exact native success field; bool.
  success : Bool
  /// @brief Exact native message field; string.
  message : String
}

///|
/// @brief Construct every field using its original declared default.
/// @return Owned complete record; sequence fields are empty and fixed arrays retain their full count.
pub fn Ros2Std_srvsSrvTrigger_Response::new() -> Ros2Std_srvsSrvTrigger_Response {
  Ros2Std_srvsSrvTrigger_Response::{ success: false, message: "", }
}

///|
/// @brief Return the selected complete canonical wire ceiling.
/// @return 517 bytes, preserving the catalog's separate aggregate limit.
pub fn Ros2Std_srvsSrvTrigger_Response::max_wire_bytes() -> Int32 {
  517
}

///|
/// @brief Return the original complete codec identity.
/// @return Exact source-derived adapter identity; this value grants no native permission.
pub fn Ros2Std_srvsSrvTrigger_Response::codec_identity() -> String {
  "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d"
}

///|
/// @brief Validate and append every field without partial public output.
/// @param self Borrowed complete native record.
/// @param writer Private bounded writer; sticky failure remains owned by the caller.
/// @details All dynamic bounds are checked before emission. No clipping, numeric coercion or retry
/// occurs.
fn Ros2Std_srvsSrvTrigger_Response::write_fields(
  self : Ros2Std_srvsSrvTrigger_Response,
  writer : Writer,
) -> Unit {
  writer.integer(if self.success { 1UL } else { 0UL }, 1)
  writer.text(self.message, 512)
}

///|
/// @brief Encode the complete record into owned canonical bytes.
/// @param self Borrowed whole typed record; never modified.
/// @return Ok with the entire encoding or Err with the first strict validation/capacity status.
/// @details No native operation occurs. A failure exposes no prefix or projected default value.
pub fn Ros2Std_srvsSrvTrigger_Response::encode(
  self : Ros2Std_srvsSrvTrigger_Response,
) -> Result[Bytes, Int32] {
  let writer = Writer::new(517)
  self.write_fields(writer)
  writer.finish()
}

///|
/// @brief Read every original field through a checked private cursor.
/// @param reader Borrowed complete input and sticky validation status.
/// @return Private whole record; the public decoder rejects it on any cursor error.
fn Ros2Std_srvsSrvTrigger_Response::read_fields(
  reader : Reader,
) -> Ros2Std_srvsSrvTrigger_Response {
  let success = {
    let value = reader.integer(1)
    if value > 1UL {
      reader.status = 22
    }
    value == 1UL
  }
  let message = reader.text(512)
  Ros2Std_srvsSrvTrigger_Response::{ success, message, }
}

///|
/// @brief Decode one complete canonical record and require exact consumption.
/// @param bytes Borrowed complete wire value within the finite schema ceiling.
/// @return Whole typed record, Err(22) for malformed input, or Err(90) above the schema byte ceiling.
/// @details Strict UTF-8 and scalar policies are checked before a value becomes public.
pub fn Ros2Std_srvsSrvTrigger_Response::decode(
  bytes : Bytes,
) -> Result[Ros2Std_srvsSrvTrigger_Response, Int32] {
  if bytes.length() > 517 {
    return Err(90)
  }
  let reader : Reader = { bytes, at: 0, status: 0, }
  let value = Ros2Std_srvsSrvTrigger_Response::read_fields(reader)
  if reader.status != 0 || reader.at != bytes.length() {
    Err(22)
  } else {
    Ok(value)
  }
}
