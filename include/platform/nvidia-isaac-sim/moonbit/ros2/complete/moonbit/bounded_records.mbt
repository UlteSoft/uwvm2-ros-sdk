// @file bounded_records.mbt
// @brief Represent complete typed values and their bounded wire layout for nvidia-isaac-sim.
// @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
// while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

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
pub fn Ros2Builtin_interfacesMsgTimeCodec::encode(_self : Ros2Builtin_interfacesMsgTimeCodec,
    value : Ros2Builtin_interfacesMsgTime) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Builtin_interfacesMsgTime(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Builtin_interfacesMsgTimeCodec::decode(_self : Ros2Builtin_interfacesMsgTimeCodec, input : Bytes) ->
    Result[Ros2Builtin_interfacesMsgTime, Int] {
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

pub(all) struct Ros2Std_msgsMsgHeader {
  mut stamp : Ros2Builtin_interfacesMsgTime
  mut frame_id : String
}
pub fn Ros2Std_msgsMsgHeader::new() -> Ros2Std_msgsMsgHeader {
  {
    stamp: Ros2Builtin_interfacesMsgTime::new(),
    frame_id: "",
  }
}
pub(all) struct Ros2Std_msgsMsgHeaderCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Std_msgsMsgHeaderCodec::new() -> Ros2Std_msgsMsgHeaderCodec {
  { ros_version: 2, native_type: "std_msgs/msg/Header",
    native_identity: None,
    codec_identity: "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396",
    min_wire_bytes: 12, max_wire_bytes: 76 }
}
pub fn Ros2Std_msgsMsgHeaderCodec::encode(_self : Ros2Std_msgsMsgHeaderCodec, value : Ros2Std_msgsMsgHeader) ->
    Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 76, error: 0 }
  write_Ros2Std_msgsMsgHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_msgsMsgHeaderCodec::decode(_self : Ros2Std_msgsMsgHeaderCodec, input : Bytes) ->
    Result[Ros2Std_msgsMsgHeader, Int] {
  if input.length() < 12 || input.length() > 76 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_msgsMsgHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_msgsMsgHeader(writer : BoundedWriter, value : Ros2Std_msgsMsgHeader) -> Unit {
  let part0 = value.stamp
  write_Ros2Builtin_interfacesMsgTime(writer, part0)
  let part1 = value.frame_id
  writer.text(part1, 64)
}
fn read_Ros2Std_msgsMsgHeader(reader : BoundedReader) -> Ros2Std_msgsMsgHeader {
  let part0 = read_Ros2Builtin_interfacesMsgTime(reader)
  let part1 = reader.text(64)
  { stamp: part0, frame_id: part1 }
}

pub(all) struct Ros2Sensor_msgsMsgJointState {
  mut header : Ros2Std_msgsMsgHeader
  mut name : Array[String]
  mut position : Array[Double]
  mut velocity : Array[Double]
  mut effort : Array[Double]
}
pub fn Ros2Sensor_msgsMsgJointState::new() -> Ros2Sensor_msgsMsgJointState {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    name: [],
    position: [],
    velocity: [],
    effort: [],
  }
}
pub(all) struct Ros2Sensor_msgsMsgJointStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::new() -> Ros2Sensor_msgsMsgJointStateCodec {
  { ros_version: 2, native_type: "sensor_msgs/msg/JointState",
    native_identity: None,
    codec_identity: "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac",
    min_wire_bytes: 28, max_wire_bytes: 5980 }
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::encode(_self : Ros2Sensor_msgsMsgJointStateCodec,
    value : Ros2Sensor_msgsMsgJointState) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5980, error: 0 }
  write_Ros2Sensor_msgsMsgJointState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::decode(_self : Ros2Sensor_msgsMsgJointStateCodec, input : Bytes) ->
    Result[Ros2Sensor_msgsMsgJointState, Int] {
  if input.length() < 28 || input.length() > 5980 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Sensor_msgsMsgJointState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Sensor_msgsMsgJointState(writer : BoundedWriter, value : Ros2Sensor_msgsMsgJointState) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.name
  let count1 = part1.length()
  if count1 > 64 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 64)
  }
  let part2 = value.position
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.velocity
  let count3 = part3.length()
  if count3 > 64 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.effort
  let count4 = part4.length()
  if count4 > 64 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  if (count1 != 0 && count2 != 0 && count1 != count2) || (count1 != 0 && count3 != 0 && count1 != count3) || (count1 !=
      0 && count4 != 0 && count1 != count4) || (count2 != 0 && count3 != 0 && count2 != count3) || (count2 != 0 &&
      count4 != 0 && count2 != count4) || (count3 != 0 && count4 != 0 && count3 != count4) { writer.error = 22 }
}
fn read_Ros2Sensor_msgsMsgJointState(reader : BoundedReader) -> Ros2Sensor_msgsMsgJointState {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(64, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(64))
  }
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(64, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 : Array[Double] = []
  let count4 = reader.count(64, 8)
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.float64())
  }
  if (part1.length() != 0 && part2.length() != 0 && part1.length() != part2.length()) || (part1.length() != 0 &&
      part3.length() != 0 && part1.length() != part3.length()) || (part1.length() != 0 && part4.length() != 0 &&
      part1.length() != part4.length()) || (part2.length() != 0 && part3.length() != 0 && part2.length() !=
      part3.length()) || (part2.length() != 0 && part4.length() != 0 && part2.length() != part4.length()) || (
      part3.length() != 0 && part4.length() != 0 && part3.length() != part4.length()) { reader.error = 22 }
  { header: part0, name: part1, position: part2, velocity: part3, effort: part4 }
}

