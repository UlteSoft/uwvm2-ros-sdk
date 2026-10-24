// @brief Complete original flexiv ros2_foxy canonical values.
// @details UTF-8 limits count bytes and sequence limits count elements. Complete-value codecs retain
// every original field; native registration and manually granted ROS authority are separate. Caller-
// owned values and codec failures are described by each operation and the locale API reference.
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

/// @brief Own every original field of flexiv_msgs/msg/JointPosVel.
/// @details Canonical extent 112..112 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgJointPosVel {
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut positions : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut velocities : Array[Double]
}
pub fn Ros2Flexiv_msgsMsgJointPosVel::new() -> Ros2Flexiv_msgsMsgJointPosVel {
  {
    positions: Array::makei(7, fn(_) { 0.0 }),
    velocities: Array::makei(7, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros2Flexiv_msgsMsgJointPosVelCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgJointPosVelCodec::new() -> Ros2Flexiv_msgsMsgJointPosVelCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/JointPosVel",
    native_identity: None,
    codec_identity: "UWVMROS1_c56feb3a74545187381d2d82c230038aaa70fca3a9243486374d69f3fc3103a8",
    min_wire_bytes: 112, max_wire_bytes: 112 }
}
pub fn Ros2Flexiv_msgsMsgJointPosVelCodec::encode(_self : Ros2Flexiv_msgsMsgJointPosVelCodec, value : Ros2Flexiv_msgsMsgJointPosVel)
        -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 112, error: 0 }
  write_Ros2Flexiv_msgsMsgJointPosVel(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 112 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgJointPosVelCodec::decode(_self : Ros2Flexiv_msgsMsgJointPosVelCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgJointPosVel, Int] {
  if input.length() < 112 || input.length() > 112 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgJointPosVel(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgJointPosVel(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgJointPosVel) -> Unit {
  let part0 = value.positions
  let count0 = part0.length()
  if count0 != 7 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.velocities
  let count1 = part1.length()
  if count1 != 7 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
}
fn read_Ros2Flexiv_msgsMsgJointPosVel(reader : BoundedReader) -> Ros2Flexiv_msgsMsgJointPosVel {
  let part0 : Array[Double] = []
  let count0 = 7
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = 7
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  { positions: part0, velocities: part1 }
}

/// @brief Own every original field of flexiv_msgs/msg/Mode.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgMode {
  /// @brief Retain the complete original int8 field.
  /// @details Original flexiv_msgs/msg/Mode.mode; native type int8. Scalar value. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut mode : Int
}
pub fn Ros2Flexiv_msgsMsgMode::new() -> Ros2Flexiv_msgsMsgMode {
  {
    mode: 0,
  }
}
pub(all) struct Ros2Flexiv_msgsMsgModeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgModeCodec::new() -> Ros2Flexiv_msgsMsgModeCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/Mode",
    native_identity: None,
    codec_identity: "UWVMROS1_285581852d18aa98aa5f42e3d920b263b9bc6907766f17daa503c58e81a2064f",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Flexiv_msgsMsgModeCodec::encode(_self : Ros2Flexiv_msgsMsgModeCodec, value : Ros2Flexiv_msgsMsgMode) -> Result[Bytes,
        Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Flexiv_msgsMsgMode(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgModeCodec::decode(_self : Ros2Flexiv_msgsMsgModeCodec, input : Bytes) -> Result[Ros2Flexiv_msgsMsgMode,
        Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgMode(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgMode(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgMode) -> Unit {
  let part0 = value.mode
  if part0 < -128 || part0 > 127 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Flexiv_msgsMsgMode(reader : BoundedReader) -> Ros2Flexiv_msgsMsgMode {
  let part0 = reader.signed8()
  { mode: part0 }
}

/// @brief Own every original field of geometry_msgs/msg/Point.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgPoint {
  /// @brief This contains the position of a point in free space
  /// @details Original geometry_msgs/msg/Point.x; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut x : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Point.y; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut y : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Point.z; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
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
pub fn Ros2Geometry_msgsMsgPointCodec::encode(_self : Ros2Geometry_msgsMsgPointCodec, value : Ros2Geometry_msgsMsgPoint) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Geometry_msgsMsgPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgPointCodec::decode(_self : Ros2Geometry_msgsMsgPointCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgPoint, Int] {
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

/// @brief Own every original field of geometry_msgs/msg/Quaternion.
/// @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgQuaternion {
  /// @brief This represents an orientation in free space in quaternion form.
  /// @details Original geometry_msgs/msg/Quaternion.x; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut x : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.y; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut y : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.z; native type float64. Scalar value. Declared
  /// original default 0.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut z : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Quaternion.w; native type float64. Scalar value. Declared
  /// original default 1.0. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
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
pub fn Ros2Geometry_msgsMsgQuaternionCodec::encode(_self : Ros2Geometry_msgsMsgQuaternionCodec, value :
        Ros2Geometry_msgsMsgQuaternion) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros2Geometry_msgsMsgQuaternion(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgQuaternionCodec::decode(_self : Ros2Geometry_msgsMsgQuaternionCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgQuaternion, Int] {
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

/// @brief Own every original field of geometry_msgs/msg/Pose.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgPose {
  /// @brief A representation of pose in free space, composed of position and orientation.
  /// @details Original geometry_msgs/msg/Pose.position; native type geometry_msgs/msg/Point. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut position : Ros2Geometry_msgsMsgPoint
  /// @brief Retain the complete original geometry_msgs/msg/Quaternion field.
  /// @details Original geometry_msgs/msg/Pose.orientation; native type geometry_msgs/msg/Quaternion.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
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
pub fn Ros2Geometry_msgsMsgPoseCodec::encode(_self : Ros2Geometry_msgsMsgPoseCodec, value : Ros2Geometry_msgsMsgPose) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros2Geometry_msgsMsgPose(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgPoseCodec::decode(_self : Ros2Geometry_msgsMsgPoseCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgPose, Int] {
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

/// @brief Own every original field of geometry_msgs/msg/Vector3.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgVector3 {
  /// @brief This represents a vector in free space. This is semantically different than a point. A vector
  /// is always anchored at the origin. When a transform is applied to a vector, only the rotational
  /// component is applied.
  /// @details Original geometry_msgs/msg/Vector3.x; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut x : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Vector3.y; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut y : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Vector3.z; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut z : Double
}
pub fn Ros2Geometry_msgsMsgVector3::new() -> Ros2Geometry_msgsMsgVector3 {
  {
    x: 0.0,
    y: 0.0,
    z: 0.0,
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
pub fn Ros2Geometry_msgsMsgVector3Codec::encode(_self : Ros2Geometry_msgsMsgVector3Codec, value : Ros2Geometry_msgsMsgVector3) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Geometry_msgsMsgVector3(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgVector3Codec::decode(_self : Ros2Geometry_msgsMsgVector3Codec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgVector3, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgVector3(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgVector3(writer : BoundedWriter, value : Ros2Geometry_msgsMsgVector3) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
}
fn read_Ros2Geometry_msgsMsgVector3(reader : BoundedReader) -> Ros2Geometry_msgsMsgVector3 {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  { x: part0, y: part1, z: part2 }
}

/// @brief Own every original field of geometry_msgs/msg/Accel.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgAccel {
  /// @brief This expresses acceleration in free space broken into its linear and angular parts.
  /// @details Original geometry_msgs/msg/Accel.linear; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut linear : Ros2Geometry_msgsMsgVector3
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Accel.angular; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut angular : Ros2Geometry_msgsMsgVector3
}
pub fn Ros2Geometry_msgsMsgAccel::new() -> Ros2Geometry_msgsMsgAccel {
  {
    linear: Ros2Geometry_msgsMsgVector3::new(),
    angular: Ros2Geometry_msgsMsgVector3::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgAccelCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgAccelCodec::new() -> Ros2Geometry_msgsMsgAccelCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Accel",
    native_identity: None,
    codec_identity: "UWVMROS1_87264cb87970315248345c43cc629bbc0c9f9b2a8c6c4bc089da81c7af552fde",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros2Geometry_msgsMsgAccelCodec::encode(_self : Ros2Geometry_msgsMsgAccelCodec, value : Ros2Geometry_msgsMsgAccel) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros2Geometry_msgsMsgAccel(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgAccelCodec::decode(_self : Ros2Geometry_msgsMsgAccelCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgAccel, Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgAccel(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgAccel(writer : BoundedWriter, value : Ros2Geometry_msgsMsgAccel) -> Unit {
  let part0 = value.linear
  write_Ros2Geometry_msgsMsgVector3(writer, part0)
  let part1 = value.angular
  write_Ros2Geometry_msgsMsgVector3(writer, part1)
}
fn read_Ros2Geometry_msgsMsgAccel(reader : BoundedReader) -> Ros2Geometry_msgsMsgAccel {
  let part0 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part1 = read_Ros2Geometry_msgsMsgVector3(reader)
  { linear: part0, angular: part1 }
}

/// @brief Own every original field of geometry_msgs/msg/Wrench.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgWrench {
  /// @brief This represents force in free space, separated into its linear and angular parts.
  /// @details Original geometry_msgs/msg/Wrench.force; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut force : Ros2Geometry_msgsMsgVector3
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Wrench.torque; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut torque : Ros2Geometry_msgsMsgVector3
}
pub fn Ros2Geometry_msgsMsgWrench::new() -> Ros2Geometry_msgsMsgWrench {
  {
    force: Ros2Geometry_msgsMsgVector3::new(),
    torque: Ros2Geometry_msgsMsgVector3::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgWrenchCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgWrenchCodec::new() -> Ros2Geometry_msgsMsgWrenchCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Wrench",
    native_identity: None,
    codec_identity: "UWVMROS1_fdfdf2474c0129b0ce1f85972cc87fd80478ac7d2429d9de1ec58951a82a11b6",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros2Geometry_msgsMsgWrenchCodec::encode(_self : Ros2Geometry_msgsMsgWrenchCodec, value : Ros2Geometry_msgsMsgWrench) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros2Geometry_msgsMsgWrench(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgWrenchCodec::decode(_self : Ros2Geometry_msgsMsgWrenchCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgWrench, Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgWrench(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgWrench(writer : BoundedWriter, value : Ros2Geometry_msgsMsgWrench) -> Unit {
  let part0 = value.force
  write_Ros2Geometry_msgsMsgVector3(writer, part0)
  let part1 = value.torque
  write_Ros2Geometry_msgsMsgVector3(writer, part1)
}
fn read_Ros2Geometry_msgsMsgWrench(reader : BoundedReader) -> Ros2Geometry_msgsMsgWrench {
  let part0 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part1 = read_Ros2Geometry_msgsMsgVector3(reader)
  { force: part0, torque: part1 }
}

/// @brief Own every original field of flexiv_msgs/msg/RobotStates.
/// @details Canonical extent 864..864 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgRobotStates {
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.q; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut q : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut theta : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut dq : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut dtheta : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut tau : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.tau_des; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut tau_des : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut tau_dot : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut tau_ext : Array[Double]
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/Pose. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut tcp_pose : Ros2Geometry_msgsMsgPose
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose_des; native type geometry_msgs/msg/Pose.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut tcp_pose_des : Ros2Geometry_msgsMsgPose
  /// @brief Retain the complete original geometry_msgs/msg/Accel field.
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_vel; native type geometry_msgs/msg/Accel. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut tcp_vel : Ros2Geometry_msgsMsgAccel
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original flexiv_msgs/msg/RobotStates.cam_pose; native type geometry_msgs/msg/Pose. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut cam_pose : Ros2Geometry_msgsMsgPose
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type geometry_msgs/msg/Pose.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut flange_pose : Ros2Geometry_msgsMsgPose
  /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
  /// @details Original flexiv_msgs/msg/RobotStates.ft_sensor_raw; native type geometry_msgs/msg/Wrench.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut ft_sensor_raw : Ros2Geometry_msgsMsgWrench
  /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
  /// @details Original flexiv_msgs/msg/RobotStates.ext_wrench_tcp_frame; native type
  /// geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut ext_wrench_tcp_frame : Ros2Geometry_msgsMsgWrench
  /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
  /// @details Original flexiv_msgs/msg/RobotStates.ext_wrench_base_frame; native type
  /// geometry_msgs/msg/Wrench. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut ext_wrench_base_frame : Ros2Geometry_msgsMsgWrench
}
pub fn Ros2Flexiv_msgsMsgRobotStates::new() -> Ros2Flexiv_msgsMsgRobotStates {
  {
    q: Array::makei(7, fn(_) { 0.0 }),
    theta: Array::makei(7, fn(_) { 0.0 }),
    dq: Array::makei(7, fn(_) { 0.0 }),
    dtheta: Array::makei(7, fn(_) { 0.0 }),
    tau: Array::makei(7, fn(_) { 0.0 }),
    tau_des: Array::makei(7, fn(_) { 0.0 }),
    tau_dot: Array::makei(7, fn(_) { 0.0 }),
    tau_ext: Array::makei(7, fn(_) { 0.0 }),
    tcp_pose: Ros2Geometry_msgsMsgPose::new(),
    tcp_pose_des: Ros2Geometry_msgsMsgPose::new(),
    tcp_vel: Ros2Geometry_msgsMsgAccel::new(),
    cam_pose: Ros2Geometry_msgsMsgPose::new(),
    flange_pose: Ros2Geometry_msgsMsgPose::new(),
    ft_sensor_raw: Ros2Geometry_msgsMsgWrench::new(),
    ext_wrench_tcp_frame: Ros2Geometry_msgsMsgWrench::new(),
    ext_wrench_base_frame: Ros2Geometry_msgsMsgWrench::new(),
  }
}
pub(all) struct Ros2Flexiv_msgsMsgRobotStatesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgRobotStatesCodec::new() -> Ros2Flexiv_msgsMsgRobotStatesCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/RobotStates",
    native_identity: None,
    codec_identity: "UWVMROS1_ce6c3a354edf285fa22f8cfb509c4a5f33c1ef82b7dc3d749ae1ecd29dde844b",
    min_wire_bytes: 864, max_wire_bytes: 864 }
}
pub fn Ros2Flexiv_msgsMsgRobotStatesCodec::encode(_self : Ros2Flexiv_msgsMsgRobotStatesCodec, value : Ros2Flexiv_msgsMsgRobotStates)
        -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 864, error: 0 }
  write_Ros2Flexiv_msgsMsgRobotStates(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 864 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgRobotStatesCodec::decode(_self : Ros2Flexiv_msgsMsgRobotStatesCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgRobotStates, Int] {
  if input.length() < 864 || input.length() > 864 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgRobotStates(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgRobotStates(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgRobotStates) -> Unit {
  let part0 = value.q
  let count0 = part0.length()
  if count0 != 7 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.theta
  let count1 = part1.length()
  if count1 != 7 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.dq
  let count2 = part2.length()
  if count2 != 7 { writer.error = 22; return () }
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.dtheta
  let count3 = part3.length()
  if count3 != 7 { writer.error = 22; return () }
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.tau
  let count4 = part4.length()
  if count4 != 7 { writer.error = 22; return () }
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  let part5 = value.tau_des
  let count5 = part5.length()
  if count5 != 7 { writer.error = 22; return () }
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    writer.float64(element)
  }
  let part6 = value.tau_dot
  let count6 = part6.length()
  if count6 != 7 { writer.error = 22; return () }
  for index = 0; index < count6; index = index + 1 {
    let element = part6[index]
    writer.float64(element)
  }
  let part7 = value.tau_ext
  let count7 = part7.length()
  if count7 != 7 { writer.error = 22; return () }
  for index = 0; index < count7; index = index + 1 {
    let element = part7[index]
    writer.float64(element)
  }
  let part8 = value.tcp_pose
  write_Ros2Geometry_msgsMsgPose(writer, part8)
  let part9 = value.tcp_pose_des
  write_Ros2Geometry_msgsMsgPose(writer, part9)
  let part10 = value.tcp_vel
  write_Ros2Geometry_msgsMsgAccel(writer, part10)
  let part11 = value.cam_pose
  write_Ros2Geometry_msgsMsgPose(writer, part11)
  let part12 = value.flange_pose
  write_Ros2Geometry_msgsMsgPose(writer, part12)
  let part13 = value.ft_sensor_raw
  write_Ros2Geometry_msgsMsgWrench(writer, part13)
  let part14 = value.ext_wrench_tcp_frame
  write_Ros2Geometry_msgsMsgWrench(writer, part14)
  let part15 = value.ext_wrench_base_frame
  write_Ros2Geometry_msgsMsgWrench(writer, part15)
}
fn read_Ros2Flexiv_msgsMsgRobotStates(reader : BoundedReader) -> Ros2Flexiv_msgsMsgRobotStates {
  let part0 : Array[Double] = []
  let count0 = 7
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = 7
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 : Array[Double] = []
  let count2 = 7
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = 7
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 : Array[Double] = []
  let count4 = 7
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.float64())
  }
  let part5 : Array[Double] = []
  let count5 = 7
  for index = 0; index < count5; index = index + 1 {
    part5.push(reader.float64())
  }
  let part6 : Array[Double] = []
  let count6 = 7
  for index = 0; index < count6; index = index + 1 {
    part6.push(reader.float64())
  }
  let part7 : Array[Double] = []
  let count7 = 7
  for index = 0; index < count7; index = index + 1 {
    part7.push(reader.float64())
  }
  let part8 = read_Ros2Geometry_msgsMsgPose(reader)
  let part9 = read_Ros2Geometry_msgsMsgPose(reader)
  let part10 = read_Ros2Geometry_msgsMsgAccel(reader)
  let part11 = read_Ros2Geometry_msgsMsgPose(reader)
  let part12 = read_Ros2Geometry_msgsMsgPose(reader)
  let part13 = read_Ros2Geometry_msgsMsgWrench(reader)
  let part14 = read_Ros2Geometry_msgsMsgWrench(reader)
  let part15 = read_Ros2Geometry_msgsMsgWrench(reader)
  { q: part0, theta: part1, dq: part2, dtheta: part3, tau: part4, tau_des: part5, tau_dot: part6, tau_ext: part7, tcp_pose: part8,
          tcp_pose_des: part9, tcp_vel: part10, cam_pose: part11, flange_pose: part12, ft_sensor_raw: part13, ext_wrench_tcp_frame:
          part14, ext_wrench_base_frame: part15 }
}

