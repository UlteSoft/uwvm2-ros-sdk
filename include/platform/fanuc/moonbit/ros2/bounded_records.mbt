// @file bounded_records.mbt
// @brief Represent the complete original FANUC ROS 2 canonical value catalog.
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

pub(all) struct Ros2Fanuc_msgsMsgIOType {
  mut field_type : String
}
pub fn Ros2Fanuc_msgsMsgIOType::new() -> Ros2Fanuc_msgsMsgIOType {
  {
    field_type: "",
  }
}
pub(all) struct Ros2Fanuc_msgsMsgIOTypeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::new() -> Ros2Fanuc_msgsMsgIOTypeCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/IOType",
    native_identity: None,
    codec_identity: "UWVMROS1_1815aa6b1bcab1efe21de0e31570ca650553b5c70f0793301f82c0ca7934c586",
    min_wire_bytes: 4, max_wire_bytes: 68 }
}
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::encode(_self : Ros2Fanuc_msgsMsgIOTypeCodec,
    value : Ros2Fanuc_msgsMsgIOType) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 68, error: 0 }
  write_Ros2Fanuc_msgsMsgIOType(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::decode(_self : Ros2Fanuc_msgsMsgIOTypeCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgIOType,
    Int] {
  if input.length() < 4 || input.length() > 68 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgIOType(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgIOType(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgIOType) -> Unit {
  let part0 = value.field_type
  writer.text(part0, 64)
}
fn read_Ros2Fanuc_msgsMsgIOType(reader : BoundedReader) -> Ros2Fanuc_msgsMsgIOType {
  let part0 = reader.text(64)
  { field_type: part0 }
}

pub(all) struct Ros2Fanuc_msgsMsgAnalogIO {
  mut field_io_type : Ros2Fanuc_msgsMsgIOType
  mut field_index : Int
  mut field_value : Float
}
pub fn Ros2Fanuc_msgsMsgAnalogIO::new() -> Ros2Fanuc_msgsMsgAnalogIO {
  {
    field_io_type: Ros2Fanuc_msgsMsgIOType::new(),
    field_index: 0,
    field_value: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsMsgAnalogIOCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgAnalogIOCodec::new() -> Ros2Fanuc_msgsMsgAnalogIOCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/AnalogIO",
    native_identity: None,
    codec_identity: "UWVMROS1_d62097527ba99bf6e803283350161cd1415173a22eb3cb20331a232366076d00",
    min_wire_bytes: 10, max_wire_bytes: 74 }
}
pub fn Ros2Fanuc_msgsMsgAnalogIOCodec::encode(_self : Ros2Fanuc_msgsMsgAnalogIOCodec,
    value : Ros2Fanuc_msgsMsgAnalogIO) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 74, error: 0 }
  write_Ros2Fanuc_msgsMsgAnalogIO(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgAnalogIOCodec::decode(_self : Ros2Fanuc_msgsMsgAnalogIOCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgAnalogIO,
    Int] {
  if input.length() < 10 || input.length() > 74 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgAnalogIO(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgAnalogIO(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgAnalogIO) -> Unit {
  let part0 = value.field_io_type
  write_Ros2Fanuc_msgsMsgIOType(writer, part0)
  let part1 = value.field_index
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_value
  writer.float32(part2)
}
fn read_Ros2Fanuc_msgsMsgAnalogIO(reader : BoundedReader) -> Ros2Fanuc_msgsMsgAnalogIO {
  let part0 = read_Ros2Fanuc_msgsMsgIOType(reader)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.float32()
  { field_io_type: part0, field_index: part1, field_value: part2 }
}

pub(all) struct Ros2Fanuc_msgsMsgAnalogIOCmd {
  mut field_values : Array[Ros2Fanuc_msgsMsgAnalogIO]
}
pub fn Ros2Fanuc_msgsMsgAnalogIOCmd::new() -> Ros2Fanuc_msgsMsgAnalogIOCmd {
  {
    field_values: [],
  }
}
pub(all) struct Ros2Fanuc_msgsMsgAnalogIOCmdCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgAnalogIOCmdCodec::new() -> Ros2Fanuc_msgsMsgAnalogIOCmdCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/AnalogIOCmd",
    native_identity: None,
    codec_identity: "UWVMROS1_62f38a088ed23f8daf7163f26514ae1aabd7b1b64845ccdbc281cb7839d857ba",
    min_wire_bytes: 4, max_wire_bytes: 2372 }
}
pub fn Ros2Fanuc_msgsMsgAnalogIOCmdCodec::encode(_self : Ros2Fanuc_msgsMsgAnalogIOCmdCodec,
    value : Ros2Fanuc_msgsMsgAnalogIOCmd) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2372, error: 0 }
  write_Ros2Fanuc_msgsMsgAnalogIOCmd(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgAnalogIOCmdCodec::decode(_self : Ros2Fanuc_msgsMsgAnalogIOCmdCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgAnalogIOCmd,
    Int] {
  if input.length() < 4 || input.length() > 2372 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgAnalogIOCmd(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgAnalogIOCmd(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgAnalogIOCmd) -> Unit {
  let part0 = value.field_values
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Fanuc_msgsMsgAnalogIO(writer, element)
  }
}
fn read_Ros2Fanuc_msgsMsgAnalogIOCmd(reader : BoundedReader) -> Ros2Fanuc_msgsMsgAnalogIOCmd {
  let part0 : Array[Ros2Fanuc_msgsMsgAnalogIO] = []
  let count0 = reader.count(32, 10)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Fanuc_msgsMsgAnalogIO(reader))
  }
  { field_values: part0 }
}

pub(all) struct Ros2Fanuc_msgsMsgAnalogIOState {
  mut field_values : Array[Ros2Fanuc_msgsMsgAnalogIO]
}
pub fn Ros2Fanuc_msgsMsgAnalogIOState::new() -> Ros2Fanuc_msgsMsgAnalogIOState {
  {
    field_values: [],
  }
}
pub(all) struct Ros2Fanuc_msgsMsgAnalogIOStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgAnalogIOStateCodec::new() -> Ros2Fanuc_msgsMsgAnalogIOStateCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/AnalogIOState",
    native_identity: None,
    codec_identity: "UWVMROS1_820b41fecbf6db8e2b2e67d60cd1167cf474b22ca6c489f4d2d64dd33eaac9a4",
    min_wire_bytes: 4, max_wire_bytes: 2372 }
}
pub fn Ros2Fanuc_msgsMsgAnalogIOStateCodec::encode(_self : Ros2Fanuc_msgsMsgAnalogIOStateCodec,
    value : Ros2Fanuc_msgsMsgAnalogIOState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2372, error: 0 }
  write_Ros2Fanuc_msgsMsgAnalogIOState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgAnalogIOStateCodec::decode(_self : Ros2Fanuc_msgsMsgAnalogIOStateCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgAnalogIOState,
    Int] {
  if input.length() < 4 || input.length() > 2372 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgAnalogIOState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgAnalogIOState(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgAnalogIOState) -> Unit {
  let part0 = value.field_values
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Fanuc_msgsMsgAnalogIO(writer, element)
  }
}
fn read_Ros2Fanuc_msgsMsgAnalogIOState(reader : BoundedReader) -> Ros2Fanuc_msgsMsgAnalogIOState {
  let part0 : Array[Ros2Fanuc_msgsMsgAnalogIO] = []
  let count0 = reader.count(32, 10)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Fanuc_msgsMsgAnalogIO(reader))
  }
  { field_values: part0 }
}

pub(all) struct Ros2Fanuc_msgsMsgBoolIO {
  mut field_io_type : Ros2Fanuc_msgsMsgIOType
  mut field_index : Int
  mut field_value : Bool
}
pub fn Ros2Fanuc_msgsMsgBoolIO::new() -> Ros2Fanuc_msgsMsgBoolIO {
  {
    field_io_type: Ros2Fanuc_msgsMsgIOType::new(),
    field_index: 0,
    field_value: false,
  }
}
pub(all) struct Ros2Fanuc_msgsMsgBoolIOCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgBoolIOCodec::new() -> Ros2Fanuc_msgsMsgBoolIOCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/BoolIO",
    native_identity: None,
    codec_identity: "UWVMROS1_9209ae1b8f5407a31beface0a3286f58bd823aabdc560c2a4bf4a9b1ca125aa7",
    min_wire_bytes: 7, max_wire_bytes: 71 }
}
pub fn Ros2Fanuc_msgsMsgBoolIOCodec::encode(_self : Ros2Fanuc_msgsMsgBoolIOCodec,
    value : Ros2Fanuc_msgsMsgBoolIO) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 71, error: 0 }
  write_Ros2Fanuc_msgsMsgBoolIO(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 7 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgBoolIOCodec::decode(_self : Ros2Fanuc_msgsMsgBoolIOCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgBoolIO,
    Int] {
  if input.length() < 7 || input.length() > 71 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgBoolIO(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgBoolIO(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgBoolIO) -> Unit {
  let part0 = value.field_io_type
  write_Ros2Fanuc_msgsMsgIOType(writer, part0)
  let part1 = value.field_index
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_value
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Fanuc_msgsMsgBoolIO(reader : BoundedReader) -> Ros2Fanuc_msgsMsgBoolIO {
  let part0 = read_Ros2Fanuc_msgsMsgIOType(reader)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.boolean()
  { field_io_type: part0, field_index: part1, field_value: part2 }
}

pub(all) struct Ros2Fanuc_msgsMsgCollaborativeSpeedScaling {
  mut field_collaborative_speed_scaling : Double
}
pub fn Ros2Fanuc_msgsMsgCollaborativeSpeedScaling::new() -> Ros2Fanuc_msgsMsgCollaborativeSpeedScaling {
  {
    field_collaborative_speed_scaling: 0.0,
  }
}
pub(all) struct Ros2Fanuc_msgsMsgCollaborativeSpeedScalingCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgCollaborativeSpeedScalingCodec::new() -> Ros2Fanuc_msgsMsgCollaborativeSpeedScalingCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/CollaborativeSpeedScaling",
    native_identity: None,
    codec_identity: "UWVMROS1_693a3b581527d2eaf0f697f31e87ca2da428d1f51b821d42d6b06af387a2fb45",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Fanuc_msgsMsgCollaborativeSpeedScalingCodec::encode(_self : Ros2Fanuc_msgsMsgCollaborativeSpeedScalingCodec,
    value : Ros2Fanuc_msgsMsgCollaborativeSpeedScaling) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgCollaborativeSpeedScalingCodec::decode(_self : Ros2Fanuc_msgsMsgCollaborativeSpeedScalingCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgCollaborativeSpeedScaling,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling(writer : BoundedWriter,
    value : Ros2Fanuc_msgsMsgCollaborativeSpeedScaling) -> Unit {
  let part0 = value.field_collaborative_speed_scaling
  writer.float64(part0)
}
fn read_Ros2Fanuc_msgsMsgCollaborativeSpeedScaling(
    reader : BoundedReader) -> Ros2Fanuc_msgsMsgCollaborativeSpeedScaling {
  let part0 = reader.float64()
  { field_collaborative_speed_scaling: part0 }
}

pub(all) struct Ros2Fanuc_msgsMsgConnectionStatus {
  mut field_is_connected : Bool
}
pub fn Ros2Fanuc_msgsMsgConnectionStatus::new() -> Ros2Fanuc_msgsMsgConnectionStatus {
  {
    field_is_connected: false,
  }
}
pub(all) struct Ros2Fanuc_msgsMsgConnectionStatusCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgConnectionStatusCodec::new() -> Ros2Fanuc_msgsMsgConnectionStatusCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/ConnectionStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_8ce24fb87538922b1f3c0ae856eb223d716143064eb46a6cfce5fec01b45b078",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Fanuc_msgsMsgConnectionStatusCodec::encode(_self : Ros2Fanuc_msgsMsgConnectionStatusCodec,
    value : Ros2Fanuc_msgsMsgConnectionStatus) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Fanuc_msgsMsgConnectionStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgConnectionStatusCodec::decode(_self : Ros2Fanuc_msgsMsgConnectionStatusCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgConnectionStatus,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgConnectionStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgConnectionStatus(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgConnectionStatus) -> Unit {
  let part0 = value.field_is_connected
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Fanuc_msgsMsgConnectionStatus(reader : BoundedReader) -> Ros2Fanuc_msgsMsgConnectionStatus {
  let part0 = reader.boolean()
  { field_is_connected: part0 }
}

pub(all) struct Ros2Fanuc_msgsMsgForceSensor {
  mut field_force_x : Float
  mut field_force_y : Float
  mut field_force_z : Float
  mut field_moment_x : Float
  mut field_moment_y : Float
  mut field_moment_z : Float
  mut field_fs_type : UInt
}
pub fn Ros2Fanuc_msgsMsgForceSensor::new() -> Ros2Fanuc_msgsMsgForceSensor {
  {
    field_force_x: (0U).reinterpret_as_float(),
    field_force_y: (0U).reinterpret_as_float(),
    field_force_z: (0U).reinterpret_as_float(),
    field_moment_x: (0U).reinterpret_as_float(),
    field_moment_y: (0U).reinterpret_as_float(),
    field_moment_z: (0U).reinterpret_as_float(),
    field_fs_type: 0U,
  }
}
pub(all) struct Ros2Fanuc_msgsMsgForceSensorCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgForceSensorCodec::new() -> Ros2Fanuc_msgsMsgForceSensorCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/ForceSensor",
    native_identity: None,
    codec_identity: "UWVMROS1_06c99b43d7347646179850f3ba79192da7ce71296667d93d88659efbc1004032",
    min_wire_bytes: 28, max_wire_bytes: 28 }
}
pub fn Ros2Fanuc_msgsMsgForceSensorCodec::encode(_self : Ros2Fanuc_msgsMsgForceSensorCodec,
    value : Ros2Fanuc_msgsMsgForceSensor) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 28, error: 0 }
  write_Ros2Fanuc_msgsMsgForceSensor(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgForceSensorCodec::decode(_self : Ros2Fanuc_msgsMsgForceSensorCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgForceSensor,
    Int] {
  if input.length() < 28 || input.length() > 28 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgForceSensor(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgForceSensor(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgForceSensor) -> Unit {
  let part0 = value.field_force_x
  writer.float32(part0)
  let part1 = value.field_force_y
  writer.float32(part1)
  let part2 = value.field_force_z
  writer.float32(part2)
  let part3 = value.field_moment_x
  writer.float32(part3)
  let part4 = value.field_moment_y
  writer.float32(part4)
  let part5 = value.field_moment_z
  writer.float32(part5)
  let part6 = value.field_fs_type
  writer.unsigned(part6.to_uint64(), 4)
}
fn read_Ros2Fanuc_msgsMsgForceSensor(reader : BoundedReader) -> Ros2Fanuc_msgsMsgForceSensor {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.unsigned(4).to_uint()
    {
      field_force_x: part0,
      field_force_y: part1,
      field_force_z: part2,
      field_moment_x: part3,
      field_moment_y: part4,
      field_moment_z: part5,
      field_fs_type: part6
    }
}

pub(all) struct Ros2Fanuc_msgsMsgFrame {
  mut field_x : Float
  mut field_y : Float
  mut field_z : Float
  mut field_w : Float
  mut field_p : Float
  mut field_r : Float
}
pub fn Ros2Fanuc_msgsMsgFrame::new() -> Ros2Fanuc_msgsMsgFrame {
  {
    field_x: (0U).reinterpret_as_float(),
    field_y: (0U).reinterpret_as_float(),
    field_z: (0U).reinterpret_as_float(),
    field_w: (0U).reinterpret_as_float(),
    field_p: (0U).reinterpret_as_float(),
    field_r: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsMsgFrameCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgFrameCodec::new() -> Ros2Fanuc_msgsMsgFrameCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/Frame",
    native_identity: None,
    codec_identity: "UWVMROS1_609d1b7e49315f7f0a0fe86fa997673acd0d009e57b563690f36624b59b9effb",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros2Fanuc_msgsMsgFrameCodec::encode(_self : Ros2Fanuc_msgsMsgFrameCodec,
    value : Ros2Fanuc_msgsMsgFrame) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Fanuc_msgsMsgFrame(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgFrameCodec::decode(_self : Ros2Fanuc_msgsMsgFrameCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgFrame,
    Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgFrame(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgFrame(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgFrame) -> Unit {
  let part0 = value.field_x
  writer.float32(part0)
  let part1 = value.field_y
  writer.float32(part1)
  let part2 = value.field_z
  writer.float32(part2)
  let part3 = value.field_w
  writer.float32(part3)
  let part4 = value.field_p
  writer.float32(part4)
  let part5 = value.field_r
  writer.float32(part5)
}
fn read_Ros2Fanuc_msgsMsgFrame(reader : BoundedReader) -> Ros2Fanuc_msgsMsgFrame {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  { field_x: part0, field_y: part1, field_z: part2, field_w: part3, field_p: part4, field_r: part5 }
}

pub(all) struct Ros2Fanuc_msgsMsgIOCmd {
  mut field_values : Array[Ros2Fanuc_msgsMsgBoolIO]
}
pub fn Ros2Fanuc_msgsMsgIOCmd::new() -> Ros2Fanuc_msgsMsgIOCmd {
  {
    field_values: [],
  }
}
pub(all) struct Ros2Fanuc_msgsMsgIOCmdCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgIOCmdCodec::new() -> Ros2Fanuc_msgsMsgIOCmdCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/IOCmd",
    native_identity: None,
    codec_identity: "UWVMROS1_462552bbaa3c9ed4caaf3108960d514e4ab61fcf2d6a84f0465b485bec1de45d",
    min_wire_bytes: 4, max_wire_bytes: 2276 }
}
pub fn Ros2Fanuc_msgsMsgIOCmdCodec::encode(_self : Ros2Fanuc_msgsMsgIOCmdCodec,
    value : Ros2Fanuc_msgsMsgIOCmd) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2276, error: 0 }
  write_Ros2Fanuc_msgsMsgIOCmd(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgIOCmdCodec::decode(_self : Ros2Fanuc_msgsMsgIOCmdCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgIOCmd,
    Int] {
  if input.length() < 4 || input.length() > 2276 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgIOCmd(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgIOCmd(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgIOCmd) -> Unit {
  let part0 = value.field_values
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Fanuc_msgsMsgBoolIO(writer, element)
  }
}
fn read_Ros2Fanuc_msgsMsgIOCmd(reader : BoundedReader) -> Ros2Fanuc_msgsMsgIOCmd {
  let part0 : Array[Ros2Fanuc_msgsMsgBoolIO] = []
  let count0 = reader.count(32, 7)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Fanuc_msgsMsgBoolIO(reader))
  }
  { field_values: part0 }
}

pub(all) struct Ros2Fanuc_msgsMsgIOState {
  mut field_values : Array[Ros2Fanuc_msgsMsgBoolIO]
}
pub fn Ros2Fanuc_msgsMsgIOState::new() -> Ros2Fanuc_msgsMsgIOState {
  {
    field_values: [],
  }
}
pub(all) struct Ros2Fanuc_msgsMsgIOStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgIOStateCodec::new() -> Ros2Fanuc_msgsMsgIOStateCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/IOState",
    native_identity: None,
    codec_identity: "UWVMROS1_332533445014c03d626a2c4dbdffd9421748aa6b73f49d407441fd6b9f2b24d8",
    min_wire_bytes: 4, max_wire_bytes: 2276 }
}
pub fn Ros2Fanuc_msgsMsgIOStateCodec::encode(_self : Ros2Fanuc_msgsMsgIOStateCodec,
    value : Ros2Fanuc_msgsMsgIOState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2276, error: 0 }
  write_Ros2Fanuc_msgsMsgIOState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgIOStateCodec::decode(_self : Ros2Fanuc_msgsMsgIOStateCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgIOState,
    Int] {
  if input.length() < 4 || input.length() > 2276 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgIOState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgIOState(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgIOState) -> Unit {
  let part0 = value.field_values
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Fanuc_msgsMsgBoolIO(writer, element)
  }
}
fn read_Ros2Fanuc_msgsMsgIOState(reader : BoundedReader) -> Ros2Fanuc_msgsMsgIOState {
  let part0 : Array[Ros2Fanuc_msgsMsgBoolIO] = []
  let count0 = reader.count(32, 7)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Fanuc_msgsMsgBoolIO(reader))
  }
  { field_values: part0 }
}

pub(all) struct Ros2Fanuc_msgsMsgNumReg {
  mut field_index : Int
  mut field_value : Float
}
pub fn Ros2Fanuc_msgsMsgNumReg::new() -> Ros2Fanuc_msgsMsgNumReg {
  {
    field_index: 0,
    field_value: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsMsgNumRegCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgNumRegCodec::new() -> Ros2Fanuc_msgsMsgNumRegCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/NumReg",
    native_identity: None,
    codec_identity: "UWVMROS1_0fb9344c5768ea52ab072939f368f1e73dcc0ff83e74b4cb6d35fca47c1d29cc",
    min_wire_bytes: 6, max_wire_bytes: 6 }
}
pub fn Ros2Fanuc_msgsMsgNumRegCodec::encode(_self : Ros2Fanuc_msgsMsgNumRegCodec,
    value : Ros2Fanuc_msgsMsgNumReg) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 6, error: 0 }
  write_Ros2Fanuc_msgsMsgNumReg(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgNumRegCodec::decode(_self : Ros2Fanuc_msgsMsgNumRegCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgNumReg,
    Int] {
  if input.length() < 6 || input.length() > 6 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgNumReg(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgNumReg(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgNumReg) -> Unit {
  let part0 = value.field_index
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_value
  writer.float32(part1)
}
fn read_Ros2Fanuc_msgsMsgNumReg(reader : BoundedReader) -> Ros2Fanuc_msgsMsgNumReg {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.float32()
  { field_index: part0, field_value: part1 }
}

pub(all) struct Ros2Fanuc_msgsMsgNumRegCmd {
  mut field_values : Array[Ros2Fanuc_msgsMsgNumReg]
}
pub fn Ros2Fanuc_msgsMsgNumRegCmd::new() -> Ros2Fanuc_msgsMsgNumRegCmd {
  {
    field_values: [],
  }
}
pub(all) struct Ros2Fanuc_msgsMsgNumRegCmdCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgNumRegCmdCodec::new() -> Ros2Fanuc_msgsMsgNumRegCmdCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/NumRegCmd",
    native_identity: None,
    codec_identity: "UWVMROS1_9c76500073889377525a0802c46bd96589a2639dd9534cf7ad2b9956cd95b5b6",
    min_wire_bytes: 4, max_wire_bytes: 196 }
}
pub fn Ros2Fanuc_msgsMsgNumRegCmdCodec::encode(_self : Ros2Fanuc_msgsMsgNumRegCmdCodec,
    value : Ros2Fanuc_msgsMsgNumRegCmd) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 196, error: 0 }
  write_Ros2Fanuc_msgsMsgNumRegCmd(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgNumRegCmdCodec::decode(_self : Ros2Fanuc_msgsMsgNumRegCmdCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgNumRegCmd,
    Int] {
  if input.length() < 4 || input.length() > 196 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgNumRegCmd(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgNumRegCmd(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgNumRegCmd) -> Unit {
  let part0 = value.field_values
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Fanuc_msgsMsgNumReg(writer, element)
  }
}
fn read_Ros2Fanuc_msgsMsgNumRegCmd(reader : BoundedReader) -> Ros2Fanuc_msgsMsgNumRegCmd {
  let part0 : Array[Ros2Fanuc_msgsMsgNumReg] = []
  let count0 = reader.count(32, 6)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Fanuc_msgsMsgNumReg(reader))
  }
  { field_values: part0 }
}

pub(all) struct Ros2Fanuc_msgsMsgNumRegState {
  mut field_values : Array[Ros2Fanuc_msgsMsgNumReg]
}
pub fn Ros2Fanuc_msgsMsgNumRegState::new() -> Ros2Fanuc_msgsMsgNumRegState {
  {
    field_values: [],
  }
}
pub(all) struct Ros2Fanuc_msgsMsgNumRegStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgNumRegStateCodec::new() -> Ros2Fanuc_msgsMsgNumRegStateCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/NumRegState",
    native_identity: None,
    codec_identity: "UWVMROS1_9c8ff4917a6dd033e6a6776ae8525e93c2924d776f05fd54e7e8d2251fc48b3a",
    min_wire_bytes: 4, max_wire_bytes: 196 }
}
pub fn Ros2Fanuc_msgsMsgNumRegStateCodec::encode(_self : Ros2Fanuc_msgsMsgNumRegStateCodec,
    value : Ros2Fanuc_msgsMsgNumRegState) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 196, error: 0 }
  write_Ros2Fanuc_msgsMsgNumRegState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgNumRegStateCodec::decode(_self : Ros2Fanuc_msgsMsgNumRegStateCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgNumRegState,
    Int] {
  if input.length() < 4 || input.length() > 196 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgNumRegState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgNumRegState(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgNumRegState) -> Unit {
  let part0 = value.field_values
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Fanuc_msgsMsgNumReg(writer, element)
  }
}
fn read_Ros2Fanuc_msgsMsgNumRegState(reader : BoundedReader) -> Ros2Fanuc_msgsMsgNumRegState {
  let part0 : Array[Ros2Fanuc_msgsMsgNumReg] = []
  let count0 = reader.count(32, 6)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Fanuc_msgsMsgNumReg(reader))
  }
  { field_values: part0 }
}

