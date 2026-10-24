// @brief Complete original flexiv ros1_noetic canonical values.
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

/// @brief Own every original field of flexiv_msgs/JointPosVel.
/// @details Canonical extent 112..112 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros1Flexiv_msgsJointPosVel {
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/JointPosVel.positions; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut positions : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/JointPosVel.velocities; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut velocities : Array[Double]
}
pub fn Ros1Flexiv_msgsJointPosVel::new() -> Ros1Flexiv_msgsJointPosVel {
  {
    positions: Array::makei(7, fn(_) { 0.0 }),
    velocities: Array::makei(7, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros1Flexiv_msgsJointPosVelCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Flexiv_msgsJointPosVelCodec::new() -> Ros1Flexiv_msgsJointPosVelCodec {
  { ros_version: 1, native_type: "flexiv_msgs/JointPosVel",
    native_identity: None,
    codec_identity: "UWVMROS1_60868295fe1798f349d7f675035bd476f0f6caa8b7568e7a66487c32459fdfaa",
    min_wire_bytes: 112, max_wire_bytes: 112 }
}
pub fn Ros1Flexiv_msgsJointPosVelCodec::encode(_self : Ros1Flexiv_msgsJointPosVelCodec, value : Ros1Flexiv_msgsJointPosVel) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 112, error: 0 }
  write_Ros1Flexiv_msgsJointPosVel(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 112 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Flexiv_msgsJointPosVelCodec::decode(_self : Ros1Flexiv_msgsJointPosVelCodec, input : Bytes) ->
        Result[Ros1Flexiv_msgsJointPosVel, Int] {
  if input.length() < 112 || input.length() > 112 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Flexiv_msgsJointPosVel(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Flexiv_msgsJointPosVel(writer : BoundedWriter, value : Ros1Flexiv_msgsJointPosVel) -> Unit {
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
fn read_Ros1Flexiv_msgsJointPosVel(reader : BoundedReader) -> Ros1Flexiv_msgsJointPosVel {
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

/// @brief Own every original field of flexiv_msgs/Mode.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros1Flexiv_msgsMode {
  /// @brief Retain the complete original int8 field.
  /// @details Original flexiv_msgs/Mode.mode; native type int8. Scalar value. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut mode : Int
}
pub fn Ros1Flexiv_msgsMode::new() -> Ros1Flexiv_msgsMode {
  {
    mode: 0,
  }
}
pub(all) struct Ros1Flexiv_msgsModeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Flexiv_msgsModeCodec::new() -> Ros1Flexiv_msgsModeCodec {
  { ros_version: 1, native_type: "flexiv_msgs/Mode",
    native_identity: None,
    codec_identity: "UWVMROS1_85789f97962c70edfe4703d5a78ed198655e3ebe300f5a9c588d739bae87f422",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros1Flexiv_msgsModeCodec::encode(_self : Ros1Flexiv_msgsModeCodec, value : Ros1Flexiv_msgsMode) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros1Flexiv_msgsMode(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Flexiv_msgsModeCodec::decode(_self : Ros1Flexiv_msgsModeCodec, input : Bytes) -> Result[Ros1Flexiv_msgsMode, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Flexiv_msgsMode(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Flexiv_msgsMode(writer : BoundedWriter, value : Ros1Flexiv_msgsMode) -> Unit {
  let part0 = value.mode
  if part0 < -128 || part0 > 127 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros1Flexiv_msgsMode(reader : BoundedReader) -> Ros1Flexiv_msgsMode {
  let part0 = reader.signed8()
  { mode: part0 }
}

/// @brief Own every original field of geometry_msgs/Point.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros1Geometry_msgsPoint {
  /// @brief This contains the position of a point in free space
  /// @details Original geometry_msgs/Point.x; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut x : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Point.y; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut y : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Point.z; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut z : Double
}
pub fn Ros1Geometry_msgsPoint::new() -> Ros1Geometry_msgsPoint {
  {
    x: 0.0,
    y: 0.0,
    z: 0.0,
  }
}
pub(all) struct Ros1Geometry_msgsPointCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Geometry_msgsPointCodec::new() -> Ros1Geometry_msgsPointCodec {
  { ros_version: 1, native_type: "geometry_msgs/Point",
    native_identity: None,
    codec_identity: "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros1Geometry_msgsPointCodec::encode(_self : Ros1Geometry_msgsPointCodec, value : Ros1Geometry_msgsPoint) -> Result[Bytes,
        Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros1Geometry_msgsPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Geometry_msgsPointCodec::decode(_self : Ros1Geometry_msgsPointCodec, input : Bytes) -> Result[Ros1Geometry_msgsPoint,
        Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Geometry_msgsPoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Geometry_msgsPoint(writer : BoundedWriter, value : Ros1Geometry_msgsPoint) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
}
fn read_Ros1Geometry_msgsPoint(reader : BoundedReader) -> Ros1Geometry_msgsPoint {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  { x: part0, y: part1, z: part2 }
}

/// @brief Own every original field of geometry_msgs/Quaternion.
/// @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros1Geometry_msgsQuaternion {
  /// @brief This represents an orientation in free space in quaternion form.
  /// @details Original geometry_msgs/Quaternion.x; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut x : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Quaternion.y; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut y : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Quaternion.z; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut z : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Quaternion.w; native type float64. Scalar value. Finite IEEE values;
  /// no implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut w : Double
}
pub fn Ros1Geometry_msgsQuaternion::new() -> Ros1Geometry_msgsQuaternion {
  {
    x: 0.0,
    y: 0.0,
    z: 0.0,
    w: 0.0,
  }
}
pub(all) struct Ros1Geometry_msgsQuaternionCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Geometry_msgsQuaternionCodec::new() -> Ros1Geometry_msgsQuaternionCodec {
  { ros_version: 1, native_type: "geometry_msgs/Quaternion",
    native_identity: None,
    codec_identity: "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934",
    min_wire_bytes: 32, max_wire_bytes: 32 }
}
pub fn Ros1Geometry_msgsQuaternionCodec::encode(_self : Ros1Geometry_msgsQuaternionCodec, value : Ros1Geometry_msgsQuaternion) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros1Geometry_msgsQuaternion(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Geometry_msgsQuaternionCodec::decode(_self : Ros1Geometry_msgsQuaternionCodec, input : Bytes) ->
        Result[Ros1Geometry_msgsQuaternion, Int] {
  if input.length() < 32 || input.length() > 32 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Geometry_msgsQuaternion(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Geometry_msgsQuaternion(writer : BoundedWriter, value : Ros1Geometry_msgsQuaternion) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
  let part3 = value.w
  writer.float64(part3)
}
fn read_Ros1Geometry_msgsQuaternion(reader : BoundedReader) -> Ros1Geometry_msgsQuaternion {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { x: part0, y: part1, z: part2, w: part3 }
}

/// @brief Own every original field of geometry_msgs/Pose.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros1Geometry_msgsPose {
  /// @brief A representation of pose in free space, composed of position and orientation.
  /// @details Original geometry_msgs/Pose.position; native type geometry_msgs/Point. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut position : Ros1Geometry_msgsPoint
  /// @brief Retain the complete original geometry_msgs/Quaternion field.
  /// @details Original geometry_msgs/Pose.orientation; native type geometry_msgs/Quaternion. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut orientation : Ros1Geometry_msgsQuaternion
}
pub fn Ros1Geometry_msgsPose::new() -> Ros1Geometry_msgsPose {
  {
    position: Ros1Geometry_msgsPoint::new(),
    orientation: Ros1Geometry_msgsQuaternion::new(),
  }
}
pub(all) struct Ros1Geometry_msgsPoseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Geometry_msgsPoseCodec::new() -> Ros1Geometry_msgsPoseCodec {
  { ros_version: 1, native_type: "geometry_msgs/Pose",
    native_identity: None,
    codec_identity: "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471",
    min_wire_bytes: 56, max_wire_bytes: 56 }
}
pub fn Ros1Geometry_msgsPoseCodec::encode(_self : Ros1Geometry_msgsPoseCodec, value : Ros1Geometry_msgsPose) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros1Geometry_msgsPose(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Geometry_msgsPoseCodec::decode(_self : Ros1Geometry_msgsPoseCodec, input : Bytes) -> Result[Ros1Geometry_msgsPose, Int] {
  if input.length() < 56 || input.length() > 56 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Geometry_msgsPose(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Geometry_msgsPose(writer : BoundedWriter, value : Ros1Geometry_msgsPose) -> Unit {
  let part0 = value.position
  write_Ros1Geometry_msgsPoint(writer, part0)
  let part1 = value.orientation
  write_Ros1Geometry_msgsQuaternion(writer, part1)
}
fn read_Ros1Geometry_msgsPose(reader : BoundedReader) -> Ros1Geometry_msgsPose {
  let part0 = read_Ros1Geometry_msgsPoint(reader)
  let part1 = read_Ros1Geometry_msgsQuaternion(reader)
  { position: part0, orientation: part1 }
}

/// @brief Own every original field of geometry_msgs/Vector3.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros1Geometry_msgsVector3 {
  /// @brief This represents a vector in free space. It is only meant to represent a direction. Therefore,
  /// it does not make sense to apply a translation to it (e.g., when applying a generic rigid
  /// transformation to a Vector3, tf2 will only apply the rotation). If you want your data to be
  /// translatable too, use the geometry_msgs/Point message instead.
  /// @details Original geometry_msgs/Vector3.x; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut x : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Vector3.y; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut y : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/Vector3.z; native type float64. Scalar value. Finite IEEE values; no
  /// implicit unit conversion. Storage belongs to the complete value and acquires no ROS resource.
  mut z : Double
}
pub fn Ros1Geometry_msgsVector3::new() -> Ros1Geometry_msgsVector3 {
  {
    x: 0.0,
    y: 0.0,
    z: 0.0,
  }
}
pub(all) struct Ros1Geometry_msgsVector3Codec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Geometry_msgsVector3Codec::new() -> Ros1Geometry_msgsVector3Codec {
  { ros_version: 1, native_type: "geometry_msgs/Vector3",
    native_identity: None,
    codec_identity: "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros1Geometry_msgsVector3Codec::encode(_self : Ros1Geometry_msgsVector3Codec, value : Ros1Geometry_msgsVector3) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros1Geometry_msgsVector3(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Geometry_msgsVector3Codec::decode(_self : Ros1Geometry_msgsVector3Codec, input : Bytes) ->
        Result[Ros1Geometry_msgsVector3, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Geometry_msgsVector3(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Geometry_msgsVector3(writer : BoundedWriter, value : Ros1Geometry_msgsVector3) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
}
fn read_Ros1Geometry_msgsVector3(reader : BoundedReader) -> Ros1Geometry_msgsVector3 {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  { x: part0, y: part1, z: part2 }
}

/// @brief Own every original field of geometry_msgs/Accel.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros1Geometry_msgsAccel {
  /// @brief This expresses acceleration in free space broken into its linear and angular parts.
  /// @details Original geometry_msgs/Accel.linear; native type geometry_msgs/Vector3. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut linear : Ros1Geometry_msgsVector3
  /// @brief Retain the complete original geometry_msgs/Vector3 field.
  /// @details Original geometry_msgs/Accel.angular; native type geometry_msgs/Vector3. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut angular : Ros1Geometry_msgsVector3
}
pub fn Ros1Geometry_msgsAccel::new() -> Ros1Geometry_msgsAccel {
  {
    linear: Ros1Geometry_msgsVector3::new(),
    angular: Ros1Geometry_msgsVector3::new(),
  }
}
pub(all) struct Ros1Geometry_msgsAccelCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Geometry_msgsAccelCodec::new() -> Ros1Geometry_msgsAccelCodec {
  { ros_version: 1, native_type: "geometry_msgs/Accel",
    native_identity: None,
    codec_identity: "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros1Geometry_msgsAccelCodec::encode(_self : Ros1Geometry_msgsAccelCodec, value : Ros1Geometry_msgsAccel) -> Result[Bytes,
        Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros1Geometry_msgsAccel(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Geometry_msgsAccelCodec::decode(_self : Ros1Geometry_msgsAccelCodec, input : Bytes) -> Result[Ros1Geometry_msgsAccel,
        Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Geometry_msgsAccel(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Geometry_msgsAccel(writer : BoundedWriter, value : Ros1Geometry_msgsAccel) -> Unit {
  let part0 = value.linear
  write_Ros1Geometry_msgsVector3(writer, part0)
  let part1 = value.angular
  write_Ros1Geometry_msgsVector3(writer, part1)
}
fn read_Ros1Geometry_msgsAccel(reader : BoundedReader) -> Ros1Geometry_msgsAccel {
  let part0 = read_Ros1Geometry_msgsVector3(reader)
  let part1 = read_Ros1Geometry_msgsVector3(reader)
  { linear: part0, angular: part1 }
}

/// @brief Own every original field of geometry_msgs/Wrench.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros1Geometry_msgsWrench {
  /// @brief This represents force in free space, separated into its linear and angular parts.
  /// @details Original geometry_msgs/Wrench.force; native type geometry_msgs/Vector3. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut force : Ros1Geometry_msgsVector3
  /// @brief Retain the complete original geometry_msgs/Vector3 field.
  /// @details Original geometry_msgs/Wrench.torque; native type geometry_msgs/Vector3. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut torque : Ros1Geometry_msgsVector3
}
pub fn Ros1Geometry_msgsWrench::new() -> Ros1Geometry_msgsWrench {
  {
    force: Ros1Geometry_msgsVector3::new(),
    torque: Ros1Geometry_msgsVector3::new(),
  }
}
pub(all) struct Ros1Geometry_msgsWrenchCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Geometry_msgsWrenchCodec::new() -> Ros1Geometry_msgsWrenchCodec {
  { ros_version: 1, native_type: "geometry_msgs/Wrench",
    native_identity: None,
    codec_identity: "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros1Geometry_msgsWrenchCodec::encode(_self : Ros1Geometry_msgsWrenchCodec, value : Ros1Geometry_msgsWrench) -> Result[Bytes,
        Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros1Geometry_msgsWrench(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Geometry_msgsWrenchCodec::decode(_self : Ros1Geometry_msgsWrenchCodec, input : Bytes) -> Result[Ros1Geometry_msgsWrench,
        Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Geometry_msgsWrench(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Geometry_msgsWrench(writer : BoundedWriter, value : Ros1Geometry_msgsWrench) -> Unit {
  let part0 = value.force
  write_Ros1Geometry_msgsVector3(writer, part0)
  let part1 = value.torque
  write_Ros1Geometry_msgsVector3(writer, part1)
}
fn read_Ros1Geometry_msgsWrench(reader : BoundedReader) -> Ros1Geometry_msgsWrench {
  let part0 = read_Ros1Geometry_msgsVector3(reader)
  let part1 = read_Ros1Geometry_msgsVector3(reader)
  { force: part0, torque: part1 }
}

/// @brief Own every original field of flexiv_msgs/RobotStates.
/// @details Canonical extent 864..864 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros1Flexiv_msgsRobotStates {
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.q; native type float64. Exactly 7 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut q : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.theta; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut theta : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.dq; native type float64. Exactly 7 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut dq : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.dtheta; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut dtheta : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.tau; native type float64. Exactly 7 elements. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut tau : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.tau_des; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut tau_des : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.tau_dot; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut tau_dot : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/RobotStates.tau_ext; native type float64. Exactly 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut tau_ext : Array[Double]
  /// @brief Retain the complete original geometry_msgs/Pose field.
  /// @details Original flexiv_msgs/RobotStates.tcp_pose; native type geometry_msgs/Pose. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut tcp_pose : Ros1Geometry_msgsPose
  /// @brief Retain the complete original geometry_msgs/Pose field.
  /// @details Original flexiv_msgs/RobotStates.tcp_pose_des; native type geometry_msgs/Pose. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut tcp_pose_des : Ros1Geometry_msgsPose
  /// @brief Retain the complete original geometry_msgs/Accel field.
  /// @details Original flexiv_msgs/RobotStates.tcp_vel; native type geometry_msgs/Accel. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut tcp_vel : Ros1Geometry_msgsAccel
  /// @brief Retain the complete original geometry_msgs/Pose field.
  /// @details Original flexiv_msgs/RobotStates.cam_pose; native type geometry_msgs/Pose. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut cam_pose : Ros1Geometry_msgsPose
  /// @brief Retain the complete original geometry_msgs/Pose field.
  /// @details Original flexiv_msgs/RobotStates.flange_pose; native type geometry_msgs/Pose. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut flange_pose : Ros1Geometry_msgsPose
  /// @brief Retain the complete original geometry_msgs/Wrench field.
  /// @details Original flexiv_msgs/RobotStates.ft_sensor_raw; native type geometry_msgs/Wrench. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut ft_sensor_raw : Ros1Geometry_msgsWrench
  /// @brief Retain the complete original geometry_msgs/Wrench field.
  /// @details Original flexiv_msgs/RobotStates.ext_wrench_tcp_frame; native type geometry_msgs/Wrench.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut ext_wrench_tcp_frame : Ros1Geometry_msgsWrench
  /// @brief Retain the complete original geometry_msgs/Wrench field.
  /// @details Original flexiv_msgs/RobotStates.ext_wrench_base_frame; native type geometry_msgs/Wrench.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut ext_wrench_base_frame : Ros1Geometry_msgsWrench
}
pub fn Ros1Flexiv_msgsRobotStates::new() -> Ros1Flexiv_msgsRobotStates {
  {
    q: Array::makei(7, fn(_) { 0.0 }),
    theta: Array::makei(7, fn(_) { 0.0 }),
    dq: Array::makei(7, fn(_) { 0.0 }),
    dtheta: Array::makei(7, fn(_) { 0.0 }),
    tau: Array::makei(7, fn(_) { 0.0 }),
    tau_des: Array::makei(7, fn(_) { 0.0 }),
    tau_dot: Array::makei(7, fn(_) { 0.0 }),
    tau_ext: Array::makei(7, fn(_) { 0.0 }),
    tcp_pose: Ros1Geometry_msgsPose::new(),
    tcp_pose_des: Ros1Geometry_msgsPose::new(),
    tcp_vel: Ros1Geometry_msgsAccel::new(),
    cam_pose: Ros1Geometry_msgsPose::new(),
    flange_pose: Ros1Geometry_msgsPose::new(),
    ft_sensor_raw: Ros1Geometry_msgsWrench::new(),
    ext_wrench_tcp_frame: Ros1Geometry_msgsWrench::new(),
    ext_wrench_base_frame: Ros1Geometry_msgsWrench::new(),
  }
}
pub(all) struct Ros1Flexiv_msgsRobotStatesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Flexiv_msgsRobotStatesCodec::new() -> Ros1Flexiv_msgsRobotStatesCodec {
  { ros_version: 1, native_type: "flexiv_msgs/RobotStates",
    native_identity: None,
    codec_identity: "UWVMROS1_a64419da913e6fafce645177a491cc77a1dcee9ef785bc04380e7aebaeeb12a8",
    min_wire_bytes: 864, max_wire_bytes: 864 }
}
pub fn Ros1Flexiv_msgsRobotStatesCodec::encode(_self : Ros1Flexiv_msgsRobotStatesCodec, value : Ros1Flexiv_msgsRobotStates) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 864, error: 0 }
  write_Ros1Flexiv_msgsRobotStates(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 864 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Flexiv_msgsRobotStatesCodec::decode(_self : Ros1Flexiv_msgsRobotStatesCodec, input : Bytes) ->
        Result[Ros1Flexiv_msgsRobotStates, Int] {
  if input.length() < 864 || input.length() > 864 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Flexiv_msgsRobotStates(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Flexiv_msgsRobotStates(writer : BoundedWriter, value : Ros1Flexiv_msgsRobotStates) -> Unit {
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
  write_Ros1Geometry_msgsPose(writer, part8)
  let part9 = value.tcp_pose_des
  write_Ros1Geometry_msgsPose(writer, part9)
  let part10 = value.tcp_vel
  write_Ros1Geometry_msgsAccel(writer, part10)
  let part11 = value.cam_pose
  write_Ros1Geometry_msgsPose(writer, part11)
  let part12 = value.flange_pose
  write_Ros1Geometry_msgsPose(writer, part12)
  let part13 = value.ft_sensor_raw
  write_Ros1Geometry_msgsWrench(writer, part13)
  let part14 = value.ext_wrench_tcp_frame
  write_Ros1Geometry_msgsWrench(writer, part14)
  let part15 = value.ext_wrench_base_frame
  write_Ros1Geometry_msgsWrench(writer, part15)
}
fn read_Ros1Flexiv_msgsRobotStates(reader : BoundedReader) -> Ros1Flexiv_msgsRobotStates {
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
  let part8 = read_Ros1Geometry_msgsPose(reader)
  let part9 = read_Ros1Geometry_msgsPose(reader)
  let part10 = read_Ros1Geometry_msgsAccel(reader)
  let part11 = read_Ros1Geometry_msgsPose(reader)
  let part12 = read_Ros1Geometry_msgsPose(reader)
  let part13 = read_Ros1Geometry_msgsWrench(reader)
  let part14 = read_Ros1Geometry_msgsWrench(reader)
  let part15 = read_Ros1Geometry_msgsWrench(reader)
  { q: part0, theta: part1, dq: part2, dtheta: part3, tau: part4, tau_des: part5, tau_dot: part6, tau_ext: part7, tcp_pose: part8,
          tcp_pose_des: part9, tcp_vel: part10, cam_pose: part11, flange_pose: part12, ft_sensor_raw: part13, ext_wrench_tcp_frame:
          part14, ext_wrench_base_frame: part15 }
}

