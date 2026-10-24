/// @file bounded_records.mbt
/// @brief Bound complete MoonBit field writes and reads for this catalog.
/// @details Shared trusted cursor template used by agibot ros2_sdk_v0_8_2_main. The adjacent generated catalog
/// supplies 72 complete record layouts. Writer and reader track independent bounded extents; malformed or partial
/// values must not be exposed. Encoding grants no native authority. This source still requires the pinned MoonBit
/// compiler and real guest tests.
// Fixed trusted source template. No generated schema, native identity or grant.
// SOURCE_ONLY_UNEXECUTED until the exact pinned compiler and actual Guests run.

struct BoundedWriter {
  bytes : Array[Byte]
  maximum : Int
  mut error : Int
}

fn BoundedWriter::byte(self : BoundedWriter, value : Byte) -> Unit {
  if self.error != 0 { return () }
  if self.bytes.length() >= self.maximum { self.error = 90; return () }
  self.bytes.push(value)
}

fn BoundedWriter::unsigned(self : BoundedWriter, value : UInt64, width : Int) -> Unit {
  if self.error != 0 { return () }
  if width < 8 && (value >> (width * 8)) != 0UL {
    self.error = 22
    return ()
  }
  for index = 0; index < width; index = index + 1 {
    self.byte(((value >> (index * 8)) & 255UL).to_int().to_byte())
  }
}

fn BoundedWriter::text(self : BoundedWriter, value : String, maximum : Int) -> Unit {
  if self.error != 0 { return () }
  // This complete-value profile forbids NUL; builtin String is a different codec.
  for index = 0; index < value.length(); index = index + 1 {
    if value[index].to_int() == 0 { self.error = 22; return () }
  }
  let bytes = match @wire.bounded_utf8(value, maximum) {
    Ok(value) => value
    Err(code) => { self.error = code; return () }
  }
  self.unsigned(bytes.length().to_uint64(), 4)
  for byte in bytes { self.byte(byte) }
}

fn BoundedWriter::float32(self : BoundedWriter, value : Float) -> Unit {
  let bits = value.reinterpret_as_uint().to_uint64()
  if (bits & 2139095040UL) == 2139095040UL { self.error = 22; return () }
  self.unsigned(bits, 4)
}

fn BoundedWriter::float64(self : BoundedWriter, value : Double) -> Unit {
  let bits = value.reinterpret_as_uint64()
  if (bits & 9218868437227405312UL) == 9218868437227405312UL {
    self.error = 22
    return ()
  }
  self.unsigned(bits, 8)
}

struct BoundedReader {
  bytes : Bytes
  mut position : Int
  mut error : Int
}

fn BoundedReader::unsigned(self : BoundedReader, width : Int) -> UInt64 {
  if self.error != 0 { return 0UL }
  if width > self.bytes.length() - self.position {
    self.error = 22
    return 0UL
  }
  let mut bits = 0UL
  for index = 0; index < width; index = index + 1 {
    bits = bits | (self.bytes[self.position + index].to_int().to_uint64() << (index * 8))
  }
  self.position = self.position + width
  bits
}

fn BoundedReader::boolean(self : BoundedReader) -> Bool {
  let value = self.unsigned(1)
  if value > 1UL { self.error = 22 }
  value == 1UL
}

fn BoundedReader::signed8(self : BoundedReader) -> Int {
  let bits = self.unsigned(1).to_int()
  if bits >= 128 { bits - 256 } else { bits }
}

fn BoundedReader::signed16(self : BoundedReader) -> Int {
  let bits = self.unsigned(2).to_int()
  if bits >= 32768 { bits - 65536 } else { bits }
}

fn BoundedReader::float32(self : BoundedReader) -> Float {
  let bits = self.unsigned(4)
  if (bits & 2139095040UL) == 2139095040UL { self.error = 22 }
  bits.to_uint().reinterpret_as_float()
}

fn BoundedReader::float64(self : BoundedReader) -> Double {
  let bits = self.unsigned(8)
  if (bits & 9218868437227405312UL) == 9218868437227405312UL { self.error = 22 }
  bits.reinterpret_as_double()
}

fn BoundedReader::count(self : BoundedReader, maximum : Int, element_minimum : Int) -> Int {
  let count = self.unsigned(4)
  if self.error != 0 { return 0 }
  if count > maximum.to_uint64() ||
      (element_minimum > 0 && count > ((self.bytes.length() - self.position) / element_minimum).to_uint64()) {
    self.error = 22
    return 0
  }
  count.to_int()
}

fn BoundedReader::text(self : BoundedReader, maximum : Int) -> String {
  let count = self.unsigned(4)
  if self.error != 0 { return "" }
  if count > maximum.to_uint64() || count > (self.bytes.length() - self.position).to_uint64() {
    self.error = 22
    return ""
  }
  let start = self.position
  self.position = self.position + count.to_int()
  try {
    let value = @utf8.decode(self.bytes[start:self.position], ignore_bom=false)
    for index = 0; index < value.length(); index = index + 1 {
      if value[index].to_int() == 0 { self.error = 22; return "" }
    }
    value
  } catch {
    _ => { self.error = 22; "" }
  }
}

// Complete actual IR records follow. No native registration.