pub(all) struct Ros2Fanuc_msgsMsgRMIStatus {
  mut field_program_status : UInt
  mut field_next_sequence : UInt
  mut field_last_sequence : UInt
  mut field_last_sequence_error : Int
  mut field_last_sequence_instruction : String
  mut field_last_sequence_error_message : String
}
pub fn Ros2Fanuc_msgsMsgRMIStatus::new() -> Ros2Fanuc_msgsMsgRMIStatus {
  {
    field_program_status: 0U,
    field_next_sequence: 0U,
    field_last_sequence: 0U,
    field_last_sequence_error: 0,
    field_last_sequence_instruction: "",
    field_last_sequence_error_message: "",
  }
}
pub(all) struct Ros2Fanuc_msgsMsgRMIStatusCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgRMIStatusCodec::new() -> Ros2Fanuc_msgsMsgRMIStatusCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/RMIStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_dc2e7eaabf44807142581905838f8951653682a6c6d61ebcf56494b16a10d5e8",
    min_wire_bytes: 24, max_wire_bytes: 1048 }
}
pub fn Ros2Fanuc_msgsMsgRMIStatusCodec::encode(_self : Ros2Fanuc_msgsMsgRMIStatusCodec,
    value : Ros2Fanuc_msgsMsgRMIStatus) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1048, error: 0 }
  write_Ros2Fanuc_msgsMsgRMIStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgRMIStatusCodec::decode(_self : Ros2Fanuc_msgsMsgRMIStatusCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgRMIStatus,
    Int] {
  if input.length() < 24 || input.length() > 1048 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgRMIStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgRMIStatus(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgRMIStatus) -> Unit {
  let part0 = value.field_program_status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_next_sequence
  writer.unsigned(part1.to_uint64(), 4)
  let part2 = value.field_last_sequence
  writer.unsigned(part2.to_uint64(), 4)
  let part3 = value.field_last_sequence_error
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part4 = value.field_last_sequence_instruction
  writer.text(part4, 512)
  let part5 = value.field_last_sequence_error_message
  writer.text(part5, 512)
}
fn read_Ros2Fanuc_msgsMsgRMIStatus(reader : BoundedReader) -> Ros2Fanuc_msgsMsgRMIStatus {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(4).to_uint()
  let part2 = reader.unsigned(4).to_uint()
  let part3 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part4 = reader.text(512)
  let part5 = reader.text(512)
    {
      field_program_status: part0,
      field_next_sequence: part1,
      field_last_sequence: part2,
      field_last_sequence_error: part3,
      field_last_sequence_instruction: part4,
      field_last_sequence_error_message: part5
    }
}

pub(all) struct Ros2Fanuc_msgsMsgRobotStatus {
  mut field_in_error : Bool
  mut field_tp_enabled : Bool
  mut field_e_stopped : Bool
  mut field_motion_possible : Bool
  mut field_contact_stop_mode : Int
}
pub fn Ros2Fanuc_msgsMsgRobotStatus::new() -> Ros2Fanuc_msgsMsgRobotStatus {
  {
    field_in_error: false,
    field_tp_enabled: false,
    field_e_stopped: false,
    field_motion_possible: false,
    field_contact_stop_mode: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsMsgRobotStatusCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgRobotStatusCodec::new() -> Ros2Fanuc_msgsMsgRobotStatusCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/RobotStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_3f31ee3631dc6f4c90eb5ded6209ccebf0f4193ddfe5f5032bdd2bcd71f8cc31",
    min_wire_bytes: 5, max_wire_bytes: 5 }
}
pub fn Ros2Fanuc_msgsMsgRobotStatusCodec::encode(_self : Ros2Fanuc_msgsMsgRobotStatusCodec,
    value : Ros2Fanuc_msgsMsgRobotStatus) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5, error: 0 }
  write_Ros2Fanuc_msgsMsgRobotStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgRobotStatusCodec::decode(_self : Ros2Fanuc_msgsMsgRobotStatusCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgRobotStatus,
    Int] {
  if input.length() < 5 || input.length() > 5 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgRobotStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgRobotStatus(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgRobotStatus) -> Unit {
  let part0 = value.field_in_error
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.field_tp_enabled
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.field_e_stopped
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.field_motion_possible
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
  let part4 = value.field_contact_stop_mode
  if part4 < 0 || part4 > 255 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsMsgRobotStatus(reader : BoundedReader) -> Ros2Fanuc_msgsMsgRobotStatus {
  let part0 = reader.boolean()
  let part1 = reader.boolean()
  let part2 = reader.boolean()
  let part3 = reader.boolean()
  let part4 = reader.unsigned(1).to_int()
    {
      field_in_error: part0,
      field_tp_enabled: part1,
      field_e_stopped: part2,
      field_motion_possible: part3,
      field_contact_stop_mode: part4
    }
}

pub(all) struct Ros2Fanuc_msgsMsgRobotStatusExt {
  mut field_error_code : String
  mut field_in_motion : Bool
  mut field_drives_powered : Bool
  mut field_gen_override : Int
  mut field_speed_clamp_limit : Float
  mut field_control_mode : String
}
pub fn Ros2Fanuc_msgsMsgRobotStatusExt::new() -> Ros2Fanuc_msgsMsgRobotStatusExt {
  {
    field_error_code: "",
    field_in_motion: false,
    field_drives_powered: false,
    field_gen_override: 0,
    field_speed_clamp_limit: (0U).reinterpret_as_float(),
    field_control_mode: "",
  }
}
pub(all) struct Ros2Fanuc_msgsMsgRobotStatusExtCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsMsgRobotStatusExtCodec::new() -> Ros2Fanuc_msgsMsgRobotStatusExtCodec {
  { ros_version: 2, native_type: "fanuc_msgs/msg/RobotStatusExt",
    native_identity: None,
    codec_identity: "UWVMROS1_8ba47a11bfbe02026fe79b32e1ed02e5f609499ea55bb57c9f09af9fba389648",
    min_wire_bytes: 18, max_wire_bytes: 1042 }
}
pub fn Ros2Fanuc_msgsMsgRobotStatusExtCodec::encode(_self : Ros2Fanuc_msgsMsgRobotStatusExtCodec,
    value : Ros2Fanuc_msgsMsgRobotStatusExt) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1042, error: 0 }
  write_Ros2Fanuc_msgsMsgRobotStatusExt(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 18 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsMsgRobotStatusExtCodec::decode(_self : Ros2Fanuc_msgsMsgRobotStatusExtCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsMsgRobotStatusExt,
    Int] {
  if input.length() < 18 || input.length() > 1042 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsMsgRobotStatusExt(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsMsgRobotStatusExt(writer : BoundedWriter, value : Ros2Fanuc_msgsMsgRobotStatusExt) -> Unit {
  let part0 = value.field_error_code
  writer.text(part0, 512)
  let part1 = value.field_in_motion
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.field_drives_powered
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.field_gen_override
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part4 = value.field_speed_clamp_limit
  writer.float32(part4)
  let part5 = value.field_control_mode
  writer.text(part5, 512)
}
fn read_Ros2Fanuc_msgsMsgRobotStatusExt(reader : BoundedReader) -> Ros2Fanuc_msgsMsgRobotStatusExt {
  let part0 = reader.text(512)
  let part1 = reader.boolean()
  let part2 = reader.boolean()
  let part3 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part4 = reader.float32()
  let part5 = reader.text(512)
    {
      field_error_code: part0,
      field_in_motion: part1,
      field_drives_powered: part2,
      field_gen_override: part3,
      field_speed_clamp_limit: part4,
      field_control_mode: part5
    }
}

pub(all) struct Ros2Fanuc_msgsSrvCfgForceSensor_Request {
  mut field_do_reset : UInt
  mut field_fs_type : UInt
}
pub fn Ros2Fanuc_msgsSrvCfgForceSensor_Request::new() -> Ros2Fanuc_msgsSrvCfgForceSensor_Request {
  {
    field_do_reset: 0U,
    field_fs_type: 0U,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvCfgForceSensor_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvCfgForceSensor_RequestCodec::new() -> Ros2Fanuc_msgsSrvCfgForceSensor_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/CfgForceSensor_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_01973ed21546cb747ad2ce2a990a8ec4e70efb66e1c8fc8856cf1082870984ff",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Fanuc_msgsSrvCfgForceSensor_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvCfgForceSensor_RequestCodec,
    value : Ros2Fanuc_msgsSrvCfgForceSensor_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Fanuc_msgsSrvCfgForceSensor_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvCfgForceSensor_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvCfgForceSensor_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvCfgForceSensor_Request,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvCfgForceSensor_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvCfgForceSensor_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvCfgForceSensor_Request) -> Unit {
  let part0 = value.field_do_reset
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.field_fs_type
  writer.unsigned(part1.to_uint64(), 4)
}
fn read_Ros2Fanuc_msgsSrvCfgForceSensor_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvCfgForceSensor_Request {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(4).to_uint()
  { field_do_reset: part0, field_fs_type: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvCfgForceSensor_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvCfgForceSensor_Response::new() -> Ros2Fanuc_msgsSrvCfgForceSensor_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvCfgForceSensor_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvCfgForceSensor_ResponseCodec::new() -> Ros2Fanuc_msgsSrvCfgForceSensor_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/CfgForceSensor_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_41799ce44c937b1524889391db61e2b4d35795055cb4bbacfe5cc8bbd5b9a37b",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvCfgForceSensor_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvCfgForceSensor_ResponseCodec,
    value : Ros2Fanuc_msgsSrvCfgForceSensor_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvCfgForceSensor_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvCfgForceSensor_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvCfgForceSensor_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvCfgForceSensor_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvCfgForceSensor_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvCfgForceSensor_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvCfgForceSensor_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvCfgForceSensor_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvCfgForceSensor_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetAnalogIO_Request {
  mut field_io_type : Ros2Fanuc_msgsMsgIOType
  mut field_index : Int
}
pub fn Ros2Fanuc_msgsSrvGetAnalogIO_Request::new() -> Ros2Fanuc_msgsSrvGetAnalogIO_Request {
  {
    field_io_type: Ros2Fanuc_msgsMsgIOType::new(),
    field_index: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetAnalogIO_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetAnalogIO_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetAnalogIO_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetAnalogIO_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_cd567f97de2de581975c3d4f280eec545dea37c941d316fc3708bbc4d3af94d9",
    min_wire_bytes: 6, max_wire_bytes: 70 }
}
pub fn Ros2Fanuc_msgsSrvGetAnalogIO_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetAnalogIO_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetAnalogIO_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 70, error: 0 }
  write_Ros2Fanuc_msgsSrvGetAnalogIO_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetAnalogIO_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetAnalogIO_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetAnalogIO_Request,
    Int] {
  if input.length() < 6 || input.length() > 70 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetAnalogIO_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetAnalogIO_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetAnalogIO_Request) -> Unit {
  let part0 = value.field_io_type
  write_Ros2Fanuc_msgsMsgIOType(writer, part0)
  let part1 = value.field_index
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Fanuc_msgsSrvGetAnalogIO_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetAnalogIO_Request {
  let part0 = read_Ros2Fanuc_msgsMsgIOType(reader)
  let part1 = reader.unsigned(2).to_int()
  { field_io_type: part0, field_index: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetAnalogIO_Response {
  mut field_result : Int
  mut field_value : Float
}
pub fn Ros2Fanuc_msgsSrvGetAnalogIO_Response::new() -> Ros2Fanuc_msgsSrvGetAnalogIO_Response {
  {
    field_result: 0,
    field_value: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetAnalogIO_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetAnalogIO_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetAnalogIO_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetAnalogIO_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_3b53d3ce95d95454a782778c160fcc102ead869c5681c9c67224c373fef1b217",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Fanuc_msgsSrvGetAnalogIO_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetAnalogIO_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetAnalogIO_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Fanuc_msgsSrvGetAnalogIO_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetAnalogIO_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetAnalogIO_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetAnalogIO_Response,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetAnalogIO_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetAnalogIO_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetAnalogIO_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_value
  writer.float32(part1)
}
fn read_Ros2Fanuc_msgsSrvGetAnalogIO_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetAnalogIO_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.float32()
  { field_result: part0, field_value: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetBoolIO_Request {
  mut field_io_type : Ros2Fanuc_msgsMsgIOType
  mut field_index : Int
}
pub fn Ros2Fanuc_msgsSrvGetBoolIO_Request::new() -> Ros2Fanuc_msgsSrvGetBoolIO_Request {
  {
    field_io_type: Ros2Fanuc_msgsMsgIOType::new(),
    field_index: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetBoolIO_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetBoolIO_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetBoolIO_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetBoolIO_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_ce8c4b1efd2828e92656e897baf041e8965367a236079231101807c898d4b50c",
    min_wire_bytes: 6, max_wire_bytes: 70 }
}
pub fn Ros2Fanuc_msgsSrvGetBoolIO_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetBoolIO_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetBoolIO_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 70, error: 0 }
  write_Ros2Fanuc_msgsSrvGetBoolIO_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetBoolIO_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetBoolIO_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetBoolIO_Request,
    Int] {
  if input.length() < 6 || input.length() > 70 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetBoolIO_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetBoolIO_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetBoolIO_Request) -> Unit {
  let part0 = value.field_io_type
  write_Ros2Fanuc_msgsMsgIOType(writer, part0)
  let part1 = value.field_index
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Fanuc_msgsSrvGetBoolIO_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetBoolIO_Request {
  let part0 = read_Ros2Fanuc_msgsMsgIOType(reader)
  let part1 = reader.unsigned(2).to_int()
  { field_io_type: part0, field_index: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetBoolIO_Response {
  mut field_result : Int
  mut field_value : Bool
}
pub fn Ros2Fanuc_msgsSrvGetBoolIO_Response::new() -> Ros2Fanuc_msgsSrvGetBoolIO_Response {
  {
    field_result: 0,
    field_value: false,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetBoolIO_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetBoolIO_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetBoolIO_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetBoolIO_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_7dbdcdde8d76c4ef422ea158551dd912273220c25a08f28fc8d19fdf8bc8a01c",
    min_wire_bytes: 5, max_wire_bytes: 5 }
}
pub fn Ros2Fanuc_msgsSrvGetBoolIO_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetBoolIO_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetBoolIO_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5, error: 0 }
  write_Ros2Fanuc_msgsSrvGetBoolIO_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetBoolIO_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetBoolIO_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetBoolIO_Response,
    Int] {
  if input.length() < 5 || input.length() > 5 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetBoolIO_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetBoolIO_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetBoolIO_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_value
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Fanuc_msgsSrvGetBoolIO_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetBoolIO_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.boolean()
  { field_result: part0, field_value: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetCartesianPosition_Request {
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvGetCartesianPosition_Request::new() -> Ros2Fanuc_msgsSrvGetCartesianPosition_Request {
  {
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetCartesianPosition_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetCartesianPosition_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetCartesianPosition_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetCartesianPosition_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_a694a17bde88131efcadac4f134464a7777beab4b09e17624ae7b173ab62c3e4",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Fanuc_msgsSrvGetCartesianPosition_RequestCodec::encode(
    _self : Ros2Fanuc_msgsSrvGetCartesianPosition_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetCartesianPosition_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Fanuc_msgsSrvGetCartesianPosition_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetCartesianPosition_RequestCodec::decode(
    _self : Ros2Fanuc_msgsSrvGetCartesianPosition_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetCartesianPosition_Request,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetCartesianPosition_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetCartesianPosition_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetCartesianPosition_Request) -> Unit {
  let part0 = value.field_group
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvGetCartesianPosition_Request(
    reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetCartesianPosition_Request {
  let part0 = reader.unsigned(1).to_int()
  { field_group: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetCartesianPosition_Response {
  mut field_result : Int
  mut field_timetag : Int
  mut field_utool : Int
  mut field_uframe : Int
  mut field_front : Int
  mut field_up : Int
  mut field_left : Int
  mut field_flip : Int
  mut field_turn4 : Int
  mut field_turn5 : Int
  mut field_turn6 : Int
  mut field_x : Float
  mut field_y : Float
  mut field_z : Float
  mut field_w : Float
  mut field_p : Float
  mut field_r : Float
  mut field_ext1 : Float
  mut field_ext2 : Float
  mut field_ext3 : Float
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvGetCartesianPosition_Response::new() -> Ros2Fanuc_msgsSrvGetCartesianPosition_Response {
  {
    field_result: 0,
    field_timetag: 0,
    field_utool: 0,
    field_uframe: 0,
    field_front: 0,
    field_up: 0,
    field_left: 0,
    field_flip: 0,
    field_turn4: 0,
    field_turn5: 0,
    field_turn6: 0,
    field_x: (0U).reinterpret_as_float(),
    field_y: (0U).reinterpret_as_float(),
    field_z: (0U).reinterpret_as_float(),
    field_w: (0U).reinterpret_as_float(),
    field_p: (0U).reinterpret_as_float(),
    field_r: (0U).reinterpret_as_float(),
    field_ext1: (0U).reinterpret_as_float(),
    field_ext2: (0U).reinterpret_as_float(),
    field_ext3: (0U).reinterpret_as_float(),
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetCartesianPosition_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetCartesianPosition_ResponseCodec::new(
    ) -> Ros2Fanuc_msgsSrvGetCartesianPosition_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetCartesianPosition_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_0516f0145717b06550674e02f0b9c47f9b312f4f361c791f56257fbb79e67329",
    min_wire_bytes: 54, max_wire_bytes: 54 }
}
pub fn Ros2Fanuc_msgsSrvGetCartesianPosition_ResponseCodec::encode(
    _self : Ros2Fanuc_msgsSrvGetCartesianPosition_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetCartesianPosition_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 54, error: 0 }
  write_Ros2Fanuc_msgsSrvGetCartesianPosition_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 54 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetCartesianPosition_ResponseCodec::decode(
    _self : Ros2Fanuc_msgsSrvGetCartesianPosition_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetCartesianPosition_Response,
    Int] {
  if input.length() < 54 || input.length() > 54 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetCartesianPosition_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetCartesianPosition_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetCartesianPosition_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_timetag
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part2 = value.field_utool
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part3 = value.field_uframe
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part4 = value.field_front
  if part4 < 0 || part4 > 255 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part5 = value.field_up
  if part5 < 0 || part5 > 255 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part6 = value.field_left
  if part6 < 0 || part6 > 255 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part7 = value.field_flip
  if part7 < 0 || part7 > 255 { writer.error = 22 }
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part8 = value.field_turn4
  if part8 < -128 || part8 > 127 { writer.error = 22 }
  writer.unsigned(part8.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part9 = value.field_turn5
  if part9 < -128 || part9 > 127 { writer.error = 22 }
  writer.unsigned(part9.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part10 = value.field_turn6
  if part10 < -128 || part10 > 127 { writer.error = 22 }
  writer.unsigned(part10.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part11 = value.field_x
  writer.float32(part11)
  let part12 = value.field_y
  writer.float32(part12)
  let part13 = value.field_z
  writer.float32(part13)
  let part14 = value.field_w
  writer.float32(part14)
  let part15 = value.field_p
  writer.float32(part15)
  let part16 = value.field_r
  writer.float32(part16)
  let part17 = value.field_ext1
  writer.float32(part17)
  let part18 = value.field_ext2
  writer.float32(part18)
  let part19 = value.field_ext3
  writer.float32(part19)
  let part20 = value.field_group
  if part20 < 0 || part20 > 255 { writer.error = 22 }
  writer.unsigned(part20.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvGetCartesianPosition_Response(
    reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetCartesianPosition_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part2 = reader.unsigned(1).to_int()
  let part3 = reader.unsigned(1).to_int()
  let part4 = reader.unsigned(1).to_int()
  let part5 = reader.unsigned(1).to_int()
  let part6 = reader.unsigned(1).to_int()
  let part7 = reader.unsigned(1).to_int()
  let part8 = reader.signed8()
  let part9 = reader.signed8()
  let part10 = reader.signed8()
  let part11 = reader.float32()
  let part12 = reader.float32()
  let part13 = reader.float32()
  let part14 = reader.float32()
  let part15 = reader.float32()
  let part16 = reader.float32()
  let part17 = reader.float32()
  let part18 = reader.float32()
  let part19 = reader.float32()
  let part20 = reader.unsigned(1).to_int()
    {
      field_result: part0,
      field_timetag: part1,
      field_utool: part2,
      field_uframe: part3,
      field_front: part4,
      field_up: part5,
      field_left: part6,
      field_flip: part7,
      field_turn4: part8,
      field_turn5: part9,
      field_turn6: part10,
      field_x: part11,
      field_y: part12,
      field_z: part13,
      field_w: part14,
      field_p: part15,
      field_r: part16,
      field_ext1: part17,
      field_ext2: part18,
      field_ext3: part19,
      field_group: part20
    }
}

pub(all) struct Ros2Fanuc_msgsSrvGetGroupIO_Request {
  mut field_io_type : Ros2Fanuc_msgsMsgIOType
  mut field_index : Int
}
pub fn Ros2Fanuc_msgsSrvGetGroupIO_Request::new() -> Ros2Fanuc_msgsSrvGetGroupIO_Request {
  {
    field_io_type: Ros2Fanuc_msgsMsgIOType::new(),
    field_index: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetGroupIO_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetGroupIO_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetGroupIO_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetGroupIO_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_dbd2e8e791e8debc745843827ed296b51bf84159f4c4fe5d912c231d621de216",
    min_wire_bytes: 6, max_wire_bytes: 70 }
}
pub fn Ros2Fanuc_msgsSrvGetGroupIO_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetGroupIO_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetGroupIO_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 70, error: 0 }
  write_Ros2Fanuc_msgsSrvGetGroupIO_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetGroupIO_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetGroupIO_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetGroupIO_Request,
    Int] {
  if input.length() < 6 || input.length() > 70 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetGroupIO_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetGroupIO_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetGroupIO_Request) -> Unit {
  let part0 = value.field_io_type
  write_Ros2Fanuc_msgsMsgIOType(writer, part0)
  let part1 = value.field_index
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Fanuc_msgsSrvGetGroupIO_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetGroupIO_Request {
  let part0 = read_Ros2Fanuc_msgsMsgIOType(reader)
  let part1 = reader.unsigned(2).to_int()
  { field_io_type: part0, field_index: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetGroupIO_Response {
  mut field_result : Int
  mut field_value : Int
}
pub fn Ros2Fanuc_msgsSrvGetGroupIO_Response::new() -> Ros2Fanuc_msgsSrvGetGroupIO_Response {
  {
    field_result: 0,
    field_value: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetGroupIO_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetGroupIO_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetGroupIO_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetGroupIO_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_9e131b91f36badc90ddae54a9855095241ab86c51b419b684d62879fae0bda7f",
    min_wire_bytes: 6, max_wire_bytes: 6 }
}
pub fn Ros2Fanuc_msgsSrvGetGroupIO_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetGroupIO_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetGroupIO_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 6, error: 0 }
  write_Ros2Fanuc_msgsSrvGetGroupIO_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetGroupIO_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetGroupIO_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetGroupIO_Response,
    Int] {
  if input.length() < 6 || input.length() > 6 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetGroupIO_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetGroupIO_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetGroupIO_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_value
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Fanuc_msgsSrvGetGroupIO_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetGroupIO_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(2).to_int()
  { field_result: part0, field_value: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetNumReg_Request {
  mut field_index : Int
}
pub fn Ros2Fanuc_msgsSrvGetNumReg_Request::new() -> Ros2Fanuc_msgsSrvGetNumReg_Request {
  {
    field_index: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetNumReg_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetNumReg_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetNumReg_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetNumReg_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_727b5ff4ab9c8976280df12e80d3aee03b31288087adb94ee82161574fc8dcb5",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Fanuc_msgsSrvGetNumReg_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetNumReg_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetNumReg_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Fanuc_msgsSrvGetNumReg_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetNumReg_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetNumReg_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetNumReg_Request,
    Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetNumReg_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetNumReg_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetNumReg_Request) -> Unit {
  let part0 = value.field_index
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Fanuc_msgsSrvGetNumReg_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetNumReg_Request {
  let part0 = reader.unsigned(2).to_int()
  { field_index: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetNumReg_Response {
  mut field_result : Int
  mut field_value : Float
}
pub fn Ros2Fanuc_msgsSrvGetNumReg_Response::new() -> Ros2Fanuc_msgsSrvGetNumReg_Response {
  {
    field_result: 0,
    field_value: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetNumReg_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetNumReg_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetNumReg_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetNumReg_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_78ae7ff82b3b2cd7d512fee8335f14a0759a71425fcf3d1b150dbe5e2a0179b3",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Fanuc_msgsSrvGetNumReg_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetNumReg_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetNumReg_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Fanuc_msgsSrvGetNumReg_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetNumReg_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetNumReg_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetNumReg_Response,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetNumReg_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetNumReg_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetNumReg_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_value
  writer.float32(part1)
}
fn read_Ros2Fanuc_msgsSrvGetNumReg_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetNumReg_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.float32()
  { field_result: part0, field_value: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetPayloadComp_Request {
  mut field_payload_schedule_id : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadComp_Request::new() -> Ros2Fanuc_msgsSrvGetPayloadComp_Request {
  {
    field_payload_schedule_id: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetPayloadComp_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadComp_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetPayloadComp_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetPayloadComp_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_d48b88619f4a68ceeed02336e9ef078c27905707a21d977448fbbfbd560f398d",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Fanuc_msgsSrvGetPayloadComp_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetPayloadComp_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetPayloadComp_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Fanuc_msgsSrvGetPayloadComp_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetPayloadComp_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetPayloadComp_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetPayloadComp_Request,
    Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetPayloadComp_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetPayloadComp_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetPayloadComp_Request) -> Unit {
  let part0 = value.field_payload_schedule_id
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Fanuc_msgsSrvGetPayloadComp_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetPayloadComp_Request {
  let part0 = reader.unsigned(2).to_int()
  { field_payload_schedule_id: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetPayloadComp_Response {
  mut field_mass : Float
  mut field_cg_x : Float
  mut field_cg_y : Float
  mut field_cg_z : Float
  mut field_in_x : Float
  mut field_in_y : Float
  mut field_in_z : Float
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadComp_Response::new() -> Ros2Fanuc_msgsSrvGetPayloadComp_Response {
  {
    field_mass: (0U).reinterpret_as_float(),
    field_cg_x: (0U).reinterpret_as_float(),
    field_cg_y: (0U).reinterpret_as_float(),
    field_cg_z: (0U).reinterpret_as_float(),
    field_in_x: (0U).reinterpret_as_float(),
    field_in_y: (0U).reinterpret_as_float(),
    field_in_z: (0U).reinterpret_as_float(),
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetPayloadComp_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadComp_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetPayloadComp_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetPayloadComp_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_012b216c949f99755a36678b6be28d032f698b472ce4fa9ba975bc6d453ae4e4",
    min_wire_bytes: 32, max_wire_bytes: 32 }
}
pub fn Ros2Fanuc_msgsSrvGetPayloadComp_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetPayloadComp_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetPayloadComp_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros2Fanuc_msgsSrvGetPayloadComp_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetPayloadComp_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetPayloadComp_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetPayloadComp_Response,
    Int] {
  if input.length() < 32 || input.length() > 32 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetPayloadComp_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetPayloadComp_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetPayloadComp_Response) -> Unit {
  let part0 = value.field_mass
  writer.float32(part0)
  let part1 = value.field_cg_x
  writer.float32(part1)
  let part2 = value.field_cg_y
  writer.float32(part2)
  let part3 = value.field_cg_z
  writer.float32(part3)
  let part4 = value.field_in_x
  writer.float32(part4)
  let part5 = value.field_in_y
  writer.float32(part5)
  let part6 = value.field_in_z
  writer.float32(part6)
  let part7 = value.field_result
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvGetPayloadComp_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetPayloadComp_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.float32()
  let part7 = reader.unsigned(4).to_uint().reinterpret_as_int()
    {
      field_mass: part0,
      field_cg_x: part1,
      field_cg_y: part2,
      field_cg_z: part3,
      field_in_x: part4,
      field_in_y: part5,
      field_in_z: part6,
      field_result: part7
    }
}

pub(all) enum Ros2Fanuc_msgsSrvGetPayloadID_Request { Ros2Fanuc_msgsSrvGetPayloadID_RequestEmpty }
pub fn Ros2Fanuc_msgsSrvGetPayloadID_Request::new(
    ) -> Ros2Fanuc_msgsSrvGetPayloadID_Request { Ros2Fanuc_msgsSrvGetPayloadID_RequestEmpty }
pub(all) struct Ros2Fanuc_msgsSrvGetPayloadID_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadID_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetPayloadID_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetPayloadID_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_6c943659905c8adc7aa4b73832584994c83bfe009d18dc30a11d99b9fc0d6eef",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Fanuc_msgsSrvGetPayloadID_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetPayloadID_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetPayloadID_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Fanuc_msgsSrvGetPayloadID_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetPayloadID_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetPayloadID_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetPayloadID_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetPayloadID_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetPayloadID_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetPayloadID_Request) -> Unit {
}
fn read_Ros2Fanuc_msgsSrvGetPayloadID_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetPayloadID_Request {
  Ros2Fanuc_msgsSrvGetPayloadID_RequestEmpty
}

pub(all) struct Ros2Fanuc_msgsSrvGetPayloadID_Response {
  mut field_payload_schedule_id : Int
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadID_Response::new() -> Ros2Fanuc_msgsSrvGetPayloadID_Response {
  {
    field_payload_schedule_id: 0,
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetPayloadID_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadID_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetPayloadID_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetPayloadID_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_5551f4eab590c87fd7679d593c9c446903bdaa02aa1ed2512b146768122a950c",
    min_wire_bytes: 6, max_wire_bytes: 6 }
}
pub fn Ros2Fanuc_msgsSrvGetPayloadID_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetPayloadID_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetPayloadID_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 6, error: 0 }
  write_Ros2Fanuc_msgsSrvGetPayloadID_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetPayloadID_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetPayloadID_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetPayloadID_Response,
    Int] {
  if input.length() < 6 || input.length() > 6 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetPayloadID_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetPayloadID_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetPayloadID_Response) -> Unit {
  let part0 = value.field_payload_schedule_id
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_result
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvGetPayloadID_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetPayloadID_Response {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_payload_schedule_id: part0, field_result: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetPayloadValue_Request {
  mut field_payload_schedule_id : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadValue_Request::new() -> Ros2Fanuc_msgsSrvGetPayloadValue_Request {
  {
    field_payload_schedule_id: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetPayloadValue_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadValue_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetPayloadValue_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetPayloadValue_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_d82667bd644873ae4fa5de0289ed94791eb2a7af49c1b8f86ed7f91cf875407a",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Fanuc_msgsSrvGetPayloadValue_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetPayloadValue_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetPayloadValue_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Fanuc_msgsSrvGetPayloadValue_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetPayloadValue_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetPayloadValue_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetPayloadValue_Request,
    Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetPayloadValue_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetPayloadValue_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetPayloadValue_Request) -> Unit {
  let part0 = value.field_payload_schedule_id
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Fanuc_msgsSrvGetPayloadValue_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetPayloadValue_Request {
  let part0 = reader.unsigned(2).to_int()
  { field_payload_schedule_id: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetPayloadValue_Response {
  mut field_mass : Float
  mut field_cg_x : Float
  mut field_cg_y : Float
  mut field_cg_z : Float
  mut field_in_x : Float
  mut field_in_y : Float
  mut field_in_z : Float
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadValue_Response::new() -> Ros2Fanuc_msgsSrvGetPayloadValue_Response {
  {
    field_mass: (0U).reinterpret_as_float(),
    field_cg_x: (0U).reinterpret_as_float(),
    field_cg_y: (0U).reinterpret_as_float(),
    field_cg_z: (0U).reinterpret_as_float(),
    field_in_x: (0U).reinterpret_as_float(),
    field_in_y: (0U).reinterpret_as_float(),
    field_in_z: (0U).reinterpret_as_float(),
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetPayloadValue_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetPayloadValue_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetPayloadValue_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetPayloadValue_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_c3361ceec2ccd5b4d3ef566cbd885f8cddba75b4f1dc1712144147827689f06d",
    min_wire_bytes: 32, max_wire_bytes: 32 }
}
pub fn Ros2Fanuc_msgsSrvGetPayloadValue_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetPayloadValue_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetPayloadValue_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros2Fanuc_msgsSrvGetPayloadValue_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetPayloadValue_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetPayloadValue_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetPayloadValue_Response,
    Int] {
  if input.length() < 32 || input.length() > 32 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetPayloadValue_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetPayloadValue_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetPayloadValue_Response) -> Unit {
  let part0 = value.field_mass
  writer.float32(part0)
  let part1 = value.field_cg_x
  writer.float32(part1)
  let part2 = value.field_cg_y
  writer.float32(part2)
  let part3 = value.field_cg_z
  writer.float32(part3)
  let part4 = value.field_in_x
  writer.float32(part4)
  let part5 = value.field_in_y
  writer.float32(part5)
  let part6 = value.field_in_z
  writer.float32(part6)
  let part7 = value.field_result
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvGetPayloadValue_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetPayloadValue_Response {
  let part0 = reader.float32()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.float32()
  let part7 = reader.unsigned(4).to_uint().reinterpret_as_int()
    {
      field_mass: part0,
      field_cg_x: part1,
      field_cg_y: part2,
      field_cg_z: part3,
      field_in_x: part4,
      field_in_y: part5,
      field_in_z: part6,
      field_result: part7
    }
}

pub(all) struct Ros2Fanuc_msgsSrvGetPosReg_Request {
  mut field_index : Int
}
pub fn Ros2Fanuc_msgsSrvGetPosReg_Request::new() -> Ros2Fanuc_msgsSrvGetPosReg_Request {
  {
    field_index: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetPosReg_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetPosReg_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetPosReg_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetPosReg_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_f7f1391c5ea385bff615d95c5e38f01a809828b142112829dc436916b063505a",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Fanuc_msgsSrvGetPosReg_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetPosReg_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetPosReg_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Fanuc_msgsSrvGetPosReg_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetPosReg_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetPosReg_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetPosReg_Request,
    Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetPosReg_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetPosReg_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetPosReg_Request) -> Unit {
  let part0 = value.field_index
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Fanuc_msgsSrvGetPosReg_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetPosReg_Request {
  let part0 = reader.unsigned(2).to_int()
  { field_index: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetPosReg_Response {
  mut field_result : Int
  mut field_representation : String
  mut field_utool : Int
  mut field_uframe : Int
  mut field_front : Int
  mut field_up : Int
  mut field_left : Int
  mut field_flip : Int
  mut field_turn4 : Int
  mut field_turn5 : Int
  mut field_turn6 : Int
  mut field_x : Float
  mut field_y : Float
  mut field_z : Float
  mut field_w : Float
  mut field_p : Float
  mut field_r : Float
  mut field_ext1 : Float
  mut field_ext2 : Float
  mut field_ext3 : Float
  mut field_j1 : Float
  mut field_j2 : Float
  mut field_j3 : Float
  mut field_j4 : Float
  mut field_j5 : Float
  mut field_j6 : Float
  mut field_j7 : Float
  mut field_j8 : Float
  mut field_j9 : Float
}
pub fn Ros2Fanuc_msgsSrvGetPosReg_Response::new() -> Ros2Fanuc_msgsSrvGetPosReg_Response {
  {
    field_result: 0,
    field_representation: "",
    field_utool: 0,
    field_uframe: 0,
    field_front: 0,
    field_up: 0,
    field_left: 0,
    field_flip: 0,
    field_turn4: 0,
    field_turn5: 0,
    field_turn6: 0,
    field_x: (0U).reinterpret_as_float(),
    field_y: (0U).reinterpret_as_float(),
    field_z: (0U).reinterpret_as_float(),
    field_w: (0U).reinterpret_as_float(),
    field_p: (0U).reinterpret_as_float(),
    field_r: (0U).reinterpret_as_float(),
    field_ext1: (0U).reinterpret_as_float(),
    field_ext2: (0U).reinterpret_as_float(),
    field_ext3: (0U).reinterpret_as_float(),
    field_j1: (0U).reinterpret_as_float(),
    field_j2: (0U).reinterpret_as_float(),
    field_j3: (0U).reinterpret_as_float(),
    field_j4: (0U).reinterpret_as_float(),
    field_j5: (0U).reinterpret_as_float(),
    field_j6: (0U).reinterpret_as_float(),
    field_j7: (0U).reinterpret_as_float(),
    field_j8: (0U).reinterpret_as_float(),
    field_j9: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetPosReg_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetPosReg_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetPosReg_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetPosReg_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_e540225b0d532c460905582ad99ee175dd771e971c7e75f5dfb9325d39ed6b27",
    min_wire_bytes: 89, max_wire_bytes: 601 }
}
pub fn Ros2Fanuc_msgsSrvGetPosReg_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetPosReg_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetPosReg_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 601, error: 0 }
  write_Ros2Fanuc_msgsSrvGetPosReg_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 89 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetPosReg_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetPosReg_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetPosReg_Response,
    Int] {
  if input.length() < 89 || input.length() > 601 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetPosReg_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetPosReg_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetPosReg_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_representation
  writer.text(part1, 512)
  let part2 = value.field_utool
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part3 = value.field_uframe
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part4 = value.field_front
  if part4 < 0 || part4 > 255 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part5 = value.field_up
  if part5 < 0 || part5 > 255 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part6 = value.field_left
  if part6 < 0 || part6 > 255 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part7 = value.field_flip
  if part7 < 0 || part7 > 255 { writer.error = 22 }
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part8 = value.field_turn4
  if part8 < -128 || part8 > 127 { writer.error = 22 }
  writer.unsigned(part8.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part9 = value.field_turn5
  if part9 < -128 || part9 > 127 { writer.error = 22 }
  writer.unsigned(part9.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part10 = value.field_turn6
  if part10 < -128 || part10 > 127 { writer.error = 22 }
  writer.unsigned(part10.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part11 = value.field_x
  writer.float32(part11)
  let part12 = value.field_y
  writer.float32(part12)
  let part13 = value.field_z
  writer.float32(part13)
  let part14 = value.field_w
  writer.float32(part14)
  let part15 = value.field_p
  writer.float32(part15)
  let part16 = value.field_r
  writer.float32(part16)
  let part17 = value.field_ext1
  writer.float32(part17)
  let part18 = value.field_ext2
  writer.float32(part18)
  let part19 = value.field_ext3
  writer.float32(part19)
  let part20 = value.field_j1
  writer.float32(part20)
  let part21 = value.field_j2
  writer.float32(part21)
  let part22 = value.field_j3
  writer.float32(part22)
  let part23 = value.field_j4
  writer.float32(part23)
  let part24 = value.field_j5
  writer.float32(part24)
  let part25 = value.field_j6
  writer.float32(part25)
  let part26 = value.field_j7
  writer.float32(part26)
  let part27 = value.field_j8
  writer.float32(part27)
  let part28 = value.field_j9
  writer.float32(part28)
}
fn read_Ros2Fanuc_msgsSrvGetPosReg_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetPosReg_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.text(512)
  let part2 = reader.unsigned(1).to_int()
  let part3 = reader.unsigned(1).to_int()
  let part4 = reader.unsigned(1).to_int()
  let part5 = reader.unsigned(1).to_int()
  let part6 = reader.unsigned(1).to_int()
  let part7 = reader.unsigned(1).to_int()
  let part8 = reader.signed8()
  let part9 = reader.signed8()
  let part10 = reader.signed8()
  let part11 = reader.float32()
  let part12 = reader.float32()
  let part13 = reader.float32()
  let part14 = reader.float32()
  let part15 = reader.float32()
  let part16 = reader.float32()
  let part17 = reader.float32()
  let part18 = reader.float32()
  let part19 = reader.float32()
  let part20 = reader.float32()
  let part21 = reader.float32()
  let part22 = reader.float32()
  let part23 = reader.float32()
  let part24 = reader.float32()
  let part25 = reader.float32()
  let part26 = reader.float32()
  let part27 = reader.float32()
  let part28 = reader.float32()
    {
      field_result: part0,
      field_representation: part1,
      field_utool: part2,
      field_uframe: part3,
      field_front: part4,
      field_up: part5,
      field_left: part6,
      field_flip: part7,
      field_turn4: part8,
      field_turn5: part9,
      field_turn6: part10,
      field_x: part11,
      field_y: part12,
      field_z: part13,
      field_w: part14,
      field_p: part15,
      field_r: part16,
      field_ext1: part17,
      field_ext2: part18,
      field_ext3: part19,
      field_j1: part20,
      field_j2: part21,
      field_j3: part22,
      field_j4: part23,
      field_j5: part24,
      field_j6: part25,
      field_j7: part26,
      field_j8: part27,
      field_j9: part28
    }
}

pub(all) struct Ros2Fanuc_msgsSrvGetTCPSpeed_Request {
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvGetTCPSpeed_Request::new() -> Ros2Fanuc_msgsSrvGetTCPSpeed_Request {
  {
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetTCPSpeed_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetTCPSpeed_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetTCPSpeed_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetTCPSpeed_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_6bdfd44465b75bbd4e232f802dbd3c0bfa28e90a93f9a28b3c15fb150bce7ac7",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Fanuc_msgsSrvGetTCPSpeed_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetTCPSpeed_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetTCPSpeed_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Fanuc_msgsSrvGetTCPSpeed_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetTCPSpeed_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetTCPSpeed_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetTCPSpeed_Request,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetTCPSpeed_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetTCPSpeed_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetTCPSpeed_Request) -> Unit {
  let part0 = value.field_group
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvGetTCPSpeed_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetTCPSpeed_Request {
  let part0 = reader.unsigned(1).to_int()
  { field_group: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetTCPSpeed_Response {
  mut field_result : Int
  mut field_timetag : Int
  mut field_speed : Float
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvGetTCPSpeed_Response::new() -> Ros2Fanuc_msgsSrvGetTCPSpeed_Response {
  {
    field_result: 0,
    field_timetag: 0,
    field_speed: (0U).reinterpret_as_float(),
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetTCPSpeed_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetTCPSpeed_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetTCPSpeed_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetTCPSpeed_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_3ec07d99342f275506452f32076f9e1ea01bf32f43662311708a9b44ca951147",
    min_wire_bytes: 13, max_wire_bytes: 13 }
}
pub fn Ros2Fanuc_msgsSrvGetTCPSpeed_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetTCPSpeed_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetTCPSpeed_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 13, error: 0 }
  write_Ros2Fanuc_msgsSrvGetTCPSpeed_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 13 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetTCPSpeed_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetTCPSpeed_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetTCPSpeed_Response,
    Int] {
  if input.length() < 13 || input.length() > 13 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetTCPSpeed_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetTCPSpeed_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetTCPSpeed_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_timetag
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part2 = value.field_speed
  writer.float32(part2)
  let part3 = value.field_group
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvGetTCPSpeed_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetTCPSpeed_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part2 = reader.float32()
  let part3 = reader.unsigned(1).to_int()
  { field_result: part0, field_timetag: part1, field_speed: part2, field_group: part3 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetUFrameData_Request {
  mut field_uframe_number : Int
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvGetUFrameData_Request::new() -> Ros2Fanuc_msgsSrvGetUFrameData_Request {
  {
    field_uframe_number: 0,
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetUFrameData_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetUFrameData_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetUFrameData_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetUFrameData_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_c1ef7077fd7f61ed8ff46931c8e39c5950658cfe1d36cffac10083ab304307be",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Fanuc_msgsSrvGetUFrameData_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetUFrameData_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetUFrameData_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Fanuc_msgsSrvGetUFrameData_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetUFrameData_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetUFrameData_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetUFrameData_Request,
    Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetUFrameData_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetUFrameData_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetUFrameData_Request) -> Unit {
  let part0 = value.field_uframe_number
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.field_group
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvGetUFrameData_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetUFrameData_Request {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.unsigned(1).to_int()
  { field_uframe_number: part0, field_group: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetUFrameData_Response {
  mut field_result : Int
  mut field_uframe_number : Int
  mut field_frame : Ros2Fanuc_msgsMsgFrame
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvGetUFrameData_Response::new() -> Ros2Fanuc_msgsSrvGetUFrameData_Response {
  {
    field_result: 0,
    field_uframe_number: 0,
    field_frame: Ros2Fanuc_msgsMsgFrame::new(),
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetUFrameData_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetUFrameData_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetUFrameData_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetUFrameData_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_f956e1447bd4a15f547fdf5d6775836018d50153270fe8863c4b30d83422fd2e",
    min_wire_bytes: 30, max_wire_bytes: 30 }
}
pub fn Ros2Fanuc_msgsSrvGetUFrameData_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetUFrameData_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetUFrameData_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 30, error: 0 }
  write_Ros2Fanuc_msgsSrvGetUFrameData_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 30 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetUFrameData_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetUFrameData_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetUFrameData_Response,
    Int] {
  if input.length() < 30 || input.length() > 30 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetUFrameData_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetUFrameData_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetUFrameData_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_uframe_number
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.field_frame
  write_Ros2Fanuc_msgsMsgFrame(writer, part2)
  let part3 = value.field_group
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvGetUFrameData_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetUFrameData_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(1).to_int()
  let part2 = read_Ros2Fanuc_msgsMsgFrame(reader)
  let part3 = reader.unsigned(1).to_int()
  { field_result: part0, field_uframe_number: part1, field_frame: part2, field_group: part3 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetUFrameUTool_Request {
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvGetUFrameUTool_Request::new() -> Ros2Fanuc_msgsSrvGetUFrameUTool_Request {
  {
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetUFrameUTool_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetUFrameUTool_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetUFrameUTool_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetUFrameUTool_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_3d57da6f8003b33b2a079d4f284eb0f182d7e088074112b7f4ee25d3113bd443",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Fanuc_msgsSrvGetUFrameUTool_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetUFrameUTool_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetUFrameUTool_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Fanuc_msgsSrvGetUFrameUTool_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetUFrameUTool_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetUFrameUTool_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetUFrameUTool_Request,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetUFrameUTool_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetUFrameUTool_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetUFrameUTool_Request) -> Unit {
  let part0 = value.field_group
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvGetUFrameUTool_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetUFrameUTool_Request {
  let part0 = reader.unsigned(1).to_int()
  { field_group: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetUFrameUTool_Response {
  mut field_result : Int
  mut field_uframe_number : Int
  mut field_utool_number : Int
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvGetUFrameUTool_Response::new() -> Ros2Fanuc_msgsSrvGetUFrameUTool_Response {
  {
    field_result: 0,
    field_uframe_number: 0,
    field_utool_number: 0,
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetUFrameUTool_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetUFrameUTool_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetUFrameUTool_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetUFrameUTool_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_f9cb64b89f17b6811e4073b9f94d0fd6844d21ec4b846f78bfd13cb14a35a6b3",
    min_wire_bytes: 7, max_wire_bytes: 7 }
}
pub fn Ros2Fanuc_msgsSrvGetUFrameUTool_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetUFrameUTool_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetUFrameUTool_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 7, error: 0 }
  write_Ros2Fanuc_msgsSrvGetUFrameUTool_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 7 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetUFrameUTool_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetUFrameUTool_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetUFrameUTool_Response,
    Int] {
  if input.length() < 7 || input.length() > 7 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetUFrameUTool_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetUFrameUTool_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetUFrameUTool_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_uframe_number
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.field_utool_number
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part3 = value.field_group
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvGetUFrameUTool_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetUFrameUTool_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(1).to_int()
  let part2 = reader.unsigned(1).to_int()
  let part3 = reader.unsigned(1).to_int()
  { field_result: part0, field_uframe_number: part1, field_utool_number: part2, field_group: part3 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetUToolData_Request {
  mut field_utool_number : Int
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvGetUToolData_Request::new() -> Ros2Fanuc_msgsSrvGetUToolData_Request {
  {
    field_utool_number: 0,
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetUToolData_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetUToolData_RequestCodec::new() -> Ros2Fanuc_msgsSrvGetUToolData_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetUToolData_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_10c3799dcb1b09dbcb6d1b794a00ecfaf69a8f457d95eeb92855f79dba7be1bc",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Fanuc_msgsSrvGetUToolData_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvGetUToolData_RequestCodec,
    value : Ros2Fanuc_msgsSrvGetUToolData_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Fanuc_msgsSrvGetUToolData_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetUToolData_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvGetUToolData_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetUToolData_Request,
    Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetUToolData_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetUToolData_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetUToolData_Request) -> Unit {
  let part0 = value.field_utool_number
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.field_group
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvGetUToolData_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetUToolData_Request {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.unsigned(1).to_int()
  { field_utool_number: part0, field_group: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvGetUToolData_Response {
  mut field_result : Int
  mut field_utool_number : Int
  mut field_frame : Ros2Fanuc_msgsMsgFrame
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvGetUToolData_Response::new() -> Ros2Fanuc_msgsSrvGetUToolData_Response {
  {
    field_result: 0,
    field_utool_number: 0,
    field_frame: Ros2Fanuc_msgsMsgFrame::new(),
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvGetUToolData_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvGetUToolData_ResponseCodec::new() -> Ros2Fanuc_msgsSrvGetUToolData_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/GetUToolData_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_f3a2b94f337cec9c58156b803675f38885350cc3fc3171234c0d361afc800d81",
    min_wire_bytes: 30, max_wire_bytes: 30 }
}
pub fn Ros2Fanuc_msgsSrvGetUToolData_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvGetUToolData_ResponseCodec,
    value : Ros2Fanuc_msgsSrvGetUToolData_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 30, error: 0 }
  write_Ros2Fanuc_msgsSrvGetUToolData_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 30 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvGetUToolData_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvGetUToolData_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvGetUToolData_Response,
    Int] {
  if input.length() < 30 || input.length() > 30 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvGetUToolData_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvGetUToolData_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvGetUToolData_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_utool_number
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.field_frame
  write_Ros2Fanuc_msgsMsgFrame(writer, part2)
  let part3 = value.field_group
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvGetUToolData_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvGetUToolData_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(1).to_int()
  let part2 = read_Ros2Fanuc_msgsMsgFrame(reader)
  let part3 = reader.unsigned(1).to_int()
  { field_result: part0, field_utool_number: part1, field_frame: part2, field_group: part3 }
}

pub(all) struct Ros2Fanuc_msgsSrvReadError_Request {
  mut field_count : Int
}
pub fn Ros2Fanuc_msgsSrvReadError_Request::new() -> Ros2Fanuc_msgsSrvReadError_Request {
  {
    field_count: 1,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvReadError_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvReadError_RequestCodec::new() -> Ros2Fanuc_msgsSrvReadError_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/ReadError_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_4b67ed8e2ecccefb6bdead80249f5916e6ea192d822183292db43351839fb6f9",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Fanuc_msgsSrvReadError_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvReadError_RequestCodec,
    value : Ros2Fanuc_msgsSrvReadError_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Fanuc_msgsSrvReadError_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvReadError_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvReadError_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvReadError_Request,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvReadError_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvReadError_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvReadError_Request) -> Unit {
  let part0 = value.field_count
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvReadError_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvReadError_Request {
  let part0 = reader.unsigned(1).to_int()
  { field_count: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvReadError_Response {
  mut field_result : Int
  mut field_count : Int
  mut field_error_data : Array[String]
}
pub fn Ros2Fanuc_msgsSrvReadError_Response::new() -> Ros2Fanuc_msgsSrvReadError_Response {
  {
    field_result: 0,
    field_count: 0,
    field_error_data: Array::makei(5, fn(_) { "" }),
  }
}
pub(all) struct Ros2Fanuc_msgsSrvReadError_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvReadError_ResponseCodec::new() -> Ros2Fanuc_msgsSrvReadError_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/ReadError_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_6e28db10c7afb06cb1256f6d74a43e26c5efa6c13fec8826ae0e623a5eb954b6",
    min_wire_bytes: 25, max_wire_bytes: 2585 }
}
pub fn Ros2Fanuc_msgsSrvReadError_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvReadError_ResponseCodec,
    value : Ros2Fanuc_msgsSrvReadError_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2585, error: 0 }
  write_Ros2Fanuc_msgsSrvReadError_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvReadError_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvReadError_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvReadError_Response,
    Int] {
  if input.length() < 25 || input.length() > 2585 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvReadError_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvReadError_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvReadError_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_count
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.field_error_data
  let count2 = part2.length()
  if count2 != 5 { writer.error = 22; return () }
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.text(element, 512)
  }
}
fn read_Ros2Fanuc_msgsSrvReadError_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvReadError_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(1).to_int()
  let part2 : Array[String] = []
  let count2 = 5
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.text(512))
  }
  { field_result: part0, field_count: part1, field_error_data: part2 }
}

pub(all) enum Ros2Fanuc_msgsSrvReset_Request { Ros2Fanuc_msgsSrvReset_RequestEmpty }
pub fn Ros2Fanuc_msgsSrvReset_Request::new() -> Ros2Fanuc_msgsSrvReset_Request { Ros2Fanuc_msgsSrvReset_RequestEmpty }
pub(all) struct Ros2Fanuc_msgsSrvReset_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvReset_RequestCodec::new() -> Ros2Fanuc_msgsSrvReset_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/Reset_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_b73f661d569f6af8dad1cd6625f4c0c55ef2c14c79b3e9af0f17fdc02736abc4",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Fanuc_msgsSrvReset_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvReset_RequestCodec,
    value : Ros2Fanuc_msgsSrvReset_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Fanuc_msgsSrvReset_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvReset_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvReset_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvReset_Request,
    Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvReset_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvReset_Request(writer : BoundedWriter, value : Ros2Fanuc_msgsSrvReset_Request) -> Unit {
}
fn read_Ros2Fanuc_msgsSrvReset_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvReset_Request {
  Ros2Fanuc_msgsSrvReset_RequestEmpty
}

pub(all) struct Ros2Fanuc_msgsSrvReset_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvReset_Response::new() -> Ros2Fanuc_msgsSrvReset_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvReset_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvReset_ResponseCodec::new() -> Ros2Fanuc_msgsSrvReset_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/Reset_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_5e9b92e5a112b4934ce0893afaa09156fdb47c26b0aa6ae9a27d61920d308ab8",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvReset_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvReset_ResponseCodec,
    value : Ros2Fanuc_msgsSrvReset_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvReset_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvReset_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvReset_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvReset_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvReset_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvReset_Response(writer : BoundedWriter, value : Ros2Fanuc_msgsSrvReset_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvReset_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvReset_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetAnalogIO_Request {
  mut field_io_type : Ros2Fanuc_msgsMsgIOType
  mut field_index : Int
  mut field_value : Float
}
pub fn Ros2Fanuc_msgsSrvSetAnalogIO_Request::new() -> Ros2Fanuc_msgsSrvSetAnalogIO_Request {
  {
    field_io_type: Ros2Fanuc_msgsMsgIOType::new(),
    field_index: 0,
    field_value: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetAnalogIO_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetAnalogIO_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetAnalogIO_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetAnalogIO_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_a6bb4acfae23db79464faff849f359657537026d7c79f8a6c60259caec5e87f4",
    min_wire_bytes: 10, max_wire_bytes: 74 }
}
pub fn Ros2Fanuc_msgsSrvSetAnalogIO_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetAnalogIO_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetAnalogIO_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 74, error: 0 }
  write_Ros2Fanuc_msgsSrvSetAnalogIO_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 10 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetAnalogIO_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetAnalogIO_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetAnalogIO_Request,
    Int] {
  if input.length() < 10 || input.length() > 74 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetAnalogIO_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetAnalogIO_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetAnalogIO_Request) -> Unit {
  let part0 = value.field_io_type
  write_Ros2Fanuc_msgsMsgIOType(writer, part0)
  let part1 = value.field_index
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_value
  writer.float32(part2)
}
fn read_Ros2Fanuc_msgsSrvSetAnalogIO_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetAnalogIO_Request {
  let part0 = read_Ros2Fanuc_msgsMsgIOType(reader)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.float32()
  { field_io_type: part0, field_index: part1, field_value: part2 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetAnalogIO_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvSetAnalogIO_Response::new() -> Ros2Fanuc_msgsSrvSetAnalogIO_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetAnalogIO_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetAnalogIO_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetAnalogIO_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetAnalogIO_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_aeac383e2c4a292f1237494bff5b261cd0197542e00456b4ee0edf9b7fe8a39b",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSetAnalogIO_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetAnalogIO_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetAnalogIO_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSetAnalogIO_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetAnalogIO_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetAnalogIO_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetAnalogIO_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetAnalogIO_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetAnalogIO_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetAnalogIO_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvSetAnalogIO_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetAnalogIO_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetBoolIO_Request {
  mut field_io_type : Ros2Fanuc_msgsMsgIOType
  mut field_index : Int
  mut field_value : Bool
}
pub fn Ros2Fanuc_msgsSrvSetBoolIO_Request::new() -> Ros2Fanuc_msgsSrvSetBoolIO_Request {
  {
    field_io_type: Ros2Fanuc_msgsMsgIOType::new(),
    field_index: 0,
    field_value: false,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetBoolIO_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetBoolIO_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetBoolIO_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetBoolIO_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_0e8ace58c769670a2519e733d020a3ca902bff99982514d5cd9ecda391c1a4cf",
    min_wire_bytes: 7, max_wire_bytes: 71 }
}
pub fn Ros2Fanuc_msgsSrvSetBoolIO_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetBoolIO_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetBoolIO_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 71, error: 0 }
  write_Ros2Fanuc_msgsSrvSetBoolIO_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 7 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetBoolIO_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetBoolIO_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetBoolIO_Request,
    Int] {
  if input.length() < 7 || input.length() > 71 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetBoolIO_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetBoolIO_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetBoolIO_Request) -> Unit {
  let part0 = value.field_io_type
  write_Ros2Fanuc_msgsMsgIOType(writer, part0)
  let part1 = value.field_index
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_value
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Fanuc_msgsSrvSetBoolIO_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetBoolIO_Request {
  let part0 = read_Ros2Fanuc_msgsMsgIOType(reader)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.boolean()
  { field_io_type: part0, field_index: part1, field_value: part2 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetBoolIO_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvSetBoolIO_Response::new() -> Ros2Fanuc_msgsSrvSetBoolIO_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetBoolIO_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetBoolIO_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetBoolIO_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetBoolIO_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_c9c68ca577dd6e4d1743385d9c69c8f1c6e0780ae247877d823ab97a68e675a0",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSetBoolIO_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetBoolIO_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetBoolIO_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSetBoolIO_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetBoolIO_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetBoolIO_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetBoolIO_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetBoolIO_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetBoolIO_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetBoolIO_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvSetBoolIO_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetBoolIO_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetGenOverride_Request {
  mut field_value : Int
}
pub fn Ros2Fanuc_msgsSrvSetGenOverride_Request::new() -> Ros2Fanuc_msgsSrvSetGenOverride_Request {
  {
    field_value: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetGenOverride_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetGenOverride_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetGenOverride_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetGenOverride_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_7d321e33aaf6f58013c33ffc012c1ddbd27aefff3f21d7456030a1d590362039",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Fanuc_msgsSrvSetGenOverride_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetGenOverride_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetGenOverride_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Fanuc_msgsSrvSetGenOverride_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetGenOverride_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetGenOverride_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetGenOverride_Request,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetGenOverride_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetGenOverride_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetGenOverride_Request) -> Unit {
  let part0 = value.field_value
  if part0 < -128 || part0 > 127 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvSetGenOverride_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetGenOverride_Request {
  let part0 = reader.signed8()
  { field_value: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetGenOverride_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvSetGenOverride_Response::new() -> Ros2Fanuc_msgsSrvSetGenOverride_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetGenOverride_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetGenOverride_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetGenOverride_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetGenOverride_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_1ffcb25cad7dbf51c216753dac2c117a191fb081a5a562e63d34d447e61f0a59",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSetGenOverride_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetGenOverride_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetGenOverride_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSetGenOverride_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetGenOverride_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetGenOverride_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetGenOverride_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetGenOverride_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetGenOverride_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetGenOverride_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvSetGenOverride_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetGenOverride_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetGroupIO_Request {
  mut field_io_type : Ros2Fanuc_msgsMsgIOType
  mut field_index : Int
  mut field_value : Int
}
pub fn Ros2Fanuc_msgsSrvSetGroupIO_Request::new() -> Ros2Fanuc_msgsSrvSetGroupIO_Request {
  {
    field_io_type: Ros2Fanuc_msgsMsgIOType::new(),
    field_index: 0,
    field_value: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetGroupIO_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetGroupIO_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetGroupIO_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetGroupIO_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_42a76aec283e26e3a2c99bb27a23778e34effb6c3328754793f783038a2b84bd",
    min_wire_bytes: 8, max_wire_bytes: 72 }
}
pub fn Ros2Fanuc_msgsSrvSetGroupIO_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetGroupIO_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetGroupIO_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 72, error: 0 }
  write_Ros2Fanuc_msgsSrvSetGroupIO_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetGroupIO_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetGroupIO_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetGroupIO_Request,
    Int] {
  if input.length() < 8 || input.length() > 72 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetGroupIO_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetGroupIO_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetGroupIO_Request) -> Unit {
  let part0 = value.field_io_type
  write_Ros2Fanuc_msgsMsgIOType(writer, part0)
  let part1 = value.field_index
  if part1 < 0 || part1 > 65535 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part2 = value.field_value
  if part2 < 0 || part2 > 65535 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Fanuc_msgsSrvSetGroupIO_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetGroupIO_Request {
  let part0 = read_Ros2Fanuc_msgsMsgIOType(reader)
  let part1 = reader.unsigned(2).to_int()
  let part2 = reader.unsigned(2).to_int()
  { field_io_type: part0, field_index: part1, field_value: part2 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetGroupIO_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvSetGroupIO_Response::new() -> Ros2Fanuc_msgsSrvSetGroupIO_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetGroupIO_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetGroupIO_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetGroupIO_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetGroupIO_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_aa6d2c99e8817273f8f2ab179df61d60efd8ee2cee0e1ec76c647956e22bff17",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSetGroupIO_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetGroupIO_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetGroupIO_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSetGroupIO_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetGroupIO_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetGroupIO_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetGroupIO_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetGroupIO_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetGroupIO_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetGroupIO_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvSetGroupIO_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetGroupIO_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetNumReg_Request {
  mut field_index : Int
  mut field_value : Float
}
pub fn Ros2Fanuc_msgsSrvSetNumReg_Request::new() -> Ros2Fanuc_msgsSrvSetNumReg_Request {
  {
    field_index: 0,
    field_value: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetNumReg_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetNumReg_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetNumReg_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetNumReg_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_7e362b671b8770db33f3876308c41a930863a0805771fa05fcbb170782207e36",
    min_wire_bytes: 6, max_wire_bytes: 6 }
}
pub fn Ros2Fanuc_msgsSrvSetNumReg_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetNumReg_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetNumReg_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 6, error: 0 }
  write_Ros2Fanuc_msgsSrvSetNumReg_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetNumReg_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetNumReg_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetNumReg_Request,
    Int] {
  if input.length() < 6 || input.length() > 6 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetNumReg_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetNumReg_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetNumReg_Request) -> Unit {
  let part0 = value.field_index
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_value
  writer.float32(part1)
}
fn read_Ros2Fanuc_msgsSrvSetNumReg_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetNumReg_Request {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.float32()
  { field_index: part0, field_value: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetNumReg_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvSetNumReg_Response::new() -> Ros2Fanuc_msgsSrvSetNumReg_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetNumReg_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetNumReg_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetNumReg_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetNumReg_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_7c7850ad8bb5c861d9b436311a8cf985e2e029d362877be80c5a6cb19021e482",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSetNumReg_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetNumReg_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetNumReg_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSetNumReg_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetNumReg_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetNumReg_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetNumReg_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetNumReg_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetNumReg_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetNumReg_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvSetNumReg_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetNumReg_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetPayloadComp_Request {
  mut field_payload_schedule_id : Int
  mut field_mass : Float
  mut field_cg_x : Float
  mut field_cg_y : Float
  mut field_cg_z : Float
  mut field_in_x : Float
  mut field_in_y : Float
  mut field_in_z : Float
}
pub fn Ros2Fanuc_msgsSrvSetPayloadComp_Request::new() -> Ros2Fanuc_msgsSrvSetPayloadComp_Request {
  {
    field_payload_schedule_id: 0,
    field_mass: (0U).reinterpret_as_float(),
    field_cg_x: (0U).reinterpret_as_float(),
    field_cg_y: (0U).reinterpret_as_float(),
    field_cg_z: (0U).reinterpret_as_float(),
    field_in_x: (0U).reinterpret_as_float(),
    field_in_y: (0U).reinterpret_as_float(),
    field_in_z: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetPayloadComp_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetPayloadComp_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetPayloadComp_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetPayloadComp_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_92c495d71657249e15c172e850aa91869929a25817437567778df1b01d9037a8",
    min_wire_bytes: 30, max_wire_bytes: 30 }
}
pub fn Ros2Fanuc_msgsSrvSetPayloadComp_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetPayloadComp_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetPayloadComp_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 30, error: 0 }
  write_Ros2Fanuc_msgsSrvSetPayloadComp_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 30 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetPayloadComp_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetPayloadComp_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetPayloadComp_Request,
    Int] {
  if input.length() < 30 || input.length() > 30 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetPayloadComp_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetPayloadComp_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetPayloadComp_Request) -> Unit {
  let part0 = value.field_payload_schedule_id
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_mass
  writer.float32(part1)
  let part2 = value.field_cg_x
  writer.float32(part2)
  let part3 = value.field_cg_y
  writer.float32(part3)
  let part4 = value.field_cg_z
  writer.float32(part4)
  let part5 = value.field_in_x
  writer.float32(part5)
  let part6 = value.field_in_y
  writer.float32(part6)
  let part7 = value.field_in_z
  writer.float32(part7)
}
fn read_Ros2Fanuc_msgsSrvSetPayloadComp_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetPayloadComp_Request {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.float32()
  let part6 = reader.float32()
  let part7 = reader.float32()
    {
      field_payload_schedule_id: part0,
      field_mass: part1,
      field_cg_x: part2,
      field_cg_y: part3,
      field_cg_z: part4,
      field_in_x: part5,
      field_in_y: part6,
      field_in_z: part7
    }
}

pub(all) struct Ros2Fanuc_msgsSrvSetPayloadComp_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvSetPayloadComp_Response::new() -> Ros2Fanuc_msgsSrvSetPayloadComp_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetPayloadComp_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetPayloadComp_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetPayloadComp_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetPayloadComp_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_37a9876e2a9c514fa8c4337ff1351f778d350318bdc6d8aa5d569b4039a2f76b",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSetPayloadComp_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetPayloadComp_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetPayloadComp_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSetPayloadComp_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetPayloadComp_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetPayloadComp_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetPayloadComp_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetPayloadComp_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetPayloadComp_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetPayloadComp_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvSetPayloadComp_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetPayloadComp_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetPayloadID_Request {
  mut field_payload_schedule_id : Int
}
pub fn Ros2Fanuc_msgsSrvSetPayloadID_Request::new() -> Ros2Fanuc_msgsSrvSetPayloadID_Request {
  {
    field_payload_schedule_id: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetPayloadID_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetPayloadID_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetPayloadID_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetPayloadID_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_aa15b59db17d2afb7ef9e74676a9b744763954ae063efafb91a3ab3c9852a1c0",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Fanuc_msgsSrvSetPayloadID_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetPayloadID_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetPayloadID_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Fanuc_msgsSrvSetPayloadID_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetPayloadID_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetPayloadID_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetPayloadID_Request,
    Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetPayloadID_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetPayloadID_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetPayloadID_Request) -> Unit {
  let part0 = value.field_payload_schedule_id
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
}
fn read_Ros2Fanuc_msgsSrvSetPayloadID_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetPayloadID_Request {
  let part0 = reader.unsigned(2).to_int()
  { field_payload_schedule_id: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetPayloadID_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvSetPayloadID_Response::new() -> Ros2Fanuc_msgsSrvSetPayloadID_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetPayloadID_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetPayloadID_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetPayloadID_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetPayloadID_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_7b704b36da10dc71b4cfaad92ea02ed22e4966077dc0940b03b8b8e49c5769c7",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSetPayloadID_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetPayloadID_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetPayloadID_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSetPayloadID_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetPayloadID_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetPayloadID_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetPayloadID_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetPayloadID_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetPayloadID_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetPayloadID_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvSetPayloadID_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetPayloadID_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetPayloadValue_Request {
  mut field_payload_schedule_id : Int
  mut field_mass : Float
  mut field_cg_x : Float
  mut field_cg_y : Float
  mut field_cg_z : Float
  mut field_use_in : Bool
  mut field_in_x : Float
  mut field_in_y : Float
  mut field_in_z : Float
}
pub fn Ros2Fanuc_msgsSrvSetPayloadValue_Request::new() -> Ros2Fanuc_msgsSrvSetPayloadValue_Request {
  {
    field_payload_schedule_id: 0,
    field_mass: (0U).reinterpret_as_float(),
    field_cg_x: (0U).reinterpret_as_float(),
    field_cg_y: (0U).reinterpret_as_float(),
    field_cg_z: (0U).reinterpret_as_float(),
    field_use_in: false,
    field_in_x: (0U).reinterpret_as_float(),
    field_in_y: (0U).reinterpret_as_float(),
    field_in_z: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetPayloadValue_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetPayloadValue_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetPayloadValue_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetPayloadValue_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_5d56ce8f2f8df9c3450d6a5dc77e9e77861471805aa6b9c6f8815c2e7c324974",
    min_wire_bytes: 31, max_wire_bytes: 31 }
}
pub fn Ros2Fanuc_msgsSrvSetPayloadValue_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetPayloadValue_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetPayloadValue_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 31, error: 0 }
  write_Ros2Fanuc_msgsSrvSetPayloadValue_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 31 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetPayloadValue_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetPayloadValue_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetPayloadValue_Request,
    Int] {
  if input.length() < 31 || input.length() > 31 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetPayloadValue_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetPayloadValue_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetPayloadValue_Request) -> Unit {
  let part0 = value.field_payload_schedule_id
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_mass
  writer.float32(part1)
  let part2 = value.field_cg_x
  writer.float32(part2)
  let part3 = value.field_cg_y
  writer.float32(part3)
  let part4 = value.field_cg_z
  writer.float32(part4)
  let part5 = value.field_use_in
  writer.unsigned(if part5 { 1UL } else { 0UL }, 1)
  let part6 = value.field_in_x
  writer.float32(part6)
  let part7 = value.field_in_y
  writer.float32(part7)
  let part8 = value.field_in_z
  writer.float32(part8)
}
fn read_Ros2Fanuc_msgsSrvSetPayloadValue_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetPayloadValue_Request {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.float32()
  let part2 = reader.float32()
  let part3 = reader.float32()
  let part4 = reader.float32()
  let part5 = reader.boolean()
  let part6 = reader.float32()
  let part7 = reader.float32()
  let part8 = reader.float32()
    {
      field_payload_schedule_id: part0,
      field_mass: part1,
      field_cg_x: part2,
      field_cg_y: part3,
      field_cg_z: part4,
      field_use_in: part5,
      field_in_x: part6,
      field_in_y: part7,
      field_in_z: part8
    }
}

pub(all) struct Ros2Fanuc_msgsSrvSetPayloadValue_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvSetPayloadValue_Response::new() -> Ros2Fanuc_msgsSrvSetPayloadValue_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetPayloadValue_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetPayloadValue_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetPayloadValue_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetPayloadValue_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_09f30071b49ac57353429e8a2862ee80d3dcab9237e8192d008c12a3628cc6ab",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSetPayloadValue_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetPayloadValue_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetPayloadValue_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSetPayloadValue_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetPayloadValue_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetPayloadValue_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetPayloadValue_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetPayloadValue_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetPayloadValue_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetPayloadValue_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvSetPayloadValue_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetPayloadValue_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetPosReg_Request {
  mut field_index : Int
  mut field_representation : String
  mut field_utool : Int
  mut field_uframe : Int
  mut field_front : Int
  mut field_up : Int
  mut field_left : Int
  mut field_flip : Int
  mut field_turn4 : Int
  mut field_turn5 : Int
  mut field_turn6 : Int
  mut field_x : Float
  mut field_y : Float
  mut field_z : Float
  mut field_w : Float
  mut field_p : Float
  mut field_r : Float
  mut field_ext1 : Float
  mut field_ext2 : Float
  mut field_ext3 : Float
  mut field_j1 : Float
  mut field_j2 : Float
  mut field_j3 : Float
  mut field_j4 : Float
  mut field_j5 : Float
  mut field_j6 : Float
  mut field_j7 : Float
  mut field_j8 : Float
  mut field_j9 : Float
}
pub fn Ros2Fanuc_msgsSrvSetPosReg_Request::new() -> Ros2Fanuc_msgsSrvSetPosReg_Request {
  {
    field_index: 0,
    field_representation: "",
    field_utool: 0,
    field_uframe: 0,
    field_front: 0,
    field_up: 0,
    field_left: 0,
    field_flip: 0,
    field_turn4: 0,
    field_turn5: 0,
    field_turn6: 0,
    field_x: (0U).reinterpret_as_float(),
    field_y: (0U).reinterpret_as_float(),
    field_z: (0U).reinterpret_as_float(),
    field_w: (0U).reinterpret_as_float(),
    field_p: (0U).reinterpret_as_float(),
    field_r: (0U).reinterpret_as_float(),
    field_ext1: (0U).reinterpret_as_float(),
    field_ext2: (0U).reinterpret_as_float(),
    field_ext3: (0U).reinterpret_as_float(),
    field_j1: (0U).reinterpret_as_float(),
    field_j2: (0U).reinterpret_as_float(),
    field_j3: (0U).reinterpret_as_float(),
    field_j4: (0U).reinterpret_as_float(),
    field_j5: (0U).reinterpret_as_float(),
    field_j6: (0U).reinterpret_as_float(),
    field_j7: (0U).reinterpret_as_float(),
    field_j8: (0U).reinterpret_as_float(),
    field_j9: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetPosReg_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetPosReg_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetPosReg_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetPosReg_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_f9af742e55a044a1a363a45cbe4a0a8ce4ca62fcaf43759041cef89149d96d30",
    min_wire_bytes: 87, max_wire_bytes: 599 }
}
pub fn Ros2Fanuc_msgsSrvSetPosReg_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetPosReg_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetPosReg_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 599, error: 0 }
  write_Ros2Fanuc_msgsSrvSetPosReg_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 87 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetPosReg_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetPosReg_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetPosReg_Request,
    Int] {
  if input.length() < 87 || input.length() > 599 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetPosReg_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetPosReg_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetPosReg_Request) -> Unit {
  let part0 = value.field_index
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_representation
  writer.text(part1, 512)
  let part2 = value.field_utool
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part3 = value.field_uframe
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part4 = value.field_front
  if part4 < 0 || part4 > 255 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part5 = value.field_up
  if part5 < 0 || part5 > 255 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part6 = value.field_left
  if part6 < 0 || part6 > 255 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part7 = value.field_flip
  if part7 < 0 || part7 > 255 { writer.error = 22 }
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part8 = value.field_turn4
  if part8 < -128 || part8 > 127 { writer.error = 22 }
  writer.unsigned(part8.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part9 = value.field_turn5
  if part9 < -128 || part9 > 127 { writer.error = 22 }
  writer.unsigned(part9.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part10 = value.field_turn6
  if part10 < -128 || part10 > 127 { writer.error = 22 }
  writer.unsigned(part10.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part11 = value.field_x
  writer.float32(part11)
  let part12 = value.field_y
  writer.float32(part12)
  let part13 = value.field_z
  writer.float32(part13)
  let part14 = value.field_w
  writer.float32(part14)
  let part15 = value.field_p
  writer.float32(part15)
  let part16 = value.field_r
  writer.float32(part16)
  let part17 = value.field_ext1
  writer.float32(part17)
  let part18 = value.field_ext2
  writer.float32(part18)
  let part19 = value.field_ext3
  writer.float32(part19)
  let part20 = value.field_j1
  writer.float32(part20)
  let part21 = value.field_j2
  writer.float32(part21)
  let part22 = value.field_j3
  writer.float32(part22)
  let part23 = value.field_j4
  writer.float32(part23)
  let part24 = value.field_j5
  writer.float32(part24)
  let part25 = value.field_j6
  writer.float32(part25)
  let part26 = value.field_j7
  writer.float32(part26)
  let part27 = value.field_j8
  writer.float32(part27)
  let part28 = value.field_j9
  writer.float32(part28)
}
fn read_Ros2Fanuc_msgsSrvSetPosReg_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetPosReg_Request {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  let part2 = reader.unsigned(1).to_int()
  let part3 = reader.unsigned(1).to_int()
  let part4 = reader.unsigned(1).to_int()
  let part5 = reader.unsigned(1).to_int()
  let part6 = reader.unsigned(1).to_int()
  let part7 = reader.unsigned(1).to_int()
  let part8 = reader.signed8()
  let part9 = reader.signed8()
  let part10 = reader.signed8()
  let part11 = reader.float32()
  let part12 = reader.float32()
  let part13 = reader.float32()
  let part14 = reader.float32()
  let part15 = reader.float32()
  let part16 = reader.float32()
  let part17 = reader.float32()
  let part18 = reader.float32()
  let part19 = reader.float32()
  let part20 = reader.float32()
  let part21 = reader.float32()
  let part22 = reader.float32()
  let part23 = reader.float32()
  let part24 = reader.float32()
  let part25 = reader.float32()
  let part26 = reader.float32()
  let part27 = reader.float32()
  let part28 = reader.float32()
    {
      field_index: part0,
      field_representation: part1,
      field_utool: part2,
      field_uframe: part3,
      field_front: part4,
      field_up: part5,
      field_left: part6,
      field_flip: part7,
      field_turn4: part8,
      field_turn5: part9,
      field_turn6: part10,
      field_x: part11,
      field_y: part12,
      field_z: part13,
      field_w: part14,
      field_p: part15,
      field_r: part16,
      field_ext1: part17,
      field_ext2: part18,
      field_ext3: part19,
      field_j1: part20,
      field_j2: part21,
      field_j3: part22,
      field_j4: part23,
      field_j5: part24,
      field_j6: part25,
      field_j7: part26,
      field_j8: part27,
      field_j9: part28
    }
}

pub(all) struct Ros2Fanuc_msgsSrvSetPosReg_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvSetPosReg_Response::new() -> Ros2Fanuc_msgsSrvSetPosReg_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetPosReg_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetPosReg_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetPosReg_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetPosReg_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_fb6f889d30c921df31f55cdc760346eb0d655816e71b52d4aac7a1e56d4e9cb2",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSetPosReg_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetPosReg_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetPosReg_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSetPosReg_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetPosReg_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetPosReg_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetPosReg_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetPosReg_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetPosReg_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetPosReg_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvSetPosReg_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetPosReg_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetUFrameData_Request {
  mut field_uframe_number : Int
  mut field_frame : Ros2Fanuc_msgsMsgFrame
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvSetUFrameData_Request::new() -> Ros2Fanuc_msgsSrvSetUFrameData_Request {
  {
    field_uframe_number: 0,
    field_frame: Ros2Fanuc_msgsMsgFrame::new(),
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetUFrameData_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetUFrameData_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetUFrameData_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetUFrameData_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_a067808d8fe5ca1418e18ac492313ad9211cc8f3bf402ad0ac51a2850a2bc169",
    min_wire_bytes: 26, max_wire_bytes: 26 }
}
pub fn Ros2Fanuc_msgsSrvSetUFrameData_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetUFrameData_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetUFrameData_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 26, error: 0 }
  write_Ros2Fanuc_msgsSrvSetUFrameData_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 26 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetUFrameData_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetUFrameData_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetUFrameData_Request,
    Int] {
  if input.length() < 26 || input.length() > 26 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetUFrameData_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetUFrameData_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetUFrameData_Request) -> Unit {
  let part0 = value.field_uframe_number
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.field_frame
  write_Ros2Fanuc_msgsMsgFrame(writer, part1)
  let part2 = value.field_group
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvSetUFrameData_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetUFrameData_Request {
  let part0 = reader.unsigned(1).to_int()
  let part1 = read_Ros2Fanuc_msgsMsgFrame(reader)
  let part2 = reader.unsigned(1).to_int()
  { field_uframe_number: part0, field_frame: part1, field_group: part2 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetUFrameData_Response {
  mut field_result : Int
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvSetUFrameData_Response::new() -> Ros2Fanuc_msgsSrvSetUFrameData_Response {
  {
    field_result: 0,
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetUFrameData_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetUFrameData_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetUFrameData_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetUFrameData_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_f436e4fe5bd06b048f4f53d2df4933ac8eac5a784f31b42ccf13f5eaf1696eee",
    min_wire_bytes: 5, max_wire_bytes: 5 }
}
pub fn Ros2Fanuc_msgsSrvSetUFrameData_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetUFrameData_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetUFrameData_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5, error: 0 }
  write_Ros2Fanuc_msgsSrvSetUFrameData_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetUFrameData_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetUFrameData_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetUFrameData_Response,
    Int] {
  if input.length() < 5 || input.length() > 5 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetUFrameData_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetUFrameData_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetUFrameData_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_group
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvSetUFrameData_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetUFrameData_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(1).to_int()
  { field_result: part0, field_group: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetUFrameUTool_Request {
  mut field_uframe_number : Int
  mut field_utool_number : Int
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvSetUFrameUTool_Request::new() -> Ros2Fanuc_msgsSrvSetUFrameUTool_Request {
  {
    field_uframe_number: 0,
    field_utool_number: 0,
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetUFrameUTool_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetUFrameUTool_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetUFrameUTool_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetUFrameUTool_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_0b86b0a37e4dc23e0ff651df867f5958e7440bf4712b47779d69ca699af4c09f",
    min_wire_bytes: 3, max_wire_bytes: 3 }
}
pub fn Ros2Fanuc_msgsSrvSetUFrameUTool_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetUFrameUTool_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetUFrameUTool_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 3, error: 0 }
  write_Ros2Fanuc_msgsSrvSetUFrameUTool_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 3 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetUFrameUTool_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetUFrameUTool_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetUFrameUTool_Request,
    Int] {
  if input.length() < 3 || input.length() > 3 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetUFrameUTool_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetUFrameUTool_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetUFrameUTool_Request) -> Unit {
  let part0 = value.field_uframe_number
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.field_utool_number
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.field_group
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvSetUFrameUTool_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetUFrameUTool_Request {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.unsigned(1).to_int()
  let part2 = reader.unsigned(1).to_int()
  { field_uframe_number: part0, field_utool_number: part1, field_group: part2 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetUFrameUTool_Response {
  mut field_result : Int
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvSetUFrameUTool_Response::new() -> Ros2Fanuc_msgsSrvSetUFrameUTool_Response {
  {
    field_result: 0,
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetUFrameUTool_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetUFrameUTool_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetUFrameUTool_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetUFrameUTool_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_b77837445c9663f29f23465cc7178a183d245486f74bcff732fc2f4025b82a67",
    min_wire_bytes: 5, max_wire_bytes: 5 }
}
pub fn Ros2Fanuc_msgsSrvSetUFrameUTool_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetUFrameUTool_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetUFrameUTool_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5, error: 0 }
  write_Ros2Fanuc_msgsSrvSetUFrameUTool_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetUFrameUTool_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetUFrameUTool_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetUFrameUTool_Response,
    Int] {
  if input.length() < 5 || input.length() > 5 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetUFrameUTool_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetUFrameUTool_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetUFrameUTool_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_group
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvSetUFrameUTool_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetUFrameUTool_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(1).to_int()
  { field_result: part0, field_group: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetUToolData_Request {
  mut field_utool_number : Int
  mut field_frame : Ros2Fanuc_msgsMsgFrame
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvSetUToolData_Request::new() -> Ros2Fanuc_msgsSrvSetUToolData_Request {
  {
    field_utool_number: 0,
    field_frame: Ros2Fanuc_msgsMsgFrame::new(),
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetUToolData_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetUToolData_RequestCodec::new() -> Ros2Fanuc_msgsSrvSetUToolData_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetUToolData_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_7d5b911133645744c8def79bc16c8b7c4ee4e87a057ea33741031d6a94e620ab",
    min_wire_bytes: 26, max_wire_bytes: 26 }
}
pub fn Ros2Fanuc_msgsSrvSetUToolData_RequestCodec::encode(_self : Ros2Fanuc_msgsSrvSetUToolData_RequestCodec,
    value : Ros2Fanuc_msgsSrvSetUToolData_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 26, error: 0 }
  write_Ros2Fanuc_msgsSrvSetUToolData_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 26 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetUToolData_RequestCodec::decode(_self : Ros2Fanuc_msgsSrvSetUToolData_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetUToolData_Request,
    Int] {
  if input.length() < 26 || input.length() > 26 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetUToolData_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetUToolData_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetUToolData_Request) -> Unit {
  let part0 = value.field_utool_number
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.field_frame
  write_Ros2Fanuc_msgsMsgFrame(writer, part1)
  let part2 = value.field_group
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvSetUToolData_Request(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetUToolData_Request {
  let part0 = reader.unsigned(1).to_int()
  let part1 = read_Ros2Fanuc_msgsMsgFrame(reader)
  let part2 = reader.unsigned(1).to_int()
  { field_utool_number: part0, field_frame: part1, field_group: part2 }
}

pub(all) struct Ros2Fanuc_msgsSrvSetUToolData_Response {
  mut field_result : Int
  mut field_group : Int
}
pub fn Ros2Fanuc_msgsSrvSetUToolData_Response::new() -> Ros2Fanuc_msgsSrvSetUToolData_Response {
  {
    field_result: 0,
    field_group: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSetUToolData_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSetUToolData_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSetUToolData_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SetUToolData_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_b33d265f275dfcb5fe20432d5e38b55574c85260135bded477c2d5fa2c85c7cb",
    min_wire_bytes: 5, max_wire_bytes: 5 }
}
pub fn Ros2Fanuc_msgsSrvSetUToolData_ResponseCodec::encode(_self : Ros2Fanuc_msgsSrvSetUToolData_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSetUToolData_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5, error: 0 }
  write_Ros2Fanuc_msgsSrvSetUToolData_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSetUToolData_ResponseCodec::decode(_self : Ros2Fanuc_msgsSrvSetUToolData_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSetUToolData_Response,
    Int] {
  if input.length() < 5 || input.length() > 5 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSetUToolData_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSetUToolData_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSetUToolData_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_group
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Fanuc_msgsSrvSetUToolData_Response(reader : BoundedReader) -> Ros2Fanuc_msgsSrvSetUToolData_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(1).to_int()
  { field_result: part0, field_group: part1 }
}

pub(all) struct Ros2Fanuc_msgsSrvSwitchControlState_Request {
  mut field_status : UInt
}
pub fn Ros2Fanuc_msgsSrvSwitchControlState_Request::new() -> Ros2Fanuc_msgsSrvSwitchControlState_Request {
  {
    field_status: 0U,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec::new() -> Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SwitchControlState_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_b485b7071fe2737c7dc8f0360a15b7be30f997430142d8260454fd423172cc21",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec::encode(
    _self : Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec,
    value : Ros2Fanuc_msgsSrvSwitchControlState_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSwitchControlState_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec::decode(
    _self : Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSwitchControlState_Request,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSwitchControlState_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSwitchControlState_Request(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSwitchControlState_Request) -> Unit {
  let part0 = value.field_status
  writer.unsigned(part0.to_uint64(), 4)
}
fn read_Ros2Fanuc_msgsSrvSwitchControlState_Request(
    reader : BoundedReader) -> Ros2Fanuc_msgsSrvSwitchControlState_Request {
  let part0 = reader.unsigned(4).to_uint()
  { field_status: part0 }
}

pub(all) struct Ros2Fanuc_msgsSrvSwitchControlState_Response {
  mut field_result : Int
}
pub fn Ros2Fanuc_msgsSrvSwitchControlState_Response::new() -> Ros2Fanuc_msgsSrvSwitchControlState_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Fanuc_msgsSrvSwitchControlState_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Fanuc_msgsSrvSwitchControlState_ResponseCodec::new() -> Ros2Fanuc_msgsSrvSwitchControlState_ResponseCodec {
  { ros_version: 2, native_type: "fanuc_msgs/srv/SwitchControlState_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_8a3d7a3c1037174f4118843e34222ef8811eff3cc885a0c688d98071e1a9496c",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Fanuc_msgsSrvSwitchControlState_ResponseCodec::encode(
    _self : Ros2Fanuc_msgsSrvSwitchControlState_ResponseCodec,
    value : Ros2Fanuc_msgsSrvSwitchControlState_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Fanuc_msgsSrvSwitchControlState_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Fanuc_msgsSrvSwitchControlState_ResponseCodec::decode(
    _self : Ros2Fanuc_msgsSrvSwitchControlState_ResponseCodec,
    input : Bytes) -> Result[Ros2Fanuc_msgsSrvSwitchControlState_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Fanuc_msgsSrvSwitchControlState_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Fanuc_msgsSrvSwitchControlState_Response(writer : BoundedWriter,
    value : Ros2Fanuc_msgsSrvSwitchControlState_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Fanuc_msgsSrvSwitchControlState_Response(
    reader : BoundedReader) -> Ros2Fanuc_msgsSrvSwitchControlState_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
}

pub(all) struct Ros2Rmi_msgsMsgCallParam {
  mut field_type : String
  mut field_int_value : Int
  mut field_float_value : Float
  mut field_string_value : String
}
pub fn Ros2Rmi_msgsMsgCallParam::new() -> Ros2Rmi_msgsMsgCallParam {
  {
    field_type: "",
    field_int_value: 0,
    field_float_value: (0U).reinterpret_as_float(),
    field_string_value: "",
  }
}
pub(all) struct Ros2Rmi_msgsMsgCallParamCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsMsgCallParamCodec::new() -> Ros2Rmi_msgsMsgCallParamCodec {
  { ros_version: 2, native_type: "rmi_msgs/msg/CallParam",
    native_identity: None,
    codec_identity: "UWVMROS1_ed625d80db6c4314b8373f2d205344d6ab8d71be46182dab5a497d36564a2255",
    min_wire_bytes: 16, max_wire_bytes: 592 }
}
pub fn Ros2Rmi_msgsMsgCallParamCodec::encode(_self : Ros2Rmi_msgsMsgCallParamCodec,
    value : Ros2Rmi_msgsMsgCallParam) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 592, error: 0 }
  write_Ros2Rmi_msgsMsgCallParam(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsMsgCallParamCodec::decode(_self : Ros2Rmi_msgsMsgCallParamCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsMsgCallParam,
    Int] {
  if input.length() < 16 || input.length() > 592 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsMsgCallParam(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsMsgCallParam(writer : BoundedWriter, value : Ros2Rmi_msgsMsgCallParam) -> Unit {
  let part0 = value.field_type
  writer.text(part0, 64)
  let part1 = value.field_int_value
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part2 = value.field_float_value
  writer.float32(part2)
  let part3 = value.field_string_value
  writer.text(part3, 512)
}
fn read_Ros2Rmi_msgsMsgCallParam(reader : BoundedReader) -> Ros2Rmi_msgsMsgCallParam {
  let part0 = reader.text(64)
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part2 = reader.float32()
  let part3 = reader.text(512)
  { field_type: part0, field_int_value: part1, field_float_value: part2, field_string_value: part3 }
}

pub(all) struct Ros2Rmi_msgsMsgCartesian {
  mut field_utool : Int
  mut field_uframe : Int
  mut field_front : Int
  mut field_up : Int
  mut field_left : Int
  mut field_flip : Int
  mut field_turn4 : Int
  mut field_turn5 : Int
  mut field_turn6 : Int
  mut field_x : Float
  mut field_y : Float
  mut field_z : Float
  mut field_w : Float
  mut field_p : Float
  mut field_r : Float
  mut field_ext1 : Float
  mut field_ext2 : Float
  mut field_ext3 : Float
}
pub fn Ros2Rmi_msgsMsgCartesian::new() -> Ros2Rmi_msgsMsgCartesian {
  {
    field_utool: 1,
    field_uframe: 0,
    field_front: 1,
    field_up: 1,
    field_left: 0,
    field_flip: 0,
    field_turn4: 0,
    field_turn5: 0,
    field_turn6: 0,
    field_x: (0U).reinterpret_as_float(),
    field_y: (0U).reinterpret_as_float(),
    field_z: (0U).reinterpret_as_float(),
    field_w: (0U).reinterpret_as_float(),
    field_p: (0U).reinterpret_as_float(),
    field_r: (0U).reinterpret_as_float(),
    field_ext1: (0U).reinterpret_as_float(),
    field_ext2: (0U).reinterpret_as_float(),
    field_ext3: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Rmi_msgsMsgCartesianCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsMsgCartesianCodec::new() -> Ros2Rmi_msgsMsgCartesianCodec {
  { ros_version: 2, native_type: "rmi_msgs/msg/Cartesian",
    native_identity: None,
    codec_identity: "UWVMROS1_2a0e1fff119007499a63d55c9722f666be1436a9212d9e43b556af347e8e4b40",
    min_wire_bytes: 45, max_wire_bytes: 45 }
}
pub fn Ros2Rmi_msgsMsgCartesianCodec::encode(_self : Ros2Rmi_msgsMsgCartesianCodec,
    value : Ros2Rmi_msgsMsgCartesian) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 45, error: 0 }
  write_Ros2Rmi_msgsMsgCartesian(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 45 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsMsgCartesianCodec::decode(_self : Ros2Rmi_msgsMsgCartesianCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsMsgCartesian,
    Int] {
  if input.length() < 45 || input.length() > 45 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsMsgCartesian(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsMsgCartesian(writer : BoundedWriter, value : Ros2Rmi_msgsMsgCartesian) -> Unit {
  let part0 = value.field_utool
  if part0 < -128 || part0 > 127 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.field_uframe
  if part1 < -128 || part1 > 127 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.field_front
  if part2 < 0 || part2 > 255 { writer.error = 22 }
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part3 = value.field_up
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part4 = value.field_left
  if part4 < 0 || part4 > 255 { writer.error = 22 }
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part5 = value.field_flip
  if part5 < 0 || part5 > 255 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part6 = value.field_turn4
  if part6 < -128 || part6 > 127 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part7 = value.field_turn5
  if part7 < -128 || part7 > 127 { writer.error = 22 }
  writer.unsigned(part7.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part8 = value.field_turn6
  if part8 < -128 || part8 > 127 { writer.error = 22 }
  writer.unsigned(part8.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part9 = value.field_x
  writer.float32(part9)
  let part10 = value.field_y
  writer.float32(part10)
  let part11 = value.field_z
  writer.float32(part11)
  let part12 = value.field_w
  writer.float32(part12)
  let part13 = value.field_p
  writer.float32(part13)
  let part14 = value.field_r
  writer.float32(part14)
  let part15 = value.field_ext1
  writer.float32(part15)
  let part16 = value.field_ext2
  writer.float32(part16)
  let part17 = value.field_ext3
  writer.float32(part17)
}
fn read_Ros2Rmi_msgsMsgCartesian(reader : BoundedReader) -> Ros2Rmi_msgsMsgCartesian {
  let part0 = reader.signed8()
  let part1 = reader.signed8()
  let part2 = reader.unsigned(1).to_int()
  let part3 = reader.unsigned(1).to_int()
  let part4 = reader.unsigned(1).to_int()
  let part5 = reader.unsigned(1).to_int()
  let part6 = reader.signed8()
  let part7 = reader.signed8()
  let part8 = reader.signed8()
  let part9 = reader.float32()
  let part10 = reader.float32()
  let part11 = reader.float32()
  let part12 = reader.float32()
  let part13 = reader.float32()
  let part14 = reader.float32()
  let part15 = reader.float32()
  let part16 = reader.float32()
  let part17 = reader.float32()
    {
      field_utool: part0,
      field_uframe: part1,
      field_front: part2,
      field_up: part3,
      field_left: part4,
      field_flip: part5,
      field_turn4: part6,
      field_turn5: part7,
      field_turn6: part8,
      field_x: part9,
      field_y: part10,
      field_z: part11,
      field_w: part12,
      field_p: part13,
      field_r: part14,
      field_ext1: part15,
      field_ext2: part16,
      field_ext3: part17
    }
}

pub(all) struct Ros2Rmi_msgsMsgCommand {
  mut field_type : String
}
pub fn Ros2Rmi_msgsMsgCommand::new() -> Ros2Rmi_msgsMsgCommand {
  {
    field_type: "",
  }
}
pub(all) struct Ros2Rmi_msgsMsgCommandCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsMsgCommandCodec::new() -> Ros2Rmi_msgsMsgCommandCodec {
  { ros_version: 2, native_type: "rmi_msgs/msg/Command",
    native_identity: None,
    codec_identity: "UWVMROS1_d2741856b8cdf57aa716566edfc705957611557b7da5b6099b173903bdd9960c",
    min_wire_bytes: 4, max_wire_bytes: 68 }
}
pub fn Ros2Rmi_msgsMsgCommandCodec::encode(_self : Ros2Rmi_msgsMsgCommandCodec,
    value : Ros2Rmi_msgsMsgCommand) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 68, error: 0 }
  write_Ros2Rmi_msgsMsgCommand(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsMsgCommandCodec::decode(_self : Ros2Rmi_msgsMsgCommandCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsMsgCommand,
    Int] {
  if input.length() < 4 || input.length() > 68 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsMsgCommand(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsMsgCommand(writer : BoundedWriter, value : Ros2Rmi_msgsMsgCommand) -> Unit {
  let part0 = value.field_type
  writer.text(part0, 64)
}
fn read_Ros2Rmi_msgsMsgCommand(reader : BoundedReader) -> Ros2Rmi_msgsMsgCommand {
  let part0 = reader.text(64)
  { field_type: part0 }
}

pub(all) struct Ros2Rmi_msgsMsgCommandOptions {
  mut field_use_group_mask : Bool
  mut field_group_mask : Int
  mut field_use_rtsa : Bool
  mut field_rtsa : String
  mut field_use_pltzmode : Bool
  mut field_pltzmode : String
}
pub fn Ros2Rmi_msgsMsgCommandOptions::new() -> Ros2Rmi_msgsMsgCommandOptions {
  {
    field_use_group_mask: false,
    field_group_mask: 1,
    field_use_rtsa: false,
    field_rtsa: "ON",
    field_use_pltzmode: false,
    field_pltzmode: "ZERODN",
  }
}
pub(all) struct Ros2Rmi_msgsMsgCommandOptionsCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::new() -> Ros2Rmi_msgsMsgCommandOptionsCodec {
  { ros_version: 2, native_type: "rmi_msgs/msg/CommandOptions",
    native_identity: None,
    codec_identity: "UWVMROS1_0be0c508035725bf9686807cb8b5267e23f709b7aa34b0910a44ff3604670147",
    min_wire_bytes: 12, max_wire_bytes: 1036 }
}
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::encode(_self : Ros2Rmi_msgsMsgCommandOptionsCodec,
    value : Ros2Rmi_msgsMsgCommandOptions) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1036, error: 0 }
  write_Ros2Rmi_msgsMsgCommandOptions(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::decode(_self : Ros2Rmi_msgsMsgCommandOptionsCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsMsgCommandOptions,
    Int] {
  if input.length() < 12 || input.length() > 1036 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsMsgCommandOptions(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsMsgCommandOptions(writer : BoundedWriter, value : Ros2Rmi_msgsMsgCommandOptions) -> Unit {
  let part0 = value.field_use_group_mask
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.field_group_mask
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.field_use_rtsa
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.field_rtsa
  writer.text(part3, 512)
  let part4 = value.field_use_pltzmode
  writer.unsigned(if part4 { 1UL } else { 0UL }, 1)
  let part5 = value.field_pltzmode
  writer.text(part5, 512)
}
fn read_Ros2Rmi_msgsMsgCommandOptions(reader : BoundedReader) -> Ros2Rmi_msgsMsgCommandOptions {
  let part0 = reader.boolean()
  let part1 = reader.unsigned(1).to_int()
  let part2 = reader.boolean()
  let part3 = reader.text(512)
  let part4 = reader.boolean()
  let part5 = reader.text(512)
    {
      field_use_group_mask: part0,
      field_group_mask: part1,
      field_use_rtsa: part2,
      field_rtsa: part3,
      field_use_pltzmode: part4,
      field_pltzmode: part5
    }
}

pub(all) struct Ros2Rmi_msgsMsgJoint {
  mut field_positions : Array[Float]
}
pub fn Ros2Rmi_msgsMsgJoint::new() -> Ros2Rmi_msgsMsgJoint {
  {
    field_positions: Array::makei(9, fn(_) { (0U).reinterpret_as_float() }),
  }
}
pub(all) struct Ros2Rmi_msgsMsgJointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsMsgJointCodec::new() -> Ros2Rmi_msgsMsgJointCodec {
  { ros_version: 2, native_type: "rmi_msgs/msg/Joint",
    native_identity: None,
    codec_identity: "UWVMROS1_0ba90adf6cc287bc306fd2a77c52c2e4d62731cfac37bb2cc116ee846249a42d",
    min_wire_bytes: 36, max_wire_bytes: 36 }
}
pub fn Ros2Rmi_msgsMsgJointCodec::encode(_self : Ros2Rmi_msgsMsgJointCodec,
    value : Ros2Rmi_msgsMsgJoint) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 36, error: 0 }
  write_Ros2Rmi_msgsMsgJoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 36 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsMsgJointCodec::decode(_self : Ros2Rmi_msgsMsgJointCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsMsgJoint,
    Int] {
  if input.length() < 36 || input.length() > 36 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsMsgJoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsMsgJoint(writer : BoundedWriter, value : Ros2Rmi_msgsMsgJoint) -> Unit {
  let part0 = value.field_positions
  let count0 = part0.length()
  if count0 != 9 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float32(element)
  }
}
fn read_Ros2Rmi_msgsMsgJoint(reader : BoundedReader) -> Ros2Rmi_msgsMsgJoint {
  let part0 : Array[Float] = []
  let count0 = 9
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float32())
  }
  { field_positions: part0 }
}

pub(all) struct Ros2Rmi_msgsMsgMotionInstructionOptions {
  mut field_use_acc : Bool
  mut field_acc : Int
  mut field_use_offset_pr_number : Bool
  mut field_offset_pr_number : Int
  mut field_use_vision_pr_number : Bool
  mut field_vision_pr_number : Int
  mut field_use_wrist_joint : Bool
  mut field_wrist_joint : String
  mut field_use_mrot : Bool
  mut field_mrot : String
  mut field_use_lcb_type : Bool
  mut field_lcb_type : String
  mut field_use_lcb_value : Bool
  mut field_lcb_value : Int
  mut field_use_port_type : Bool
  mut field_port_type : Int
  mut field_use_port_number : Bool
  mut field_port_number : Int
  mut field_use_port_value : Bool
  mut field_port_value : String
  mut field_use_tool_offset_pr_number : Bool
  mut field_tool_offset_pr_number : Int
  mut field_use_alim : Bool
  mut field_alim : Int
  mut field_use_alim_reg : Bool
  mut field_alim_reg : Int
  mut field_use_no_blend : Bool
  mut field_no_blend : String
}
pub fn Ros2Rmi_msgsMsgMotionInstructionOptions::new() -> Ros2Rmi_msgsMsgMotionInstructionOptions {
  {
    field_use_acc: false,
    field_acc: 0,
    field_use_offset_pr_number: false,
    field_offset_pr_number: 0,
    field_use_vision_pr_number: false,
    field_vision_pr_number: 0,
    field_use_wrist_joint: false,
    field_wrist_joint: "ON",
    field_use_mrot: false,
    field_mrot: "ON",
    field_use_lcb_type: false,
    field_lcb_type: "",
    field_use_lcb_value: false,
    field_lcb_value: 0,
    field_use_port_type: false,
    field_port_type: 0,
    field_use_port_number: false,
    field_port_number: 0,
    field_use_port_value: false,
    field_port_value: "",
    field_use_tool_offset_pr_number: false,
    field_tool_offset_pr_number: 0,
    field_use_alim: false,
    field_alim: 0,
    field_use_alim_reg: false,
    field_alim_reg: 0,
    field_use_no_blend: false,
    field_no_blend: "ON",
  }
}
pub(all) struct Ros2Rmi_msgsMsgMotionInstructionOptionsCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsMsgMotionInstructionOptionsCodec::new() -> Ros2Rmi_msgsMsgMotionInstructionOptionsCodec {
  { ros_version: 2, native_type: "rmi_msgs/msg/MotionInstructionOptions",
    native_identity: None,
    codec_identity: "UWVMROS1_f8d9ed2e083c577b0cae8965df71aa99643d12ce5a5a6ce558894edfb756bcc6",
    min_wire_bytes: 52, max_wire_bytes: 2612 }
}
pub fn Ros2Rmi_msgsMsgMotionInstructionOptionsCodec::encode(_self : Ros2Rmi_msgsMsgMotionInstructionOptionsCodec,
    value : Ros2Rmi_msgsMsgMotionInstructionOptions) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2612, error: 0 }
  write_Ros2Rmi_msgsMsgMotionInstructionOptions(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 52 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsMsgMotionInstructionOptionsCodec::decode(_self : Ros2Rmi_msgsMsgMotionInstructionOptionsCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsMsgMotionInstructionOptions,
    Int] {
  if input.length() < 52 || input.length() > 2612 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsMsgMotionInstructionOptions(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsMsgMotionInstructionOptions(writer : BoundedWriter,
    value : Ros2Rmi_msgsMsgMotionInstructionOptions) -> Unit {
  let part0 = value.field_use_acc
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.field_acc
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.field_use_offset_pr_number
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.field_offset_pr_number
  if part3 < 0 || part3 > 65535 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part4 = value.field_use_vision_pr_number
  writer.unsigned(if part4 { 1UL } else { 0UL }, 1)
  let part5 = value.field_vision_pr_number
  if part5 < 0 || part5 > 65535 { writer.error = 22 }
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part6 = value.field_use_wrist_joint
  writer.unsigned(if part6 { 1UL } else { 0UL }, 1)
  let part7 = value.field_wrist_joint
  writer.text(part7, 512)
  let part8 = value.field_use_mrot
  writer.unsigned(if part8 { 1UL } else { 0UL }, 1)
  let part9 = value.field_mrot
  writer.text(part9, 512)
  let part10 = value.field_use_lcb_type
  writer.unsigned(if part10 { 1UL } else { 0UL }, 1)
  let part11 = value.field_lcb_type
  writer.text(part11, 512)
  let part12 = value.field_use_lcb_value
  writer.unsigned(if part12 { 1UL } else { 0UL }, 1)
  let part13 = value.field_lcb_value
  if part13 < 0 || part13 > 65535 { writer.error = 22 }
  writer.unsigned(part13.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part14 = value.field_use_port_type
  writer.unsigned(if part14 { 1UL } else { 0UL }, 1)
  let part15 = value.field_port_type
  if part15 < 0 || part15 > 255 { writer.error = 22 }
  writer.unsigned(part15.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part16 = value.field_use_port_number
  writer.unsigned(if part16 { 1UL } else { 0UL }, 1)
  let part17 = value.field_port_number
  if part17 < 0 || part17 > 65535 { writer.error = 22 }
  writer.unsigned(part17.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part18 = value.field_use_port_value
  writer.unsigned(if part18 { 1UL } else { 0UL }, 1)
  let part19 = value.field_port_value
  writer.text(part19, 512)
  let part20 = value.field_use_tool_offset_pr_number
  writer.unsigned(if part20 { 1UL } else { 0UL }, 1)
  let part21 = value.field_tool_offset_pr_number
  if part21 < 0 || part21 > 65535 { writer.error = 22 }
  writer.unsigned(part21.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part22 = value.field_use_alim
  writer.unsigned(if part22 { 1UL } else { 0UL }, 1)
  let part23 = value.field_alim
  writer.unsigned(part23.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part24 = value.field_use_alim_reg
  writer.unsigned(if part24 { 1UL } else { 0UL }, 1)
  let part25 = value.field_alim_reg
  if part25 < 0 || part25 > 65535 { writer.error = 22 }
  writer.unsigned(part25.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part26 = value.field_use_no_blend
  writer.unsigned(if part26 { 1UL } else { 0UL }, 1)
  let part27 = value.field_no_blend
  writer.text(part27, 512)
}
fn read_Ros2Rmi_msgsMsgMotionInstructionOptions(reader : BoundedReader) -> Ros2Rmi_msgsMsgMotionInstructionOptions {
  let part0 = reader.boolean()
  let part1 = reader.unsigned(1).to_int()
  let part2 = reader.boolean()
  let part3 = reader.unsigned(2).to_int()
  let part4 = reader.boolean()
  let part5 = reader.unsigned(2).to_int()
  let part6 = reader.boolean()
  let part7 = reader.text(512)
  let part8 = reader.boolean()
  let part9 = reader.text(512)
  let part10 = reader.boolean()
  let part11 = reader.text(512)
  let part12 = reader.boolean()
  let part13 = reader.unsigned(2).to_int()
  let part14 = reader.boolean()
  let part15 = reader.unsigned(1).to_int()
  let part16 = reader.boolean()
  let part17 = reader.unsigned(2).to_int()
  let part18 = reader.boolean()
  let part19 = reader.text(512)
  let part20 = reader.boolean()
  let part21 = reader.unsigned(2).to_int()
  let part22 = reader.boolean()
  let part23 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part24 = reader.boolean()
  let part25 = reader.unsigned(2).to_int()
  let part26 = reader.boolean()
  let part27 = reader.text(512)
    {
      field_use_acc: part0,
      field_acc: part1,
      field_use_offset_pr_number: part2,
      field_offset_pr_number: part3,
      field_use_vision_pr_number: part4,
      field_vision_pr_number: part5,
      field_use_wrist_joint: part6,
      field_wrist_joint: part7,
      field_use_mrot: part8,
      field_mrot: part9,
      field_use_lcb_type: part10,
      field_lcb_type: part11,
      field_use_lcb_value: part12,
      field_lcb_value: part13,
      field_use_port_type: part14,
      field_port_type: part15,
      field_use_port_number: part16,
      field_port_number: part17,
      field_use_port_value: part18,
      field_port_value: part19,
      field_use_tool_offset_pr_number: part20,
      field_tool_offset_pr_number: part21,
      field_use_alim: part22,
      field_alim: part23,
      field_use_alim_reg: part24,
      field_alim_reg: part25,
      field_use_no_blend: part26,
      field_no_blend: part27
    }
}

pub(all) struct Ros2Rmi_msgsMsgMotionType {
  mut field_type : String
}
pub fn Ros2Rmi_msgsMsgMotionType::new() -> Ros2Rmi_msgsMsgMotionType {
  {
    field_type: "J",
  }
}
pub(all) struct Ros2Rmi_msgsMsgMotionTypeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::new() -> Ros2Rmi_msgsMsgMotionTypeCodec {
  { ros_version: 2, native_type: "rmi_msgs/msg/MotionType",
    native_identity: None,
    codec_identity: "UWVMROS1_c51cc7a32f6853d13bedaf3306dd79e445de6c0d16ae0ec39034ce0ae6d19c8a",
    min_wire_bytes: 4, max_wire_bytes: 68 }
}
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::encode(_self : Ros2Rmi_msgsMsgMotionTypeCodec,
    value : Ros2Rmi_msgsMsgMotionType) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 68, error: 0 }
  write_Ros2Rmi_msgsMsgMotionType(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::decode(_self : Ros2Rmi_msgsMsgMotionTypeCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsMsgMotionType,
    Int] {
  if input.length() < 4 || input.length() > 68 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsMsgMotionType(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsMsgMotionType(writer : BoundedWriter, value : Ros2Rmi_msgsMsgMotionType) -> Unit {
  let part0 = value.field_type
  writer.text(part0, 64)
}
fn read_Ros2Rmi_msgsMsgMotionType(reader : BoundedReader) -> Ros2Rmi_msgsMsgMotionType {
  let part0 = reader.text(64)
  { field_type: part0 }
}

pub(all) struct Ros2Rmi_msgsMsgRepresentation {
  mut field_representation : String
}
pub fn Ros2Rmi_msgsMsgRepresentation::new() -> Ros2Rmi_msgsMsgRepresentation {
  {
    field_representation: "JOINT",
  }
}
pub(all) struct Ros2Rmi_msgsMsgRepresentationCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsMsgRepresentationCodec::new() -> Ros2Rmi_msgsMsgRepresentationCodec {
  { ros_version: 2, native_type: "rmi_msgs/msg/Representation",
    native_identity: None,
    codec_identity: "UWVMROS1_b439506f2dc2135bb484b3abb308dfdf5c07367af5a4d6d0f5435ad9bba8ea6f",
    min_wire_bytes: 4, max_wire_bytes: 516 }
}
pub fn Ros2Rmi_msgsMsgRepresentationCodec::encode(_self : Ros2Rmi_msgsMsgRepresentationCodec,
    value : Ros2Rmi_msgsMsgRepresentation) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 516, error: 0 }
  write_Ros2Rmi_msgsMsgRepresentation(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsMsgRepresentationCodec::decode(_self : Ros2Rmi_msgsMsgRepresentationCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsMsgRepresentation,
    Int] {
  if input.length() < 4 || input.length() > 516 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsMsgRepresentation(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsMsgRepresentation(writer : BoundedWriter, value : Ros2Rmi_msgsMsgRepresentation) -> Unit {
  let part0 = value.field_representation
  writer.text(part0, 512)
}
fn read_Ros2Rmi_msgsMsgRepresentation(reader : BoundedReader) -> Ros2Rmi_msgsMsgRepresentation {
  let part0 = reader.text(512)
  { field_representation: part0 }
}

pub(all) struct Ros2Rmi_msgsMsgSpeedType {
  mut field_type : String
}
pub fn Ros2Rmi_msgsMsgSpeedType::new() -> Ros2Rmi_msgsMsgSpeedType {
  {
    field_type: "Percent",
  }
}
pub(all) struct Ros2Rmi_msgsMsgSpeedTypeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::new() -> Ros2Rmi_msgsMsgSpeedTypeCodec {
  { ros_version: 2, native_type: "rmi_msgs/msg/SpeedType",
    native_identity: None,
    codec_identity: "UWVMROS1_e4f4dbda84d8d8cd4d026b0beb52005663c7c4ee602c8d1e4d5853589777c282",
    min_wire_bytes: 4, max_wire_bytes: 68 }
}
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::encode(_self : Ros2Rmi_msgsMsgSpeedTypeCodec,
    value : Ros2Rmi_msgsMsgSpeedType) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 68, error: 0 }
  write_Ros2Rmi_msgsMsgSpeedType(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::decode(_self : Ros2Rmi_msgsMsgSpeedTypeCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsMsgSpeedType,
    Int] {
  if input.length() < 4 || input.length() > 68 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsMsgSpeedType(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsMsgSpeedType(writer : BoundedWriter, value : Ros2Rmi_msgsMsgSpeedType) -> Unit {
  let part0 = value.field_type
  writer.text(part0, 64)
}
fn read_Ros2Rmi_msgsMsgSpeedType(reader : BoundedReader) -> Ros2Rmi_msgsMsgSpeedType {
  let part0 = reader.text(64)
  { field_type: part0 }
}

pub(all) struct Ros2Rmi_msgsMsgTermType {
  mut field_type : String
}
pub fn Ros2Rmi_msgsMsgTermType::new() -> Ros2Rmi_msgsMsgTermType {
  {
    field_type: "FINE",
  }
}
pub(all) struct Ros2Rmi_msgsMsgTermTypeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsMsgTermTypeCodec::new() -> Ros2Rmi_msgsMsgTermTypeCodec {
  { ros_version: 2, native_type: "rmi_msgs/msg/TermType",
    native_identity: None,
    codec_identity: "UWVMROS1_5ddbb483126e0ab5799ed865480da457179d83a271581c1471aec940bedc4535",
    min_wire_bytes: 4, max_wire_bytes: 68 }
}
pub fn Ros2Rmi_msgsMsgTermTypeCodec::encode(_self : Ros2Rmi_msgsMsgTermTypeCodec,
    value : Ros2Rmi_msgsMsgTermType) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 68, error: 0 }
  write_Ros2Rmi_msgsMsgTermType(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsMsgTermTypeCodec::decode(_self : Ros2Rmi_msgsMsgTermTypeCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsMsgTermType,
    Int] {
  if input.length() < 4 || input.length() > 68 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsMsgTermType(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsMsgTermType(writer : BoundedWriter, value : Ros2Rmi_msgsMsgTermType) -> Unit {
  let part0 = value.field_type
  writer.text(part0, 64)
}
fn read_Ros2Rmi_msgsMsgTermType(reader : BoundedReader) -> Ros2Rmi_msgsMsgTermType {
  let part0 = reader.text(64)
  { field_type: part0 }
}

pub(all) struct Ros2Rmi_msgsSrvAddCall_Request {
  mut field_program_name : String
  mut field_params : Array[Ros2Rmi_msgsMsgCallParam]
}
pub fn Ros2Rmi_msgsSrvAddCall_Request::new() -> Ros2Rmi_msgsSrvAddCall_Request {
  {
    field_program_name: "",
    field_params: [],
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddCall_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddCall_RequestCodec::new() -> Ros2Rmi_msgsSrvAddCall_RequestCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddCall_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_4d652cfbaef29487a0a688932ee926d7a4026c5e7ac8a0eace583b503c37bcd8",
    min_wire_bytes: 8, max_wire_bytes: 9992 }
}
pub fn Ros2Rmi_msgsSrvAddCall_RequestCodec::encode(_self : Ros2Rmi_msgsSrvAddCall_RequestCodec,
    value : Ros2Rmi_msgsSrvAddCall_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9992, error: 0 }
  write_Ros2Rmi_msgsSrvAddCall_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddCall_RequestCodec::decode(_self : Ros2Rmi_msgsSrvAddCall_RequestCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddCall_Request,
    Int] {
  if input.length() < 8 || input.length() > 9992 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddCall_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddCall_Request(writer : BoundedWriter, value : Ros2Rmi_msgsSrvAddCall_Request) -> Unit {
  let part0 = value.field_program_name
  writer.text(part0, 512)
  let part1 = value.field_params
  let count1 = part1.length()
  if count1 > 16 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Rmi_msgsMsgCallParam(writer, element)
  }
}
fn read_Ros2Rmi_msgsSrvAddCall_Request(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddCall_Request {
  let part0 = reader.text(512)
  let part1 : Array[Ros2Rmi_msgsMsgCallParam] = []
  let count1 = reader.count(16, 16)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Rmi_msgsMsgCallParam(reader))
  }
  { field_program_name: part0, field_params: part1 }
}

pub(all) struct Ros2Rmi_msgsSrvAddCall_Response {
  mut field_result : Int
  mut field_sequence_id : Int
}
pub fn Ros2Rmi_msgsSrvAddCall_Response::new() -> Ros2Rmi_msgsSrvAddCall_Response {
  {
    field_result: 0,
    field_sequence_id: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddCall_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddCall_ResponseCodec::new() -> Ros2Rmi_msgsSrvAddCall_ResponseCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddCall_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_4f8495dfc3c69ec640444fd24843a7bb3e30008d90945bdd64817d8acb7964e1",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Rmi_msgsSrvAddCall_ResponseCodec::encode(_self : Ros2Rmi_msgsSrvAddCall_ResponseCodec,
    value : Ros2Rmi_msgsSrvAddCall_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Rmi_msgsSrvAddCall_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddCall_ResponseCodec::decode(_self : Ros2Rmi_msgsSrvAddCall_ResponseCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddCall_Response,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddCall_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddCall_Response(writer : BoundedWriter, value : Ros2Rmi_msgsSrvAddCall_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_sequence_id
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Rmi_msgsSrvAddCall_Response(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddCall_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0, field_sequence_id: part1 }
}

pub(all) struct Ros2Rmi_msgsSrvAddMotionInstruction_Request {
  mut field_motion_type : Ros2Rmi_msgsMsgMotionType
  mut field_incremental : Bool
  mut field_representation : Ros2Rmi_msgsMsgRepresentation
  mut field_joint : Ros2Rmi_msgsMsgJoint
  mut field_cartesian : Ros2Rmi_msgsMsgCartesian
  mut field_speed_type : Ros2Rmi_msgsMsgSpeedType
  mut field_speed_value : Int
  mut field_term_type : Ros2Rmi_msgsMsgTermType
  mut field_term_value : Int
  mut field_via_representation : Ros2Rmi_msgsMsgRepresentation
  mut field_via_joint : Ros2Rmi_msgsMsgJoint
  mut field_via_cartesian : Ros2Rmi_msgsMsgCartesian
  mut field_options : Ros2Rmi_msgsMsgMotionInstructionOptions
}
pub fn Ros2Rmi_msgsSrvAddMotionInstruction_Request::new() -> Ros2Rmi_msgsSrvAddMotionInstruction_Request {
  {
    field_motion_type: Ros2Rmi_msgsMsgMotionType::new(),
    field_incremental: false,
    field_representation: Ros2Rmi_msgsMsgRepresentation::new(),
    field_joint: Ros2Rmi_msgsMsgJoint::new(),
    field_cartesian: Ros2Rmi_msgsMsgCartesian::new(),
    field_speed_type: Ros2Rmi_msgsMsgSpeedType::new(),
    field_speed_value: 0,
    field_term_type: Ros2Rmi_msgsMsgTermType::new(),
    field_term_value: 0,
    field_via_representation: Ros2Rmi_msgsMsgRepresentation::new(),
    field_via_joint: Ros2Rmi_msgsMsgJoint::new(),
    field_via_cartesian: Ros2Rmi_msgsMsgCartesian::new(),
    field_options: Ros2Rmi_msgsMsgMotionInstructionOptions::new(),
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddMotionInstruction_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddMotionInstruction_RequestCodec::new() -> Ros2Rmi_msgsSrvAddMotionInstruction_RequestCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddMotionInstruction_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_3f22c49cb2d32e6a8f3954f3d3cbf0021c87e0363b1f2ded4ac20a97a5b59391",
    min_wire_bytes: 238, max_wire_bytes: 4014 }
}
pub fn Ros2Rmi_msgsSrvAddMotionInstruction_RequestCodec::encode(
    _self : Ros2Rmi_msgsSrvAddMotionInstruction_RequestCodec,
    value : Ros2Rmi_msgsSrvAddMotionInstruction_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4014, error: 0 }
  write_Ros2Rmi_msgsSrvAddMotionInstruction_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 238 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddMotionInstruction_RequestCodec::decode(
    _self : Ros2Rmi_msgsSrvAddMotionInstruction_RequestCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddMotionInstruction_Request,
    Int] {
  if input.length() < 238 || input.length() > 4014 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddMotionInstruction_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddMotionInstruction_Request(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddMotionInstruction_Request) -> Unit {
  let part0 = value.field_motion_type
  write_Ros2Rmi_msgsMsgMotionType(writer, part0)
  let part1 = value.field_incremental
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.field_representation
  write_Ros2Rmi_msgsMsgRepresentation(writer, part2)
  let part3 = value.field_joint
  write_Ros2Rmi_msgsMsgJoint(writer, part3)
  let part4 = value.field_cartesian
  write_Ros2Rmi_msgsMsgCartesian(writer, part4)
  let part5 = value.field_speed_type
  write_Ros2Rmi_msgsMsgSpeedType(writer, part5)
  let part6 = value.field_speed_value
  if part6 < 0 || part6 > 65535 { writer.error = 22 }
  writer.unsigned(part6.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part7 = value.field_term_type
  write_Ros2Rmi_msgsMsgTermType(writer, part7)
  let part8 = value.field_term_value
  if part8 < 0 || part8 > 255 { writer.error = 22 }
  writer.unsigned(part8.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part9 = value.field_via_representation
  write_Ros2Rmi_msgsMsgRepresentation(writer, part9)
  let part10 = value.field_via_joint
  write_Ros2Rmi_msgsMsgJoint(writer, part10)
  let part11 = value.field_via_cartesian
  write_Ros2Rmi_msgsMsgCartesian(writer, part11)
  let part12 = value.field_options
  write_Ros2Rmi_msgsMsgMotionInstructionOptions(writer, part12)
}
fn read_Ros2Rmi_msgsSrvAddMotionInstruction_Request(
    reader : BoundedReader) -> Ros2Rmi_msgsSrvAddMotionInstruction_Request {
  let part0 = read_Ros2Rmi_msgsMsgMotionType(reader)
  let part1 = reader.boolean()
  let part2 = read_Ros2Rmi_msgsMsgRepresentation(reader)
  let part3 = read_Ros2Rmi_msgsMsgJoint(reader)
  let part4 = read_Ros2Rmi_msgsMsgCartesian(reader)
  let part5 = read_Ros2Rmi_msgsMsgSpeedType(reader)
  let part6 = reader.unsigned(2).to_int()
  let part7 = read_Ros2Rmi_msgsMsgTermType(reader)
  let part8 = reader.unsigned(1).to_int()
  let part9 = read_Ros2Rmi_msgsMsgRepresentation(reader)
  let part10 = read_Ros2Rmi_msgsMsgJoint(reader)
  let part11 = read_Ros2Rmi_msgsMsgCartesian(reader)
  let part12 = read_Ros2Rmi_msgsMsgMotionInstructionOptions(reader)
    {
      field_motion_type: part0,
      field_incremental: part1,
      field_representation: part2,
      field_joint: part3,
      field_cartesian: part4,
      field_speed_type: part5,
      field_speed_value: part6,
      field_term_type: part7,
      field_term_value: part8,
      field_via_representation: part9,
      field_via_joint: part10,
      field_via_cartesian: part11,
      field_options: part12
    }
}

pub(all) struct Ros2Rmi_msgsSrvAddMotionInstruction_Response {
  mut field_result : Int
  mut field_sequence_id : Int
}
pub fn Ros2Rmi_msgsSrvAddMotionInstruction_Response::new() -> Ros2Rmi_msgsSrvAddMotionInstruction_Response {
  {
    field_result: 0,
    field_sequence_id: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddMotionInstruction_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddMotionInstruction_ResponseCodec::new() -> Ros2Rmi_msgsSrvAddMotionInstruction_ResponseCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddMotionInstruction_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_79fee3e965fda63c3a53ad2178ff48614878acc9f6af74cc27a8c2812b68ac6b",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Rmi_msgsSrvAddMotionInstruction_ResponseCodec::encode(
    _self : Ros2Rmi_msgsSrvAddMotionInstruction_ResponseCodec,
    value : Ros2Rmi_msgsSrvAddMotionInstruction_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Rmi_msgsSrvAddMotionInstruction_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddMotionInstruction_ResponseCodec::decode(
    _self : Ros2Rmi_msgsSrvAddMotionInstruction_ResponseCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddMotionInstruction_Response,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddMotionInstruction_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddMotionInstruction_Response(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddMotionInstruction_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_sequence_id
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Rmi_msgsSrvAddMotionInstruction_Response(
    reader : BoundedReader) -> Ros2Rmi_msgsSrvAddMotionInstruction_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0, field_sequence_id: part1 }
}

pub(all) struct Ros2Rmi_msgsSrvAddSetPayload_Request {
  mut field_schedule_number : Int
}
pub fn Ros2Rmi_msgsSrvAddSetPayload_Request::new() -> Ros2Rmi_msgsSrvAddSetPayload_Request {
  {
    field_schedule_number: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddSetPayload_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddSetPayload_RequestCodec::new() -> Ros2Rmi_msgsSrvAddSetPayload_RequestCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddSetPayload_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_45da9f81e8c26f49490a4e6eba5c8be0ee67285124540eb1c3e1f2c3e0fd821b",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Rmi_msgsSrvAddSetPayload_RequestCodec::encode(_self : Ros2Rmi_msgsSrvAddSetPayload_RequestCodec,
    value : Ros2Rmi_msgsSrvAddSetPayload_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Rmi_msgsSrvAddSetPayload_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddSetPayload_RequestCodec::decode(_self : Ros2Rmi_msgsSrvAddSetPayload_RequestCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddSetPayload_Request,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddSetPayload_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddSetPayload_Request(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddSetPayload_Request) -> Unit {
  let part0 = value.field_schedule_number
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Rmi_msgsSrvAddSetPayload_Request(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddSetPayload_Request {
  let part0 = reader.unsigned(1).to_int()
  { field_schedule_number: part0 }
}

pub(all) struct Ros2Rmi_msgsSrvAddSetPayload_Response {
  mut field_result : Int
  mut field_sequence_id : Int
}
pub fn Ros2Rmi_msgsSrvAddSetPayload_Response::new() -> Ros2Rmi_msgsSrvAddSetPayload_Response {
  {
    field_result: 0,
    field_sequence_id: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddSetPayload_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddSetPayload_ResponseCodec::new() -> Ros2Rmi_msgsSrvAddSetPayload_ResponseCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddSetPayload_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_bfc5bc7b92f292c2980496cb18fbe953ea1b49d45f7950f0125bbbf880bdf72a",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Rmi_msgsSrvAddSetPayload_ResponseCodec::encode(_self : Ros2Rmi_msgsSrvAddSetPayload_ResponseCodec,
    value : Ros2Rmi_msgsSrvAddSetPayload_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Rmi_msgsSrvAddSetPayload_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddSetPayload_ResponseCodec::decode(_self : Ros2Rmi_msgsSrvAddSetPayload_ResponseCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddSetPayload_Response,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddSetPayload_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddSetPayload_Response(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddSetPayload_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_sequence_id
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Rmi_msgsSrvAddSetPayload_Response(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddSetPayload_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0, field_sequence_id: part1 }
}

pub(all) struct Ros2Rmi_msgsSrvAddSetUFrame_Request {
  mut field_frame_number : Int
}
pub fn Ros2Rmi_msgsSrvAddSetUFrame_Request::new() -> Ros2Rmi_msgsSrvAddSetUFrame_Request {
  {
    field_frame_number: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddSetUFrame_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddSetUFrame_RequestCodec::new() -> Ros2Rmi_msgsSrvAddSetUFrame_RequestCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddSetUFrame_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_64c83dd2be89b4b6dcf3b3c2ea70184971e6a359914ff1a5cd26d4b114d35475",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Rmi_msgsSrvAddSetUFrame_RequestCodec::encode(_self : Ros2Rmi_msgsSrvAddSetUFrame_RequestCodec,
    value : Ros2Rmi_msgsSrvAddSetUFrame_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Rmi_msgsSrvAddSetUFrame_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddSetUFrame_RequestCodec::decode(_self : Ros2Rmi_msgsSrvAddSetUFrame_RequestCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddSetUFrame_Request,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddSetUFrame_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddSetUFrame_Request(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddSetUFrame_Request) -> Unit {
  let part0 = value.field_frame_number
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Rmi_msgsSrvAddSetUFrame_Request(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddSetUFrame_Request {
  let part0 = reader.unsigned(1).to_int()
  { field_frame_number: part0 }
}

pub(all) struct Ros2Rmi_msgsSrvAddSetUFrame_Response {
  mut field_result : Int
  mut field_sequence_id : Int
}
pub fn Ros2Rmi_msgsSrvAddSetUFrame_Response::new() -> Ros2Rmi_msgsSrvAddSetUFrame_Response {
  {
    field_result: 0,
    field_sequence_id: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddSetUFrame_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddSetUFrame_ResponseCodec::new() -> Ros2Rmi_msgsSrvAddSetUFrame_ResponseCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddSetUFrame_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_e344ef6efacc8d569111d1c6ef4028e1a5bb54af49d3e8f486ae89b83c674647",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Rmi_msgsSrvAddSetUFrame_ResponseCodec::encode(_self : Ros2Rmi_msgsSrvAddSetUFrame_ResponseCodec,
    value : Ros2Rmi_msgsSrvAddSetUFrame_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Rmi_msgsSrvAddSetUFrame_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddSetUFrame_ResponseCodec::decode(_self : Ros2Rmi_msgsSrvAddSetUFrame_ResponseCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddSetUFrame_Response,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddSetUFrame_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddSetUFrame_Response(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddSetUFrame_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_sequence_id
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Rmi_msgsSrvAddSetUFrame_Response(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddSetUFrame_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0, field_sequence_id: part1 }
}

pub(all) struct Ros2Rmi_msgsSrvAddSetUTool_Request {
  mut field_tool_number : Int
}
pub fn Ros2Rmi_msgsSrvAddSetUTool_Request::new() -> Ros2Rmi_msgsSrvAddSetUTool_Request {
  {
    field_tool_number: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddSetUTool_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddSetUTool_RequestCodec::new() -> Ros2Rmi_msgsSrvAddSetUTool_RequestCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddSetUTool_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_d1327022326cd41caed6001449517a41f589e148c38d6db30923922175f05c46",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Rmi_msgsSrvAddSetUTool_RequestCodec::encode(_self : Ros2Rmi_msgsSrvAddSetUTool_RequestCodec,
    value : Ros2Rmi_msgsSrvAddSetUTool_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Rmi_msgsSrvAddSetUTool_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddSetUTool_RequestCodec::decode(_self : Ros2Rmi_msgsSrvAddSetUTool_RequestCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddSetUTool_Request,
    Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddSetUTool_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddSetUTool_Request(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddSetUTool_Request) -> Unit {
  let part0 = value.field_tool_number
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Rmi_msgsSrvAddSetUTool_Request(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddSetUTool_Request {
  let part0 = reader.unsigned(1).to_int()
  { field_tool_number: part0 }
}

pub(all) struct Ros2Rmi_msgsSrvAddSetUTool_Response {
  mut field_result : Int
  mut field_sequence_id : Int
}
pub fn Ros2Rmi_msgsSrvAddSetUTool_Response::new() -> Ros2Rmi_msgsSrvAddSetUTool_Response {
  {
    field_result: 0,
    field_sequence_id: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddSetUTool_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddSetUTool_ResponseCodec::new() -> Ros2Rmi_msgsSrvAddSetUTool_ResponseCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddSetUTool_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_dd4c36458027b87559200cf5f6aa72a60af2d103f663f2fa9daca47ce8020ff6",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Rmi_msgsSrvAddSetUTool_ResponseCodec::encode(_self : Ros2Rmi_msgsSrvAddSetUTool_ResponseCodec,
    value : Ros2Rmi_msgsSrvAddSetUTool_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Rmi_msgsSrvAddSetUTool_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddSetUTool_ResponseCodec::decode(_self : Ros2Rmi_msgsSrvAddSetUTool_ResponseCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddSetUTool_Response,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddSetUTool_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddSetUTool_Response(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddSetUTool_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_sequence_id
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Rmi_msgsSrvAddSetUTool_Response(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddSetUTool_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0, field_sequence_id: part1 }
}

pub(all) struct Ros2Rmi_msgsSrvAddWaitDIN_Request {
  mut field_port_number : Int
  mut field_port_value : String
}
pub fn Ros2Rmi_msgsSrvAddWaitDIN_Request::new() -> Ros2Rmi_msgsSrvAddWaitDIN_Request {
  {
    field_port_number: 0,
    field_port_value: "",
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddWaitDIN_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddWaitDIN_RequestCodec::new() -> Ros2Rmi_msgsSrvAddWaitDIN_RequestCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddWaitDIN_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_c32214f1ff1b0b6980583fc3088f412e856efb5eaa9c336cf798ef8ad85c61ab",
    min_wire_bytes: 6, max_wire_bytes: 518 }
}
pub fn Ros2Rmi_msgsSrvAddWaitDIN_RequestCodec::encode(_self : Ros2Rmi_msgsSrvAddWaitDIN_RequestCodec,
    value : Ros2Rmi_msgsSrvAddWaitDIN_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 518, error: 0 }
  write_Ros2Rmi_msgsSrvAddWaitDIN_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 6 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddWaitDIN_RequestCodec::decode(_self : Ros2Rmi_msgsSrvAddWaitDIN_RequestCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddWaitDIN_Request,
    Int] {
  if input.length() < 6 || input.length() > 518 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddWaitDIN_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddWaitDIN_Request(writer : BoundedWriter, value : Ros2Rmi_msgsSrvAddWaitDIN_Request) -> Unit {
  let part0 = value.field_port_number
  if part0 < 0 || part0 > 65535 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 65535UL, 2)
  let part1 = value.field_port_value
  writer.text(part1, 512)
}
fn read_Ros2Rmi_msgsSrvAddWaitDIN_Request(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddWaitDIN_Request {
  let part0 = reader.unsigned(2).to_int()
  let part1 = reader.text(512)
  { field_port_number: part0, field_port_value: part1 }
}

pub(all) struct Ros2Rmi_msgsSrvAddWaitDIN_Response {
  mut field_result : Int
  mut field_sequence_id : Int
}
pub fn Ros2Rmi_msgsSrvAddWaitDIN_Response::new() -> Ros2Rmi_msgsSrvAddWaitDIN_Response {
  {
    field_result: 0,
    field_sequence_id: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddWaitDIN_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddWaitDIN_ResponseCodec::new() -> Ros2Rmi_msgsSrvAddWaitDIN_ResponseCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddWaitDIN_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_7d3933f573619ba49f19df7c11f1d73ef211c17581f660f8c0fbcc152cd519d4",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Rmi_msgsSrvAddWaitDIN_ResponseCodec::encode(_self : Ros2Rmi_msgsSrvAddWaitDIN_ResponseCodec,
    value : Ros2Rmi_msgsSrvAddWaitDIN_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Rmi_msgsSrvAddWaitDIN_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddWaitDIN_ResponseCodec::decode(_self : Ros2Rmi_msgsSrvAddWaitDIN_ResponseCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddWaitDIN_Response,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddWaitDIN_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddWaitDIN_Response(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddWaitDIN_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_sequence_id
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Rmi_msgsSrvAddWaitDIN_Response(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddWaitDIN_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0, field_sequence_id: part1 }
}

pub(all) struct Ros2Rmi_msgsSrvAddWaitTime_Request {
  mut field_time : Float
}
pub fn Ros2Rmi_msgsSrvAddWaitTime_Request::new() -> Ros2Rmi_msgsSrvAddWaitTime_Request {
  {
    field_time: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddWaitTime_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddWaitTime_RequestCodec::new() -> Ros2Rmi_msgsSrvAddWaitTime_RequestCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddWaitTime_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_8487f4b7dcfb044c72f7fb62a31ffe9cdc4321a9ebdaa0550a363e32acbadc46",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Rmi_msgsSrvAddWaitTime_RequestCodec::encode(_self : Ros2Rmi_msgsSrvAddWaitTime_RequestCodec,
    value : Ros2Rmi_msgsSrvAddWaitTime_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Rmi_msgsSrvAddWaitTime_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddWaitTime_RequestCodec::decode(_self : Ros2Rmi_msgsSrvAddWaitTime_RequestCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddWaitTime_Request,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddWaitTime_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddWaitTime_Request(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddWaitTime_Request) -> Unit {
  let part0 = value.field_time
  writer.float32(part0)
}
fn read_Ros2Rmi_msgsSrvAddWaitTime_Request(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddWaitTime_Request {
  let part0 = reader.float32()
  { field_time: part0 }
}

pub(all) struct Ros2Rmi_msgsSrvAddWaitTime_Response {
  mut field_result : Int
  mut field_sequence_id : Int
}
pub fn Ros2Rmi_msgsSrvAddWaitTime_Response::new() -> Ros2Rmi_msgsSrvAddWaitTime_Response {
  {
    field_result: 0,
    field_sequence_id: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvAddWaitTime_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvAddWaitTime_ResponseCodec::new() -> Ros2Rmi_msgsSrvAddWaitTime_ResponseCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/AddWaitTime_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_f9578c08b971f32f91d1c94b8713cafe648e25147394e20c85bb335254fa20c8",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Rmi_msgsSrvAddWaitTime_ResponseCodec::encode(_self : Ros2Rmi_msgsSrvAddWaitTime_ResponseCodec,
    value : Ros2Rmi_msgsSrvAddWaitTime_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Rmi_msgsSrvAddWaitTime_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvAddWaitTime_ResponseCodec::decode(_self : Ros2Rmi_msgsSrvAddWaitTime_ResponseCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvAddWaitTime_Response,
    Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvAddWaitTime_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvAddWaitTime_Response(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvAddWaitTime_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.field_sequence_id
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Rmi_msgsSrvAddWaitTime_Response(reader : BoundedReader) -> Ros2Rmi_msgsSrvAddWaitTime_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0, field_sequence_id: part1 }
}

pub(all) struct Ros2Rmi_msgsSrvCallCommand_Request {
  mut field_command : Ros2Rmi_msgsMsgCommand
  mut field_options : Ros2Rmi_msgsMsgCommandOptions
}
pub fn Ros2Rmi_msgsSrvCallCommand_Request::new() -> Ros2Rmi_msgsSrvCallCommand_Request {
  {
    field_command: Ros2Rmi_msgsMsgCommand::new(),
    field_options: Ros2Rmi_msgsMsgCommandOptions::new(),
  }
}
pub(all) struct Ros2Rmi_msgsSrvCallCommand_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvCallCommand_RequestCodec::new() -> Ros2Rmi_msgsSrvCallCommand_RequestCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/CallCommand_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_d1f890a2beec0ca9294ff4f641d1738855d576a917ed05eb34517886c73f381c",
    min_wire_bytes: 16, max_wire_bytes: 1104 }
}
pub fn Ros2Rmi_msgsSrvCallCommand_RequestCodec::encode(_self : Ros2Rmi_msgsSrvCallCommand_RequestCodec,
    value : Ros2Rmi_msgsSrvCallCommand_Request) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1104, error: 0 }
  write_Ros2Rmi_msgsSrvCallCommand_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvCallCommand_RequestCodec::decode(_self : Ros2Rmi_msgsSrvCallCommand_RequestCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvCallCommand_Request,
    Int] {
  if input.length() < 16 || input.length() > 1104 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvCallCommand_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvCallCommand_Request(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvCallCommand_Request) -> Unit {
  let part0 = value.field_command
  write_Ros2Rmi_msgsMsgCommand(writer, part0)
  let part1 = value.field_options
  write_Ros2Rmi_msgsMsgCommandOptions(writer, part1)
}
fn read_Ros2Rmi_msgsSrvCallCommand_Request(reader : BoundedReader) -> Ros2Rmi_msgsSrvCallCommand_Request {
  let part0 = read_Ros2Rmi_msgsMsgCommand(reader)
  let part1 = read_Ros2Rmi_msgsMsgCommandOptions(reader)
  { field_command: part0, field_options: part1 }
}

pub(all) struct Ros2Rmi_msgsSrvCallCommand_Response {
  mut field_result : Int
}
pub fn Ros2Rmi_msgsSrvCallCommand_Response::new() -> Ros2Rmi_msgsSrvCallCommand_Response {
  {
    field_result: 0,
  }
}
pub(all) struct Ros2Rmi_msgsSrvCallCommand_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Rmi_msgsSrvCallCommand_ResponseCodec::new() -> Ros2Rmi_msgsSrvCallCommand_ResponseCodec {
  { ros_version: 2, native_type: "rmi_msgs/srv/CallCommand_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_64d92e6fadc651073469318ad15d2e98ec3d059c629838cefc5820b17ab6f1bc",
    min_wire_bytes: 4, max_wire_bytes: 4 }
}
pub fn Ros2Rmi_msgsSrvCallCommand_ResponseCodec::encode(_self : Ros2Rmi_msgsSrvCallCommand_ResponseCodec,
    value : Ros2Rmi_msgsSrvCallCommand_Response) -> Result[Bytes,
    Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 4, error: 0 }
  write_Ros2Rmi_msgsSrvCallCommand_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Rmi_msgsSrvCallCommand_ResponseCodec::decode(_self : Ros2Rmi_msgsSrvCallCommand_ResponseCodec,
    input : Bytes) -> Result[Ros2Rmi_msgsSrvCallCommand_Response,
    Int] {
  if input.length() < 4 || input.length() > 4 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Rmi_msgsSrvCallCommand_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Rmi_msgsSrvCallCommand_Response(writer : BoundedWriter,
    value : Ros2Rmi_msgsSrvCallCommand_Response) -> Unit {
  let part0 = value.field_result
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros2Rmi_msgsSrvCallCommand_Response(reader : BoundedReader) -> Ros2Rmi_msgsSrvCallCommand_Response {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { field_result: part0 }
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

/// @brief Original fanuc_msgs/msg/IOType.AI constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_AI(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "AI" }

/// @brief Original fanuc_msgs/msg/IOType.AO constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_AO(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "AO" }

/// @brief Original fanuc_msgs/msg/IOType.DI constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_DI(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "DI" }

/// @brief Original fanuc_msgs/msg/IOType.DO constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_DO(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "DO" }

/// @brief Original fanuc_msgs/msg/IOType.RI constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_RI(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "RI" }

/// @brief Original fanuc_msgs/msg/IOType.RO constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_RO(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "RO" }

/// @brief Original fanuc_msgs/msg/IOType.SI constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_SI(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "SI" }

/// @brief Original fanuc_msgs/msg/IOType.SO constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_SO(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "SO" }

/// @brief Original fanuc_msgs/msg/IOType.WI constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_WI(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "WI" }

/// @brief Original fanuc_msgs/msg/IOType.WO constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_WO(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "WO" }

/// @brief Original fanuc_msgs/msg/IOType.UI constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_UI(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "UI" }

/// @brief Original fanuc_msgs/msg/IOType.UO constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_UO(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "UO" }

/// @brief Original fanuc_msgs/msg/IOType.WSI constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_WSI(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "WSI" }

/// @brief Original fanuc_msgs/msg/IOType.WSO constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_WSO(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "WSO" }

/// @brief Original fanuc_msgs/msg/IOType.F constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_F(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "F" }

/// @brief Original fanuc_msgs/msg/IOType.M constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_M(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "M" }

/// @brief Original fanuc_msgs/msg/IOType.GI constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_GI(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "GI" }

/// @brief Original fanuc_msgs/msg/IOType.GO constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsMsgIOTypeCodec::constant_GO(_self : Ros2Fanuc_msgsMsgIOTypeCodec) -> String { "GO" }

/// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_NONE constant; no instance bytes or ROS
/// authority.
pub fn Ros2Fanuc_msgsMsgRobotStatusCodec::constant_CONTACT_STOP_MODE_NONE(
    _self : Ros2Fanuc_msgsMsgRobotStatusCodec) -> Int { 0 }

/// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_SAFE constant; no instance bytes or ROS
/// authority.
pub fn Ros2Fanuc_msgsMsgRobotStatusCodec::constant_CONTACT_STOP_MODE_SAFE(
    _self : Ros2Fanuc_msgsMsgRobotStatusCodec) -> Int { 1 }

/// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_STOP constant; no instance bytes or ROS
/// authority.
pub fn Ros2Fanuc_msgsMsgRobotStatusCodec::constant_CONTACT_STOP_MODE_STOP(
    _self : Ros2Fanuc_msgsMsgRobotStatusCodec) -> Int { 2 }

/// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_DSBL constant; no instance bytes or ROS
/// authority.
pub fn Ros2Fanuc_msgsMsgRobotStatusCodec::constant_CONTACT_STOP_MODE_DSBL(
    _self : Ros2Fanuc_msgsMsgRobotStatusCodec) -> Int { 3 }

/// @brief Original fanuc_msgs/msg/RobotStatus.CONTACT_STOP_MODE_ESCP constant; no instance bytes or ROS
/// authority.
pub fn Ros2Fanuc_msgsMsgRobotStatusCodec::constant_CONTACT_STOP_MODE_ESCP(
    _self : Ros2Fanuc_msgsMsgRobotStatusCodec) -> Int { 4 }

/// @brief Original fanuc_msgs/srv/SwitchControlState_Request.STOP constant; no instance bytes or ROS authority.
pub fn Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec::constant_STOP(
    _self : Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec) -> UInt { 0U }

/// @brief Original fanuc_msgs/srv/SwitchControlState_Request.START constant; no instance bytes or ROS
/// authority.
pub fn Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec::constant_START(
    _self : Ros2Fanuc_msgsSrvSwitchControlState_RequestCodec) -> UInt { 1U }

/// @brief Original rmi_msgs/msg/CallParam.AR constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCallParamCodec::constant_AR(_self : Ros2Rmi_msgsMsgCallParamCodec) -> String { "AR" }

/// @brief Original rmi_msgs/msg/CallParam.PR constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCallParamCodec::constant_PR(_self : Ros2Rmi_msgsMsgCallParamCodec) -> String { "PR" }

/// @brief Original rmi_msgs/msg/CallParam.SR constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCallParamCodec::constant_SR(_self : Ros2Rmi_msgsMsgCallParamCodec) -> String { "SR" }

/// @brief Original rmi_msgs/msg/CallParam.R constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCallParamCodec::constant_R(_self : Ros2Rmi_msgsMsgCallParamCodec) -> String { "R" }

/// @brief Original rmi_msgs/msg/CallParam.P constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCallParamCodec::constant_P(_self : Ros2Rmi_msgsMsgCallParamCodec) -> String { "P" }

/// @brief Original rmi_msgs/msg/CallParam.INT constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCallParamCodec::constant_INT(_self : Ros2Rmi_msgsMsgCallParamCodec) -> String { "INT" }

/// @brief Original rmi_msgs/msg/CallParam.INTEGER constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCallParamCodec::constant_INTEGER(_self : Ros2Rmi_msgsMsgCallParamCodec) -> String { "INT" }

/// @brief Original rmi_msgs/msg/CallParam.FLOAT constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCallParamCodec::constant_FLOAT(_self : Ros2Rmi_msgsMsgCallParamCodec) -> String { "FLOAT" }

/// @brief Original rmi_msgs/msg/CallParam.STRING constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCallParamCodec::constant_STRING(_self : Ros2Rmi_msgsMsgCallParamCodec) -> String { "String" }

/// @brief Original rmi_msgs/msg/CallParam.STR constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCallParamCodec::constant_STR(_self : Ros2Rmi_msgsMsgCallParamCodec) -> String { "String" }

/// @brief Original rmi_msgs/msg/Command.INITIAZLIE constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandCodec::constant_INITIAZLIE(_self : Ros2Rmi_msgsMsgCommandCodec) -> String { "INITIALIZE" }

/// @brief Original rmi_msgs/msg/Command.INIT constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandCodec::constant_INIT(_self : Ros2Rmi_msgsMsgCommandCodec) -> String { "INITIALIZE" }

/// @brief Original rmi_msgs/msg/Command.ABORT constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandCodec::constant_ABORT(_self : Ros2Rmi_msgsMsgCommandCodec) -> String { "ABORT" }

/// @brief Original rmi_msgs/msg/Command.PAUSE constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandCodec::constant_PAUSE(_self : Ros2Rmi_msgsMsgCommandCodec) -> String { "PAUSE" }

/// @brief Original rmi_msgs/msg/Command.RESUME constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandCodec::constant_RESUME(_self : Ros2Rmi_msgsMsgCommandCodec) -> String { "RESUME" }

/// @brief Original rmi_msgs/msg/CommandOptions.RTSA_ON constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::constant_RTSA_ON(
    _self : Ros2Rmi_msgsMsgCommandOptionsCodec) -> String { "ON" }

/// @brief Original rmi_msgs/msg/CommandOptions.RTSA_OFF constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::constant_RTSA_OFF(
    _self : Ros2Rmi_msgsMsgCommandOptionsCodec) -> String { "OFF" }

/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_ZERODN constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::constant_PLTZ_ZERODN(
    _self : Ros2Rmi_msgsMsgCommandOptionsCodec) -> String { "ZERODN" }

/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_ZEROUP constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::constant_PLTZ_ZEROUP(
    _self : Ros2Rmi_msgsMsgCommandOptionsCodec) -> String { "ZEROUP" }

/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_PSPIDN constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::constant_PLTZ_PSPIDN(
    _self : Ros2Rmi_msgsMsgCommandOptionsCodec) -> String { "PSPIDN" }

/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_PSPIUP constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::constant_PLTZ_PSPIUP(
    _self : Ros2Rmi_msgsMsgCommandOptionsCodec) -> String { "PSPIUP" }

/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_MSPIDN constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::constant_PLTZ_MSPIDN(
    _self : Ros2Rmi_msgsMsgCommandOptionsCodec) -> String { "MSPIDN" }

/// @brief Original rmi_msgs/msg/CommandOptions.PLTZ_MSPIUP constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgCommandOptionsCodec::constant_PLTZ_MSPIUP(
    _self : Ros2Rmi_msgsMsgCommandOptionsCodec) -> String { "MSPIUP" }

/// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_TB constant; no instance bytes or ROS
/// authority.
pub fn Ros2Rmi_msgsMsgMotionInstructionOptionsCodec::constant_LCB_TYPE_TB(
    _self : Ros2Rmi_msgsMsgMotionInstructionOptionsCodec) -> String { "TB" }

/// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_TA constant; no instance bytes or ROS
/// authority.
pub fn Ros2Rmi_msgsMsgMotionInstructionOptionsCodec::constant_LCB_TYPE_TA(
    _self : Ros2Rmi_msgsMsgMotionInstructionOptionsCodec) -> String { "TA" }

/// @brief Original rmi_msgs/msg/MotionInstructionOptions.LCB_TYPE_DB constant; no instance bytes or ROS
/// authority.
pub fn Ros2Rmi_msgsMsgMotionInstructionOptionsCodec::constant_LCB_TYPE_DB(
    _self : Ros2Rmi_msgsMsgMotionInstructionOptionsCodec) -> String { "DB" }

/// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_DOUT constant; no instance bytes or ROS
/// authority.
pub fn Ros2Rmi_msgsMsgMotionInstructionOptionsCodec::constant_PORT_TYPE_DOUT(
    _self : Ros2Rmi_msgsMsgMotionInstructionOptionsCodec) -> Int { 1 }

/// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_DO constant; no instance bytes or ROS
/// authority.
pub fn Ros2Rmi_msgsMsgMotionInstructionOptionsCodec::constant_PORT_TYPE_DO(
    _self : Ros2Rmi_msgsMsgMotionInstructionOptionsCodec) -> Int { 1 }

/// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_ROUT constant; no instance bytes or ROS
/// authority.
pub fn Ros2Rmi_msgsMsgMotionInstructionOptionsCodec::constant_PORT_TYPE_ROUT(
    _self : Ros2Rmi_msgsMsgMotionInstructionOptionsCodec) -> Int { 2 }

/// @brief Original rmi_msgs/msg/MotionInstructionOptions.PORT_TYPE_RO constant; no instance bytes or ROS
/// authority.
pub fn Ros2Rmi_msgsMsgMotionInstructionOptionsCodec::constant_PORT_TYPE_RO(
    _self : Ros2Rmi_msgsMsgMotionInstructionOptionsCodec) -> Int { 2 }

/// @brief Original rmi_msgs/msg/MotionType.J constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::constant_J(_self : Ros2Rmi_msgsMsgMotionTypeCodec) -> String { "J" }

/// @brief Original rmi_msgs/msg/MotionType.JOINT constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::constant_JOINT(_self : Ros2Rmi_msgsMsgMotionTypeCodec) -> String { "J" }

/// @brief Original rmi_msgs/msg/MotionType.L constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::constant_L(_self : Ros2Rmi_msgsMsgMotionTypeCodec) -> String { "L" }

/// @brief Original rmi_msgs/msg/MotionType.LINEAR constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::constant_LINEAR(_self : Ros2Rmi_msgsMsgMotionTypeCodec) -> String { "L" }

/// @brief Original rmi_msgs/msg/MotionType.C constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::constant_C(_self : Ros2Rmi_msgsMsgMotionTypeCodec) -> String { "C" }

/// @brief Original rmi_msgs/msg/MotionType.CIRCULAR constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::constant_CIRCULAR(_self : Ros2Rmi_msgsMsgMotionTypeCodec) -> String { "C" }

/// @brief Original rmi_msgs/msg/MotionType.S constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::constant_S(_self : Ros2Rmi_msgsMsgMotionTypeCodec) -> String { "S" }

/// @brief Original rmi_msgs/msg/MotionType.SPLINE constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgMotionTypeCodec::constant_SPLINE(_self : Ros2Rmi_msgsMsgMotionTypeCodec) -> String { "S" }

/// @brief Original rmi_msgs/msg/Representation.JOINT constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgRepresentationCodec::constant_JOINT(
    _self : Ros2Rmi_msgsMsgRepresentationCodec) -> String { "JOINT" }

/// @brief Original rmi_msgs/msg/Representation.J constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgRepresentationCodec::constant_J(_self : Ros2Rmi_msgsMsgRepresentationCodec) -> String { "JOINT" }

/// @brief Original rmi_msgs/msg/Representation.CARTESIAN constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgRepresentationCodec::constant_CARTESIAN(
    _self : Ros2Rmi_msgsMsgRepresentationCodec) -> String { "CARTESIAN" }

/// @brief Original rmi_msgs/msg/Representation.CART constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgRepresentationCodec::constant_CART(
    _self : Ros2Rmi_msgsMsgRepresentationCodec) -> String { "CARTESIAN" }

/// @brief Original rmi_msgs/msg/Representation.C constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgRepresentationCodec::constant_C(
    _self : Ros2Rmi_msgsMsgRepresentationCodec) -> String { "CARTESIAN" }

/// @brief Original rmi_msgs/msg/SpeedType.PERCENT constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::constant_PERCENT(_self : Ros2Rmi_msgsMsgSpeedTypeCodec) -> String { "Percent" }

/// @brief Original rmi_msgs/msg/SpeedType.PERCENTAGE constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::constant_PERCENTAGE(_self : Ros2Rmi_msgsMsgSpeedTypeCodec) -> String { "Percent" }

/// @brief Original rmi_msgs/msg/SpeedType.MMSEC constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::constant_MMSEC(_self : Ros2Rmi_msgsMsgSpeedTypeCodec) -> String { "mmSec" }

/// @brief Original rmi_msgs/msg/SpeedType.INCHMIN constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::constant_INCHMIN(_self : Ros2Rmi_msgsMsgSpeedTypeCodec) -> String { "InchMin" }

/// @brief Original rmi_msgs/msg/SpeedType.TIME constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::constant_TIME(_self : Ros2Rmi_msgsMsgSpeedTypeCodec) -> String { "Time" }

/// @brief Original rmi_msgs/msg/SpeedType.SECONDS constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::constant_SECONDS(_self : Ros2Rmi_msgsMsgSpeedTypeCodec) -> String { "Time" }

/// @brief Original rmi_msgs/msg/SpeedType.SEC constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::constant_SEC(_self : Ros2Rmi_msgsMsgSpeedTypeCodec) -> String { "Time" }

/// @brief Original rmi_msgs/msg/SpeedType.MSEC constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgSpeedTypeCodec::constant_MSEC(_self : Ros2Rmi_msgsMsgSpeedTypeCodec) -> String { "mSec" }

/// @brief Original rmi_msgs/msg/TermType.FINE constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgTermTypeCodec::constant_FINE(_self : Ros2Rmi_msgsMsgTermTypeCodec) -> String { "FINE" }

/// @brief Original rmi_msgs/msg/TermType.CNT constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgTermTypeCodec::constant_CNT(_self : Ros2Rmi_msgsMsgTermTypeCodec) -> String { "CNT" }

/// @brief Original rmi_msgs/msg/TermType.CR constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgTermTypeCodec::constant_CR(_self : Ros2Rmi_msgsMsgTermTypeCodec) -> String { "CR" }

/// @brief Original rmi_msgs/msg/TermType.CD constant; no instance bytes or ROS authority.
pub fn Ros2Rmi_msgsMsgTermTypeCodec::constant_CD(_self : Ros2Rmi_msgsMsgTermTypeCodec) -> String { "CD" }
