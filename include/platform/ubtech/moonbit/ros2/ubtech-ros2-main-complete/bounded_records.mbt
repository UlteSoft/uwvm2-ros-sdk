/// @file bounded_records.mbt
/// @brief Bound complete MoonBit field writes and reads for this catalog.
/// @details Shared trusted cursor template used by ubtech ros2_main. The adjacent generated catalog supplies 8
/// complete record layouts. Writer and reader track independent bounded extents; malformed or partial values must
/// not be exposed. Encoding grants no native authority. This source still requires the pinned MoonBit compiler and
/// real guest tests.
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

pub(all) struct Ros2Geometry_msgsMsgPoint {
  mut x : Double
  mut y : Double
  mut z : Double
}
pub fn Ros2Geometry_msgsMsgPoint::new() -> Ros2Geometry_msgsMsgPoint {
  {
    x: 0.0,
    y: 0.0,
    z: 0.0,
  }
}
pub(all) struct Ros2Geometry_msgsMsgPointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgPointCodec::new() -> Ros2Geometry_msgsMsgPointCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Point",
    native_identity: None,
    codec_identity: "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros2Geometry_msgsMsgPointCodec::encode(
  _self : Ros2Geometry_msgsMsgPointCodec,
  value : Ros2Geometry_msgsMsgPoint
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Geometry_msgsMsgPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgPointCodec::decode(
  _self : Ros2Geometry_msgsMsgPointCodec,
  input : Bytes
) -> Result[Ros2Geometry_msgsMsgPoint, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgPoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgPoint(writer : BoundedWriter, value : Ros2Geometry_msgsMsgPoint) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
}
fn read_Ros2Geometry_msgsMsgPoint(reader : BoundedReader) -> Ros2Geometry_msgsMsgPoint {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  { x: part0, y: part1, z: part2 }
}

