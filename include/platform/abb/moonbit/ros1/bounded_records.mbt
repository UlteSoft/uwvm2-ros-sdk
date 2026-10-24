// @file bounded_records.mbt
// @brief Represent the complete original ABB ROS 1 canonical value catalog.
// @details The caller owns every record and its finite dynamic backing storage. Codecs retain all
// fields, original constants and native defaults; field units and frames follow the retained
// definitions. Malformed or out-of-bound wire values are rejected. These are guest values rather than
// native ROS objects; importing them grants no transport alias.
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

pub(all) struct Ros1Abb_egm_msgsEGMChannelState {
  mut field_name : String
  mut field_active : Bool
  mut field_egm_convergence_met : Bool
  mut field_egm_client_state : Int
  mut field_motor_state : Int
  mut field_rapid_execution_state : Int
  mut field_utilization_rate : Double
}
pub fn Ros1Abb_egm_msgsEGMChannelState::new() -> Ros1Abb_egm_msgsEGMChannelState {
  {
    field_name: "",
    field_active: false,
    field_egm_convergence_met: false,
    field_egm_client_state: 0,
    field_motor_state: 0,
    field_rapid_execution_state: 0,
    field_utilization_rate: 0.0,
  }
}
pub(all) struct Ros1Abb_egm_msgsEGMChannelStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::new() -> Ros1Abb_egm_msgsEGMChannelStateCodec {
  { ros_version: 1, native_type: "abb_egm_msgs/EGMChannelState",
    native_identity: None,
    codec_identity: "UWVMROS1_452d2adde3b1475fe3ff09ea11ff2ec7105a58c32e20d764e0c2ff152cb432f2",
    min_wire_bytes: 17, max_wire_bytes: 81 }
}
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::encode(_self : Ros1Abb_egm_msgsEGMChannelStateCodec,
    value : Ros1Abb_egm_msgsEGMChannelState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 81, error: 0 }
  write_Ros1Abb_egm_msgsEGMChannelState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::decode(_self : Ros1Abb_egm_msgsEGMChannelStateCodec,
    input : Bytes) -> Result[Ros1Abb_egm_msgsEGMChannelState,
    Int] {
  if input.length() < 17 || input.length() > 81 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_egm_msgsEGMChannelState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_egm_msgsEGMChannelState(writer : BoundedWriter, value : Ros1Abb_egm_msgsEGMChannelState) -> Unit {
  let part0 = value.field_name
  writer.text(part0, 64)
  let part1 = value.field_active
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.field_egm_convergence_met
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.field_egm_client_state
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part4 = value.field_motor_state
  if part4 < 0 || part4 > 255 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part5 = value.field_rapid_execution_state
  if part5 < 0 || part5 > 255 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part6 = value.field_utilization_rate
  writer.float64(part6)
}
fn read_Ros1Abb_egm_msgsEGMChannelState(reader : BoundedReader) -> Ros1Abb_egm_msgsEGMChannelState {
  let part0 = reader.text(64)
  let part1 = reader.boolean()
  let part2 = reader.boolean()
  let part3 = reader.unsigned(1).to_int()
  let part4 = reader.unsigned(1).to_int()
  let part5 = reader.unsigned(1).to_int()
  let part6 = reader.float64()
    {
      field_name: part0,
      field_active: part1,
      field_egm_convergence_met: part2,
      field_egm_client_state: part3,
      field_motor_state: part4,
      field_rapid_execution_state: part5,
      field_utilization_rate: part6
    }
}

pub(all) struct Ros1Time {
  mut field_sec : UInt
  mut field_nsec : UInt
}
pub fn Ros1Time::new() -> Ros1Time {
  {
    field_sec: 0U,
    field_nsec: 0U,
  }
}
pub(all) struct Ros1TimeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1TimeCodec::new() -> Ros1TimeCodec {
  { ros_version: 1, native_type: "time",
    native_identity: None,
    codec_identity: "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros1TimeCodec::encode(_self : Ros1TimeCodec, value : Ros1Time) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Time(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1TimeCodec::decode(_self : Ros1TimeCodec, input : Bytes) -> Result[Ros1Time, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Time(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Time(writer : BoundedWriter, value : Ros1Time) -> Unit {
  let part0 = value.field_sec
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_nsec
  writer.unsigned(part1.to_uint64(), 4)
}
fn read_Ros1Time(reader : BoundedReader) -> Ros1Time {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(4).to_uint()
  { field_sec: part0, field_nsec: part1 }
}

pub(all) struct Ros1Std_msgsHeader {
  mut field_seq : UInt
  mut field_stamp : Ros1Time
  mut field_frame_id : String
}
pub fn Ros1Std_msgsHeader::new() -> Ros1Std_msgsHeader {
  {
    field_seq: 0U,
    field_stamp: Ros1Time::new(),
    field_frame_id: "",
  }
}
pub(all) struct Ros1Std_msgsHeaderCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Std_msgsHeaderCodec::new() -> Ros1Std_msgsHeaderCodec {
  { ros_version: 1, native_type: "std_msgs/Header",
    native_identity: None,
    codec_identity: "UWVMROS1_ca1b8ffce276bdc4f86dccae58ede9f860ffe8778c6d4ffe0fb70675777801db",
    min_wire_bytes: 16, max_wire_bytes: 80 }
}
pub fn Ros1Std_msgsHeaderCodec::encode(_self : Ros1Std_msgsHeaderCodec,
    value : Ros1Std_msgsHeader) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 80, error: 0 }
  write_Ros1Std_msgsHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Std_msgsHeaderCodec::decode(_self : Ros1Std_msgsHeaderCodec,
    input : Bytes) -> Result[Ros1Std_msgsHeader,
    Int] {
  if input.length() < 16 || input.length() > 80 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Std_msgsHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Std_msgsHeader(writer : BoundedWriter, value : Ros1Std_msgsHeader) -> Unit {
  let part0 = value.field_seq
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_stamp
  write_Ros1Time(writer, part1)
  let part2 = value.field_frame_id
  writer.text(part2, 64)
}
fn read_Ros1Std_msgsHeader(reader : BoundedReader) -> Ros1Std_msgsHeader {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = read_Ros1Time(reader)
  let part2 = reader.text(64)
  { field_seq: part0, field_stamp: part1, field_frame_id: part2 }
}

pub(all) struct Ros1Abb_egm_msgsEGMState {
  mut field_header : Ros1Std_msgsHeader
  mut field_egm_channels : Array[Ros1Abb_egm_msgsEGMChannelState]
}
pub fn Ros1Abb_egm_msgsEGMState::new() -> Ros1Abb_egm_msgsEGMState {
  {
    field_header: Ros1Std_msgsHeader::new(),
    field_egm_channels: [],
  }
}
pub(all) struct Ros1Abb_egm_msgsEGMStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_egm_msgsEGMStateCodec::new() -> Ros1Abb_egm_msgsEGMStateCodec {
  { ros_version: 1, native_type: "abb_egm_msgs/EGMState",
    native_identity: None,
    codec_identity: "UWVMROS1_f7fe1d3924dc4e497c58aab27da69cfa6ab1a11f64b970b42e2d040a1312c4d8",
    min_wire_bytes: 20, max_wire_bytes: 1380 }
}
pub fn Ros1Abb_egm_msgsEGMStateCodec::encode(_self : Ros1Abb_egm_msgsEGMStateCodec,
    value : Ros1Abb_egm_msgsEGMState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1380, error: 0 }
  write_Ros1Abb_egm_msgsEGMState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_egm_msgsEGMStateCodec::decode(_self : Ros1Abb_egm_msgsEGMStateCodec,
    input : Bytes) -> Result[Ros1Abb_egm_msgsEGMState,
    Int] {
  if input.length() < 20 || input.length() > 1380 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_egm_msgsEGMState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_egm_msgsEGMState(writer : BoundedWriter, value : Ros1Abb_egm_msgsEGMState) -> Unit {
  let part0 = value.field_header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.field_egm_channels
  let count1 = part1.length()
  if count1 > 16 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros1Abb_egm_msgsEGMChannelState(writer, element)
  }
}
fn read_Ros1Abb_egm_msgsEGMState(reader : BoundedReader) -> Ros1Abb_egm_msgsEGMState {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 : Array[Ros1Abb_egm_msgsEGMChannelState] = []
  let count1 = reader.count(16, 17)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros1Abb_egm_msgsEGMChannelState(reader))
  }
  { field_header: part0, field_egm_channels: part1 }
}

