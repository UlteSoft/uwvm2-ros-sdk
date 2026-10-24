// @file bounded_records.mbt
// @brief Represent the complete original YASKAWA ROS 2 canonical value catalog.
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

pub(all) struct Ros2Builtin_interfacesMsgDuration {
  mut field_sec : Int
  mut field_nanosec : UInt
}
pub fn Ros2Builtin_interfacesMsgDuration::new() -> Ros2Builtin_interfacesMsgDuration {
  {
    field_sec: 0,
    field_nanosec: 0U,
  }
}
pub(all) struct Ros2Builtin_interfacesMsgDurationCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Builtin_interfacesMsgDurationCodec::new() -> Ros2Builtin_interfacesMsgDurationCodec {
  { ros_version: 2, native_type: "builtin_interfaces/msg/Duration",
    native_identity: None,
    codec_identity: "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Builtin_interfacesMsgDurationCodec::encode(_self : Ros2Builtin_interfacesMsgDurationCodec,
    value : Ros2Builtin_interfacesMsgDuration) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Builtin_interfacesMsgDuration(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Builtin_interfacesMsgDurationCodec::decode(_self : Ros2Builtin_interfacesMsgDurationCodec,
    input : Bytes) -> Result[Ros2Builtin_interfacesMsgDuration,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Builtin_interfacesMsgDuration(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Builtin_interfacesMsgDuration(writer : BoundedWriter, value : Ros2Builtin_interfacesMsgDuration) -> Unit {
  let part0 = value.field_sec
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_nanosec
  writer.unsigned(part1.to_uint64(), 4)
}
fn read_Ros2Builtin_interfacesMsgDuration(reader : BoundedReader) -> Ros2Builtin_interfacesMsgDuration {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint()
  { field_sec: part0, field_nanosec: part1 }
}

pub(all) struct Ros2Builtin_interfacesMsgTime {
  mut field_sec : Int
  mut field_nanosec : UInt
}
pub fn Ros2Builtin_interfacesMsgTime::new() -> Ros2Builtin_interfacesMsgTime {
  {
    field_sec: 0,
    field_nanosec: 0U,
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
    value : Ros2Builtin_interfacesMsgTime) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Builtin_interfacesMsgTime(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Builtin_interfacesMsgTimeCodec::decode(_self : Ros2Builtin_interfacesMsgTimeCodec,
    input : Bytes) -> Result[Ros2Builtin_interfacesMsgTime,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Builtin_interfacesMsgTime(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Builtin_interfacesMsgTime(writer : BoundedWriter, value : Ros2Builtin_interfacesMsgTime) -> Unit {
  let part0 = value.field_sec
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_nanosec
  writer.unsigned(part1.to_uint64(), 4)
}
fn read_Ros2Builtin_interfacesMsgTime(reader : BoundedReader) -> Ros2Builtin_interfacesMsgTime {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint()
  { field_sec: part0, field_nanosec: part1 }
}

pub(all) struct Ros2Std_msgsMsgHeader {
  mut field_stamp : Ros2Builtin_interfacesMsgTime
  mut field_frame_id : String
}
pub fn Ros2Std_msgsMsgHeader::new() -> Ros2Std_msgsMsgHeader {
  {
    field_stamp: Ros2Builtin_interfacesMsgTime::new(),
    field_frame_id: "",
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
pub fn Ros2Std_msgsMsgHeaderCodec::encode(_self : Ros2Std_msgsMsgHeaderCodec,
    value : Ros2Std_msgsMsgHeader) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 76, error: 0 }
  write_Ros2Std_msgsMsgHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_msgsMsgHeaderCodec::decode(_self : Ros2Std_msgsMsgHeaderCodec,
    input : Bytes) -> Result[Ros2Std_msgsMsgHeader,
    Int] {
  if input.length() < 12 || input.length() > 76 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_msgsMsgHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_msgsMsgHeader(writer : BoundedWriter, value : Ros2Std_msgsMsgHeader) -> Unit {
  let part0 = value.field_stamp
  write_Ros2Builtin_interfacesMsgTime(writer, part0)
  let part1 = value.field_frame_id
  writer.text(part1, 64)
}
fn read_Ros2Std_msgsMsgHeader(reader : BoundedReader) -> Ros2Std_msgsMsgHeader {
  let part0 = read_Ros2Builtin_interfacesMsgTime(reader)
  let part1 = reader.text(64)
  { field_stamp: part0, field_frame_id: part1 }
}

pub(all) struct Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  mut field_positions : Array[Double]
  mut field_velocities : Array[Double]
  mut field_accelerations : Array[Double]
  mut field_effort : Array[Double]
  mut field_time_from_start : Ros2Builtin_interfacesMsgDuration
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::new() -> Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  {
    field_positions: [],
    field_velocities: [],
    field_accelerations: [],
    field_effort: [],
    field_time_from_start: Ros2Builtin_interfacesMsgDuration::new(),
  }
}
pub(all) struct Ros2Trajectory_msgsMsgJointTrajectoryPointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPointCodec::new() -> Ros2Trajectory_msgsMsgJointTrajectoryPointCodec {
  { ros_version: 2, native_type: "trajectory_msgs/msg/JointTrajectoryPoint",
    native_identity: None,
    codec_identity: "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5",
    min_wire_bytes: 24, max_wire_bytes: 408 }
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPointCodec::encode(_self : Ros2Trajectory_msgsMsgJointTrajectoryPointCodec,
    value : Ros2Trajectory_msgsMsgJointTrajectoryPoint) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 408, error: 0 }
  write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPointCodec::decode(_self : Ros2Trajectory_msgsMsgJointTrajectoryPointCodec,
    input : Bytes) -> Result[Ros2Trajectory_msgsMsgJointTrajectoryPoint,
    Int] {
  if input.length() < 24 || input.length() > 408 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer : BoundedWriter,
    value : Ros2Trajectory_msgsMsgJointTrajectoryPoint) -> Unit {
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
  write_Ros2Builtin_interfacesMsgDuration(writer, part4)
}
fn read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(
    reader : BoundedReader) -> Ros2Trajectory_msgsMsgJointTrajectoryPoint {
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
  let part4 = read_Ros2Builtin_interfacesMsgDuration(reader)
    {
      field_positions: part0,
      field_velocities: part1,
      field_accelerations: part2,
      field_effort: part3,
      field_time_from_start: part4
    }
}

pub(all) struct Ros2Trajectory_msgsMsgJointTrajectory {
  mut field_header : Ros2Std_msgsMsgHeader
  mut field_joint_names : Array[String]
  mut field_points : Array[Ros2Trajectory_msgsMsgJointTrajectoryPoint]
}
pub fn Ros2Trajectory_msgsMsgJointTrajectory::new() -> Ros2Trajectory_msgsMsgJointTrajectory {
  {
    field_header: Ros2Std_msgsMsgHeader::new(),
    field_joint_names: [],
    field_points: [],
  }
}
pub(all) struct Ros2Trajectory_msgsMsgJointTrajectoryCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryCodec::new() -> Ros2Trajectory_msgsMsgJointTrajectoryCodec {
  { ros_version: 2, native_type: "trajectory_msgs/msg/JointTrajectory",
    native_identity: None,
    codec_identity: "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0",
    min_wire_bytes: 20, max_wire_bytes: 4164 }
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryCodec::encode(_self : Ros2Trajectory_msgsMsgJointTrajectoryCodec,
    value : Ros2Trajectory_msgsMsgJointTrajectory) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4164, error: 0 }
  write_Ros2Trajectory_msgsMsgJointTrajectory(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryCodec::decode(_self : Ros2Trajectory_msgsMsgJointTrajectoryCodec,
    input : Bytes) -> Result[Ros2Trajectory_msgsMsgJointTrajectory,
    Int] {
  if input.length() < 20 || input.length() > 4164 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Trajectory_msgsMsgJointTrajectory(writer : BoundedWriter,
    value : Ros2Trajectory_msgsMsgJointTrajectory) -> Unit {
  let part0 = value.field_header
  write_Ros2Std_msgsMsgHeader(writer, part0)
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
    write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, element)
  }
}
fn read_Ros2Trajectory_msgsMsgJointTrajectory(reader : BoundedReader) -> Ros2Trajectory_msgsMsgJointTrajectory {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(12, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(64))
  }
  let part2 : Array[Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  let count2 = reader.count(8, 24)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader))
  }
  { field_header: part0, field_joint_names: part1, field_points: part2 }
}

pub(all) struct Ros2Geometry_msgsMsgVector3 {
  mut field_x : Double
  mut field_y : Double
  mut field_z : Double
}
pub fn Ros2Geometry_msgsMsgVector3::new() -> Ros2Geometry_msgsMsgVector3 {
  {
    field_x: 0.0,
    field_y: 0.0,
    field_z: 0.0,
  }
}
pub(all) struct Ros2Geometry_msgsMsgVector3Codec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgVector3Codec::new() -> Ros2Geometry_msgsMsgVector3Codec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Vector3",
    native_identity: None,
    codec_identity: "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros2Geometry_msgsMsgVector3Codec::encode(_self : Ros2Geometry_msgsMsgVector3Codec,
    value : Ros2Geometry_msgsMsgVector3) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Geometry_msgsMsgVector3(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgVector3Codec::decode(_self : Ros2Geometry_msgsMsgVector3Codec,
    input : Bytes) -> Result[Ros2Geometry_msgsMsgVector3,
    Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgVector3(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgVector3(writer : BoundedWriter, value : Ros2Geometry_msgsMsgVector3) -> Unit {
  let part0 = value.field_x
  writer.float64(part0)
  let part1 = value.field_y
  writer.float64(part1)
  let part2 = value.field_z
  writer.float64(part2)
}
fn read_Ros2Geometry_msgsMsgVector3(reader : BoundedReader) -> Ros2Geometry_msgsMsgVector3 {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  { field_x: part0, field_y: part1, field_z: part2 }
}

pub(all) struct Ros2Geometry_msgsMsgQuaternion {
  mut field_x : Double
  mut field_y : Double
  mut field_z : Double
  mut field_w : Double
}
pub fn Ros2Geometry_msgsMsgQuaternion::new() -> Ros2Geometry_msgsMsgQuaternion {
  {
    field_x: (0UL).reinterpret_as_double(),
    field_y: (0UL).reinterpret_as_double(),
    field_z: (0UL).reinterpret_as_double(),
    field_w: (4607182418800017408UL).reinterpret_as_double(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgQuaternionCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgQuaternionCodec::new() -> Ros2Geometry_msgsMsgQuaternionCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Quaternion",
    native_identity: None,
    codec_identity: "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672",
    min_wire_bytes: 32, max_wire_bytes: 32 }
}
pub fn Ros2Geometry_msgsMsgQuaternionCodec::encode(_self : Ros2Geometry_msgsMsgQuaternionCodec,
    value : Ros2Geometry_msgsMsgQuaternion) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros2Geometry_msgsMsgQuaternion(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgQuaternionCodec::decode(_self : Ros2Geometry_msgsMsgQuaternionCodec,
    input : Bytes) -> Result[Ros2Geometry_msgsMsgQuaternion,
    Int] {
  if input.length() < 32 || input.length() > 32 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgQuaternion(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgQuaternion(writer : BoundedWriter, value : Ros2Geometry_msgsMsgQuaternion) -> Unit {
  let part0 = value.field_x
  writer.float64(part0)
  let part1 = value.field_y
  writer.float64(part1)
  let part2 = value.field_z
  writer.float64(part2)
  let part3 = value.field_w
  writer.float64(part3)
}
fn read_Ros2Geometry_msgsMsgQuaternion(reader : BoundedReader) -> Ros2Geometry_msgsMsgQuaternion {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { field_x: part0, field_y: part1, field_z: part2, field_w: part3 }
}

pub(all) struct Ros2Geometry_msgsMsgTransform {
  mut field_translation : Ros2Geometry_msgsMsgVector3
  mut field_rotation : Ros2Geometry_msgsMsgQuaternion
}
pub fn Ros2Geometry_msgsMsgTransform::new() -> Ros2Geometry_msgsMsgTransform {
  {
    field_translation: Ros2Geometry_msgsMsgVector3::new(),
    field_rotation: Ros2Geometry_msgsMsgQuaternion::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgTransformCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgTransformCodec::new() -> Ros2Geometry_msgsMsgTransformCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Transform",
    native_identity: None,
    codec_identity: "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b",
    min_wire_bytes: 56, max_wire_bytes: 56 }
}
pub fn Ros2Geometry_msgsMsgTransformCodec::encode(_self : Ros2Geometry_msgsMsgTransformCodec,
    value : Ros2Geometry_msgsMsgTransform) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros2Geometry_msgsMsgTransform(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgTransformCodec::decode(_self : Ros2Geometry_msgsMsgTransformCodec,
    input : Bytes) -> Result[Ros2Geometry_msgsMsgTransform,
    Int] {
  if input.length() < 56 || input.length() > 56 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgTransform(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgTransform(writer : BoundedWriter, value : Ros2Geometry_msgsMsgTransform) -> Unit {
  let part0 = value.field_translation
  write_Ros2Geometry_msgsMsgVector3(writer, part0)
  let part1 = value.field_rotation
  write_Ros2Geometry_msgsMsgQuaternion(writer, part1)
}
fn read_Ros2Geometry_msgsMsgTransform(reader : BoundedReader) -> Ros2Geometry_msgsMsgTransform {
  let part0 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part1 = read_Ros2Geometry_msgsMsgQuaternion(reader)
  { field_translation: part0, field_rotation: part1 }
}

pub(all) struct Ros2Geometry_msgsMsgTwist {
  mut field_linear : Ros2Geometry_msgsMsgVector3
  mut field_angular : Ros2Geometry_msgsMsgVector3
}
pub fn Ros2Geometry_msgsMsgTwist::new() -> Ros2Geometry_msgsMsgTwist {
  {
    field_linear: Ros2Geometry_msgsMsgVector3::new(),
    field_angular: Ros2Geometry_msgsMsgVector3::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgTwistCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgTwistCodec::new() -> Ros2Geometry_msgsMsgTwistCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Twist",
    native_identity: None,
    codec_identity: "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros2Geometry_msgsMsgTwistCodec::encode(_self : Ros2Geometry_msgsMsgTwistCodec,
    value : Ros2Geometry_msgsMsgTwist) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros2Geometry_msgsMsgTwist(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgTwistCodec::decode(_self : Ros2Geometry_msgsMsgTwistCodec,
    input : Bytes) -> Result[Ros2Geometry_msgsMsgTwist,
    Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgTwist(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgTwist(writer : BoundedWriter, value : Ros2Geometry_msgsMsgTwist) -> Unit {
  let part0 = value.field_linear
  write_Ros2Geometry_msgsMsgVector3(writer, part0)
  let part1 = value.field_angular
  write_Ros2Geometry_msgsMsgVector3(writer, part1)
}
fn read_Ros2Geometry_msgsMsgTwist(reader : BoundedReader) -> Ros2Geometry_msgsMsgTwist {
  let part0 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part1 = read_Ros2Geometry_msgsMsgVector3(reader)
  { field_linear: part0, field_angular: part1 }
}

pub(all) struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  mut field_transforms : Array[Ros2Geometry_msgsMsgTransform]
  mut field_velocities : Array[Ros2Geometry_msgsMsgTwist]
  mut field_accelerations : Array[Ros2Geometry_msgsMsgTwist]
  mut field_time_from_start : Ros2Builtin_interfacesMsgDuration
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  {
    field_transforms: [],
    field_velocities: [],
    field_accelerations: [],
    field_time_from_start: Ros2Builtin_interfacesMsgDuration::new(),
  }
}
pub(all) struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec::new(
    ) -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec {
  { ros_version: 2, native_type: "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint",
    native_identity: None,
    codec_identity: "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242",
    min_wire_bytes: 20, max_wire_bytes: 324 }
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec::encode(
    _self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec,
    value : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 324, error: 0 }
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec::decode(
    _self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodec,
    input : Bytes) -> Result[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint,
    Int] {
  if input.length() < 20 || input.length() > 324 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer : BoundedWriter,
    value : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint) -> Unit {
  let part0 = value.field_transforms
  let count0 = part0.length()
  if count0 > 2 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Geometry_msgsMsgTransform(writer, element)
  }
  let part1 = value.field_velocities
  let count1 = part1.length()
  if count1 > 2 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Geometry_msgsMsgTwist(writer, element)
  }
  let part2 = value.field_accelerations
  let count2 = part2.length()
  if count2 > 2 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Geometry_msgsMsgTwist(writer, element)
  }
  let part3 = value.field_time_from_start
  write_Ros2Builtin_interfacesMsgDuration(writer, part3)
}
fn read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(
    reader : BoundedReader) -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint {
  let part0 : Array[Ros2Geometry_msgsMsgTransform] = []
  let count0 = reader.count(2, 56)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Geometry_msgsMsgTransform(reader))
  }
  let part1 : Array[Ros2Geometry_msgsMsgTwist] = []
  let count1 = reader.count(2, 48)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Geometry_msgsMsgTwist(reader))
  }
  let part2 : Array[Ros2Geometry_msgsMsgTwist] = []
  let count2 = reader.count(2, 48)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Geometry_msgsMsgTwist(reader))
  }
  let part3 = read_Ros2Builtin_interfacesMsgDuration(reader)
  { field_transforms: part0, field_velocities: part1, field_accelerations: part2, field_time_from_start: part3 }
}

pub(all) struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  mut field_header : Ros2Std_msgsMsgHeader
  mut field_joint_names : Array[String]
  mut field_points : Array[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint]
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::new() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  {
    field_header: Ros2Std_msgsMsgHeader::new(),
    field_joint_names: [],
    field_points: [],
  }
}
pub(all) struct Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec::new() -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec {
  { ros_version: 2, native_type: "trajectory_msgs/msg/MultiDOFJointTrajectory",
    native_identity: None,
    codec_identity: "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401",
    min_wire_bytes: 20, max_wire_bytes: 1516 }
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec::encode(
    _self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec,
    value : Ros2Trajectory_msgsMsgMultiDOFJointTrajectory) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1516, error: 0 }
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec::decode(
    _self : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodec,
    input : Bytes) -> Result[Ros2Trajectory_msgsMsgMultiDOFJointTrajectory,
    Int] {
  if input.length() < 20 || input.length() > 1516 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer : BoundedWriter,
    value : Ros2Trajectory_msgsMsgMultiDOFJointTrajectory) -> Unit {
  let part0 = value.field_header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.field_joint_names
  let count1 = part1.length()
  if count1 > 2 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 64)
  }
  let part2 = value.field_points
  let count2 = part2.length()
  if count2 > 4 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, element)
  }
}
fn read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(
    reader : BoundedReader) -> Ros2Trajectory_msgsMsgMultiDOFJointTrajectory {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(2, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(64))
  }
  let part2 : Array[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] = []
  let count2 = reader.count(4, 20)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader))
  }
  { field_header: part0, field_joint_names: part1, field_points: part2 }
}

pub(all) struct Ros2Control_msgsMsgJointTolerance {
  mut field_name : String
  mut field_position : Double
  mut field_velocity : Double
  mut field_acceleration : Double
}
pub fn Ros2Control_msgsMsgJointTolerance::new() -> Ros2Control_msgsMsgJointTolerance {
  {
    field_name: "",
    field_position: 0.0,
    field_velocity: 0.0,
    field_acceleration: 0.0,
  }
}
pub(all) struct Ros2Control_msgsMsgJointToleranceCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Control_msgsMsgJointToleranceCodec::new() -> Ros2Control_msgsMsgJointToleranceCodec {
  { ros_version: 2, native_type: "control_msgs/msg/JointTolerance",
    native_identity: None,
    codec_identity: "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2",
    min_wire_bytes: 28, max_wire_bytes: 92 }
}
pub fn Ros2Control_msgsMsgJointToleranceCodec::encode(_self : Ros2Control_msgsMsgJointToleranceCodec,
    value : Ros2Control_msgsMsgJointTolerance) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 92, error: 0 }
  write_Ros2Control_msgsMsgJointTolerance(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Control_msgsMsgJointToleranceCodec::decode(_self : Ros2Control_msgsMsgJointToleranceCodec,
    input : Bytes) -> Result[Ros2Control_msgsMsgJointTolerance,
    Int] {
  if input.length() < 28 || input.length() > 92 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Control_msgsMsgJointTolerance(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Control_msgsMsgJointTolerance(writer : BoundedWriter, value : Ros2Control_msgsMsgJointTolerance) -> Unit {
  let part0 = value.field_name
  writer.text(part0, 64)
  let part1 = value.field_position
  writer.float64(part1)
  let part2 = value.field_velocity
  writer.float64(part2)
  let part3 = value.field_acceleration
  writer.float64(part3)
}
fn read_Ros2Control_msgsMsgJointTolerance(reader : BoundedReader) -> Ros2Control_msgsMsgJointTolerance {
  let part0 = reader.text(64)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { field_name: part0, field_position: part1, field_velocity: part2, field_acceleration: part3 }
}

pub(all) struct Ros2Control_msgsMsgJointComponentTolerance {
  mut field_joint_name : String
  mut field_component : Int
  mut field_position : Double
  mut field_velocity : Double
  mut field_acceleration : Double
}
pub fn Ros2Control_msgsMsgJointComponentTolerance::new() -> Ros2Control_msgsMsgJointComponentTolerance {
  {
    field_joint_name: "",
    field_component: 0,
    field_position: 0.0,
    field_velocity: 0.0,
    field_acceleration: 0.0,
  }
}
pub(all) struct Ros2Control_msgsMsgJointComponentToleranceCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::new() -> Ros2Control_msgsMsgJointComponentToleranceCodec {
  { ros_version: 2, native_type: "control_msgs/msg/JointComponentTolerance",
    native_identity: None,
    codec_identity: "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342",
    min_wire_bytes: 30, max_wire_bytes: 542 }
}
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::encode(_self : Ros2Control_msgsMsgJointComponentToleranceCodec,
    value : Ros2Control_msgsMsgJointComponentTolerance) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 542, error: 0 }
  write_Ros2Control_msgsMsgJointComponentTolerance(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 30 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::decode(_self : Ros2Control_msgsMsgJointComponentToleranceCodec,
    input : Bytes) -> Result[Ros2Control_msgsMsgJointComponentTolerance,
    Int] {
  if input.length() < 30 || input.length() > 542 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Control_msgsMsgJointComponentTolerance(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Control_msgsMsgJointComponentTolerance(writer : BoundedWriter,
    value : Ros2Control_msgsMsgJointComponentTolerance) -> Unit {
  let part0 = value.field_joint_name
  writer.text(part0, 512)
  let part1 = value.field_component
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_position
  writer.float64(part2)
  let part3 = value.field_velocity
  writer.float64(part3)
  let part4 = value.field_acceleration
  writer.float64(part4)
}
fn read_Ros2Control_msgsMsgJointComponentTolerance(
    reader : BoundedReader) -> Ros2Control_msgsMsgJointComponentTolerance {
  let part0 = reader.text(512)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
    {
      field_joint_name: part0,
      field_component: part1,
      field_position: part2,
      field_velocity: part3,
      field_acceleration: part4
    }
}

pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_Goal {
  mut field_trajectory : Ros2Trajectory_msgsMsgJointTrajectory
  mut field_multi_dof_trajectory : Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  mut field_path_tolerance : Array[Ros2Control_msgsMsgJointTolerance]
  mut field_component_path_tolerance : Array[Ros2Control_msgsMsgJointComponentTolerance]
  mut field_goal_tolerance : Array[Ros2Control_msgsMsgJointTolerance]
  mut field_component_goal_tolerance : Array[Ros2Control_msgsMsgJointComponentTolerance]
  mut field_goal_time_tolerance : Ros2Builtin_interfacesMsgDuration
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_Goal::new() -> Ros2Control_msgsActionFollowJointTrajectory_Goal {
  {
    field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory::new(),
    field_multi_dof_trajectory: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory::new(),
    field_path_tolerance: [],
    field_component_path_tolerance: [],
    field_goal_tolerance: [],
    field_component_goal_tolerance: [],
    field_goal_time_tolerance: Ros2Builtin_interfacesMsgDuration::new(),
  }
}
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_GoalCodec::new(
    ) -> Ros2Control_msgsActionFollowJointTrajectory_GoalCodec {
  { ros_version: 2, native_type: "control_msgs/action/FollowJointTrajectory_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16",
    min_wire_bytes: 64, max_wire_bytes: 20920 }
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_GoalCodec::encode(
    _self : Ros2Control_msgsActionFollowJointTrajectory_GoalCodec,
    value : Ros2Control_msgsActionFollowJointTrajectory_Goal) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 20920, error: 0 }
  write_Ros2Control_msgsActionFollowJointTrajectory_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 64 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_GoalCodec::decode(
    _self : Ros2Control_msgsActionFollowJointTrajectory_GoalCodec,
    input : Bytes) -> Result[Ros2Control_msgsActionFollowJointTrajectory_Goal,
    Int] {
  if input.length() < 64 || input.length() > 20920 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Control_msgsActionFollowJointTrajectory_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Control_msgsActionFollowJointTrajectory_Goal(writer : BoundedWriter,
    value : Ros2Control_msgsActionFollowJointTrajectory_Goal) -> Unit {
  let part0 = value.field_trajectory
  write_Ros2Trajectory_msgsMsgJointTrajectory(writer, part0)
  let part1 = value.field_multi_dof_trajectory
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(writer, part1)
  let part2 = value.field_path_tolerance
  let count2 = part2.length()
  if count2 > 12 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Control_msgsMsgJointTolerance(writer, element)
  }
  let part3 = value.field_component_path_tolerance
  let count3 = part3.length()
  if count3 > 12 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    write_Ros2Control_msgsMsgJointComponentTolerance(writer, element)
  }
  let part4 = value.field_goal_tolerance
  let count4 = part4.length()
  if count4 > 12 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    write_Ros2Control_msgsMsgJointTolerance(writer, element)
  }
  let part5 = value.field_component_goal_tolerance
  let count5 = part5.length()
  if count5 > 12 { writer.error = 22; return () }
  writer.unsigned(count5.to_uint64(), 4)
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    write_Ros2Control_msgsMsgJointComponentTolerance(writer, element)
  }
  let part6 = value.field_goal_time_tolerance
  write_Ros2Builtin_interfacesMsgDuration(writer, part6)
}
fn read_Ros2Control_msgsActionFollowJointTrajectory_Goal(
    reader : BoundedReader) -> Ros2Control_msgsActionFollowJointTrajectory_Goal {
  let part0 = read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
  let part1 = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectory(reader)
  let part2 : Array[Ros2Control_msgsMsgJointTolerance] = []
  let count2 = reader.count(12, 28)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Control_msgsMsgJointTolerance(reader))
  }
  let part3 : Array[Ros2Control_msgsMsgJointComponentTolerance] = []
  let count3 = reader.count(12, 30)
  for index = 0; index < count3; index = index + 1 {
    part3.push(read_Ros2Control_msgsMsgJointComponentTolerance(reader))
  }
  let part4 : Array[Ros2Control_msgsMsgJointTolerance] = []
  let count4 = reader.count(12, 28)
  for index = 0; index < count4; index = index + 1 {
    part4.push(read_Ros2Control_msgsMsgJointTolerance(reader))
  }
  let part5 : Array[Ros2Control_msgsMsgJointComponentTolerance] = []
  let count5 = reader.count(12, 30)
  for index = 0; index < count5; index = index + 1 {
    part5.push(read_Ros2Control_msgsMsgJointComponentTolerance(reader))
  }
  let part6 = read_Ros2Builtin_interfacesMsgDuration(reader)
    {
      field_trajectory: part0,
      field_multi_dof_trajectory: part1,
      field_path_tolerance: part2,
      field_component_path_tolerance: part3,
      field_goal_tolerance: part4,
      field_component_goal_tolerance: part5,
      field_goal_time_tolerance: part6
    }
}

pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_Result {
  mut field_error_code : Int
  mut field_error_string : String
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_Result::new() -> Ros2Control_msgsActionFollowJointTrajectory_Result {
  {
    field_error_code: 0,
    field_error_string: "",
  }
}
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::new(
    ) -> Ros2Control_msgsActionFollowJointTrajectory_ResultCodec {
  { ros_version: 2, native_type: "control_msgs/action/FollowJointTrajectory_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70",
    min_wire_bytes: 8, max_wire_bytes: 4104 }
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::encode(
    _self : Ros2Control_msgsActionFollowJointTrajectory_ResultCodec,
    value : Ros2Control_msgsActionFollowJointTrajectory_Result) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4104, error: 0 }
  write_Ros2Control_msgsActionFollowJointTrajectory_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::decode(
    _self : Ros2Control_msgsActionFollowJointTrajectory_ResultCodec,
    input : Bytes) -> Result[Ros2Control_msgsActionFollowJointTrajectory_Result,
    Int] {
  if input.length() < 8 || input.length() > 4104 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Control_msgsActionFollowJointTrajectory_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Control_msgsActionFollowJointTrajectory_Result(writer : BoundedWriter,
    value : Ros2Control_msgsActionFollowJointTrajectory_Result) -> Unit {
  let part0 = value.field_error_code
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_error_string
  writer.text(part1, 4096)
}
fn read_Ros2Control_msgsActionFollowJointTrajectory_Result(
    reader : BoundedReader) -> Ros2Control_msgsActionFollowJointTrajectory_Result {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.text(4096)
  { field_error_code: part0, field_error_string: part1 }
}

pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  mut field_header : Ros2Std_msgsMsgHeader
  mut field_joint_names : Array[String]
  mut field_desired : Ros2Trajectory_msgsMsgJointTrajectoryPoint
  mut field_actual : Ros2Trajectory_msgsMsgJointTrajectoryPoint
  mut field_error : Ros2Trajectory_msgsMsgJointTrajectoryPoint
  mut field_multi_dof_joint_names : Array[String]
  mut field_multi_dof_desired : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  mut field_multi_dof_actual : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  mut field_multi_dof_error : Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_Feedback::new(
    ) -> Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  {
    field_header: Ros2Std_msgsMsgHeader::new(),
    field_joint_names: [],
    field_desired: Ros2Trajectory_msgsMsgJointTrajectoryPoint::new(),
    field_actual: Ros2Trajectory_msgsMsgJointTrajectoryPoint::new(),
    field_error: Ros2Trajectory_msgsMsgJointTrajectoryPoint::new(),
    field_multi_dof_joint_names: [],
    field_multi_dof_desired: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new(),
    field_multi_dof_actual: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new(),
    field_multi_dof_error: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint::new(),
  }
}
pub(all) struct Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec::new(
    ) -> Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec {
  { ros_version: 2, native_type: "control_msgs/action/FollowJointTrajectory_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb",
    min_wire_bytes: 152, max_wire_bytes: 4128 }
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec::encode(
    _self : Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec,
    value : Ros2Control_msgsActionFollowJointTrajectory_Feedback) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4128, error: 0 }
  write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 152 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec::decode(
    _self : Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodec,
    input : Bytes) -> Result[Ros2Control_msgsActionFollowJointTrajectory_Feedback,
    Int] {
  if input.length() < 152 || input.length() > 4128 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Control_msgsActionFollowJointTrajectory_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Control_msgsActionFollowJointTrajectory_Feedback(writer : BoundedWriter,
    value : Ros2Control_msgsActionFollowJointTrajectory_Feedback) -> Unit {
  let part0 = value.field_header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.field_joint_names
  let count1 = part1.length()
  if count1 > 12 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 64)
  }
  let part2 = value.field_desired
  write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, part2)
  let part3 = value.field_actual
  write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, part3)
  let part4 = value.field_error
  write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, part4)
  let part5 = value.field_multi_dof_joint_names
  let count5 = part5.length()
  if count5 > 2 { writer.error = 22; return () }
  writer.unsigned(count5.to_uint64(), 4)
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    writer.text(element, 512)
  }
  let part6 = value.field_multi_dof_desired
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part6)
  let part7 = value.field_multi_dof_actual
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part7)
  let part8 = value.field_multi_dof_error
  write_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(writer, part8)
}
fn read_Ros2Control_msgsActionFollowJointTrajectory_Feedback(
    reader : BoundedReader) -> Ros2Control_msgsActionFollowJointTrajectory_Feedback {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(12, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(64))
  }
  let part2 = read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
  let part3 = read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
  let part4 = read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
  let part5 : Array[String] = []
  let count5 = reader.count(2, 4)
  for index = 0; index < count5; index = index + 1 {
    part5.push(reader.text(512))
  }
  let part6 = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
  let part7 = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
  let part8 = read_Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(reader)
    {
      field_header: part0,
      field_joint_names: part1,
      field_desired: part2,
      field_actual: part3,
      field_error: part4,
      field_multi_dof_joint_names: part5,
      field_multi_dof_desired: part6,
      field_multi_dof_actual: part7,
      field_multi_dof_error: part8
    }
}