pub(all) struct Ros2Geometry_msgsMsgQuaternion {
  mut x : Double
  mut y : Double
  mut z : Double
  mut w : Double
}
pub fn Ros2Geometry_msgsMsgQuaternion::new() -> Ros2Geometry_msgsMsgQuaternion {
  {
    x: (0UL).reinterpret_as_double(),
    y: (0UL).reinterpret_as_double(),
    z: (0UL).reinterpret_as_double(),
    w: (4607182418800017408UL).reinterpret_as_double(),
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
pub fn Ros2Geometry_msgsMsgQuaternionCodec::encode(
  _self : Ros2Geometry_msgsMsgQuaternionCodec,
  value : Ros2Geometry_msgsMsgQuaternion
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros2Geometry_msgsMsgQuaternion(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgQuaternionCodec::decode(
  _self : Ros2Geometry_msgsMsgQuaternionCodec,
  input : Bytes
) -> Result[Ros2Geometry_msgsMsgQuaternion, Int] {
  if input.length() < 32 || input.length() > 32 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgQuaternion(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgQuaternion(writer : BoundedWriter, value : Ros2Geometry_msgsMsgQuaternion) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
  let part3 = value.w
  writer.float64(part3)
}
fn read_Ros2Geometry_msgsMsgQuaternion(reader : BoundedReader) -> Ros2Geometry_msgsMsgQuaternion {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { x: part0, y: part1, z: part2, w: part3 }
}

pub(all) struct Ros2Geometry_msgsMsgPose {
  mut position : Ros2Geometry_msgsMsgPoint
  mut orientation : Ros2Geometry_msgsMsgQuaternion
}
pub fn Ros2Geometry_msgsMsgPose::new() -> Ros2Geometry_msgsMsgPose {
  {
    position: Ros2Geometry_msgsMsgPoint::new(),
    orientation: Ros2Geometry_msgsMsgQuaternion::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgPoseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgPoseCodec::new() -> Ros2Geometry_msgsMsgPoseCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Pose",
    native_identity: None,
    codec_identity: "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777",
    min_wire_bytes: 56, max_wire_bytes: 56 }
}
pub fn Ros2Geometry_msgsMsgPoseCodec::encode(
  _self : Ros2Geometry_msgsMsgPoseCodec,
  value : Ros2Geometry_msgsMsgPose
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros2Geometry_msgsMsgPose(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgPoseCodec::decode(
  _self : Ros2Geometry_msgsMsgPoseCodec,
  input : Bytes
) -> Result[Ros2Geometry_msgsMsgPose, Int] {
  if input.length() < 56 || input.length() > 56 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgPose(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgPose(writer : BoundedWriter, value : Ros2Geometry_msgsMsgPose) -> Unit {
  let part0 = value.position
  write_Ros2Geometry_msgsMsgPoint(writer, part0)
  let part1 = value.orientation
  write_Ros2Geometry_msgsMsgQuaternion(writer, part1)
}
fn read_Ros2Geometry_msgsMsgPose(reader : BoundedReader) -> Ros2Geometry_msgsMsgPose {
  let part0 = read_Ros2Geometry_msgsMsgPoint(reader)
  let part1 = read_Ros2Geometry_msgsMsgQuaternion(reader)
  { position: part0, orientation: part1 }
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
    codec_identity: "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros2Std_msgsMsgHeaderCodec::encode(
  _self : Ros2Std_msgsMsgHeaderCodec,
  value : Ros2Std_msgsMsgHeader
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Std_msgsMsgHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_msgsMsgHeaderCodec::decode(
  _self : Ros2Std_msgsMsgHeaderCodec,
  input : Bytes
) -> Result[Ros2Std_msgsMsgHeader, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_msgsMsgHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_msgsMsgHeader(writer : BoundedWriter, value : Ros2Std_msgsMsgHeader) -> Unit {
  let part0 = value.stamp
  write_Ros2Builtin_interfacesMsgTime(writer, part0)
  let part1 = value.frame_id
  writer.text(part1, 128)
}
fn read_Ros2Std_msgsMsgHeader(reader : BoundedReader) -> Ros2Std_msgsMsgHeader {
  let part0 = read_Ros2Builtin_interfacesMsgTime(reader)
  let part1 = reader.text(128)
  { stamp: part0, frame_id: part1 }
}

pub(all) struct Ros2Geometry_msgsMsgPoseStamped {
  mut header : Ros2Std_msgsMsgHeader
  mut pose : Ros2Geometry_msgsMsgPose
}
pub fn Ros2Geometry_msgsMsgPoseStamped::new() -> Ros2Geometry_msgsMsgPoseStamped {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    pose: Ros2Geometry_msgsMsgPose::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgPoseStampedCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgPoseStampedCodec::new() -> Ros2Geometry_msgsMsgPoseStampedCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/PoseStamped",
    native_identity: None,
    codec_identity: "UWVMROS1_71abdc844f18f02f45a354967a5f1c644fb20dc14cbc61c64aa41b927e0712a2",
    min_wire_bytes: 68, max_wire_bytes: 196 }
}
pub fn Ros2Geometry_msgsMsgPoseStampedCodec::encode(
  _self : Ros2Geometry_msgsMsgPoseStampedCodec,
  value : Ros2Geometry_msgsMsgPoseStamped
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 196, error: 0 }
  write_Ros2Geometry_msgsMsgPoseStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 68 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgPoseStampedCodec::decode(
  _self : Ros2Geometry_msgsMsgPoseStampedCodec,
  input : Bytes
) -> Result[Ros2Geometry_msgsMsgPoseStamped, Int] {
  if input.length() < 68 || input.length() > 196 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgPoseStamped(writer : BoundedWriter, value : Ros2Geometry_msgsMsgPoseStamped) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.pose
  write_Ros2Geometry_msgsMsgPose(writer, part1)
}
fn read_Ros2Geometry_msgsMsgPoseStamped(reader : BoundedReader) -> Ros2Geometry_msgsMsgPoseStamped {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Geometry_msgsMsgPose(reader)
  { header: part0, pose: part1 }
}

pub(all) struct Ros2Grab_demo_msgsMsgGraspCandidate {
  mut header : Ros2Std_msgsMsgHeader
  mut pose : Ros2Geometry_msgsMsgPoseStamped
  mut group_name : String
  mut confidence : Float
  mut object_class : String
}
pub fn Ros2Grab_demo_msgsMsgGraspCandidate::new() -> Ros2Grab_demo_msgsMsgGraspCandidate {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    pose: Ros2Geometry_msgsMsgPoseStamped::new(),
    group_name: "",
    confidence: (0U).reinterpret_as_float(),
    object_class: "",
  }
}
pub(all) struct Ros2Grab_demo_msgsMsgGraspCandidateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Grab_demo_msgsMsgGraspCandidateCodec::new() -> Ros2Grab_demo_msgsMsgGraspCandidateCodec {
  { ros_version: 2, native_type: "grab_demo_msgs/msg/GraspCandidate",
    native_identity: None,
    codec_identity: "UWVMROS1_5dfe34bfcc75bea067c1c30082a8c462575b2790a7326f85f90e7f913600bf37",
    min_wire_bytes: 92, max_wire_bytes: 604 }
}
pub fn Ros2Grab_demo_msgsMsgGraspCandidateCodec::encode(
  _self : Ros2Grab_demo_msgsMsgGraspCandidateCodec,
  value : Ros2Grab_demo_msgsMsgGraspCandidate
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 604, error: 0 }
  write_Ros2Grab_demo_msgsMsgGraspCandidate(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 92 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Grab_demo_msgsMsgGraspCandidateCodec::decode(
  _self : Ros2Grab_demo_msgsMsgGraspCandidateCodec,
  input : Bytes
) -> Result[Ros2Grab_demo_msgsMsgGraspCandidate, Int] {
  if input.length() < 92 || input.length() > 604 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Grab_demo_msgsMsgGraspCandidate(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Grab_demo_msgsMsgGraspCandidate(writer : BoundedWriter, value : Ros2Grab_demo_msgsMsgGraspCandidate) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.pose
  write_Ros2Geometry_msgsMsgPoseStamped(writer, part1)
  let part2 = value.group_name
  writer.text(part2, 128)
  let part3 = value.confidence
  writer.float32(part3)
  let part4 = value.object_class
  writer.text(part4, 128)
}
fn read_Ros2Grab_demo_msgsMsgGraspCandidate(reader : BoundedReader) -> Ros2Grab_demo_msgsMsgGraspCandidate {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  let part2 = reader.text(128)
  let part3 = reader.float32()
  let part4 = reader.text(128)
  { header: part0, pose: part1, group_name: part2, confidence: part3, object_class: part4 }
}

pub(all) struct Ros2Grab_demo_msgsMsgIKRequest {
  mut group_name : String
  mut frame_id : String
  mut position : Ros2Geometry_msgsMsgPoint
  mut orientation : Ros2Geometry_msgsMsgQuaternion
}
pub fn Ros2Grab_demo_msgsMsgIKRequest::new() -> Ros2Grab_demo_msgsMsgIKRequest {
  {
    group_name: "",
    frame_id: "",
    position: Ros2Geometry_msgsMsgPoint::new(),
    orientation: Ros2Geometry_msgsMsgQuaternion::new(),
  }
}
pub(all) struct Ros2Grab_demo_msgsMsgIKRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Grab_demo_msgsMsgIKRequestCodec::new() -> Ros2Grab_demo_msgsMsgIKRequestCodec {
  { ros_version: 2, native_type: "grab_demo_msgs/msg/IKRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_b438f80854b2fee423938302dc415e1ef68a3988675998c427eab62a5ecc39fa",
    min_wire_bytes: 64, max_wire_bytes: 320 }
}
pub fn Ros2Grab_demo_msgsMsgIKRequestCodec::encode(
  _self : Ros2Grab_demo_msgsMsgIKRequestCodec,
  value : Ros2Grab_demo_msgsMsgIKRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 320, error: 0 }
  write_Ros2Grab_demo_msgsMsgIKRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 64 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Grab_demo_msgsMsgIKRequestCodec::decode(
  _self : Ros2Grab_demo_msgsMsgIKRequestCodec,
  input : Bytes
) -> Result[Ros2Grab_demo_msgsMsgIKRequest, Int] {
  if input.length() < 64 || input.length() > 320 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Grab_demo_msgsMsgIKRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Grab_demo_msgsMsgIKRequest(writer : BoundedWriter, value : Ros2Grab_demo_msgsMsgIKRequest) -> Unit {
  let part0 = value.group_name
  writer.text(part0, 128)
  let part1 = value.frame_id
  writer.text(part1, 128)
  let part2 = value.position
  write_Ros2Geometry_msgsMsgPoint(writer, part2)
  let part3 = value.orientation
  write_Ros2Geometry_msgsMsgQuaternion(writer, part3)
}
fn read_Ros2Grab_demo_msgsMsgIKRequest(reader : BoundedReader) -> Ros2Grab_demo_msgsMsgIKRequest {
  let part0 = reader.text(128)
  let part1 = reader.text(128)
  let part2 = read_Ros2Geometry_msgsMsgPoint(reader)
  let part3 = read_Ros2Geometry_msgsMsgQuaternion(reader)
  { group_name: part0, frame_id: part1, position: part2, orientation: part3 }
}