pub(all) struct Ros2Uwvm_isaac_sim_bridgeMsgClockEvent {
  mut kind : Int
  mut phase : Int
  mut frame : UInt
  mut sec : Int
  mut nanosec : UInt
}
pub fn Ros2Uwvm_isaac_sim_bridgeMsgClockEvent::new() -> Ros2Uwvm_isaac_sim_bridgeMsgClockEvent {
  {
    kind: 0,
    phase: 0,
    frame: 0U,
    sec: 0,
    nanosec: 0U,
  }
}
pub(all) struct Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec::new() -> Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec {
  { ros_version: 2, native_type: "uwvm_isaac_sim_bridge/msg/ClockEvent",
    native_identity: None,
    codec_identity: "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6",
    min_wire_bytes: 14, max_wire_bytes: 14 }
}
pub fn Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec::encode(_self : Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec,
    value : Ros2Uwvm_isaac_sim_bridgeMsgClockEvent) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 14, error: 0 }
  write_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 14 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec::decode(_self : Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodec,
    input : Bytes) -> Result[Ros2Uwvm_isaac_sim_bridgeMsgClockEvent, Int] {
  if input.length() < 14 || input.length() > 14 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(writer : BoundedWriter,
    value : Ros2Uwvm_isaac_sim_bridgeMsgClockEvent) -> Unit {
  let part0 = value.kind
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.phase
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.frame
  writer.unsigned(part2.to_uint64(), 4)
  let part3 = value.sec
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part4 = value.nanosec
  writer.unsigned(part4.to_uint64(), 4)
}
fn read_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(reader : BoundedReader) -> Ros2Uwvm_isaac_sim_bridgeMsgClockEvent {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.unsigned(1).to_int()
  let part2 = reader.unsigned(4).to_uint()
  let part3 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part4 = reader.unsigned(4).to_uint()
  { kind: part0, phase: part1, frame: part2, sec: part3, nanosec: part4 }
}

pub(all) struct Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request {
  mut operation : Int
  mut session_nonce : UInt64
  mut request_sequence : UInt
  mut phase : Int
  mut frame : UInt
  mut impulse : Bool
  mut extra_update : Bool
  mut pacing_milliseconds : Int
}
pub fn Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request::new() -> Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request {
  {
    operation: 0,
    session_nonce: 0UL,
    request_sequence: 0U,
    phase: 0,
    frame: 0U,
    impulse: false,
    extra_update: false,
    pacing_milliseconds: 0,
  }
}
pub(all) struct Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec::new() ->
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec {
  { ros_version: 2, native_type: "uwvm_isaac_sim_bridge/srv/ClockControl_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19",
    min_wire_bytes: 22, max_wire_bytes: 22 }
}
pub fn Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec::encode(
    _self : Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec,
    value : Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 22, error: 0 }
  write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 22 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec::decode(
    _self : Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodec, input : Bytes) ->
    Result[Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request, Int] {
  if input.length() < 22 || input.length() > 22 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(writer : BoundedWriter,
    value : Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request) -> Unit {
  let part0 = value.operation
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.session_nonce
  writer.unsigned(part1, 8)
  let part2 = value.request_sequence
  writer.unsigned(part2.to_uint64(), 4)
  let part3 = value.phase
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part4 = value.frame
  writer.unsigned(part4.to_uint64(), 4)
  let part5 = value.impulse
  writer.unsigned(if part5 { 1UL } else { 0UL }, 1)
  let part6 = value.extra_update
  writer.unsigned(if part6 { 1UL } else { 0UL }, 1)
  let part7 = value.pacing_milliseconds
  if part7 < 0 || part7 > 65535 { writer.error = 22 }
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request(reader : BoundedReader) ->
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.unsigned(8)
  let part2 = reader.unsigned(4).to_uint()
  let part3 = reader.unsigned(1).to_int()
  let part4 = reader.unsigned(4).to_uint()
  let part5 = reader.boolean()
  let part6 = reader.boolean()
  let part7 = reader.unsigned(2).to_int()
  { operation: part0, session_nonce: part1, request_sequence: part2, phase: part3, frame: part4, impulse: part5,
      extra_update: part6, pacing_milliseconds: part7 }
}

pub(all) struct Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response {
  mut status : UInt
  mut session_nonce : UInt64
  mut request_sequence : UInt
  mut state : Int
  mut actual_app_updates : UInt64
  mut completed_steps : UInt
  mut has_event : Bool
  mut event : Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
  mut cleanup_status : UInt
}
pub fn Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response::new() -> Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response {
  {
    status: 0U,
    session_nonce: 0UL,
    request_sequence: 0U,
    state: 0,
    actual_app_updates: 0UL,
    completed_steps: 0U,
    has_event: false,
    event: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent::new(),
    cleanup_status: 0U,
  }
}
pub(all) struct Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec::new() ->
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_isaac_sim_bridge/srv/ClockControl_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec::encode(
    _self : Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec,
    value : Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec::decode(
    _self : Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodec, input : Bytes) ->
    Result[Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response, Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(writer : BoundedWriter,
    value : Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.session_nonce
  writer.unsigned(part1, 8)
  let part2 = value.request_sequence
  writer.unsigned(part2.to_uint64(), 4)
  let part3 = value.state
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part4 = value.actual_app_updates
  writer.unsigned(part4, 8)
  let part5 = value.completed_steps
  writer.unsigned(part5.to_uint64(), 4)
  let part6 = value.has_event
  writer.unsigned(if part6 { 1UL } else { 0UL }, 1)
  let part7 = value.event
  write_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(writer, part7)
  let part8 = value.cleanup_status
  writer.unsigned(part8.to_uint64(), 4)
}
fn read_Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response(reader : BoundedReader) ->
    Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(8)
  let part2 = reader.unsigned(4).to_uint()
  let part3 = reader.unsigned(1).to_int()
  let part4 = reader.unsigned(8)
  let part5 = reader.unsigned(4).to_uint()
  let part6 = reader.boolean()
  let part7 = read_Ros2Uwvm_isaac_sim_bridgeMsgClockEvent(reader)
  let part8 = reader.unsigned(4).to_uint()
  { status: part0, session_nonce: part1, request_sequence: part2, state: part3, actual_app_updates: part4,
      completed_steps: part5, has_event: part6, event: part7, cleanup_status: part8 }
}