pub(all) struct Ros2Aimdk_msgsMsgAgentPropertyIdType {
  mut value : Int
}
pub fn Ros2Aimdk_msgsMsgAgentPropertyIdType::new() -> Ros2Aimdk_msgsMsgAgentPropertyIdType {
  {
    value: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec::new() -> Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/AgentPropertyIdType",
    native_identity: None,
    codec_identity: "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec::encode(
  _self : Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec,
  value : Ros2Aimdk_msgsMsgAgentPropertyIdType
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Aimdk_msgsMsgAgentPropertyIdType(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec::decode(
  _self : Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgAgentPropertyIdType, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgAgentPropertyIdType(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgAgentPropertyIdType(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgAgentPropertyIdType) -> Unit {
  let part0 = value.value
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Aimdk_msgsMsgAgentPropertyIdType(reader : BoundedReader) -> Ros2Aimdk_msgsMsgAgentPropertyIdType {
  let part0 = reader.unsigned(1).to_int()
  { value: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgAgentPropertiesValue {
  mut key : Ros2Aimdk_msgsMsgAgentPropertyIdType
  mut value : String
}
pub fn Ros2Aimdk_msgsMsgAgentPropertiesValue::new() -> Ros2Aimdk_msgsMsgAgentPropertiesValue {
  {
    key: Ros2Aimdk_msgsMsgAgentPropertyIdType::new(),
    value: "",
  }
}
pub(all) struct Ros2Aimdk_msgsMsgAgentPropertiesValueCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgAgentPropertiesValueCodec::new() -> Ros2Aimdk_msgsMsgAgentPropertiesValueCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/AgentPropertiesValue",
    native_identity: None,
    codec_identity: "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a",
    min_wire_bytes: 5, max_wire_bytes: 133 }
}
pub fn Ros2Aimdk_msgsMsgAgentPropertiesValueCodec::encode(
  _self : Ros2Aimdk_msgsMsgAgentPropertiesValueCodec,
  value : Ros2Aimdk_msgsMsgAgentPropertiesValue
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 133, error: 0 }
  write_Ros2Aimdk_msgsMsgAgentPropertiesValue(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgAgentPropertiesValueCodec::decode(
  _self : Ros2Aimdk_msgsMsgAgentPropertiesValueCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgAgentPropertiesValue, Int] {
  if input.length() < 5 || input.length() > 133 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgAgentPropertiesValue(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgAgentPropertiesValue(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgAgentPropertiesValue) -> Unit {
  let part0 = value.key
  write_Ros2Aimdk_msgsMsgAgentPropertyIdType(writer, part0)
  let part1 = value.value
  writer.text(part1, 128)
}
fn read_Ros2Aimdk_msgsMsgAgentPropertiesValue(reader : BoundedReader) -> Ros2Aimdk_msgsMsgAgentPropertiesValue {
  let part0 = read_Ros2Aimdk_msgsMsgAgentPropertyIdType(reader)
  let part1 = reader.text(128)
  { key: part0, value: part1 }
}

pub(all) struct Ros2Aimdk_msgsMsgAgentProperties {
  mut properties : Array[Ros2Aimdk_msgsMsgAgentPropertiesValue]
}
pub fn Ros2Aimdk_msgsMsgAgentProperties::new() -> Ros2Aimdk_msgsMsgAgentProperties {
  {
    properties: [],
  }
}
pub(all) struct Ros2Aimdk_msgsMsgAgentPropertiesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgAgentPropertiesCodec::new() -> Ros2Aimdk_msgsMsgAgentPropertiesCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/AgentProperties",
    native_identity: None,
    codec_identity: "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f",
    min_wire_bytes: 4, max_wire_bytes: 536 }
}
pub fn Ros2Aimdk_msgsMsgAgentPropertiesCodec::encode(
  _self : Ros2Aimdk_msgsMsgAgentPropertiesCodec,
  value : Ros2Aimdk_msgsMsgAgentProperties
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 536, error: 0 }
  write_Ros2Aimdk_msgsMsgAgentProperties(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgAgentPropertiesCodec::decode(
  _self : Ros2Aimdk_msgsMsgAgentPropertiesCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgAgentProperties, Int] {
  if input.length() < 4 || input.length() > 536 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgAgentProperties(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgAgentProperties(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgAgentProperties) -> Unit {
  let part0 = value.properties
  let count0 = part0.length()
  if count0 > 4 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Aimdk_msgsMsgAgentPropertiesValue(writer, element)
  }
}
fn read_Ros2Aimdk_msgsMsgAgentProperties(reader : BoundedReader) -> Ros2Aimdk_msgsMsgAgentProperties {
  let part0 : Array[Ros2Aimdk_msgsMsgAgentPropertiesValue] = []
  let count0 = reader.count(4, 5)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Aimdk_msgsMsgAgentPropertiesValue(reader))
  }
  { properties: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgAudioVadStateType {
  mut value : Int
}
pub fn Ros2Aimdk_msgsMsgAudioVadStateType::new() -> Ros2Aimdk_msgsMsgAudioVadStateType {
  {
    value: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgAudioVadStateTypeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgAudioVadStateTypeCodec::new() -> Ros2Aimdk_msgsMsgAudioVadStateTypeCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/AudioVadStateType",
    native_identity: None,
    codec_identity: "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Aimdk_msgsMsgAudioVadStateTypeCodec::encode(
  _self : Ros2Aimdk_msgsMsgAudioVadStateTypeCodec,
  value : Ros2Aimdk_msgsMsgAudioVadStateType
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Aimdk_msgsMsgAudioVadStateType(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgAudioVadStateTypeCodec::decode(
  _self : Ros2Aimdk_msgsMsgAudioVadStateTypeCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgAudioVadStateType, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgAudioVadStateType(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgAudioVadStateType(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgAudioVadStateType) -> Unit {
  let part0 = value.value
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Aimdk_msgsMsgAudioVadStateType(reader : BoundedReader) -> Ros2Aimdk_msgsMsgAudioVadStateType {
  let part0 = reader.unsigned(1).to_int()
  { value: part0 }
}

pub(all) struct Ros2Builtin_interfacesMsgTime {
  mut sec : Int
  mut nanosec : UInt
}
pub fn Ros2Builtin_interfacesMsgTime::new() -> Ros2Builtin_interfacesMsgTime {
  {
    sec: 0,
    nanosec: 0U,
  }
}
pub(all) struct Ros2Builtin_interfacesMsgTimeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Builtin_interfacesMsgTimeCodec::new() -> Ros2Builtin_interfacesMsgTimeCodec {
  { ros_version: 2, native_type: "builtin_interfaces/msg/Time",
    native_identity: None,
    codec_identity: "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Builtin_interfacesMsgTimeCodec::encode(
  _self : Ros2Builtin_interfacesMsgTimeCodec,
  value : Ros2Builtin_interfacesMsgTime
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Builtin_interfacesMsgTime(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Builtin_interfacesMsgTimeCodec::decode(
  _self : Ros2Builtin_interfacesMsgTimeCodec,
  input : Bytes
) -> Result[Ros2Builtin_interfacesMsgTime, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Builtin_interfacesMsgTime(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Builtin_interfacesMsgTime(writer : BoundedWriter, value : Ros2Builtin_interfacesMsgTime) -> Unit {
  let part0 = value.sec
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.nanosec
  writer.unsigned(part1.to_uint64(), 4)
  if part1 >= 1000000000U { writer.error = 22 }
}
fn read_Ros2Builtin_interfacesMsgTime(reader : BoundedReader) -> Ros2Builtin_interfacesMsgTime {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint()
  if part1 >= 1000000000U { reader.error = 22 }
  { sec: part0, nanosec: part1 }
}

pub(all) struct Ros2Aimdk_msgsMsgRequestHeader {
  mut stamp : Ros2Builtin_interfacesMsgTime
}
pub fn Ros2Aimdk_msgsMsgRequestHeader::new() -> Ros2Aimdk_msgsMsgRequestHeader {
  {
    stamp: Ros2Builtin_interfacesMsgTime::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsMsgRequestHeaderCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgRequestHeaderCodec::new() -> Ros2Aimdk_msgsMsgRequestHeaderCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/RequestHeader",
    native_identity: None,
    codec_identity: "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Aimdk_msgsMsgRequestHeaderCodec::encode(
  _self : Ros2Aimdk_msgsMsgRequestHeaderCodec,
  value : Ros2Aimdk_msgsMsgRequestHeader
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Aimdk_msgsMsgRequestHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgRequestHeaderCodec::decode(
  _self : Ros2Aimdk_msgsMsgRequestHeaderCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgRequestHeader, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgRequestHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgRequestHeader(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgRequestHeader) -> Unit {
  let part0 = value.stamp
  write_Ros2Builtin_interfacesMsgTime(writer, part0)
}
fn read_Ros2Aimdk_msgsMsgRequestHeader(reader : BoundedReader) -> Ros2Aimdk_msgsMsgRequestHeader {
  let part0 = read_Ros2Builtin_interfacesMsgTime(reader)
  { stamp: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgCommonRequest {
  mut header : Ros2Aimdk_msgsMsgRequestHeader
}
pub fn Ros2Aimdk_msgsMsgCommonRequest::new() -> Ros2Aimdk_msgsMsgCommonRequest {
  {
    header: Ros2Aimdk_msgsMsgRequestHeader::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsMsgCommonRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgCommonRequestCodec::new() -> Ros2Aimdk_msgsMsgCommonRequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/CommonRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Aimdk_msgsMsgCommonRequestCodec::encode(
  _self : Ros2Aimdk_msgsMsgCommonRequestCodec,
  value : Ros2Aimdk_msgsMsgCommonRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgCommonRequestCodec::decode(
  _self : Ros2Aimdk_msgsMsgCommonRequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgCommonRequest, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgCommonRequest(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgCommonRequest) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgRequestHeader(writer, part0)
}
fn read_Ros2Aimdk_msgsMsgCommonRequest(reader : BoundedReader) -> Ros2Aimdk_msgsMsgCommonRequest {
  let part0 = read_Ros2Aimdk_msgsMsgRequestHeader(reader)
  { header: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgResponseHeader {
  mut stamp : Ros2Builtin_interfacesMsgTime
  mut code : Int64
}
pub fn Ros2Aimdk_msgsMsgResponseHeader::new() -> Ros2Aimdk_msgsMsgResponseHeader {
  {
    stamp: Ros2Builtin_interfacesMsgTime::new(),
    code: 0L,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgResponseHeaderCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgResponseHeaderCodec::new() -> Ros2Aimdk_msgsMsgResponseHeaderCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/ResponseHeader",
    native_identity: None,
    codec_identity: "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
pub fn Ros2Aimdk_msgsMsgResponseHeaderCodec::encode(
  _self : Ros2Aimdk_msgsMsgResponseHeaderCodec,
  value : Ros2Aimdk_msgsMsgResponseHeader
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Aimdk_msgsMsgResponseHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgResponseHeaderCodec::decode(
  _self : Ros2Aimdk_msgsMsgResponseHeaderCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgResponseHeader, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgResponseHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgResponseHeader(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgResponseHeader) -> Unit {
  let part0 = value.stamp
  write_Ros2Builtin_interfacesMsgTime(writer, part0)
  let part1 = value.code
  writer.unsigned(part1.reinterpret_as_uint64(), 8)
}
fn read_Ros2Aimdk_msgsMsgResponseHeader(reader : BoundedReader) -> Ros2Aimdk_msgsMsgResponseHeader {
  let part0 = read_Ros2Builtin_interfacesMsgTime(reader)
  let part1 = reader.unsigned(8).reinterpret_as_int64()
  { stamp: part0, code: part1 }
}

pub(all) struct Ros2Aimdk_msgsMsgCommonState {
  mut value : Int
}
pub fn Ros2Aimdk_msgsMsgCommonState::new() -> Ros2Aimdk_msgsMsgCommonState {
  {
    value: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgCommonStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgCommonStateCodec::new() -> Ros2Aimdk_msgsMsgCommonStateCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/CommonState",
    native_identity: None,
    codec_identity: "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Aimdk_msgsMsgCommonStateCodec::encode(
  _self : Ros2Aimdk_msgsMsgCommonStateCodec,
  value : Ros2Aimdk_msgsMsgCommonState
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Aimdk_msgsMsgCommonState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgCommonStateCodec::decode(
  _self : Ros2Aimdk_msgsMsgCommonStateCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgCommonState, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgCommonState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgCommonState(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgCommonState) -> Unit {
  let part0 = value.value
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Aimdk_msgsMsgCommonState(reader : BoundedReader) -> Ros2Aimdk_msgsMsgCommonState {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { value: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgCommonResponse {
  mut header : Ros2Aimdk_msgsMsgResponseHeader
  mut status : Ros2Aimdk_msgsMsgCommonState
  mut message : String
}
pub fn Ros2Aimdk_msgsMsgCommonResponse::new() -> Ros2Aimdk_msgsMsgCommonResponse {
  {
    header: Ros2Aimdk_msgsMsgResponseHeader::new(),
    status: Ros2Aimdk_msgsMsgCommonState::new(),
    message: "",
  }
}
pub(all) struct Ros2Aimdk_msgsMsgCommonResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgCommonResponseCodec::new() -> Ros2Aimdk_msgsMsgCommonResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/CommonResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6",
    min_wire_bytes: 24, max_wire_bytes: 152 }
}
pub fn Ros2Aimdk_msgsMsgCommonResponseCodec::encode(
  _self : Ros2Aimdk_msgsMsgCommonResponseCodec,
  value : Ros2Aimdk_msgsMsgCommonResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 152, error: 0 }
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgCommonResponseCodec::decode(
  _self : Ros2Aimdk_msgsMsgCommonResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgCommonResponse, Int] {
  if input.length() < 24 || input.length() > 152 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgCommonResponse(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgCommonResponse) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgResponseHeader(writer, part0)
  let part1 = value.status
  write_Ros2Aimdk_msgsMsgCommonState(writer, part1)
  let part2 = value.message
  writer.text(part2, 128)
}
fn read_Ros2Aimdk_msgsMsgCommonResponse(reader : BoundedReader) -> Ros2Aimdk_msgsMsgCommonResponse {
  let part0 = read_Ros2Aimdk_msgsMsgResponseHeader(reader)
  let part1 = read_Ros2Aimdk_msgsMsgCommonState(reader)
  let part2 = reader.text(128)
  { header: part0, status: part1, message: part2 }
}

pub(all) struct Ros2Aimdk_msgsMsgCommonTaskResponse {
  mut header : Ros2Aimdk_msgsMsgResponseHeader
  mut task_id : UInt64
  mut state : Ros2Aimdk_msgsMsgCommonState
}
pub fn Ros2Aimdk_msgsMsgCommonTaskResponse::new() -> Ros2Aimdk_msgsMsgCommonTaskResponse {
  {
    header: Ros2Aimdk_msgsMsgResponseHeader::new(),
    task_id: 0UL,
    state: Ros2Aimdk_msgsMsgCommonState::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsMsgCommonTaskResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgCommonTaskResponseCodec::new() -> Ros2Aimdk_msgsMsgCommonTaskResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/CommonTaskResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2",
    min_wire_bytes: 28, max_wire_bytes: 28 }
}
pub fn Ros2Aimdk_msgsMsgCommonTaskResponseCodec::encode(
  _self : Ros2Aimdk_msgsMsgCommonTaskResponseCodec,
  value : Ros2Aimdk_msgsMsgCommonTaskResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 28, error: 0 }
  write_Ros2Aimdk_msgsMsgCommonTaskResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgCommonTaskResponseCodec::decode(
  _self : Ros2Aimdk_msgsMsgCommonTaskResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgCommonTaskResponse, Int] {
  if input.length() < 28 || input.length() > 28 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgCommonTaskResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgCommonTaskResponse(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgCommonTaskResponse) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgResponseHeader(writer, part0)
  let part1 = value.task_id
  writer.unsigned(part1, 8)
  let part2 = value.state
  write_Ros2Aimdk_msgsMsgCommonState(writer, part2)
}
fn read_Ros2Aimdk_msgsMsgCommonTaskResponse(reader : BoundedReader) -> Ros2Aimdk_msgsMsgCommonTaskResponse {
  let part0 = read_Ros2Aimdk_msgsMsgResponseHeader(reader)
  let part1 = reader.unsigned(8)
  let part2 = read_Ros2Aimdk_msgsMsgCommonState(reader)
  { header: part0, task_id: part1, state: part2 }
}

pub(all) struct Ros2Aimdk_msgsMsgMessageHeader {
  mut stamp : Ros2Builtin_interfacesMsgTime
  mut frame_id : String
  mut sequence : UInt
  mut meas_stamp : Ros2Builtin_interfacesMsgTime
}
pub fn Ros2Aimdk_msgsMsgMessageHeader::new() -> Ros2Aimdk_msgsMsgMessageHeader {
  {
    stamp: Ros2Builtin_interfacesMsgTime::new(),
    frame_id: "",
    sequence: 0U,
    meas_stamp: Ros2Builtin_interfacesMsgTime::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsMsgMessageHeaderCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgMessageHeaderCodec::new() -> Ros2Aimdk_msgsMsgMessageHeaderCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/MessageHeader",
    native_identity: None,
    codec_identity: "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496",
    min_wire_bytes: 24, max_wire_bytes: 152 }
}
pub fn Ros2Aimdk_msgsMsgMessageHeaderCodec::encode(
  _self : Ros2Aimdk_msgsMsgMessageHeaderCodec,
  value : Ros2Aimdk_msgsMsgMessageHeader
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 152, error: 0 }
  write_Ros2Aimdk_msgsMsgMessageHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgMessageHeaderCodec::decode(
  _self : Ros2Aimdk_msgsMsgMessageHeaderCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgMessageHeader, Int] {
  if input.length() < 24 || input.length() > 152 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgMessageHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgMessageHeader(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgMessageHeader) -> Unit {
  let part0 = value.stamp
  write_Ros2Builtin_interfacesMsgTime(writer, part0)
  let part1 = value.frame_id
  writer.text(part1, 128)
  let part2 = value.sequence
  writer.unsigned(part2.to_uint64(), 4)
  let part3 = value.meas_stamp
  write_Ros2Builtin_interfacesMsgTime(writer, part3)
}
fn read_Ros2Aimdk_msgsMsgMessageHeader(reader : BoundedReader) -> Ros2Aimdk_msgsMsgMessageHeader {
  let part0 = read_Ros2Builtin_interfacesMsgTime(reader)
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint()
  let part3 = read_Ros2Builtin_interfacesMsgTime(reader)
  { stamp: part0, frame_id: part1, sequence: part2, meas_stamp: part3 }
}

pub(all) struct Ros2Aimdk_msgsMsgFaceEmojiStatus {
  mut header : Ros2Aimdk_msgsMsgMessageHeader
  mut e_path : String
  mut e_path_list : Array[String]
  mut e_id : Int
  mut mode : Int
  mut priority : Int
  mut status : Int
  mut time_to_end_ms : Double
}
pub fn Ros2Aimdk_msgsMsgFaceEmojiStatus::new() -> Ros2Aimdk_msgsMsgFaceEmojiStatus {
  {
    header: Ros2Aimdk_msgsMsgMessageHeader::new(),
    e_path: "",
    e_path_list: [],
    e_id: 0,
    mode: 0,
    priority: 0,
    status: 0,
    time_to_end_ms: 0.0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgFaceEmojiStatusCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgFaceEmojiStatusCodec::new() -> Ros2Aimdk_msgsMsgFaceEmojiStatusCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/FaceEmojiStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7",
    min_wire_bytes: 47, max_wire_bytes: 2415 }
}
pub fn Ros2Aimdk_msgsMsgFaceEmojiStatusCodec::encode(
  _self : Ros2Aimdk_msgsMsgFaceEmojiStatusCodec,
  value : Ros2Aimdk_msgsMsgFaceEmojiStatus
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2415, error: 0 }
  write_Ros2Aimdk_msgsMsgFaceEmojiStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 47 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgFaceEmojiStatusCodec::decode(
  _self : Ros2Aimdk_msgsMsgFaceEmojiStatusCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgFaceEmojiStatus, Int] {
  if input.length() < 47 || input.length() > 2415 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgFaceEmojiStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgFaceEmojiStatus(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgFaceEmojiStatus) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgMessageHeader(writer, part0)
  let part1 = value.e_path
  writer.text(part1, 128)
  let part2 = value.e_path_list
  let count2 = part2.length()
  if count2 > 16 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.text(element, 128)
  }
  let part3 = value.e_id
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part4 = value.mode
  if part4 < 0 || part4 > 255 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part5 = value.priority
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part6 = value.status
  if part6 < 0 || part6 > 255 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part7 = value.time_to_end_ms
  writer.float64(part7)
}
fn read_Ros2Aimdk_msgsMsgFaceEmojiStatus(reader : BoundedReader) -> Ros2Aimdk_msgsMsgFaceEmojiStatus {
  let part0 = read_Ros2Aimdk_msgsMsgMessageHeader(reader)
  let part1 = reader.text(128)
  let part2 : Array[String] = []
  let count2 = reader.count(16, 4)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.text(128))
  }
  let part3 = reader.unsigned(1).to_int()
  let part4 = reader.unsigned(1).to_int()
  let part5 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part6 = reader.unsigned(1).to_int()
  let part7 = reader.float64()
  {
    header: part0,
    e_path: part1,
    e_path_list: part2,
    e_id: part3,
    mode: part4,
    priority: part5,
    status: part6,
    time_to_end_ms: part7
  }
}

pub(all) struct Ros2Aimdk_msgsMsgHandCommand {
  mut name : String
  mut position : Double
  mut velocity : Double
  mut acceleration : Double
  mut deceleration : Double
  mut effort : Double
}
pub fn Ros2Aimdk_msgsMsgHandCommand::new() -> Ros2Aimdk_msgsMsgHandCommand {
  {
    name: "",
    position: 0.0,
    velocity: 0.0,
    acceleration: 0.0,
    deceleration: 0.0,
    effort: 0.0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgHandCommandCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgHandCommandCodec::new() -> Ros2Aimdk_msgsMsgHandCommandCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/HandCommand",
    native_identity: None,
    codec_identity: "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8",
    min_wire_bytes: 44, max_wire_bytes: 172 }
}
pub fn Ros2Aimdk_msgsMsgHandCommandCodec::encode(
  _self : Ros2Aimdk_msgsMsgHandCommandCodec,
  value : Ros2Aimdk_msgsMsgHandCommand
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 172, error: 0 }
  write_Ros2Aimdk_msgsMsgHandCommand(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 44 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgHandCommandCodec::decode(
  _self : Ros2Aimdk_msgsMsgHandCommandCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgHandCommand, Int] {
  if input.length() < 44 || input.length() > 172 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgHandCommand(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgHandCommand(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgHandCommand) -> Unit {
  let part0 = value.name
  writer.text(part0, 128)
  let part1 = value.position
  writer.float64(part1)
  let part2 = value.velocity
  writer.float64(part2)
  let part3 = value.acceleration
  writer.float64(part3)
  let part4 = value.deceleration
  writer.float64(part4)
  let part5 = value.effort
  writer.float64(part5)
}
fn read_Ros2Aimdk_msgsMsgHandCommand(reader : BoundedReader) -> Ros2Aimdk_msgsMsgHandCommand {
  let part0 = reader.text(128)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  let part5 = reader.float64()
  { name: part0, position: part1, velocity: part2, acceleration: part3, deceleration: part4, effort: part5 }
}

pub(all) struct Ros2Aimdk_msgsMsgHandType {
  mut value : Int
}
pub fn Ros2Aimdk_msgsMsgHandType::new() -> Ros2Aimdk_msgsMsgHandType {
  {
    value: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgHandTypeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgHandTypeCodec::new() -> Ros2Aimdk_msgsMsgHandTypeCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/HandType",
    native_identity: None,
    codec_identity: "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Aimdk_msgsMsgHandTypeCodec::encode(
  _self : Ros2Aimdk_msgsMsgHandTypeCodec,
  value : Ros2Aimdk_msgsMsgHandType
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Aimdk_msgsMsgHandType(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgHandTypeCodec::decode(
  _self : Ros2Aimdk_msgsMsgHandTypeCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgHandType, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgHandType(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgHandType(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgHandType) -> Unit {
  let part0 = value.value
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Aimdk_msgsMsgHandType(reader : BoundedReader) -> Ros2Aimdk_msgsMsgHandType {
  let part0 = reader.unsigned(1).to_int()
  { value: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgHandCommandArray {
  mut header : Ros2Aimdk_msgsMsgMessageHeader
  mut left_hand_type : Ros2Aimdk_msgsMsgHandType
  mut left_hands : Array[Ros2Aimdk_msgsMsgHandCommand]
  mut right_hand_type : Ros2Aimdk_msgsMsgHandType
  mut right_hands : Array[Ros2Aimdk_msgsMsgHandCommand]
}
pub fn Ros2Aimdk_msgsMsgHandCommandArray::new() -> Ros2Aimdk_msgsMsgHandCommandArray {
  {
    header: Ros2Aimdk_msgsMsgMessageHeader::new(),
    left_hand_type: Ros2Aimdk_msgsMsgHandType::new(),
    left_hands: [],
    right_hand_type: Ros2Aimdk_msgsMsgHandType::new(),
    right_hands: [],
  }
}
pub(all) struct Ros2Aimdk_msgsMsgHandCommandArrayCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgHandCommandArrayCodec::new() -> Ros2Aimdk_msgsMsgHandCommandArrayCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/HandCommandArray",
    native_identity: None,
    codec_identity: "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e",
    min_wire_bytes: 34, max_wire_bytes: 1538 }
}
pub fn Ros2Aimdk_msgsMsgHandCommandArrayCodec::encode(
  _self : Ros2Aimdk_msgsMsgHandCommandArrayCodec,
  value : Ros2Aimdk_msgsMsgHandCommandArray
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1538, error: 0 }
  write_Ros2Aimdk_msgsMsgHandCommandArray(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 34 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgHandCommandArrayCodec::decode(
  _self : Ros2Aimdk_msgsMsgHandCommandArrayCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgHandCommandArray, Int] {
  if input.length() < 34 || input.length() > 1538 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgHandCommandArray(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgHandCommandArray(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgHandCommandArray) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgMessageHeader(writer, part0)
  let part1 = value.left_hand_type
  write_Ros2Aimdk_msgsMsgHandType(writer, part1)
  let part2 = value.left_hands
  let count2 = part2.length()
  if count2 > 4 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Aimdk_msgsMsgHandCommand(writer, element)
  }
  let part3 = value.right_hand_type
  write_Ros2Aimdk_msgsMsgHandType(writer, part3)
  let part4 = value.right_hands
  let count4 = part4.length()
  if count4 > 4 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    write_Ros2Aimdk_msgsMsgHandCommand(writer, element)
  }
}
fn read_Ros2Aimdk_msgsMsgHandCommandArray(reader : BoundedReader) -> Ros2Aimdk_msgsMsgHandCommandArray {
  let part0 = read_Ros2Aimdk_msgsMsgMessageHeader(reader)
  let part1 = read_Ros2Aimdk_msgsMsgHandType(reader)
  let part2 : Array[Ros2Aimdk_msgsMsgHandCommand] = []
  let count2 = reader.count(4, 44)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Aimdk_msgsMsgHandCommand(reader))
  }
  let part3 = read_Ros2Aimdk_msgsMsgHandType(reader)
  let part4 : Array[Ros2Aimdk_msgsMsgHandCommand] = []
  let count4 = reader.count(4, 44)
  for index = 0; index < count4; index = index + 1 {
    part4.push(read_Ros2Aimdk_msgsMsgHandCommand(reader))
  }
  { header: part0, left_hand_type: part1, left_hands: part2, right_hand_type: part3, right_hands: part4 }
}

pub(all) struct Ros2Aimdk_msgsMsgHandState {
  mut name : String
  mut position : Double
  mut velocity : Double
  mut effort : Double
  mut state : Int
  mut faultcode : Int
}
pub fn Ros2Aimdk_msgsMsgHandState::new() -> Ros2Aimdk_msgsMsgHandState {
  {
    name: "",
    position: 0.0,
    velocity: 0.0,
    effort: 0.0,
    state: 0,
    faultcode: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgHandStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgHandStateCodec::new() -> Ros2Aimdk_msgsMsgHandStateCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/HandState",
    native_identity: None,
    codec_identity: "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c",
    min_wire_bytes: 36, max_wire_bytes: 164 }
}
pub fn Ros2Aimdk_msgsMsgHandStateCodec::encode(
  _self : Ros2Aimdk_msgsMsgHandStateCodec,
  value : Ros2Aimdk_msgsMsgHandState
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 164, error: 0 }
  write_Ros2Aimdk_msgsMsgHandState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 36 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgHandStateCodec::decode(
  _self : Ros2Aimdk_msgsMsgHandStateCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgHandState, Int] {
  if input.length() < 36 || input.length() > 164 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgHandState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgHandState(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgHandState) -> Unit {
  let part0 = value.name
  writer.text(part0, 128)
  let part1 = value.position
  writer.float64(part1)
  let part2 = value.velocity
  writer.float64(part2)
  let part3 = value.effort
  writer.float64(part3)
  let part4 = value.state
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part5 = value.faultcode
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Aimdk_msgsMsgHandState(reader : BoundedReader) -> Ros2Aimdk_msgsMsgHandState {
  let part0 = reader.text(128)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part5 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { name: part0, position: part1, velocity: part2, effort: part3, state: part4, faultcode: part5 }
}

pub(all) struct Ros2Aimdk_msgsMsgHandStateArray {
  mut header : Ros2Aimdk_msgsMsgMessageHeader
  mut left_hand_type : Ros2Aimdk_msgsMsgHandType
  mut left_hands : Array[Ros2Aimdk_msgsMsgHandState]
  mut right_hand_type : Ros2Aimdk_msgsMsgHandType
  mut right_hands : Array[Ros2Aimdk_msgsMsgHandState]
}
pub fn Ros2Aimdk_msgsMsgHandStateArray::new() -> Ros2Aimdk_msgsMsgHandStateArray {
  {
    header: Ros2Aimdk_msgsMsgMessageHeader::new(),
    left_hand_type: Ros2Aimdk_msgsMsgHandType::new(),
    left_hands: [],
    right_hand_type: Ros2Aimdk_msgsMsgHandType::new(),
    right_hands: [],
  }
}
pub(all) struct Ros2Aimdk_msgsMsgHandStateArrayCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgHandStateArrayCodec::new() -> Ros2Aimdk_msgsMsgHandStateArrayCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/HandStateArray",
    native_identity: None,
    codec_identity: "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d",
    min_wire_bytes: 34, max_wire_bytes: 1474 }
}
pub fn Ros2Aimdk_msgsMsgHandStateArrayCodec::encode(
  _self : Ros2Aimdk_msgsMsgHandStateArrayCodec,
  value : Ros2Aimdk_msgsMsgHandStateArray
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1474, error: 0 }
  write_Ros2Aimdk_msgsMsgHandStateArray(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 34 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgHandStateArrayCodec::decode(
  _self : Ros2Aimdk_msgsMsgHandStateArrayCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgHandStateArray, Int] {
  if input.length() < 34 || input.length() > 1474 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgHandStateArray(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgHandStateArray(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgHandStateArray) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgMessageHeader(writer, part0)
  let part1 = value.left_hand_type
  write_Ros2Aimdk_msgsMsgHandType(writer, part1)
  let part2 = value.left_hands
  let count2 = part2.length()
  if count2 > 4 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Aimdk_msgsMsgHandState(writer, element)
  }
  let part3 = value.right_hand_type
  write_Ros2Aimdk_msgsMsgHandType(writer, part3)
  let part4 = value.right_hands
  let count4 = part4.length()
  if count4 > 4 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    write_Ros2Aimdk_msgsMsgHandState(writer, element)
  }
}
fn read_Ros2Aimdk_msgsMsgHandStateArray(reader : BoundedReader) -> Ros2Aimdk_msgsMsgHandStateArray {
  let part0 = read_Ros2Aimdk_msgsMsgMessageHeader(reader)
  let part1 = read_Ros2Aimdk_msgsMsgHandType(reader)
  let part2 : Array[Ros2Aimdk_msgsMsgHandState] = []
  let count2 = reader.count(4, 36)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Aimdk_msgsMsgHandState(reader))
  }
  let part3 = read_Ros2Aimdk_msgsMsgHandType(reader)
  let part4 : Array[Ros2Aimdk_msgsMsgHandState] = []
  let count4 = reader.count(4, 36)
  for index = 0; index < count4; index = index + 1 {
    part4.push(read_Ros2Aimdk_msgsMsgHandState(reader))
  }
  { header: part0, left_hand_type: part1, left_hands: part2, right_hand_type: part3, right_hands: part4 }
}

pub(all) struct Ros2Aimdk_msgsMsgJointCommand {
  mut name : String
  mut position : Double
  mut velocity : Double
  mut effort : Double
  mut stiffness : Double
  mut damping : Double
}
pub fn Ros2Aimdk_msgsMsgJointCommand::new() -> Ros2Aimdk_msgsMsgJointCommand {
  {
    name: "",
    position: 0.0,
    velocity: 0.0,
    effort: 0.0,
    stiffness: 0.0,
    damping: 0.0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgJointCommandCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgJointCommandCodec::new() -> Ros2Aimdk_msgsMsgJointCommandCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/JointCommand",
    native_identity: None,
    codec_identity: "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f",
    min_wire_bytes: 44, max_wire_bytes: 172 }
}
pub fn Ros2Aimdk_msgsMsgJointCommandCodec::encode(
  _self : Ros2Aimdk_msgsMsgJointCommandCodec,
  value : Ros2Aimdk_msgsMsgJointCommand
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 172, error: 0 }
  write_Ros2Aimdk_msgsMsgJointCommand(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 44 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgJointCommandCodec::decode(
  _self : Ros2Aimdk_msgsMsgJointCommandCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgJointCommand, Int] {
  if input.length() < 44 || input.length() > 172 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgJointCommand(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgJointCommand(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgJointCommand) -> Unit {
  let part0 = value.name
  writer.text(part0, 128)
  let part1 = value.position
  writer.float64(part1)
  let part2 = value.velocity
  writer.float64(part2)
  let part3 = value.effort
  writer.float64(part3)
  let part4 = value.stiffness
  writer.float64(part4)
  let part5 = value.damping
  writer.float64(part5)
}
fn read_Ros2Aimdk_msgsMsgJointCommand(reader : BoundedReader) -> Ros2Aimdk_msgsMsgJointCommand {
  let part0 = reader.text(128)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  let part5 = reader.float64()
  { name: part0, position: part1, velocity: part2, effort: part3, stiffness: part4, damping: part5 }
}

pub(all) struct Ros2Aimdk_msgsMsgJointCommandArray {
  mut header : Ros2Aimdk_msgsMsgMessageHeader
  mut joints : Array[Ros2Aimdk_msgsMsgJointCommand]
}
pub fn Ros2Aimdk_msgsMsgJointCommandArray::new() -> Ros2Aimdk_msgsMsgJointCommandArray {
  {
    header: Ros2Aimdk_msgsMsgMessageHeader::new(),
    joints: [],
  }
}
pub(all) struct Ros2Aimdk_msgsMsgJointCommandArrayCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgJointCommandArrayCodec::new() -> Ros2Aimdk_msgsMsgJointCommandArrayCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/JointCommandArray",
    native_identity: None,
    codec_identity: "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6",
    min_wire_bytes: 28, max_wire_bytes: 11164 }
}
pub fn Ros2Aimdk_msgsMsgJointCommandArrayCodec::encode(
  _self : Ros2Aimdk_msgsMsgJointCommandArrayCodec,
  value : Ros2Aimdk_msgsMsgJointCommandArray
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 11164, error: 0 }
  write_Ros2Aimdk_msgsMsgJointCommandArray(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgJointCommandArrayCodec::decode(
  _self : Ros2Aimdk_msgsMsgJointCommandArrayCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgJointCommandArray, Int] {
  if input.length() < 28 || input.length() > 11164 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgJointCommandArray(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgJointCommandArray(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgJointCommandArray) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgMessageHeader(writer, part0)
  let part1 = value.joints
  let count1 = part1.length()
  if count1 > 64 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Aimdk_msgsMsgJointCommand(writer, element)
  }
}
fn read_Ros2Aimdk_msgsMsgJointCommandArray(reader : BoundedReader) -> Ros2Aimdk_msgsMsgJointCommandArray {
  let part0 = read_Ros2Aimdk_msgsMsgMessageHeader(reader)
  let part1 : Array[Ros2Aimdk_msgsMsgJointCommand] = []
  let count1 = reader.count(64, 44)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Aimdk_msgsMsgJointCommand(reader))
  }
  { header: part0, joints: part1 }
}

pub(all) struct Ros2Aimdk_msgsMsgJointState {
  mut name : String
  mut position : Double
  mut velocity : Double
  mut effort : Double
  mut coil_temp : Int
  mut motor_temp : Int
  mut motor_vol : Int
}
pub fn Ros2Aimdk_msgsMsgJointState::new() -> Ros2Aimdk_msgsMsgJointState {
  {
    name: "",
    position: 0.0,
    velocity: 0.0,
    effort: 0.0,
    coil_temp: 0,
    motor_temp: 0,
    motor_vol: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgJointStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgJointStateCodec::new() -> Ros2Aimdk_msgsMsgJointStateCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/JointState",
    native_identity: None,
    codec_identity: "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f",
    min_wire_bytes: 31, max_wire_bytes: 159 }
}
pub fn Ros2Aimdk_msgsMsgJointStateCodec::encode(
  _self : Ros2Aimdk_msgsMsgJointStateCodec,
  value : Ros2Aimdk_msgsMsgJointState
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 159, error: 0 }
  write_Ros2Aimdk_msgsMsgJointState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 31 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgJointStateCodec::decode(
  _self : Ros2Aimdk_msgsMsgJointStateCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgJointState, Int] {
  if input.length() < 31 || input.length() > 159 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgJointState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgJointState(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgJointState) -> Unit {
  let part0 = value.name
  writer.text(part0, 128)
  let part1 = value.position
  writer.float64(part1)
  let part2 = value.velocity
  writer.float64(part2)
  let part3 = value.effort
  writer.float64(part3)
  let part4 = value.coil_temp
  if part4 < 0 || part4 > 255 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part5 = value.motor_temp
  if part5 < 0 || part5 > 255 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part6 = value.motor_vol
  if part6 < 0 || part6 > 255 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Aimdk_msgsMsgJointState(reader : BoundedReader) -> Ros2Aimdk_msgsMsgJointState {
  let part0 = reader.text(128)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.unsigned(1).to_int()
  let part5 = reader.unsigned(1).to_int()
  let part6 = reader.unsigned(1).to_int()
  {
    name: part0,
    position: part1,
    velocity: part2,
    effort: part3,
    coil_temp: part4,
    motor_temp: part5,
    motor_vol: part6
  }
}

pub(all) struct Ros2Aimdk_msgsMsgJointStateArray {
  mut header : Ros2Aimdk_msgsMsgMessageHeader
  mut joints : Array[Ros2Aimdk_msgsMsgJointState]
}
pub fn Ros2Aimdk_msgsMsgJointStateArray::new() -> Ros2Aimdk_msgsMsgJointStateArray {
  {
    header: Ros2Aimdk_msgsMsgMessageHeader::new(),
    joints: [],
  }
}
pub(all) struct Ros2Aimdk_msgsMsgJointStateArrayCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgJointStateArrayCodec::new() -> Ros2Aimdk_msgsMsgJointStateArrayCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/JointStateArray",
    native_identity: None,
    codec_identity: "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa",
    min_wire_bytes: 28, max_wire_bytes: 10332 }
}
pub fn Ros2Aimdk_msgsMsgJointStateArrayCodec::encode(
  _self : Ros2Aimdk_msgsMsgJointStateArrayCodec,
  value : Ros2Aimdk_msgsMsgJointStateArray
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 10332, error: 0 }
  write_Ros2Aimdk_msgsMsgJointStateArray(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgJointStateArrayCodec::decode(
  _self : Ros2Aimdk_msgsMsgJointStateArrayCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgJointStateArray, Int] {
  if input.length() < 28 || input.length() > 10332 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgJointStateArray(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgJointStateArray(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgJointStateArray) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgMessageHeader(writer, part0)
  let part1 = value.joints
  let count1 = part1.length()
  if count1 > 64 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Aimdk_msgsMsgJointState(writer, element)
  }
}
fn read_Ros2Aimdk_msgsMsgJointStateArray(reader : BoundedReader) -> Ros2Aimdk_msgsMsgJointStateArray {
  let part0 = read_Ros2Aimdk_msgsMsgMessageHeader(reader)
  let part1 : Array[Ros2Aimdk_msgsMsgJointState] = []
  let count1 = reader.count(64, 31)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Aimdk_msgsMsgJointState(reader))
  }
  { header: part0, joints: part1 }
}

pub(all) struct Ros2Aimdk_msgsMsgMcAction {
  mut value : Int
}
pub fn Ros2Aimdk_msgsMsgMcAction::new() -> Ros2Aimdk_msgsMsgMcAction {
  {
    value: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgMcActionCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgMcActionCodec::new() -> Ros2Aimdk_msgsMsgMcActionCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/McAction",
    native_identity: None,
    codec_identity: "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Aimdk_msgsMsgMcActionCodec::encode(
  _self : Ros2Aimdk_msgsMsgMcActionCodec,
  value : Ros2Aimdk_msgsMsgMcAction
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Aimdk_msgsMsgMcAction(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgMcActionCodec::decode(
  _self : Ros2Aimdk_msgsMsgMcActionCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgMcAction, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgMcAction(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgMcAction(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgMcAction) -> Unit {
  let part0 = value.value
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Aimdk_msgsMsgMcAction(reader : BoundedReader) -> Ros2Aimdk_msgsMsgMcAction {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { value: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgMcActionCommand {
  mut action : Ros2Aimdk_msgsMsgMcAction
  mut action_desc : String
}
pub fn Ros2Aimdk_msgsMsgMcActionCommand::new() -> Ros2Aimdk_msgsMsgMcActionCommand {
  {
    action: Ros2Aimdk_msgsMsgMcAction::new(),
    action_desc: "",
  }
}
pub(all) struct Ros2Aimdk_msgsMsgMcActionCommandCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgMcActionCommandCodec::new() -> Ros2Aimdk_msgsMsgMcActionCommandCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/McActionCommand",
    native_identity: None,
    codec_identity: "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros2Aimdk_msgsMsgMcActionCommandCodec::encode(
  _self : Ros2Aimdk_msgsMsgMcActionCommandCodec,
  value : Ros2Aimdk_msgsMsgMcActionCommand
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros2Aimdk_msgsMsgMcActionCommand(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgMcActionCommandCodec::decode(
  _self : Ros2Aimdk_msgsMsgMcActionCommandCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgMcActionCommand, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgMcActionCommand(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgMcActionCommand(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgMcActionCommand) -> Unit {
  let part0 = value.action
  write_Ros2Aimdk_msgsMsgMcAction(writer, part0)
  let part1 = value.action_desc
  writer.text(part1, 128)
}
fn read_Ros2Aimdk_msgsMsgMcActionCommand(reader : BoundedReader) -> Ros2Aimdk_msgsMsgMcActionCommand {
  let part0 = read_Ros2Aimdk_msgsMsgMcAction(reader)
  let part1 = reader.text(128)
  { action: part0, action_desc: part1 }
}

pub(all) struct Ros2Aimdk_msgsMsgMcActionStatus {
  mut value : Int
}
pub fn Ros2Aimdk_msgsMsgMcActionStatus::new() -> Ros2Aimdk_msgsMsgMcActionStatus {
  {
    value: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgMcActionStatusCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgMcActionStatusCodec::new() -> Ros2Aimdk_msgsMsgMcActionStatusCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/McActionStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Aimdk_msgsMsgMcActionStatusCodec::encode(
  _self : Ros2Aimdk_msgsMsgMcActionStatusCodec,
  value : Ros2Aimdk_msgsMsgMcActionStatus
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Aimdk_msgsMsgMcActionStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgMcActionStatusCodec::decode(
  _self : Ros2Aimdk_msgsMsgMcActionStatusCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgMcActionStatus, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgMcActionStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgMcActionStatus(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgMcActionStatus) -> Unit {
  let part0 = value.value
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Aimdk_msgsMsgMcActionStatus(reader : BoundedReader) -> Ros2Aimdk_msgsMsgMcActionStatus {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { value: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgMcActionInfo {
  mut current_action : Ros2Aimdk_msgsMsgMcAction
  mut action_desc : String
  mut status : Ros2Aimdk_msgsMsgMcActionStatus
}
pub fn Ros2Aimdk_msgsMsgMcActionInfo::new() -> Ros2Aimdk_msgsMsgMcActionInfo {
  {
    current_action: Ros2Aimdk_msgsMsgMcAction::new(),
    action_desc: "",
    status: Ros2Aimdk_msgsMsgMcActionStatus::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsMsgMcActionInfoCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgMcActionInfoCodec::new() -> Ros2Aimdk_msgsMsgMcActionInfoCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/McActionInfo",
    native_identity: None,
    codec_identity: "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Aimdk_msgsMsgMcActionInfoCodec::encode(
  _self : Ros2Aimdk_msgsMsgMcActionInfoCodec,
  value : Ros2Aimdk_msgsMsgMcActionInfo
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Aimdk_msgsMsgMcActionInfo(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgMcActionInfoCodec::decode(
  _self : Ros2Aimdk_msgsMsgMcActionInfoCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgMcActionInfo, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgMcActionInfo(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgMcActionInfo(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgMcActionInfo) -> Unit {
  let part0 = value.current_action
  write_Ros2Aimdk_msgsMsgMcAction(writer, part0)
  let part1 = value.action_desc
  writer.text(part1, 128)
  let part2 = value.status
  write_Ros2Aimdk_msgsMsgMcActionStatus(writer, part2)
}
fn read_Ros2Aimdk_msgsMsgMcActionInfo(reader : BoundedReader) -> Ros2Aimdk_msgsMsgMcActionInfo {
  let part0 = read_Ros2Aimdk_msgsMsgMcAction(reader)
  let part1 = reader.text(128)
  let part2 = read_Ros2Aimdk_msgsMsgMcActionStatus(reader)
  { current_action: part0, action_desc: part1, status: part2 }
}

pub(all) struct Ros2Aimdk_msgsMsgMcControlArea {
  mut value : Int
}
pub fn Ros2Aimdk_msgsMsgMcControlArea::new() -> Ros2Aimdk_msgsMsgMcControlArea {
  {
    value: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgMcControlAreaCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgMcControlAreaCodec::new() -> Ros2Aimdk_msgsMsgMcControlAreaCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/McControlArea",
    native_identity: None,
    codec_identity: "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Aimdk_msgsMsgMcControlAreaCodec::encode(
  _self : Ros2Aimdk_msgsMsgMcControlAreaCodec,
  value : Ros2Aimdk_msgsMsgMcControlArea
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Aimdk_msgsMsgMcControlArea(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgMcControlAreaCodec::decode(
  _self : Ros2Aimdk_msgsMsgMcControlAreaCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgMcControlArea, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgMcControlArea(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgMcControlArea(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgMcControlArea) -> Unit {
  let part0 = value.value
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Aimdk_msgsMsgMcControlArea(reader : BoundedReader) -> Ros2Aimdk_msgsMsgMcControlArea {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { value: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgMcInputAction {
  mut value : Int
}
pub fn Ros2Aimdk_msgsMsgMcInputAction::new() -> Ros2Aimdk_msgsMsgMcInputAction {
  {
    value: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgMcInputActionCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgMcInputActionCodec::new() -> Ros2Aimdk_msgsMsgMcInputActionCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/McInputAction",
    native_identity: None,
    codec_identity: "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Aimdk_msgsMsgMcInputActionCodec::encode(
  _self : Ros2Aimdk_msgsMsgMcInputActionCodec,
  value : Ros2Aimdk_msgsMsgMcInputAction
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Aimdk_msgsMsgMcInputAction(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgMcInputActionCodec::decode(
  _self : Ros2Aimdk_msgsMsgMcInputActionCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgMcInputAction, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgMcInputAction(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgMcInputAction(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgMcInputAction) -> Unit {
  let part0 = value.value
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Aimdk_msgsMsgMcInputAction(reader : BoundedReader) -> Ros2Aimdk_msgsMsgMcInputAction {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { value: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgMcInputSource {
  mut name : String
  mut priority : Int
  mut timeout : Int
}
pub fn Ros2Aimdk_msgsMsgMcInputSource::new() -> Ros2Aimdk_msgsMsgMcInputSource {
  {
    name: "",
    priority: 0,
    timeout: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgMcInputSourceCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgMcInputSourceCodec::new() -> Ros2Aimdk_msgsMsgMcInputSourceCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/McInputSource",
    native_identity: None,
    codec_identity: "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Aimdk_msgsMsgMcInputSourceCodec::encode(
  _self : Ros2Aimdk_msgsMsgMcInputSourceCodec,
  value : Ros2Aimdk_msgsMsgMcInputSource
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Aimdk_msgsMsgMcInputSource(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgMcInputSourceCodec::decode(
  _self : Ros2Aimdk_msgsMsgMcInputSourceCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgMcInputSource, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgMcInputSource(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgMcInputSource(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgMcInputSource) -> Unit {
  let part0 = value.name
  writer.text(part0, 128)
  let part1 = value.priority
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part2 = value.timeout
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Aimdk_msgsMsgMcInputSource(reader : BoundedReader) -> Ros2Aimdk_msgsMsgMcInputSource {
  let part0 = reader.text(128)
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { name: part0, priority: part1, timeout: part2 }
}

pub(all) struct Ros2Aimdk_msgsMsgMcLocomotionVelocity {
  mut header : Ros2Aimdk_msgsMsgMessageHeader
  mut source : String
  mut forward_velocity : Double
  mut lateral_velocity : Double
  mut angular_velocity : Double
}
pub fn Ros2Aimdk_msgsMsgMcLocomotionVelocity::new() -> Ros2Aimdk_msgsMsgMcLocomotionVelocity {
  {
    header: Ros2Aimdk_msgsMsgMessageHeader::new(),
    source: "",
    forward_velocity: 0.0,
    lateral_velocity: 0.0,
    angular_velocity: 0.0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec::new() -> Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/McLocomotionVelocity",
    native_identity: None,
    codec_identity: "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00",
    min_wire_bytes: 52, max_wire_bytes: 308 }
}
pub fn Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec::encode(
  _self : Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec,
  value : Ros2Aimdk_msgsMsgMcLocomotionVelocity
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 308, error: 0 }
  write_Ros2Aimdk_msgsMsgMcLocomotionVelocity(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 52 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec::decode(
  _self : Ros2Aimdk_msgsMsgMcLocomotionVelocityCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgMcLocomotionVelocity, Int] {
  if input.length() < 52 || input.length() > 308 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgMcLocomotionVelocity(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgMcLocomotionVelocity(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgMcLocomotionVelocity) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgMessageHeader(writer, part0)
  let part1 = value.source
  writer.text(part1, 128)
  let part2 = value.forward_velocity
  writer.float64(part2)
  let part3 = value.lateral_velocity
  writer.float64(part3)
  let part4 = value.angular_velocity
  writer.float64(part4)
}
fn read_Ros2Aimdk_msgsMsgMcLocomotionVelocity(reader : BoundedReader) -> Ros2Aimdk_msgsMsgMcLocomotionVelocity {
  let part0 = read_Ros2Aimdk_msgsMsgMessageHeader(reader)
  let part1 = reader.text(128)
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  { header: part0, source: part1, forward_velocity: part2, lateral_velocity: part3, angular_velocity: part4 }
}

pub(all) struct Ros2Aimdk_msgsMsgMcPresetMotion {
  mut value : Int
}
pub fn Ros2Aimdk_msgsMsgMcPresetMotion::new() -> Ros2Aimdk_msgsMsgMcPresetMotion {
  {
    value: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgMcPresetMotionCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgMcPresetMotionCodec::new() -> Ros2Aimdk_msgsMsgMcPresetMotionCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/McPresetMotion",
    native_identity: None,
    codec_identity: "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Aimdk_msgsMsgMcPresetMotionCodec::encode(
  _self : Ros2Aimdk_msgsMsgMcPresetMotionCodec,
  value : Ros2Aimdk_msgsMsgMcPresetMotion
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Aimdk_msgsMsgMcPresetMotion(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgMcPresetMotionCodec::decode(
  _self : Ros2Aimdk_msgsMsgMcPresetMotionCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgMcPresetMotion, Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgMcPresetMotion(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgMcPresetMotion(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgMcPresetMotion) -> Unit {
  let part0 = value.value
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Aimdk_msgsMsgMcPresetMotion(reader : BoundedReader) -> Ros2Aimdk_msgsMsgMcPresetMotion {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { value: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgTtsPriorityLevel {
  mut value : Int
}
pub fn Ros2Aimdk_msgsMsgTtsPriorityLevel::new() -> Ros2Aimdk_msgsMsgTtsPriorityLevel {
  {
    value: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgTtsPriorityLevelCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgTtsPriorityLevelCodec::new() -> Ros2Aimdk_msgsMsgTtsPriorityLevelCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/TtsPriorityLevel",
    native_identity: None,
    codec_identity: "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Aimdk_msgsMsgTtsPriorityLevelCodec::encode(
  _self : Ros2Aimdk_msgsMsgTtsPriorityLevelCodec,
  value : Ros2Aimdk_msgsMsgTtsPriorityLevel
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Aimdk_msgsMsgTtsPriorityLevel(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgTtsPriorityLevelCodec::decode(
  _self : Ros2Aimdk_msgsMsgTtsPriorityLevelCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgTtsPriorityLevel, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgTtsPriorityLevel(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgTtsPriorityLevel(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgTtsPriorityLevel) -> Unit {
  let part0 = value.value
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Aimdk_msgsMsgTtsPriorityLevel(reader : BoundedReader) -> Ros2Aimdk_msgsMsgTtsPriorityLevel {
  let part0 = reader.unsigned(1).to_int()
  { value: part0 }
}

pub(all) struct Ros2Aimdk_msgsMsgPlayMediaFileRequest {
  mut file_name : String
  mut sample_rate : UInt
  mut priority_level : Ros2Aimdk_msgsMsgTtsPriorityLevel
  mut priority_weight : UInt
  mut domain : String
  mut trace_id : String
  mut is_interrupted : Bool
}
pub fn Ros2Aimdk_msgsMsgPlayMediaFileRequest::new() -> Ros2Aimdk_msgsMsgPlayMediaFileRequest {
  {
    file_name: "",
    sample_rate: 0U,
    priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel::new(),
    priority_weight: 0U,
    domain: "",
    trace_id: "",
    is_interrupted: false,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec::new() -> Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/PlayMediaFileRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254",
    min_wire_bytes: 22, max_wire_bytes: 406 }
}
pub fn Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec::encode(
  _self : Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec,
  value : Ros2Aimdk_msgsMsgPlayMediaFileRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 406, error: 0 }
  write_Ros2Aimdk_msgsMsgPlayMediaFileRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 22 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec::decode(
  _self : Ros2Aimdk_msgsMsgPlayMediaFileRequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgPlayMediaFileRequest, Int] {
  if input.length() < 22 || input.length() > 406 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgPlayMediaFileRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgPlayMediaFileRequest(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgPlayMediaFileRequest) -> Unit {
  let part0 = value.file_name
  writer.text(part0, 128)
  let part1 = value.sample_rate
  writer.unsigned(part1.to_uint64(), 4)
  let part2 = value.priority_level
  write_Ros2Aimdk_msgsMsgTtsPriorityLevel(writer, part2)
  let part3 = value.priority_weight
  writer.unsigned(part3.to_uint64(), 4)
  let part4 = value.domain
  writer.text(part4, 128)
  let part5 = value.trace_id
  writer.text(part5, 128)
  let part6 = value.is_interrupted
  writer.unsigned(if part6 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Aimdk_msgsMsgPlayMediaFileRequest(reader : BoundedReader) -> Ros2Aimdk_msgsMsgPlayMediaFileRequest {
  let part0 = reader.text(128)
  let part1 = reader.unsigned(4).to_uint()
  let part2 = read_Ros2Aimdk_msgsMsgTtsPriorityLevel(reader)
  let part3 = reader.unsigned(4).to_uint()
  let part4 = reader.text(128)
  let part5 = reader.text(128)
  let part6 = reader.boolean()
  {
    file_name: part0,
    sample_rate: part1,
    priority_level: part2,
    priority_weight: part3,
    domain: part4,
    trace_id: part5,
    is_interrupted: part6
  }
}

pub(all) struct Ros2Aimdk_msgsMsgPlayTtsRequest {
  mut text : String
  mut priority_level : Ros2Aimdk_msgsMsgTtsPriorityLevel
  mut priority_weight : UInt
  mut domain : String
  mut trace_id : String
  mut is_interrupted : Bool
}
pub fn Ros2Aimdk_msgsMsgPlayTtsRequest::new() -> Ros2Aimdk_msgsMsgPlayTtsRequest {
  {
    text: "",
    priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel::new(),
    priority_weight: 0U,
    domain: "",
    trace_id: "",
    is_interrupted: false,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgPlayTtsRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgPlayTtsRequestCodec::new() -> Ros2Aimdk_msgsMsgPlayTtsRequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/PlayTtsRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd",
    min_wire_bytes: 18, max_wire_bytes: 402 }
}
pub fn Ros2Aimdk_msgsMsgPlayTtsRequestCodec::encode(
  _self : Ros2Aimdk_msgsMsgPlayTtsRequestCodec,
  value : Ros2Aimdk_msgsMsgPlayTtsRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 402, error: 0 }
  write_Ros2Aimdk_msgsMsgPlayTtsRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 18 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgPlayTtsRequestCodec::decode(
  _self : Ros2Aimdk_msgsMsgPlayTtsRequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgPlayTtsRequest, Int] {
  if input.length() < 18 || input.length() > 402 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgPlayTtsRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgPlayTtsRequest(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgPlayTtsRequest) -> Unit {
  let part0 = value.text
  writer.text(part0, 128)
  let part1 = value.priority_level
  write_Ros2Aimdk_msgsMsgTtsPriorityLevel(writer, part1)
  let part2 = value.priority_weight
  writer.unsigned(part2.to_uint64(), 4)
  let part3 = value.domain
  writer.text(part3, 128)
  let part4 = value.trace_id
  writer.text(part4, 128)
  let part5 = value.is_interrupted
  writer.unsigned(if part5 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Aimdk_msgsMsgPlayTtsRequest(reader : BoundedReader) -> Ros2Aimdk_msgsMsgPlayTtsRequest {
  let part0 = reader.text(128)
  let part1 = read_Ros2Aimdk_msgsMsgTtsPriorityLevel(reader)
  let part2 = reader.unsigned(4).to_uint()
  let part3 = reader.text(128)
  let part4 = reader.text(128)
  let part5 = reader.boolean()
  { text: part0, priority_level: part1, priority_weight: part2, domain: part3, trace_id: part4, is_interrupted: part5 }
}

pub(all) struct Ros2Aimdk_msgsMsgPlayTtsResponse {
  mut text : String
  mut priority_level : Ros2Aimdk_msgsMsgTtsPriorityLevel
  mut priority_weight : UInt
  mut domain : String
  mut trace_id : String
  mut is_success : Bool
  mut error_message : String
  mut estimated_duration : UInt
}
pub fn Ros2Aimdk_msgsMsgPlayTtsResponse::new() -> Ros2Aimdk_msgsMsgPlayTtsResponse {
  {
    text: "",
    priority_level: Ros2Aimdk_msgsMsgTtsPriorityLevel::new(),
    priority_weight: 0U,
    domain: "",
    trace_id: "",
    is_success: false,
    error_message: "",
    estimated_duration: 0U,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgPlayTtsResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgPlayTtsResponseCodec::new() -> Ros2Aimdk_msgsMsgPlayTtsResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/PlayTtsResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3",
    min_wire_bytes: 26, max_wire_bytes: 538 }
}
pub fn Ros2Aimdk_msgsMsgPlayTtsResponseCodec::encode(
  _self : Ros2Aimdk_msgsMsgPlayTtsResponseCodec,
  value : Ros2Aimdk_msgsMsgPlayTtsResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 538, error: 0 }
  write_Ros2Aimdk_msgsMsgPlayTtsResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 26 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgPlayTtsResponseCodec::decode(
  _self : Ros2Aimdk_msgsMsgPlayTtsResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgPlayTtsResponse, Int] {
  if input.length() < 26 || input.length() > 538 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgPlayTtsResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgPlayTtsResponse(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgPlayTtsResponse) -> Unit {
  let part0 = value.text
  writer.text(part0, 128)
  let part1 = value.priority_level
  write_Ros2Aimdk_msgsMsgTtsPriorityLevel(writer, part1)
  let part2 = value.priority_weight
  writer.unsigned(part2.to_uint64(), 4)
  let part3 = value.domain
  writer.text(part3, 128)
  let part4 = value.trace_id
  writer.text(part4, 128)
  let part5 = value.is_success
  writer.unsigned(if part5 { 1UL } else { 0UL }, 1)
  let part6 = value.error_message
  writer.text(part6, 128)
  let part7 = value.estimated_duration
  writer.unsigned(part7.to_uint64(), 4)
}
fn read_Ros2Aimdk_msgsMsgPlayTtsResponse(reader : BoundedReader) -> Ros2Aimdk_msgsMsgPlayTtsResponse {
  let part0 = reader.text(128)
  let part1 = read_Ros2Aimdk_msgsMsgTtsPriorityLevel(reader)
  let part2 = reader.unsigned(4).to_uint()
  let part3 = reader.text(128)
  let part4 = reader.text(128)
  let part5 = reader.boolean()
  let part6 = reader.text(128)
  let part7 = reader.unsigned(4).to_uint()
  {
    text: part0,
    priority_level: part1,
    priority_weight: part2,
    domain: part3,
    trace_id: part4,
    is_success: part5,
    error_message: part6,
    estimated_duration: part7
  }
}

pub(all) struct Ros2Aimdk_msgsMsgPmuState {
  mut pmu_software_version : String
  mut pmu_hardware_version : String
  mut pmu_protocol_version : String
  mut pmu_bool_status : UInt
  mut head_power_current : Double
  mut output_48v_current : Double
  mut rk3588_current : Double
  mut output_12v_current : Double
  mut bus_48v_current : Double
  mut orin_current : Double
  mut bus_48v_pmos_voltage : Double
  mut battery_voltage : Double
  mut fan_voltage : Double
  mut output_12v_voltage : Double
  mut output_48v_voltage : Double
  mut bus_48v_voltage : Double
  mut head_power_voltage : Double
  mut orin_voltage : Double
  mut rk3588_voltage : Double
  mut bms_manufacturer : String
  mut bms_serial_number : String
  mut bms_hardware_version : String
  mut bms_software_version : String
  mut bms_status_bits : UInt
  mut battery_balance_line_resistance : Int
  mut battery_pack_voltage : Double
  mut battery_current : Double
  mut battery_output_power : Double
  mut battery_temperature : Double
  mut battery_remaining_capacity : UInt
  mut battery_remaining_capacity_percentage : Int
  mut battery_cycle_count : Int
  mut battery_cycle_total_capacity : UInt
}
pub fn Ros2Aimdk_msgsMsgPmuState::new() -> Ros2Aimdk_msgsMsgPmuState {
  {
    pmu_software_version: "",
    pmu_hardware_version: "",
    pmu_protocol_version: "",
    pmu_bool_status: 0U,
    head_power_current: 0.0,
    output_48v_current: 0.0,
    rk3588_current: 0.0,
    output_12v_current: 0.0,
    bus_48v_current: 0.0,
    orin_current: 0.0,
    bus_48v_pmos_voltage: 0.0,
    battery_voltage: 0.0,
    fan_voltage: 0.0,
    output_12v_voltage: 0.0,
    output_48v_voltage: 0.0,
    bus_48v_voltage: 0.0,
    head_power_voltage: 0.0,
    orin_voltage: 0.0,
    rk3588_voltage: 0.0,
    bms_manufacturer: "",
    bms_serial_number: "",
    bms_hardware_version: "",
    bms_software_version: "",
    bms_status_bits: 0U,
    battery_balance_line_resistance: 0,
    battery_pack_voltage: 0.0,
    battery_current: 0.0,
    battery_output_power: 0.0,
    battery_temperature: 0.0,
    battery_remaining_capacity: 0U,
    battery_remaining_capacity_percentage: 0,
    battery_cycle_count: 0,
    battery_cycle_total_capacity: 0U,
  }
}
pub(all) struct Ros2Aimdk_msgsMsgPmuStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgPmuStateCodec::new() -> Ros2Aimdk_msgsMsgPmuStateCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/PmuState",
    native_identity: None,
    codec_identity: "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c",
    min_wire_bytes: 201, max_wire_bytes: 1097 }
}
pub fn Ros2Aimdk_msgsMsgPmuStateCodec::encode(
  _self : Ros2Aimdk_msgsMsgPmuStateCodec,
  value : Ros2Aimdk_msgsMsgPmuState
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1097, error: 0 }
  write_Ros2Aimdk_msgsMsgPmuState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 201 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgPmuStateCodec::decode(
  _self : Ros2Aimdk_msgsMsgPmuStateCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgPmuState, Int] {
  if input.length() < 201 || input.length() > 1097 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgPmuState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgPmuState(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgPmuState) -> Unit {
  let part0 = value.pmu_software_version
  writer.text(part0, 128)
  let part1 = value.pmu_hardware_version
  writer.text(part1, 128)
  let part2 = value.pmu_protocol_version
  writer.text(part2, 128)
  let part3 = value.pmu_bool_status
  writer.unsigned(part3.to_uint64(), 4)
  let part4 = value.head_power_current
  writer.float64(part4)
  let part5 = value.output_48v_current
  writer.float64(part5)
  let part6 = value.rk3588_current
  writer.float64(part6)
  let part7 = value.output_12v_current
  writer.float64(part7)
  let part8 = value.bus_48v_current
  writer.float64(part8)
  let part9 = value.orin_current
  writer.float64(part9)
  let part10 = value.bus_48v_pmos_voltage
  writer.float64(part10)
  let part11 = value.battery_voltage
  writer.float64(part11)
  let part12 = value.fan_voltage
  writer.float64(part12)
  let part13 = value.output_12v_voltage
  writer.float64(part13)
  let part14 = value.output_48v_voltage
  writer.float64(part14)
  let part15 = value.bus_48v_voltage
  writer.float64(part15)
  let part16 = value.head_power_voltage
  writer.float64(part16)
  let part17 = value.orin_voltage
  writer.float64(part17)
  let part18 = value.rk3588_voltage
  writer.float64(part18)
  let part19 = value.bms_manufacturer
  writer.text(part19, 128)
  let part20 = value.bms_serial_number
  writer.text(part20, 128)
  let part21 = value.bms_hardware_version
  writer.text(part21, 128)
  let part22 = value.bms_software_version
  writer.text(part22, 128)
  let part23 = value.bms_status_bits
  writer.unsigned(part23.to_uint64(), 4)
  let part24 = value.battery_balance_line_resistance
  if part24 < 0 || part24 > 65535 { writer.error = 22 }
  writer.unsigned(part24.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part25 = value.battery_pack_voltage
  writer.float64(part25)
  let part26 = value.battery_current
  writer.float64(part26)
  let part27 = value.battery_output_power
  writer.float64(part27)
  let part28 = value.battery_temperature
  writer.float64(part28)
  let part29 = value.battery_remaining_capacity
  writer.unsigned(part29.to_uint64(), 4)
  let part30 = value.battery_remaining_capacity_percentage
  if part30 < 0 || part30 > 255 { writer.error = 22 }
  writer.unsigned(part30.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part31 = value.battery_cycle_count
  if part31 < 0 || part31 > 65535 { writer.error = 22 }
  writer.unsigned(part31.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part32 = value.battery_cycle_total_capacity
  writer.unsigned(part32.to_uint64(), 4)
}
fn read_Ros2Aimdk_msgsMsgPmuState(reader : BoundedReader) -> Ros2Aimdk_msgsMsgPmuState {
  let part0 = reader.text(128)
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  let part3 = reader.unsigned(4).to_uint()
  let part4 = reader.float64()
  let part5 = reader.float64()
  let part6 = reader.float64()
  let part7 = reader.float64()
  let part8 = reader.float64()
  let part9 = reader.float64()
  let part10 = reader.float64()
  let part11 = reader.float64()
  let part12 = reader.float64()
  let part13 = reader.float64()
  let part14 = reader.float64()
  let part15 = reader.float64()
  let part16 = reader.float64()
  let part17 = reader.float64()
  let part18 = reader.float64()
  let part19 = reader.text(128)
  let part20 = reader.text(128)
  let part21 = reader.text(128)
  let part22 = reader.text(128)
  let part23 = reader.unsigned(4).to_uint()
  let part24 = reader.unsigned(2).to_int()
  let part25 = reader.float64()
  let part26 = reader.float64()
  let part27 = reader.float64()
  let part28 = reader.float64()
  let part29 = reader.unsigned(4).to_uint()
  let part30 = reader.unsigned(1).to_int()
  let part31 = reader.unsigned(2).to_int()
  let part32 = reader.unsigned(4).to_uint()
  {
    pmu_software_version: part0,
    pmu_hardware_version: part1,
    pmu_protocol_version: part2,
    pmu_bool_status: part3,
    head_power_current: part4,
    output_48v_current: part5,
    rk3588_current: part6,
    output_12v_current: part7,
    bus_48v_current: part8,
    orin_current: part9,
    bus_48v_pmos_voltage: part10,
    battery_voltage: part11,
    fan_voltage: part12,
    output_12v_voltage: part13,
    output_48v_voltage: part14,
    bus_48v_voltage: part15,
    head_power_voltage: part16,
    orin_voltage: part17,
    rk3588_voltage: part18,
    bms_manufacturer: part19,
    bms_serial_number: part20,
    bms_hardware_version: part21,
    bms_software_version: part22,
    bms_status_bits: part23,
    battery_balance_line_resistance: part24,
    battery_pack_voltage: part25,
    battery_current: part26,
    battery_output_power: part27,
    battery_temperature: part28,
    battery_remaining_capacity: part29,
    battery_remaining_capacity_percentage: part30,
    battery_cycle_count: part31,
    battery_cycle_total_capacity: part32
  }
}

pub(all) struct Ros2Aimdk_msgsMsgProcessedAudioOutput {
  mut header : Ros2Aimdk_msgsMsgMessageHeader
  mut stream_id : UInt
  mut audio_vad_state : Ros2Aimdk_msgsMsgAudioVadStateType
  mut audio_data : Array[Int]
}
pub fn Ros2Aimdk_msgsMsgProcessedAudioOutput::new() -> Ros2Aimdk_msgsMsgProcessedAudioOutput {
  {
    header: Ros2Aimdk_msgsMsgMessageHeader::new(),
    stream_id: 0U,
    audio_vad_state: Ros2Aimdk_msgsMsgAudioVadStateType::new(),
    audio_data: [],
  }
}
pub(all) struct Ros2Aimdk_msgsMsgProcessedAudioOutputCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgProcessedAudioOutputCodec::new() -> Ros2Aimdk_msgsMsgProcessedAudioOutputCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/ProcessedAudioOutput",
    native_identity: None,
    codec_identity: "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30",
    min_wire_bytes: 33, max_wire_bytes: 417 }
}
pub fn Ros2Aimdk_msgsMsgProcessedAudioOutputCodec::encode(
  _self : Ros2Aimdk_msgsMsgProcessedAudioOutputCodec,
  value : Ros2Aimdk_msgsMsgProcessedAudioOutput
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 417, error: 0 }
  write_Ros2Aimdk_msgsMsgProcessedAudioOutput(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 33 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgProcessedAudioOutputCodec::decode(
  _self : Ros2Aimdk_msgsMsgProcessedAudioOutputCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgProcessedAudioOutput, Int] {
  if input.length() < 33 || input.length() > 417 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgProcessedAudioOutput(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgProcessedAudioOutput(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgProcessedAudioOutput) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgMessageHeader(writer, part0)
  let part1 = value.stream_id
  writer.unsigned(part1.to_uint64(), 4)
  let part2 = value.audio_vad_state
  write_Ros2Aimdk_msgsMsgAudioVadStateType(writer, part2)
  let part3 = value.audio_data
  let count3 = part3.length()
  if count3 > 256 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
}
fn read_Ros2Aimdk_msgsMsgProcessedAudioOutput(reader : BoundedReader) -> Ros2Aimdk_msgsMsgProcessedAudioOutput {
  let part0 = read_Ros2Aimdk_msgsMsgMessageHeader(reader)
  let part1 = reader.unsigned(4).to_uint()
  let part2 = read_Ros2Aimdk_msgsMsgAudioVadStateType(reader)
  let part3 : Array[Int] = []
  let count3 = reader.count(256, 1)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.unsigned(1).to_int())
  }
  { header: part0, stream_id: part1, audio_vad_state: part2, audio_data: part3 }
}

pub(all) struct Ros2Aimdk_msgsMsgTouchState {
  mut header : Ros2Aimdk_msgsMsgMessageHeader
  mut event_type : Int
  mut data : Array[UInt]
  mut threshold : Array[UInt]
  mut is_touched : Array[Bool]
}
pub fn Ros2Aimdk_msgsMsgTouchState::new() -> Ros2Aimdk_msgsMsgTouchState {
  {
    header: Ros2Aimdk_msgsMsgMessageHeader::new(),
    event_type: 0,
    data: Array::makei(8, fn(_) { 0U }),
    threshold: Array::makei(8, fn(_) { 0U }),
    is_touched: Array::makei(8, fn(_) { false }),
  }
}
pub(all) struct Ros2Aimdk_msgsMsgTouchStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsMsgTouchStateCodec::new() -> Ros2Aimdk_msgsMsgTouchStateCodec {
  { ros_version: 2, native_type: "aimdk_msgs/msg/TouchState",
    native_identity: None,
    codec_identity: "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564",
    min_wire_bytes: 97, max_wire_bytes: 225 }
}
pub fn Ros2Aimdk_msgsMsgTouchStateCodec::encode(
  _self : Ros2Aimdk_msgsMsgTouchStateCodec,
  value : Ros2Aimdk_msgsMsgTouchState
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 225, error: 0 }
  write_Ros2Aimdk_msgsMsgTouchState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 97 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsMsgTouchStateCodec::decode(
  _self : Ros2Aimdk_msgsMsgTouchStateCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsMsgTouchState, Int] {
  if input.length() < 97 || input.length() > 225 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsMsgTouchState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsMsgTouchState(writer : BoundedWriter, value : Ros2Aimdk_msgsMsgTouchState) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgMessageHeader(writer, part0)
  let part1 = value.event_type
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.data
  let count2 = part2.length()
  if count2 != 8 { writer.error = 22; return () }
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.unsigned(element.to_uint64(), 4)
  }
  let part3 = value.threshold
  let count3 = part3.length()
  if count3 != 8 { writer.error = 22; return () }
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.unsigned(element.to_uint64(), 4)
  }
  let part4 = value.is_touched
  let count4 = part4.length()
  if count4 != 8 { writer.error = 22; return () }
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.unsigned(if element { 1UL } else { 0UL }, 1)
  }
}
fn read_Ros2Aimdk_msgsMsgTouchState(reader : BoundedReader) -> Ros2Aimdk_msgsMsgTouchState {
  let part0 = read_Ros2Aimdk_msgsMsgMessageHeader(reader)
  let part1 = reader.unsigned(1).to_int()
  let part2 : Array[UInt] = []
  let count2 = 8
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.unsigned(4).to_uint())
  }
  let part3 : Array[UInt] = []
  let count3 = 8
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.unsigned(4).to_uint())
  }
  let part4 : Array[Bool] = []
  let count4 = 8
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.boolean())
  }
  { header: part0, event_type: part1, data: part2, threshold: part3, is_touched: part4 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetAllJointState_Request {
  mut request : Ros2Aimdk_msgsMsgCommonRequest
}
pub fn Ros2Aimdk_msgsSrvGetAllJointState_Request::new() -> Ros2Aimdk_msgsSrvGetAllJointState_Request {
  {
    request: Ros2Aimdk_msgsMsgCommonRequest::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec::new() -> Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetAllJointState_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec,
  value : Ros2Aimdk_msgsSrvGetAllJointState_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Aimdk_msgsSrvGetAllJointState_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetAllJointState_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetAllJointState_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetAllJointState_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetAllJointState_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetAllJointState_Request) -> Unit {
  let part0 = value.request
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
}
fn read_Ros2Aimdk_msgsSrvGetAllJointState_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetAllJointState_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  { request: part0 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetAllJointState_Response {
  mut reponse : Ros2Aimdk_msgsMsgCommonResponse
  mut head_joints : Array[Ros2Aimdk_msgsMsgJointState]
  mut arm_joints : Array[Ros2Aimdk_msgsMsgJointState]
  mut waist_joints : Array[Ros2Aimdk_msgsMsgJointState]
  mut leg_joints : Array[Ros2Aimdk_msgsMsgJointState]
}
pub fn Ros2Aimdk_msgsSrvGetAllJointState_Response::new() -> Ros2Aimdk_msgsSrvGetAllJointState_Response {
  {
    reponse: Ros2Aimdk_msgsMsgCommonResponse::new(),
    head_joints: [],
    arm_joints: [],
    waist_joints: [],
    leg_joints: [],
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec::new() -> Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetAllJointState_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793",
    min_wire_bytes: 40, max_wire_bytes: 2712 }
}
pub fn Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec,
  value : Ros2Aimdk_msgsSrvGetAllJointState_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2712, error: 0 }
  write_Ros2Aimdk_msgsSrvGetAllJointState_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetAllJointState_Response, Int] {
  if input.length() < 40 || input.length() > 2712 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetAllJointState_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetAllJointState_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetAllJointState_Response) -> Unit {
  let part0 = value.reponse
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
  let part1 = value.head_joints
  let count1 = part1.length()
  if count1 > 4 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Aimdk_msgsMsgJointState(writer, element)
  }
  let part2 = value.arm_joints
  let count2 = part2.length()
  if count2 > 4 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Aimdk_msgsMsgJointState(writer, element)
  }
  let part3 = value.waist_joints
  let count3 = part3.length()
  if count3 > 4 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    write_Ros2Aimdk_msgsMsgJointState(writer, element)
  }
  let part4 = value.leg_joints
  let count4 = part4.length()
  if count4 > 4 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    write_Ros2Aimdk_msgsMsgJointState(writer, element)
  }
}
fn read_Ros2Aimdk_msgsSrvGetAllJointState_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetAllJointState_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  let part1 : Array[Ros2Aimdk_msgsMsgJointState] = []
  let count1 = reader.count(4, 31)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Aimdk_msgsMsgJointState(reader))
  }
  let part2 : Array[Ros2Aimdk_msgsMsgJointState] = []
  let count2 = reader.count(4, 31)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Aimdk_msgsMsgJointState(reader))
  }
  let part3 : Array[Ros2Aimdk_msgsMsgJointState] = []
  let count3 = reader.count(4, 31)
  for index = 0; index < count3; index = index + 1 {
    part3.push(read_Ros2Aimdk_msgsMsgJointState(reader))
  }
  let part4 : Array[Ros2Aimdk_msgsMsgJointState] = []
  let count4 = reader.count(4, 31)
  for index = 0; index < count4; index = index + 1 {
    part4.push(read_Ros2Aimdk_msgsMsgJointState(reader))
  }
  { reponse: part0, head_joints: part1, arm_joints: part2, waist_joints: part3, leg_joints: part4 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetCurrentInputSource_Request {
  mut request : Ros2Aimdk_msgsMsgCommonRequest
}
pub fn Ros2Aimdk_msgsSrvGetCurrentInputSource_Request::new() -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Request {
  {
    request: Ros2Aimdk_msgsMsgCommonRequest::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec::new(
  
) -> Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetCurrentInputSource_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec,
  value : Ros2Aimdk_msgsSrvGetCurrentInputSource_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetCurrentInputSource_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetCurrentInputSource_Request) -> Unit {
  let part0 = value.request
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
}
fn read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  { request: part0 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
  mut response : Ros2Aimdk_msgsMsgCommonTaskResponse
  mut input_source : Ros2Aimdk_msgsMsgMcInputSource
}
pub fn Ros2Aimdk_msgsSrvGetCurrentInputSource_Response::new() -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
  {
    response: Ros2Aimdk_msgsMsgCommonTaskResponse::new(),
    input_source: Ros2Aimdk_msgsMsgMcInputSource::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec::new(
  
) -> Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetCurrentInputSource_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e",
    min_wire_bytes: 40, max_wire_bytes: 168 }
}
pub fn Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec,
  value : Ros2Aimdk_msgsSrvGetCurrentInputSource_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 168, error: 0 }
  write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetCurrentInputSource_Response, Int] {
  if input.length() < 40 || input.length() > 168 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetCurrentInputSource_Response) -> Unit {
  let part0 = value.response
  write_Ros2Aimdk_msgsMsgCommonTaskResponse(writer, part0)
  let part1 = value.input_source
  write_Ros2Aimdk_msgsMsgMcInputSource(writer, part1)
}
fn read_Ros2Aimdk_msgsSrvGetCurrentInputSource_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetCurrentInputSource_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonTaskResponse(reader)
  let part1 = read_Ros2Aimdk_msgsMsgMcInputSource(reader)
  { response: part0, input_source: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetHandType_Request {
  mut request : Ros2Aimdk_msgsMsgCommonRequest
}
pub fn Ros2Aimdk_msgsSrvGetHandType_Request::new() -> Ros2Aimdk_msgsSrvGetHandType_Request {
  {
    request: Ros2Aimdk_msgsMsgCommonRequest::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetHandType_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetHandType_RequestCodec::new() -> Ros2Aimdk_msgsSrvGetHandType_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetHandType_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Aimdk_msgsSrvGetHandType_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetHandType_RequestCodec,
  value : Ros2Aimdk_msgsSrvGetHandType_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Aimdk_msgsSrvGetHandType_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetHandType_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetHandType_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetHandType_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetHandType_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetHandType_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetHandType_Request) -> Unit {
  let part0 = value.request
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
}
fn read_Ros2Aimdk_msgsSrvGetHandType_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetHandType_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  { request: part0 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetHandType_Response {
  mut reponse : Ros2Aimdk_msgsMsgCommonResponse
  mut left_hands_type : Ros2Aimdk_msgsMsgHandType
  mut right_hands_type : Ros2Aimdk_msgsMsgHandType
}
pub fn Ros2Aimdk_msgsSrvGetHandType_Response::new() -> Ros2Aimdk_msgsSrvGetHandType_Response {
  {
    reponse: Ros2Aimdk_msgsMsgCommonResponse::new(),
    left_hands_type: Ros2Aimdk_msgsMsgHandType::new(),
    right_hands_type: Ros2Aimdk_msgsMsgHandType::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetHandType_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetHandType_ResponseCodec::new() -> Ros2Aimdk_msgsSrvGetHandType_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetHandType_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c",
    min_wire_bytes: 26, max_wire_bytes: 154 }
}
pub fn Ros2Aimdk_msgsSrvGetHandType_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetHandType_ResponseCodec,
  value : Ros2Aimdk_msgsSrvGetHandType_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 154, error: 0 }
  write_Ros2Aimdk_msgsSrvGetHandType_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 26 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetHandType_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetHandType_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetHandType_Response, Int] {
  if input.length() < 26 || input.length() > 154 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetHandType_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetHandType_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetHandType_Response) -> Unit {
  let part0 = value.reponse
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
  let part1 = value.left_hands_type
  write_Ros2Aimdk_msgsMsgHandType(writer, part1)
  let part2 = value.right_hands_type
  write_Ros2Aimdk_msgsMsgHandType(writer, part2)
}
fn read_Ros2Aimdk_msgsSrvGetHandType_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetHandType_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  let part1 = read_Ros2Aimdk_msgsMsgHandType(reader)
  let part2 = read_Ros2Aimdk_msgsMsgHandType(reader)
  { reponse: part0, left_hands_type: part1, right_hands_type: part2 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetMcAction_Request {
  mut request : Ros2Aimdk_msgsMsgCommonRequest
}
pub fn Ros2Aimdk_msgsSrvGetMcAction_Request::new() -> Ros2Aimdk_msgsSrvGetMcAction_Request {
  {
    request: Ros2Aimdk_msgsMsgCommonRequest::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetMcAction_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetMcAction_RequestCodec::new() -> Ros2Aimdk_msgsSrvGetMcAction_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetMcAction_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Aimdk_msgsSrvGetMcAction_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetMcAction_RequestCodec,
  value : Ros2Aimdk_msgsSrvGetMcAction_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Aimdk_msgsSrvGetMcAction_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetMcAction_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetMcAction_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetMcAction_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetMcAction_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetMcAction_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetMcAction_Request) -> Unit {
  let part0 = value.request
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
}
fn read_Ros2Aimdk_msgsSrvGetMcAction_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetMcAction_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  { request: part0 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetMcAction_Response {
  mut header : Ros2Aimdk_msgsMsgResponseHeader
  mut info : Ros2Aimdk_msgsMsgMcActionInfo
}
pub fn Ros2Aimdk_msgsSrvGetMcAction_Response::new() -> Ros2Aimdk_msgsSrvGetMcAction_Response {
  {
    header: Ros2Aimdk_msgsMsgResponseHeader::new(),
    info: Ros2Aimdk_msgsMsgMcActionInfo::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec::new() -> Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetMcAction_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f",
    min_wire_bytes: 28, max_wire_bytes: 156 }
}
pub fn Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec,
  value : Ros2Aimdk_msgsSrvGetMcAction_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 156, error: 0 }
  write_Ros2Aimdk_msgsSrvGetMcAction_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetMcAction_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetMcAction_Response, Int] {
  if input.length() < 28 || input.length() > 156 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetMcAction_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetMcAction_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetMcAction_Response) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgResponseHeader(writer, part0)
  let part1 = value.info
  write_Ros2Aimdk_msgsMsgMcActionInfo(writer, part1)
}
fn read_Ros2Aimdk_msgsSrvGetMcAction_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetMcAction_Response {
  let part0 = read_Ros2Aimdk_msgsMsgResponseHeader(reader)
  let part1 = read_Ros2Aimdk_msgsMsgMcActionInfo(reader)
  { header: part0, info: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetMute_Request {
  mut request : Ros2Aimdk_msgsMsgCommonRequest
}
pub fn Ros2Aimdk_msgsSrvGetMute_Request::new() -> Ros2Aimdk_msgsSrvGetMute_Request {
  {
    request: Ros2Aimdk_msgsMsgCommonRequest::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetMute_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetMute_RequestCodec::new() -> Ros2Aimdk_msgsSrvGetMute_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetMute_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Aimdk_msgsSrvGetMute_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetMute_RequestCodec,
  value : Ros2Aimdk_msgsSrvGetMute_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Aimdk_msgsSrvGetMute_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetMute_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetMute_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetMute_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetMute_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetMute_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetMute_Request) -> Unit {
  let part0 = value.request
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
}
fn read_Ros2Aimdk_msgsSrvGetMute_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetMute_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  { request: part0 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetMute_Response {
  mut reponse : Ros2Aimdk_msgsMsgCommonResponse
  mut is_mute : Bool
}
pub fn Ros2Aimdk_msgsSrvGetMute_Response::new() -> Ros2Aimdk_msgsSrvGetMute_Response {
  {
    reponse: Ros2Aimdk_msgsMsgCommonResponse::new(),
    is_mute: false,
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetMute_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetMute_ResponseCodec::new() -> Ros2Aimdk_msgsSrvGetMute_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetMute_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42",
    min_wire_bytes: 25, max_wire_bytes: 153 }
}
pub fn Ros2Aimdk_msgsSrvGetMute_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetMute_ResponseCodec,
  value : Ros2Aimdk_msgsSrvGetMute_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 153, error: 0 }
  write_Ros2Aimdk_msgsSrvGetMute_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetMute_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetMute_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetMute_Response, Int] {
  if input.length() < 25 || input.length() > 153 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetMute_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetMute_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetMute_Response) -> Unit {
  let part0 = value.reponse
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
  let part1 = value.is_mute
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Aimdk_msgsSrvGetMute_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetMute_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  let part1 = reader.boolean()
  { reponse: part0, is_mute: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetVolume_Request {
  mut request : Ros2Aimdk_msgsMsgCommonRequest
}
pub fn Ros2Aimdk_msgsSrvGetVolume_Request::new() -> Ros2Aimdk_msgsSrvGetVolume_Request {
  {
    request: Ros2Aimdk_msgsMsgCommonRequest::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetVolume_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetVolume_RequestCodec::new() -> Ros2Aimdk_msgsSrvGetVolume_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetVolume_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Aimdk_msgsSrvGetVolume_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetVolume_RequestCodec,
  value : Ros2Aimdk_msgsSrvGetVolume_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Aimdk_msgsSrvGetVolume_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetVolume_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetVolume_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetVolume_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetVolume_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetVolume_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetVolume_Request) -> Unit {
  let part0 = value.request
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
}
fn read_Ros2Aimdk_msgsSrvGetVolume_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetVolume_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  { request: part0 }
}

pub(all) struct Ros2Aimdk_msgsSrvGetVolume_Response {
  mut reponse : Ros2Aimdk_msgsMsgCommonResponse
  mut audio_volume : UInt
}
pub fn Ros2Aimdk_msgsSrvGetVolume_Response::new() -> Ros2Aimdk_msgsSrvGetVolume_Response {
  {
    reponse: Ros2Aimdk_msgsMsgCommonResponse::new(),
    audio_volume: 0U,
  }
}
pub(all) struct Ros2Aimdk_msgsSrvGetVolume_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvGetVolume_ResponseCodec::new() -> Ros2Aimdk_msgsSrvGetVolume_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/GetVolume_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266",
    min_wire_bytes: 28, max_wire_bytes: 156 }
}
pub fn Ros2Aimdk_msgsSrvGetVolume_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvGetVolume_ResponseCodec,
  value : Ros2Aimdk_msgsSrvGetVolume_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 156, error: 0 }
  write_Ros2Aimdk_msgsSrvGetVolume_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvGetVolume_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvGetVolume_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvGetVolume_Response, Int] {
  if input.length() < 28 || input.length() > 156 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvGetVolume_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvGetVolume_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvGetVolume_Response) -> Unit {
  let part0 = value.reponse
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
  let part1 = value.audio_volume
  writer.unsigned(part1.to_uint64(), 4)
}
fn read_Ros2Aimdk_msgsSrvGetVolume_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvGetVolume_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  let part1 = reader.unsigned(4).to_uint()
  { reponse: part0, audio_volume: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvLedStripCommand_Request {
  mut request : Ros2Aimdk_msgsMsgCommonRequest
  mut led_strip_mode : Int
  mut r : Int
  mut g : Int
  mut b : Int
}
pub fn Ros2Aimdk_msgsSrvLedStripCommand_Request::new() -> Ros2Aimdk_msgsSrvLedStripCommand_Request {
  {
    request: Ros2Aimdk_msgsMsgCommonRequest::new(),
    led_strip_mode: 0,
    r: 0,
    g: 0,
    b: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec::new() -> Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/LedStripCommand_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec,
  value : Ros2Aimdk_msgsSrvLedStripCommand_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros2Aimdk_msgsSrvLedStripCommand_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvLedStripCommand_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvLedStripCommand_Request, Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvLedStripCommand_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvLedStripCommand_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvLedStripCommand_Request) -> Unit {
  let part0 = value.request
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
  let part1 = value.led_strip_mode
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.r
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part3 = value.g
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part4 = value.b
  if part4 < 0 || part4 > 255 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Aimdk_msgsSrvLedStripCommand_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvLedStripCommand_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  let part1 = reader.unsigned(1).to_int()
  let part2 = reader.unsigned(1).to_int()
  let part3 = reader.unsigned(1).to_int()
  let part4 = reader.unsigned(1).to_int()
  { request: part0, led_strip_mode: part1, r: part2, g: part3, b: part4 }
}

pub(all) struct Ros2Aimdk_msgsSrvLedStripCommand_Response {
  mut header : Ros2Aimdk_msgsMsgResponseHeader
  mut status_code : Int
}
pub fn Ros2Aimdk_msgsSrvLedStripCommand_Response::new() -> Ros2Aimdk_msgsSrvLedStripCommand_Response {
  {
    header: Ros2Aimdk_msgsMsgResponseHeader::new(),
    status_code: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec::new() -> Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/LedStripCommand_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9",
    min_wire_bytes: 18, max_wire_bytes: 18 }
}
pub fn Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec,
  value : Ros2Aimdk_msgsSrvLedStripCommand_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 18, error: 0 }
  write_Ros2Aimdk_msgsSrvLedStripCommand_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 18 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvLedStripCommand_Response, Int] {
  if input.length() < 18 || input.length() > 18 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvLedStripCommand_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvLedStripCommand_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvLedStripCommand_Response) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgResponseHeader(writer, part0)
  let part1 = value.status_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Aimdk_msgsSrvLedStripCommand_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvLedStripCommand_Response {
  let part0 = read_Ros2Aimdk_msgsMsgResponseHeader(reader)
  let part1 = reader.unsigned(2).to_int()
  { header: part0, status_code: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvPlayEmoji_Request {
  mut header : Ros2Aimdk_msgsMsgCommonRequest
  mut emotion_id : Int
  mut mode : Int
  mut priority : Int
}
pub fn Ros2Aimdk_msgsSrvPlayEmoji_Request::new() -> Ros2Aimdk_msgsSrvPlayEmoji_Request {
  {
    header: Ros2Aimdk_msgsMsgCommonRequest::new(),
    emotion_id: 0,
    mode: 0,
    priority: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec::new() -> Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/PlayEmoji_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43",
    min_wire_bytes: 14, max_wire_bytes: 14 }
}
pub fn Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec,
  value : Ros2Aimdk_msgsSrvPlayEmoji_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 14, error: 0 }
  write_Ros2Aimdk_msgsSrvPlayEmoji_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 14 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvPlayEmoji_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvPlayEmoji_Request, Int] {
  if input.length() < 14 || input.length() > 14 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvPlayEmoji_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvPlayEmoji_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvPlayEmoji_Request) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
  let part1 = value.emotion_id
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.mode
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part3 = value.priority
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Aimdk_msgsSrvPlayEmoji_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvPlayEmoji_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  let part1 = reader.unsigned(1).to_int()
  let part2 = reader.unsigned(1).to_int()
  let part3 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { header: part0, emotion_id: part1, mode: part2, priority: part3 }
}

pub(all) struct Ros2Aimdk_msgsSrvPlayEmoji_Response {
  mut header : Ros2Aimdk_msgsMsgCommonResponse
  mut success : Bool
  mut message : String
}
pub fn Ros2Aimdk_msgsSrvPlayEmoji_Response::new() -> Ros2Aimdk_msgsSrvPlayEmoji_Response {
  {
    header: Ros2Aimdk_msgsMsgCommonResponse::new(),
    success: false,
    message: "",
  }
}
pub(all) struct Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec::new() -> Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/PlayEmoji_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9",
    min_wire_bytes: 29, max_wire_bytes: 285 }
}
pub fn Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec,
  value : Ros2Aimdk_msgsSrvPlayEmoji_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 285, error: 0 }
  write_Ros2Aimdk_msgsSrvPlayEmoji_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 29 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvPlayEmoji_Response, Int] {
  if input.length() < 29 || input.length() > 285 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvPlayEmoji_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvPlayEmoji_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvPlayEmoji_Response) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
  let part1 = value.success
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.message
  writer.text(part2, 128)
}
fn read_Ros2Aimdk_msgsSrvPlayEmoji_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvPlayEmoji_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  let part1 = reader.boolean()
  let part2 = reader.text(128)
  { header: part0, success: part1, message: part2 }
}

pub(all) struct Ros2Aimdk_msgsSrvPlayMediaFile_Request {
  mut header : Ros2Aimdk_msgsMsgCommonRequest
  mut media_file_req : Ros2Aimdk_msgsMsgPlayMediaFileRequest
}
pub fn Ros2Aimdk_msgsSrvPlayMediaFile_Request::new() -> Ros2Aimdk_msgsSrvPlayMediaFile_Request {
  {
    header: Ros2Aimdk_msgsMsgCommonRequest::new(),
    media_file_req: Ros2Aimdk_msgsMsgPlayMediaFileRequest::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec::new() -> Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/PlayMediaFile_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c",
    min_wire_bytes: 30, max_wire_bytes: 414 }
}
pub fn Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec,
  value : Ros2Aimdk_msgsSrvPlayMediaFile_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 414, error: 0 }
  write_Ros2Aimdk_msgsSrvPlayMediaFile_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 30 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvPlayMediaFile_Request, Int] {
  if input.length() < 30 || input.length() > 414 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvPlayMediaFile_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvPlayMediaFile_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvPlayMediaFile_Request) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
  let part1 = value.media_file_req
  write_Ros2Aimdk_msgsMsgPlayMediaFileRequest(writer, part1)
}
fn read_Ros2Aimdk_msgsSrvPlayMediaFile_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvPlayMediaFile_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  let part1 = read_Ros2Aimdk_msgsMsgPlayMediaFileRequest(reader)
  { header: part0, media_file_req: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvPlayMediaFile_Response {
  mut header : Ros2Aimdk_msgsMsgCommonResponse
  mut tts_resp : Ros2Aimdk_msgsMsgPlayTtsResponse
}
pub fn Ros2Aimdk_msgsSrvPlayMediaFile_Response::new() -> Ros2Aimdk_msgsSrvPlayMediaFile_Response {
  {
    header: Ros2Aimdk_msgsMsgCommonResponse::new(),
    tts_resp: Ros2Aimdk_msgsMsgPlayTtsResponse::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec::new() -> Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/PlayMediaFile_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099",
    min_wire_bytes: 50, max_wire_bytes: 690 }
}
pub fn Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec,
  value : Ros2Aimdk_msgsSrvPlayMediaFile_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 690, error: 0 }
  write_Ros2Aimdk_msgsSrvPlayMediaFile_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 50 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvPlayMediaFile_Response, Int] {
  if input.length() < 50 || input.length() > 690 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvPlayMediaFile_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvPlayMediaFile_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvPlayMediaFile_Response) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
  let part1 = value.tts_resp
  write_Ros2Aimdk_msgsMsgPlayTtsResponse(writer, part1)
}
fn read_Ros2Aimdk_msgsSrvPlayMediaFile_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvPlayMediaFile_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  let part1 = read_Ros2Aimdk_msgsMsgPlayTtsResponse(reader)
  { header: part0, tts_resp: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvPlayTts_Request {
  mut header : Ros2Aimdk_msgsMsgCommonRequest
  mut tts_req : Ros2Aimdk_msgsMsgPlayTtsRequest
}
pub fn Ros2Aimdk_msgsSrvPlayTts_Request::new() -> Ros2Aimdk_msgsSrvPlayTts_Request {
  {
    header: Ros2Aimdk_msgsMsgCommonRequest::new(),
    tts_req: Ros2Aimdk_msgsMsgPlayTtsRequest::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvPlayTts_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvPlayTts_RequestCodec::new() -> Ros2Aimdk_msgsSrvPlayTts_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/PlayTts_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7",
    min_wire_bytes: 26, max_wire_bytes: 410 }
}
pub fn Ros2Aimdk_msgsSrvPlayTts_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvPlayTts_RequestCodec,
  value : Ros2Aimdk_msgsSrvPlayTts_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 410, error: 0 }
  write_Ros2Aimdk_msgsSrvPlayTts_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 26 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvPlayTts_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvPlayTts_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvPlayTts_Request, Int] {
  if input.length() < 26 || input.length() > 410 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvPlayTts_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvPlayTts_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvPlayTts_Request) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
  let part1 = value.tts_req
  write_Ros2Aimdk_msgsMsgPlayTtsRequest(writer, part1)
}
fn read_Ros2Aimdk_msgsSrvPlayTts_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvPlayTts_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  let part1 = read_Ros2Aimdk_msgsMsgPlayTtsRequest(reader)
  { header: part0, tts_req: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvPlayTts_Response {
  mut header : Ros2Aimdk_msgsMsgCommonResponse
  mut tts_resp : Ros2Aimdk_msgsMsgPlayTtsResponse
}
pub fn Ros2Aimdk_msgsSrvPlayTts_Response::new() -> Ros2Aimdk_msgsSrvPlayTts_Response {
  {
    header: Ros2Aimdk_msgsMsgCommonResponse::new(),
    tts_resp: Ros2Aimdk_msgsMsgPlayTtsResponse::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvPlayTts_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvPlayTts_ResponseCodec::new() -> Ros2Aimdk_msgsSrvPlayTts_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/PlayTts_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a",
    min_wire_bytes: 50, max_wire_bytes: 690 }
}
pub fn Ros2Aimdk_msgsSrvPlayTts_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvPlayTts_ResponseCodec,
  value : Ros2Aimdk_msgsSrvPlayTts_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 690, error: 0 }
  write_Ros2Aimdk_msgsSrvPlayTts_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 50 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvPlayTts_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvPlayTts_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvPlayTts_Response, Int] {
  if input.length() < 50 || input.length() > 690 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvPlayTts_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvPlayTts_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvPlayTts_Response) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
  let part1 = value.tts_resp
  write_Ros2Aimdk_msgsMsgPlayTtsResponse(writer, part1)
}
fn read_Ros2Aimdk_msgsSrvPlayTts_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvPlayTts_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  let part1 = read_Ros2Aimdk_msgsMsgPlayTtsResponse(reader)
  { header: part0, tts_resp: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvPlayVideo_Request {
  mut header : Ros2Aimdk_msgsMsgCommonRequest
  mut video_path : String
  mut mode : Int
  mut priority : Int
}
pub fn Ros2Aimdk_msgsSrvPlayVideo_Request::new() -> Ros2Aimdk_msgsSrvPlayVideo_Request {
  {
    header: Ros2Aimdk_msgsMsgCommonRequest::new(),
    video_path: "",
    mode: 0,
    priority: 0,
  }
}
pub(all) struct Ros2Aimdk_msgsSrvPlayVideo_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvPlayVideo_RequestCodec::new() -> Ros2Aimdk_msgsSrvPlayVideo_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/PlayVideo_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878",
    min_wire_bytes: 17, max_wire_bytes: 145 }
}
pub fn Ros2Aimdk_msgsSrvPlayVideo_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvPlayVideo_RequestCodec,
  value : Ros2Aimdk_msgsSrvPlayVideo_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 145, error: 0 }
  write_Ros2Aimdk_msgsSrvPlayVideo_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvPlayVideo_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvPlayVideo_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvPlayVideo_Request, Int] {
  if input.length() < 17 || input.length() > 145 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvPlayVideo_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvPlayVideo_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvPlayVideo_Request) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
  let part1 = value.video_path
  writer.text(part1, 128)
  let part2 = value.mode
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part3 = value.priority
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Aimdk_msgsSrvPlayVideo_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvPlayVideo_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  let part1 = reader.text(128)
  let part2 = reader.unsigned(1).to_int()
  let part3 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { header: part0, video_path: part1, mode: part2, priority: part3 }
}

pub(all) struct Ros2Aimdk_msgsSrvPlayVideo_Response {
  mut header : Ros2Aimdk_msgsMsgCommonResponse
  mut success : Bool
  mut message : String
}
pub fn Ros2Aimdk_msgsSrvPlayVideo_Response::new() -> Ros2Aimdk_msgsSrvPlayVideo_Response {
  {
    header: Ros2Aimdk_msgsMsgCommonResponse::new(),
    success: false,
    message: "",
  }
}
pub(all) struct Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec::new() -> Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/PlayVideo_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627",
    min_wire_bytes: 29, max_wire_bytes: 285 }
}
pub fn Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec,
  value : Ros2Aimdk_msgsSrvPlayVideo_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 285, error: 0 }
  write_Ros2Aimdk_msgsSrvPlayVideo_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 29 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvPlayVideo_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvPlayVideo_Response, Int] {
  if input.length() < 29 || input.length() > 285 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvPlayVideo_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvPlayVideo_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvPlayVideo_Response) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
  let part1 = value.success
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.message
  writer.text(part2, 128)
}
fn read_Ros2Aimdk_msgsSrvPlayVideo_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvPlayVideo_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  let part1 = reader.boolean()
  let part2 = reader.text(128)
  { header: part0, success: part1, message: part2 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request {
  mut header : Ros2Aimdk_msgsMsgCommonRequest
  mut contents : Ros2Aimdk_msgsMsgAgentProperties
}
pub fn Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request::new() -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request {
  {
    header: Ros2Aimdk_msgsMsgCommonRequest::new(),
    contents: Ros2Aimdk_msgsMsgAgentProperties::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec::new(
  
) -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetAgentPropertiesRequest_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec",
    min_wire_bytes: 12, max_wire_bytes: 544 }
}
pub fn Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec,
  value : Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 544, error: 0 }
  write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request, Int] {
  if input.length() < 12 || input.length() > 544 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
  let part1 = value.contents
  write_Ros2Aimdk_msgsMsgAgentProperties(writer, part1)
}
fn read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  let part1 = read_Ros2Aimdk_msgsMsgAgentProperties(reader)
  { header: part0, contents: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
  mut header : Ros2Aimdk_msgsMsgCommonResponse
}
pub fn Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response::new(
  
) -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
  {
    header: Ros2Aimdk_msgsMsgCommonResponse::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec::new(
  
) -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetAgentPropertiesRequest_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b",
    min_wire_bytes: 24, max_wire_bytes: 152 }
}
pub fn Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec,
  value : Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 152, error: 0 }
  write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response, Int] {
  if input.length() < 24 || input.length() > 152 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
}
fn read_Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  { header: part0 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetMcAction_Request {
  mut header : Ros2Aimdk_msgsMsgRequestHeader
  mut command : Ros2Aimdk_msgsMsgMcActionCommand
}
pub fn Ros2Aimdk_msgsSrvSetMcAction_Request::new() -> Ros2Aimdk_msgsSrvSetMcAction_Request {
  {
    header: Ros2Aimdk_msgsMsgRequestHeader::new(),
    command: Ros2Aimdk_msgsMsgMcActionCommand::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetMcAction_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetMcAction_RequestCodec::new() -> Ros2Aimdk_msgsSrvSetMcAction_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetMcAction_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5",
    min_wire_bytes: 16, max_wire_bytes: 144 }
}
pub fn Ros2Aimdk_msgsSrvSetMcAction_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetMcAction_RequestCodec,
  value : Ros2Aimdk_msgsSrvSetMcAction_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 144, error: 0 }
  write_Ros2Aimdk_msgsSrvSetMcAction_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetMcAction_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetMcAction_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetMcAction_Request, Int] {
  if input.length() < 16 || input.length() > 144 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetMcAction_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetMcAction_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetMcAction_Request) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgRequestHeader(writer, part0)
  let part1 = value.command
  write_Ros2Aimdk_msgsMsgMcActionCommand(writer, part1)
}
fn read_Ros2Aimdk_msgsSrvSetMcAction_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetMcAction_Request {
  let part0 = read_Ros2Aimdk_msgsMsgRequestHeader(reader)
  let part1 = read_Ros2Aimdk_msgsMsgMcActionCommand(reader)
  { header: part0, command: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetMcAction_Response {
  mut response : Ros2Aimdk_msgsMsgCommonResponse
}
pub fn Ros2Aimdk_msgsSrvSetMcAction_Response::new() -> Ros2Aimdk_msgsSrvSetMcAction_Response {
  {
    response: Ros2Aimdk_msgsMsgCommonResponse::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec::new() -> Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetMcAction_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f",
    min_wire_bytes: 24, max_wire_bytes: 152 }
}
pub fn Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec,
  value : Ros2Aimdk_msgsSrvSetMcAction_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 152, error: 0 }
  write_Ros2Aimdk_msgsSrvSetMcAction_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetMcAction_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetMcAction_Response, Int] {
  if input.length() < 24 || input.length() > 152 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetMcAction_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetMcAction_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetMcAction_Response) -> Unit {
  let part0 = value.response
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
}
fn read_Ros2Aimdk_msgsSrvSetMcAction_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetMcAction_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  { response: part0 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetMcInputSource_Request {
  mut request : Ros2Aimdk_msgsMsgCommonRequest
  mut action : Ros2Aimdk_msgsMsgMcInputAction
  mut input_source : Ros2Aimdk_msgsMsgMcInputSource
}
pub fn Ros2Aimdk_msgsSrvSetMcInputSource_Request::new() -> Ros2Aimdk_msgsSrvSetMcInputSource_Request {
  {
    request: Ros2Aimdk_msgsMsgCommonRequest::new(),
    action: Ros2Aimdk_msgsMsgMcInputAction::new(),
    input_source: Ros2Aimdk_msgsMsgMcInputSource::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec::new() -> Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetMcInputSource_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021",
    min_wire_bytes: 24, max_wire_bytes: 152 }
}
pub fn Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec,
  value : Ros2Aimdk_msgsSrvSetMcInputSource_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 152, error: 0 }
  write_Ros2Aimdk_msgsSrvSetMcInputSource_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetMcInputSource_Request, Int] {
  if input.length() < 24 || input.length() > 152 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetMcInputSource_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetMcInputSource_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetMcInputSource_Request) -> Unit {
  let part0 = value.request
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
  let part1 = value.action
  write_Ros2Aimdk_msgsMsgMcInputAction(writer, part1)
  let part2 = value.input_source
  write_Ros2Aimdk_msgsMsgMcInputSource(writer, part2)
}
fn read_Ros2Aimdk_msgsSrvSetMcInputSource_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetMcInputSource_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  let part1 = read_Ros2Aimdk_msgsMsgMcInputAction(reader)
  let part2 = read_Ros2Aimdk_msgsMsgMcInputSource(reader)
  { request: part0, action: part1, input_source: part2 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetMcInputSource_Response {
  mut response : Ros2Aimdk_msgsMsgCommonTaskResponse
}
pub fn Ros2Aimdk_msgsSrvSetMcInputSource_Response::new() -> Ros2Aimdk_msgsSrvSetMcInputSource_Response {
  {
    response: Ros2Aimdk_msgsMsgCommonTaskResponse::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec::new() -> Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetMcInputSource_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb",
    min_wire_bytes: 28, max_wire_bytes: 28 }
}
pub fn Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec,
  value : Ros2Aimdk_msgsSrvSetMcInputSource_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 28, error: 0 }
  write_Ros2Aimdk_msgsSrvSetMcInputSource_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetMcInputSource_Response, Int] {
  if input.length() < 28 || input.length() > 28 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetMcInputSource_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetMcInputSource_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetMcInputSource_Response) -> Unit {
  let part0 = value.response
  write_Ros2Aimdk_msgsMsgCommonTaskResponse(writer, part0)
}
fn read_Ros2Aimdk_msgsSrvSetMcInputSource_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetMcInputSource_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonTaskResponse(reader)
  { response: part0 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetMcPresetMotion_Request {
  mut header : Ros2Aimdk_msgsMsgRequestHeader
  mut area : Ros2Aimdk_msgsMsgMcControlArea
  mut motion : Ros2Aimdk_msgsMsgMcPresetMotion
  mut interrupt : Bool
  mut ani_path : String
}
pub fn Ros2Aimdk_msgsSrvSetMcPresetMotion_Request::new() -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Request {
  {
    header: Ros2Aimdk_msgsMsgRequestHeader::new(),
    area: Ros2Aimdk_msgsMsgMcControlArea::new(),
    motion: Ros2Aimdk_msgsMsgMcPresetMotion::new(),
    interrupt: false,
    ani_path: "",
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec::new() -> Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetMcPresetMotion_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea",
    min_wire_bytes: 21, max_wire_bytes: 149 }
}
pub fn Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec,
  value : Ros2Aimdk_msgsSrvSetMcPresetMotion_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 149, error: 0 }
  write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 21 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetMcPresetMotion_Request, Int] {
  if input.length() < 21 || input.length() > 149 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetMcPresetMotion_Request) -> Unit {
  let part0 = value.header
  write_Ros2Aimdk_msgsMsgRequestHeader(writer, part0)
  let part1 = value.area
  write_Ros2Aimdk_msgsMsgMcControlArea(writer, part1)
  let part2 = value.motion
  write_Ros2Aimdk_msgsMsgMcPresetMotion(writer, part2)
  let part3 = value.interrupt
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
  let part4 = value.ani_path
  writer.text(part4, 128)
}
fn read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Request {
  let part0 = read_Ros2Aimdk_msgsMsgRequestHeader(reader)
  let part1 = read_Ros2Aimdk_msgsMsgMcControlArea(reader)
  let part2 = read_Ros2Aimdk_msgsMsgMcPresetMotion(reader)
  let part3 = reader.boolean()
  let part4 = reader.text(128)
  { header: part0, area: part1, motion: part2, interrupt: part3, ani_path: part4 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
  mut response : Ros2Aimdk_msgsMsgCommonTaskResponse
}
pub fn Ros2Aimdk_msgsSrvSetMcPresetMotion_Response::new() -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
  {
    response: Ros2Aimdk_msgsMsgCommonTaskResponse::new(),
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec::new() -> Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetMcPresetMotion_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85",
    min_wire_bytes: 28, max_wire_bytes: 28 }
}
pub fn Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec,
  value : Ros2Aimdk_msgsSrvSetMcPresetMotion_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 28, error: 0 }
  write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetMcPresetMotion_Response, Int] {
  if input.length() < 28 || input.length() > 28 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetMcPresetMotion_Response) -> Unit {
  let part0 = value.response
  write_Ros2Aimdk_msgsMsgCommonTaskResponse(writer, part0)
}
fn read_Ros2Aimdk_msgsSrvSetMcPresetMotion_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetMcPresetMotion_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonTaskResponse(reader)
  { response: part0 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetMute_Request {
  mut request : Ros2Aimdk_msgsMsgCommonRequest
  mut is_mute : Bool
}
pub fn Ros2Aimdk_msgsSrvSetMute_Request::new() -> Ros2Aimdk_msgsSrvSetMute_Request {
  {
    request: Ros2Aimdk_msgsMsgCommonRequest::new(),
    is_mute: false,
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetMute_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetMute_RequestCodec::new() -> Ros2Aimdk_msgsSrvSetMute_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetMute_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3",
    min_wire_bytes: 9, max_wire_bytes: 9 }
}
pub fn Ros2Aimdk_msgsSrvSetMute_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetMute_RequestCodec,
  value : Ros2Aimdk_msgsSrvSetMute_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9, error: 0 }
  write_Ros2Aimdk_msgsSrvSetMute_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetMute_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetMute_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetMute_Request, Int] {
  if input.length() < 9 || input.length() > 9 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetMute_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetMute_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetMute_Request) -> Unit {
  let part0 = value.request
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
  let part1 = value.is_mute
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Aimdk_msgsSrvSetMute_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetMute_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  let part1 = reader.boolean()
  { request: part0, is_mute: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetMute_Response {
  mut reponse : Ros2Aimdk_msgsMsgCommonResponse
  mut is_mute : Bool
}
pub fn Ros2Aimdk_msgsSrvSetMute_Response::new() -> Ros2Aimdk_msgsSrvSetMute_Response {
  {
    reponse: Ros2Aimdk_msgsMsgCommonResponse::new(),
    is_mute: false,
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetMute_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetMute_ResponseCodec::new() -> Ros2Aimdk_msgsSrvSetMute_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetMute_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50",
    min_wire_bytes: 25, max_wire_bytes: 153 }
}
pub fn Ros2Aimdk_msgsSrvSetMute_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetMute_ResponseCodec,
  value : Ros2Aimdk_msgsSrvSetMute_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 153, error: 0 }
  write_Ros2Aimdk_msgsSrvSetMute_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetMute_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetMute_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetMute_Response, Int] {
  if input.length() < 25 || input.length() > 153 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetMute_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetMute_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetMute_Response) -> Unit {
  let part0 = value.reponse
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
  let part1 = value.is_mute
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Aimdk_msgsSrvSetMute_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetMute_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  let part1 = reader.boolean()
  { reponse: part0, is_mute: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetVolume_Request {
  mut request : Ros2Aimdk_msgsMsgCommonRequest
  mut audio_volume : UInt
}
pub fn Ros2Aimdk_msgsSrvSetVolume_Request::new() -> Ros2Aimdk_msgsSrvSetVolume_Request {
  {
    request: Ros2Aimdk_msgsMsgCommonRequest::new(),
    audio_volume: 0U,
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetVolume_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetVolume_RequestCodec::new() -> Ros2Aimdk_msgsSrvSetVolume_RequestCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetVolume_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros2Aimdk_msgsSrvSetVolume_RequestCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetVolume_RequestCodec,
  value : Ros2Aimdk_msgsSrvSetVolume_Request
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros2Aimdk_msgsSrvSetVolume_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetVolume_RequestCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetVolume_RequestCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetVolume_Request, Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetVolume_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetVolume_Request(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetVolume_Request) -> Unit {
  let part0 = value.request
  write_Ros2Aimdk_msgsMsgCommonRequest(writer, part0)
  let part1 = value.audio_volume
  writer.unsigned(part1.to_uint64(), 4)
}
fn read_Ros2Aimdk_msgsSrvSetVolume_Request(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetVolume_Request {
  let part0 = read_Ros2Aimdk_msgsMsgCommonRequest(reader)
  let part1 = reader.unsigned(4).to_uint()
  { request: part0, audio_volume: part1 }
}

pub(all) struct Ros2Aimdk_msgsSrvSetVolume_Response {
  mut reponse : Ros2Aimdk_msgsMsgCommonResponse
  mut audio_volume : UInt
}
pub fn Ros2Aimdk_msgsSrvSetVolume_Response::new() -> Ros2Aimdk_msgsSrvSetVolume_Response {
  {
    reponse: Ros2Aimdk_msgsMsgCommonResponse::new(),
    audio_volume: 0U,
  }
}
pub(all) struct Ros2Aimdk_msgsSrvSetVolume_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Aimdk_msgsSrvSetVolume_ResponseCodec::new() -> Ros2Aimdk_msgsSrvSetVolume_ResponseCodec {
  { ros_version: 2, native_type: "aimdk_msgs/srv/SetVolume_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e",
    min_wire_bytes: 28, max_wire_bytes: 156 }
}
pub fn Ros2Aimdk_msgsSrvSetVolume_ResponseCodec::encode(
  _self : Ros2Aimdk_msgsSrvSetVolume_ResponseCodec,
  value : Ros2Aimdk_msgsSrvSetVolume_Response
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 156, error: 0 }
  write_Ros2Aimdk_msgsSrvSetVolume_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Aimdk_msgsSrvSetVolume_ResponseCodec::decode(
  _self : Ros2Aimdk_msgsSrvSetVolume_ResponseCodec,
  input : Bytes
) -> Result[Ros2Aimdk_msgsSrvSetVolume_Response, Int] {
  if input.length() < 28 || input.length() > 156 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Aimdk_msgsSrvSetVolume_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Aimdk_msgsSrvSetVolume_Response(writer : BoundedWriter, value : Ros2Aimdk_msgsSrvSetVolume_Response) -> Unit {
  let part0 = value.reponse
  write_Ros2Aimdk_msgsMsgCommonResponse(writer, part0)
  let part1 = value.audio_volume
  writer.unsigned(part1.to_uint64(), 4)
}
fn read_Ros2Aimdk_msgsSrvSetVolume_Response(reader : BoundedReader) -> Ros2Aimdk_msgsSrvSetVolume_Response {
  let part0 = read_Ros2Aimdk_msgsMsgCommonResponse(reader)
  let part1 = reader.unsigned(4).to_uint()
  { reponse: part0, audio_volume: part1 }
}