pub(all) struct Ros1Abb_rapid_msgsConfData {
  mut field_cf1 : Float
  mut field_cf4 : Float
  mut field_cf6 : Float
  mut field_cfx : Float
}
pub fn Ros1Abb_rapid_msgsConfData::new() -> Ros1Abb_rapid_msgsConfData {
  {
    field_cf1: (0U).reinterpret_as_float(),
    field_cf4: (0U).reinterpret_as_float(),
    field_cf6: (0U).reinterpret_as_float(),
    field_cfx: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsConfDataCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsConfDataCodec::new() -> Ros1Abb_rapid_msgsConfDataCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/ConfData",
    native_identity: None,
    codec_identity: "UWVMROS1_293eb01e8fa150a8a3c741626b76804255d0eb321a0484aac402201447392af2",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
pub fn Ros1Abb_rapid_msgsConfDataCodec::encode(_self : Ros1Abb_rapid_msgsConfDataCodec,
    value : Ros1Abb_rapid_msgsConfData) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros1Abb_rapid_msgsConfData(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsConfDataCodec::decode(_self : Ros1Abb_rapid_msgsConfDataCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsConfData,
    Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsConfData(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsConfData(writer : BoundedWriter, value : Ros1Abb_rapid_msgsConfData) -> Unit {
  let part0 = value.field_cf1
  writer.float32(part0)
  let part1 = value.field_cf4
  writer.float32(part1)
  let part2 = value.field_cf6
  writer.float32(part2)
  let part3 = value.field_cfx
  writer.float32(part3)
}
fn read_Ros1Abb_rapid_msgsConfData(reader : BoundedReader) -> Ros1Abb_rapid_msgsConfData {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { field_cf1: part0, field_cf4: part1, field_cf6: part2, field_cfx: part3 }
}

pub(all) struct Ros1Abb_rapid_msgsExtJoint {
  mut field_eax_a : Float
  mut field_eax_b : Float
  mut field_eax_c : Float
  mut field_eax_d : Float
  mut field_eax_e : Float
  mut field_eax_f : Float
}
pub fn Ros1Abb_rapid_msgsExtJoint::new() -> Ros1Abb_rapid_msgsExtJoint {
  {
    field_eax_a: (0U).reinterpret_as_float(),
    field_eax_b: (0U).reinterpret_as_float(),
    field_eax_c: (0U).reinterpret_as_float(),
    field_eax_d: (0U).reinterpret_as_float(),
    field_eax_e: (0U).reinterpret_as_float(),
    field_eax_f: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsExtJointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsExtJointCodec::new() -> Ros1Abb_rapid_msgsExtJointCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/ExtJoint",
    native_identity: None,
    codec_identity: "UWVMROS1_653a47c44ab85151fd9e6215901fb154962c32fe1082386733ec6205eaae613a",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros1Abb_rapid_msgsExtJointCodec::encode(_self : Ros1Abb_rapid_msgsExtJointCodec,
    value : Ros1Abb_rapid_msgsExtJoint) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros1Abb_rapid_msgsExtJoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsExtJointCodec::decode(_self : Ros1Abb_rapid_msgsExtJointCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsExtJoint,
    Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsExtJoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsExtJoint(writer : BoundedWriter, value : Ros1Abb_rapid_msgsExtJoint) -> Unit {
  let part0 = value.field_eax_a
  writer.float32(part0)
  let part1 = value.field_eax_b
  writer.float32(part1)
  let part2 = value.field_eax_c
  writer.float32(part2)
  let part3 = value.field_eax_d
  writer.float32(part3)
  let part4 = value.field_eax_e
  writer.float32(part4)
  let part5 = value.field_eax_f
  writer.float32(part5)
}
fn read_Ros1Abb_rapid_msgsExtJoint(reader : BoundedReader) -> Ros1Abb_rapid_msgsExtJoint {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
    {
      field_eax_a: part0,
      field_eax_b: part1,
      field_eax_c: part2,
      field_eax_d: part3,
      field_eax_e: part4,
      field_eax_f: part5
    }
}

pub(all) struct Ros1Abb_rapid_msgsRobJoint {
  mut field_rax_1 : Float
  mut field_rax_2 : Float
  mut field_rax_3 : Float
  mut field_rax_4 : Float
  mut field_rax_5 : Float
  mut field_rax_6 : Float
}
pub fn Ros1Abb_rapid_msgsRobJoint::new() -> Ros1Abb_rapid_msgsRobJoint {
  {
    field_rax_1: (0U).reinterpret_as_float(),
    field_rax_2: (0U).reinterpret_as_float(),
    field_rax_3: (0U).reinterpret_as_float(),
    field_rax_4: (0U).reinterpret_as_float(),
    field_rax_5: (0U).reinterpret_as_float(),
    field_rax_6: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsRobJointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsRobJointCodec::new() -> Ros1Abb_rapid_msgsRobJointCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/RobJoint",
    native_identity: None,
    codec_identity: "UWVMROS1_5d45bc0efae8c4f5b26e4043fe537e163c4cc4c6458d1eac9be429c37aaf82f0",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros1Abb_rapid_msgsRobJointCodec::encode(_self : Ros1Abb_rapid_msgsRobJointCodec,
    value : Ros1Abb_rapid_msgsRobJoint) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros1Abb_rapid_msgsRobJoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsRobJointCodec::decode(_self : Ros1Abb_rapid_msgsRobJointCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsRobJoint,
    Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsRobJoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsRobJoint(writer : BoundedWriter, value : Ros1Abb_rapid_msgsRobJoint) -> Unit {
  let part0 = value.field_rax_1
  writer.float32(part0)
  let part1 = value.field_rax_2
  writer.float32(part1)
  let part2 = value.field_rax_3
  writer.float32(part2)
  let part3 = value.field_rax_4
  writer.float32(part3)
  let part4 = value.field_rax_5
  writer.float32(part4)
  let part5 = value.field_rax_6
  writer.float32(part5)
}
fn read_Ros1Abb_rapid_msgsRobJoint(reader : BoundedReader) -> Ros1Abb_rapid_msgsRobJoint {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
    {
      field_rax_1: part0,
      field_rax_2: part1,
      field_rax_3: part2,
      field_rax_4: part3,
      field_rax_5: part4,
      field_rax_6: part5
    }
}

pub(all) struct Ros1Abb_rapid_msgsJointTarget {
  mut field_robax : Ros1Abb_rapid_msgsRobJoint
  mut field_extax : Ros1Abb_rapid_msgsExtJoint
}
pub fn Ros1Abb_rapid_msgsJointTarget::new() -> Ros1Abb_rapid_msgsJointTarget {
  {
    field_robax: Ros1Abb_rapid_msgsRobJoint::new(),
    field_extax: Ros1Abb_rapid_msgsExtJoint::new(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsJointTargetCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsJointTargetCodec::new() -> Ros1Abb_rapid_msgsJointTargetCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/JointTarget",
    native_identity: None,
    codec_identity: "UWVMROS1_4a1cc175468da9204c5f2f399b76712617daec21a0d1675a6e73c84ff170dc24",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros1Abb_rapid_msgsJointTargetCodec::encode(_self : Ros1Abb_rapid_msgsJointTargetCodec,
    value : Ros1Abb_rapid_msgsJointTarget) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros1Abb_rapid_msgsJointTarget(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsJointTargetCodec::decode(_self : Ros1Abb_rapid_msgsJointTargetCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsJointTarget,
    Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsJointTarget(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsJointTarget(writer : BoundedWriter, value : Ros1Abb_rapid_msgsJointTarget) -> Unit {
  let part0 = value.field_robax
  write_Ros1Abb_rapid_msgsRobJoint(writer, part0)
  let part1 = value.field_extax
  write_Ros1Abb_rapid_msgsExtJoint(writer, part1)
}
fn read_Ros1Abb_rapid_msgsJointTarget(reader : BoundedReader) -> Ros1Abb_rapid_msgsJointTarget {
  let part0 = read_Ros1Abb_rapid_msgsRobJoint(reader)
  let part1 = read_Ros1Abb_rapid_msgsExtJoint(reader)
  { field_robax: part0, field_extax: part1 }
}

pub(all) struct Ros1Abb_rapid_msgsPos {
  mut field_x : Float
  mut field_y : Float
  mut field_z : Float
}
pub fn Ros1Abb_rapid_msgsPos::new() -> Ros1Abb_rapid_msgsPos {
  {
    field_x: (0U).reinterpret_as_float(),
    field_y: (0U).reinterpret_as_float(),
    field_z: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsPosCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsPosCodec::new() -> Ros1Abb_rapid_msgsPosCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/Pos",
    native_identity: None,
    codec_identity: "UWVMROS1_79edd4553fad8a8f833a3399e354c93538d4971bc3820cc14cf540e960356c01",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros1Abb_rapid_msgsPosCodec::encode(_self : Ros1Abb_rapid_msgsPosCodec,
    value : Ros1Abb_rapid_msgsPos) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros1Abb_rapid_msgsPos(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsPosCodec::decode(_self : Ros1Abb_rapid_msgsPosCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsPos,
    Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsPos(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsPos(writer : BoundedWriter, value : Ros1Abb_rapid_msgsPos) -> Unit {
  let part0 = value.field_x
  writer.float32(part0)
  let part1 = value.field_y
  writer.float32(part1)
  let part2 = value.field_z
  writer.float32(part2)
}
fn read_Ros1Abb_rapid_msgsPos(reader : BoundedReader) -> Ros1Abb_rapid_msgsPos {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  { field_x: part0, field_y: part1, field_z: part2 }
}

pub(all) struct Ros1Abb_rapid_msgsOrient {
  mut field_q1 : Float
  mut field_q2 : Float
  mut field_q3 : Float
  mut field_q4 : Float
}
pub fn Ros1Abb_rapid_msgsOrient::new() -> Ros1Abb_rapid_msgsOrient {
  {
    field_q1: (0U).reinterpret_as_float(),
    field_q2: (0U).reinterpret_as_float(),
    field_q3: (0U).reinterpret_as_float(),
    field_q4: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsOrientCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsOrientCodec::new() -> Ros1Abb_rapid_msgsOrientCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/Orient",
    native_identity: None,
    codec_identity: "UWVMROS1_5a9c29323a5e3bc0c4c0afa7d305738cd52b49ae339e72f6b34b35b165f3d270",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
pub fn Ros1Abb_rapid_msgsOrientCodec::encode(_self : Ros1Abb_rapid_msgsOrientCodec,
    value : Ros1Abb_rapid_msgsOrient) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros1Abb_rapid_msgsOrient(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsOrientCodec::decode(_self : Ros1Abb_rapid_msgsOrientCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsOrient,
    Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsOrient(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsOrient(writer : BoundedWriter, value : Ros1Abb_rapid_msgsOrient) -> Unit {
  let part0 = value.field_q1
  writer.float32(part0)
  let part1 = value.field_q2
  writer.float32(part1)
  let part2 = value.field_q3
  writer.float32(part2)
  let part3 = value.field_q4
  writer.float32(part3)
}
fn read_Ros1Abb_rapid_msgsOrient(reader : BoundedReader) -> Ros1Abb_rapid_msgsOrient {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  { field_q1: part0, field_q2: part1, field_q3: part2, field_q4: part3 }
}

pub(all) struct Ros1Abb_rapid_msgsLoadData {
  mut field_mass : Float
  mut field_cog : Ros1Abb_rapid_msgsPos
  mut field_aom : Ros1Abb_rapid_msgsOrient
  mut field_ix : Float
  mut field_iy : Float
  mut field_iz : Float
}
pub fn Ros1Abb_rapid_msgsLoadData::new() -> Ros1Abb_rapid_msgsLoadData {
  {
    field_mass: (0U).reinterpret_as_float(),
    field_cog: Ros1Abb_rapid_msgsPos::new(),
    field_aom: Ros1Abb_rapid_msgsOrient::new(),
    field_ix: (0U).reinterpret_as_float(),
    field_iy: (0U).reinterpret_as_float(),
    field_iz: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsLoadDataCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsLoadDataCodec::new() -> Ros1Abb_rapid_msgsLoadDataCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/LoadData",
    native_identity: None,
    codec_identity: "UWVMROS1_2cc985cc188a03e7c6de3d22310802cac1e0a748bae7f828d957436c1e03303d",
    min_wire_bytes: 44, max_wire_bytes: 44 }
}
pub fn Ros1Abb_rapid_msgsLoadDataCodec::encode(_self : Ros1Abb_rapid_msgsLoadDataCodec,
    value : Ros1Abb_rapid_msgsLoadData) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 44, error: 0 }
  write_Ros1Abb_rapid_msgsLoadData(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 44 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsLoadDataCodec::decode(_self : Ros1Abb_rapid_msgsLoadDataCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsLoadData,
    Int] {
  if input.length() < 44 || input.length() > 44 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsLoadData(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsLoadData(writer : BoundedWriter, value : Ros1Abb_rapid_msgsLoadData) -> Unit {
  let part0 = value.field_mass
  writer.float32(part0)
  let part1 = value.field_cog
  write_Ros1Abb_rapid_msgsPos(writer, part1)
  let part2 = value.field_aom
  write_Ros1Abb_rapid_msgsOrient(writer, part2)
  let part3 = value.field_ix
  writer.float32(part3)
  let part4 = value.field_iy
  writer.float32(part4)
  let part5 = value.field_iz
  writer.float32(part5)
}
fn read_Ros1Abb_rapid_msgsLoadData(reader : BoundedReader) -> Ros1Abb_rapid_msgsLoadData {
  let part0 = reader.float32()
  let part1 = read_Ros1Abb_rapid_msgsPos(reader)
  let part2 = read_Ros1Abb_rapid_msgsOrient(reader)
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { field_mass: part0, field_cog: part1, field_aom: part2, field_ix: part3, field_iy: part4, field_iz: part5 }
}

pub(all) struct Ros1Abb_rapid_msgsPose {
  mut field_trans : Ros1Abb_rapid_msgsPos
  mut field_rot : Ros1Abb_rapid_msgsOrient
}
pub fn Ros1Abb_rapid_msgsPose::new() -> Ros1Abb_rapid_msgsPose {
  {
    field_trans: Ros1Abb_rapid_msgsPos::new(),
    field_rot: Ros1Abb_rapid_msgsOrient::new(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsPoseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsPoseCodec::new() -> Ros1Abb_rapid_msgsPoseCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/Pose",
    native_identity: None,
    codec_identity: "UWVMROS1_3e0cfbb7e25376639d1ff6e555a86e69f8c9ed177c1ef14b301d90b206a19c99",
    min_wire_bytes: 28, max_wire_bytes: 28 }
}
pub fn Ros1Abb_rapid_msgsPoseCodec::encode(_self : Ros1Abb_rapid_msgsPoseCodec,
    value : Ros1Abb_rapid_msgsPose) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 28, error: 0 }
  write_Ros1Abb_rapid_msgsPose(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsPoseCodec::decode(_self : Ros1Abb_rapid_msgsPoseCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsPose,
    Int] {
  if input.length() < 28 || input.length() > 28 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsPose(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsPose(writer : BoundedWriter, value : Ros1Abb_rapid_msgsPose) -> Unit {
  let part0 = value.field_trans
  write_Ros1Abb_rapid_msgsPos(writer, part0)
  let part1 = value.field_rot
  write_Ros1Abb_rapid_msgsOrient(writer, part1)
}
fn read_Ros1Abb_rapid_msgsPose(reader : BoundedReader) -> Ros1Abb_rapid_msgsPose {
  let part0 = read_Ros1Abb_rapid_msgsPos(reader)
  let part1 = read_Ros1Abb_rapid_msgsOrient(reader)
  { field_trans: part0, field_rot: part1 }
}

pub(all) struct Ros1Abb_rapid_msgsRobTarget {
  mut field_trans : Ros1Abb_rapid_msgsPos
  mut field_rot : Ros1Abb_rapid_msgsOrient
  mut field_robconf : Ros1Abb_rapid_msgsConfData
  mut field_extax : Ros1Abb_rapid_msgsExtJoint
}
pub fn Ros1Abb_rapid_msgsRobTarget::new() -> Ros1Abb_rapid_msgsRobTarget {
  {
    field_trans: Ros1Abb_rapid_msgsPos::new(),
    field_rot: Ros1Abb_rapid_msgsOrient::new(),
    field_robconf: Ros1Abb_rapid_msgsConfData::new(),
    field_extax: Ros1Abb_rapid_msgsExtJoint::new(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsRobTargetCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsRobTargetCodec::new() -> Ros1Abb_rapid_msgsRobTargetCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/RobTarget",
    native_identity: None,
    codec_identity: "UWVMROS1_0abb3aee8b1303ccf9419f2774829d1231de3ac033e4b644d585f195972f09ce",
    min_wire_bytes: 68, max_wire_bytes: 68 }
}
pub fn Ros1Abb_rapid_msgsRobTargetCodec::encode(_self : Ros1Abb_rapid_msgsRobTargetCodec,
    value : Ros1Abb_rapid_msgsRobTarget) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 68, error: 0 }
  write_Ros1Abb_rapid_msgsRobTarget(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 68 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsRobTargetCodec::decode(_self : Ros1Abb_rapid_msgsRobTargetCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsRobTarget,
    Int] {
  if input.length() < 68 || input.length() > 68 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsRobTarget(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsRobTarget(writer : BoundedWriter, value : Ros1Abb_rapid_msgsRobTarget) -> Unit {
  let part0 = value.field_trans
  write_Ros1Abb_rapid_msgsPos(writer, part0)
  let part1 = value.field_rot
  write_Ros1Abb_rapid_msgsOrient(writer, part1)
  let part2 = value.field_robconf
  write_Ros1Abb_rapid_msgsConfData(writer, part2)
  let part3 = value.field_extax
  write_Ros1Abb_rapid_msgsExtJoint(writer, part3)
}
fn read_Ros1Abb_rapid_msgsRobTarget(reader : BoundedReader) -> Ros1Abb_rapid_msgsRobTarget {
  let part0 = read_Ros1Abb_rapid_msgsPos(reader)
  let part1 = read_Ros1Abb_rapid_msgsOrient(reader)
  let part2 = read_Ros1Abb_rapid_msgsConfData(reader)
  let part3 = read_Ros1Abb_rapid_msgsExtJoint(reader)
  { field_trans: part0, field_rot: part1, field_robconf: part2, field_extax: part3 }
}

pub(all) struct Ros1Abb_rapid_msgsToolData {
  mut field_robhold : Bool
  mut field_tframe : Ros1Abb_rapid_msgsPose
  mut field_tload : Ros1Abb_rapid_msgsLoadData
}
pub fn Ros1Abb_rapid_msgsToolData::new() -> Ros1Abb_rapid_msgsToolData {
  {
    field_robhold: false,
    field_tframe: Ros1Abb_rapid_msgsPose::new(),
    field_tload: Ros1Abb_rapid_msgsLoadData::new(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsToolDataCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsToolDataCodec::new() -> Ros1Abb_rapid_msgsToolDataCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/ToolData",
    native_identity: None,
    codec_identity: "UWVMROS1_e2feaee4bda891f594542384d70883184262777e359fb037a648b7526ef76cba",
    min_wire_bytes: 73, max_wire_bytes: 73 }
}
pub fn Ros1Abb_rapid_msgsToolDataCodec::encode(_self : Ros1Abb_rapid_msgsToolDataCodec,
    value : Ros1Abb_rapid_msgsToolData) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 73, error: 0 }
  write_Ros1Abb_rapid_msgsToolData(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 73 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsToolDataCodec::decode(_self : Ros1Abb_rapid_msgsToolDataCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsToolData,
    Int] {
  if input.length() < 73 || input.length() > 73 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsToolData(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsToolData(writer : BoundedWriter, value : Ros1Abb_rapid_msgsToolData) -> Unit {
  let part0 = value.field_robhold
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.field_tframe
  write_Ros1Abb_rapid_msgsPose(writer, part1)
  let part2 = value.field_tload
  write_Ros1Abb_rapid_msgsLoadData(writer, part2)
}
fn read_Ros1Abb_rapid_msgsToolData(reader : BoundedReader) -> Ros1Abb_rapid_msgsToolData {
  let part0 = reader.boolean()
  let part1 = read_Ros1Abb_rapid_msgsPose(reader)
  let part2 = read_Ros1Abb_rapid_msgsLoadData(reader)
  { field_robhold: part0, field_tframe: part1, field_tload: part2 }
}

pub(all) struct Ros1Abb_rapid_msgsWObjData {
  mut field_robhold : Bool
  mut field_ufprog : Bool
  mut field_ufmec : String
  mut field_uframe : Ros1Abb_rapid_msgsPose
  mut field_oframe : Ros1Abb_rapid_msgsPose
}
pub fn Ros1Abb_rapid_msgsWObjData::new() -> Ros1Abb_rapid_msgsWObjData {
  {
    field_robhold: false,
    field_ufprog: false,
    field_ufmec: "",
    field_uframe: Ros1Abb_rapid_msgsPose::new(),
    field_oframe: Ros1Abb_rapid_msgsPose::new(),
  }
}
pub(all) struct Ros1Abb_rapid_msgsWObjDataCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_msgsWObjDataCodec::new() -> Ros1Abb_rapid_msgsWObjDataCodec {
  { ros_version: 1, native_type: "abb_rapid_msgs/WObjData",
    native_identity: None,
    codec_identity: "UWVMROS1_6de4cf654a15ef3b63d9b0f3d0984438f21963c10ffd1b00238113b6fae8454f",
    min_wire_bytes: 62, max_wire_bytes: 574 }
}
pub fn Ros1Abb_rapid_msgsWObjDataCodec::encode(_self : Ros1Abb_rapid_msgsWObjDataCodec,
    value : Ros1Abb_rapid_msgsWObjData) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 574, error: 0 }
  write_Ros1Abb_rapid_msgsWObjData(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 62 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_msgsWObjDataCodec::decode(_self : Ros1Abb_rapid_msgsWObjDataCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_msgsWObjData,
    Int] {
  if input.length() < 62 || input.length() > 574 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_msgsWObjData(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_msgsWObjData(writer : BoundedWriter, value : Ros1Abb_rapid_msgsWObjData) -> Unit {
  let part0 = value.field_robhold
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.field_ufprog
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.field_ufmec
  writer.text(part2, 512)
  let part3 = value.field_uframe
  write_Ros1Abb_rapid_msgsPose(writer, part3)
  let part4 = value.field_oframe
  write_Ros1Abb_rapid_msgsPose(writer, part4)
}
fn read_Ros1Abb_rapid_msgsWObjData(reader : BoundedReader) -> Ros1Abb_rapid_msgsWObjData {
  let part0 = reader.boolean()
  let part1 = reader.boolean()
  let part2 = reader.text(512)
  let part3 = read_Ros1Abb_rapid_msgsPose(reader)
  let part4 = read_Ros1Abb_rapid_msgsPose(reader)
  { field_robhold: part0, field_ufprog: part1, field_ufmec: part2, field_uframe: part3, field_oframe: part4 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings {
  mut field_tool : Ros1Abb_rapid_msgsToolData
  mut field_wobj : Ros1Abb_rapid_msgsWObjData
  mut field_correction_frame : Ros1Abb_rapid_msgsPose
  mut field_sensor_frame : Ros1Abb_rapid_msgsPose
  mut field_cond_min_max : Float
  mut field_lp_filter : Float
  mut field_sample_rate : Int
  mut field_max_speed_deviation : Float
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings::new() -> Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings {
  {
    field_tool: Ros1Abb_rapid_msgsToolData::new(),
    field_wobj: Ros1Abb_rapid_msgsWObjData::new(),
    field_correction_frame: Ros1Abb_rapid_msgsPose::new(),
    field_sensor_frame: Ros1Abb_rapid_msgsPose::new(),
    field_cond_min_max: (0U).reinterpret_as_float(),
    field_lp_filter: (0U).reinterpret_as_float(),
    field_sample_rate: 0,
    field_max_speed_deviation: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsCodec::new(
    ) -> Ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/EGMActivateSettings",
    native_identity: None,
    codec_identity: "UWVMROS1_c50be5682021e5d1a7a938e6fe3595cec7c0b0ae727070c0924da731c2c73d4d",
    min_wire_bytes: 204, max_wire_bytes: 716 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsCodec,
    value : Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 716, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 204 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsEGMActivateSettingsCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings,
    Int] {
  if input.length() < 204 || input.length() > 716 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings) -> Unit {
  let part0 = value.field_tool
  write_Ros1Abb_rapid_msgsToolData(writer, part0)
  let part1 = value.field_wobj
  write_Ros1Abb_rapid_msgsWObjData(writer, part1)
  let part2 = value.field_correction_frame
  write_Ros1Abb_rapid_msgsPose(writer, part2)
  let part3 = value.field_sensor_frame
  write_Ros1Abb_rapid_msgsPose(writer, part3)
  let part4 = value.field_cond_min_max
  writer.float32(part4)
  let part5 = value.field_lp_filter
  writer.float32(part5)
  let part6 = value.field_sample_rate
  if part6 < 0 || part6 > 255 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part7 = value.field_max_speed_deviation
  writer.float32(part7)
}
fn read_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings {
  let part0 = read_Ros1Abb_rapid_msgsToolData(reader)
  let part1 = read_Ros1Abb_rapid_msgsWObjData(reader)
  let part2 = read_Ros1Abb_rapid_msgsPose(reader)
  let part3 = read_Ros1Abb_rapid_msgsPose(reader)
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.unsigned(1).to_int()
  let part7 = reader.float32()
    {
      field_tool: part0,
      field_wobj: part1,
      field_correction_frame: part2,
      field_sensor_frame: part3,
      field_cond_min_max: part4,
      field_lp_filter: part5,
      field_sample_rate: part6,
      field_max_speed_deviation: part7
    }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsEGMRunSettings {
  mut field_cond_time : Float
  mut field_ramp_in_time : Float
  mut field_offset : Ros1Abb_rapid_msgsPose
  mut field_pos_corr_gain : Float
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMRunSettings::new() -> Ros1Abb_rapid_sm_addin_msgsEGMRunSettings {
  {
    field_cond_time: (0U).reinterpret_as_float(),
    field_ramp_in_time: (0U).reinterpret_as_float(),
    field_offset: Ros1Abb_rapid_msgsPose::new(),
    field_pos_corr_gain: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsEGMRunSettingsCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMRunSettingsCodec::new() -> Ros1Abb_rapid_sm_addin_msgsEGMRunSettingsCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/EGMRunSettings",
    native_identity: None,
    codec_identity: "UWVMROS1_09a843da7aa89c60e6404f8d36b9a1a57f75e330329ac043449fd438b7029506",
    min_wire_bytes: 40, max_wire_bytes: 40 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMRunSettingsCodec::encode(_self : Ros1Abb_rapid_sm_addin_msgsEGMRunSettingsCodec,
    value : Ros1Abb_rapid_sm_addin_msgsEGMRunSettings) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 40, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMRunSettingsCodec::decode(_self : Ros1Abb_rapid_sm_addin_msgsEGMRunSettingsCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsEGMRunSettings,
    Int] {
  if input.length() < 40 || input.length() > 40 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsEGMRunSettings) -> Unit {
  let part0 = value.field_cond_time
  writer.float32(part0)
  let part1 = value.field_ramp_in_time
  writer.float32(part1)
  let part2 = value.field_offset
  write_Ros1Abb_rapid_msgsPose(writer, part2)
  let part3 = value.field_pos_corr_gain
  writer.float32(part3)
}
fn read_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings(reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsEGMRunSettings {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = read_Ros1Abb_rapid_msgsPose(reader)
  let part3 = reader.float32()
  { field_cond_time: part0, field_ramp_in_time: part1, field_offset: part2, field_pos_corr_gain: part3 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings {
  mut field_use_filtering : Bool
  mut field_comm_timeout : Float
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings::new() -> Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings {
  {
    field_use_filtering: false,
    field_comm_timeout: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsCodec::new() -> Ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/EGMSetupSettings",
    native_identity: None,
    codec_identity: "UWVMROS1_ece31a7631bb3bb248aece52d4d5f6e190a94dcc3052b2761b759bed24513779",
    min_wire_bytes: 5, max_wire_bytes: 5 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsCodec,
    value : Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsEGMSetupSettingsCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings,
    Int] {
  if input.length() < 5 || input.length() > 5 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings) -> Unit {
  let part0 = value.field_use_filtering
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.field_comm_timeout
  writer.float32(part1)
}
fn read_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings {
  let part0 = reader.boolean()
  let part1 = reader.float32()
  { field_use_filtering: part0, field_comm_timeout: part1 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsEGMStopSettings {
  mut field_ramp_out_time : Float
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMStopSettings::new() -> Ros1Abb_rapid_sm_addin_msgsEGMStopSettings {
  {
    field_ramp_out_time: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsEGMStopSettingsCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMStopSettingsCodec::new() -> Ros1Abb_rapid_sm_addin_msgsEGMStopSettingsCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/EGMStopSettings",
    native_identity: None,
    codec_identity: "UWVMROS1_64009cc452b9b2b12b3501d150e8c88c9cc07c796df06775195fa17c2a103a08",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMStopSettingsCodec::encode(_self : Ros1Abb_rapid_sm_addin_msgsEGMStopSettingsCodec,
    value : Ros1Abb_rapid_sm_addin_msgsEGMStopSettings) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMStopSettingsCodec::decode(_self : Ros1Abb_rapid_sm_addin_msgsEGMStopSettingsCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsEGMStopSettings,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsEGMStopSettings) -> Unit {
  let part0 = value.field_ramp_out_time
  writer.float32(part0)
}
fn read_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsEGMStopSettings {
  let part0 = reader.float32()
  { field_ramp_out_time: part0 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsEGMSettings {
  mut field_allow_egm_motions : Bool
  mut field_use_presync : Bool
  mut field_setup_uc : Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings
  mut field_activate : Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings
  mut field_run : Ros1Abb_rapid_sm_addin_msgsEGMRunSettings
  mut field_stop : Ros1Abb_rapid_sm_addin_msgsEGMStopSettings
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSettings::new() -> Ros1Abb_rapid_sm_addin_msgsEGMSettings {
  {
    field_allow_egm_motions: false,
    field_use_presync: false,
    field_setup_uc: Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings::new(),
    field_activate: Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings::new(),
    field_run: Ros1Abb_rapid_sm_addin_msgsEGMRunSettings::new(),
    field_stop: Ros1Abb_rapid_sm_addin_msgsEGMStopSettings::new(),
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsEGMSettingsCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSettingsCodec::new() -> Ros1Abb_rapid_sm_addin_msgsEGMSettingsCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/EGMSettings",
    native_identity: None,
    codec_identity: "UWVMROS1_ebc0ca24a54451f863964c74bf0257b5b25546d0d4b8a75ac75c265e1d62317b",
    min_wire_bytes: 255, max_wire_bytes: 767 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSettingsCodec::encode(_self : Ros1Abb_rapid_sm_addin_msgsEGMSettingsCodec,
    value : Ros1Abb_rapid_sm_addin_msgsEGMSettings) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 767, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsEGMSettings(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 255 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsEGMSettingsCodec::decode(_self : Ros1Abb_rapid_sm_addin_msgsEGMSettingsCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsEGMSettings,
    Int] {
  if input.length() < 255 || input.length() > 767 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsEGMSettings(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsEGMSettings(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsEGMSettings) -> Unit {
  let part0 = value.field_allow_egm_motions
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.field_use_presync
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.field_setup_uc
  write_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings(writer, part2)
  let part3 = value.field_activate
  write_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings(writer, part3)
  let part4 = value.field_run
  write_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings(writer, part4)
  let part5 = value.field_stop
  write_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings(writer, part5)
}
fn read_Ros1Abb_rapid_sm_addin_msgsEGMSettings(reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsEGMSettings {
  let part0 = reader.boolean()
  let part1 = reader.boolean()
  let part2 = read_Ros1Abb_rapid_sm_addin_msgsEGMSetupSettings(reader)
  let part3 = read_Ros1Abb_rapid_sm_addin_msgsEGMActivateSettings(reader)
  let part4 = read_Ros1Abb_rapid_sm_addin_msgsEGMRunSettings(reader)
  let part5 = read_Ros1Abb_rapid_sm_addin_msgsEGMStopSettings(reader)
    {
      field_allow_egm_motions: part0,
      field_use_presync: part1,
      field_setup_uc: part2,
      field_activate: part3,
      field_run: part4,
      field_stop: part5
    }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest {
  mut field_task : String
}
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest::new() -> Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest {
  {
    field_task: "",
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestCodec::new(
    ) -> Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/GetEGMSettingsRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_42cca857367e08720f989416d18d6a1f7d677f7e5bf49435b9735a9eb10a8f9c",
    min_wire_bytes: 4, max_wire_bytes: 68 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestCodec,
    value : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 68, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequestCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest,
    Int] {
  if input.length() < 4 || input.length() > 68 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest) -> Unit {
  let part0 = value.field_task
  writer.text(part0, 64)
}
fn read_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsRequest {
  let part0 = reader.text(64)
  { field_task: part0 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse {
  mut field_settings : Ros1Abb_rapid_sm_addin_msgsEGMSettings
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse::new() -> Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse {
  {
    field_settings: Ros1Abb_rapid_sm_addin_msgsEGMSettings::new(),
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseCodec::new(
    ) -> Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/GetEGMSettingsResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_094fd8b0b992c26d708bbd09952d36a3921ad5e5e66f45edb9d19af5ec3472bc",
    min_wire_bytes: 261, max_wire_bytes: 1285 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseCodec,
    value : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1285, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 261 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponseCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse,
    Int] {
  if input.length() < 261 || input.length() > 1285 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse) -> Unit {
  let part0 = value.field_settings
  write_Ros1Abb_rapid_sm_addin_msgsEGMSettings(writer, part0)
  let part1 = value.field_result_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_message
  writer.text(part2, 512)
}
fn read_Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsGetEGMSettingsResponse {
  let part0 = read_Ros1Abb_rapid_sm_addin_msgsEGMSettings(reader)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.text(512)
  { field_settings: part0, field_result_code: part1, field_message: part2 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsStateMachineState {
  mut field_rapid_task : String
  mut field_sm_state : Int
  mut field_egm_action : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineState::new() -> Ros1Abb_rapid_sm_addin_msgsStateMachineState {
  {
    field_rapid_task: "",
    field_sm_state: 0,
    field_egm_action: 0,
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::new() -> Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/StateMachineState",
    native_identity: None,
    codec_identity: "UWVMROS1_9ef8cc3a0438ad892acc1a2f485039ca49abce6fedf40cc5d9b2fe03dd9490bb",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec,
    value : Ros1Abb_rapid_sm_addin_msgsStateMachineState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsStateMachineState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsStateMachineState,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsStateMachineState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsStateMachineState(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsStateMachineState) -> Unit {
  let part0 = value.field_rapid_task
  writer.text(part0, 512)
  let part1 = value.field_sm_state
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.field_egm_action
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros1Abb_rapid_sm_addin_msgsStateMachineState(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsStateMachineState {
  let part0 = reader.text(512)
  let part1 = reader.unsigned(1).to_int()
  let part2 = reader.unsigned(1).to_int()
  { field_rapid_task: part0, field_sm_state: part1, field_egm_action: part2 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsRuntimeState {
  mut field_header : Ros1Std_msgsHeader
  mut field_state_machines : Array[Ros1Abb_rapid_sm_addin_msgsStateMachineState]
}
pub fn Ros1Abb_rapid_sm_addin_msgsRuntimeState::new() -> Ros1Abb_rapid_sm_addin_msgsRuntimeState {
  {
    field_header: Ros1Std_msgsHeader::new(),
    field_state_machines: [],
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsRuntimeStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsRuntimeStateCodec::new() -> Ros1Abb_rapid_sm_addin_msgsRuntimeStateCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/RuntimeState",
    native_identity: None,
    codec_identity: "UWVMROS1_50d7eab2eed3ce0b55160e85b44b4108d966290f6b8f126980ee452846f3660c",
    min_wire_bytes: 20, max_wire_bytes: 8372 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsRuntimeStateCodec::encode(_self : Ros1Abb_rapid_sm_addin_msgsRuntimeStateCodec,
    value : Ros1Abb_rapid_sm_addin_msgsRuntimeState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8372, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsRuntimeState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsRuntimeStateCodec::decode(_self : Ros1Abb_rapid_sm_addin_msgsRuntimeStateCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsRuntimeState,
    Int] {
  if input.length() < 20 || input.length() > 8372 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsRuntimeState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsRuntimeState(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsRuntimeState) -> Unit {
  let part0 = value.field_header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.field_state_machines
  let count1 = part1.length()
  if count1 > 16 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros1Abb_rapid_sm_addin_msgsStateMachineState(writer, element)
  }
}
fn read_Ros1Abb_rapid_sm_addin_msgsRuntimeState(reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsRuntimeState {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 : Array[Ros1Abb_rapid_sm_addin_msgsStateMachineState] = []
  let count1 = reader.count(16, 6)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros1Abb_rapid_sm_addin_msgsStateMachineState(reader))
  }
  { field_header: part0, field_state_machines: part1 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest {
  mut field_task : String
  mut field_settings : Ros1Abb_rapid_sm_addin_msgsEGMSettings
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest::new() -> Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest {
  {
    field_task: "",
    field_settings: Ros1Abb_rapid_sm_addin_msgsEGMSettings::new(),
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestCodec::new(
    ) -> Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/SetEGMSettingsRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_fe85c34f8dff2c0a547f89385d75771af13a03d997b880ab7be2eb84ea800155",
    min_wire_bytes: 259, max_wire_bytes: 835 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestCodec,
    value : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 835, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 259 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequestCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest,
    Int] {
  if input.length() < 259 || input.length() > 835 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest) -> Unit {
  let part0 = value.field_task
  writer.text(part0, 64)
  let part1 = value.field_settings
  write_Ros1Abb_rapid_sm_addin_msgsEGMSettings(writer, part1)
}
fn read_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsRequest {
  let part0 = reader.text(64)
  let part1 = read_Ros1Abb_rapid_sm_addin_msgsEGMSettings(reader)
  { field_task: part0, field_settings: part1 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse::new() -> Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseCodec::new(
    ) -> Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/SetEGMSettingsResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_c0d4e594a51a6cdd245ad03b6e27bbdc298c5c9fbe26cc25fa3594deef9b2591",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseCodec,
    value : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponseCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsSetEGMSettingsResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest {
  mut field_task : String
  mut field_routine : String
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest::new() -> Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest {
  {
    field_task: "",
    field_routine: "",
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestCodec::new(
    ) -> Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/SetRAPIDRoutineRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_b16ba3e98ee1d45864532b01f914746f041e49463b9330ef6056e427d199a5a3",
    min_wire_bytes: 8, max_wire_bytes: 584 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestCodec,
    value : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 584, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequestCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest,
    Int] {
  if input.length() < 8 || input.length() > 584 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest) -> Unit {
  let part0 = value.field_task
  writer.text(part0, 64)
  let part1 = value.field_routine
  writer.text(part1, 512)
}
fn read_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineRequest {
  let part0 = reader.text(64)
  let part1 = reader.text(512)
  { field_task: part0, field_routine: part1 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse::new() -> Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseCodec::new(
    ) -> Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/SetRAPIDRoutineResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_44de2385f12a8612fa75ca7c3f97b07f22d04e920bdeca0f0bd7fed5322c680e",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseCodec,
    value : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponseCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsSetRAPIDRoutineResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest {
  mut field_task : String
  mut field_command : Int
  mut field_target_position : Float
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest::new() -> Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest {
  {
    field_task: "",
    field_command: 0,
    field_target_position: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::new(
    ) -> Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/SetSGCommandRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_e39d7fee66c1efb9ea963216823f6e10bd632d78634d8c47f3283a1a1779f0c2",
    min_wire_bytes: 9, max_wire_bytes: 73 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec,
    value : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 73, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest,
    Int] {
  if input.length() < 9 || input.length() > 73 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest) -> Unit {
  let part0 = value.field_task
  writer.text(part0, 64)
  let part1 = value.field_command
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.field_target_position
  writer.float32(part2)
}
fn read_Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequest {
  let part0 = reader.text(64)
  let part1 = reader.unsigned(1).to_int()
  let part2 = reader.float32()
  { field_task: part0, field_command: part1, field_target_position: part2 }
}

pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse::new() -> Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseCodec::new(
    ) -> Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseCodec {
  { ros_version: 1, native_type: "abb_rapid_sm_addin_msgs/SetSGCommandResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_2f22b2098d86dd0764277247eb7f64dccecebf0cddce85654b01c1928eb9c192",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseCodec::encode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseCodec,
    value : Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseCodec::decode(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponseCodec,
    input : Bytes) -> Result[Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse(writer : BoundedWriter,
    value : Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse(
    reader : BoundedReader) -> Ros1Abb_rapid_sm_addin_msgsSetSGCommandResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_robot_msgsGetFileContentsRequest {
  mut field_filename : String
}
pub fn Ros1Abb_robot_msgsGetFileContentsRequest::new() -> Ros1Abb_robot_msgsGetFileContentsRequest {
  {
    field_filename: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetFileContentsRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetFileContentsRequestCodec::new() -> Ros1Abb_robot_msgsGetFileContentsRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetFileContentsRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_75f5802b385cc1efb524fadea657fda1d5cc4298c5720222d33cd3dd39656f21",
    min_wire_bytes: 4, max_wire_bytes: 516 }
}
pub fn Ros1Abb_robot_msgsGetFileContentsRequestCodec::encode(_self : Ros1Abb_robot_msgsGetFileContentsRequestCodec,
    value : Ros1Abb_robot_msgsGetFileContentsRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 516, error: 0 }
  write_Ros1Abb_robot_msgsGetFileContentsRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetFileContentsRequestCodec::decode(_self : Ros1Abb_robot_msgsGetFileContentsRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetFileContentsRequest,
    Int] {
  if input.length() < 4 || input.length() > 516 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetFileContentsRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetFileContentsRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetFileContentsRequest) -> Unit {
  let part0 = value.field_filename
  writer.text(part0, 512)
}
fn read_Ros1Abb_robot_msgsGetFileContentsRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsGetFileContentsRequest {
  let part0 = reader.text(512)
  { field_filename: part0 }
}

pub(all) struct Ros1Abb_robot_msgsGetFileContentsResponse {
  mut field_contents : String
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsGetFileContentsResponse::new() -> Ros1Abb_robot_msgsGetFileContentsResponse {
  {
    field_contents: "",
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetFileContentsResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetFileContentsResponseCodec::new() -> Ros1Abb_robot_msgsGetFileContentsResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetFileContentsResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_693b53ed168f81a7c93ac8083977c4f8bd6f4a3999d079f5b47029699ba68fdb",
    min_wire_bytes: 10, max_wire_bytes: 4618 }
}
pub fn Ros1Abb_robot_msgsGetFileContentsResponseCodec::encode(_self : Ros1Abb_robot_msgsGetFileContentsResponseCodec,
    value : Ros1Abb_robot_msgsGetFileContentsResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4618, error: 0 }
  write_Ros1Abb_robot_msgsGetFileContentsResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetFileContentsResponseCodec::decode(_self : Ros1Abb_robot_msgsGetFileContentsResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetFileContentsResponse,
    Int] {
  if input.length() < 10 || input.length() > 4618 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetFileContentsResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetFileContentsResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetFileContentsResponse) -> Unit {
  let part0 = value.field_contents
  writer.text(part0, 4096)
  let part1 = value.field_result_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_message
  writer.text(part2, 512)
}
fn read_Ros1Abb_robot_msgsGetFileContentsResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsGetFileContentsResponse {
  let part0 = reader.text(4096)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.text(512)
  { field_contents: part0, field_result_code: part1, field_message: part2 }
}

pub(all) struct Ros1Abb_robot_msgsGetIOSignalRequest {
  mut field_signal : String
}
pub fn Ros1Abb_robot_msgsGetIOSignalRequest::new() -> Ros1Abb_robot_msgsGetIOSignalRequest {
  {
    field_signal: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetIOSignalRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetIOSignalRequestCodec::new() -> Ros1Abb_robot_msgsGetIOSignalRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetIOSignalRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_d98f7577756b476cac0dd325d45f333fcd2b735df7dce58fb660790b5a91f83b",
    min_wire_bytes: 4, max_wire_bytes: 516 }
}
pub fn Ros1Abb_robot_msgsGetIOSignalRequestCodec::encode(_self : Ros1Abb_robot_msgsGetIOSignalRequestCodec,
    value : Ros1Abb_robot_msgsGetIOSignalRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 516, error: 0 }
  write_Ros1Abb_robot_msgsGetIOSignalRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetIOSignalRequestCodec::decode(_self : Ros1Abb_robot_msgsGetIOSignalRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetIOSignalRequest,
    Int] {
  if input.length() < 4 || input.length() > 516 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetIOSignalRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetIOSignalRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetIOSignalRequest) -> Unit {
  let part0 = value.field_signal
  writer.text(part0, 512)
}
fn read_Ros1Abb_robot_msgsGetIOSignalRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsGetIOSignalRequest {
  let part0 = reader.text(512)
  { field_signal: part0 }
}

pub(all) struct Ros1Abb_robot_msgsGetIOSignalResponse {
  mut field_value : String
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsGetIOSignalResponse::new() -> Ros1Abb_robot_msgsGetIOSignalResponse {
  {
    field_value: "",
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetIOSignalResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetIOSignalResponseCodec::new() -> Ros1Abb_robot_msgsGetIOSignalResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetIOSignalResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_10a66146c4815b0d758ec81dde1c552695c97a8727ee995299018b23f129d79e",
    min_wire_bytes: 10, max_wire_bytes: 1034 }
}
pub fn Ros1Abb_robot_msgsGetIOSignalResponseCodec::encode(_self : Ros1Abb_robot_msgsGetIOSignalResponseCodec,
    value : Ros1Abb_robot_msgsGetIOSignalResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1034, error: 0 }
  write_Ros1Abb_robot_msgsGetIOSignalResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetIOSignalResponseCodec::decode(_self : Ros1Abb_robot_msgsGetIOSignalResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetIOSignalResponse,
    Int] {
  if input.length() < 10 || input.length() > 1034 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetIOSignalResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetIOSignalResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetIOSignalResponse) -> Unit {
  let part0 = value.field_value
  writer.text(part0, 512)
  let part1 = value.field_result_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_message
  writer.text(part2, 512)
}
fn read_Ros1Abb_robot_msgsGetIOSignalResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsGetIOSignalResponse {
  let part0 = reader.text(512)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.text(512)
  { field_value: part0, field_result_code: part1, field_message: part2 }
}

pub(all) struct Ros1Abb_robot_msgsRAPIDSymbolPath {
  mut field_task : String
  mut field_module : String
  mut field_symbol : String
}
pub fn Ros1Abb_robot_msgsRAPIDSymbolPath::new() -> Ros1Abb_robot_msgsRAPIDSymbolPath {
  {
    field_task: "",
    field_module: "",
    field_symbol: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsRAPIDSymbolPathCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsRAPIDSymbolPathCodec::new() -> Ros1Abb_robot_msgsRAPIDSymbolPathCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/RAPIDSymbolPath",
    native_identity: None,
    codec_identity: "UWVMROS1_07308d9ce1e71a02f5cc3546cdbaaa0b24a06534a55aa3ee3354b498038faad2",
    min_wire_bytes: 12, max_wire_bytes: 204 }
}
pub fn Ros1Abb_robot_msgsRAPIDSymbolPathCodec::encode(_self : Ros1Abb_robot_msgsRAPIDSymbolPathCodec,
    value : Ros1Abb_robot_msgsRAPIDSymbolPath) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 204, error: 0 }
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsRAPIDSymbolPathCodec::decode(_self : Ros1Abb_robot_msgsRAPIDSymbolPathCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsRAPIDSymbolPath,
    Int] {
  if input.length() < 12 || input.length() > 204 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer : BoundedWriter, value : Ros1Abb_robot_msgsRAPIDSymbolPath) -> Unit {
  let part0 = value.field_task
  writer.text(part0, 64)
  let part1 = value.field_module
  writer.text(part1, 64)
  let part2 = value.field_symbol
  writer.text(part2, 64)
}
fn read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader : BoundedReader) -> Ros1Abb_robot_msgsRAPIDSymbolPath {
  let part0 = reader.text(64)
  let part1 = reader.text(64)
  let part2 = reader.text(64)
  { field_task: part0, field_module: part1, field_symbol: part2 }
}

pub(all) struct Ros1Abb_robot_msgsGetRAPIDBoolRequest {
  mut field_path : Ros1Abb_robot_msgsRAPIDSymbolPath
}
pub fn Ros1Abb_robot_msgsGetRAPIDBoolRequest::new() -> Ros1Abb_robot_msgsGetRAPIDBoolRequest {
  {
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath::new(),
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRAPIDBoolRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRAPIDBoolRequestCodec::new() -> Ros1Abb_robot_msgsGetRAPIDBoolRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRAPIDBoolRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_46e49c0d6796175d0c56460dd4c7d2557deaa8db4f1a3bec40b53636d3b44b96",
    min_wire_bytes: 12, max_wire_bytes: 204 }
}
pub fn Ros1Abb_robot_msgsGetRAPIDBoolRequestCodec::encode(_self : Ros1Abb_robot_msgsGetRAPIDBoolRequestCodec,
    value : Ros1Abb_robot_msgsGetRAPIDBoolRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 204, error: 0 }
  write_Ros1Abb_robot_msgsGetRAPIDBoolRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRAPIDBoolRequestCodec::decode(_self : Ros1Abb_robot_msgsGetRAPIDBoolRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRAPIDBoolRequest,
    Int] {
  if input.length() < 12 || input.length() > 204 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRAPIDBoolRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRAPIDBoolRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRAPIDBoolRequest) -> Unit {
  let part0 = value.field_path
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, part0)
}
fn read_Ros1Abb_robot_msgsGetRAPIDBoolRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsGetRAPIDBoolRequest {
  let part0 = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  { field_path: part0 }
}

pub(all) struct Ros1Abb_robot_msgsGetRAPIDBoolResponse {
  mut field_value : Bool
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsGetRAPIDBoolResponse::new() -> Ros1Abb_robot_msgsGetRAPIDBoolResponse {
  {
    field_value: false,
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRAPIDBoolResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRAPIDBoolResponseCodec::new() -> Ros1Abb_robot_msgsGetRAPIDBoolResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRAPIDBoolResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_bfe21e95cb79f1d9bc1bc1dc2f61c744a2a7dc49e5a5ed07b6c8619344b97b3f",
    min_wire_bytes: 7, max_wire_bytes: 519 }
}
pub fn Ros1Abb_robot_msgsGetRAPIDBoolResponseCodec::encode(_self : Ros1Abb_robot_msgsGetRAPIDBoolResponseCodec,
    value : Ros1Abb_robot_msgsGetRAPIDBoolResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 519, error: 0 }
  write_Ros1Abb_robot_msgsGetRAPIDBoolResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 7 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRAPIDBoolResponseCodec::decode(_self : Ros1Abb_robot_msgsGetRAPIDBoolResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRAPIDBoolResponse,
    Int] {
  if input.length() < 7 || input.length() > 519 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRAPIDBoolResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRAPIDBoolResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRAPIDBoolResponse) -> Unit {
  let part0 = value.field_value
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.field_result_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_message
  writer.text(part2, 512)
}
fn read_Ros1Abb_robot_msgsGetRAPIDBoolResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsGetRAPIDBoolResponse {
  let part0 = reader.boolean()
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.text(512)
  { field_value: part0, field_result_code: part1, field_message: part2 }
}

pub(all) struct Ros1Abb_robot_msgsGetRAPIDDnumRequest {
  mut field_path : Ros1Abb_robot_msgsRAPIDSymbolPath
}
pub fn Ros1Abb_robot_msgsGetRAPIDDnumRequest::new() -> Ros1Abb_robot_msgsGetRAPIDDnumRequest {
  {
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath::new(),
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRAPIDDnumRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRAPIDDnumRequestCodec::new() -> Ros1Abb_robot_msgsGetRAPIDDnumRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRAPIDDnumRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_9058d8774de0da657344a00d75a7f75878da2b0453bf25708bc8ed7f45c90c9d",
    min_wire_bytes: 12, max_wire_bytes: 204 }
}
pub fn Ros1Abb_robot_msgsGetRAPIDDnumRequestCodec::encode(_self : Ros1Abb_robot_msgsGetRAPIDDnumRequestCodec,
    value : Ros1Abb_robot_msgsGetRAPIDDnumRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 204, error: 0 }
  write_Ros1Abb_robot_msgsGetRAPIDDnumRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRAPIDDnumRequestCodec::decode(_self : Ros1Abb_robot_msgsGetRAPIDDnumRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRAPIDDnumRequest,
    Int] {
  if input.length() < 12 || input.length() > 204 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRAPIDDnumRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRAPIDDnumRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRAPIDDnumRequest) -> Unit {
  let part0 = value.field_path
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, part0)
}
fn read_Ros1Abb_robot_msgsGetRAPIDDnumRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsGetRAPIDDnumRequest {
  let part0 = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  { field_path: part0 }
}

pub(all) struct Ros1Abb_robot_msgsGetRAPIDDnumResponse {
  mut field_value : Double
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsGetRAPIDDnumResponse::new() -> Ros1Abb_robot_msgsGetRAPIDDnumResponse {
  {
    field_value: 0.0,
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRAPIDDnumResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRAPIDDnumResponseCodec::new() -> Ros1Abb_robot_msgsGetRAPIDDnumResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRAPIDDnumResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_9c209b4b12d733e33b76cc33ae93b6d561ce1eb7f8864429a56bd073317a01b3",
    min_wire_bytes: 14, max_wire_bytes: 526 }
}
pub fn Ros1Abb_robot_msgsGetRAPIDDnumResponseCodec::encode(_self : Ros1Abb_robot_msgsGetRAPIDDnumResponseCodec,
    value : Ros1Abb_robot_msgsGetRAPIDDnumResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 526, error: 0 }
  write_Ros1Abb_robot_msgsGetRAPIDDnumResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 14 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRAPIDDnumResponseCodec::decode(_self : Ros1Abb_robot_msgsGetRAPIDDnumResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRAPIDDnumResponse,
    Int] {
  if input.length() < 14 || input.length() > 526 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRAPIDDnumResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRAPIDDnumResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRAPIDDnumResponse) -> Unit {
  let part0 = value.field_value
  writer.float64(part0)
  let part1 = value.field_result_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_message
  writer.text(part2, 512)
}
fn read_Ros1Abb_robot_msgsGetRAPIDDnumResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsGetRAPIDDnumResponse {
  let part0 = reader.float64()
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.text(512)
  { field_value: part0, field_result_code: part1, field_message: part2 }
}

pub(all) struct Ros1Abb_robot_msgsGetRAPIDNumRequest {
  mut field_path : Ros1Abb_robot_msgsRAPIDSymbolPath
}
pub fn Ros1Abb_robot_msgsGetRAPIDNumRequest::new() -> Ros1Abb_robot_msgsGetRAPIDNumRequest {
  {
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath::new(),
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRAPIDNumRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRAPIDNumRequestCodec::new() -> Ros1Abb_robot_msgsGetRAPIDNumRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRAPIDNumRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_a316395c8a19b7c0a9c3a555e625fffc7d647c7b567f38c53b1c3735b50ee910",
    min_wire_bytes: 12, max_wire_bytes: 204 }
}
pub fn Ros1Abb_robot_msgsGetRAPIDNumRequestCodec::encode(_self : Ros1Abb_robot_msgsGetRAPIDNumRequestCodec,
    value : Ros1Abb_robot_msgsGetRAPIDNumRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 204, error: 0 }
  write_Ros1Abb_robot_msgsGetRAPIDNumRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRAPIDNumRequestCodec::decode(_self : Ros1Abb_robot_msgsGetRAPIDNumRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRAPIDNumRequest,
    Int] {
  if input.length() < 12 || input.length() > 204 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRAPIDNumRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRAPIDNumRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRAPIDNumRequest) -> Unit {
  let part0 = value.field_path
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, part0)
}
fn read_Ros1Abb_robot_msgsGetRAPIDNumRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsGetRAPIDNumRequest {
  let part0 = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  { field_path: part0 }
}

pub(all) struct Ros1Abb_robot_msgsGetRAPIDNumResponse {
  mut field_value : Float
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsGetRAPIDNumResponse::new() -> Ros1Abb_robot_msgsGetRAPIDNumResponse {
  {
    field_value: (0U).reinterpret_as_float(),
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRAPIDNumResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRAPIDNumResponseCodec::new() -> Ros1Abb_robot_msgsGetRAPIDNumResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRAPIDNumResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_1573cba9a9046a6b304a49e3a77266fa0d6f615d2ea9a24692c25616970fd9b0",
    min_wire_bytes: 10, max_wire_bytes: 522 }
}
pub fn Ros1Abb_robot_msgsGetRAPIDNumResponseCodec::encode(_self : Ros1Abb_robot_msgsGetRAPIDNumResponseCodec,
    value : Ros1Abb_robot_msgsGetRAPIDNumResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 522, error: 0 }
  write_Ros1Abb_robot_msgsGetRAPIDNumResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRAPIDNumResponseCodec::decode(_self : Ros1Abb_robot_msgsGetRAPIDNumResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRAPIDNumResponse,
    Int] {
  if input.length() < 10 || input.length() > 522 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRAPIDNumResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRAPIDNumResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRAPIDNumResponse) -> Unit {
  let part0 = value.field_value
  writer.float32(part0)
  let part1 = value.field_result_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_message
  writer.text(part2, 512)
}
fn read_Ros1Abb_robot_msgsGetRAPIDNumResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsGetRAPIDNumResponse {
  let part0 = reader.float32()
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.text(512)
  { field_value: part0, field_result_code: part1, field_message: part2 }
}

pub(all) struct Ros1Abb_robot_msgsGetRAPIDStringRequest {
  mut field_path : Ros1Abb_robot_msgsRAPIDSymbolPath
}
pub fn Ros1Abb_robot_msgsGetRAPIDStringRequest::new() -> Ros1Abb_robot_msgsGetRAPIDStringRequest {
  {
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath::new(),
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRAPIDStringRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRAPIDStringRequestCodec::new() -> Ros1Abb_robot_msgsGetRAPIDStringRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRAPIDStringRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_56514142e9e064aa43d09078b49ed8ee0366189727c35a9bc130b35007da4c9c",
    min_wire_bytes: 12, max_wire_bytes: 204 }
}
pub fn Ros1Abb_robot_msgsGetRAPIDStringRequestCodec::encode(_self : Ros1Abb_robot_msgsGetRAPIDStringRequestCodec,
    value : Ros1Abb_robot_msgsGetRAPIDStringRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 204, error: 0 }
  write_Ros1Abb_robot_msgsGetRAPIDStringRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRAPIDStringRequestCodec::decode(_self : Ros1Abb_robot_msgsGetRAPIDStringRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRAPIDStringRequest,
    Int] {
  if input.length() < 12 || input.length() > 204 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRAPIDStringRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRAPIDStringRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRAPIDStringRequest) -> Unit {
  let part0 = value.field_path
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, part0)
}
fn read_Ros1Abb_robot_msgsGetRAPIDStringRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsGetRAPIDStringRequest {
  let part0 = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  { field_path: part0 }
}

pub(all) struct Ros1Abb_robot_msgsGetRAPIDStringResponse {
  mut field_value : String
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsGetRAPIDStringResponse::new() -> Ros1Abb_robot_msgsGetRAPIDStringResponse {
  {
    field_value: "",
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRAPIDStringResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRAPIDStringResponseCodec::new() -> Ros1Abb_robot_msgsGetRAPIDStringResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRAPIDStringResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_d1188827af3c307a721f8128b6f14fa6020f3187afce8a4162ce6562cdd1c854",
    min_wire_bytes: 10, max_wire_bytes: 1034 }
}
pub fn Ros1Abb_robot_msgsGetRAPIDStringResponseCodec::encode(_self : Ros1Abb_robot_msgsGetRAPIDStringResponseCodec,
    value : Ros1Abb_robot_msgsGetRAPIDStringResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1034, error: 0 }
  write_Ros1Abb_robot_msgsGetRAPIDStringResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRAPIDStringResponseCodec::decode(_self : Ros1Abb_robot_msgsGetRAPIDStringResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRAPIDStringResponse,
    Int] {
  if input.length() < 10 || input.length() > 1034 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRAPIDStringResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRAPIDStringResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRAPIDStringResponse) -> Unit {
  let part0 = value.field_value
  writer.text(part0, 512)
  let part1 = value.field_result_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_message
  writer.text(part2, 512)
}
fn read_Ros1Abb_robot_msgsGetRAPIDStringResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsGetRAPIDStringResponse {
  let part0 = reader.text(512)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.text(512)
  { field_value: part0, field_result_code: part1, field_message: part2 }
}

pub(all) struct Ros1Abb_robot_msgsGetRAPIDSymbolRequest {
  mut field_path : Ros1Abb_robot_msgsRAPIDSymbolPath
}
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolRequest::new() -> Ros1Abb_robot_msgsGetRAPIDSymbolRequest {
  {
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath::new(),
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRAPIDSymbolRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolRequestCodec::new() -> Ros1Abb_robot_msgsGetRAPIDSymbolRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRAPIDSymbolRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_31302ad912a8ff39b56a429bc9dae22cbfc2c2101b8cd05162d00d9206aecf5b",
    min_wire_bytes: 12, max_wire_bytes: 204 }
}
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolRequestCodec::encode(_self : Ros1Abb_robot_msgsGetRAPIDSymbolRequestCodec,
    value : Ros1Abb_robot_msgsGetRAPIDSymbolRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 204, error: 0 }
  write_Ros1Abb_robot_msgsGetRAPIDSymbolRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolRequestCodec::decode(_self : Ros1Abb_robot_msgsGetRAPIDSymbolRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRAPIDSymbolRequest,
    Int] {
  if input.length() < 12 || input.length() > 204 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRAPIDSymbolRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRAPIDSymbolRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRAPIDSymbolRequest) -> Unit {
  let part0 = value.field_path
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, part0)
}
fn read_Ros1Abb_robot_msgsGetRAPIDSymbolRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsGetRAPIDSymbolRequest {
  let part0 = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  { field_path: part0 }
}

pub(all) struct Ros1Abb_robot_msgsGetRAPIDSymbolResponse {
  mut field_value : String
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolResponse::new() -> Ros1Abb_robot_msgsGetRAPIDSymbolResponse {
  {
    field_value: "",
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRAPIDSymbolResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolResponseCodec::new() -> Ros1Abb_robot_msgsGetRAPIDSymbolResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRAPIDSymbolResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_182dc465ea5fb9543791b6fb76520313cee1ed472ab0296c8ef7a9ed3d4d110f",
    min_wire_bytes: 10, max_wire_bytes: 1034 }
}
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolResponseCodec::encode(_self : Ros1Abb_robot_msgsGetRAPIDSymbolResponseCodec,
    value : Ros1Abb_robot_msgsGetRAPIDSymbolResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1034, error: 0 }
  write_Ros1Abb_robot_msgsGetRAPIDSymbolResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRAPIDSymbolResponseCodec::decode(_self : Ros1Abb_robot_msgsGetRAPIDSymbolResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRAPIDSymbolResponse,
    Int] {
  if input.length() < 10 || input.length() > 1034 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRAPIDSymbolResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRAPIDSymbolResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRAPIDSymbolResponse) -> Unit {
  let part0 = value.field_value
  writer.text(part0, 512)
  let part1 = value.field_result_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_message
  writer.text(part2, 512)
}
fn read_Ros1Abb_robot_msgsGetRAPIDSymbolResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsGetRAPIDSymbolResponse {
  let part0 = reader.text(512)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.text(512)
  { field_value: part0, field_result_code: part1, field_message: part2 }
}

pub(all) enum Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest { Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestEmpty }
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest::new(
    ) -> Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest { Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestEmpty }
pub(all) struct Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestCodec::new(
    ) -> Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRobotControllerDescriptionRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_bc5f87f4d0f33cbc640c8188fbb15c9b0f43b3067f2406700d6f5bd2475089b6",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestCodec::encode(
    _self : Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestCodec,
    value : Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestCodec::decode(
    _self : Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest) -> Unit {
}
fn read_Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest(
    reader : BoundedReader) -> Ros1Abb_robot_msgsGetRobotControllerDescriptionRequest {
  Ros1Abb_robot_msgsGetRobotControllerDescriptionRequestEmpty
}

pub(all) struct Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse {
  mut field_description : String
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse::new(
    ) -> Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse {
  {
    field_description: "",
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetRobotControllerDescriptionResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionResponseCodec::new(
    ) -> Ros1Abb_robot_msgsGetRobotControllerDescriptionResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetRobotControllerDescriptionResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_7db41283fbe12a010e526b87d77a5bb7faecdf85595ef2dc13f14bfed56b6e39",
    min_wire_bytes: 10, max_wire_bytes: 4618 }
}
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionResponseCodec::encode(
    _self : Ros1Abb_robot_msgsGetRobotControllerDescriptionResponseCodec,
    value : Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4618, error: 0 }
  write_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetRobotControllerDescriptionResponseCodec::decode(
    _self : Ros1Abb_robot_msgsGetRobotControllerDescriptionResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse,
    Int] {
  if input.length() < 10 || input.length() > 4618 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse) -> Unit {
  let part0 = value.field_description
  writer.text(part0, 4096)
  let part1 = value.field_result_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_message
  writer.text(part2, 512)
}
fn read_Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse(
    reader : BoundedReader) -> Ros1Abb_robot_msgsGetRobotControllerDescriptionResponse {
  let part0 = reader.text(4096)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.text(512)
  { field_description: part0, field_result_code: part1, field_message: part2 }
}

pub(all) enum Ros1Abb_robot_msgsGetSpeedRatioRequest { Ros1Abb_robot_msgsGetSpeedRatioRequestEmpty }
pub fn Ros1Abb_robot_msgsGetSpeedRatioRequest::new(
    ) -> Ros1Abb_robot_msgsGetSpeedRatioRequest { Ros1Abb_robot_msgsGetSpeedRatioRequestEmpty }
pub(all) struct Ros1Abb_robot_msgsGetSpeedRatioRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetSpeedRatioRequestCodec::new() -> Ros1Abb_robot_msgsGetSpeedRatioRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetSpeedRatioRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_82230aebf6fa923e09bcd413ecb3b4803a6f1cfd3e8334e0ce0c496b73008373",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros1Abb_robot_msgsGetSpeedRatioRequestCodec::encode(_self : Ros1Abb_robot_msgsGetSpeedRatioRequestCodec,
    value : Ros1Abb_robot_msgsGetSpeedRatioRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Abb_robot_msgsGetSpeedRatioRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetSpeedRatioRequestCodec::decode(_self : Ros1Abb_robot_msgsGetSpeedRatioRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetSpeedRatioRequest,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetSpeedRatioRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetSpeedRatioRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetSpeedRatioRequest) -> Unit {
}
fn read_Ros1Abb_robot_msgsGetSpeedRatioRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsGetSpeedRatioRequest {
  Ros1Abb_robot_msgsGetSpeedRatioRequestEmpty
}

pub(all) struct Ros1Abb_robot_msgsGetSpeedRatioResponse {
  mut field_speed_ratio : Int
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsGetSpeedRatioResponse::new() -> Ros1Abb_robot_msgsGetSpeedRatioResponse {
  {
    field_speed_ratio: 0,
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsGetSpeedRatioResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsGetSpeedRatioResponseCodec::new() -> Ros1Abb_robot_msgsGetSpeedRatioResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/GetSpeedRatioResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_7784360ddafa1b8ad9626fde0afa2b2335f6a294507036c3aee953df99e91940",
    min_wire_bytes: 7, max_wire_bytes: 519 }
}
pub fn Ros1Abb_robot_msgsGetSpeedRatioResponseCodec::encode(_self : Ros1Abb_robot_msgsGetSpeedRatioResponseCodec,
    value : Ros1Abb_robot_msgsGetSpeedRatioResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 519, error: 0 }
  write_Ros1Abb_robot_msgsGetSpeedRatioResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 7 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsGetSpeedRatioResponseCodec::decode(_self : Ros1Abb_robot_msgsGetSpeedRatioResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsGetSpeedRatioResponse,
    Int] {
  if input.length() < 7 || input.length() > 519 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsGetSpeedRatioResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsGetSpeedRatioResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsGetSpeedRatioResponse) -> Unit {
  let part0 = value.field_speed_ratio
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.field_result_code
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_message
  writer.text(part2, 512)
}
fn read_Ros1Abb_robot_msgsGetSpeedRatioResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsGetSpeedRatioResponse {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.text(512)
  { field_speed_ratio: part0, field_result_code: part1, field_message: part2 }
}

pub(all) struct Ros1Abb_robot_msgsMechanicalUnitState {
  mut field_name : String
  mut field_activated : Bool
}
pub fn Ros1Abb_robot_msgsMechanicalUnitState::new() -> Ros1Abb_robot_msgsMechanicalUnitState {
  {
    field_name: "",
    field_activated: false,
  }
}
pub(all) struct Ros1Abb_robot_msgsMechanicalUnitStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsMechanicalUnitStateCodec::new() -> Ros1Abb_robot_msgsMechanicalUnitStateCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/MechanicalUnitState",
    native_identity: None,
    codec_identity: "UWVMROS1_872cc6e8bdf32426bb9e24322c951452aab6ebcbc1f2998f4fb19c34abece8fa",
    min_wire_bytes: 5, max_wire_bytes: 69 }
}
pub fn Ros1Abb_robot_msgsMechanicalUnitStateCodec::encode(_self : Ros1Abb_robot_msgsMechanicalUnitStateCodec,
    value : Ros1Abb_robot_msgsMechanicalUnitState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 69, error: 0 }
  write_Ros1Abb_robot_msgsMechanicalUnitState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsMechanicalUnitStateCodec::decode(_self : Ros1Abb_robot_msgsMechanicalUnitStateCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsMechanicalUnitState,
    Int] {
  if input.length() < 5 || input.length() > 69 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsMechanicalUnitState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsMechanicalUnitState(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsMechanicalUnitState) -> Unit {
  let part0 = value.field_name
  writer.text(part0, 64)
  let part1 = value.field_activated
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Abb_robot_msgsMechanicalUnitState(reader : BoundedReader) -> Ros1Abb_robot_msgsMechanicalUnitState {
  let part0 = reader.text(64)
  let part1 = reader.boolean()
  { field_name: part0, field_activated: part1 }
}

pub(all) struct Ros1Abb_robot_msgsRAPIDTaskState {
  mut field_name : String
  mut field_activated : Bool
  mut field_execution_state : Int
  mut field_motion_task : Bool
}
pub fn Ros1Abb_robot_msgsRAPIDTaskState::new() -> Ros1Abb_robot_msgsRAPIDTaskState {
  {
    field_name: "",
    field_activated: false,
    field_execution_state: 0,
    field_motion_task: false,
  }
}
pub(all) struct Ros1Abb_robot_msgsRAPIDTaskStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsRAPIDTaskStateCodec::new() -> Ros1Abb_robot_msgsRAPIDTaskStateCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/RAPIDTaskState",
    native_identity: None,
    codec_identity: "UWVMROS1_ab1245cc352efa91cdcc8de801392857e25a4101a141439554b761525b31b947",
    min_wire_bytes: 7, max_wire_bytes: 71 }
}
pub fn Ros1Abb_robot_msgsRAPIDTaskStateCodec::encode(_self : Ros1Abb_robot_msgsRAPIDTaskStateCodec,
    value : Ros1Abb_robot_msgsRAPIDTaskState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 71, error: 0 }
  write_Ros1Abb_robot_msgsRAPIDTaskState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 7 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsRAPIDTaskStateCodec::decode(_self : Ros1Abb_robot_msgsRAPIDTaskStateCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsRAPIDTaskState,
    Int] {
  if input.length() < 7 || input.length() > 71 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsRAPIDTaskState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsRAPIDTaskState(writer : BoundedWriter, value : Ros1Abb_robot_msgsRAPIDTaskState) -> Unit {
  let part0 = value.field_name
  writer.text(part0, 64)
  let part1 = value.field_activated
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.field_execution_state
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part3 = value.field_motion_task
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Abb_robot_msgsRAPIDTaskState(reader : BoundedReader) -> Ros1Abb_robot_msgsRAPIDTaskState {
  let part0 = reader.text(64)
  let part1 = reader.boolean()
  let part2 = reader.unsigned(1).to_int()
  let part3 = reader.boolean()
  { field_name: part0, field_activated: part1, field_execution_state: part2, field_motion_task: part3 }
}

pub(all) enum Ros1Abb_robot_msgsServiceResponses { Ros1Abb_robot_msgsServiceResponsesEmpty }
pub fn Ros1Abb_robot_msgsServiceResponses::new(
    ) -> Ros1Abb_robot_msgsServiceResponses { Ros1Abb_robot_msgsServiceResponsesEmpty }
pub(all) struct Ros1Abb_robot_msgsServiceResponsesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::new() -> Ros1Abb_robot_msgsServiceResponsesCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/ServiceResponses",
    native_identity: None,
    codec_identity: "UWVMROS1_f0a3c4b160bf0ca52dbbb4e26d2c8a7d3c6a40ac70787ba59cf181945e4276d4",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::encode(_self : Ros1Abb_robot_msgsServiceResponsesCodec,
    value : Ros1Abb_robot_msgsServiceResponses) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Abb_robot_msgsServiceResponses(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::decode(_self : Ros1Abb_robot_msgsServiceResponsesCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsServiceResponses,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsServiceResponses(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsServiceResponses(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsServiceResponses) -> Unit {
}
fn read_Ros1Abb_robot_msgsServiceResponses(reader : BoundedReader) -> Ros1Abb_robot_msgsServiceResponses {
  Ros1Abb_robot_msgsServiceResponsesEmpty
}

pub(all) struct Ros1Abb_robot_msgsSetFileContentsRequest {
  mut field_filename : String
  mut field_contents : String
}
pub fn Ros1Abb_robot_msgsSetFileContentsRequest::new() -> Ros1Abb_robot_msgsSetFileContentsRequest {
  {
    field_filename: "",
    field_contents: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetFileContentsRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetFileContentsRequestCodec::new() -> Ros1Abb_robot_msgsSetFileContentsRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetFileContentsRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_f764448d9754e9ebc5e5fab64f0c8ebb01c534ec7b95751ed7d58e8ce0bd3012",
    min_wire_bytes: 8, max_wire_bytes: 4616 }
}
pub fn Ros1Abb_robot_msgsSetFileContentsRequestCodec::encode(_self : Ros1Abb_robot_msgsSetFileContentsRequestCodec,
    value : Ros1Abb_robot_msgsSetFileContentsRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4616, error: 0 }
  write_Ros1Abb_robot_msgsSetFileContentsRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetFileContentsRequestCodec::decode(_self : Ros1Abb_robot_msgsSetFileContentsRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetFileContentsRequest,
    Int] {
  if input.length() < 8 || input.length() > 4616 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetFileContentsRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetFileContentsRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetFileContentsRequest) -> Unit {
  let part0 = value.field_filename
  writer.text(part0, 512)
  let part1 = value.field_contents
  writer.text(part1, 4096)
}
fn read_Ros1Abb_robot_msgsSetFileContentsRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsSetFileContentsRequest {
  let part0 = reader.text(512)
  let part1 = reader.text(4096)
  { field_filename: part0, field_contents: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetFileContentsResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsSetFileContentsResponse::new() -> Ros1Abb_robot_msgsSetFileContentsResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetFileContentsResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetFileContentsResponseCodec::new() -> Ros1Abb_robot_msgsSetFileContentsResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetFileContentsResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_3de2a08b8e158e0612898880d6d9c98f1995828eb53bd5639b47f730c6cbefd0",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_robot_msgsSetFileContentsResponseCodec::encode(_self : Ros1Abb_robot_msgsSetFileContentsResponseCodec,
    value : Ros1Abb_robot_msgsSetFileContentsResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_robot_msgsSetFileContentsResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetFileContentsResponseCodec::decode(_self : Ros1Abb_robot_msgsSetFileContentsResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetFileContentsResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetFileContentsResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetFileContentsResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetFileContentsResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetFileContentsResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsSetFileContentsResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetIOSignalRequest {
  mut field_signal : String
  mut field_value : String
}
pub fn Ros1Abb_robot_msgsSetIOSignalRequest::new() -> Ros1Abb_robot_msgsSetIOSignalRequest {
  {
    field_signal: "",
    field_value: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetIOSignalRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetIOSignalRequestCodec::new() -> Ros1Abb_robot_msgsSetIOSignalRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetIOSignalRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_57a0197e2a5de7efd2fc91d945d699be24559baec6651179a1256f1d9d35bbc9",
    min_wire_bytes: 8, max_wire_bytes: 1032 }
}
pub fn Ros1Abb_robot_msgsSetIOSignalRequestCodec::encode(_self : Ros1Abb_robot_msgsSetIOSignalRequestCodec,
    value : Ros1Abb_robot_msgsSetIOSignalRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1032, error: 0 }
  write_Ros1Abb_robot_msgsSetIOSignalRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetIOSignalRequestCodec::decode(_self : Ros1Abb_robot_msgsSetIOSignalRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetIOSignalRequest,
    Int] {
  if input.length() < 8 || input.length() > 1032 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetIOSignalRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetIOSignalRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetIOSignalRequest) -> Unit {
  let part0 = value.field_signal
  writer.text(part0, 512)
  let part1 = value.field_value
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetIOSignalRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsSetIOSignalRequest {
  let part0 = reader.text(512)
  let part1 = reader.text(512)
  { field_signal: part0, field_value: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetIOSignalResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsSetIOSignalResponse::new() -> Ros1Abb_robot_msgsSetIOSignalResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetIOSignalResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetIOSignalResponseCodec::new() -> Ros1Abb_robot_msgsSetIOSignalResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetIOSignalResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_becc0f844ce6a7fabd8a683175edd8033ba5c943c2de152991755ee112b460e5",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_robot_msgsSetIOSignalResponseCodec::encode(_self : Ros1Abb_robot_msgsSetIOSignalResponseCodec,
    value : Ros1Abb_robot_msgsSetIOSignalResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_robot_msgsSetIOSignalResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetIOSignalResponseCodec::decode(_self : Ros1Abb_robot_msgsSetIOSignalResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetIOSignalResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetIOSignalResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetIOSignalResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetIOSignalResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetIOSignalResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsSetIOSignalResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetRAPIDBoolRequest {
  mut field_path : Ros1Abb_robot_msgsRAPIDSymbolPath
  mut field_value : Bool
}
pub fn Ros1Abb_robot_msgsSetRAPIDBoolRequest::new() -> Ros1Abb_robot_msgsSetRAPIDBoolRequest {
  {
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath::new(),
    field_value: false,
  }
}
pub(all) struct Ros1Abb_robot_msgsSetRAPIDBoolRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetRAPIDBoolRequestCodec::new() -> Ros1Abb_robot_msgsSetRAPIDBoolRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetRAPIDBoolRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_d8e5420678fe5feeffa20ad9ab8431678ec346f764c94871c4496c62e9dd8e8d",
    min_wire_bytes: 13, max_wire_bytes: 205 }
}
pub fn Ros1Abb_robot_msgsSetRAPIDBoolRequestCodec::encode(_self : Ros1Abb_robot_msgsSetRAPIDBoolRequestCodec,
    value : Ros1Abb_robot_msgsSetRAPIDBoolRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 205, error: 0 }
  write_Ros1Abb_robot_msgsSetRAPIDBoolRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 13 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetRAPIDBoolRequestCodec::decode(_self : Ros1Abb_robot_msgsSetRAPIDBoolRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetRAPIDBoolRequest,
    Int] {
  if input.length() < 13 || input.length() > 205 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetRAPIDBoolRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetRAPIDBoolRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetRAPIDBoolRequest) -> Unit {
  let part0 = value.field_path
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, part0)
  let part1 = value.field_value
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Abb_robot_msgsSetRAPIDBoolRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsSetRAPIDBoolRequest {
  let part0 = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  let part1 = reader.boolean()
  { field_path: part0, field_value: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetRAPIDBoolResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsSetRAPIDBoolResponse::new() -> Ros1Abb_robot_msgsSetRAPIDBoolResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetRAPIDBoolResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetRAPIDBoolResponseCodec::new() -> Ros1Abb_robot_msgsSetRAPIDBoolResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetRAPIDBoolResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_da2ae1231cb0c1ec452fb2733d5c99dcae78ad0bfd10771241708931b271bf13",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_robot_msgsSetRAPIDBoolResponseCodec::encode(_self : Ros1Abb_robot_msgsSetRAPIDBoolResponseCodec,
    value : Ros1Abb_robot_msgsSetRAPIDBoolResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_robot_msgsSetRAPIDBoolResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetRAPIDBoolResponseCodec::decode(_self : Ros1Abb_robot_msgsSetRAPIDBoolResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetRAPIDBoolResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetRAPIDBoolResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetRAPIDBoolResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetRAPIDBoolResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetRAPIDBoolResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsSetRAPIDBoolResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetRAPIDDnumRequest {
  mut field_path : Ros1Abb_robot_msgsRAPIDSymbolPath
  mut field_value : Double
}
pub fn Ros1Abb_robot_msgsSetRAPIDDnumRequest::new() -> Ros1Abb_robot_msgsSetRAPIDDnumRequest {
  {
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath::new(),
    field_value: 0.0,
  }
}
pub(all) struct Ros1Abb_robot_msgsSetRAPIDDnumRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetRAPIDDnumRequestCodec::new() -> Ros1Abb_robot_msgsSetRAPIDDnumRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetRAPIDDnumRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_0f17e3068f86bca6effb99f3bc850234b0163028f372340c450fce31657b9cf9",
    min_wire_bytes: 20, max_wire_bytes: 212 }
}
pub fn Ros1Abb_robot_msgsSetRAPIDDnumRequestCodec::encode(_self : Ros1Abb_robot_msgsSetRAPIDDnumRequestCodec,
    value : Ros1Abb_robot_msgsSetRAPIDDnumRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 212, error: 0 }
  write_Ros1Abb_robot_msgsSetRAPIDDnumRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetRAPIDDnumRequestCodec::decode(_self : Ros1Abb_robot_msgsSetRAPIDDnumRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetRAPIDDnumRequest,
    Int] {
  if input.length() < 20 || input.length() > 212 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetRAPIDDnumRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetRAPIDDnumRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetRAPIDDnumRequest) -> Unit {
  let part0 = value.field_path
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, part0)
  let part1 = value.field_value
  writer.float64(part1)
}
fn read_Ros1Abb_robot_msgsSetRAPIDDnumRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsSetRAPIDDnumRequest {
  let part0 = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  let part1 = reader.float64()
  { field_path: part0, field_value: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetRAPIDDnumResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsSetRAPIDDnumResponse::new() -> Ros1Abb_robot_msgsSetRAPIDDnumResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetRAPIDDnumResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetRAPIDDnumResponseCodec::new() -> Ros1Abb_robot_msgsSetRAPIDDnumResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetRAPIDDnumResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_1905aed9683e03494baa54627ddbaf4aed0b92357823c0c042f9b7c6a970c8ed",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_robot_msgsSetRAPIDDnumResponseCodec::encode(_self : Ros1Abb_robot_msgsSetRAPIDDnumResponseCodec,
    value : Ros1Abb_robot_msgsSetRAPIDDnumResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_robot_msgsSetRAPIDDnumResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetRAPIDDnumResponseCodec::decode(_self : Ros1Abb_robot_msgsSetRAPIDDnumResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetRAPIDDnumResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetRAPIDDnumResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetRAPIDDnumResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetRAPIDDnumResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetRAPIDDnumResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsSetRAPIDDnumResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetRAPIDNumRequest {
  mut field_path : Ros1Abb_robot_msgsRAPIDSymbolPath
  mut field_value : Float
}
pub fn Ros1Abb_robot_msgsSetRAPIDNumRequest::new() -> Ros1Abb_robot_msgsSetRAPIDNumRequest {
  {
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath::new(),
    field_value: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros1Abb_robot_msgsSetRAPIDNumRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetRAPIDNumRequestCodec::new() -> Ros1Abb_robot_msgsSetRAPIDNumRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetRAPIDNumRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_9982d02cb0b6ee5813f5fb38072d665226b7885aeb90517af881f4fc990f392f",
    min_wire_bytes: 16, max_wire_bytes: 208 }
}
pub fn Ros1Abb_robot_msgsSetRAPIDNumRequestCodec::encode(_self : Ros1Abb_robot_msgsSetRAPIDNumRequestCodec,
    value : Ros1Abb_robot_msgsSetRAPIDNumRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 208, error: 0 }
  write_Ros1Abb_robot_msgsSetRAPIDNumRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetRAPIDNumRequestCodec::decode(_self : Ros1Abb_robot_msgsSetRAPIDNumRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetRAPIDNumRequest,
    Int] {
  if input.length() < 16 || input.length() > 208 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetRAPIDNumRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetRAPIDNumRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetRAPIDNumRequest) -> Unit {
  let part0 = value.field_path
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, part0)
  let part1 = value.field_value
  writer.float32(part1)
}
fn read_Ros1Abb_robot_msgsSetRAPIDNumRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsSetRAPIDNumRequest {
  let part0 = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  let part1 = reader.float32()
  { field_path: part0, field_value: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetRAPIDNumResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsSetRAPIDNumResponse::new() -> Ros1Abb_robot_msgsSetRAPIDNumResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetRAPIDNumResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetRAPIDNumResponseCodec::new() -> Ros1Abb_robot_msgsSetRAPIDNumResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetRAPIDNumResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_af1181242b4afdb6d387d39c24d0bc343e872fb9ab21c0ec1e451785786a4e64",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_robot_msgsSetRAPIDNumResponseCodec::encode(_self : Ros1Abb_robot_msgsSetRAPIDNumResponseCodec,
    value : Ros1Abb_robot_msgsSetRAPIDNumResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_robot_msgsSetRAPIDNumResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetRAPIDNumResponseCodec::decode(_self : Ros1Abb_robot_msgsSetRAPIDNumResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetRAPIDNumResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetRAPIDNumResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetRAPIDNumResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetRAPIDNumResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetRAPIDNumResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsSetRAPIDNumResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetRAPIDStringRequest {
  mut field_path : Ros1Abb_robot_msgsRAPIDSymbolPath
  mut field_value : String
}
pub fn Ros1Abb_robot_msgsSetRAPIDStringRequest::new() -> Ros1Abb_robot_msgsSetRAPIDStringRequest {
  {
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath::new(),
    field_value: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetRAPIDStringRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetRAPIDStringRequestCodec::new() -> Ros1Abb_robot_msgsSetRAPIDStringRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetRAPIDStringRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_e06839324f8abfa8780b683386f87bab1ec04f1e6463e63c0599f5c2f8a75f0c",
    min_wire_bytes: 16, max_wire_bytes: 720 }
}
pub fn Ros1Abb_robot_msgsSetRAPIDStringRequestCodec::encode(_self : Ros1Abb_robot_msgsSetRAPIDStringRequestCodec,
    value : Ros1Abb_robot_msgsSetRAPIDStringRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 720, error: 0 }
  write_Ros1Abb_robot_msgsSetRAPIDStringRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetRAPIDStringRequestCodec::decode(_self : Ros1Abb_robot_msgsSetRAPIDStringRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetRAPIDStringRequest,
    Int] {
  if input.length() < 16 || input.length() > 720 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetRAPIDStringRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetRAPIDStringRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetRAPIDStringRequest) -> Unit {
  let part0 = value.field_path
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, part0)
  let part1 = value.field_value
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetRAPIDStringRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsSetRAPIDStringRequest {
  let part0 = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  let part1 = reader.text(512)
  { field_path: part0, field_value: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetRAPIDStringResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsSetRAPIDStringResponse::new() -> Ros1Abb_robot_msgsSetRAPIDStringResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetRAPIDStringResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetRAPIDStringResponseCodec::new() -> Ros1Abb_robot_msgsSetRAPIDStringResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetRAPIDStringResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_e175bdff5a150722b8c50cf2e1c0f28a99289a0b148339efdee4b034ea3b96b4",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_robot_msgsSetRAPIDStringResponseCodec::encode(_self : Ros1Abb_robot_msgsSetRAPIDStringResponseCodec,
    value : Ros1Abb_robot_msgsSetRAPIDStringResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_robot_msgsSetRAPIDStringResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetRAPIDStringResponseCodec::decode(_self : Ros1Abb_robot_msgsSetRAPIDStringResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetRAPIDStringResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetRAPIDStringResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetRAPIDStringResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetRAPIDStringResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetRAPIDStringResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsSetRAPIDStringResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetRAPIDSymbolRequest {
  mut field_path : Ros1Abb_robot_msgsRAPIDSymbolPath
  mut field_value : String
}
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolRequest::new() -> Ros1Abb_robot_msgsSetRAPIDSymbolRequest {
  {
    field_path: Ros1Abb_robot_msgsRAPIDSymbolPath::new(),
    field_value: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetRAPIDSymbolRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolRequestCodec::new() -> Ros1Abb_robot_msgsSetRAPIDSymbolRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetRAPIDSymbolRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_0654a5a8e5ec42f4feab54b086a008e02a74d44df65d2fcf60f007736e3fec7d",
    min_wire_bytes: 16, max_wire_bytes: 720 }
}
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolRequestCodec::encode(_self : Ros1Abb_robot_msgsSetRAPIDSymbolRequestCodec,
    value : Ros1Abb_robot_msgsSetRAPIDSymbolRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 720, error: 0 }
  write_Ros1Abb_robot_msgsSetRAPIDSymbolRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolRequestCodec::decode(_self : Ros1Abb_robot_msgsSetRAPIDSymbolRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetRAPIDSymbolRequest,
    Int] {
  if input.length() < 16 || input.length() > 720 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetRAPIDSymbolRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetRAPIDSymbolRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetRAPIDSymbolRequest) -> Unit {
  let part0 = value.field_path
  write_Ros1Abb_robot_msgsRAPIDSymbolPath(writer, part0)
  let part1 = value.field_value
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetRAPIDSymbolRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsSetRAPIDSymbolRequest {
  let part0 = read_Ros1Abb_robot_msgsRAPIDSymbolPath(reader)
  let part1 = reader.text(512)
  { field_path: part0, field_value: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetRAPIDSymbolResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolResponse::new() -> Ros1Abb_robot_msgsSetRAPIDSymbolResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetRAPIDSymbolResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolResponseCodec::new() -> Ros1Abb_robot_msgsSetRAPIDSymbolResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetRAPIDSymbolResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_a4ca0a8821337d1f16ba1f2ad2b232aceaba419308ca03b27f43dac427a32846",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolResponseCodec::encode(_self : Ros1Abb_robot_msgsSetRAPIDSymbolResponseCodec,
    value : Ros1Abb_robot_msgsSetRAPIDSymbolResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_robot_msgsSetRAPIDSymbolResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetRAPIDSymbolResponseCodec::decode(_self : Ros1Abb_robot_msgsSetRAPIDSymbolResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetRAPIDSymbolResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetRAPIDSymbolResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetRAPIDSymbolResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetRAPIDSymbolResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetRAPIDSymbolResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsSetRAPIDSymbolResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSetSpeedRatioRequest {
  mut field_speed_ratio : Int
}
pub fn Ros1Abb_robot_msgsSetSpeedRatioRequest::new() -> Ros1Abb_robot_msgsSetSpeedRatioRequest {
  {
    field_speed_ratio: 0,
  }
}
pub(all) struct Ros1Abb_robot_msgsSetSpeedRatioRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetSpeedRatioRequestCodec::new() -> Ros1Abb_robot_msgsSetSpeedRatioRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetSpeedRatioRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_a6ac368d243d488901b03d5e4303600d5f0eaf62150801103e5f5f9c0863fab5",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros1Abb_robot_msgsSetSpeedRatioRequestCodec::encode(_self : Ros1Abb_robot_msgsSetSpeedRatioRequestCodec,
    value : Ros1Abb_robot_msgsSetSpeedRatioRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros1Abb_robot_msgsSetSpeedRatioRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetSpeedRatioRequestCodec::decode(_self : Ros1Abb_robot_msgsSetSpeedRatioRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetSpeedRatioRequest,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetSpeedRatioRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetSpeedRatioRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetSpeedRatioRequest) -> Unit {
  let part0 = value.field_speed_ratio
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros1Abb_robot_msgsSetSpeedRatioRequest(reader : BoundedReader) -> Ros1Abb_robot_msgsSetSpeedRatioRequest {
  let part0 = reader.unsigned(1).to_int()
  { field_speed_ratio: part0 }
}

pub(all) struct Ros1Abb_robot_msgsSetSpeedRatioResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsSetSpeedRatioResponse::new() -> Ros1Abb_robot_msgsSetSpeedRatioResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsSetSpeedRatioResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSetSpeedRatioResponseCodec::new() -> Ros1Abb_robot_msgsSetSpeedRatioResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SetSpeedRatioResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_9775dc1029993d1dfdf5f3080e6ae4262177ba96cdc0fbe9851dc4fea16c70d8",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_robot_msgsSetSpeedRatioResponseCodec::encode(_self : Ros1Abb_robot_msgsSetSpeedRatioResponseCodec,
    value : Ros1Abb_robot_msgsSetSpeedRatioResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_robot_msgsSetSpeedRatioResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSetSpeedRatioResponseCodec::decode(_self : Ros1Abb_robot_msgsSetSpeedRatioResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSetSpeedRatioResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSetSpeedRatioResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSetSpeedRatioResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsSetSpeedRatioResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsSetSpeedRatioResponse(reader : BoundedReader) -> Ros1Abb_robot_msgsSetSpeedRatioResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Abb_robot_msgsSystemState {
  mut field_header : Ros1Std_msgsHeader
  mut field_motors_on : Bool
  mut field_auto_mode : Bool
  mut field_rapid_running : Bool
  mut field_rapid_tasks : Array[Ros1Abb_robot_msgsRAPIDTaskState]
  mut field_mechanical_units : Array[Ros1Abb_robot_msgsMechanicalUnitState]
}
pub fn Ros1Abb_robot_msgsSystemState::new() -> Ros1Abb_robot_msgsSystemState {
  {
    field_header: Ros1Std_msgsHeader::new(),
    field_motors_on: false,
    field_auto_mode: false,
    field_rapid_running: false,
    field_rapid_tasks: [],
    field_mechanical_units: [],
  }
}
pub(all) struct Ros1Abb_robot_msgsSystemStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsSystemStateCodec::new() -> Ros1Abb_robot_msgsSystemStateCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/SystemState",
    native_identity: None,
    codec_identity: "UWVMROS1_b57aa1fdf098aa78c51a96bd2978e02f97cbae67148c0028557d2a3e1e8630f2",
    min_wire_bytes: 27, max_wire_bytes: 2331 }
}
pub fn Ros1Abb_robot_msgsSystemStateCodec::encode(_self : Ros1Abb_robot_msgsSystemStateCodec,
    value : Ros1Abb_robot_msgsSystemState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2331, error: 0 }
  write_Ros1Abb_robot_msgsSystemState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 27 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsSystemStateCodec::decode(_self : Ros1Abb_robot_msgsSystemStateCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsSystemState,
    Int] {
  if input.length() < 27 || input.length() > 2331 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsSystemState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsSystemState(writer : BoundedWriter, value : Ros1Abb_robot_msgsSystemState) -> Unit {
  let part0 = value.field_header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.field_motors_on
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.field_auto_mode
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.field_rapid_running
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
  let part4 = value.field_rapid_tasks
  let count4 = part4.length()
  if count4 > 16 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    write_Ros1Abb_robot_msgsRAPIDTaskState(writer, element)
  }
  let part5 = value.field_mechanical_units
  let count5 = part5.length()
  if count5 > 16 { writer.error = 22; return () }
  writer.unsigned(count5.to_uint64(), 4)
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    write_Ros1Abb_robot_msgsMechanicalUnitState(writer, element)
  }
}
fn read_Ros1Abb_robot_msgsSystemState(reader : BoundedReader) -> Ros1Abb_robot_msgsSystemState {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 = reader.boolean()
  let part2 = reader.boolean()
  let part3 = reader.boolean()
  let part4 : Array[Ros1Abb_robot_msgsRAPIDTaskState] = []
  let count4 = reader.count(16, 7)
  for index = 0; index < count4; index = index + 1 {
    part4.push(read_Ros1Abb_robot_msgsRAPIDTaskState(reader))
  }
  let part5 : Array[Ros1Abb_robot_msgsMechanicalUnitState] = []
  let count5 = reader.count(16, 5)
  for index = 0; index < count5; index = index + 1 {
    part5.push(read_Ros1Abb_robot_msgsMechanicalUnitState(reader))
  }
    {
      field_header: part0,
      field_motors_on: part1,
      field_auto_mode: part2,
      field_rapid_running: part3,
      field_rapid_tasks: part4,
      field_mechanical_units: part5
    }
}

pub(all) enum Ros1Abb_robot_msgsTriggerWithResultCodeRequest { Ros1Abb_robot_msgsTriggerWithResultCodeRequestEmpty }
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeRequest::new(
    ) -> Ros1Abb_robot_msgsTriggerWithResultCodeRequest { Ros1Abb_robot_msgsTriggerWithResultCodeRequestEmpty }
pub(all) struct Ros1Abb_robot_msgsTriggerWithResultCodeRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeRequestCodec::new(
    ) -> Ros1Abb_robot_msgsTriggerWithResultCodeRequestCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/TriggerWithResultCodeRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_999f63504788e522f7d0108a895cf35cd101e9a50856e480ae9edabf791bcf94",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeRequestCodec::encode(
    _self : Ros1Abb_robot_msgsTriggerWithResultCodeRequestCodec,
    value : Ros1Abb_robot_msgsTriggerWithResultCodeRequest) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros1Abb_robot_msgsTriggerWithResultCodeRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeRequestCodec::decode(
    _self : Ros1Abb_robot_msgsTriggerWithResultCodeRequestCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsTriggerWithResultCodeRequest,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsTriggerWithResultCodeRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsTriggerWithResultCodeRequest(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsTriggerWithResultCodeRequest) -> Unit {
}
fn read_Ros1Abb_robot_msgsTriggerWithResultCodeRequest(
    reader : BoundedReader) -> Ros1Abb_robot_msgsTriggerWithResultCodeRequest {
  Ros1Abb_robot_msgsTriggerWithResultCodeRequestEmpty
}

pub(all) struct Ros1Abb_robot_msgsTriggerWithResultCodeResponse {
  mut field_result_code : Int
  mut field_message : String
}
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeResponse::new() -> Ros1Abb_robot_msgsTriggerWithResultCodeResponse {
  {
    field_result_code: 0,
    field_message: "",
  }
}
pub(all) struct Ros1Abb_robot_msgsTriggerWithResultCodeResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeResponseCodec::new(
    ) -> Ros1Abb_robot_msgsTriggerWithResultCodeResponseCodec {
  { ros_version: 1, native_type: "abb_robot_msgs/TriggerWithResultCodeResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_4ef5c987592e849766b82b7fd99a65b7a1e17605f3e3341c99803181887967ff",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeResponseCodec::encode(
    _self : Ros1Abb_robot_msgsTriggerWithResultCodeResponseCodec,
    value : Ros1Abb_robot_msgsTriggerWithResultCodeResponse) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros1Abb_robot_msgsTriggerWithResultCodeResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Abb_robot_msgsTriggerWithResultCodeResponseCodec::decode(
    _self : Ros1Abb_robot_msgsTriggerWithResultCodeResponseCodec,
    input : Bytes) -> Result[Ros1Abb_robot_msgsTriggerWithResultCodeResponse,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Abb_robot_msgsTriggerWithResultCodeResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Abb_robot_msgsTriggerWithResultCodeResponse(writer : BoundedWriter,
    value : Ros1Abb_robot_msgsTriggerWithResultCodeResponse) -> Unit {
  let part0 = value.field_result_code
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros1Abb_robot_msgsTriggerWithResultCodeResponse(
    reader : BoundedReader) -> Ros1Abb_robot_msgsTriggerWithResultCodeResponse {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros1Duration {
  mut field_sec : Int
  mut field_nsec : Int
}
pub fn Ros1Duration::new() -> Ros1Duration {
  {
    field_sec: 0,
    field_nsec: 0,
  }
}
pub(all) struct Ros1DurationCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1DurationCodec::new() -> Ros1DurationCodec {
  { ros_version: 1, native_type: "duration",
    native_identity: None,
    codec_identity: "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros1DurationCodec::encode(_self : Ros1DurationCodec, value : Ros1Duration) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Duration(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1DurationCodec::decode(_self : Ros1DurationCodec, input : Bytes) -> Result[Ros1Duration, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Duration(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Duration(writer : BoundedWriter, value : Ros1Duration) -> Unit {
  let part0 = value.field_sec
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_nsec
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Duration(reader : BoundedReader) -> Ros1Duration {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_sec: part0, field_nsec: part1 }
}

pub(all) struct Ros1Trajectory_msgsJointTrajectoryPoint {
  mut field_positions : Array[Double]
  mut field_velocities : Array[Double]
  mut field_accelerations : Array[Double]
  mut field_effort : Array[Double]
  mut field_time_from_start : Ros1Duration
}
pub fn Ros1Trajectory_msgsJointTrajectoryPoint::new() -> Ros1Trajectory_msgsJointTrajectoryPoint {
  {
    field_positions: [],
    field_velocities: [],
    field_accelerations: [],
    field_effort: [],
    field_time_from_start: Ros1Duration::new(),
  }
}
pub(all) struct Ros1Trajectory_msgsJointTrajectoryPointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Trajectory_msgsJointTrajectoryPointCodec::new() -> Ros1Trajectory_msgsJointTrajectoryPointCodec {
  { ros_version: 1, native_type: "trajectory_msgs/JointTrajectoryPoint",
    native_identity: None,
    codec_identity: "UWVMROS1_9773572fff8616235c4d7e23fccbe01f28dcfa62c7c80323a65c8c305feba3c5",
    min_wire_bytes: 24, max_wire_bytes: 408 }
}
pub fn Ros1Trajectory_msgsJointTrajectoryPointCodec::encode(_self : Ros1Trajectory_msgsJointTrajectoryPointCodec,
    value : Ros1Trajectory_msgsJointTrajectoryPoint) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 408, error: 0 }
  write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Trajectory_msgsJointTrajectoryPointCodec::decode(_self : Ros1Trajectory_msgsJointTrajectoryPointCodec,
    input : Bytes) -> Result[Ros1Trajectory_msgsJointTrajectoryPoint,
    Int] {
  if input.length() < 24 || input.length() > 408 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Trajectory_msgsJointTrajectoryPoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Trajectory_msgsJointTrajectoryPoint(writer : BoundedWriter,
    value : Ros1Trajectory_msgsJointTrajectoryPoint) -> Unit {
  let part0 = value.field_positions
  let count0 = part0.length()
  if count0 > 12 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.field_velocities
  let count1 = part1.length()
  if count1 > 12 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.field_accelerations
  let count2 = part2.length()
  if count2 > 12 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.field_effort
  let count3 = part3.length()
  if count3 > 12 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.field_time_from_start
  write_Ros1Duration(writer, part4)
}
fn read_Ros1Trajectory_msgsJointTrajectoryPoint(reader : BoundedReader) -> Ros1Trajectory_msgsJointTrajectoryPoint {
  let part0 : Array[Double] = []
  let count0 = reader.count(12, 8)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = reader.count(12, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 : Array[Double] = []
  let count2 = reader.count(12, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(12, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 = read_Ros1Duration(reader)
    {
      field_positions: part0,
      field_velocities: part1,
      field_accelerations: part2,
      field_effort: part3,
      field_time_from_start: part4
    }
}

pub(all) struct Ros1Trajectory_msgsJointTrajectory {
  mut field_header : Ros1Std_msgsHeader
  mut field_joint_names : Array[String]
  mut field_points : Array[Ros1Trajectory_msgsJointTrajectoryPoint]
}
pub fn Ros1Trajectory_msgsJointTrajectory::new() -> Ros1Trajectory_msgsJointTrajectory {
  {
    field_header: Ros1Std_msgsHeader::new(),
    field_joint_names: [],
    field_points: [],
  }
}
pub(all) struct Ros1Trajectory_msgsJointTrajectoryCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Trajectory_msgsJointTrajectoryCodec::new() -> Ros1Trajectory_msgsJointTrajectoryCodec {
  { ros_version: 1, native_type: "trajectory_msgs/JointTrajectory",
    native_identity: None,
    codec_identity: "UWVMROS1_079e6c432f0a858d6bd47c87aaf353a8b0676706809e0f984705b1a688de282b",
    min_wire_bytes: 24, max_wire_bytes: 4168 }
}
pub fn Ros1Trajectory_msgsJointTrajectoryCodec::encode(_self : Ros1Trajectory_msgsJointTrajectoryCodec,
    value : Ros1Trajectory_msgsJointTrajectory) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4168, error: 0 }
  write_Ros1Trajectory_msgsJointTrajectory(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Trajectory_msgsJointTrajectoryCodec::decode(_self : Ros1Trajectory_msgsJointTrajectoryCodec,
    input : Bytes) -> Result[Ros1Trajectory_msgsJointTrajectory,
    Int] {
  if input.length() < 24 || input.length() > 4168 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Trajectory_msgsJointTrajectory(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Trajectory_msgsJointTrajectory(writer : BoundedWriter,
    value : Ros1Trajectory_msgsJointTrajectory) -> Unit {
  let part0 = value.field_header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.field_joint_names
  let count1 = part1.length()
  if count1 > 12 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 64)
  }
  let part2 = value.field_points
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, element)
  }
}
fn read_Ros1Trajectory_msgsJointTrajectory(reader : BoundedReader) -> Ros1Trajectory_msgsJointTrajectory {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(12, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(64))
  }
  let part2 : Array[Ros1Trajectory_msgsJointTrajectoryPoint] = []
  let count2 = reader.count(8, 24)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros1Trajectory_msgsJointTrajectoryPoint(reader))
  }
  { field_header: part0, field_joint_names: part1, field_points: part2 }
}

pub(all) struct Ros1Control_msgsJointTolerance {
  mut field_name : String
  mut field_position : Double
  mut field_velocity : Double
  mut field_acceleration : Double
}
pub fn Ros1Control_msgsJointTolerance::new() -> Ros1Control_msgsJointTolerance {
  {
    field_name: "",
    field_position: 0.0,
    field_velocity: 0.0,
    field_acceleration: 0.0,
  }
}
pub(all) struct Ros1Control_msgsJointToleranceCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Control_msgsJointToleranceCodec::new() -> Ros1Control_msgsJointToleranceCodec {
  { ros_version: 1, native_type: "control_msgs/JointTolerance",
    native_identity: None,
    codec_identity: "UWVMROS1_c9f71f98726d4a6621dcc8db96a394a24941a79d9041c8ad7a07724ee64d3c88",
    min_wire_bytes: 28, max_wire_bytes: 92 }
}
pub fn Ros1Control_msgsJointToleranceCodec::encode(_self : Ros1Control_msgsJointToleranceCodec,
    value : Ros1Control_msgsJointTolerance) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 92, error: 0 }
  write_Ros1Control_msgsJointTolerance(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Control_msgsJointToleranceCodec::decode(_self : Ros1Control_msgsJointToleranceCodec,
    input : Bytes) -> Result[Ros1Control_msgsJointTolerance,
    Int] {
  if input.length() < 28 || input.length() > 92 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Control_msgsJointTolerance(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Control_msgsJointTolerance(writer : BoundedWriter, value : Ros1Control_msgsJointTolerance) -> Unit {
  let part0 = value.field_name
  writer.text(part0, 64)
  let part1 = value.field_position
  writer.float64(part1)
  let part2 = value.field_velocity
  writer.float64(part2)
  let part3 = value.field_acceleration
  writer.float64(part3)
}
fn read_Ros1Control_msgsJointTolerance(reader : BoundedReader) -> Ros1Control_msgsJointTolerance {
  let part0 = reader.text(64)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { field_name: part0, field_position: part1, field_velocity: part2, field_acceleration: part3 }
}

pub(all) struct Ros1Control_msgsFollowJointTrajectoryGoal {
  mut field_trajectory : Ros1Trajectory_msgsJointTrajectory
  mut field_path_tolerance : Array[Ros1Control_msgsJointTolerance]
  mut field_goal_tolerance : Array[Ros1Control_msgsJointTolerance]
  mut field_goal_time_tolerance : Ros1Duration
}
pub fn Ros1Control_msgsFollowJointTrajectoryGoal::new() -> Ros1Control_msgsFollowJointTrajectoryGoal {
  {
    field_trajectory: Ros1Trajectory_msgsJointTrajectory::new(),
    field_path_tolerance: [],
    field_goal_tolerance: [],
    field_goal_time_tolerance: Ros1Duration::new(),
  }
}
pub(all) struct Ros1Control_msgsFollowJointTrajectoryGoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Control_msgsFollowJointTrajectoryGoalCodec::new() -> Ros1Control_msgsFollowJointTrajectoryGoalCodec {
  { ros_version: 1, native_type: "control_msgs/FollowJointTrajectoryGoal",
    native_identity: None,
    codec_identity: "UWVMROS1_e9fda6f9e732450f2cf1af046ceb67815e6e1a22105eda2fee38f8f470252d40",
    min_wire_bytes: 40, max_wire_bytes: 6392 }
}
pub fn Ros1Control_msgsFollowJointTrajectoryGoalCodec::encode(_self : Ros1Control_msgsFollowJointTrajectoryGoalCodec,
    value : Ros1Control_msgsFollowJointTrajectoryGoal) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 6392, error: 0 }
  write_Ros1Control_msgsFollowJointTrajectoryGoal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Control_msgsFollowJointTrajectoryGoalCodec::decode(_self : Ros1Control_msgsFollowJointTrajectoryGoalCodec,
    input : Bytes) -> Result[Ros1Control_msgsFollowJointTrajectoryGoal,
    Int] {
  if input.length() < 40 || input.length() > 6392 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Control_msgsFollowJointTrajectoryGoal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Control_msgsFollowJointTrajectoryGoal(writer : BoundedWriter,
    value : Ros1Control_msgsFollowJointTrajectoryGoal) -> Unit {
  let part0 = value.field_trajectory
  write_Ros1Trajectory_msgsJointTrajectory(writer, part0)
  let part1 = value.field_path_tolerance
  let count1 = part1.length()
  if count1 > 12 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros1Control_msgsJointTolerance(writer, element)
  }
  let part2 = value.field_goal_tolerance
  let count2 = part2.length()
  if count2 > 12 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros1Control_msgsJointTolerance(writer, element)
  }
  let part3 = value.field_goal_time_tolerance
  write_Ros1Duration(writer, part3)
}
fn read_Ros1Control_msgsFollowJointTrajectoryGoal(reader : BoundedReader) -> Ros1Control_msgsFollowJointTrajectoryGoal {
  let part0 = read_Ros1Trajectory_msgsJointTrajectory(reader)
  let part1 : Array[Ros1Control_msgsJointTolerance] = []
  let count1 = reader.count(12, 28)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros1Control_msgsJointTolerance(reader))
  }
  let part2 : Array[Ros1Control_msgsJointTolerance] = []
  let count2 = reader.count(12, 28)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros1Control_msgsJointTolerance(reader))
  }
  let part3 = read_Ros1Duration(reader)
    {
      field_trajectory: part0,
      field_path_tolerance: part1,
      field_goal_tolerance: part2,
      field_goal_time_tolerance: part3
    }
}

pub(all) struct Ros1Control_msgsFollowJointTrajectoryResult {
  mut field_error_code : Int
  mut field_error_string : String
}
pub fn Ros1Control_msgsFollowJointTrajectoryResult::new() -> Ros1Control_msgsFollowJointTrajectoryResult {
  {
    field_error_code: 0,
    field_error_string: "",
  }
}
pub(all) struct Ros1Control_msgsFollowJointTrajectoryResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Control_msgsFollowJointTrajectoryResultCodec::new() -> Ros1Control_msgsFollowJointTrajectoryResultCodec {
  { ros_version: 1, native_type: "control_msgs/FollowJointTrajectoryResult",
    native_identity: None,
    codec_identity: "UWVMROS1_71da832be83c08804668aa63576768bbe831f21f5f270cdc8d851b30d2fc4281",
    min_wire_bytes: 8, max_wire_bytes: 4104 }
}
pub fn Ros1Control_msgsFollowJointTrajectoryResultCodec::encode(
    _self : Ros1Control_msgsFollowJointTrajectoryResultCodec,
    value : Ros1Control_msgsFollowJointTrajectoryResult) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4104, error: 0 }
  write_Ros1Control_msgsFollowJointTrajectoryResult(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Control_msgsFollowJointTrajectoryResultCodec::decode(
    _self : Ros1Control_msgsFollowJointTrajectoryResultCodec,
    input : Bytes) -> Result[Ros1Control_msgsFollowJointTrajectoryResult,
    Int] {
  if input.length() < 8 || input.length() > 4104 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Control_msgsFollowJointTrajectoryResult(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Control_msgsFollowJointTrajectoryResult(writer : BoundedWriter,
    value : Ros1Control_msgsFollowJointTrajectoryResult) -> Unit {
  let part0 = value.field_error_code
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_error_string
  writer.text(part1, 4096)
}
fn read_Ros1Control_msgsFollowJointTrajectoryResult(
    reader : BoundedReader) -> Ros1Control_msgsFollowJointTrajectoryResult {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.text(4096)
  { field_error_code: part0, field_error_string: part1 }
}

pub(all) struct Ros1Control_msgsFollowJointTrajectoryFeedback {
  mut field_header : Ros1Std_msgsHeader
  mut field_joint_names : Array[String]
  mut field_desired : Ros1Trajectory_msgsJointTrajectoryPoint
  mut field_actual : Ros1Trajectory_msgsJointTrajectoryPoint
  mut field_error : Ros1Trajectory_msgsJointTrajectoryPoint
}
pub fn Ros1Control_msgsFollowJointTrajectoryFeedback::new() -> Ros1Control_msgsFollowJointTrajectoryFeedback {
  {
    field_header: Ros1Std_msgsHeader::new(),
    field_joint_names: [],
    field_desired: Ros1Trajectory_msgsJointTrajectoryPoint::new(),
    field_actual: Ros1Trajectory_msgsJointTrajectoryPoint::new(),
    field_error: Ros1Trajectory_msgsJointTrajectoryPoint::new(),
  }
}
pub(all) struct Ros1Control_msgsFollowJointTrajectoryFeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Control_msgsFollowJointTrajectoryFeedbackCodec::new() -> Ros1Control_msgsFollowJointTrajectoryFeedbackCodec {
  { ros_version: 1, native_type: "control_msgs/FollowJointTrajectoryFeedback",
    native_identity: None,
    codec_identity: "UWVMROS1_a1ad5a1f8a00b60f97d06209737993bd395d83d1a008705d65193b63933b62a8",
    min_wire_bytes: 92, max_wire_bytes: 2124 }
}
pub fn Ros1Control_msgsFollowJointTrajectoryFeedbackCodec::encode(
    _self : Ros1Control_msgsFollowJointTrajectoryFeedbackCodec,
    value : Ros1Control_msgsFollowJointTrajectoryFeedback) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2124, error: 0 }
  write_Ros1Control_msgsFollowJointTrajectoryFeedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 92 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Control_msgsFollowJointTrajectoryFeedbackCodec::decode(
    _self : Ros1Control_msgsFollowJointTrajectoryFeedbackCodec,
    input : Bytes) -> Result[Ros1Control_msgsFollowJointTrajectoryFeedback,
    Int] {
  if input.length() < 92 || input.length() > 2124 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Control_msgsFollowJointTrajectoryFeedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Control_msgsFollowJointTrajectoryFeedback(writer : BoundedWriter,
    value : Ros1Control_msgsFollowJointTrajectoryFeedback) -> Unit {
  let part0 = value.field_header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.field_joint_names
  let count1 = part1.length()
  if count1 > 12 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 64)
  }
  let part2 = value.field_desired
  write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, part2)
  let part3 = value.field_actual
  write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, part3)
  let part4 = value.field_error
  write_Ros1Trajectory_msgsJointTrajectoryPoint(writer, part4)
}
fn read_Ros1Control_msgsFollowJointTrajectoryFeedback(
    reader : BoundedReader) -> Ros1Control_msgsFollowJointTrajectoryFeedback {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(12, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(64))
  }
  let part2 = read_Ros1Trajectory_msgsJointTrajectoryPoint(reader)
  let part3 = read_Ros1Trajectory_msgsJointTrajectoryPoint(reader)
  let part4 = read_Ros1Trajectory_msgsJointTrajectoryPoint(reader)
  { field_header: part0, field_joint_names: part1, field_desired: part2, field_actual: part3, field_error: part4 }
}

pub(all) struct Ros1Sensor_msgsJointState {
  mut field_header : Ros1Std_msgsHeader
  mut field_name : Array[String]
  mut field_position : Array[Double]
  mut field_velocity : Array[Double]
  mut field_effort : Array[Double]
}
pub fn Ros1Sensor_msgsJointState::new() -> Ros1Sensor_msgsJointState {
  {
    field_header: Ros1Std_msgsHeader::new(),
    field_name: [],
    field_position: [],
    field_velocity: [],
    field_effort: [],
  }
}
pub(all) struct Ros1Sensor_msgsJointStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Sensor_msgsJointStateCodec::new() -> Ros1Sensor_msgsJointStateCodec {
  { ros_version: 1, native_type: "sensor_msgs/JointState",
    native_identity: None,
    codec_identity: "UWVMROS1_8d1bb9c4903dd4b070a5ab157b3590815722d6b574d610c9b9fb5ead8be7a057",
    min_wire_bytes: 32, max_wire_bytes: 1200 }
}
pub fn Ros1Sensor_msgsJointStateCodec::encode(_self : Ros1Sensor_msgsJointStateCodec,
    value : Ros1Sensor_msgsJointState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1200, error: 0 }
  write_Ros1Sensor_msgsJointState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Sensor_msgsJointStateCodec::decode(_self : Ros1Sensor_msgsJointStateCodec,
    input : Bytes) -> Result[Ros1Sensor_msgsJointState,
    Int] {
  if input.length() < 32 || input.length() > 1200 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Sensor_msgsJointState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Sensor_msgsJointState(writer : BoundedWriter, value : Ros1Sensor_msgsJointState) -> Unit {
  let part0 = value.field_header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.field_name
  let count1 = part1.length()
  if count1 > 12 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 64)
  }
  let part2 = value.field_position
  let count2 = part2.length()
  if count2 > 12 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.field_velocity
  let count3 = part3.length()
  if count3 > 12 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.field_effort
  let count4 = part4.length()
  if count4 > 12 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
}
fn read_Ros1Sensor_msgsJointState(reader : BoundedReader) -> Ros1Sensor_msgsJointState {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(12, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(64))
  }
  let part2 : Array[Double] = []
  let count2 = reader.count(12, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(12, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 : Array[Double] = []
  let count4 = reader.count(12, 8)
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.float64())
  }
  { field_header: part0, field_name: part1, field_position: part2, field_velocity: part3, field_effort: part4 }
}


/// @brief Original abb_egm_msgs/EGMChannelState.EGM_UNDEFINED constant; no instance bytes or ROS authority.
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::constant_EGM_UNDEFINED(
    _self : Ros1Abb_egm_msgsEGMChannelStateCodec) -> Int { 1 }

/// @brief Original abb_egm_msgs/EGMChannelState.EGM_ERROR constant; no instance bytes or ROS authority.
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::constant_EGM_ERROR(
    _self : Ros1Abb_egm_msgsEGMChannelStateCodec) -> Int { 2 }

/// @brief Original abb_egm_msgs/EGMChannelState.EGM_STOPPED constant; no instance bytes or ROS authority.
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::constant_EGM_STOPPED(
    _self : Ros1Abb_egm_msgsEGMChannelStateCodec) -> Int { 3 }

/// @brief Original abb_egm_msgs/EGMChannelState.EGM_RUNNING constant; no instance bytes or ROS authority.
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::constant_EGM_RUNNING(
    _self : Ros1Abb_egm_msgsEGMChannelStateCodec) -> Int { 4 }

/// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_UNDEFINED constant; no instance bytes or ROS authority.
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::constant_MOTORS_UNDEFINED(
    _self : Ros1Abb_egm_msgsEGMChannelStateCodec) -> Int { 1 }

/// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_ON constant; no instance bytes or ROS authority.
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::constant_MOTORS_ON(
    _self : Ros1Abb_egm_msgsEGMChannelStateCodec) -> Int { 2 }

/// @brief Original abb_egm_msgs/EGMChannelState.MOTORS_OFF constant; no instance bytes or ROS authority.
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::constant_MOTORS_OFF(
    _self : Ros1Abb_egm_msgsEGMChannelStateCodec) -> Int { 3 }

/// @brief Original abb_egm_msgs/EGMChannelState.RAPID_UNDEFINED constant; no instance bytes or ROS authority.
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::constant_RAPID_UNDEFINED(
    _self : Ros1Abb_egm_msgsEGMChannelStateCodec) -> Int { 1 }

/// @brief Original abb_egm_msgs/EGMChannelState.RAPID_STOPPED constant; no instance bytes or ROS authority.
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::constant_RAPID_STOPPED(
    _self : Ros1Abb_egm_msgsEGMChannelStateCodec) -> Int { 2 }

/// @brief Original abb_egm_msgs/EGMChannelState.RAPID_RUNNING constant; no instance bytes or ROS authority.
pub fn Ros1Abb_egm_msgsEGMChannelStateCodec::constant_RAPID_RUNNING(
    _self : Ros1Abb_egm_msgsEGMChannelStateCodec) -> Int { 3 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_UNKNOWN constant; no instance bytes or
/// ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_SM_STATE_UNKNOWN(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 1 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_IDLE constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_SM_STATE_IDLE(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 2 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_INITIALIZE constant; no instance bytes or
/// ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_SM_STATE_INITIALIZE(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 3 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_RAPID_ROUTINE constant; no instance
/// bytes or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_SM_STATE_RUN_RAPID_ROUTINE(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 4 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.SM_STATE_RUN_EGM_ROUTINE constant; no instance
/// bytes or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_SM_STATE_RUN_EGM_ROUTINE(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 5 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_UNKNOWN constant; no instance bytes or
/// ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_EGM_ACTION_UNKNOWN(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 1 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_NONE constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_EGM_ACTION_NONE(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 2 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_JOINT constant; no instance bytes
/// or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_EGM_ACTION_RUN_JOINT(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 3 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_RUN_POSE constant; no instance bytes or
/// ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_EGM_ACTION_RUN_POSE(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 4 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_EGM_ACTION_STOP(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 5 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_START_STREAM constant; no instance
/// bytes or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_EGM_ACTION_START_STREAM(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 6 }

/// @brief Original abb_rapid_sm_addin_msgs/StateMachineState.EGM_ACTION_STOP_STREAM constant; no instance bytes
/// or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec::constant_EGM_ACTION_STOP_STREAM(
    _self : Ros1Abb_rapid_sm_addin_msgsStateMachineStateCodec) -> Int { 7 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_UNKNOWN constant; no instance bytes
/// or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_UNKNOWN(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 1 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_NONE constant; no instance bytes or
/// ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_NONE(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 2 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_INITIALIZE constant; no instance
/// bytes or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_INITIALIZE(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 3 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_CALIBRATE constant; no instance bytes
/// or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_CALIBRATE(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 4 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_MOVE_TO constant; no instance bytes
/// or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_MOVE_TO(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 5 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_IN constant; no instance bytes
/// or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_GRIP_IN(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 6 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_GRIP_OUT constant; no instance bytes
/// or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_GRIP_OUT(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 7 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_1 constant; no instance bytes
/// or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_BLOW_ON_1(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 8 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_ON_2 constant; no instance bytes
/// or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_BLOW_ON_2(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 9 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_1 constant; no instance
/// bytes or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_BLOW_OFF_1(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 10 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_BLOW_OFF_2 constant; no instance
/// bytes or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_BLOW_OFF_2(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 11 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_1 constant; no instance
/// bytes or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_VACUUM_ON_1(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 12 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_ON_2 constant; no instance
/// bytes or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_VACUUM_ON_2(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 13 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_1 constant; no instance
/// bytes or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_VACUUM_OFF_1(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 14 }

/// @brief Original abb_rapid_sm_addin_msgs/SetSGCommandRequest.SG_COMMAND_VACUUM_OFF_2 constant; no instance
/// bytes or ROS authority.
pub fn Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec::constant_SG_COMMAND_VACUUM_OFF_2(
    _self : Ros1Abb_rapid_sm_addin_msgsSetSGCommandRequestCodec) -> Int { 15 }

/// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNKNOWN constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsRAPIDTaskStateCodec::constant_EXECUTION_STATE_UNKNOWN(
    _self : Ros1Abb_robot_msgsRAPIDTaskStateCodec) -> Int { 1 }

/// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_READY constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsRAPIDTaskStateCodec::constant_EXECUTION_STATE_READY(
    _self : Ros1Abb_robot_msgsRAPIDTaskStateCodec) -> Int { 2 }

/// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STOPPED constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsRAPIDTaskStateCodec::constant_EXECUTION_STATE_STOPPED(
    _self : Ros1Abb_robot_msgsRAPIDTaskStateCodec) -> Int { 3 }

/// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_STARTED constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsRAPIDTaskStateCodec::constant_EXECUTION_STATE_STARTED(
    _self : Ros1Abb_robot_msgsRAPIDTaskStateCodec) -> Int { 4 }

/// @brief Original abb_robot_msgs/RAPIDTaskState.EXECUTION_STATE_UNINITIALIZED constant; no instance bytes or
/// ROS authority.
pub fn Ros1Abb_robot_msgsRAPIDTaskStateCodec::constant_EXECUTION_STATE_UNINITIALIZED(
    _self : Ros1Abb_robot_msgsRAPIDTaskStateCodec) -> Int { 5 }

/// @brief Original abb_robot_msgs/ServiceResponses.SUCCESS constant; no instance bytes or ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_SUCCESS(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_SUCCESS constant; no instance bytes or ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_SUCCESS(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 1 }

/// @brief Original abb_robot_msgs/ServiceResponses.FAILED constant; no instance bytes or ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_FAILED(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "Service failed (e.g. timeout or resource not found,
    see the DEBUG log for details)" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_FAILED constant; no instance bytes or ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_FAILED(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 2 }

/// @brief Original abb_robot_msgs/ServiceResponses.SERVER_IS_BUSY constant; no instance bytes or ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_SERVER_IS_BUSY(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "Server is busy" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_SERVER_IS_BUSY constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_SERVER_IS_BUSY(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 1001 }

/// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_FILENAME constant; no instance bytes or ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_EMPTY_FILENAME(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "Filename is empty" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_FILENAME constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_EMPTY_FILENAME(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 2001 }

/// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_SIGNAL_NAME constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_EMPTY_SIGNAL_NAME(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "Signal name is empty" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_SIGNAL_NAME constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_EMPTY_SIGNAL_NAME(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 2002 }

/// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_TASK_NAME constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_EMPTY_RAPID_TASK_NAME(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "RAPID task name is empty" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_TASK_NAME constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_EMPTY_RAPID_TASK_NAME(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 2003 }

/// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_MODULE_NAME constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_EMPTY_RAPID_MODULE_NAME(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "RAPID module name is empty" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_MODULE_NAME constant; no instance bytes or
/// ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_EMPTY_RAPID_MODULE_NAME(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 2004 }

/// @brief Original abb_robot_msgs/ServiceResponses.EMPTY_RAPID_SYMBOL_NAME constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_EMPTY_RAPID_SYMBOL_NAME(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "RAPID symbol name is empty" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_EMPTY_RAPID_SYMBOL_NAME constant; no instance bytes or
/// ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_EMPTY_RAPID_SYMBOL_NAME(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 2005 }

/// @brief Original abb_robot_msgs/ServiceResponses.NOT_IN_AUTO_MODE constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_NOT_IN_AUTO_MODE(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "Robot controller is not in AUTO mode" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_NOT_IN_AUTO_MODE constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_NOT_IN_AUTO_MODE(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 3001 }

/// @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_OFF constant; no instance bytes or ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_MOTORS_ARE_OFF(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "Motors are off" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_OFF constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_MOTORS_ARE_OFF(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 3002 }

/// @brief Original abb_robot_msgs/ServiceResponses.MOTORS_ARE_ON constant; no instance bytes or ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_MOTORS_ARE_ON(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "Motors are on" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_MOTORS_ARE_ON constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_MOTORS_ARE_ON(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 3003 }

/// @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_STOPPED constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RAPID_NOT_STOPPED(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "RAPID has not been stopped" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_STOPPED constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_RAPID_NOT_STOPPED(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 3004 }

/// @brief Original abb_robot_msgs/ServiceResponses.RAPID_NOT_RUNNING constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RAPID_NOT_RUNNING(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "RAPID is not running" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_RAPID_NOT_RUNNING constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_RAPID_NOT_RUNNING(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 3005 }

/// @brief Original abb_robot_msgs/ServiceResponses.SM_RUNTIME_STATES_MISSING constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_SM_RUNTIME_STATES_MISSING(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "No runtime states received for any StateMachine Add-In instance" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_RUNTIME_STATES_MISSING constant; no instance bytes or
/// ROS authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_SM_RUNTIME_STATES_MISSING(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 4001 }

/// @brief Original abb_robot_msgs/ServiceResponses.SM_UNKNOWN_RAPID_TASK constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_SM_UNKNOWN_RAPID_TASK(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "RAPID task not found among known StateMachine Add-In instances" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNKNOWN_RAPID_TASK constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_SM_UNKNOWN_RAPID_TASK(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 4002 }

/// @brief Original abb_robot_msgs/ServiceResponses.SM_UNINITIALIZED constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_SM_UNINITIALIZED(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> String { "StateMachine Add-In instance has not been initialized" }

/// @brief Original abb_robot_msgs/ServiceResponses.RC_SM_UNINITIALIZED constant; no instance bytes or ROS
/// authority.
pub fn Ros1Abb_robot_msgsServiceResponsesCodec::constant_RC_SM_UNINITIALIZED(
    _self : Ros1Abb_robot_msgsServiceResponsesCodec) -> Int { 4003 }

/// @brief Original control_msgs/FollowJointTrajectoryResult.SUCCESSFUL constant; no instance bytes or ROS
/// authority.
pub fn Ros1Control_msgsFollowJointTrajectoryResultCodec::constant_SUCCESSFUL(
    _self : Ros1Control_msgsFollowJointTrajectoryResultCodec) -> Int { 0 }

/// @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_GOAL constant; no instance bytes or ROS
/// authority.
pub fn Ros1Control_msgsFollowJointTrajectoryResultCodec::constant_INVALID_GOAL(
    _self : Ros1Control_msgsFollowJointTrajectoryResultCodec) -> Int { -1 }

/// @brief Original control_msgs/FollowJointTrajectoryResult.INVALID_JOINTS constant; no instance bytes or ROS
/// authority.
pub fn Ros1Control_msgsFollowJointTrajectoryResultCodec::constant_INVALID_JOINTS(
    _self : Ros1Control_msgsFollowJointTrajectoryResultCodec) -> Int { -2 }

/// @brief Original control_msgs/FollowJointTrajectoryResult.OLD_HEADER_TIMESTAMP constant; no instance bytes or
/// ROS authority.
pub fn Ros1Control_msgsFollowJointTrajectoryResultCodec::constant_OLD_HEADER_TIMESTAMP(
    _self : Ros1Control_msgsFollowJointTrajectoryResultCodec) -> Int { -3 }

/// @brief Original control_msgs/FollowJointTrajectoryResult.PATH_TOLERANCE_VIOLATED constant; no instance bytes
/// or ROS authority.
pub fn Ros1Control_msgsFollowJointTrajectoryResultCodec::constant_PATH_TOLERANCE_VIOLATED(
    _self : Ros1Control_msgsFollowJointTrajectoryResultCodec) -> Int { -4 }

/// @brief Original control_msgs/FollowJointTrajectoryResult.GOAL_TOLERANCE_VIOLATED constant; no instance bytes
/// or ROS authority.
pub fn Ros1Control_msgsFollowJointTrajectoryResultCodec::constant_GOAL_TOLERANCE_VIOLATED(
    _self : Ros1Control_msgsFollowJointTrajectoryResultCodec) -> Int { -5 }