pub(all) struct Ros2Geometry_msgsMsgTransformStamped {
  mut field_header : Ros2Std_msgsMsgHeader
  mut field_child_frame_id : String
  mut field_transform : Ros2Geometry_msgsMsgTransform
}
pub fn Ros2Geometry_msgsMsgTransformStamped::new() -> Ros2Geometry_msgsMsgTransformStamped {
  {
    field_header: Ros2Std_msgsMsgHeader::new(),
    field_child_frame_id: "",
    field_transform: Ros2Geometry_msgsMsgTransform::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgTransformStampedCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgTransformStampedCodec::new() -> Ros2Geometry_msgsMsgTransformStampedCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/TransformStamped",
    native_identity: None,
    codec_identity: "UWVMROS1_be553b5a9c73b687cde56ff1c381e3c67168fd2c0366830be3c65382c5bbd792",
    min_wire_bytes: 72, max_wire_bytes: 648 }
}
pub fn Ros2Geometry_msgsMsgTransformStampedCodec::encode(_self : Ros2Geometry_msgsMsgTransformStampedCodec,
    value : Ros2Geometry_msgsMsgTransformStamped) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 648, error: 0 }
  write_Ros2Geometry_msgsMsgTransformStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 72 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgTransformStampedCodec::decode(_self : Ros2Geometry_msgsMsgTransformStampedCodec,
    input : Bytes) -> Result[Ros2Geometry_msgsMsgTransformStamped,
    Int] {
  if input.length() < 72 || input.length() > 648 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgTransformStamped(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgTransformStamped(writer : BoundedWriter,
    value : Ros2Geometry_msgsMsgTransformStamped) -> Unit {
  let part0 = value.field_header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.field_child_frame_id
  writer.text(part1, 512)
  let part2 = value.field_transform
  write_Ros2Geometry_msgsMsgTransform(writer, part2)
}
fn read_Ros2Geometry_msgsMsgTransformStamped(reader : BoundedReader) -> Ros2Geometry_msgsMsgTransformStamped {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = reader.text(512)
  let part2 = read_Ros2Geometry_msgsMsgTransform(reader)
  { field_header: part0, field_child_frame_id: part1, field_transform: part2 }
}

pub(all) struct Ros2Industrial_msgsMsgDebugLevel {
  mut field_val : Int
}
pub fn Ros2Industrial_msgsMsgDebugLevel::new() -> Ros2Industrial_msgsMsgDebugLevel {
  {
    field_val: 0,
  }
}
pub(all) struct Ros2Industrial_msgsMsgDebugLevelCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsMsgDebugLevelCodec::new() -> Ros2Industrial_msgsMsgDebugLevelCodec {
  { ros_version: 2, native_type: "industrial_msgs/msg/DebugLevel",
    native_identity: None,
    codec_identity: "UWVMROS1_989475cc5d981d8c5ab91fb091235871f7a1c7d87d246eb2250086e6c3c37c79",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsMsgDebugLevelCodec::encode(_self : Ros2Industrial_msgsMsgDebugLevelCodec,
    value : Ros2Industrial_msgsMsgDebugLevel) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsMsgDebugLevel(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsMsgDebugLevelCodec::decode(_self : Ros2Industrial_msgsMsgDebugLevelCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsMsgDebugLevel,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsMsgDebugLevel(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsMsgDebugLevel(writer : BoundedWriter, value : Ros2Industrial_msgsMsgDebugLevel) -> Unit {
  let part0 = value.field_val
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Industrial_msgsMsgDebugLevel(reader : BoundedReader) -> Ros2Industrial_msgsMsgDebugLevel {
  let part0 = reader.unsigned(1).to_int()
  { field_val: part0 }
}

pub(all) struct Ros2Industrial_msgsMsgDeviceInfo {
  mut field_model : String
  mut field_serial_number : String
  mut field_hw_version : String
  mut field_sw_version : String
  mut field_address : String
}
pub fn Ros2Industrial_msgsMsgDeviceInfo::new() -> Ros2Industrial_msgsMsgDeviceInfo {
  {
    field_model: "",
    field_serial_number: "",
    field_hw_version: "",
    field_sw_version: "",
    field_address: "",
  }
}
pub(all) struct Ros2Industrial_msgsMsgDeviceInfoCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsMsgDeviceInfoCodec::new() -> Ros2Industrial_msgsMsgDeviceInfoCodec {
  { ros_version: 2, native_type: "industrial_msgs/msg/DeviceInfo",
    native_identity: None,
    codec_identity: "UWVMROS1_f9a5962800e17495f34dbb73f37373df22f900e528c630497417f78cdecb283b",
    min_wire_bytes: 20, max_wire_bytes: 2580 }
}
pub fn Ros2Industrial_msgsMsgDeviceInfoCodec::encode(_self : Ros2Industrial_msgsMsgDeviceInfoCodec,
    value : Ros2Industrial_msgsMsgDeviceInfo) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2580, error: 0 }
  write_Ros2Industrial_msgsMsgDeviceInfo(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsMsgDeviceInfoCodec::decode(_self : Ros2Industrial_msgsMsgDeviceInfoCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsMsgDeviceInfo,
    Int] {
  if input.length() < 20 || input.length() > 2580 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsMsgDeviceInfo(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsMsgDeviceInfo(writer : BoundedWriter, value : Ros2Industrial_msgsMsgDeviceInfo) -> Unit {
  let part0 = value.field_model
  writer.text(part0, 512)
  let part1 = value.field_serial_number
  writer.text(part1, 512)
  let part2 = value.field_hw_version
  writer.text(part2, 512)
  let part3 = value.field_sw_version
  writer.text(part3, 512)
  let part4 = value.field_address
  writer.text(part4, 512)
}
fn read_Ros2Industrial_msgsMsgDeviceInfo(reader : BoundedReader) -> Ros2Industrial_msgsMsgDeviceInfo {
  let part0 = reader.text(512)
  let part1 = reader.text(512)
  let part2 = reader.text(512)
  let part3 = reader.text(512)
  let part4 = reader.text(512)
    {
      field_model: part0,
      field_serial_number: part1,
      field_hw_version: part2,
      field_sw_version: part3,
      field_address: part4
    }
}

pub(all) struct Ros2Industrial_msgsMsgRobotMode {
  mut field_val : Int
}
pub fn Ros2Industrial_msgsMsgRobotMode::new() -> Ros2Industrial_msgsMsgRobotMode {
  {
    field_val: 0,
  }
}
pub(all) struct Ros2Industrial_msgsMsgRobotModeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsMsgRobotModeCodec::new() -> Ros2Industrial_msgsMsgRobotModeCodec {
  { ros_version: 2, native_type: "industrial_msgs/msg/RobotMode",
    native_identity: None,
    codec_identity: "UWVMROS1_4f9173c5e27815ca33be603b8645a22420bda3ab308962127060d2413d092c4c",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsMsgRobotModeCodec::encode(_self : Ros2Industrial_msgsMsgRobotModeCodec,
    value : Ros2Industrial_msgsMsgRobotMode) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsMsgRobotMode(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsMsgRobotModeCodec::decode(_self : Ros2Industrial_msgsMsgRobotModeCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsMsgRobotMode,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsMsgRobotMode(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsMsgRobotMode(writer : BoundedWriter, value : Ros2Industrial_msgsMsgRobotMode) -> Unit {
  let part0 = value.field_val
  if part0 < -128 || part0 > 127 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Industrial_msgsMsgRobotMode(reader : BoundedReader) -> Ros2Industrial_msgsMsgRobotMode {
  let part0 = reader.signed8()
  { field_val: part0 }
}

pub(all) struct Ros2Industrial_msgsMsgTriState {
  mut field_val : Int
}
pub fn Ros2Industrial_msgsMsgTriState::new() -> Ros2Industrial_msgsMsgTriState {
  {
    field_val: 0,
  }
}
pub(all) struct Ros2Industrial_msgsMsgTriStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsMsgTriStateCodec::new() -> Ros2Industrial_msgsMsgTriStateCodec {
  { ros_version: 2, native_type: "industrial_msgs/msg/TriState",
    native_identity: None,
    codec_identity: "UWVMROS1_b7ae62ce19d642ad46e962ffb50cd76c43c96ac673ac36d690f99c1dd8d2a841",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsMsgTriStateCodec::encode(_self : Ros2Industrial_msgsMsgTriStateCodec,
    value : Ros2Industrial_msgsMsgTriState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsMsgTriState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsMsgTriStateCodec::decode(_self : Ros2Industrial_msgsMsgTriStateCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsMsgTriState,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsMsgTriState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsMsgTriState(writer : BoundedWriter, value : Ros2Industrial_msgsMsgTriState) -> Unit {
  let part0 = value.field_val
  if part0 < -128 || part0 > 127 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Industrial_msgsMsgTriState(reader : BoundedReader) -> Ros2Industrial_msgsMsgTriState {
  let part0 = reader.signed8()
  { field_val: part0 }
}

pub(all) struct Ros2Industrial_msgsMsgRobotStatus {
  mut field_header : Ros2Std_msgsMsgHeader
  mut field_mode : Ros2Industrial_msgsMsgRobotMode
  mut field_e_stopped : Ros2Industrial_msgsMsgTriState
  mut field_drives_powered : Ros2Industrial_msgsMsgTriState
  mut field_motion_possible : Ros2Industrial_msgsMsgTriState
  mut field_in_motion : Ros2Industrial_msgsMsgTriState
  mut field_in_error : Ros2Industrial_msgsMsgTriState
  mut field_error_codes : Array[Int]
}
pub fn Ros2Industrial_msgsMsgRobotStatus::new() -> Ros2Industrial_msgsMsgRobotStatus {
  {
    field_header: Ros2Std_msgsMsgHeader::new(),
    field_mode: Ros2Industrial_msgsMsgRobotMode::new(),
    field_e_stopped: Ros2Industrial_msgsMsgTriState::new(),
    field_drives_powered: Ros2Industrial_msgsMsgTriState::new(),
    field_motion_possible: Ros2Industrial_msgsMsgTriState::new(),
    field_in_motion: Ros2Industrial_msgsMsgTriState::new(),
    field_in_error: Ros2Industrial_msgsMsgTriState::new(),
    field_error_codes: [],
  }
}
pub(all) struct Ros2Industrial_msgsMsgRobotStatusCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsMsgRobotStatusCodec::new() -> Ros2Industrial_msgsMsgRobotStatusCodec {
  { ros_version: 2, native_type: "industrial_msgs/msg/RobotStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_1086f16ba5d614f3d87c3ab195240b5a0683ef490f2e92434e4ea3bdbe7554ba",
    min_wire_bytes: 22, max_wire_bytes: 150 }
}
pub fn Ros2Industrial_msgsMsgRobotStatusCodec::encode(_self : Ros2Industrial_msgsMsgRobotStatusCodec,
    value : Ros2Industrial_msgsMsgRobotStatus) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 150, error: 0 }
  write_Ros2Industrial_msgsMsgRobotStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 22 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsMsgRobotStatusCodec::decode(_self : Ros2Industrial_msgsMsgRobotStatusCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsMsgRobotStatus,
    Int] {
  if input.length() < 22 || input.length() > 150 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsMsgRobotStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsMsgRobotStatus(writer : BoundedWriter, value : Ros2Industrial_msgsMsgRobotStatus) -> Unit {
  let part0 = value.field_header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.field_mode
  write_Ros2Industrial_msgsMsgRobotMode(writer, part1)
  let part2 = value.field_e_stopped
  write_Ros2Industrial_msgsMsgTriState(writer, part2)
  let part3 = value.field_drives_powered
  write_Ros2Industrial_msgsMsgTriState(writer, part3)
  let part4 = value.field_motion_possible
  write_Ros2Industrial_msgsMsgTriState(writer, part4)
  let part5 = value.field_in_motion
  write_Ros2Industrial_msgsMsgTriState(writer, part5)
  let part6 = value.field_in_error
  write_Ros2Industrial_msgsMsgTriState(writer, part6)
  let part7 = value.field_error_codes
  let count7 = part7.length()
  if count7 > 16 { writer.error = 22; return () }
  writer.unsigned(count7.to_uint64(), 4)
  for index = 0; index < count7; index = index + 1 {
    let element = part7[index]
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  }
}
fn read_Ros2Industrial_msgsMsgRobotStatus(reader : BoundedReader) -> Ros2Industrial_msgsMsgRobotStatus {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Industrial_msgsMsgRobotMode(reader)
  let part2 = read_Ros2Industrial_msgsMsgTriState(reader)
  let part3 = read_Ros2Industrial_msgsMsgTriState(reader)
  let part4 = read_Ros2Industrial_msgsMsgTriState(reader)
  let part5 = read_Ros2Industrial_msgsMsgTriState(reader)
  let part6 = read_Ros2Industrial_msgsMsgTriState(reader)
  let part7 : Array[Int] = []
  let count7 = reader.count(16, 4)
  for index = 0; index < count7; index = index + 1 {
    part7.push(reader.unsigned(4).to_uint().reinterpret_as_int())
  }
    {
      field_header: part0,
      field_mode: part1,
      field_e_stopped: part2,
      field_drives_powered: part3,
      field_motion_possible: part4,
      field_in_motion: part5,
      field_in_error: part6,
      field_error_codes: part7
    }
}

pub(all) struct Ros2Industrial_msgsMsgServiceReturnCode {
  mut field_val : Int
}
pub fn Ros2Industrial_msgsMsgServiceReturnCode::new() -> Ros2Industrial_msgsMsgServiceReturnCode {
  {
    field_val: 0,
  }
}
pub(all) struct Ros2Industrial_msgsMsgServiceReturnCodeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsMsgServiceReturnCodeCodec::new() -> Ros2Industrial_msgsMsgServiceReturnCodeCodec {
  { ros_version: 2, native_type: "industrial_msgs/msg/ServiceReturnCode",
    native_identity: None,
    codec_identity: "UWVMROS1_62eb4415a63d7686f16ea343193238838c78aa8e9b9786a65c92fb227e03d3e5",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsMsgServiceReturnCodeCodec::encode(_self : Ros2Industrial_msgsMsgServiceReturnCodeCodec,
    value : Ros2Industrial_msgsMsgServiceReturnCode) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsMsgServiceReturnCode(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsMsgServiceReturnCodeCodec::decode(_self : Ros2Industrial_msgsMsgServiceReturnCodeCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsMsgServiceReturnCode,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsMsgServiceReturnCode(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsMsgServiceReturnCode(writer : BoundedWriter,
    value : Ros2Industrial_msgsMsgServiceReturnCode) -> Unit {
  let part0 = value.field_val
  if part0 < -128 || part0 > 127 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Industrial_msgsMsgServiceReturnCode(reader : BoundedReader) -> Ros2Industrial_msgsMsgServiceReturnCode {
  let part0 = reader.signed8()
  { field_val: part0 }
}

pub(all) struct Ros2Industrial_msgsSrvCmdJointTrajectory_Request {
  mut field_trajectory : Ros2Trajectory_msgsMsgJointTrajectory
}
pub fn Ros2Industrial_msgsSrvCmdJointTrajectory_Request::new() -> Ros2Industrial_msgsSrvCmdJointTrajectory_Request {
  {
    field_trajectory: Ros2Trajectory_msgsMsgJointTrajectory::new(),
  }
}
pub(all) struct Ros2Industrial_msgsSrvCmdJointTrajectory_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvCmdJointTrajectory_RequestCodec::new(
    ) -> Ros2Industrial_msgsSrvCmdJointTrajectory_RequestCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/CmdJointTrajectory_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_1def3934b243546a4591b7be1ef2eb27002fbd9d3725302016e3b1846805149d",
    min_wire_bytes: 20, max_wire_bytes: 4164 }
}
pub fn Ros2Industrial_msgsSrvCmdJointTrajectory_RequestCodec::encode(
    _self : Ros2Industrial_msgsSrvCmdJointTrajectory_RequestCodec,
    value : Ros2Industrial_msgsSrvCmdJointTrajectory_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4164, error: 0 }
  write_Ros2Industrial_msgsSrvCmdJointTrajectory_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvCmdJointTrajectory_RequestCodec::decode(
    _self : Ros2Industrial_msgsSrvCmdJointTrajectory_RequestCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvCmdJointTrajectory_Request,
    Int] {
  if input.length() < 20 || input.length() > 4164 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvCmdJointTrajectory_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvCmdJointTrajectory_Request(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvCmdJointTrajectory_Request) -> Unit {
  let part0 = value.field_trajectory
  write_Ros2Trajectory_msgsMsgJointTrajectory(writer, part0)
}
fn read_Ros2Industrial_msgsSrvCmdJointTrajectory_Request(
    reader : BoundedReader) -> Ros2Industrial_msgsSrvCmdJointTrajectory_Request {
  let part0 = read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
  { field_trajectory: part0 }
}

pub(all) struct Ros2Industrial_msgsSrvCmdJointTrajectory_Response {
  mut field_code : Ros2Industrial_msgsMsgServiceReturnCode
}
pub fn Ros2Industrial_msgsSrvCmdJointTrajectory_Response::new() -> Ros2Industrial_msgsSrvCmdJointTrajectory_Response {
  {
    field_code: Ros2Industrial_msgsMsgServiceReturnCode::new(),
  }
}
pub(all) struct Ros2Industrial_msgsSrvCmdJointTrajectory_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvCmdJointTrajectory_ResponseCodec::new(
    ) -> Ros2Industrial_msgsSrvCmdJointTrajectory_ResponseCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/CmdJointTrajectory_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_1e4d064ef659e5d1cc73bdd90f82657a16087c96e0f75b632e2be2be884bca8b",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsSrvCmdJointTrajectory_ResponseCodec::encode(
    _self : Ros2Industrial_msgsSrvCmdJointTrajectory_ResponseCodec,
    value : Ros2Industrial_msgsSrvCmdJointTrajectory_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsSrvCmdJointTrajectory_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvCmdJointTrajectory_ResponseCodec::decode(
    _self : Ros2Industrial_msgsSrvCmdJointTrajectory_ResponseCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvCmdJointTrajectory_Response,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvCmdJointTrajectory_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvCmdJointTrajectory_Response(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvCmdJointTrajectory_Response) -> Unit {
  let part0 = value.field_code
  write_Ros2Industrial_msgsMsgServiceReturnCode(writer, part0)
}
fn read_Ros2Industrial_msgsSrvCmdJointTrajectory_Response(
    reader : BoundedReader) -> Ros2Industrial_msgsSrvCmdJointTrajectory_Response {
  let part0 = read_Ros2Industrial_msgsMsgServiceReturnCode(reader)
  { field_code: part0 }
}

pub(all) enum Ros2Industrial_msgsSrvGetRobotInfo_Request { Ros2Industrial_msgsSrvGetRobotInfo_RequestEmpty }
pub fn Ros2Industrial_msgsSrvGetRobotInfo_Request::new(
    ) -> Ros2Industrial_msgsSrvGetRobotInfo_Request { Ros2Industrial_msgsSrvGetRobotInfo_RequestEmpty }
pub(all) struct Ros2Industrial_msgsSrvGetRobotInfo_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvGetRobotInfo_RequestCodec::new() -> Ros2Industrial_msgsSrvGetRobotInfo_RequestCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/GetRobotInfo_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_688a272f6ee39921013c6c39a7b0b0c4e2cda5119787088234103518ba25c1d2",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Industrial_msgsSrvGetRobotInfo_RequestCodec::encode(_self : Ros2Industrial_msgsSrvGetRobotInfo_RequestCodec,
    value : Ros2Industrial_msgsSrvGetRobotInfo_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Industrial_msgsSrvGetRobotInfo_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvGetRobotInfo_RequestCodec::decode(_self : Ros2Industrial_msgsSrvGetRobotInfo_RequestCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvGetRobotInfo_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvGetRobotInfo_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvGetRobotInfo_Request(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvGetRobotInfo_Request) -> Unit {
}
fn read_Ros2Industrial_msgsSrvGetRobotInfo_Request(
    reader : BoundedReader) -> Ros2Industrial_msgsSrvGetRobotInfo_Request {
  Ros2Industrial_msgsSrvGetRobotInfo_RequestEmpty
}

pub(all) struct Ros2Industrial_msgsSrvGetRobotInfo_Response {
  mut field_controller : Ros2Industrial_msgsMsgDeviceInfo
  mut field_robots : Array[Ros2Industrial_msgsMsgDeviceInfo]
  mut field_code : Ros2Industrial_msgsMsgServiceReturnCode
}
pub fn Ros2Industrial_msgsSrvGetRobotInfo_Response::new() -> Ros2Industrial_msgsSrvGetRobotInfo_Response {
  {
    field_controller: Ros2Industrial_msgsMsgDeviceInfo::new(),
    field_robots: [],
    field_code: Ros2Industrial_msgsMsgServiceReturnCode::new(),
  }
}
pub(all) struct Ros2Industrial_msgsSrvGetRobotInfo_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvGetRobotInfo_ResponseCodec::new() -> Ros2Industrial_msgsSrvGetRobotInfo_ResponseCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/GetRobotInfo_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_6d37cdcd8afc918329d7856e682d7fcdae2931832474a9194143c21079ed4152",
    min_wire_bytes: 25, max_wire_bytes: 32768 }
}
pub fn Ros2Industrial_msgsSrvGetRobotInfo_ResponseCodec::encode(
    _self : Ros2Industrial_msgsSrvGetRobotInfo_ResponseCodec,
    value : Ros2Industrial_msgsSrvGetRobotInfo_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32768, error: 0 }
  write_Ros2Industrial_msgsSrvGetRobotInfo_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvGetRobotInfo_ResponseCodec::decode(
    _self : Ros2Industrial_msgsSrvGetRobotInfo_ResponseCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvGetRobotInfo_Response,
    Int] {
  if input.length() < 25 || input.length() > 32768 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvGetRobotInfo_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvGetRobotInfo_Response(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvGetRobotInfo_Response) -> Unit {
  let part0 = value.field_controller
  write_Ros2Industrial_msgsMsgDeviceInfo(writer, part0)
  let part1 = value.field_robots
  let count1 = part1.length()
  if count1 > 16 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Industrial_msgsMsgDeviceInfo(writer, element)
  }
  let part2 = value.field_code
  write_Ros2Industrial_msgsMsgServiceReturnCode(writer, part2)
}
fn read_Ros2Industrial_msgsSrvGetRobotInfo_Response(
    reader : BoundedReader) -> Ros2Industrial_msgsSrvGetRobotInfo_Response {
  let part0 = read_Ros2Industrial_msgsMsgDeviceInfo(reader)
  let part1 : Array[Ros2Industrial_msgsMsgDeviceInfo] = []
  let count1 = reader.count(16, 20)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Industrial_msgsMsgDeviceInfo(reader))
  }
  let part2 = read_Ros2Industrial_msgsMsgServiceReturnCode(reader)
  { field_controller: part0, field_robots: part1, field_code: part2 }
}

pub(all) struct Ros2Industrial_msgsSrvSetDrivePower_Request {
  mut field_drive_power : Bool
}
pub fn Ros2Industrial_msgsSrvSetDrivePower_Request::new() -> Ros2Industrial_msgsSrvSetDrivePower_Request {
  {
    field_drive_power: false,
  }
}
pub(all) struct Ros2Industrial_msgsSrvSetDrivePower_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvSetDrivePower_RequestCodec::new() -> Ros2Industrial_msgsSrvSetDrivePower_RequestCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/SetDrivePower_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_b4fc5e109e131a97820ab5856b34839c572ac0b0c256d70457c176e401844f96",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsSrvSetDrivePower_RequestCodec::encode(
    _self : Ros2Industrial_msgsSrvSetDrivePower_RequestCodec,
    value : Ros2Industrial_msgsSrvSetDrivePower_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsSrvSetDrivePower_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvSetDrivePower_RequestCodec::decode(
    _self : Ros2Industrial_msgsSrvSetDrivePower_RequestCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvSetDrivePower_Request,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvSetDrivePower_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvSetDrivePower_Request(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvSetDrivePower_Request) -> Unit {
  let part0 = value.field_drive_power
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Industrial_msgsSrvSetDrivePower_Request(
    reader : BoundedReader) -> Ros2Industrial_msgsSrvSetDrivePower_Request {
  let part0 = reader.boolean()
  { field_drive_power: part0 }
}

pub(all) struct Ros2Industrial_msgsSrvSetDrivePower_Response {
  mut field_code : Ros2Industrial_msgsMsgServiceReturnCode
}
pub fn Ros2Industrial_msgsSrvSetDrivePower_Response::new() -> Ros2Industrial_msgsSrvSetDrivePower_Response {
  {
    field_code: Ros2Industrial_msgsMsgServiceReturnCode::new(),
  }
}
pub(all) struct Ros2Industrial_msgsSrvSetDrivePower_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvSetDrivePower_ResponseCodec::new() -> Ros2Industrial_msgsSrvSetDrivePower_ResponseCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/SetDrivePower_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_050fb9a727ebedd240e9023b9a2379a5d72e0d9fa335bead0c40d783abb22cff",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsSrvSetDrivePower_ResponseCodec::encode(
    _self : Ros2Industrial_msgsSrvSetDrivePower_ResponseCodec,
    value : Ros2Industrial_msgsSrvSetDrivePower_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsSrvSetDrivePower_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvSetDrivePower_ResponseCodec::decode(
    _self : Ros2Industrial_msgsSrvSetDrivePower_ResponseCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvSetDrivePower_Response,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvSetDrivePower_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvSetDrivePower_Response(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvSetDrivePower_Response) -> Unit {
  let part0 = value.field_code
  write_Ros2Industrial_msgsMsgServiceReturnCode(writer, part0)
}
fn read_Ros2Industrial_msgsSrvSetDrivePower_Response(
    reader : BoundedReader) -> Ros2Industrial_msgsSrvSetDrivePower_Response {
  let part0 = read_Ros2Industrial_msgsMsgServiceReturnCode(reader)
  { field_code: part0 }
}

pub(all) struct Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request {
  mut field_level : Ros2Industrial_msgsMsgDebugLevel
}
pub fn Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request::new() -> Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request {
  {
    field_level: Ros2Industrial_msgsMsgDebugLevel::new(),
  }
}
pub(all) struct Ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestCodec::new(
    ) -> Ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/SetRemoteLoggerLevel_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_bbadd39c05cab90b14f4b1fad23ff05ac83325f6cc57810cd649e04fa29fe014",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestCodec::encode(
    _self : Ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestCodec,
    value : Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestCodec::decode(
    _self : Ros2Industrial_msgsSrvSetRemoteLoggerLevel_RequestCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request) -> Unit {
  let part0 = value.field_level
  write_Ros2Industrial_msgsMsgDebugLevel(writer, part0)
}
fn read_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request(
    reader : BoundedReader) -> Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Request {
  let part0 = read_Ros2Industrial_msgsMsgDebugLevel(reader)
  { field_level: part0 }
}

pub(all) struct Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response {
  mut field_code : Ros2Industrial_msgsMsgServiceReturnCode
}
pub fn Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response::new(
    ) -> Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response {
  {
    field_code: Ros2Industrial_msgsMsgServiceReturnCode::new(),
  }
}
pub(all) struct Ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseCodec::new(
    ) -> Ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/SetRemoteLoggerLevel_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_b8681d031a4bb5a67b842277af2e2156e8339bdef23be88d2b64e296a7e3d63b",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseCodec::encode(
    _self : Ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseCodec,
    value : Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseCodec::decode(
    _self : Ros2Industrial_msgsSrvSetRemoteLoggerLevel_ResponseCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response) -> Unit {
  let part0 = value.field_code
  write_Ros2Industrial_msgsMsgServiceReturnCode(writer, part0)
}
fn read_Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response(
    reader : BoundedReader) -> Ros2Industrial_msgsSrvSetRemoteLoggerLevel_Response {
  let part0 = read_Ros2Industrial_msgsMsgServiceReturnCode(reader)
  { field_code: part0 }
}

pub(all) enum Ros2Industrial_msgsSrvStartMotion_Request { Ros2Industrial_msgsSrvStartMotion_RequestEmpty }
pub fn Ros2Industrial_msgsSrvStartMotion_Request::new(
    ) -> Ros2Industrial_msgsSrvStartMotion_Request { Ros2Industrial_msgsSrvStartMotion_RequestEmpty }
pub(all) struct Ros2Industrial_msgsSrvStartMotion_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvStartMotion_RequestCodec::new() -> Ros2Industrial_msgsSrvStartMotion_RequestCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/StartMotion_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_0a96fb9489f863612a91bf82f995f2f28bcb7fb403bde74c617925c789e4dcd8",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Industrial_msgsSrvStartMotion_RequestCodec::encode(_self : Ros2Industrial_msgsSrvStartMotion_RequestCodec,
    value : Ros2Industrial_msgsSrvStartMotion_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Industrial_msgsSrvStartMotion_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvStartMotion_RequestCodec::decode(_self : Ros2Industrial_msgsSrvStartMotion_RequestCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvStartMotion_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvStartMotion_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvStartMotion_Request(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvStartMotion_Request) -> Unit {
}
fn read_Ros2Industrial_msgsSrvStartMotion_Request(reader : BoundedReader) -> Ros2Industrial_msgsSrvStartMotion_Request {
  Ros2Industrial_msgsSrvStartMotion_RequestEmpty
}

pub(all) struct Ros2Industrial_msgsSrvStartMotion_Response {
  mut field_code : Ros2Industrial_msgsMsgServiceReturnCode
}
pub fn Ros2Industrial_msgsSrvStartMotion_Response::new() -> Ros2Industrial_msgsSrvStartMotion_Response {
  {
    field_code: Ros2Industrial_msgsMsgServiceReturnCode::new(),
  }
}
pub(all) struct Ros2Industrial_msgsSrvStartMotion_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvStartMotion_ResponseCodec::new() -> Ros2Industrial_msgsSrvStartMotion_ResponseCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/StartMotion_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_3bb3650fbe638a6d300bcd9fcd5acf574bd54d00a7368edd3014bf44dcf66c16",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsSrvStartMotion_ResponseCodec::encode(_self : Ros2Industrial_msgsSrvStartMotion_ResponseCodec,
    value : Ros2Industrial_msgsSrvStartMotion_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsSrvStartMotion_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvStartMotion_ResponseCodec::decode(_self : Ros2Industrial_msgsSrvStartMotion_ResponseCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvStartMotion_Response,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvStartMotion_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvStartMotion_Response(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvStartMotion_Response) -> Unit {
  let part0 = value.field_code
  write_Ros2Industrial_msgsMsgServiceReturnCode(writer, part0)
}
fn read_Ros2Industrial_msgsSrvStartMotion_Response(
    reader : BoundedReader) -> Ros2Industrial_msgsSrvStartMotion_Response {
  let part0 = read_Ros2Industrial_msgsMsgServiceReturnCode(reader)
  { field_code: part0 }
}

pub(all) enum Ros2Industrial_msgsSrvStopMotion_Request { Ros2Industrial_msgsSrvStopMotion_RequestEmpty }
pub fn Ros2Industrial_msgsSrvStopMotion_Request::new(
    ) -> Ros2Industrial_msgsSrvStopMotion_Request { Ros2Industrial_msgsSrvStopMotion_RequestEmpty }
pub(all) struct Ros2Industrial_msgsSrvStopMotion_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvStopMotion_RequestCodec::new() -> Ros2Industrial_msgsSrvStopMotion_RequestCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/StopMotion_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_fe5a7cf0da30270eab5cfb1ab8c1fbd37d2b4c4f91ef29662a0ddcac39e6ef49",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Industrial_msgsSrvStopMotion_RequestCodec::encode(_self : Ros2Industrial_msgsSrvStopMotion_RequestCodec,
    value : Ros2Industrial_msgsSrvStopMotion_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Industrial_msgsSrvStopMotion_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvStopMotion_RequestCodec::decode(_self : Ros2Industrial_msgsSrvStopMotion_RequestCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvStopMotion_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvStopMotion_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvStopMotion_Request(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvStopMotion_Request) -> Unit {
}
fn read_Ros2Industrial_msgsSrvStopMotion_Request(reader : BoundedReader) -> Ros2Industrial_msgsSrvStopMotion_Request {
  Ros2Industrial_msgsSrvStopMotion_RequestEmpty
}

pub(all) struct Ros2Industrial_msgsSrvStopMotion_Response {
  mut field_code : Ros2Industrial_msgsMsgServiceReturnCode
}
pub fn Ros2Industrial_msgsSrvStopMotion_Response::new() -> Ros2Industrial_msgsSrvStopMotion_Response {
  {
    field_code: Ros2Industrial_msgsMsgServiceReturnCode::new(),
  }
}
pub(all) struct Ros2Industrial_msgsSrvStopMotion_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Industrial_msgsSrvStopMotion_ResponseCodec::new() -> Ros2Industrial_msgsSrvStopMotion_ResponseCodec {
  { ros_version: 2, native_type: "industrial_msgs/srv/StopMotion_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_c26bda240d86becc5b8b4ea80380eba3602092a5ec4a06818dbfbd38c24015b5",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Industrial_msgsSrvStopMotion_ResponseCodec::encode(_self : Ros2Industrial_msgsSrvStopMotion_ResponseCodec,
    value : Ros2Industrial_msgsSrvStopMotion_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Industrial_msgsSrvStopMotion_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Industrial_msgsSrvStopMotion_ResponseCodec::decode(_self : Ros2Industrial_msgsSrvStopMotion_ResponseCodec,
    input : Bytes) -> Result[Ros2Industrial_msgsSrvStopMotion_Response,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Industrial_msgsSrvStopMotion_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Industrial_msgsSrvStopMotion_Response(writer : BoundedWriter,
    value : Ros2Industrial_msgsSrvStopMotion_Response) -> Unit {
  let part0 = value.field_code
  write_Ros2Industrial_msgsMsgServiceReturnCode(writer, part0)
}
fn read_Ros2Industrial_msgsSrvStopMotion_Response(reader : BoundedReader) -> Ros2Industrial_msgsSrvStopMotion_Response {
  let part0 = read_Ros2Industrial_msgsMsgServiceReturnCode(reader)
  { field_code: part0 }
}

pub(all) struct Ros2Motoros2_interfacesMsgAlarmCauseRemedy {
  mut field_cause : String
  mut field_remedy : String
}
pub fn Ros2Motoros2_interfacesMsgAlarmCauseRemedy::new() -> Ros2Motoros2_interfacesMsgAlarmCauseRemedy {
  {
    field_cause: "",
    field_remedy: "",
  }
}
pub(all) struct Ros2Motoros2_interfacesMsgAlarmCauseRemedyCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesMsgAlarmCauseRemedyCodec::new() -> Ros2Motoros2_interfacesMsgAlarmCauseRemedyCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/msg/AlarmCauseRemedy",
    native_identity: None,
    codec_identity: "UWVMROS1_f977609022f4ca593b9089d0038d1c28d1bc4b533e272f38c3379495f326ddf5",
    min_wire_bytes: 8, max_wire_bytes: 1032 }
}
pub fn Ros2Motoros2_interfacesMsgAlarmCauseRemedyCodec::encode(_self : Ros2Motoros2_interfacesMsgAlarmCauseRemedyCodec,
    value : Ros2Motoros2_interfacesMsgAlarmCauseRemedy) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1032, error: 0 }
  write_Ros2Motoros2_interfacesMsgAlarmCauseRemedy(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesMsgAlarmCauseRemedyCodec::decode(_self : Ros2Motoros2_interfacesMsgAlarmCauseRemedyCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesMsgAlarmCauseRemedy,
    Int] {
  if input.length() < 8 || input.length() > 1032 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesMsgAlarmCauseRemedy(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesMsgAlarmCauseRemedy(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesMsgAlarmCauseRemedy) -> Unit {
  let part0 = value.field_cause
  writer.text(part0, 512)
  let part1 = value.field_remedy
  writer.text(part1, 512)
}
fn read_Ros2Motoros2_interfacesMsgAlarmCauseRemedy(
    reader : BoundedReader) -> Ros2Motoros2_interfacesMsgAlarmCauseRemedy {
  let part0 = reader.text(512)
  let part1 = reader.text(512)
  { field_cause: part0, field_remedy: part1 }
}

pub(all) struct Ros2Motoros2_interfacesMsgAlarmInfo {
  mut field_number : UInt
  mut field_message : String
  mut field_sub_code : Int
  mut field_datetime : Ros2Builtin_interfacesMsgTime
  mut field_contents : String
  mut field_description : String
  mut field_help : Array[Ros2Motoros2_interfacesMsgAlarmCauseRemedy]
}
pub fn Ros2Motoros2_interfacesMsgAlarmInfo::new() -> Ros2Motoros2_interfacesMsgAlarmInfo {
  {
    field_number: 0U,
    field_message: "",
    field_sub_code: 0,
    field_datetime: Ros2Builtin_interfacesMsgTime::new(),
    field_contents: "",
    field_description: "",
    field_help: [],
  }
}
pub(all) struct Ros2Motoros2_interfacesMsgAlarmInfoCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesMsgAlarmInfoCodec::new() -> Ros2Motoros2_interfacesMsgAlarmInfoCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/msg/AlarmInfo",
    native_identity: None,
    codec_identity: "UWVMROS1_7cf3fa3037f28f295dd62009e708ea3e46a80f83471d0a0f9fb55af125c0c27f",
    min_wire_bytes: 32, max_wire_bytes: 25248 }
}
pub fn Ros2Motoros2_interfacesMsgAlarmInfoCodec::encode(_self : Ros2Motoros2_interfacesMsgAlarmInfoCodec,
    value : Ros2Motoros2_interfacesMsgAlarmInfo) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 25248, error: 0 }
  write_Ros2Motoros2_interfacesMsgAlarmInfo(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesMsgAlarmInfoCodec::decode(_self : Ros2Motoros2_interfacesMsgAlarmInfoCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesMsgAlarmInfo,
    Int] {
  if input.length() < 32 || input.length() > 25248 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesMsgAlarmInfo(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesMsgAlarmInfo(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesMsgAlarmInfo) -> Unit {
  let part0 = value.field_number
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_message
  writer.text(part1, 512)
  let part2 = value.field_sub_code
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part3 = value.field_datetime
  write_Ros2Builtin_interfacesMsgTime(writer, part3)
  let part4 = value.field_contents
  writer.text(part4, 4096)
  let part5 = value.field_description
  writer.text(part5, 4096)
  let part6 = value.field_help
  let count6 = part6.length()
  if count6 > 16 { writer.error = 22; return () }
  writer.unsigned(count6.to_uint64(), 4)
  for index = 0; index < count6; index = index + 1 {
    let element = part6[index]
    write_Ros2Motoros2_interfacesMsgAlarmCauseRemedy(writer, element)
  }
}
fn read_Ros2Motoros2_interfacesMsgAlarmInfo(reader : BoundedReader) -> Ros2Motoros2_interfacesMsgAlarmInfo {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(512)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part3 = read_Ros2Builtin_interfacesMsgTime(reader)
  let part4 = reader.text(4096)
  let part5 = reader.text(4096)
  let part6 : Array[Ros2Motoros2_interfacesMsgAlarmCauseRemedy] = []
  let count6 = reader.count(16, 8)
  for index = 0; index < count6; index = index + 1 {
    part6.push(read_Ros2Motoros2_interfacesMsgAlarmCauseRemedy(reader))
  }
    {
      field_number: part0,
      field_message: part1,
      field_sub_code: part2,
      field_datetime: part3,
      field_contents: part4,
      field_description: part5,
      field_help: part6
    }
}

pub(all) struct Ros2Motoros2_interfacesMsgErrorInfo {
  mut field_number : UInt
  mut field_message : String
  mut field_sub_code : Int
  mut field_datetime : Ros2Builtin_interfacesMsgTime
}
pub fn Ros2Motoros2_interfacesMsgErrorInfo::new() -> Ros2Motoros2_interfacesMsgErrorInfo {
  {
    field_number: 0U,
    field_message: "",
    field_sub_code: 0,
    field_datetime: Ros2Builtin_interfacesMsgTime::new(),
  }
}
pub(all) struct Ros2Motoros2_interfacesMsgErrorInfoCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesMsgErrorInfoCodec::new() -> Ros2Motoros2_interfacesMsgErrorInfoCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/msg/ErrorInfo",
    native_identity: None,
    codec_identity: "UWVMROS1_1cfe60c0af6bc157db84c4d9e0b20a8f2e5c78fd4afd6908d32b3217f3734b67",
    min_wire_bytes: 20, max_wire_bytes: 532 }
}
pub fn Ros2Motoros2_interfacesMsgErrorInfoCodec::encode(_self : Ros2Motoros2_interfacesMsgErrorInfoCodec,
    value : Ros2Motoros2_interfacesMsgErrorInfo) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 532, error: 0 }
  write_Ros2Motoros2_interfacesMsgErrorInfo(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesMsgErrorInfoCodec::decode(_self : Ros2Motoros2_interfacesMsgErrorInfoCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesMsgErrorInfo,
    Int] {
  if input.length() < 20 || input.length() > 532 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesMsgErrorInfo(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesMsgErrorInfo(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesMsgErrorInfo) -> Unit {
  let part0 = value.field_number
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_message
  writer.text(part1, 512)
  let part2 = value.field_sub_code
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part3 = value.field_datetime
  write_Ros2Builtin_interfacesMsgTime(writer, part3)
}
fn read_Ros2Motoros2_interfacesMsgErrorInfo(reader : BoundedReader) -> Ros2Motoros2_interfacesMsgErrorInfo {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(512)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part3 = read_Ros2Builtin_interfacesMsgTime(reader)
  { field_number: part0, field_message: part1, field_sub_code: part2, field_datetime: part3 }
}

pub(all) enum Ros2Motoros2_interfacesMsgInformJobCrudResultCodes { Ros2Motoros2_interfacesMsgInformJobCrudResultCodesEmpty }
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodes::new(
    ) -> Ros2Motoros2_interfacesMsgInformJobCrudResultCodes { Ros2Motoros2_interfacesMsgInformJobCrudResultCodesEmpty }
pub(all) struct Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::new(
    ) -> Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/msg/InformJobCrudResultCodes",
    native_identity: None,
    codec_identity: "UWVMROS1_f5ed037b83926b48a88fa486ed8db5f5d3e39e4a486d4a90190ffd6a70452613",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::encode(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec,
    value : Ros2Motoros2_interfacesMsgInformJobCrudResultCodes) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::decode(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesMsgInformJobCrudResultCodes,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesMsgInformJobCrudResultCodes) -> Unit {
}
fn read_Ros2Motoros2_interfacesMsgInformJobCrudResultCodes(
    reader : BoundedReader) -> Ros2Motoros2_interfacesMsgInformJobCrudResultCodes {
  Ros2Motoros2_interfacesMsgInformJobCrudResultCodesEmpty
}

pub(all) struct Ros2Motoros2_interfacesMsgInitTrajEnum {
  mut field_value : Int
}
pub fn Ros2Motoros2_interfacesMsgInitTrajEnum::new() -> Ros2Motoros2_interfacesMsgInitTrajEnum {
  {
    field_value: 0,
  }
}
pub(all) struct Ros2Motoros2_interfacesMsgInitTrajEnumCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::new() -> Ros2Motoros2_interfacesMsgInitTrajEnumCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/msg/InitTrajEnum",
    native_identity: None,
    codec_identity: "UWVMROS1_9279979f9e3570f48d6e23bf812a4680e3deed9af3309019efdff5464d7b7763",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::encode(_self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec,
    value : Ros2Motoros2_interfacesMsgInitTrajEnum) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Motoros2_interfacesMsgInitTrajEnum(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::decode(_self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesMsgInitTrajEnum,
    Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesMsgInitTrajEnum(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesMsgInitTrajEnum(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesMsgInitTrajEnum) -> Unit {
  let part0 = value.field_value
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Motoros2_interfacesMsgInitTrajEnum(reader : BoundedReader) -> Ros2Motoros2_interfacesMsgInitTrajEnum {
  let part0 = reader.unsigned(2).to_int()
  { field_value: part0 }
}

pub(all) enum Ros2Motoros2_interfacesMsgIoResultCodes { Ros2Motoros2_interfacesMsgIoResultCodesEmpty }
pub fn Ros2Motoros2_interfacesMsgIoResultCodes::new(
    ) -> Ros2Motoros2_interfacesMsgIoResultCodes { Ros2Motoros2_interfacesMsgIoResultCodesEmpty }
pub(all) struct Ros2Motoros2_interfacesMsgIoResultCodesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::new() -> Ros2Motoros2_interfacesMsgIoResultCodesCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/msg/IoResultCodes",
    native_identity: None,
    codec_identity: "UWVMROS1_ef9ab829ae79d4e58336a56259b6beb2ad26a8b1b4070013d9004ac4ab269915",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::encode(_self : Ros2Motoros2_interfacesMsgIoResultCodesCodec,
    value : Ros2Motoros2_interfacesMsgIoResultCodes) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Motoros2_interfacesMsgIoResultCodes(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::decode(_self : Ros2Motoros2_interfacesMsgIoResultCodesCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesMsgIoResultCodes,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesMsgIoResultCodes(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesMsgIoResultCodes(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesMsgIoResultCodes) -> Unit {
}
fn read_Ros2Motoros2_interfacesMsgIoResultCodes(reader : BoundedReader) -> Ros2Motoros2_interfacesMsgIoResultCodes {
  Ros2Motoros2_interfacesMsgIoResultCodesEmpty
}

pub(all) struct Ros2Motoros2_interfacesMsgMotionReadyEnum {
  mut field_value : Int
}
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnum::new() -> Ros2Motoros2_interfacesMsgMotionReadyEnum {
  {
    field_value: 0,
  }
}
pub(all) struct Ros2Motoros2_interfacesMsgMotionReadyEnumCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::new() -> Ros2Motoros2_interfacesMsgMotionReadyEnumCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/msg/MotionReadyEnum",
    native_identity: None,
    codec_identity: "UWVMROS1_c8d4c2b0eba665e01cddc730421a3a42c5b344f4de35ae0a32204891603326d6",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::encode(_self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec,
    value : Ros2Motoros2_interfacesMsgMotionReadyEnum) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Motoros2_interfacesMsgMotionReadyEnum(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::decode(_self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesMsgMotionReadyEnum,
    Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesMsgMotionReadyEnum(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesMsgMotionReadyEnum(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesMsgMotionReadyEnum) -> Unit {
  let part0 = value.field_value
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Motoros2_interfacesMsgMotionReadyEnum(reader : BoundedReader) -> Ros2Motoros2_interfacesMsgMotionReadyEnum {
  let part0 = reader.unsigned(2).to_int()
  { field_value: part0 }
}

pub(all) struct Ros2Motoros2_interfacesMsgQueueResultEnum {
  mut field_value : Int
}
pub fn Ros2Motoros2_interfacesMsgQueueResultEnum::new() -> Ros2Motoros2_interfacesMsgQueueResultEnum {
  {
    field_value: 0,
  }
}
pub(all) struct Ros2Motoros2_interfacesMsgQueueResultEnumCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::new() -> Ros2Motoros2_interfacesMsgQueueResultEnumCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/msg/QueueResultEnum",
    native_identity: None,
    codec_identity: "UWVMROS1_146c6ce3f275b9e4a81622d73cca3d2298cf9f7bb95a783c0dea6279cb5b4f23",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::encode(_self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec,
    value : Ros2Motoros2_interfacesMsgQueueResultEnum) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Motoros2_interfacesMsgQueueResultEnum(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::decode(_self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesMsgQueueResultEnum,
    Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesMsgQueueResultEnum(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesMsgQueueResultEnum(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesMsgQueueResultEnum) -> Unit {
  let part0 = value.field_value
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Motoros2_interfacesMsgQueueResultEnum(reader : BoundedReader) -> Ros2Motoros2_interfacesMsgQueueResultEnum {
  let part0 = reader.unsigned(2).to_int()
  { field_value: part0 }
}

pub(all) struct Ros2Motoros2_interfacesMsgSelectionResultCodes {
  mut field_value : UInt
}
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodes::new() -> Ros2Motoros2_interfacesMsgSelectionResultCodes {
  {
    field_value: 0U,
  }
}
pub(all) struct Ros2Motoros2_interfacesMsgSelectionResultCodesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::new(
    ) -> Ros2Motoros2_interfacesMsgSelectionResultCodesCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/msg/SelectionResultCodes",
    native_identity: None,
    codec_identity: "UWVMROS1_46168b1f851163985e75842d9d795c5715160864a7736e7f92f95818c9435602",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::encode(
    _self : Ros2Motoros2_interfacesMsgSelectionResultCodesCodec,
    value : Ros2Motoros2_interfacesMsgSelectionResultCodes) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Motoros2_interfacesMsgSelectionResultCodes(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::decode(
    _self : Ros2Motoros2_interfacesMsgSelectionResultCodesCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesMsgSelectionResultCodes,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesMsgSelectionResultCodes(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesMsgSelectionResultCodes(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesMsgSelectionResultCodes) -> Unit {
  let part0 = value.field_value
  writer.unsigned(part0.to_uint64(), 4)
}
fn read_Ros2Motoros2_interfacesMsgSelectionResultCodes(
    reader : BoundedReader) -> Ros2Motoros2_interfacesMsgSelectionResultCodes {
  let part0 = reader.unsigned(4).to_uint()
  { field_value: part0 }
}

pub(all) enum Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request { Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestEmpty }
pub fn Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request::new(
    ) -> Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request { Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestEmpty }
pub(all) struct Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/GetActiveAlarmInfo_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_aadcd63f3bc47424c38767afdc1589561e3c90e8aeae9bdceef88b1033d57a7e",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestCodec,
    value : Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request) -> Unit {
}
fn read_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Request {
  Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_RequestEmpty
}

pub(all) struct Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response {
  mut field_result_code : UInt
  mut field_result_message : String
  mut field_alarms : Array[Ros2Motoros2_interfacesMsgAlarmInfo]
  mut field_errors : Array[Ros2Motoros2_interfacesMsgErrorInfo]
}
pub fn Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response::new(
    ) -> Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response {
  {
    field_result_code: 0U,
    field_result_message: "",
    field_alarms: [],
    field_errors: [],
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/GetActiveAlarmInfo_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_e11bdbb95b6ded88d035696260c58dad32bcf3604aa4e89dd41c0dab26541567",
    min_wire_bytes: 16, max_wire_bytes: 32768 }
}
pub fn Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32768, error: 0 }
  write_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response,
    Int] {
  if input.length() < 16 || input.length() > 32768 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response) -> Unit {
  let part0 = value.field_result_code
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_result_message
  writer.text(part1, 512)
  let part2 = value.field_alarms
  let count2 = part2.length()
  if count2 > 16 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Motoros2_interfacesMsgAlarmInfo(writer, element)
  }
  let part3 = value.field_errors
  let count3 = part3.length()
  if count3 > 16 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    write_Ros2Motoros2_interfacesMsgErrorInfo(writer, element)
  }
}
fn read_Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvGetActiveAlarmInfo_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(512)
  let part2 : Array[Ros2Motoros2_interfacesMsgAlarmInfo] = []
  let count2 = reader.count(16, 32)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Motoros2_interfacesMsgAlarmInfo(reader))
  }
  let part3 : Array[Ros2Motoros2_interfacesMsgErrorInfo] = []
  let count3 = reader.count(16, 20)
  for index = 0; index < count3; index = index + 1 {
    part3.push(read_Ros2Motoros2_interfacesMsgErrorInfo(reader))
  }
  { field_result_code: part0, field_result_message: part1, field_alarms: part2, field_errors: part3 }
}

pub(all) enum Ros2Motoros2_interfacesSrvListInformJobs_Request { Ros2Motoros2_interfacesSrvListInformJobs_RequestEmpty }
pub fn Ros2Motoros2_interfacesSrvListInformJobs_Request::new(
    ) -> Ros2Motoros2_interfacesSrvListInformJobs_Request { Ros2Motoros2_interfacesSrvListInformJobs_RequestEmpty }
pub(all) struct Ros2Motoros2_interfacesSrvListInformJobs_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvListInformJobs_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvListInformJobs_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/ListInformJobs_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_e77eedadef98d98321b1757b88284022afcdb1ffef52b98820b0c4ba596d643c",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Motoros2_interfacesSrvListInformJobs_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvListInformJobs_RequestCodec,
    value : Ros2Motoros2_interfacesSrvListInformJobs_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Motoros2_interfacesSrvListInformJobs_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvListInformJobs_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvListInformJobs_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvListInformJobs_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvListInformJobs_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvListInformJobs_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvListInformJobs_Request) -> Unit {
}
fn read_Ros2Motoros2_interfacesSrvListInformJobs_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvListInformJobs_Request {
  Ros2Motoros2_interfacesSrvListInformJobs_RequestEmpty
}

pub(all) struct Ros2Motoros2_interfacesSrvListInformJobs_Response {
  mut field_result_code : UInt
  mut field_message : String
  mut field_names : Array[String]
}
pub fn Ros2Motoros2_interfacesSrvListInformJobs_Response::new() -> Ros2Motoros2_interfacesSrvListInformJobs_Response {
  {
    field_result_code: 0U,
    field_message: "",
    field_names: [],
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvListInformJobs_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvListInformJobs_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvListInformJobs_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/ListInformJobs_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_49021f0abc00f8df1ef49605a244cb6bba8d8b45ece5365ae35d747d2506eadc",
    min_wire_bytes: 12, max_wire_bytes: 8780 }
}
pub fn Ros2Motoros2_interfacesSrvListInformJobs_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvListInformJobs_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvListInformJobs_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8780, error: 0 }
  write_Ros2Motoros2_interfacesSrvListInformJobs_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvListInformJobs_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvListInformJobs_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvListInformJobs_Response,
    Int] {
  if input.length() < 12 || input.length() > 8780 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvListInformJobs_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvListInformJobs_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvListInformJobs_Response) -> Unit {
  let part0 = value.field_result_code
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_message
  writer.text(part1, 512)
  let part2 = value.field_names
  let count2 = part2.length()
  if count2 > 16 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.text(element, 512)
  }
}
fn read_Ros2Motoros2_interfacesSrvListInformJobs_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvListInformJobs_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(512)
  let part2 : Array[String] = []
  let count2 = reader.count(16, 4)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.text(512))
  }
  { field_result_code: part0, field_message: part1, field_names: part2 }
}

pub(all) struct Ros2Motoros2_interfacesSrvQueueTrajPoint_Request {
  mut field_joint_names : Array[String]
  mut field_point : Ros2Trajectory_msgsMsgJointTrajectoryPoint
}
pub fn Ros2Motoros2_interfacesSrvQueueTrajPoint_Request::new() -> Ros2Motoros2_interfacesSrvQueueTrajPoint_Request {
  {
    field_joint_names: [],
    field_point: Ros2Trajectory_msgsMsgJointTrajectoryPoint::new(),
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvQueueTrajPoint_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvQueueTrajPoint_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvQueueTrajPoint_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/QueueTrajPoint_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_3d37f9981d6abaca33ec0b5378fa3a1ac301791cc9be94d5bdcf4ea6aa81b8d0",
    min_wire_bytes: 28, max_wire_bytes: 1228 }
}
pub fn Ros2Motoros2_interfacesSrvQueueTrajPoint_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvQueueTrajPoint_RequestCodec,
    value : Ros2Motoros2_interfacesSrvQueueTrajPoint_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1228, error: 0 }
  write_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvQueueTrajPoint_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvQueueTrajPoint_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvQueueTrajPoint_Request,
    Int] {
  if input.length() < 28 || input.length() > 1228 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvQueueTrajPoint_Request) -> Unit {
  let part0 = value.field_joint_names
  let count0 = part0.length()
  if count0 > 12 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.text(element, 64)
  }
  let part1 = value.field_point
  write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, part1)
}
fn read_Ros2Motoros2_interfacesSrvQueueTrajPoint_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvQueueTrajPoint_Request {
  let part0 : Array[String] = []
  let count0 = reader.count(12, 4)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.text(64))
  }
  let part1 = read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
  { field_joint_names: part0, field_point: part1 }
}

pub(all) struct Ros2Motoros2_interfacesSrvQueueTrajPoint_Response {
  mut field_result_code : Ros2Motoros2_interfacesMsgQueueResultEnum
  mut field_message : String
}
pub fn Ros2Motoros2_interfacesSrvQueueTrajPoint_Response::new() -> Ros2Motoros2_interfacesSrvQueueTrajPoint_Response {
  {
    field_result_code: Ros2Motoros2_interfacesMsgQueueResultEnum::new(),
    field_message: "",
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/QueueTrajPoint_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_d4887ed24d39332a5ccfd4a3d072004dd8f314fe5c166bf0bd57520a826cbccd",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvQueueTrajPoint_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvQueueTrajPoint_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvQueueTrajPoint_Response,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvQueueTrajPoint_Response) -> Unit {
  let part0 = value.field_result_code
  write_Ros2Motoros2_interfacesMsgQueueResultEnum(writer, part0)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros2Motoros2_interfacesSrvQueueTrajPoint_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvQueueTrajPoint_Response {
  let part0 = read_Ros2Motoros2_interfacesMsgQueueResultEnum(reader)
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros2Motoros2_interfacesSrvReadGroupIO_Request {
  mut field_address : UInt
}
pub fn Ros2Motoros2_interfacesSrvReadGroupIO_Request::new() -> Ros2Motoros2_interfacesSrvReadGroupIO_Request {
  {
    field_address: 0U,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvReadGroupIO_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvReadGroupIO_RequestCodec::new() -> Ros2Motoros2_interfacesSrvReadGroupIO_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/ReadGroupIO_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_6ee09ac379e169fc23b81a551e9a9ed21c3f82b5010859984e911b17152beb7f",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Motoros2_interfacesSrvReadGroupIO_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvReadGroupIO_RequestCodec,
    value : Ros2Motoros2_interfacesSrvReadGroupIO_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Motoros2_interfacesSrvReadGroupIO_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvReadGroupIO_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvReadGroupIO_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvReadGroupIO_Request,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvReadGroupIO_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvReadGroupIO_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvReadGroupIO_Request) -> Unit {
  let part0 = value.field_address
  writer.unsigned(part0.to_uint64(), 4)
}
fn read_Ros2Motoros2_interfacesSrvReadGroupIO_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvReadGroupIO_Request {
  let part0 = reader.unsigned(4).to_uint()
  { field_address: part0 }
}

pub(all) struct Ros2Motoros2_interfacesSrvReadGroupIO_Response {
  mut field_result_code : UInt
  mut field_message : String
  mut field_success : Bool
  mut field_value : Int
}
pub fn Ros2Motoros2_interfacesSrvReadGroupIO_Response::new() -> Ros2Motoros2_interfacesSrvReadGroupIO_Response {
  {
    field_result_code: 0U,
    field_message: "",
    field_success: false,
    field_value: 0,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvReadGroupIO_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvReadGroupIO_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvReadGroupIO_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/ReadGroupIO_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_292fcf6e8c46a2509ee4cc5238d443157f37fed0de898367248b967e9001ea0d",
    min_wire_bytes: 10, max_wire_bytes: 522 }
}
pub fn Ros2Motoros2_interfacesSrvReadGroupIO_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvReadGroupIO_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvReadGroupIO_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 522, error: 0 }
  write_Ros2Motoros2_interfacesSrvReadGroupIO_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvReadGroupIO_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvReadGroupIO_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvReadGroupIO_Response,
    Int] {
  if input.length() < 10 || input.length() > 522 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvReadGroupIO_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvReadGroupIO_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvReadGroupIO_Response) -> Unit {
  let part0 = value.field_result_code
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_message
  writer.text(part1, 512)
  let part2 = value.field_success
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.field_value
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Motoros2_interfacesSrvReadGroupIO_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvReadGroupIO_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(512)
  let part2 = reader.boolean()
  let part3 = reader.unsigned(1).to_int()
  { field_result_code: part0, field_message: part1, field_success: part2, field_value: part3 }
}

pub(all) struct Ros2Motoros2_interfacesSrvReadMRegister_Request {
  mut field_address : UInt
}
pub fn Ros2Motoros2_interfacesSrvReadMRegister_Request::new() -> Ros2Motoros2_interfacesSrvReadMRegister_Request {
  {
    field_address: 0U,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvReadMRegister_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvReadMRegister_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvReadMRegister_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/ReadMRegister_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_f31f0983466054f5ac5dcb2ab80ab7721d606a681b833ebb376cc87f96054f6f",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Motoros2_interfacesSrvReadMRegister_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvReadMRegister_RequestCodec,
    value : Ros2Motoros2_interfacesSrvReadMRegister_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Motoros2_interfacesSrvReadMRegister_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvReadMRegister_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvReadMRegister_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvReadMRegister_Request,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvReadMRegister_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvReadMRegister_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvReadMRegister_Request) -> Unit {
  let part0 = value.field_address
  writer.unsigned(part0.to_uint64(), 4)
}
fn read_Ros2Motoros2_interfacesSrvReadMRegister_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvReadMRegister_Request {
  let part0 = reader.unsigned(4).to_uint()
  { field_address: part0 }
}

pub(all) struct Ros2Motoros2_interfacesSrvReadMRegister_Response {
  mut field_result_code : UInt
  mut field_message : String
  mut field_success : Bool
  mut field_value : Int
}
pub fn Ros2Motoros2_interfacesSrvReadMRegister_Response::new() -> Ros2Motoros2_interfacesSrvReadMRegister_Response {
  {
    field_result_code: 0U,
    field_message: "",
    field_success: false,
    field_value: 0,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvReadMRegister_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvReadMRegister_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvReadMRegister_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/ReadMRegister_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_8d6ded2876adfa2079711205cb0110a82ead6f51db05f266bf285308cd815a04",
    min_wire_bytes: 11, max_wire_bytes: 523 }
}
pub fn Ros2Motoros2_interfacesSrvReadMRegister_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvReadMRegister_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvReadMRegister_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 523, error: 0 }
  write_Ros2Motoros2_interfacesSrvReadMRegister_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 11 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvReadMRegister_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvReadMRegister_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvReadMRegister_Response,
    Int] {
  if input.length() < 11 || input.length() > 523 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvReadMRegister_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvReadMRegister_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvReadMRegister_Response) -> Unit {
  let part0 = value.field_result_code
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_message
  writer.text(part1, 512)
  let part2 = value.field_success
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.field_value
  if part3 < 0 || part3 > 65535 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Motoros2_interfacesSrvReadMRegister_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvReadMRegister_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(512)
  let part2 = reader.boolean()
  let part3 = reader.unsigned(2).to_int()
  { field_result_code: part0, field_message: part1, field_success: part2, field_value: part3 }
}

pub(all) struct Ros2Motoros2_interfacesSrvReadSingleIO_Request {
  mut field_address : UInt
}
pub fn Ros2Motoros2_interfacesSrvReadSingleIO_Request::new() -> Ros2Motoros2_interfacesSrvReadSingleIO_Request {
  {
    field_address: 0U,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvReadSingleIO_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvReadSingleIO_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvReadSingleIO_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/ReadSingleIO_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_30e28db303b772f26b2b3cf6165a0ff79037d037d60e8115b4ee8e177f17e8bb",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Motoros2_interfacesSrvReadSingleIO_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvReadSingleIO_RequestCodec,
    value : Ros2Motoros2_interfacesSrvReadSingleIO_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Motoros2_interfacesSrvReadSingleIO_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvReadSingleIO_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvReadSingleIO_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvReadSingleIO_Request,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvReadSingleIO_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvReadSingleIO_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvReadSingleIO_Request) -> Unit {
  let part0 = value.field_address
  writer.unsigned(part0.to_uint64(), 4)
}
fn read_Ros2Motoros2_interfacesSrvReadSingleIO_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvReadSingleIO_Request {
  let part0 = reader.unsigned(4).to_uint()
  { field_address: part0 }
}

pub(all) struct Ros2Motoros2_interfacesSrvReadSingleIO_Response {
  mut field_result_code : UInt
  mut field_message : String
  mut field_success : Bool
  mut field_value : Int
}
pub fn Ros2Motoros2_interfacesSrvReadSingleIO_Response::new() -> Ros2Motoros2_interfacesSrvReadSingleIO_Response {
  {
    field_result_code: 0U,
    field_message: "",
    field_success: false,
    field_value: 0,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvReadSingleIO_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvReadSingleIO_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvReadSingleIO_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/ReadSingleIO_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_b42013571274e85769ffac4d47129de8b76e4a675bdef3efefebc9ee19e92082",
    min_wire_bytes: 13, max_wire_bytes: 525 }
}
pub fn Ros2Motoros2_interfacesSrvReadSingleIO_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvReadSingleIO_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvReadSingleIO_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 525, error: 0 }
  write_Ros2Motoros2_interfacesSrvReadSingleIO_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 13 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvReadSingleIO_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvReadSingleIO_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvReadSingleIO_Response,
    Int] {
  if input.length() < 13 || input.length() > 525 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvReadSingleIO_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvReadSingleIO_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvReadSingleIO_Response) -> Unit {
  let part0 = value.field_result_code
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_message
  writer.text(part1, 512)
  let part2 = value.field_success
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.field_value
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Motoros2_interfacesSrvReadSingleIO_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvReadSingleIO_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(512)
  let part2 = reader.boolean()
  let part3 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result_code: part0, field_message: part1, field_success: part2, field_value: part3 }
}

pub(all) enum Ros2Motoros2_interfacesSrvResetError_Request { Ros2Motoros2_interfacesSrvResetError_RequestEmpty }
pub fn Ros2Motoros2_interfacesSrvResetError_Request::new(
    ) -> Ros2Motoros2_interfacesSrvResetError_Request { Ros2Motoros2_interfacesSrvResetError_RequestEmpty }
pub(all) struct Ros2Motoros2_interfacesSrvResetError_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvResetError_RequestCodec::new() -> Ros2Motoros2_interfacesSrvResetError_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/ResetError_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_2737855d0608478946e2d9ab7f06c92585199c1082ec8406a012f50ad56beae3",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Motoros2_interfacesSrvResetError_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvResetError_RequestCodec,
    value : Ros2Motoros2_interfacesSrvResetError_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Motoros2_interfacesSrvResetError_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvResetError_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvResetError_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvResetError_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvResetError_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvResetError_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvResetError_Request) -> Unit {
}
fn read_Ros2Motoros2_interfacesSrvResetError_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvResetError_Request {
  Ros2Motoros2_interfacesSrvResetError_RequestEmpty
}

pub(all) struct Ros2Motoros2_interfacesSrvResetError_Response {
  mut field_result_code : Ros2Motoros2_interfacesMsgMotionReadyEnum
  mut field_message : String
}
pub fn Ros2Motoros2_interfacesSrvResetError_Response::new() -> Ros2Motoros2_interfacesSrvResetError_Response {
  {
    field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum::new(),
    field_message: "",
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvResetError_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvResetError_ResponseCodec::new() -> Ros2Motoros2_interfacesSrvResetError_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/ResetError_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_0af14ee02c157ecc39b143225a580e475473306389ccc3ba198cf22ca47d82f3",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros2Motoros2_interfacesSrvResetError_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvResetError_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvResetError_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros2Motoros2_interfacesSrvResetError_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvResetError_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvResetError_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvResetError_Response,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvResetError_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvResetError_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvResetError_Response) -> Unit {
  let part0 = value.field_result_code
  write_Ros2Motoros2_interfacesMsgMotionReadyEnum(writer, part0)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros2Motoros2_interfacesSrvResetError_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvResetError_Response {
  let part0 = read_Ros2Motoros2_interfacesMsgMotionReadyEnum(reader)
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros2Motoros2_interfacesSrvSelectMotionTool_Request {
  mut field_group_number : UInt
  mut field_tool_number : UInt
}
pub fn Ros2Motoros2_interfacesSrvSelectMotionTool_Request::new() -> Ros2Motoros2_interfacesSrvSelectMotionTool_Request {
  {
    field_group_number: 0U,
    field_tool_number: 0U,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvSelectMotionTool_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvSelectMotionTool_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvSelectMotionTool_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/SelectMotionTool_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_e6c884ae0a97337c1e441efe099b7869dc95205fcbca0a8082d4d9b06f5b438c",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Motoros2_interfacesSrvSelectMotionTool_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvSelectMotionTool_RequestCodec,
    value : Ros2Motoros2_interfacesSrvSelectMotionTool_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Motoros2_interfacesSrvSelectMotionTool_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvSelectMotionTool_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvSelectMotionTool_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvSelectMotionTool_Request,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvSelectMotionTool_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvSelectMotionTool_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvSelectMotionTool_Request) -> Unit {
  let part0 = value.field_group_number
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_tool_number
  writer.unsigned(part1.to_uint64(), 4)
}
fn read_Ros2Motoros2_interfacesSrvSelectMotionTool_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvSelectMotionTool_Request {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(4).to_uint()
  { field_group_number: part0, field_tool_number: part1 }
}

pub(all) struct Ros2Motoros2_interfacesSrvSelectMotionTool_Response {
  mut field_result_code : Ros2Motoros2_interfacesMsgSelectionResultCodes
  mut field_message : String
  mut field_success : Bool
}
pub fn Ros2Motoros2_interfacesSrvSelectMotionTool_Response::new(
    ) -> Ros2Motoros2_interfacesSrvSelectMotionTool_Response {
  {
    field_result_code: Ros2Motoros2_interfacesMsgSelectionResultCodes::new(),
    field_message: "",
    field_success: false,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvSelectMotionTool_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvSelectMotionTool_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvSelectMotionTool_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/SelectMotionTool_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_088349a49c14c52282c25b428628462c48618c3b5202df560dcc5c9bed742640",
    min_wire_bytes: 9, max_wire_bytes: 521 }
}
pub fn Ros2Motoros2_interfacesSrvSelectMotionTool_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvSelectMotionTool_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvSelectMotionTool_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 521, error: 0 }
  write_Ros2Motoros2_interfacesSrvSelectMotionTool_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvSelectMotionTool_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvSelectMotionTool_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvSelectMotionTool_Response,
    Int] {
  if input.length() < 9 || input.length() > 521 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvSelectMotionTool_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvSelectMotionTool_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvSelectMotionTool_Response) -> Unit {
  let part0 = value.field_result_code
  write_Ros2Motoros2_interfacesMsgSelectionResultCodes(writer, part0)
  let part1 = value.field_message
  writer.text(part1, 512)
  let part2 = value.field_success
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Motoros2_interfacesSrvSelectMotionTool_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvSelectMotionTool_Response {
  let part0 = read_Ros2Motoros2_interfacesMsgSelectionResultCodes(reader)
  let part1 = reader.text(512)
  let part2 = reader.boolean()
  { field_result_code: part0, field_message: part1, field_success: part2 }
}

pub(all) enum Ros2Motoros2_interfacesSrvStartPointQueueMode_Request { Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestEmpty }
pub fn Ros2Motoros2_interfacesSrvStartPointQueueMode_Request::new(
    ) -> Ros2Motoros2_interfacesSrvStartPointQueueMode_Request { Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestEmpty }
pub(all) struct Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/StartPointQueueMode_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_58a4827fc6535ef0ffc64ee25c5c4af75aa0fe199fa0350a88a95d2e991164a1",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestCodec,
    value : Ros2Motoros2_interfacesSrvStartPointQueueMode_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvStartPointQueueMode_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvStartPointQueueMode_Request) -> Unit {
}
fn read_Ros2Motoros2_interfacesSrvStartPointQueueMode_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvStartPointQueueMode_Request {
  Ros2Motoros2_interfacesSrvStartPointQueueMode_RequestEmpty
}

pub(all) struct Ros2Motoros2_interfacesSrvStartPointQueueMode_Response {
  mut field_result_code : Ros2Motoros2_interfacesMsgMotionReadyEnum
  mut field_message : String
}
pub fn Ros2Motoros2_interfacesSrvStartPointQueueMode_Response::new(
    ) -> Ros2Motoros2_interfacesSrvStartPointQueueMode_Response {
  {
    field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum::new(),
    field_message: "",
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/StartPointQueueMode_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_bc553d5640e1c4644a5d5bdc2dfcefc9dbe789ef1e2a23dd620f08963467b6ff",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvStartPointQueueMode_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvStartPointQueueMode_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvStartPointQueueMode_Response,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvStartPointQueueMode_Response) -> Unit {
  let part0 = value.field_result_code
  write_Ros2Motoros2_interfacesMsgMotionReadyEnum(writer, part0)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros2Motoros2_interfacesSrvStartPointQueueMode_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvStartPointQueueMode_Response {
  let part0 = read_Ros2Motoros2_interfacesMsgMotionReadyEnum(reader)
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) enum Ros2Motoros2_interfacesSrvStartTrajMode_Request { Ros2Motoros2_interfacesSrvStartTrajMode_RequestEmpty }
pub fn Ros2Motoros2_interfacesSrvStartTrajMode_Request::new(
    ) -> Ros2Motoros2_interfacesSrvStartTrajMode_Request { Ros2Motoros2_interfacesSrvStartTrajMode_RequestEmpty }
pub(all) struct Ros2Motoros2_interfacesSrvStartTrajMode_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvStartTrajMode_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvStartTrajMode_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/StartTrajMode_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_0b8b2ad5db5901047035e1070b675618afc516a1ae8c3308cfdcad1174d34789",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Motoros2_interfacesSrvStartTrajMode_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvStartTrajMode_RequestCodec,
    value : Ros2Motoros2_interfacesSrvStartTrajMode_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Motoros2_interfacesSrvStartTrajMode_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvStartTrajMode_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvStartTrajMode_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvStartTrajMode_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvStartTrajMode_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvStartTrajMode_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvStartTrajMode_Request) -> Unit {
}
fn read_Ros2Motoros2_interfacesSrvStartTrajMode_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvStartTrajMode_Request {
  Ros2Motoros2_interfacesSrvStartTrajMode_RequestEmpty
}

pub(all) struct Ros2Motoros2_interfacesSrvStartTrajMode_Response {
  mut field_result_code : Ros2Motoros2_interfacesMsgMotionReadyEnum
  mut field_message : String
}
pub fn Ros2Motoros2_interfacesSrvStartTrajMode_Response::new() -> Ros2Motoros2_interfacesSrvStartTrajMode_Response {
  {
    field_result_code: Ros2Motoros2_interfacesMsgMotionReadyEnum::new(),
    field_message: "",
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvStartTrajMode_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvStartTrajMode_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvStartTrajMode_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/StartTrajMode_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_170e25737e6a2b06f5d5d9f331d748c97cf0306284271757953a4a801c722939",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros2Motoros2_interfacesSrvStartTrajMode_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvStartTrajMode_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvStartTrajMode_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros2Motoros2_interfacesSrvStartTrajMode_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvStartTrajMode_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvStartTrajMode_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvStartTrajMode_Response,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvStartTrajMode_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvStartTrajMode_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvStartTrajMode_Response) -> Unit {
  let part0 = value.field_result_code
  write_Ros2Motoros2_interfacesMsgMotionReadyEnum(writer, part0)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros2Motoros2_interfacesSrvStartTrajMode_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvStartTrajMode_Response {
  let part0 = read_Ros2Motoros2_interfacesMsgMotionReadyEnum(reader)
  let part1 = reader.text(512)
  { field_result_code: part0, field_message: part1 }
}

pub(all) struct Ros2Motoros2_interfacesSrvWriteGroupIO_Request {
  mut field_address : UInt
  mut field_value : Int
}
pub fn Ros2Motoros2_interfacesSrvWriteGroupIO_Request::new() -> Ros2Motoros2_interfacesSrvWriteGroupIO_Request {
  {
    field_address: 0U,
    field_value: 0,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvWriteGroupIO_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvWriteGroupIO_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvWriteGroupIO_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/WriteGroupIO_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_2d348ed71408a0dd1dd28ee2ed2ca1db56bb07a14546d0fe13ccf64e8553d52c",
    min_wire_bytes: 5, max_wire_bytes: 5 }
}
pub fn Ros2Motoros2_interfacesSrvWriteGroupIO_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvWriteGroupIO_RequestCodec,
    value : Ros2Motoros2_interfacesSrvWriteGroupIO_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5, error: 0 }
  write_Ros2Motoros2_interfacesSrvWriteGroupIO_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvWriteGroupIO_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvWriteGroupIO_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvWriteGroupIO_Request,
    Int] {
  if input.length() < 5 || input.length() > 5 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvWriteGroupIO_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvWriteGroupIO_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvWriteGroupIO_Request) -> Unit {
  let part0 = value.field_address
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_value
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Motoros2_interfacesSrvWriteGroupIO_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvWriteGroupIO_Request {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(1).to_int()
  { field_address: part0, field_value: part1 }
}

pub(all) struct Ros2Motoros2_interfacesSrvWriteGroupIO_Response {
  mut field_result_code : UInt
  mut field_message : String
  mut field_success : Bool
}
pub fn Ros2Motoros2_interfacesSrvWriteGroupIO_Response::new() -> Ros2Motoros2_interfacesSrvWriteGroupIO_Response {
  {
    field_result_code: 0U,
    field_message: "",
    field_success: false,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvWriteGroupIO_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvWriteGroupIO_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvWriteGroupIO_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/WriteGroupIO_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_06769934711b27fd32cdcbf849504e160189ee82ea32e0e71a2903af47c5d766",
    min_wire_bytes: 9, max_wire_bytes: 521 }
}
pub fn Ros2Motoros2_interfacesSrvWriteGroupIO_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvWriteGroupIO_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvWriteGroupIO_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 521, error: 0 }
  write_Ros2Motoros2_interfacesSrvWriteGroupIO_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvWriteGroupIO_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvWriteGroupIO_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvWriteGroupIO_Response,
    Int] {
  if input.length() < 9 || input.length() > 521 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvWriteGroupIO_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvWriteGroupIO_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvWriteGroupIO_Response) -> Unit {
  let part0 = value.field_result_code
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_message
  writer.text(part1, 512)
  let part2 = value.field_success
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Motoros2_interfacesSrvWriteGroupIO_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvWriteGroupIO_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(512)
  let part2 = reader.boolean()
  { field_result_code: part0, field_message: part1, field_success: part2 }
}

pub(all) struct Ros2Motoros2_interfacesSrvWriteMRegister_Request {
  mut field_address : UInt
  mut field_value : Int
}
pub fn Ros2Motoros2_interfacesSrvWriteMRegister_Request::new() -> Ros2Motoros2_interfacesSrvWriteMRegister_Request {
  {
    field_address: 0U,
    field_value: 0,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvWriteMRegister_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvWriteMRegister_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvWriteMRegister_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/WriteMRegister_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_8df4536be27f0632052725d5616fd5b047f49fc306fc7735854d9de4fb15d4ef",
    min_wire_bytes: 6, max_wire_bytes: 6 }
}
pub fn Ros2Motoros2_interfacesSrvWriteMRegister_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvWriteMRegister_RequestCodec,
    value : Ros2Motoros2_interfacesSrvWriteMRegister_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 6, error: 0 }
  write_Ros2Motoros2_interfacesSrvWriteMRegister_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvWriteMRegister_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvWriteMRegister_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvWriteMRegister_Request,
    Int] {
  if input.length() < 6 || input.length() > 6 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvWriteMRegister_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvWriteMRegister_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvWriteMRegister_Request) -> Unit {
  let part0 = value.field_address
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_value
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Motoros2_interfacesSrvWriteMRegister_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvWriteMRegister_Request {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(2).to_int()
  { field_address: part0, field_value: part1 }
}

pub(all) struct Ros2Motoros2_interfacesSrvWriteMRegister_Response {
  mut field_result_code : UInt
  mut field_message : String
  mut field_success : Bool
}
pub fn Ros2Motoros2_interfacesSrvWriteMRegister_Response::new() -> Ros2Motoros2_interfacesSrvWriteMRegister_Response {
  {
    field_result_code: 0U,
    field_message: "",
    field_success: false,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvWriteMRegister_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvWriteMRegister_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvWriteMRegister_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/WriteMRegister_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_a61cc0596a7545ef4836bdc64dc9d6b4ed99b0abd18a726eb37e6215f51c729a",
    min_wire_bytes: 9, max_wire_bytes: 521 }
}
pub fn Ros2Motoros2_interfacesSrvWriteMRegister_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvWriteMRegister_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvWriteMRegister_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 521, error: 0 }
  write_Ros2Motoros2_interfacesSrvWriteMRegister_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvWriteMRegister_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvWriteMRegister_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvWriteMRegister_Response,
    Int] {
  if input.length() < 9 || input.length() > 521 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvWriteMRegister_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvWriteMRegister_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvWriteMRegister_Response) -> Unit {
  let part0 = value.field_result_code
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_message
  writer.text(part1, 512)
  let part2 = value.field_success
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Motoros2_interfacesSrvWriteMRegister_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvWriteMRegister_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(512)
  let part2 = reader.boolean()
  { field_result_code: part0, field_message: part1, field_success: part2 }
}

pub(all) struct Ros2Motoros2_interfacesSrvWriteSingleIO_Request {
  mut field_address : UInt
  mut field_value : Int
}
pub fn Ros2Motoros2_interfacesSrvWriteSingleIO_Request::new() -> Ros2Motoros2_interfacesSrvWriteSingleIO_Request {
  {
    field_address: 0U,
    field_value: 0,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvWriteSingleIO_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvWriteSingleIO_RequestCodec::new(
    ) -> Ros2Motoros2_interfacesSrvWriteSingleIO_RequestCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/WriteSingleIO_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_6361affcd8b7ebaaa1fe6b5806e64a7c18f7a96a1178614cfce487de813a6392",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Motoros2_interfacesSrvWriteSingleIO_RequestCodec::encode(
    _self : Ros2Motoros2_interfacesSrvWriteSingleIO_RequestCodec,
    value : Ros2Motoros2_interfacesSrvWriteSingleIO_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Motoros2_interfacesSrvWriteSingleIO_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvWriteSingleIO_RequestCodec::decode(
    _self : Ros2Motoros2_interfacesSrvWriteSingleIO_RequestCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvWriteSingleIO_Request,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvWriteSingleIO_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvWriteSingleIO_Request(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvWriteSingleIO_Request) -> Unit {
  let part0 = value.field_address
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_value
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Motoros2_interfacesSrvWriteSingleIO_Request(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvWriteSingleIO_Request {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_address: part0, field_value: part1 }
}

pub(all) struct Ros2Motoros2_interfacesSrvWriteSingleIO_Response {
  mut field_result_code : UInt
  mut field_message : String
  mut field_success : Bool
}
pub fn Ros2Motoros2_interfacesSrvWriteSingleIO_Response::new() -> Ros2Motoros2_interfacesSrvWriteSingleIO_Response {
  {
    field_result_code: 0U,
    field_message: "",
    field_success: false,
  }
}
pub(all) struct Ros2Motoros2_interfacesSrvWriteSingleIO_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Motoros2_interfacesSrvWriteSingleIO_ResponseCodec::new(
    ) -> Ros2Motoros2_interfacesSrvWriteSingleIO_ResponseCodec {
  { ros_version: 2, native_type: "motoros2_interfaces/srv/WriteSingleIO_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_12328db372a572fe9b0c7207331a7971d5d7c9033376e3be410db579b85fb794",
    min_wire_bytes: 9, max_wire_bytes: 521 }
}
pub fn Ros2Motoros2_interfacesSrvWriteSingleIO_ResponseCodec::encode(
    _self : Ros2Motoros2_interfacesSrvWriteSingleIO_ResponseCodec,
    value : Ros2Motoros2_interfacesSrvWriteSingleIO_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 521, error: 0 }
  write_Ros2Motoros2_interfacesSrvWriteSingleIO_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Motoros2_interfacesSrvWriteSingleIO_ResponseCodec::decode(
    _self : Ros2Motoros2_interfacesSrvWriteSingleIO_ResponseCodec,
    input : Bytes) -> Result[Ros2Motoros2_interfacesSrvWriteSingleIO_Response,
    Int] {
  if input.length() < 9 || input.length() > 521 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Motoros2_interfacesSrvWriteSingleIO_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Motoros2_interfacesSrvWriteSingleIO_Response(writer : BoundedWriter,
    value : Ros2Motoros2_interfacesSrvWriteSingleIO_Response) -> Unit {
  let part0 = value.field_result_code
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_message
  writer.text(part1, 512)
  let part2 = value.field_success
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Motoros2_interfacesSrvWriteSingleIO_Response(
    reader : BoundedReader) -> Ros2Motoros2_interfacesSrvWriteSingleIO_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(512)
  let part2 = reader.boolean()
  { field_result_code: part0, field_message: part1, field_success: part2 }
}

pub(all) struct Ros2Sensor_msgsMsgJointState {
  mut field_header : Ros2Std_msgsMsgHeader
  mut field_name : Array[String]
  mut field_position : Array[Double]
  mut field_velocity : Array[Double]
  mut field_effort : Array[Double]
}
pub fn Ros2Sensor_msgsMsgJointState::new() -> Ros2Sensor_msgsMsgJointState {
  {
    field_header: Ros2Std_msgsMsgHeader::new(),
    field_name: [],
    field_position: [],
    field_velocity: [],
    field_effort: [],
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
    codec_identity: "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884",
    min_wire_bytes: 28, max_wire_bytes: 1196 }
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::encode(_self : Ros2Sensor_msgsMsgJointStateCodec,
    value : Ros2Sensor_msgsMsgJointState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1196, error: 0 }
  write_Ros2Sensor_msgsMsgJointState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::decode(_self : Ros2Sensor_msgsMsgJointStateCodec,
    input : Bytes) -> Result[Ros2Sensor_msgsMsgJointState,
    Int] {
  if input.length() < 28 || input.length() > 1196 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Sensor_msgsMsgJointState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Sensor_msgsMsgJointState(writer : BoundedWriter, value : Ros2Sensor_msgsMsgJointState) -> Unit {
  let part0 = value.field_header
  write_Ros2Std_msgsMsgHeader(writer, part0)
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
fn read_Ros2Sensor_msgsMsgJointState(reader : BoundedReader) -> Ros2Sensor_msgsMsgJointState {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
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

pub(all) enum Ros2Std_srvsSrvTrigger_Request { Ros2Std_srvsSrvTrigger_RequestEmpty }
pub fn Ros2Std_srvsSrvTrigger_Request::new() -> Ros2Std_srvsSrvTrigger_Request { Ros2Std_srvsSrvTrigger_RequestEmpty }
pub(all) struct Ros2Std_srvsSrvTrigger_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Std_srvsSrvTrigger_RequestCodec::new() -> Ros2Std_srvsSrvTrigger_RequestCodec {
  { ros_version: 2, native_type: "std_srvs/srv/Trigger_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Std_srvsSrvTrigger_RequestCodec::encode(_self : Ros2Std_srvsSrvTrigger_RequestCodec,
    value : Ros2Std_srvsSrvTrigger_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Std_srvsSrvTrigger_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_srvsSrvTrigger_RequestCodec::decode(_self : Ros2Std_srvsSrvTrigger_RequestCodec,
    input : Bytes) -> Result[Ros2Std_srvsSrvTrigger_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_srvsSrvTrigger_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_srvsSrvTrigger_Request(writer : BoundedWriter, value : Ros2Std_srvsSrvTrigger_Request) -> Unit {
}
fn read_Ros2Std_srvsSrvTrigger_Request(reader : BoundedReader) -> Ros2Std_srvsSrvTrigger_Request {
  Ros2Std_srvsSrvTrigger_RequestEmpty
}

pub(all) struct Ros2Std_srvsSrvTrigger_Response {
  mut field_success : Bool
  mut field_message : String
}
pub fn Ros2Std_srvsSrvTrigger_Response::new() -> Ros2Std_srvsSrvTrigger_Response {
  {
    field_success: false,
    field_message: "",
  }
}
pub(all) struct Ros2Std_srvsSrvTrigger_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Std_srvsSrvTrigger_ResponseCodec::new() -> Ros2Std_srvsSrvTrigger_ResponseCodec {
  { ros_version: 2, native_type: "std_srvs/srv/Trigger_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d",
    min_wire_bytes: 5, max_wire_bytes: 517 }
}
pub fn Ros2Std_srvsSrvTrigger_ResponseCodec::encode(_self : Ros2Std_srvsSrvTrigger_ResponseCodec,
    value : Ros2Std_srvsSrvTrigger_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 517, error: 0 }
  write_Ros2Std_srvsSrvTrigger_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_srvsSrvTrigger_ResponseCodec::decode(_self : Ros2Std_srvsSrvTrigger_ResponseCodec,
    input : Bytes) -> Result[Ros2Std_srvsSrvTrigger_Response,
    Int] {
  if input.length() < 5 || input.length() > 517 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_srvsSrvTrigger_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_srvsSrvTrigger_Response(writer : BoundedWriter, value : Ros2Std_srvsSrvTrigger_Response) -> Unit {
  let part0 = value.field_success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.field_message
  writer.text(part1, 512)
}
fn read_Ros2Std_srvsSrvTrigger_Response(reader : BoundedReader) -> Ros2Std_srvsSrvTrigger_Response {
  let part0 = reader.boolean()
  let part1 = reader.text(512)
  { field_success: part0, field_message: part1 }
}

pub(all) struct Ros2Tf2_msgsMsgTFMessage {
  mut field_transforms : Array[Ros2Geometry_msgsMsgTransformStamped]
}
pub fn Ros2Tf2_msgsMsgTFMessage::new() -> Ros2Tf2_msgsMsgTFMessage {
  {
    field_transforms: [],
  }
}
pub(all) struct Ros2Tf2_msgsMsgTFMessageCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Tf2_msgsMsgTFMessageCodec::new() -> Ros2Tf2_msgsMsgTFMessageCodec {
  { ros_version: 2, native_type: "tf2_msgs/msg/TFMessage",
    native_identity: None,
    codec_identity: "UWVMROS1_4428597a9c2783fd8f0f083a16e8fd1b3d286487f4800c55fcc5571e7f79e65a",
    min_wire_bytes: 4, max_wire_bytes: 10372 }
}
pub fn Ros2Tf2_msgsMsgTFMessageCodec::encode(_self : Ros2Tf2_msgsMsgTFMessageCodec,
    value : Ros2Tf2_msgsMsgTFMessage) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 10372, error: 0 }
  write_Ros2Tf2_msgsMsgTFMessage(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Tf2_msgsMsgTFMessageCodec::decode(_self : Ros2Tf2_msgsMsgTFMessageCodec,
    input : Bytes) -> Result[Ros2Tf2_msgsMsgTFMessage,
    Int] {
  if input.length() < 4 || input.length() > 10372 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Tf2_msgsMsgTFMessage(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Tf2_msgsMsgTFMessage(writer : BoundedWriter, value : Ros2Tf2_msgsMsgTFMessage) -> Unit {
  let part0 = value.field_transforms
  let count0 = part0.length()
  if count0 > 16 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Geometry_msgsMsgTransformStamped(writer, element)
  }
}
fn read_Ros2Tf2_msgsMsgTFMessage(reader : BoundedReader) -> Ros2Tf2_msgsMsgTFMessage {
  let part0 : Array[Ros2Geometry_msgsMsgTransformStamped] = []
  let count0 = reader.count(16, 72)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Geometry_msgsMsgTransformStamped(reader))
  }
  { field_transforms: part0 }
}


/// @brief Original control_msgs/msg/JointComponentTolerance.X_AXIS constant; no instance bytes or ROS
/// authority.
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::constant_X_AXIS(
    _self : Ros2Control_msgsMsgJointComponentToleranceCodec) -> Int { 1 }

/// @brief Original control_msgs/msg/JointComponentTolerance.Y_AXIS constant; no instance bytes or ROS
/// authority.
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::constant_Y_AXIS(
    _self : Ros2Control_msgsMsgJointComponentToleranceCodec) -> Int { 2 }

/// @brief Original control_msgs/msg/JointComponentTolerance.Z_AXIS constant; no instance bytes or ROS
/// authority.
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::constant_Z_AXIS(
    _self : Ros2Control_msgsMsgJointComponentToleranceCodec) -> Int { 3 }

/// @brief Original control_msgs/msg/JointComponentTolerance.TRANSLATION constant; no instance bytes or ROS
/// authority.
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::constant_TRANSLATION(
    _self : Ros2Control_msgsMsgJointComponentToleranceCodec) -> Int { 4 }

/// @brief Original control_msgs/msg/JointComponentTolerance.ROTATION constant; no instance bytes or ROS
/// authority.
pub fn Ros2Control_msgsMsgJointComponentToleranceCodec::constant_ROTATION(
    _self : Ros2Control_msgsMsgJointComponentToleranceCodec) -> Int { 5 }

/// @brief Original control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL constant; no instance bytes or
/// ROS authority.
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::constant_SUCCESSFUL(
    _self : Ros2Control_msgsActionFollowJointTrajectory_ResultCodec) -> Int { 0 }

/// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL constant; no instance bytes or
/// ROS authority.
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::constant_INVALID_GOAL(
    _self : Ros2Control_msgsActionFollowJointTrajectory_ResultCodec) -> Int { -1 }

/// @brief Original control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS constant; no instance bytes
/// or ROS authority.
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::constant_INVALID_JOINTS(
    _self : Ros2Control_msgsActionFollowJointTrajectory_ResultCodec) -> Int { -2 }

/// @brief Original control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP constant; no instance
/// bytes or ROS authority.
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::constant_OLD_HEADER_TIMESTAMP(
    _self : Ros2Control_msgsActionFollowJointTrajectory_ResultCodec) -> Int { -3 }

/// @brief Original control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED constant; no
/// instance bytes or ROS authority.
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::constant_PATH_TOLERANCE_VIOLATED(
    _self : Ros2Control_msgsActionFollowJointTrajectory_ResultCodec) -> Int { -4 }

/// @brief Original control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED constant; no
/// instance bytes or ROS authority.
pub fn Ros2Control_msgsActionFollowJointTrajectory_ResultCodec::constant_GOAL_TOLERANCE_VIOLATED(
    _self : Ros2Control_msgsActionFollowJointTrajectory_ResultCodec) -> Int { -5 }

/// @brief Original industrial_msgs/msg/DebugLevel.DEBUG constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgDebugLevelCodec::constant_DEBUG(_self : Ros2Industrial_msgsMsgDebugLevelCodec) -> Int { 5 }

/// @brief Original industrial_msgs/msg/DebugLevel.INFO constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgDebugLevelCodec::constant_INFO(_self : Ros2Industrial_msgsMsgDebugLevelCodec) -> Int { 4 }

/// @brief Original industrial_msgs/msg/DebugLevel.WARN constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgDebugLevelCodec::constant_WARN(_self : Ros2Industrial_msgsMsgDebugLevelCodec) -> Int { 3 }

/// @brief Original industrial_msgs/msg/DebugLevel.ERROR constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgDebugLevelCodec::constant_ERROR(_self : Ros2Industrial_msgsMsgDebugLevelCodec) -> Int { 2 }

/// @brief Original industrial_msgs/msg/DebugLevel.FATAL constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgDebugLevelCodec::constant_FATAL(_self : Ros2Industrial_msgsMsgDebugLevelCodec) -> Int { 1 }

/// @brief Original industrial_msgs/msg/DebugLevel.NONE constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgDebugLevelCodec::constant_NONE(_self : Ros2Industrial_msgsMsgDebugLevelCodec) -> Int { 0 }

/// @brief Original industrial_msgs/msg/RobotMode.UNKNOWN constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgRobotModeCodec::constant_UNKNOWN(
    _self : Ros2Industrial_msgsMsgRobotModeCodec) -> Int { -1 }

/// @brief Original industrial_msgs/msg/RobotMode.MANUAL constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgRobotModeCodec::constant_MANUAL(_self : Ros2Industrial_msgsMsgRobotModeCodec) -> Int { 1 }

/// @brief Original industrial_msgs/msg/RobotMode.AUTO constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgRobotModeCodec::constant_AUTO(_self : Ros2Industrial_msgsMsgRobotModeCodec) -> Int { 2 }

/// @brief Original industrial_msgs/msg/TriState.UNKNOWN constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_UNKNOWN(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { -1 }

/// @brief Original industrial_msgs/msg/TriState.TRUE constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_TRUE(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { 1 }

/// @brief Original industrial_msgs/msg/TriState.ON constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_ON(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { 1 }

/// @brief Original industrial_msgs/msg/TriState.ENABLED constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_ENABLED(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { 1 }

/// @brief Original industrial_msgs/msg/TriState.HIGH constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_HIGH(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { 1 }

/// @brief Original industrial_msgs/msg/TriState.CLOSED constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_CLOSED(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { 1 }

/// @brief Original industrial_msgs/msg/TriState.FALSE constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_FALSE(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { 0 }

/// @brief Original industrial_msgs/msg/TriState.OFF constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_OFF(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { 0 }

/// @brief Original industrial_msgs/msg/TriState.DISABLED constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_DISABLED(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { 0 }

/// @brief Original industrial_msgs/msg/TriState.LOW constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_LOW(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { 0 }

/// @brief Original industrial_msgs/msg/TriState.OPEN constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgTriStateCodec::constant_OPEN(_self : Ros2Industrial_msgsMsgTriStateCodec) -> Int { 0 }

/// @brief Original industrial_msgs/msg/ServiceReturnCode.SUCCESS constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgServiceReturnCodeCodec::constant_SUCCESS(
    _self : Ros2Industrial_msgsMsgServiceReturnCodeCodec) -> Int { 1 }

/// @brief Original industrial_msgs/msg/ServiceReturnCode.FAILURE constant; no instance bytes or ROS authority.
pub fn Ros2Industrial_msgsMsgServiceReturnCodeCodec::constant_FAILURE(
    _self : Ros2Industrial_msgsMsgServiceReturnCodeCodec) -> Int { -1 }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_OK constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_RC_OK(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> UInt { 1U }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_OK constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_STR_OK(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> String { "Success" }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_REFRESHING_JOB_LIST constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_RC_ERR_REFRESHING_JOB_LIST(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> UInt { 10U }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_REFRESHING_JOB_LIST constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_STR_ERR_REFRESHING_JOB_LIST(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> String { "Error refreshing job list" }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_FILE_COUNT constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_RC_ERR_RETRIEVING_FILE_COUNT(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> UInt { 11U }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_FILE_COUNT constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_STR_ERR_RETRIEVING_FILE_COUNT(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> String { "Error retrieving file count" }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_TOO_MANY_JOBS constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_RC_ERR_TOO_MANY_JOBS(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> UInt { 12U }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_TOO_MANY_JOBS constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_STR_ERR_TOO_MANY_JOBS(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> String { "Too many jobs" }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST
/// constant; no instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_RC_ERR_RETRIEVING_JOB_NAME_FROM_LIST(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> UInt { 13U }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST
/// constant; no instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_STR_ERR_RETRIEVING_JOB_NAME_FROM_LIST(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> String { "Failed retrieving job name from list" }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
/// constant; no instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_RC_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> UInt { 14U }

/// @brief Original motoros2_interfaces/msg/InformJobCrudResultCodes.STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE
/// constant; no instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec::constant_STR_ERR_APPENDING_JOB_NAME_TO_SVC_RESPONSE(
    _self : Ros2Motoros2_interfacesMsgInformJobCrudResultCodesCodec) -> String { "Error adding job name to service response" }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_OK(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 0 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_OK_STR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_OK_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "OK" }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_UNSPECIFIED(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 200 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_UNSPECIFIED_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_UNSPECIFIED_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Unspecified failure" }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_TOO_SMALL(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 201 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_SMALL_STR constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_TOO_SMALL_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Trajectory must contain at least two points." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_TOO_BIG(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 202 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_TOO_BIG_STR constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_TOO_BIG_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Trajectory contains too many points (Not enough memory)." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_ALREADY_IN_MOTION(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 203 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_ALREADY_IN_MOTION_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_ALREADY_IN_MOTION_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Already running a trajectory." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_STARTING_POS(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 204 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_STARTING_POS_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_STARTING_POS_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "The first point must match the robot's current position." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_VELOCITY(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 205 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_VELOCITY_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_VELOCITY_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "The commanded velocity is too high." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_JOINTNAME(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 206 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_JOINTNAME_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_JOINTNAME_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Invalid joint name specified. Check motoros2_config.yaml." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INCOMPLETE_JOINTLIST(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 207 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INCOMPLETE_JOINTLIST_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INCOMPLETE_JOINTLIST_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Trajectory must contain data for all joints." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_TIME(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 208 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_TIME_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_TIME_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Invalid time in trajectory." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_WRONG_MODE(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 209 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_MODE_STR constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_WRONG_MODE_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Must call start_traj_mode service" }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_BACKWARD_TIME(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 210 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_BACKWARD_TIME_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_BACKWARD_TIME_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Trajectory message contains waypoints that are not strictly increasing in time." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 211 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_WRONG_NUMBER_OF_POSITIONS_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Trajectory did not contain position data for all axes." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 212 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_WRONG_NUMBER_OF_VELOCITIES_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "Trajectory did not contain velocity data for all axes." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_ENDING_VELOCITY(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 213 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_VELOCITY_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_ENDING_VELOCITY_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "The final point in the trajectory must have zero velocity." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_ENDING_ACCELERATION(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 214 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_INVALID_ENDING_ACCELERATION_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "The final point in the trajectory must have zero acceleration." }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_DUPLICATE_JOINT_NAME(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> Int { 215 }

/// @brief Original motoros2_interfaces/msg/InitTrajEnum.INIT_TRAJ_DUPLICATE_JOINT_NAME_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgInitTrajEnumCodec::constant_INIT_TRAJ_DUPLICATE_JOINT_NAME_STR(
    _self : Ros2Motoros2_interfacesMsgInitTrajEnumCodec) -> String { "The trajectory contains duplicate joint names." }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.OK constant; no instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_OK(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> UInt { 0U }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.OK_STR constant; no instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_OK_STR(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> String { "Success" }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_READ_ADDRESS_INVALID(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> UInt { 1001U }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_ADDRESS_INVALID_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_READ_ADDRESS_INVALID_STR(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> String { "Address cannot be read from (out of readable range)" }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_WRITE_ADDRESS_INVALID(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> UInt { 1002U }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_ADDRESS_INVALID_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_WRITE_ADDRESS_INVALID_STR(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> String { "Address cannot be written to (out of writable range)" }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_WRITE_VALUE_INVALID(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> UInt { 1003U }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_VALUE_INVALID_STR constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_WRITE_VALUE_INVALID_STR(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> String { "Illegal value for the type of IO element addressed" }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_READ_API_ERROR(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> UInt { 1004U }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.READ_API_ERROR_STR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_READ_API_ERROR_STR(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> String { "The MotoPlus function mpReadIO returned -1. No further information is available" }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_WRITE_API_ERROR(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> UInt { 1005U }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.WRITE_API_ERROR_STR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_WRITE_API_ERROR_STR(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> String { "The MotoPlus function mpWriteIO returned -1. No further information is available" }

/// @brief Original motoros2_interfaces/msg/IoResultCodes.UNKNOWN_API_ERROR_STR constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgIoResultCodesCodec::constant_UNKNOWN_API_ERROR_STR(
    _self : Ros2Motoros2_interfacesMsgIoResultCodesCodec) -> String { "Unknown error accessing I/O. No further information is available" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY constant; no instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_READY(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 1 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.READY_STR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_READY_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "Ready" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_UNSPECIFIED(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 100 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_UNSPECIFIED_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_UNSPECIFIED_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "Unspecified" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_ALARM(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 101 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ALARM_STR constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_ALARM_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "The controller has an active Alarm" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_ERROR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 102 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ERROR_STR constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_ERROR_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "The controller has an active Error" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_ESTOP(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 103 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ESTOP_STR constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_ESTOP_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "The controller is in E-Stop" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_NOT_PLAY(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 104 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_PLAY_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_NOT_PLAY_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "The teach pendant must not be in TEACH mode" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_NOT_REMOTE(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 105 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_REMOTE_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_NOT_REMOTE_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "The teach pendant must be in REMOTE mode" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_SERVO_OFF(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 106 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_OFF_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_SERVO_OFF_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "Servo power is OFF. Please call start_traj_mode or start_point_queue_mode service" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_HOLD(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 107 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_HOLD_STR constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_HOLD_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "The controller is in HOLD" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_JOB_NOT_STARTED(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 108 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_JOB_NOT_STARTED_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_JOB_NOT_STARTED_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "The INIT_ROS job has not started. Please call start_traj_mode or start_point_queue_mode service" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_NOT_ON_WAIT_CMD(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 109 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_ON_WAIT_CMD_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_NOT_ON_WAIT_CMD_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "INFORM job is not on a WAIT command. Check the format of INIT_ROS" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_PFL_ACTIVE(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 111 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_PFL_ACTIVE_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_PFL_ACTIVE_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "A PFL event has occurred. Please return the robot to a safe state" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_INC_MOVE_ERROR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 112 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_INC_MOVE_ERROR_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_INC_MOVE_ERROR_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "The controller is in an error state. Please call reset_error to attempt to clear the error" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_OTHER_PROGRAM_RUNNING(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 113 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_PROGRAM_RUNNING_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_OTHER_PROGRAM_RUNNING_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "Controller is running another job" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_OTHER_TRAJ_MODE_ACTIVE(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 114 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_OTHER_TRAJ_MODE_ACTIVE_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "Another trajectory mode is already active. Please call stop_traj_mode service" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_NOT_CONT_CYCLE_MODE(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 115 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_NOT_CONT_CYCLE_MODE_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_NOT_CONT_CYCLE_MODE_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "AUTO cycle mode not set. Please set the cycle mode to AUTO" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_MAJOR_ALARM(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 116 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_MAJOR_ALARM_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_MAJOR_ALARM_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "Major Alarms can't be reset. Please check the teach pendant" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_ECO_MODE(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 117 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_ECO_MODE_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_ECO_MODE_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "Couldn't disable eco mode" }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_SERVO_ON_TIMEOUT(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> Int { 118 }

/// @brief Original motoros2_interfaces/msg/MotionReadyEnum.NOT_READY_SERVO_ON_TIMEOUT_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgMotionReadyEnumCodec::constant_NOT_READY_SERVO_ON_TIMEOUT_STR(
    _self : Ros2Motoros2_interfacesMsgMotionReadyEnumCodec) -> String { "Timed out while waiting for servo on" }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_SUCCESS(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> Int { 1 }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.SUCCESS_STR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_SUCCESS_STR(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> String { "" }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_WRONG_MODE(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> Int { 2 }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.WRONG_MODE_STR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_WRONG_MODE_STR(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> String { "Must call start_point_queue_mode service" }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_INIT_FAILURE(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> Int { 3 }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.INIT_FAILURE_STR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_INIT_FAILURE_STR(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> String { "Failed to initialize the streaming trajectory" }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY constant; no instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_BUSY(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> Int { 4 }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.BUSY_STR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_BUSY_STR(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> String { "Busy processing the previous trajectory point. Please resend the next point shortly" }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST constant; no instance bytes or
/// ROS authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_INVALID_JOINT_LIST(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> Int { 5 }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.INVALID_JOINT_LIST_STR constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_INVALID_JOINT_LIST_STR(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> String { "Point must contain data for all joints" }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT constant; no instance bytes
/// or ROS authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_UNABLE_TO_PROCESS_POINT(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> Int { 6 }

/// @brief Original motoros2_interfaces/msg/QueueResultEnum.UNABLE_TO_PROCESS_POINT_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgQueueResultEnumCodec::constant_UNABLE_TO_PROCESS_POINT_STR(
    _self : Ros2Motoros2_interfacesMsgQueueResultEnumCodec) -> String { "Error while processing the trajectory point. Check debug log for more details" }

/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::constant_OK(
    _self : Ros2Motoros2_interfacesMsgSelectionResultCodesCodec) -> UInt { 0U }

/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.OK_STR constant; no instance bytes or ROS
/// authority.
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::constant_OK_STR(
    _self : Ros2Motoros2_interfacesMsgSelectionResultCodesCodec) -> String { "" }

/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::constant_INVALID_CONTROLLER_STATE(
    _self : Ros2Motoros2_interfacesMsgSelectionResultCodesCodec) -> UInt { 400U }

/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROLLER_STATE_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::constant_INVALID_CONTROLLER_STATE_STR(
    _self : Ros2Motoros2_interfacesMsgSelectionResultCodesCodec) -> String { "Pendant is not in REMOTE mode" }

/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::constant_INVALID_CONTROL_GROUP(
    _self : Ros2Motoros2_interfacesMsgSelectionResultCodesCodec) -> UInt { 401U }

/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_CONTROL_GROUP_STR constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::constant_INVALID_CONTROL_GROUP_STR(
    _self : Ros2Motoros2_interfacesMsgSelectionResultCodesCodec) -> String { "Invalid control group" }

/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX constant; no instance
/// bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::constant_INVALID_SELECTION_INDEX(
    _self : Ros2Motoros2_interfacesMsgSelectionResultCodesCodec) -> UInt { 402U }

/// @brief Original motoros2_interfaces/msg/SelectionResultCodes.INVALID_SELECTION_INDEX_STR constant; no
/// instance bytes or ROS authority.
pub fn Ros2Motoros2_interfacesMsgSelectionResultCodesCodec::constant_INVALID_SELECTION_INDEX_STR(
    _self : Ros2Motoros2_interfacesMsgSelectionResultCodesCodec) -> String { "Invalid tool selection" }
