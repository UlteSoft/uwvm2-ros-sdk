// @brief Complete original franka ros2 canonical values.
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

/// @brief Own every original field of builtin_interfaces/msg/Time.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Builtin_interfacesMsgTime {
  /// @brief This message communicates ROS Time defined here:
  /// https://design.ros2.org/articles/clock_and_time.html The seconds component, valid over all int32
  /// values.
  /// @details Original builtin_interfaces/msg/Time.sec; native type int32. Scalar value. Storage belongs
  /// to the complete value and acquires no ROS resource.
  mut sec : Int
  /// @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
  /// e.g. The time -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The time 1.7 seconds is
  /// represented as {sec: 1, nanosec: 7e8}
  /// @details Original builtin_interfaces/msg/Time.nanosec; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
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
pub fn Ros2Builtin_interfacesMsgTimeCodec::encode(_self : Ros2Builtin_interfacesMsgTimeCodec, value : Ros2Builtin_interfacesMsgTime)
        -> Result[Bytes, Int] {
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

/// @brief Own every original field of franka_msgs/action/ErrorRecovery_Goal.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_msgsActionErrorRecovery_Goal { Ros2Franka_msgsActionErrorRecovery_GoalEmpty }
pub fn Ros2Franka_msgsActionErrorRecovery_Goal::new() -> Ros2Franka_msgsActionErrorRecovery_Goal {
        Ros2Franka_msgsActionErrorRecovery_GoalEmpty }
pub(all) struct Ros2Franka_msgsActionErrorRecovery_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionErrorRecovery_GoalCodec::new() -> Ros2Franka_msgsActionErrorRecovery_GoalCodec {
  { ros_version: 2, native_type: "franka_msgs/action/ErrorRecovery_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_2caee3e8d5c04f12239a71f6e9a9259b818b9f1ad75103442bfc9d2343a3a070",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_msgsActionErrorRecovery_GoalCodec::encode(_self : Ros2Franka_msgsActionErrorRecovery_GoalCodec, value :
        Ros2Franka_msgsActionErrorRecovery_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_msgsActionErrorRecovery_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionErrorRecovery_GoalCodec::decode(_self : Ros2Franka_msgsActionErrorRecovery_GoalCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionErrorRecovery_Goal, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionErrorRecovery_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionErrorRecovery_Goal(writer : BoundedWriter, value : Ros2Franka_msgsActionErrorRecovery_Goal) -> Unit {
}
fn read_Ros2Franka_msgsActionErrorRecovery_Goal(reader : BoundedReader) -> Ros2Franka_msgsActionErrorRecovery_Goal {
  Ros2Franka_msgsActionErrorRecovery_GoalEmpty
}

/// @brief Own every original field of franka_msgs/action/ErrorRecovery_Result.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_msgsActionErrorRecovery_Result { Ros2Franka_msgsActionErrorRecovery_ResultEmpty }
pub fn Ros2Franka_msgsActionErrorRecovery_Result::new() -> Ros2Franka_msgsActionErrorRecovery_Result {
        Ros2Franka_msgsActionErrorRecovery_ResultEmpty }
pub(all) struct Ros2Franka_msgsActionErrorRecovery_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionErrorRecovery_ResultCodec::new() -> Ros2Franka_msgsActionErrorRecovery_ResultCodec {
  { ros_version: 2, native_type: "franka_msgs/action/ErrorRecovery_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_9112b16c42034737b96214f23249d499ab6a9f0aee529cfec34c67cdc76809e9",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_msgsActionErrorRecovery_ResultCodec::encode(_self : Ros2Franka_msgsActionErrorRecovery_ResultCodec, value :
        Ros2Franka_msgsActionErrorRecovery_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_msgsActionErrorRecovery_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionErrorRecovery_ResultCodec::decode(_self : Ros2Franka_msgsActionErrorRecovery_ResultCodec, input : Bytes)
        -> Result[Ros2Franka_msgsActionErrorRecovery_Result, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionErrorRecovery_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionErrorRecovery_Result(writer : BoundedWriter, value : Ros2Franka_msgsActionErrorRecovery_Result) ->
        Unit {
}
fn read_Ros2Franka_msgsActionErrorRecovery_Result(reader : BoundedReader) -> Ros2Franka_msgsActionErrorRecovery_Result {
  Ros2Franka_msgsActionErrorRecovery_ResultEmpty
}

/// @brief Own every original field of franka_msgs/action/ErrorRecovery_Feedback.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_msgsActionErrorRecovery_Feedback { Ros2Franka_msgsActionErrorRecovery_FeedbackEmpty }
pub fn Ros2Franka_msgsActionErrorRecovery_Feedback::new() -> Ros2Franka_msgsActionErrorRecovery_Feedback {
        Ros2Franka_msgsActionErrorRecovery_FeedbackEmpty }
pub(all) struct Ros2Franka_msgsActionErrorRecovery_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionErrorRecovery_FeedbackCodec::new() -> Ros2Franka_msgsActionErrorRecovery_FeedbackCodec {
  { ros_version: 2, native_type: "franka_msgs/action/ErrorRecovery_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_cc817bcbe5790860e83c71e50a8c3610cf3965e34036b3099712cdcdb426127f",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_msgsActionErrorRecovery_FeedbackCodec::encode(_self : Ros2Franka_msgsActionErrorRecovery_FeedbackCodec, value :
        Ros2Franka_msgsActionErrorRecovery_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_msgsActionErrorRecovery_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionErrorRecovery_FeedbackCodec::decode(_self : Ros2Franka_msgsActionErrorRecovery_FeedbackCodec, input :
        Bytes) -> Result[Ros2Franka_msgsActionErrorRecovery_Feedback, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionErrorRecovery_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionErrorRecovery_Feedback(writer : BoundedWriter, value : Ros2Franka_msgsActionErrorRecovery_Feedback) ->
        Unit {
}
fn read_Ros2Franka_msgsActionErrorRecovery_Feedback(reader : BoundedReader) -> Ros2Franka_msgsActionErrorRecovery_Feedback {
  Ros2Franka_msgsActionErrorRecovery_FeedbackEmpty
}

/// @brief Own every original field of franka_msgs/msg/GraspEpsilon.
/// @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsMsgGraspEpsilon {
  /// @brief Maximum tolerated deviation when the actual grasped width is smaller than the commanded grasp
  /// width. Unit: [m]
  /// @details Original franka_msgs/msg/GraspEpsilon.inner; native type float64. Scalar value. Declared
  /// original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut inner : Double
  /// @brief Maximum tolerated deviation when the actual grasped width is larger than the commanded grasp
  /// width. Unit: [m]
  /// @details Original franka_msgs/msg/GraspEpsilon.outer; native type float64. Scalar value. Declared
  /// original default 0.005. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut outer : Double
}
pub fn Ros2Franka_msgsMsgGraspEpsilon::new() -> Ros2Franka_msgsMsgGraspEpsilon {
  {
    inner: (4572414629676717179UL).reinterpret_as_double(),
    outer: (4572414629676717179UL).reinterpret_as_double(),
  }
}
pub(all) struct Ros2Franka_msgsMsgGraspEpsilonCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsMsgGraspEpsilonCodec::new() -> Ros2Franka_msgsMsgGraspEpsilonCodec {
  { ros_version: 2, native_type: "franka_msgs/msg/GraspEpsilon",
    native_identity: None,
    codec_identity: "UWVMROS1_21787ae5929dc83b9f644f4914e22da9ddd3e4f7ad3d8c6cda6bbcdfeba20c38",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
pub fn Ros2Franka_msgsMsgGraspEpsilonCodec::encode(_self : Ros2Franka_msgsMsgGraspEpsilonCodec, value :
        Ros2Franka_msgsMsgGraspEpsilon) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Franka_msgsMsgGraspEpsilon(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsMsgGraspEpsilonCodec::decode(_self : Ros2Franka_msgsMsgGraspEpsilonCodec, input : Bytes) ->
        Result[Ros2Franka_msgsMsgGraspEpsilon, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsMsgGraspEpsilon(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsMsgGraspEpsilon(writer : BoundedWriter, value : Ros2Franka_msgsMsgGraspEpsilon) -> Unit {
  let part0 = value.inner
  writer.float64(part0)
  let part1 = value.outer
  writer.float64(part1)
}
fn read_Ros2Franka_msgsMsgGraspEpsilon(reader : BoundedReader) -> Ros2Franka_msgsMsgGraspEpsilon {
  let part0 = reader.float64()
  let part1 = reader.float64()
  { inner: part0, outer: part1 }
}

/// @brief Own every original field of franka_msgs/action/Grasp_Goal.
/// @details Canonical extent 40..40 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionGrasp_Goal {
  /// @brief [m]
  /// @details Original franka_msgs/action/Grasp_Goal.width; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut width : Double
  /// @brief Retain the complete original franka_msgs/msg/GraspEpsilon field.
  /// @details Original franka_msgs/action/Grasp_Goal.epsilon; native type franka_msgs/msg/GraspEpsilon.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut epsilon : Ros2Franka_msgsMsgGraspEpsilon
  /// @brief [m/s]
  /// @details Original franka_msgs/action/Grasp_Goal.speed; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut speed : Double
  /// @brief [N]
  /// @details Original franka_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut force : Double
}
pub fn Ros2Franka_msgsActionGrasp_Goal::new() -> Ros2Franka_msgsActionGrasp_Goal {
  {
    width: 0.0,
    epsilon: Ros2Franka_msgsMsgGraspEpsilon::new(),
    speed: 0.0,
    force: 0.0,
  }
}
pub(all) struct Ros2Franka_msgsActionGrasp_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionGrasp_GoalCodec::new() -> Ros2Franka_msgsActionGrasp_GoalCodec {
  { ros_version: 2, native_type: "franka_msgs/action/Grasp_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_b7ef701e9fd93b5da9894499234d3647ecc4cea1936f637105c172f4579b6e1f",
    min_wire_bytes: 40, max_wire_bytes: 40 }
}
pub fn Ros2Franka_msgsActionGrasp_GoalCodec::encode(_self : Ros2Franka_msgsActionGrasp_GoalCodec, value :
        Ros2Franka_msgsActionGrasp_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 40, error: 0 }
  write_Ros2Franka_msgsActionGrasp_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionGrasp_GoalCodec::decode(_self : Ros2Franka_msgsActionGrasp_GoalCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionGrasp_Goal, Int] {
  if input.length() < 40 || input.length() > 40 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionGrasp_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionGrasp_Goal(writer : BoundedWriter, value : Ros2Franka_msgsActionGrasp_Goal) -> Unit {
  let part0 = value.width
  writer.float64(part0)
  let part1 = value.epsilon
  write_Ros2Franka_msgsMsgGraspEpsilon(writer, part1)
  let part2 = value.speed
  writer.float64(part2)
  let part3 = value.force
  writer.float64(part3)
}
fn read_Ros2Franka_msgsActionGrasp_Goal(reader : BoundedReader) -> Ros2Franka_msgsActionGrasp_Goal {
  let part0 = reader.float64()
  let part1 = read_Ros2Franka_msgsMsgGraspEpsilon(reader)
  let part2 = reader.float64()
  let part3 = reader.float64()
  { width: part0, epsilon: part1, speed: part2, force: part3 }
}

/// @brief Own every original field of franka_msgs/action/Grasp_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionGrasp_Result {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut error : String
}
pub fn Ros2Franka_msgsActionGrasp_Result::new() -> Ros2Franka_msgsActionGrasp_Result {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Franka_msgsActionGrasp_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionGrasp_ResultCodec::new() -> Ros2Franka_msgsActionGrasp_ResultCodec {
  { ros_version: 2, native_type: "franka_msgs/action/Grasp_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_9a4c3150c0c2d5eb8ff3dad403473a9546ee37cc3086a55a628a1a85b905b733",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsActionGrasp_ResultCodec::encode(_self : Ros2Franka_msgsActionGrasp_ResultCodec, value :
        Ros2Franka_msgsActionGrasp_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsActionGrasp_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionGrasp_ResultCodec::decode(_self : Ros2Franka_msgsActionGrasp_ResultCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionGrasp_Result, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionGrasp_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionGrasp_Result(writer : BoundedWriter, value : Ros2Franka_msgsActionGrasp_Result) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsActionGrasp_Result(reader : BoundedReader) -> Ros2Franka_msgsActionGrasp_Result {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of franka_msgs/action/Grasp_Feedback.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionGrasp_Feedback {
  /// @brief [m]
  /// @details Original franka_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut current_width : Double
}
pub fn Ros2Franka_msgsActionGrasp_Feedback::new() -> Ros2Franka_msgsActionGrasp_Feedback {
  {
    current_width: 0.0,
  }
}
pub(all) struct Ros2Franka_msgsActionGrasp_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionGrasp_FeedbackCodec::new() -> Ros2Franka_msgsActionGrasp_FeedbackCodec {
  { ros_version: 2, native_type: "franka_msgs/action/Grasp_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_2e7697286c002e2d891e9c3167aa0dd1664acfc66c649fff6e8f9101c42703fe",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Franka_msgsActionGrasp_FeedbackCodec::encode(_self : Ros2Franka_msgsActionGrasp_FeedbackCodec, value :
        Ros2Franka_msgsActionGrasp_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Franka_msgsActionGrasp_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionGrasp_FeedbackCodec::decode(_self : Ros2Franka_msgsActionGrasp_FeedbackCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionGrasp_Feedback, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionGrasp_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionGrasp_Feedback(writer : BoundedWriter, value : Ros2Franka_msgsActionGrasp_Feedback) -> Unit {
  let part0 = value.current_width
  writer.float64(part0)
}
fn read_Ros2Franka_msgsActionGrasp_Feedback(reader : BoundedReader) -> Ros2Franka_msgsActionGrasp_Feedback {
  let part0 = reader.float64()
  { current_width: part0 }
}

/// @brief Own every original field of franka_msgs/action/Homing_Goal.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_msgsActionHoming_Goal { Ros2Franka_msgsActionHoming_GoalEmpty }
pub fn Ros2Franka_msgsActionHoming_Goal::new() -> Ros2Franka_msgsActionHoming_Goal { Ros2Franka_msgsActionHoming_GoalEmpty }
pub(all) struct Ros2Franka_msgsActionHoming_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionHoming_GoalCodec::new() -> Ros2Franka_msgsActionHoming_GoalCodec {
  { ros_version: 2, native_type: "franka_msgs/action/Homing_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_8008426ce3fa8c8d62133704f8738201b8154b324ba07e7b6f605cd3132a885d",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_msgsActionHoming_GoalCodec::encode(_self : Ros2Franka_msgsActionHoming_GoalCodec, value :
        Ros2Franka_msgsActionHoming_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_msgsActionHoming_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionHoming_GoalCodec::decode(_self : Ros2Franka_msgsActionHoming_GoalCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionHoming_Goal, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionHoming_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionHoming_Goal(writer : BoundedWriter, value : Ros2Franka_msgsActionHoming_Goal) -> Unit {
}
fn read_Ros2Franka_msgsActionHoming_Goal(reader : BoundedReader) -> Ros2Franka_msgsActionHoming_Goal {
  Ros2Franka_msgsActionHoming_GoalEmpty
}

/// @brief Own every original field of franka_msgs/action/Homing_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionHoming_Result {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/action/Homing_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/action/Homing_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut error : String
}
pub fn Ros2Franka_msgsActionHoming_Result::new() -> Ros2Franka_msgsActionHoming_Result {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Franka_msgsActionHoming_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionHoming_ResultCodec::new() -> Ros2Franka_msgsActionHoming_ResultCodec {
  { ros_version: 2, native_type: "franka_msgs/action/Homing_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_74a9677213ffa9ba3a26b3053956350b8f75d5d1769152e5e3d4d26370bcd77c",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsActionHoming_ResultCodec::encode(_self : Ros2Franka_msgsActionHoming_ResultCodec, value :
        Ros2Franka_msgsActionHoming_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsActionHoming_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionHoming_ResultCodec::decode(_self : Ros2Franka_msgsActionHoming_ResultCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionHoming_Result, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionHoming_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionHoming_Result(writer : BoundedWriter, value : Ros2Franka_msgsActionHoming_Result) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsActionHoming_Result(reader : BoundedReader) -> Ros2Franka_msgsActionHoming_Result {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of franka_msgs/action/Homing_Feedback.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionHoming_Feedback {
  /// @brief [m]
  /// @details Original franka_msgs/action/Homing_Feedback.current_width; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut current_width : Double
}
pub fn Ros2Franka_msgsActionHoming_Feedback::new() -> Ros2Franka_msgsActionHoming_Feedback {
  {
    current_width: 0.0,
  }
}
pub(all) struct Ros2Franka_msgsActionHoming_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionHoming_FeedbackCodec::new() -> Ros2Franka_msgsActionHoming_FeedbackCodec {
  { ros_version: 2, native_type: "franka_msgs/action/Homing_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_2260e092d369a0d2e4bf97ca2dfa78c02b6836b8167e71d63e76b5c0c40a6b46",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Franka_msgsActionHoming_FeedbackCodec::encode(_self : Ros2Franka_msgsActionHoming_FeedbackCodec, value :
        Ros2Franka_msgsActionHoming_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Franka_msgsActionHoming_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionHoming_FeedbackCodec::decode(_self : Ros2Franka_msgsActionHoming_FeedbackCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionHoming_Feedback, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionHoming_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionHoming_Feedback(writer : BoundedWriter, value : Ros2Franka_msgsActionHoming_Feedback) -> Unit {
  let part0 = value.current_width
  writer.float64(part0)
}
fn read_Ros2Franka_msgsActionHoming_Feedback(reader : BoundedReader) -> Ros2Franka_msgsActionHoming_Feedback {
  let part0 = reader.float64()
  { current_width: part0 }
}

/// @brief Own every original field of franka_msgs/action/Move_Goal.
/// @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionMove_Goal {
  /// @brief [m]
  /// @details Original franka_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut width : Double
  /// @brief [m/s]
  /// @details Original franka_msgs/action/Move_Goal.speed; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut speed : Double
}
pub fn Ros2Franka_msgsActionMove_Goal::new() -> Ros2Franka_msgsActionMove_Goal {
  {
    width: 0.0,
    speed: 0.0,
  }
}
pub(all) struct Ros2Franka_msgsActionMove_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionMove_GoalCodec::new() -> Ros2Franka_msgsActionMove_GoalCodec {
  { ros_version: 2, native_type: "franka_msgs/action/Move_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_9f9e308ebd034344ee73b22a07d005944975c037943279504b2414bdd9ad206f",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
pub fn Ros2Franka_msgsActionMove_GoalCodec::encode(_self : Ros2Franka_msgsActionMove_GoalCodec, value :
        Ros2Franka_msgsActionMove_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Franka_msgsActionMove_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionMove_GoalCodec::decode(_self : Ros2Franka_msgsActionMove_GoalCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionMove_Goal, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionMove_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionMove_Goal(writer : BoundedWriter, value : Ros2Franka_msgsActionMove_Goal) -> Unit {
  let part0 = value.width
  writer.float64(part0)
  let part1 = value.speed
  writer.float64(part1)
}
fn read_Ros2Franka_msgsActionMove_Goal(reader : BoundedReader) -> Ros2Franka_msgsActionMove_Goal {
  let part0 = reader.float64()
  let part1 = reader.float64()
  { width: part0, speed: part1 }
}

/// @brief Own every original field of franka_msgs/action/Move_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionMove_Result {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut error : String
}
pub fn Ros2Franka_msgsActionMove_Result::new() -> Ros2Franka_msgsActionMove_Result {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Franka_msgsActionMove_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionMove_ResultCodec::new() -> Ros2Franka_msgsActionMove_ResultCodec {
  { ros_version: 2, native_type: "franka_msgs/action/Move_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_66aa505c035357274c68be773e1b502c7d77f195f3dca848e818811ce95dd266",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsActionMove_ResultCodec::encode(_self : Ros2Franka_msgsActionMove_ResultCodec, value :
        Ros2Franka_msgsActionMove_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsActionMove_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionMove_ResultCodec::decode(_self : Ros2Franka_msgsActionMove_ResultCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionMove_Result, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionMove_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionMove_Result(writer : BoundedWriter, value : Ros2Franka_msgsActionMove_Result) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsActionMove_Result(reader : BoundedReader) -> Ros2Franka_msgsActionMove_Result {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of franka_msgs/action/Move_Feedback.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionMove_Feedback {
  /// @brief [m]
  /// @details Original franka_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut current_width : Double
}
pub fn Ros2Franka_msgsActionMove_Feedback::new() -> Ros2Franka_msgsActionMove_Feedback {
  {
    current_width: 0.0,
  }
}
pub(all) struct Ros2Franka_msgsActionMove_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionMove_FeedbackCodec::new() -> Ros2Franka_msgsActionMove_FeedbackCodec {
  { ros_version: 2, native_type: "franka_msgs/action/Move_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_18d0e658f109492380c135e787adbdcc026b051e9a547fcea70453bbd9750596",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Franka_msgsActionMove_FeedbackCodec::encode(_self : Ros2Franka_msgsActionMove_FeedbackCodec, value :
        Ros2Franka_msgsActionMove_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Franka_msgsActionMove_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionMove_FeedbackCodec::decode(_self : Ros2Franka_msgsActionMove_FeedbackCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionMove_Feedback, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionMove_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionMove_Feedback(writer : BoundedWriter, value : Ros2Franka_msgsActionMove_Feedback) -> Unit {
  let part0 = value.current_width
  writer.float64(part0)
}
fn read_Ros2Franka_msgsActionMove_Feedback(reader : BoundedReader) -> Ros2Franka_msgsActionMove_Feedback {
  let part0 = reader.float64()
  { current_width: part0 }
}

/// @brief Own every original field of franka_msgs/action/PTPMotion_Goal.
/// @details Canonical extent 16..128 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionPTPMotion_Goal {
  /// @brief ## This defines a PTPMotion action for controlling a Franka robot using point-to-point motion
  /// commands. The goal_joint_configuration specifies the desired joint angles. [rad]
  /// @details Original franka_msgs/action/PTPMotion_Goal.goal_joint_configuration; native type float64.
  /// At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut goal_joint_configuration : Array[Double]
  /// @brief The maximum allowed joint velocities for the motion. [rad/s]
  /// @details Original franka_msgs/action/PTPMotion_Goal.maximum_joint_velocities; native type float64.
  /// At most 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut maximum_joint_velocities : Array[Double]
  /// @brief The acceptable goal tolerance for the motion. The 'target reached condition is met when - the
  /// absolute difference between the current and goal joint positions is within this goal_tolerance - the
  /// joint velocities are below a small threshold [rad]
  /// @details Original franka_msgs/action/PTPMotion_Goal.goal_tolerance; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut goal_tolerance : Double
}
pub fn Ros2Franka_msgsActionPTPMotion_Goal::new() -> Ros2Franka_msgsActionPTPMotion_Goal {
  {
    goal_joint_configuration: [],
    maximum_joint_velocities: [],
    goal_tolerance: 0.0,
  }
}
pub(all) struct Ros2Franka_msgsActionPTPMotion_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionPTPMotion_GoalCodec::new() -> Ros2Franka_msgsActionPTPMotion_GoalCodec {
  { ros_version: 2, native_type: "franka_msgs/action/PTPMotion_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_7e1b02257a7be37e7bccd0870ebced1e1560e7250eaeaa4547836e721f2ea2cc",
    min_wire_bytes: 16, max_wire_bytes: 128 }
}
pub fn Ros2Franka_msgsActionPTPMotion_GoalCodec::encode(_self : Ros2Franka_msgsActionPTPMotion_GoalCodec, value :
        Ros2Franka_msgsActionPTPMotion_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 128, error: 0 }
  write_Ros2Franka_msgsActionPTPMotion_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionPTPMotion_GoalCodec::decode(_self : Ros2Franka_msgsActionPTPMotion_GoalCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionPTPMotion_Goal, Int] {
  if input.length() < 16 || input.length() > 128 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionPTPMotion_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionPTPMotion_Goal(writer : BoundedWriter, value : Ros2Franka_msgsActionPTPMotion_Goal) -> Unit {
  let part0 = value.goal_joint_configuration
  let count0 = part0.length()
  if count0 > 7 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.maximum_joint_velocities
  let count1 = part1.length()
  if count1 > 7 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.goal_tolerance
  writer.float64(part2)
}
fn read_Ros2Franka_msgsActionPTPMotion_Goal(reader : BoundedReader) -> Ros2Franka_msgsActionPTPMotion_Goal {
  let part0 : Array[Double] = []
  let count0 = reader.count(7, 8)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = reader.count(7, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 = reader.float64()
  { goal_joint_configuration: part0, maximum_joint_velocities: part1, goal_tolerance: part2 }
}

/// @brief Own every original field of franka_msgs/msg/TargetStatus.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsMsgTargetStatus {
  /// @brief # The current status of the motion (one of the above states)
  /// @details Original franka_msgs/msg/TargetStatus.status; native type uint8. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut status : Int
}
pub fn Ros2Franka_msgsMsgTargetStatus::new() -> Ros2Franka_msgsMsgTargetStatus {
  {
    status: 0,
  }
}
pub(all) struct Ros2Franka_msgsMsgTargetStatusCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsMsgTargetStatusCodec::new() -> Ros2Franka_msgsMsgTargetStatusCodec {
  { ros_version: 2, native_type: "franka_msgs/msg/TargetStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_df49eedc13cd8be2055361d8640c519bfa018ed2a421aa2b59b35c8828eac585",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Franka_msgsMsgTargetStatusCodec::encode(_self : Ros2Franka_msgsMsgTargetStatusCodec, value :
        Ros2Franka_msgsMsgTargetStatus) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Franka_msgsMsgTargetStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsMsgTargetStatusCodec::decode(_self : Ros2Franka_msgsMsgTargetStatusCodec, input : Bytes) ->
        Result[Ros2Franka_msgsMsgTargetStatus, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsMsgTargetStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsMsgTargetStatus(writer : BoundedWriter, value : Ros2Franka_msgsMsgTargetStatus) -> Unit {
  let part0 = value.status
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Franka_msgsMsgTargetStatus(reader : BoundedReader) -> Ros2Franka_msgsMsgTargetStatus {
  let part0 = reader.unsigned(1).to_int()
  { status: part0 }
}

/// @brief Own every original field of franka_msgs/action/PTPMotion_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionPTPMotion_Result {
  /// @brief Result of the point-to-point motion action
  /// @details Original franka_msgs/action/PTPMotion_Result.target_status; native type
  /// franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut target_status : Ros2Franka_msgsMsgTargetStatus
  /// @brief In case of failure, an error message describing the issue
  /// @details Original franka_msgs/action/PTPMotion_Result.error_message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut error_message : String
}
pub fn Ros2Franka_msgsActionPTPMotion_Result::new() -> Ros2Franka_msgsActionPTPMotion_Result {
  {
    target_status: Ros2Franka_msgsMsgTargetStatus::new(),
    error_message: "",
  }
}
pub(all) struct Ros2Franka_msgsActionPTPMotion_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionPTPMotion_ResultCodec::new() -> Ros2Franka_msgsActionPTPMotion_ResultCodec {
  { ros_version: 2, native_type: "franka_msgs/action/PTPMotion_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_b61fabf13a3d8d910a35a5145e87b4dd80180b0678ef5580784f461e850fa4c1",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsActionPTPMotion_ResultCodec::encode(_self : Ros2Franka_msgsActionPTPMotion_ResultCodec, value :
        Ros2Franka_msgsActionPTPMotion_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsActionPTPMotion_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionPTPMotion_ResultCodec::decode(_self : Ros2Franka_msgsActionPTPMotion_ResultCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionPTPMotion_Result, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionPTPMotion_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionPTPMotion_Result(writer : BoundedWriter, value : Ros2Franka_msgsActionPTPMotion_Result) -> Unit {
  let part0 = value.target_status
  write_Ros2Franka_msgsMsgTargetStatus(writer, part0)
  let part1 = value.error_message
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsActionPTPMotion_Result(reader : BoundedReader) -> Ros2Franka_msgsActionPTPMotion_Result {
  let part0 = read_Ros2Franka_msgsMsgTargetStatus(reader)
  let part1 = reader.text(256)
  { target_status: part0, error_message: part1 }
}

/// @brief Own every original field of franka_msgs/action/PTPMotion_Feedback.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsActionPTPMotion_Feedback {
  /// @brief Feedback during the execution of the point-to-point motion
  /// @details Original franka_msgs/action/PTPMotion_Feedback.target_status; native type
  /// franka_msgs/msg/TargetStatus. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut target_status : Ros2Franka_msgsMsgTargetStatus
}
pub fn Ros2Franka_msgsActionPTPMotion_Feedback::new() -> Ros2Franka_msgsActionPTPMotion_Feedback {
  {
    target_status: Ros2Franka_msgsMsgTargetStatus::new(),
  }
}
pub(all) struct Ros2Franka_msgsActionPTPMotion_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsActionPTPMotion_FeedbackCodec::new() -> Ros2Franka_msgsActionPTPMotion_FeedbackCodec {
  { ros_version: 2, native_type: "franka_msgs/action/PTPMotion_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_c4dcfeb668595ebc341d76b5cbc606c1ae4c38b28a1b329f8436e61f506a0300",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Franka_msgsActionPTPMotion_FeedbackCodec::encode(_self : Ros2Franka_msgsActionPTPMotion_FeedbackCodec, value :
        Ros2Franka_msgsActionPTPMotion_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Franka_msgsActionPTPMotion_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsActionPTPMotion_FeedbackCodec::decode(_self : Ros2Franka_msgsActionPTPMotion_FeedbackCodec, input : Bytes) ->
        Result[Ros2Franka_msgsActionPTPMotion_Feedback, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsActionPTPMotion_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsActionPTPMotion_Feedback(writer : BoundedWriter, value : Ros2Franka_msgsActionPTPMotion_Feedback) -> Unit {
  let part0 = value.target_status
  write_Ros2Franka_msgsMsgTargetStatus(writer, part0)
}
fn read_Ros2Franka_msgsActionPTPMotion_Feedback(reader : BoundedReader) -> Ros2Franka_msgsActionPTPMotion_Feedback {
  let part0 = read_Ros2Franka_msgsMsgTargetStatus(reader)
  { target_status: part0 }
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

/// @brief Own every original field of franka_msgs/msg/CollisionIndicators.
/// @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsMsgCollisionIndicators {
  /// @brief ## Indicates which dimensions have an active contact/collision flag raised
  /// @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_collision; native type
  /// geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut is_cartesian_linear_collision : Ros2Geometry_msgsMsgVector3
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_collision; native type
  /// geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut is_cartesian_angular_collision : Ros2Geometry_msgsMsgVector3
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_linear_contact; native type
  /// geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut is_cartesian_linear_contact : Ros2Geometry_msgsMsgVector3
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original franka_msgs/msg/CollisionIndicators.is_cartesian_angular_contact; native type
  /// geometry_msgs/msg/Vector3. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut is_cartesian_angular_contact : Ros2Geometry_msgsMsgVector3
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/CollisionIndicators.is_joint_collision; native type float64.
  /// Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut is_joint_collision : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/CollisionIndicators.is_joint_contact; native type float64. Exactly
  /// 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut is_joint_contact : Array[Double]
}
pub fn Ros2Franka_msgsMsgCollisionIndicators::new() -> Ros2Franka_msgsMsgCollisionIndicators {
  {
    is_cartesian_linear_collision: Ros2Geometry_msgsMsgVector3::new(),
    is_cartesian_angular_collision: Ros2Geometry_msgsMsgVector3::new(),
    is_cartesian_linear_contact: Ros2Geometry_msgsMsgVector3::new(),
    is_cartesian_angular_contact: Ros2Geometry_msgsMsgVector3::new(),
    is_joint_collision: Array::makei(7, fn(_) { 0.0 }),
    is_joint_contact: Array::makei(7, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros2Franka_msgsMsgCollisionIndicatorsCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsMsgCollisionIndicatorsCodec::new() -> Ros2Franka_msgsMsgCollisionIndicatorsCodec {
  { ros_version: 2, native_type: "franka_msgs/msg/CollisionIndicators",
    native_identity: None,
    codec_identity: "UWVMROS1_2bdfb3ece01b47b07fae84a998b23c56fc9482a0518969e43304b318d4ee0ce1",
    min_wire_bytes: 208, max_wire_bytes: 208 }
}
pub fn Ros2Franka_msgsMsgCollisionIndicatorsCodec::encode(_self : Ros2Franka_msgsMsgCollisionIndicatorsCodec, value :
        Ros2Franka_msgsMsgCollisionIndicators) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 208, error: 0 }
  write_Ros2Franka_msgsMsgCollisionIndicators(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 208 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsMsgCollisionIndicatorsCodec::decode(_self : Ros2Franka_msgsMsgCollisionIndicatorsCodec, input : Bytes) ->
        Result[Ros2Franka_msgsMsgCollisionIndicators, Int] {
  if input.length() < 208 || input.length() > 208 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsMsgCollisionIndicators(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsMsgCollisionIndicators(writer : BoundedWriter, value : Ros2Franka_msgsMsgCollisionIndicators) -> Unit {
  let part0 = value.is_cartesian_linear_collision
  write_Ros2Geometry_msgsMsgVector3(writer, part0)
  let part1 = value.is_cartesian_angular_collision
  write_Ros2Geometry_msgsMsgVector3(writer, part1)
  let part2 = value.is_cartesian_linear_contact
  write_Ros2Geometry_msgsMsgVector3(writer, part2)
  let part3 = value.is_cartesian_angular_contact
  write_Ros2Geometry_msgsMsgVector3(writer, part3)
  let part4 = value.is_joint_collision
  let count4 = part4.length()
  if count4 != 7 { writer.error = 22; return () }
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  let part5 = value.is_joint_contact
  let count5 = part5.length()
  if count5 != 7 { writer.error = 22; return () }
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    writer.float64(element)
  }
}
fn read_Ros2Franka_msgsMsgCollisionIndicators(reader : BoundedReader) -> Ros2Franka_msgsMsgCollisionIndicators {
  let part0 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part1 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part2 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part3 = read_Ros2Geometry_msgsMsgVector3(reader)
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
  { is_cartesian_linear_collision: part0, is_cartesian_angular_collision: part1, is_cartesian_linear_contact: part2,
          is_cartesian_angular_contact: part3, is_joint_collision: part4, is_joint_contact: part5 }
}

/// @brief Own every original field of franka_msgs/msg/Elbow.
/// @details Canonical extent 80..80 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsMsgElbow {
  /// @brief ## The state of the elbow
  /// @details Original franka_msgs/msg/Elbow.position; native type float64. Exactly 2 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut position : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/Elbow.desired_position; native type float64. Exactly 2 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut desired_position : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/Elbow.commanded_position; native type float64. Exactly 2 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut commanded_position : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/Elbow.commanded_velocity; native type float64. Exactly 2 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut commanded_velocity : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/Elbow.commanded_acceleration; native type float64. Exactly 2
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut commanded_acceleration : Array[Double]
}
pub fn Ros2Franka_msgsMsgElbow::new() -> Ros2Franka_msgsMsgElbow {
  {
    position: Array::makei(2, fn(_) { 0.0 }),
    desired_position: Array::makei(2, fn(_) { 0.0 }),
    commanded_position: Array::makei(2, fn(_) { 0.0 }),
    commanded_velocity: Array::makei(2, fn(_) { 0.0 }),
    commanded_acceleration: Array::makei(2, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros2Franka_msgsMsgElbowCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsMsgElbowCodec::new() -> Ros2Franka_msgsMsgElbowCodec {
  { ros_version: 2, native_type: "franka_msgs/msg/Elbow",
    native_identity: None,
    codec_identity: "UWVMROS1_686cf2da29007046f9855ffeecac304c159245ec3da153990ab83be4ffce53b6",
    min_wire_bytes: 80, max_wire_bytes: 80 }
}
pub fn Ros2Franka_msgsMsgElbowCodec::encode(_self : Ros2Franka_msgsMsgElbowCodec, value : Ros2Franka_msgsMsgElbow) -> Result[Bytes,
        Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 80, error: 0 }
  write_Ros2Franka_msgsMsgElbow(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 80 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsMsgElbowCodec::decode(_self : Ros2Franka_msgsMsgElbowCodec, input : Bytes) -> Result[Ros2Franka_msgsMsgElbow,
        Int] {
  if input.length() < 80 || input.length() > 80 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsMsgElbow(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsMsgElbow(writer : BoundedWriter, value : Ros2Franka_msgsMsgElbow) -> Unit {
  let part0 = value.position
  let count0 = part0.length()
  if count0 != 2 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.desired_position
  let count1 = part1.length()
  if count1 != 2 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.commanded_position
  let count2 = part2.length()
  if count2 != 2 { writer.error = 22; return () }
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.commanded_velocity
  let count3 = part3.length()
  if count3 != 2 { writer.error = 22; return () }
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.commanded_acceleration
  let count4 = part4.length()
  if count4 != 2 { writer.error = 22; return () }
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
}
fn read_Ros2Franka_msgsMsgElbow(reader : BoundedReader) -> Ros2Franka_msgsMsgElbow {
  let part0 : Array[Double] = []
  let count0 = 2
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = 2
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 : Array[Double] = []
  let count2 = 2
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = 2
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 : Array[Double] = []
  let count4 = 2
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.float64())
  }
  { position: part0, desired_position: part1, commanded_position: part2, commanded_velocity: part3, commanded_acceleration: part4 }
}

/// @brief Own every original field of franka_msgs/msg/Errors.
/// @details Canonical extent 36..36 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsMsgErrors {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_position_limits_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut joint_position_limits_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_position_limits_violation; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_position_limits_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.self_collision_avoidance_violation; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut self_collision_avoidance_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_velocity_violation; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut joint_velocity_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_velocity_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_velocity_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.force_control_safety_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut force_control_safety_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_reflex; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut joint_reflex : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_reflex; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut cartesian_reflex : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.max_goal_pose_deviation_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut max_goal_pose_deviation_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.max_path_pose_deviation_violation; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut max_path_pose_deviation_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_velocity_profile_safety_violation; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_velocity_profile_safety_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_position_motion_generator_start_pose_invalid; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut joint_position_motion_generator_start_pose_invalid : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_motion_generator_position_limits_violation; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut joint_motion_generator_position_limits_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_limits_violation; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut joint_motion_generator_velocity_limits_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_motion_generator_velocity_discontinuity; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut joint_motion_generator_velocity_discontinuity : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_motion_generator_acceleration_discontinuity; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut joint_motion_generator_acceleration_discontinuity : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_start_pose_invalid;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_position_motion_generator_start_pose_invalid : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_limit_violation; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_motion_generator_elbow_limit_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_limits_violation;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_motion_generator_velocity_limits_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_velocity_discontinuity; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_motion_generator_velocity_discontinuity : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_acceleration_discontinuity;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_motion_generator_acceleration_discontinuity : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_elbow_sign_inconsistent; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_motion_generator_elbow_sign_inconsistent : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_start_elbow_invalid; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_motion_generator_start_elbow_invalid : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_position_limits_violation;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_motion_generator_joint_position_limits_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_limits_violation;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_motion_generator_joint_velocity_limits_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_motion_generator_joint_velocity_discontinuity;
  /// native type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_motion_generator_joint_velocity_discontinuity : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original
  /// franka_msgs/msg/Errors.cartesian_motion_generator_joint_acceleration_discontinuity; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_motion_generator_joint_acceleration_discontinuity : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.cartesian_position_motion_generator_invalid_frame; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut cartesian_position_motion_generator_invalid_frame : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.force_controller_desired_force_tolerance_violation; native
  /// type bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut force_controller_desired_force_tolerance_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.controller_torque_discontinuity; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut controller_torque_discontinuity : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.start_elbow_sign_inconsistent; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut start_elbow_sign_inconsistent : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.communication_constraints_violation; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut communication_constraints_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.power_limit_violation; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut power_limit_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.joint_p2p_insufficient_torque_for_planning; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut joint_p2p_insufficient_torque_for_planning : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.tau_j_range_violation; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut tau_j_range_violation : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/msg/Errors.instability_detected; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut instability_detected : Bool
}
pub fn Ros2Franka_msgsMsgErrors::new() -> Ros2Franka_msgsMsgErrors {
  {
    joint_position_limits_violation: false,
    cartesian_position_limits_violation: false,
    self_collision_avoidance_violation: false,
    joint_velocity_violation: false,
    cartesian_velocity_violation: false,
    force_control_safety_violation: false,
    joint_reflex: false,
    cartesian_reflex: false,
    max_goal_pose_deviation_violation: false,
    max_path_pose_deviation_violation: false,
    cartesian_velocity_profile_safety_violation: false,
    joint_position_motion_generator_start_pose_invalid: false,
    joint_motion_generator_position_limits_violation: false,
    joint_motion_generator_velocity_limits_violation: false,
    joint_motion_generator_velocity_discontinuity: false,
    joint_motion_generator_acceleration_discontinuity: false,
    cartesian_position_motion_generator_start_pose_invalid: false,
    cartesian_motion_generator_elbow_limit_violation: false,
    cartesian_motion_generator_velocity_limits_violation: false,
    cartesian_motion_generator_velocity_discontinuity: false,
    cartesian_motion_generator_acceleration_discontinuity: false,
    cartesian_motion_generator_elbow_sign_inconsistent: false,
    cartesian_motion_generator_start_elbow_invalid: false,
    cartesian_motion_generator_joint_position_limits_violation: false,
    cartesian_motion_generator_joint_velocity_limits_violation: false,
    cartesian_motion_generator_joint_velocity_discontinuity: false,
    cartesian_motion_generator_joint_acceleration_discontinuity: false,
    cartesian_position_motion_generator_invalid_frame: false,
    force_controller_desired_force_tolerance_violation: false,
    controller_torque_discontinuity: false,
    start_elbow_sign_inconsistent: false,
    communication_constraints_violation: false,
    power_limit_violation: false,
    joint_p2p_insufficient_torque_for_planning: false,
    tau_j_range_violation: false,
    instability_detected: false,
  }
}
pub(all) struct Ros2Franka_msgsMsgErrorsCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsMsgErrorsCodec::new() -> Ros2Franka_msgsMsgErrorsCodec {
  { ros_version: 2, native_type: "franka_msgs/msg/Errors",
    native_identity: None,
    codec_identity: "UWVMROS1_c7927af1abe7710bb686574ad6f2459f8425af1d6cdb3189160bb732b5a6bc8c",
    min_wire_bytes: 36, max_wire_bytes: 36 }
}
pub fn Ros2Franka_msgsMsgErrorsCodec::encode(_self : Ros2Franka_msgsMsgErrorsCodec, value : Ros2Franka_msgsMsgErrors) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 36, error: 0 }
  write_Ros2Franka_msgsMsgErrors(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 36 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsMsgErrorsCodec::decode(_self : Ros2Franka_msgsMsgErrorsCodec, input : Bytes) ->
        Result[Ros2Franka_msgsMsgErrors, Int] {
  if input.length() < 36 || input.length() > 36 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsMsgErrors(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsMsgErrors(writer : BoundedWriter, value : Ros2Franka_msgsMsgErrors) -> Unit {
  let part0 = value.joint_position_limits_violation
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.cartesian_position_limits_violation
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.self_collision_avoidance_violation
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.joint_velocity_violation
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
  let part4 = value.cartesian_velocity_violation
  writer.unsigned(if part4 { 1UL } else { 0UL }, 1)
  let part5 = value.force_control_safety_violation
  writer.unsigned(if part5 { 1UL } else { 0UL }, 1)
  let part6 = value.joint_reflex
  writer.unsigned(if part6 { 1UL } else { 0UL }, 1)
  let part7 = value.cartesian_reflex
  writer.unsigned(if part7 { 1UL } else { 0UL }, 1)
  let part8 = value.max_goal_pose_deviation_violation
  writer.unsigned(if part8 { 1UL } else { 0UL }, 1)
  let part9 = value.max_path_pose_deviation_violation
  writer.unsigned(if part9 { 1UL } else { 0UL }, 1)
  let part10 = value.cartesian_velocity_profile_safety_violation
  writer.unsigned(if part10 { 1UL } else { 0UL }, 1)
  let part11 = value.joint_position_motion_generator_start_pose_invalid
  writer.unsigned(if part11 { 1UL } else { 0UL }, 1)
  let part12 = value.joint_motion_generator_position_limits_violation
  writer.unsigned(if part12 { 1UL } else { 0UL }, 1)
  let part13 = value.joint_motion_generator_velocity_limits_violation
  writer.unsigned(if part13 { 1UL } else { 0UL }, 1)
  let part14 = value.joint_motion_generator_velocity_discontinuity
  writer.unsigned(if part14 { 1UL } else { 0UL }, 1)
  let part15 = value.joint_motion_generator_acceleration_discontinuity
  writer.unsigned(if part15 { 1UL } else { 0UL }, 1)
  let part16 = value.cartesian_position_motion_generator_start_pose_invalid
  writer.unsigned(if part16 { 1UL } else { 0UL }, 1)
  let part17 = value.cartesian_motion_generator_elbow_limit_violation
  writer.unsigned(if part17 { 1UL } else { 0UL }, 1)
  let part18 = value.cartesian_motion_generator_velocity_limits_violation
  writer.unsigned(if part18 { 1UL } else { 0UL }, 1)
  let part19 = value.cartesian_motion_generator_velocity_discontinuity
  writer.unsigned(if part19 { 1UL } else { 0UL }, 1)
  let part20 = value.cartesian_motion_generator_acceleration_discontinuity
  writer.unsigned(if part20 { 1UL } else { 0UL }, 1)
  let part21 = value.cartesian_motion_generator_elbow_sign_inconsistent
  writer.unsigned(if part21 { 1UL } else { 0UL }, 1)
  let part22 = value.cartesian_motion_generator_start_elbow_invalid
  writer.unsigned(if part22 { 1UL } else { 0UL }, 1)
  let part23 = value.cartesian_motion_generator_joint_position_limits_violation
  writer.unsigned(if part23 { 1UL } else { 0UL }, 1)
  let part24 = value.cartesian_motion_generator_joint_velocity_limits_violation
  writer.unsigned(if part24 { 1UL } else { 0UL }, 1)
  let part25 = value.cartesian_motion_generator_joint_velocity_discontinuity
  writer.unsigned(if part25 { 1UL } else { 0UL }, 1)
  let part26 = value.cartesian_motion_generator_joint_acceleration_discontinuity
  writer.unsigned(if part26 { 1UL } else { 0UL }, 1)
  let part27 = value.cartesian_position_motion_generator_invalid_frame
  writer.unsigned(if part27 { 1UL } else { 0UL }, 1)
  let part28 = value.force_controller_desired_force_tolerance_violation
  writer.unsigned(if part28 { 1UL } else { 0UL }, 1)
  let part29 = value.controller_torque_discontinuity
  writer.unsigned(if part29 { 1UL } else { 0UL }, 1)
  let part30 = value.start_elbow_sign_inconsistent
  writer.unsigned(if part30 { 1UL } else { 0UL }, 1)
  let part31 = value.communication_constraints_violation
  writer.unsigned(if part31 { 1UL } else { 0UL }, 1)
  let part32 = value.power_limit_violation
  writer.unsigned(if part32 { 1UL } else { 0UL }, 1)
  let part33 = value.joint_p2p_insufficient_torque_for_planning
  writer.unsigned(if part33 { 1UL } else { 0UL }, 1)
  let part34 = value.tau_j_range_violation
  writer.unsigned(if part34 { 1UL } else { 0UL }, 1)
  let part35 = value.instability_detected
  writer.unsigned(if part35 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Franka_msgsMsgErrors(reader : BoundedReader) -> Ros2Franka_msgsMsgErrors {
  let part0 = reader.boolean()
  let part1 = reader.boolean()
  let part2 = reader.boolean()
  let part3 = reader.boolean()
  let part4 = reader.boolean()
  let part5 = reader.boolean()
  let part6 = reader.boolean()
  let part7 = reader.boolean()
  let part8 = reader.boolean()
  let part9 = reader.boolean()
  let part10 = reader.boolean()
  let part11 = reader.boolean()
  let part12 = reader.boolean()
  let part13 = reader.boolean()
  let part14 = reader.boolean()
  let part15 = reader.boolean()
  let part16 = reader.boolean()
  let part17 = reader.boolean()
  let part18 = reader.boolean()
  let part19 = reader.boolean()
  let part20 = reader.boolean()
  let part21 = reader.boolean()
  let part22 = reader.boolean()
  let part23 = reader.boolean()
  let part24 = reader.boolean()
  let part25 = reader.boolean()
  let part26 = reader.boolean()
  let part27 = reader.boolean()
  let part28 = reader.boolean()
  let part29 = reader.boolean()
  let part30 = reader.boolean()
  let part31 = reader.boolean()
  let part32 = reader.boolean()
  let part33 = reader.boolean()
  let part34 = reader.boolean()
  let part35 = reader.boolean()
  { joint_position_limits_violation: part0, cartesian_position_limits_violation: part1, self_collision_avoidance_violation: part2,
          joint_velocity_violation: part3, cartesian_velocity_violation: part4, force_control_safety_violation: part5, joint_reflex:
          part6, cartesian_reflex: part7, max_goal_pose_deviation_violation: part8, max_path_pose_deviation_violation: part9,
          cartesian_velocity_profile_safety_violation: part10, joint_position_motion_generator_start_pose_invalid: part11,
          joint_motion_generator_position_limits_violation: part12, joint_motion_generator_velocity_limits_violation: part13,
          joint_motion_generator_velocity_discontinuity: part14, joint_motion_generator_acceleration_discontinuity: part15,
          cartesian_position_motion_generator_start_pose_invalid: part16, cartesian_motion_generator_elbow_limit_violation: part17,
          cartesian_motion_generator_velocity_limits_violation: part18, cartesian_motion_generator_velocity_discontinuity: part19,
          cartesian_motion_generator_acceleration_discontinuity: part20, cartesian_motion_generator_elbow_sign_inconsistent: part21,
          cartesian_motion_generator_start_elbow_invalid: part22, cartesian_motion_generator_joint_position_limits_violation:
          part23, cartesian_motion_generator_joint_velocity_limits_violation: part24,
          cartesian_motion_generator_joint_velocity_discontinuity: part25,
          cartesian_motion_generator_joint_acceleration_discontinuity: part26, cartesian_position_motion_generator_invalid_frame:
          part27, force_controller_desired_force_tolerance_violation: part28, controller_torque_discontinuity: part29,
          start_elbow_sign_inconsistent: part30, communication_constraints_violation: part31, power_limit_violation: part32,
          joint_p2p_insufficient_torque_for_planning: part33, tau_j_range_violation: part34, instability_detected: part35 }
}

/// @brief Own every original field of std_msgs/msg/Header.
/// @details Canonical extent 12..140 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Std_msgsMsgHeader {
  /// @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  /// timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
  /// seconds and nanoseconds.
  /// @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut stamp : Ros2Builtin_interfacesMsgTime
  /// @brief Transform frame with which this data is associated.
  /// @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 128
  /// bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS resource.
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
pub fn Ros2Std_msgsMsgHeaderCodec::encode(_self : Ros2Std_msgsMsgHeaderCodec, value : Ros2Std_msgsMsgHeader) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros2Std_msgsMsgHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_msgsMsgHeaderCodec::decode(_self : Ros2Std_msgsMsgHeaderCodec, input : Bytes) -> Result[Ros2Std_msgsMsgHeader, Int] {
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

/// @brief Own every original field of sensor_msgs/msg/JointState.
/// @details Canonical extent 28..1248 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Sensor_msgsMsgJointState {
  /// @brief This is a message that holds data to describe the state of a set of torque controlled joints.
  /// The state of each joint (revolute or prismatic) is defined by: * the position of the joint (rad or
  /// m), * the velocity of the joint (rad/s or m/s) and * the effort that is applied in the joint (Nm or
  /// N).  Each joint is uniquely identified by its name The header specifies the time at which the joint
  /// states were recorded. All the joint states in one message have to be recorded at the same time.
  /// This message consists of a multiple arrays, one for each part of the joint state. The goal is to
  /// make each of the fields optional. When e.g. your joints have no effort associated with them, you can
  /// leave the effort array empty.  All arrays in this message should have the same size, or be empty.
  /// This is the only way to uniquely associate the joint name with the correct states.
  /// @details Original sensor_msgs/msg/JointState.header; native type std_msgs/msg/Header. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original string field.
  /// @details Original sensor_msgs/msg/JointState.name; native type string. At most 7 elements. UTF-8
  /// capacity 128 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut name : Array[String]
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.position; native type float64. At most 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut position : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut velocity : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 7 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
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
    codec_identity: "UWVMROS1_912ba4261e2dfbec0e4a543ea8e5d308ef1d26877b4a7d71162a981ac64c40a3",
    min_wire_bytes: 28, max_wire_bytes: 1248 }
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::encode(_self : Ros2Sensor_msgsMsgJointStateCodec, value : Ros2Sensor_msgsMsgJointState) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1248, error: 0 }
  write_Ros2Sensor_msgsMsgJointState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::decode(_self : Ros2Sensor_msgsMsgJointStateCodec, input : Bytes) ->
        Result[Ros2Sensor_msgsMsgJointState, Int] {
  if input.length() < 28 || input.length() > 1248 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Sensor_msgsMsgJointState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Sensor_msgsMsgJointState(writer : BoundedWriter, value : Ros2Sensor_msgsMsgJointState) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.name
  let count1 = part1.length()
  if count1 > 7 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 128)
  }
  let part2 = value.position
  let count2 = part2.length()
  if count2 > 7 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.velocity
  let count3 = part3.length()
  if count3 > 7 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.effort
  let count4 = part4.length()
  if count4 > 7 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  if (count1 != 0 && count2 != 0 && count1 != count2) || (count1 != 0 && count3 != 0 && count1 != count3) || (count1 != 0 && count4
          != 0 && count1 != count4) || (count2 != 0 && count3 != 0 && count2 != count3) || (count2 != 0 && count4 != 0 && count2 !=
          count4) || (count3 != 0 && count4 != 0 && count3 != count4) { writer.error = 22 }
}
fn read_Ros2Sensor_msgsMsgJointState(reader : BoundedReader) -> Ros2Sensor_msgsMsgJointState {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 : Array[String] = []
  let count1 = reader.count(7, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(128))
  }
  let part2 : Array[Double] = []
  let count2 = reader.count(7, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(7, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 : Array[Double] = []
  let count4 = reader.count(7, 8)
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.float64())
  }
  if (part1.length() != 0 && part2.length() != 0 && part1.length() != part2.length()) || (part1.length() != 0 && part3.length() != 0
          && part1.length() != part3.length()) || (part1.length() != 0 && part4.length() != 0 && part1.length() != part4.length())
          || (part2.length() != 0 && part3.length() != 0 && part2.length() != part3.length()) || (part2.length() != 0 &&
          part4.length() != 0 && part2.length() != part4.length()) || (part3.length() != 0 && part4.length() != 0 && part3.length()
          != part4.length()) { reader.error = 22 }
  { header: part0, name: part1, position: part2, velocity: part3, effort: part4 }
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

/// @brief Own every original field of geometry_msgs/msg/WrenchStamped.
/// @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgWrenchStamped {
  /// @brief A wrench with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/WrenchStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original geometry_msgs/msg/Wrench field.
  /// @details Original geometry_msgs/msg/WrenchStamped.wrench; native type geometry_msgs/msg/Wrench.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut wrench : Ros2Geometry_msgsMsgWrench
}
pub fn Ros2Geometry_msgsMsgWrenchStamped::new() -> Ros2Geometry_msgsMsgWrenchStamped {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    wrench: Ros2Geometry_msgsMsgWrench::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgWrenchStampedCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgWrenchStampedCodec::new() -> Ros2Geometry_msgsMsgWrenchStampedCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/WrenchStamped",
    native_identity: None,
    codec_identity: "UWVMROS1_e23600874a626ba9d52f043e14ed04beb3e316d47c3bca8bd87cfeed3f5d9d66",
    min_wire_bytes: 60, max_wire_bytes: 188 }
}
pub fn Ros2Geometry_msgsMsgWrenchStampedCodec::encode(_self : Ros2Geometry_msgsMsgWrenchStampedCodec, value :
        Ros2Geometry_msgsMsgWrenchStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 188, error: 0 }
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 60 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgWrenchStampedCodec::decode(_self : Ros2Geometry_msgsMsgWrenchStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgWrenchStamped, Int] {
  if input.length() < 60 || input.length() > 188 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgWrenchStamped(writer : BoundedWriter, value : Ros2Geometry_msgsMsgWrenchStamped) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.wrench
  write_Ros2Geometry_msgsMsgWrench(writer, part1)
}
fn read_Ros2Geometry_msgsMsgWrenchStamped(reader : BoundedReader) -> Ros2Geometry_msgsMsgWrenchStamped {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Geometry_msgsMsgWrench(reader)
  { header: part0, wrench: part1 }
}

/// @brief Own every original field of geometry_msgs/msg/Inertia.
/// @details Canonical extent 80..80 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgInertia {
  /// @brief Mass [kg]
  /// @details Original geometry_msgs/msg/Inertia.m; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut m : Double
  /// @brief Center of mass [m]
  /// @details Original geometry_msgs/msg/Inertia.com; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut com : Ros2Geometry_msgsMsgVector3
  /// @brief Inertia Tensor [kg-m^2] about the center of mass | ixx ixy ixz | I = | ixy iyy iyz | | ixz
  /// iyz izz |
  /// @details Original geometry_msgs/msg/Inertia.ixx; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut ixx : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Inertia.ixy; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut ixy : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Inertia.ixz; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut ixz : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Inertia.iyy; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut iyy : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Inertia.iyz; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut iyz : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original geometry_msgs/msg/Inertia.izz; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut izz : Double
}
pub fn Ros2Geometry_msgsMsgInertia::new() -> Ros2Geometry_msgsMsgInertia {
  {
    m: 0.0,
    com: Ros2Geometry_msgsMsgVector3::new(),
    ixx: 0.0,
    ixy: 0.0,
    ixz: 0.0,
    iyy: 0.0,
    iyz: 0.0,
    izz: 0.0,
  }
}
pub(all) struct Ros2Geometry_msgsMsgInertiaCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgInertiaCodec::new() -> Ros2Geometry_msgsMsgInertiaCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Inertia",
    native_identity: None,
    codec_identity: "UWVMROS1_4a1b7a6a2516724a9a12e5eb166a85cd73d33fc6075c8d517ff2a279fd29e12a",
    min_wire_bytes: 80, max_wire_bytes: 80 }
}
pub fn Ros2Geometry_msgsMsgInertiaCodec::encode(_self : Ros2Geometry_msgsMsgInertiaCodec, value : Ros2Geometry_msgsMsgInertia) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 80, error: 0 }
  write_Ros2Geometry_msgsMsgInertia(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 80 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgInertiaCodec::decode(_self : Ros2Geometry_msgsMsgInertiaCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgInertia, Int] {
  if input.length() < 80 || input.length() > 80 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgInertia(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgInertia(writer : BoundedWriter, value : Ros2Geometry_msgsMsgInertia) -> Unit {
  let part0 = value.m
  writer.float64(part0)
  let part1 = value.com
  write_Ros2Geometry_msgsMsgVector3(writer, part1)
  let part2 = value.ixx
  writer.float64(part2)
  let part3 = value.ixy
  writer.float64(part3)
  let part4 = value.ixz
  writer.float64(part4)
  let part5 = value.iyy
  writer.float64(part5)
  let part6 = value.iyz
  writer.float64(part6)
  let part7 = value.izz
  writer.float64(part7)
}
fn read_Ros2Geometry_msgsMsgInertia(reader : BoundedReader) -> Ros2Geometry_msgsMsgInertia {
  let part0 = reader.float64()
  let part1 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  let part5 = reader.float64()
  let part6 = reader.float64()
  let part7 = reader.float64()
  { m: part0, com: part1, ixx: part2, ixy: part3, ixz: part4, iyy: part5, iyz: part6, izz: part7 }
}

/// @brief Own every original field of geometry_msgs/msg/InertiaStamped.
/// @details Canonical extent 92..220 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgInertiaStamped {
  /// @brief An Inertia with a time stamp and reference frame.
  /// @details Original geometry_msgs/msg/InertiaStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original geometry_msgs/msg/Inertia field.
  /// @details Original geometry_msgs/msg/InertiaStamped.inertia; native type geometry_msgs/msg/Inertia.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut inertia : Ros2Geometry_msgsMsgInertia
}
pub fn Ros2Geometry_msgsMsgInertiaStamped::new() -> Ros2Geometry_msgsMsgInertiaStamped {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    inertia: Ros2Geometry_msgsMsgInertia::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgInertiaStampedCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgInertiaStampedCodec::new() -> Ros2Geometry_msgsMsgInertiaStampedCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/InertiaStamped",
    native_identity: None,
    codec_identity: "UWVMROS1_19b0b442c5858ff1eee20e4658ecc3a2b76fdd64c4a21a1642fae5ab38198576",
    min_wire_bytes: 92, max_wire_bytes: 220 }
}
pub fn Ros2Geometry_msgsMsgInertiaStampedCodec::encode(_self : Ros2Geometry_msgsMsgInertiaStampedCodec, value :
        Ros2Geometry_msgsMsgInertiaStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 220, error: 0 }
  write_Ros2Geometry_msgsMsgInertiaStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 92 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgInertiaStampedCodec::decode(_self : Ros2Geometry_msgsMsgInertiaStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgInertiaStamped, Int] {
  if input.length() < 92 || input.length() > 220 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgInertiaStamped(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgInertiaStamped(writer : BoundedWriter, value : Ros2Geometry_msgsMsgInertiaStamped) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.inertia
  write_Ros2Geometry_msgsMsgInertia(writer, part1)
}
fn read_Ros2Geometry_msgsMsgInertiaStamped(reader : BoundedReader) -> Ros2Geometry_msgsMsgInertiaStamped {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Geometry_msgsMsgInertia(reader)
  { header: part0, inertia: part1 }
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

/// @brief Own every original field of geometry_msgs/msg/PoseStamped.
/// @details Canonical extent 68..196 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgPoseStamped {
  /// @brief A Pose with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/PoseStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original geometry_msgs/msg/Pose field.
  /// @details Original geometry_msgs/msg/PoseStamped.pose; native type geometry_msgs/msg/Pose. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
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
pub fn Ros2Geometry_msgsMsgPoseStampedCodec::encode(_self : Ros2Geometry_msgsMsgPoseStampedCodec, value :
        Ros2Geometry_msgsMsgPoseStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 196, error: 0 }
  write_Ros2Geometry_msgsMsgPoseStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 68 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgPoseStampedCodec::decode(_self : Ros2Geometry_msgsMsgPoseStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgPoseStamped, Int] {
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

/// @brief Own every original field of geometry_msgs/msg/Twist.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgTwist {
  /// @brief This expresses velocity in free space broken into its linear and angular parts.
  /// @details Original geometry_msgs/msg/Twist.linear; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut linear : Ros2Geometry_msgsMsgVector3
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Twist.angular; native type geometry_msgs/msg/Vector3. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut angular : Ros2Geometry_msgsMsgVector3
}
pub fn Ros2Geometry_msgsMsgTwist::new() -> Ros2Geometry_msgsMsgTwist {
  {
    linear: Ros2Geometry_msgsMsgVector3::new(),
    angular: Ros2Geometry_msgsMsgVector3::new(),
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
pub fn Ros2Geometry_msgsMsgTwistCodec::encode(_self : Ros2Geometry_msgsMsgTwistCodec, value : Ros2Geometry_msgsMsgTwist) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros2Geometry_msgsMsgTwist(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgTwistCodec::decode(_self : Ros2Geometry_msgsMsgTwistCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgTwist, Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgTwist(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgTwist(writer : BoundedWriter, value : Ros2Geometry_msgsMsgTwist) -> Unit {
  let part0 = value.linear
  write_Ros2Geometry_msgsMsgVector3(writer, part0)
  let part1 = value.angular
  write_Ros2Geometry_msgsMsgVector3(writer, part1)
}
fn read_Ros2Geometry_msgsMsgTwist(reader : BoundedReader) -> Ros2Geometry_msgsMsgTwist {
  let part0 = read_Ros2Geometry_msgsMsgVector3(reader)
  let part1 = read_Ros2Geometry_msgsMsgVector3(reader)
  { linear: part0, angular: part1 }
}

/// @brief Own every original field of geometry_msgs/msg/TwistStamped.
/// @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgTwistStamped {
  /// @brief A twist with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/TwistStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original geometry_msgs/msg/Twist field.
  /// @details Original geometry_msgs/msg/TwistStamped.twist; native type geometry_msgs/msg/Twist. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut twist : Ros2Geometry_msgsMsgTwist
}
pub fn Ros2Geometry_msgsMsgTwistStamped::new() -> Ros2Geometry_msgsMsgTwistStamped {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    twist: Ros2Geometry_msgsMsgTwist::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgTwistStampedCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgTwistStampedCodec::new() -> Ros2Geometry_msgsMsgTwistStampedCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/TwistStamped",
    native_identity: None,
    codec_identity: "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573",
    min_wire_bytes: 60, max_wire_bytes: 188 }
}
pub fn Ros2Geometry_msgsMsgTwistStampedCodec::encode(_self : Ros2Geometry_msgsMsgTwistStampedCodec, value :
        Ros2Geometry_msgsMsgTwistStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 188, error: 0 }
  write_Ros2Geometry_msgsMsgTwistStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 60 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgTwistStampedCodec::decode(_self : Ros2Geometry_msgsMsgTwistStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgTwistStamped, Int] {
  if input.length() < 60 || input.length() > 188 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgTwistStamped(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgTwistStamped(writer : BoundedWriter, value : Ros2Geometry_msgsMsgTwistStamped) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.twist
  write_Ros2Geometry_msgsMsgTwist(writer, part1)
}
fn read_Ros2Geometry_msgsMsgTwistStamped(reader : BoundedReader) -> Ros2Geometry_msgsMsgTwistStamped {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Geometry_msgsMsgTwist(reader)
  { header: part0, twist: part1 }
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

/// @brief Own every original field of geometry_msgs/msg/AccelStamped.
/// @details Canonical extent 60..188 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgAccelStamped {
  /// @brief An accel with reference coordinate frame and timestamp
  /// @details Original geometry_msgs/msg/AccelStamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original geometry_msgs/msg/Accel field.
  /// @details Original geometry_msgs/msg/AccelStamped.accel; native type geometry_msgs/msg/Accel. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut accel : Ros2Geometry_msgsMsgAccel
}
pub fn Ros2Geometry_msgsMsgAccelStamped::new() -> Ros2Geometry_msgsMsgAccelStamped {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    accel: Ros2Geometry_msgsMsgAccel::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgAccelStampedCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgAccelStampedCodec::new() -> Ros2Geometry_msgsMsgAccelStampedCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/AccelStamped",
    native_identity: None,
    codec_identity: "UWVMROS1_c04d3ae310bd82f7c4c9f30c2ff185ab54989aa3adcc759c7d3eb19853819899",
    min_wire_bytes: 60, max_wire_bytes: 188 }
}
pub fn Ros2Geometry_msgsMsgAccelStampedCodec::encode(_self : Ros2Geometry_msgsMsgAccelStampedCodec, value :
        Ros2Geometry_msgsMsgAccelStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 188, error: 0 }
  write_Ros2Geometry_msgsMsgAccelStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 60 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgAccelStampedCodec::decode(_self : Ros2Geometry_msgsMsgAccelStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgAccelStamped, Int] {
  if input.length() < 60 || input.length() > 188 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgAccelStamped(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgAccelStamped(writer : BoundedWriter, value : Ros2Geometry_msgsMsgAccelStamped) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.accel
  write_Ros2Geometry_msgsMsgAccel(writer, part1)
}
fn read_Ros2Geometry_msgsMsgAccelStamped(reader : BoundedReader) -> Ros2Geometry_msgsMsgAccelStamped {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Geometry_msgsMsgAccel(reader)
  { header: part0, accel: part1 }
}

/// @brief Own every original field of geometry_msgs/msg/Vector3Stamped.
/// @details Canonical extent 36..164 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Geometry_msgsMsgVector3Stamped {
  /// @brief This represents a Vector3 with reference coordinate frame and timestamp Note that this
  /// follows vector semantics with it always anchored at the origin, so the rotational elements of a
  /// transform are the only parts applied when transforming.
  /// @details Original geometry_msgs/msg/Vector3Stamped.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original geometry_msgs/msg/Vector3 field.
  /// @details Original geometry_msgs/msg/Vector3Stamped.vector; native type geometry_msgs/msg/Vector3.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut vector : Ros2Geometry_msgsMsgVector3
}
pub fn Ros2Geometry_msgsMsgVector3Stamped::new() -> Ros2Geometry_msgsMsgVector3Stamped {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    vector: Ros2Geometry_msgsMsgVector3::new(),
  }
}
pub(all) struct Ros2Geometry_msgsMsgVector3StampedCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Geometry_msgsMsgVector3StampedCodec::new() -> Ros2Geometry_msgsMsgVector3StampedCodec {
  { ros_version: 2, native_type: "geometry_msgs/msg/Vector3Stamped",
    native_identity: None,
    codec_identity: "UWVMROS1_c6b67646d3fc6d29c195637ea353dafa7085b2bdb55a15a8b65009200b5ed31b",
    min_wire_bytes: 36, max_wire_bytes: 164 }
}
pub fn Ros2Geometry_msgsMsgVector3StampedCodec::encode(_self : Ros2Geometry_msgsMsgVector3StampedCodec, value :
        Ros2Geometry_msgsMsgVector3Stamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 164, error: 0 }
  write_Ros2Geometry_msgsMsgVector3Stamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 36 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgVector3StampedCodec::decode(_self : Ros2Geometry_msgsMsgVector3StampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgVector3Stamped, Int] {
  if input.length() < 36 || input.length() > 164 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Geometry_msgsMsgVector3Stamped(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Geometry_msgsMsgVector3Stamped(writer : BoundedWriter, value : Ros2Geometry_msgsMsgVector3Stamped) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.vector
  write_Ros2Geometry_msgsMsgVector3(writer, part1)
}
fn read_Ros2Geometry_msgsMsgVector3Stamped(reader : BoundedReader) -> Ros2Geometry_msgsMsgVector3Stamped {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Geometry_msgsMsgVector3(reader)
  { header: part0, vector: part1 }
}

/// @brief Own every original field of franka_msgs/msg/FrankaRobotState.
/// @details Canonical extent 1961..10169 bytes. Native type identity is independent; constructing a
/// value opens no resource.
pub(all) struct Ros2Franka_msgsMsgFrankaRobotState {
  /// @brief ## Default parts of the message
  /// @details Original franka_msgs/msg/FrankaRobotState.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief ## Indicates which dimensions have an active contact/collision flag raised
  /// @details Original franka_msgs/msg/FrankaRobotState.collision_indicators; native type
  /// franka_msgs/msg/CollisionIndicators. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut collision_indicators : Ros2Franka_msgsMsgCollisionIndicators
  /// @brief ## The state of the arm in joint space The joint state consisting out of position (q),
  /// velocity (dq) and effort (tau_J)
  /// @details Original franka_msgs/msg/FrankaRobotState.measured_joint_state; native type
  /// sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut measured_joint_state : Ros2Sensor_msgsMsgJointState
  /// @brief The desired joint state consisting out of position (q_d), velocity (dq_d) and effort
  /// (tau_J_d)
  /// @details Original franka_msgs/msg/FrankaRobotState.desired_joint_state; native type
  /// sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut desired_joint_state : Ros2Sensor_msgsMsgJointState
  /// @brief The measured motor state of the joints consisting out of position (theta) and velocity
  /// (dtheta)
  /// @details Original franka_msgs/msg/FrankaRobotState.measured_joint_motor_state; native type
  /// sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut measured_joint_motor_state : Ros2Sensor_msgsMsgJointState
  /// @brief The desired joint acceleration
  /// @details Original franka_msgs/msg/FrankaRobotState.ddq_d; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut ddq_d : Array[Double]
  /// @brief The derivative of the measured torque signal
  /// @details Original franka_msgs/msg/FrankaRobotState.dtau_j; native type float64. Exactly 7 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut dtau_j : Array[Double]
  /// @brief Filtered external torque. The JointState consists out of effort (tau_ext_hat_filtered)
  /// @details Original franka_msgs/msg/FrankaRobotState.tau_ext_hat_filtered; native type
  /// sensor_msgs/msg/JointState. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut tau_ext_hat_filtered : Ros2Sensor_msgsMsgJointState
  /// @brief ## The state of the elbow
  /// @details Original franka_msgs/msg/FrankaRobotState.elbow; native type franka_msgs/msg/Elbow. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut elbow : Ros2Franka_msgsMsgElbow
  /// @brief ## The active wrenches acting on the stiffness frame expressed relative to stiffness frame
  /// @details Original franka_msgs/msg/FrankaRobotState.k_f_ext_hat_k; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut k_f_ext_hat_k : Ros2Geometry_msgsMsgWrenchStamped
  /// @brief base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_f_ext_hat_k; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut o_f_ext_hat_k : Ros2Geometry_msgsMsgWrenchStamped
  /// @brief ## The different inertias of the arm The end-effector inertia
  /// @details Original franka_msgs/msg/FrankaRobotState.inertia_ee; native type
  /// geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut inertia_ee : Ros2Geometry_msgsMsgInertiaStamped
  /// @brief The load inertia
  /// @details Original franka_msgs/msg/FrankaRobotState.inertia_load; native type
  /// geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut inertia_load : Ros2Geometry_msgsMsgInertiaStamped
  /// @brief The total (end-effector + load) inertia
  /// @details Original franka_msgs/msg/FrankaRobotState.inertia_total; native type
  /// geometry_msgs/msg/InertiaStamped. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut inertia_total : Ros2Geometry_msgsMsgInertiaStamped
  /// @brief ## The poses describing the transformations between different frames of the arm Measured end-
  /// effector pose in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_t_ee; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut o_t_ee : Ros2Geometry_msgsMsgPoseStamped
  /// @brief Last desired end-effector pose of motion generation in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_d; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut o_t_ee_d : Ros2Geometry_msgsMsgPoseStamped
  /// @brief Last commanded end-effector pose of motion generation in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_t_ee_c; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut o_t_ee_c : Ros2Geometry_msgsMsgPoseStamped
  /// @brief Flange to end-effector frame
  /// @details Original franka_msgs/msg/FrankaRobotState.f_t_ee; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut f_t_ee : Ros2Geometry_msgsMsgPoseStamped
  /// @brief End-effector to stiffness frame
  /// @details Original franka_msgs/msg/FrankaRobotState.ee_t_k; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut ee_t_k : Ros2Geometry_msgsMsgPoseStamped
  /// @brief Desired end effector twist in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_d; native type
  /// geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut o_dp_ee_d : Ros2Geometry_msgsMsgTwistStamped
  /// @brief Last commanded end effector twist in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_dp_ee_c; native type
  /// geometry_msgs/msg/TwistStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut o_dp_ee_c : Ros2Geometry_msgsMsgTwistStamped
  /// @brief Last commanded end effector acceleration in base frame
  /// @details Original franka_msgs/msg/FrankaRobotState.o_ddp_ee_c; native type
  /// geometry_msgs/msg/AccelStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut o_ddp_ee_c : Ros2Geometry_msgsMsgAccelStamped
  /// @brief ## Additional information
  /// @details Original franka_msgs/msg/FrankaRobotState.time; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut time : Double
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/msg/FrankaRobotState.control_command_success_rate; native type
  /// float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut control_command_success_rate : Double
  /// @brief Retain the complete original uint8 field.
  /// @details Original franka_msgs/msg/FrankaRobotState.robot_mode; native type uint8. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut robot_mode : Int
  /// @brief Retain the complete original franka_msgs/msg/Errors field.
  /// @details Original franka_msgs/msg/FrankaRobotState.current_errors; native type
  /// franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut current_errors : Ros2Franka_msgsMsgErrors
  /// @brief Retain the complete original franka_msgs/msg/Errors field.
  /// @details Original franka_msgs/msg/FrankaRobotState.last_motion_errors; native type
  /// franka_msgs/msg/Errors. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut last_motion_errors : Ros2Franka_msgsMsgErrors
  /// @brief ## Translational acceleration data from the joint-mounted accelerometers, expressed in the
  /// "<prefix>link<i>_accelerometer_<side>" frame named in each header (joints 1 through 6, mounted on
  /// links 0 through 5; no accelerometer on joint 7)
  /// @details Original franka_msgs/msg/FrankaRobotState.accelerometer_top; native type
  /// geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut accelerometer_top : Array[Ros2Geometry_msgsMsgVector3Stamped]
  /// @brief Retain the complete original geometry_msgs/msg/Vector3Stamped field.
  /// @details Original franka_msgs/msg/FrankaRobotState.accelerometer_bottom; native type
  /// geometry_msgs/msg/Vector3Stamped. Exactly 6 elements. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut accelerometer_bottom : Array[Ros2Geometry_msgsMsgVector3Stamped]
}
pub fn Ros2Franka_msgsMsgFrankaRobotState::new() -> Ros2Franka_msgsMsgFrankaRobotState {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    collision_indicators: Ros2Franka_msgsMsgCollisionIndicators::new(),
    measured_joint_state: Ros2Sensor_msgsMsgJointState::new(),
    desired_joint_state: Ros2Sensor_msgsMsgJointState::new(),
    measured_joint_motor_state: Ros2Sensor_msgsMsgJointState::new(),
    ddq_d: Array::makei(7, fn(_) { 0.0 }),
    dtau_j: Array::makei(7, fn(_) { 0.0 }),
    tau_ext_hat_filtered: Ros2Sensor_msgsMsgJointState::new(),
    elbow: Ros2Franka_msgsMsgElbow::new(),
    k_f_ext_hat_k: Ros2Geometry_msgsMsgWrenchStamped::new(),
    o_f_ext_hat_k: Ros2Geometry_msgsMsgWrenchStamped::new(),
    inertia_ee: Ros2Geometry_msgsMsgInertiaStamped::new(),
    inertia_load: Ros2Geometry_msgsMsgInertiaStamped::new(),
    inertia_total: Ros2Geometry_msgsMsgInertiaStamped::new(),
    o_t_ee: Ros2Geometry_msgsMsgPoseStamped::new(),
    o_t_ee_d: Ros2Geometry_msgsMsgPoseStamped::new(),
    o_t_ee_c: Ros2Geometry_msgsMsgPoseStamped::new(),
    f_t_ee: Ros2Geometry_msgsMsgPoseStamped::new(),
    ee_t_k: Ros2Geometry_msgsMsgPoseStamped::new(),
    o_dp_ee_d: Ros2Geometry_msgsMsgTwistStamped::new(),
    o_dp_ee_c: Ros2Geometry_msgsMsgTwistStamped::new(),
    o_ddp_ee_c: Ros2Geometry_msgsMsgAccelStamped::new(),
    time: 0.0,
    control_command_success_rate: 0.0,
    robot_mode: 0,
    current_errors: Ros2Franka_msgsMsgErrors::new(),
    last_motion_errors: Ros2Franka_msgsMsgErrors::new(),
    accelerometer_top: Array::makei(6, fn(_) { Ros2Geometry_msgsMsgVector3Stamped::new() }),
    accelerometer_bottom: Array::makei(6, fn(_) { Ros2Geometry_msgsMsgVector3Stamped::new() }),
  }
}
pub(all) struct Ros2Franka_msgsMsgFrankaRobotStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsMsgFrankaRobotStateCodec::new() -> Ros2Franka_msgsMsgFrankaRobotStateCodec {
  { ros_version: 2, native_type: "franka_msgs/msg/FrankaRobotState",
    native_identity: None,
    codec_identity: "UWVMROS1_0fdc5c99a098f4c891956bb6cd81505995d5dda41a740f88ee456f48f6e07282",
    min_wire_bytes: 1961, max_wire_bytes: 10169 }
}
pub fn Ros2Franka_msgsMsgFrankaRobotStateCodec::encode(_self : Ros2Franka_msgsMsgFrankaRobotStateCodec, value :
        Ros2Franka_msgsMsgFrankaRobotState) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 10169, error: 0 }
  write_Ros2Franka_msgsMsgFrankaRobotState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1961 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsMsgFrankaRobotStateCodec::decode(_self : Ros2Franka_msgsMsgFrankaRobotStateCodec, input : Bytes) ->
        Result[Ros2Franka_msgsMsgFrankaRobotState, Int] {
  if input.length() < 1961 || input.length() > 10169 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsMsgFrankaRobotState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsMsgFrankaRobotState(writer : BoundedWriter, value : Ros2Franka_msgsMsgFrankaRobotState) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.collision_indicators
  write_Ros2Franka_msgsMsgCollisionIndicators(writer, part1)
  let part2 = value.measured_joint_state
  write_Ros2Sensor_msgsMsgJointState(writer, part2)
  let part3 = value.desired_joint_state
  write_Ros2Sensor_msgsMsgJointState(writer, part3)
  let part4 = value.measured_joint_motor_state
  write_Ros2Sensor_msgsMsgJointState(writer, part4)
  let part5 = value.ddq_d
  let count5 = part5.length()
  if count5 != 7 { writer.error = 22; return () }
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    writer.float64(element)
  }
  let part6 = value.dtau_j
  let count6 = part6.length()
  if count6 != 7 { writer.error = 22; return () }
  for index = 0; index < count6; index = index + 1 {
    let element = part6[index]
    writer.float64(element)
  }
  let part7 = value.tau_ext_hat_filtered
  write_Ros2Sensor_msgsMsgJointState(writer, part7)
  let part8 = value.elbow
  write_Ros2Franka_msgsMsgElbow(writer, part8)
  let part9 = value.k_f_ext_hat_k
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part9)
  let part10 = value.o_f_ext_hat_k
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part10)
  let part11 = value.inertia_ee
  write_Ros2Geometry_msgsMsgInertiaStamped(writer, part11)
  let part12 = value.inertia_load
  write_Ros2Geometry_msgsMsgInertiaStamped(writer, part12)
  let part13 = value.inertia_total
  write_Ros2Geometry_msgsMsgInertiaStamped(writer, part13)
  let part14 = value.o_t_ee
  write_Ros2Geometry_msgsMsgPoseStamped(writer, part14)
  let part15 = value.o_t_ee_d
  write_Ros2Geometry_msgsMsgPoseStamped(writer, part15)
  let part16 = value.o_t_ee_c
  write_Ros2Geometry_msgsMsgPoseStamped(writer, part16)
  let part17 = value.f_t_ee
  write_Ros2Geometry_msgsMsgPoseStamped(writer, part17)
  let part18 = value.ee_t_k
  write_Ros2Geometry_msgsMsgPoseStamped(writer, part18)
  let part19 = value.o_dp_ee_d
  write_Ros2Geometry_msgsMsgTwistStamped(writer, part19)
  let part20 = value.o_dp_ee_c
  write_Ros2Geometry_msgsMsgTwistStamped(writer, part20)
  let part21 = value.o_ddp_ee_c
  write_Ros2Geometry_msgsMsgAccelStamped(writer, part21)
  let part22 = value.time
  writer.float64(part22)
  let part23 = value.control_command_success_rate
  writer.float64(part23)
  let part24 = value.robot_mode
  if part24 < 0 || part24 > 255 { writer.error = 22 }
  writer.unsigned(part24.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part25 = value.current_errors
  write_Ros2Franka_msgsMsgErrors(writer, part25)
  let part26 = value.last_motion_errors
  write_Ros2Franka_msgsMsgErrors(writer, part26)
  let part27 = value.accelerometer_top
  let count27 = part27.length()
  if count27 != 6 { writer.error = 22; return () }
  for index = 0; index < count27; index = index + 1 {
    let element = part27[index]
    write_Ros2Geometry_msgsMsgVector3Stamped(writer, element)
  }
  let part28 = value.accelerometer_bottom
  let count28 = part28.length()
  if count28 != 6 { writer.error = 22; return () }
  for index = 0; index < count28; index = index + 1 {
    let element = part28[index]
    write_Ros2Geometry_msgsMsgVector3Stamped(writer, element)
  }
}
fn read_Ros2Franka_msgsMsgFrankaRobotState(reader : BoundedReader) -> Ros2Franka_msgsMsgFrankaRobotState {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Franka_msgsMsgCollisionIndicators(reader)
  let part2 = read_Ros2Sensor_msgsMsgJointState(reader)
  let part3 = read_Ros2Sensor_msgsMsgJointState(reader)
  let part4 = read_Ros2Sensor_msgsMsgJointState(reader)
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
  let part7 = read_Ros2Sensor_msgsMsgJointState(reader)
  let part8 = read_Ros2Franka_msgsMsgElbow(reader)
  let part9 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  let part10 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  let part11 = read_Ros2Geometry_msgsMsgInertiaStamped(reader)
  let part12 = read_Ros2Geometry_msgsMsgInertiaStamped(reader)
  let part13 = read_Ros2Geometry_msgsMsgInertiaStamped(reader)
  let part14 = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  let part15 = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  let part16 = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  let part17 = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  let part18 = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  let part19 = read_Ros2Geometry_msgsMsgTwistStamped(reader)
  let part20 = read_Ros2Geometry_msgsMsgTwistStamped(reader)
  let part21 = read_Ros2Geometry_msgsMsgAccelStamped(reader)
  let part22 = reader.float64()
  let part23 = reader.float64()
  let part24 = reader.unsigned(1).to_int()
  let part25 = read_Ros2Franka_msgsMsgErrors(reader)
  let part26 = read_Ros2Franka_msgsMsgErrors(reader)
  let part27 : Array[Ros2Geometry_msgsMsgVector3Stamped] = []
  let count27 = 6
  for index = 0; index < count27; index = index + 1 {
    part27.push(read_Ros2Geometry_msgsMsgVector3Stamped(reader))
  }
  let part28 : Array[Ros2Geometry_msgsMsgVector3Stamped] = []
  let count28 = 6
  for index = 0; index < count28; index = index + 1 {
    part28.push(read_Ros2Geometry_msgsMsgVector3Stamped(reader))
  }
  { header: part0, collision_indicators: part1, measured_joint_state: part2, desired_joint_state: part3, measured_joint_motor_state:
          part4, ddq_d: part5, dtau_j: part6, tau_ext_hat_filtered: part7, elbow: part8, k_f_ext_hat_k: part9, o_f_ext_hat_k:
          part10, inertia_ee: part11, inertia_load: part12, inertia_total: part13, o_t_ee: part14, o_t_ee_d: part15, o_t_ee_c:
          part16, f_t_ee: part17, ee_t_k: part18, o_dp_ee_d: part19, o_dp_ee_c: part20, o_ddp_ee_c: part21, time: part22,
          control_command_success_rate: part23, robot_mode: part24, current_errors: part25, last_motion_errors: part26,
          accelerometer_top: part27, accelerometer_bottom: part28 }
}

/// @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Request.
/// @details Canonical extent 48..48 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetCartesianStiffness_Request {
  /// @brief Cartesian stiffness represented as (x, y, z, roll, pitch, yaw). The values are used in the
  /// direction of the stiffness frame.
  /// @details Original franka_msgs/srv/SetCartesianStiffness_Request.cartesian_stiffness; native type
  /// float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut cartesian_stiffness : Array[Double]
}
pub fn Ros2Franka_msgsSrvSetCartesianStiffness_Request::new() -> Ros2Franka_msgsSrvSetCartesianStiffness_Request {
  {
    cartesian_stiffness: Array::makei(6, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec::new() -> Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetCartesianStiffness_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_ae78b9887a5419225cfe0727bac83d8c53f789acd53bd47f024485b02aa98260",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec::encode(_self : Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec,
        value : Ros2Franka_msgsSrvSetCartesianStiffness_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros2Franka_msgsSrvSetCartesianStiffness_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec::decode(_self : Ros2Franka_msgsSrvSetCartesianStiffness_RequestCodec,
        input : Bytes) -> Result[Ros2Franka_msgsSrvSetCartesianStiffness_Request, Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetCartesianStiffness_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetCartesianStiffness_Request(writer : BoundedWriter, value :
        Ros2Franka_msgsSrvSetCartesianStiffness_Request) -> Unit {
  let part0 = value.cartesian_stiffness
  let count0 = part0.length()
  if count0 != 6 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
}
fn read_Ros2Franka_msgsSrvSetCartesianStiffness_Request(reader : BoundedReader) -> Ros2Franka_msgsSrvSetCartesianStiffness_Request {
  let part0 : Array[Double] = []
  let count0 = 6
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  { cartesian_stiffness: part0 }
}

/// @brief Own every original field of franka_msgs/srv/SetCartesianStiffness_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetCartesianStiffness_Response {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetCartesianStiffness_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetCartesianStiffness_Response.error; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut error : String
}
pub fn Ros2Franka_msgsSrvSetCartesianStiffness_Response::new() -> Ros2Franka_msgsSrvSetCartesianStiffness_Response {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec::new() -> Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetCartesianStiffness_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_3194f7469bbf228e653f5a93336fd5de4a1b2d7c1fe9542f3fadc8ad4fd51afa",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec::encode(_self : Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec,
        value : Ros2Franka_msgsSrvSetCartesianStiffness_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsSrvSetCartesianStiffness_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec::decode(_self : Ros2Franka_msgsSrvSetCartesianStiffness_ResponseCodec,
        input : Bytes) -> Result[Ros2Franka_msgsSrvSetCartesianStiffness_Response, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetCartesianStiffness_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetCartesianStiffness_Response(writer : BoundedWriter, value :
        Ros2Franka_msgsSrvSetCartesianStiffness_Response) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsSrvSetCartesianStiffness_Response(reader : BoundedReader) -> Ros2Franka_msgsSrvSetCartesianStiffness_Response
        {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.
/// @details Canonical extent 208..208 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request {
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_torque_thresholds_nominal; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut lower_torque_thresholds_nominal : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_torque_thresholds_nominal; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut upper_torque_thresholds_nominal : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.lower_force_thresholds_nominal; native type
  /// float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut lower_force_thresholds_nominal : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetForceTorqueCollisionBehavior_Request.upper_force_thresholds_nominal; native type
  /// float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut upper_force_thresholds_nominal : Array[Double]
}
pub fn Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request::new() -> Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request
        {
  {
    lower_torque_thresholds_nominal: Array::makei(7, fn(_) { 0.0 }),
    upper_torque_thresholds_nominal: Array::makei(7, fn(_) { 0.0 }),
    lower_force_thresholds_nominal: Array::makei(6, fn(_) { 0.0 }),
    upper_force_thresholds_nominal: Array::makei(6, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec::new() ->
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetForceTorqueCollisionBehavior_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_829642a9ea418a53f7252f7489bd7f5ed976bf3689443012daf216db895cf99c",
    min_wire_bytes: 208, max_wire_bytes: 208 }
}
pub fn Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec::encode(_self :
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec, value :
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 208, error: 0 }
  write_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 208 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec::decode(_self :
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_RequestCodec, input : Bytes) ->
        Result[Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request, Int] {
  if input.length() < 208 || input.length() > 208 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(writer : BoundedWriter, value :
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request) -> Unit {
  let part0 = value.lower_torque_thresholds_nominal
  let count0 = part0.length()
  if count0 != 7 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.upper_torque_thresholds_nominal
  let count1 = part1.length()
  if count1 != 7 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.lower_force_thresholds_nominal
  let count2 = part2.length()
  if count2 != 6 { writer.error = 22; return () }
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.upper_force_thresholds_nominal
  let count3 = part3.length()
  if count3 != 6 { writer.error = 22; return () }
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
}
fn read_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request(reader : BoundedReader) ->
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Request {
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
  let count2 = 6
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = 6
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  { lower_torque_thresholds_nominal: part0, upper_torque_thresholds_nominal: part1, lower_force_thresholds_nominal: part2,
          upper_force_thresholds_nominal: part3 }
}

/// @brief Own every original field of franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.success; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetForceTorqueCollisionBehavior_Response.error; native type
  /// string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut error : String
}
pub fn Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response::new() ->
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec::new() ->
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetForceTorqueCollisionBehavior_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_7d5640c34446e4262a8c00f0b242b68c0095688f0208fd692f21d855003eb47a",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec::encode(_self :
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec, value :
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec::decode(_self :
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_ResponseCodec, input : Bytes) ->
        Result[Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(writer : BoundedWriter, value :
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response(reader : BoundedReader) ->
        Ros2Franka_msgsSrvSetForceTorqueCollisionBehavior_Response {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Request.
/// @details Canonical extent 416..416 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetFullCollisionBehavior_Request {
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_acceleration; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut lower_torque_thresholds_acceleration : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_acceleration; native type
  /// float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut upper_torque_thresholds_acceleration : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_torque_thresholds_nominal;
  /// native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut lower_torque_thresholds_nominal : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_torque_thresholds_nominal;
  /// native type float64. Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut upper_torque_thresholds_nominal : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_acceleration; native type
  /// float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut lower_force_thresholds_acceleration : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original
  /// franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_acceleration; native type
  /// float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut upper_force_thresholds_acceleration : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.lower_force_thresholds_nominal;
  /// native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut lower_force_thresholds_nominal : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Request.upper_force_thresholds_nominal;
  /// native type float64. Exactly 6 elements. Finite IEEE values; no implicit unit conversion. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut upper_force_thresholds_nominal : Array[Double]
}
pub fn Ros2Franka_msgsSrvSetFullCollisionBehavior_Request::new() -> Ros2Franka_msgsSrvSetFullCollisionBehavior_Request {
  {
    lower_torque_thresholds_acceleration: Array::makei(7, fn(_) { 0.0 }),
    upper_torque_thresholds_acceleration: Array::makei(7, fn(_) { 0.0 }),
    lower_torque_thresholds_nominal: Array::makei(7, fn(_) { 0.0 }),
    upper_torque_thresholds_nominal: Array::makei(7, fn(_) { 0.0 }),
    lower_force_thresholds_acceleration: Array::makei(6, fn(_) { 0.0 }),
    upper_force_thresholds_acceleration: Array::makei(6, fn(_) { 0.0 }),
    lower_force_thresholds_nominal: Array::makei(6, fn(_) { 0.0 }),
    upper_force_thresholds_nominal: Array::makei(6, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec::new() -> Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetFullCollisionBehavior_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_d6898555d931aee3a5b4f5f97830cb9982f2e378c59c40bcaa0201840d2f2824",
    min_wire_bytes: 416, max_wire_bytes: 416 }
}
pub fn Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec::encode(_self :
        Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec, value : Ros2Franka_msgsSrvSetFullCollisionBehavior_Request) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 416, error: 0 }
  write_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 416 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec::decode(_self :
        Ros2Franka_msgsSrvSetFullCollisionBehavior_RequestCodec, input : Bytes) ->
        Result[Ros2Franka_msgsSrvSetFullCollisionBehavior_Request, Int] {
  if input.length() < 416 || input.length() > 416 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request(writer : BoundedWriter, value :
        Ros2Franka_msgsSrvSetFullCollisionBehavior_Request) -> Unit {
  let part0 = value.lower_torque_thresholds_acceleration
  let count0 = part0.length()
  if count0 != 7 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.upper_torque_thresholds_acceleration
  let count1 = part1.length()
  if count1 != 7 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.lower_torque_thresholds_nominal
  let count2 = part2.length()
  if count2 != 7 { writer.error = 22; return () }
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.upper_torque_thresholds_nominal
  let count3 = part3.length()
  if count3 != 7 { writer.error = 22; return () }
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.lower_force_thresholds_acceleration
  let count4 = part4.length()
  if count4 != 6 { writer.error = 22; return () }
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  let part5 = value.upper_force_thresholds_acceleration
  let count5 = part5.length()
  if count5 != 6 { writer.error = 22; return () }
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    writer.float64(element)
  }
  let part6 = value.lower_force_thresholds_nominal
  let count6 = part6.length()
  if count6 != 6 { writer.error = 22; return () }
  for index = 0; index < count6; index = index + 1 {
    let element = part6[index]
    writer.float64(element)
  }
  let part7 = value.upper_force_thresholds_nominal
  let count7 = part7.length()
  if count7 != 6 { writer.error = 22; return () }
  for index = 0; index < count7; index = index + 1 {
    let element = part7[index]
    writer.float64(element)
  }
}
fn read_Ros2Franka_msgsSrvSetFullCollisionBehavior_Request(reader : BoundedReader) ->
        Ros2Franka_msgsSrvSetFullCollisionBehavior_Request {
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
  let count4 = 6
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.float64())
  }
  let part5 : Array[Double] = []
  let count5 = 6
  for index = 0; index < count5; index = index + 1 {
    part5.push(reader.float64())
  }
  let part6 : Array[Double] = []
  let count6 = 6
  for index = 0; index < count6; index = index + 1 {
    part6.push(reader.float64())
  }
  let part7 : Array[Double] = []
  let count7 = 6
  for index = 0; index < count7; index = index + 1 {
    part7.push(reader.float64())
  }
  { lower_torque_thresholds_acceleration: part0, upper_torque_thresholds_acceleration: part1, lower_torque_thresholds_nominal:
          part2, upper_torque_thresholds_nominal: part3, lower_force_thresholds_acceleration: part4,
          upper_force_thresholds_acceleration: part5, lower_force_thresholds_nominal: part6, upper_force_thresholds_nominal: part7 }
}

/// @brief Own every original field of franka_msgs/srv/SetFullCollisionBehavior_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetFullCollisionBehavior_Response {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.success; native type bool.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetFullCollisionBehavior_Response.error; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut error : String
}
pub fn Ros2Franka_msgsSrvSetFullCollisionBehavior_Response::new() -> Ros2Franka_msgsSrvSetFullCollisionBehavior_Response {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec::new() -> Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetFullCollisionBehavior_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_76430e384e9ad8b3f3c937e3004e8dc15a51d28abecd108c698e60d39c54f300",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec::encode(_self :
        Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec, value : Ros2Franka_msgsSrvSetFullCollisionBehavior_Response) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec::decode(_self :
        Ros2Franka_msgsSrvSetFullCollisionBehavior_ResponseCodec, input : Bytes) ->
        Result[Ros2Franka_msgsSrvSetFullCollisionBehavior_Response, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response(writer : BoundedWriter, value :
        Ros2Franka_msgsSrvSetFullCollisionBehavior_Response) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsSrvSetFullCollisionBehavior_Response(reader : BoundedReader) ->
        Ros2Franka_msgsSrvSetFullCollisionBehavior_Response {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of franka_msgs/srv/SetJointStiffness_Request.
/// @details Canonical extent 56..56 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetJointStiffness_Request {
  /// @brief Impedance for each joint in the internal controller
  /// @details Original franka_msgs/srv/SetJointStiffness_Request.joint_stiffness; native type float64.
  /// Exactly 7 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut joint_stiffness : Array[Double]
}
pub fn Ros2Franka_msgsSrvSetJointStiffness_Request::new() -> Ros2Franka_msgsSrvSetJointStiffness_Request {
  {
    joint_stiffness: Array::makei(7, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros2Franka_msgsSrvSetJointStiffness_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetJointStiffness_RequestCodec::new() -> Ros2Franka_msgsSrvSetJointStiffness_RequestCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetJointStiffness_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_65b5d6599d1b97a0356f599102c22e0ae8c33b85f14c5a49b6c097eb227d334c",
    min_wire_bytes: 56, max_wire_bytes: 56 }
}
pub fn Ros2Franka_msgsSrvSetJointStiffness_RequestCodec::encode(_self : Ros2Franka_msgsSrvSetJointStiffness_RequestCodec, value :
        Ros2Franka_msgsSrvSetJointStiffness_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros2Franka_msgsSrvSetJointStiffness_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetJointStiffness_RequestCodec::decode(_self : Ros2Franka_msgsSrvSetJointStiffness_RequestCodec, input :
        Bytes) -> Result[Ros2Franka_msgsSrvSetJointStiffness_Request, Int] {
  if input.length() < 56 || input.length() > 56 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetJointStiffness_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetJointStiffness_Request(writer : BoundedWriter, value : Ros2Franka_msgsSrvSetJointStiffness_Request) ->
        Unit {
  let part0 = value.joint_stiffness
  let count0 = part0.length()
  if count0 != 7 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
}
fn read_Ros2Franka_msgsSrvSetJointStiffness_Request(reader : BoundedReader) -> Ros2Franka_msgsSrvSetJointStiffness_Request {
  let part0 : Array[Double] = []
  let count0 = 7
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  { joint_stiffness: part0 }
}

/// @brief Own every original field of franka_msgs/srv/SetJointStiffness_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetJointStiffness_Response {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetJointStiffness_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetJointStiffness_Response.error; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut error : String
}
pub fn Ros2Franka_msgsSrvSetJointStiffness_Response::new() -> Ros2Franka_msgsSrvSetJointStiffness_Response {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec::new() -> Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetJointStiffness_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_1a857ab809079e0eec664250a9521ddc1cdf66e61aa2e0f22eae8442f5231c4d",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec::encode(_self : Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec, value :
        Ros2Franka_msgsSrvSetJointStiffness_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsSrvSetJointStiffness_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec::decode(_self : Ros2Franka_msgsSrvSetJointStiffness_ResponseCodec, input :
        Bytes) -> Result[Ros2Franka_msgsSrvSetJointStiffness_Response, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetJointStiffness_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetJointStiffness_Response(writer : BoundedWriter, value : Ros2Franka_msgsSrvSetJointStiffness_Response)
        -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsSrvSetJointStiffness_Response(reader : BoundedReader) -> Ros2Franka_msgsSrvSetJointStiffness_Response {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of franka_msgs/srv/SetLoad_Request.
/// @details Canonical extent 104..104 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetLoad_Request {
  /// @brief The mass of the object
  /// @details Original franka_msgs/srv/SetLoad_Request.mass; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut mass : Double
  /// @brief Position of the center of mass
  /// @details Original franka_msgs/srv/SetLoad_Request.center_of_mass; native type float64. Exactly 3
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut center_of_mass : Array[Double]
  /// @brief Inertia of the object - the provided 3x3 matrix is in column major form.
  /// @details Original franka_msgs/srv/SetLoad_Request.load_inertia; native type float64. Exactly 9
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut load_inertia : Array[Double]
}
pub fn Ros2Franka_msgsSrvSetLoad_Request::new() -> Ros2Franka_msgsSrvSetLoad_Request {
  {
    mass: 0.0,
    center_of_mass: Array::makei(3, fn(_) { 0.0 }),
    load_inertia: Array::makei(9, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros2Franka_msgsSrvSetLoad_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetLoad_RequestCodec::new() -> Ros2Franka_msgsSrvSetLoad_RequestCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetLoad_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_a616a844864b7bbf4ee18ac481ddd8406bec47354b4519a0e17f8a305635b7f8",
    min_wire_bytes: 104, max_wire_bytes: 104 }
}
pub fn Ros2Franka_msgsSrvSetLoad_RequestCodec::encode(_self : Ros2Franka_msgsSrvSetLoad_RequestCodec, value :
        Ros2Franka_msgsSrvSetLoad_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 104, error: 0 }
  write_Ros2Franka_msgsSrvSetLoad_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 104 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetLoad_RequestCodec::decode(_self : Ros2Franka_msgsSrvSetLoad_RequestCodec, input : Bytes) ->
        Result[Ros2Franka_msgsSrvSetLoad_Request, Int] {
  if input.length() < 104 || input.length() > 104 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetLoad_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetLoad_Request(writer : BoundedWriter, value : Ros2Franka_msgsSrvSetLoad_Request) -> Unit {
  let part0 = value.mass
  writer.float64(part0)
  let part1 = value.center_of_mass
  let count1 = part1.length()
  if count1 != 3 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.load_inertia
  let count2 = part2.length()
  if count2 != 9 { writer.error = 22; return () }
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros2Franka_msgsSrvSetLoad_Request(reader : BoundedReader) -> Ros2Franka_msgsSrvSetLoad_Request {
  let part0 = reader.float64()
  let part1 : Array[Double] = []
  let count1 = 3
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 : Array[Double] = []
  let count2 = 9
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { mass: part0, center_of_mass: part1, load_inertia: part2 }
}

/// @brief Own every original field of franka_msgs/srv/SetLoad_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetLoad_Response {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetLoad_Response.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetLoad_Response.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut error : String
}
pub fn Ros2Franka_msgsSrvSetLoad_Response::new() -> Ros2Franka_msgsSrvSetLoad_Response {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Franka_msgsSrvSetLoad_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetLoad_ResponseCodec::new() -> Ros2Franka_msgsSrvSetLoad_ResponseCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetLoad_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_991ff575719ef9442063a13c45a9660c672f5607e6e40cf6ab5c7a3173fa00bf",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsSrvSetLoad_ResponseCodec::encode(_self : Ros2Franka_msgsSrvSetLoad_ResponseCodec, value :
        Ros2Franka_msgsSrvSetLoad_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsSrvSetLoad_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetLoad_ResponseCodec::decode(_self : Ros2Franka_msgsSrvSetLoad_ResponseCodec, input : Bytes) ->
        Result[Ros2Franka_msgsSrvSetLoad_Response, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetLoad_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetLoad_Response(writer : BoundedWriter, value : Ros2Franka_msgsSrvSetLoad_Response) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsSrvSetLoad_Response(reader : BoundedReader) -> Ros2Franka_msgsSrvSetLoad_Response {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Request.
/// @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetStiffnessFrame_Request {
  /// @brief Sets the transformation matrix describing the stiffness frame relative to the TCP frame. A
  /// 4x4 column-major transformation matrix representing the position and orientation.
  /// @details Original franka_msgs/srv/SetStiffnessFrame_Request.transformation; native type float64.
  /// Exactly 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut transformation : Array[Double]
}
pub fn Ros2Franka_msgsSrvSetStiffnessFrame_Request::new() -> Ros2Franka_msgsSrvSetStiffnessFrame_Request {
  {
    transformation: Array::makei(16, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec::new() -> Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetStiffnessFrame_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_f8ee91daba1642286b63178c18bf2a005597e94951f11a185241193132c9f402",
    min_wire_bytes: 128, max_wire_bytes: 128 }
}
pub fn Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec::encode(_self : Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec, value :
        Ros2Franka_msgsSrvSetStiffnessFrame_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 128, error: 0 }
  write_Ros2Franka_msgsSrvSetStiffnessFrame_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 128 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec::decode(_self : Ros2Franka_msgsSrvSetStiffnessFrame_RequestCodec, input :
        Bytes) -> Result[Ros2Franka_msgsSrvSetStiffnessFrame_Request, Int] {
  if input.length() < 128 || input.length() > 128 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetStiffnessFrame_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetStiffnessFrame_Request(writer : BoundedWriter, value : Ros2Franka_msgsSrvSetStiffnessFrame_Request) ->
        Unit {
  let part0 = value.transformation
  let count0 = part0.length()
  if count0 != 16 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
}
fn read_Ros2Franka_msgsSrvSetStiffnessFrame_Request(reader : BoundedReader) -> Ros2Franka_msgsSrvSetStiffnessFrame_Request {
  let part0 : Array[Double] = []
  let count0 = 16
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  { transformation: part0 }
}

/// @brief Own every original field of franka_msgs/srv/SetStiffnessFrame_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetStiffnessFrame_Response {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetStiffnessFrame_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetStiffnessFrame_Response.error; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut error : String
}
pub fn Ros2Franka_msgsSrvSetStiffnessFrame_Response::new() -> Ros2Franka_msgsSrvSetStiffnessFrame_Response {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec::new() -> Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetStiffnessFrame_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_e32cb83b1f0f3cda363566525c0b1fe367190f2e66f68282b330f4517f6ea744",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec::encode(_self : Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec, value :
        Ros2Franka_msgsSrvSetStiffnessFrame_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsSrvSetStiffnessFrame_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec::decode(_self : Ros2Franka_msgsSrvSetStiffnessFrame_ResponseCodec, input :
        Bytes) -> Result[Ros2Franka_msgsSrvSetStiffnessFrame_Response, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetStiffnessFrame_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetStiffnessFrame_Response(writer : BoundedWriter, value : Ros2Franka_msgsSrvSetStiffnessFrame_Response)
        -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsSrvSetStiffnessFrame_Response(reader : BoundedReader) -> Ros2Franka_msgsSrvSetStiffnessFrame_Response {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of franka_msgs/srv/SetTCPFrame_Request.
/// @details Canonical extent 128..128 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetTCPFrame_Request {
  /// @brief Sets the transformation matrix describing the tcp frame to the end-effector frame. A 4x4
  /// column-major transformation matrix representing the position and orientation.
  /// @details Original franka_msgs/srv/SetTCPFrame_Request.transformation; native type float64. Exactly
  /// 16 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut transformation : Array[Double]
}
pub fn Ros2Franka_msgsSrvSetTCPFrame_Request::new() -> Ros2Franka_msgsSrvSetTCPFrame_Request {
  {
    transformation: Array::makei(16, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros2Franka_msgsSrvSetTCPFrame_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetTCPFrame_RequestCodec::new() -> Ros2Franka_msgsSrvSetTCPFrame_RequestCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetTCPFrame_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_2ef445bfa494a6bc50ee3337695562255c06890216c30ba17df95e691871441f",
    min_wire_bytes: 128, max_wire_bytes: 128 }
}
pub fn Ros2Franka_msgsSrvSetTCPFrame_RequestCodec::encode(_self : Ros2Franka_msgsSrvSetTCPFrame_RequestCodec, value :
        Ros2Franka_msgsSrvSetTCPFrame_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 128, error: 0 }
  write_Ros2Franka_msgsSrvSetTCPFrame_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 128 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetTCPFrame_RequestCodec::decode(_self : Ros2Franka_msgsSrvSetTCPFrame_RequestCodec, input : Bytes) ->
        Result[Ros2Franka_msgsSrvSetTCPFrame_Request, Int] {
  if input.length() < 128 || input.length() > 128 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetTCPFrame_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetTCPFrame_Request(writer : BoundedWriter, value : Ros2Franka_msgsSrvSetTCPFrame_Request) -> Unit {
  let part0 = value.transformation
  let count0 = part0.length()
  if count0 != 16 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
}
fn read_Ros2Franka_msgsSrvSetTCPFrame_Request(reader : BoundedReader) -> Ros2Franka_msgsSrvSetTCPFrame_Request {
  let part0 : Array[Double] = []
  let count0 = 16
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  { transformation: part0 }
}

/// @brief Own every original field of franka_msgs/srv/SetTCPFrame_Response.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_msgsSrvSetTCPFrame_Response {
  /// @brief Retain the complete original bool field.
  /// @details Original franka_msgs/srv/SetTCPFrame_Response.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original franka_msgs/srv/SetTCPFrame_Response.error; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut error : String
}
pub fn Ros2Franka_msgsSrvSetTCPFrame_Response::new() -> Ros2Franka_msgsSrvSetTCPFrame_Response {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec::new() -> Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec {
  { ros_version: 2, native_type: "franka_msgs/srv/SetTCPFrame_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_87e4f5556c292289fe17898a40f1f5dd6161e7cc87ca570c86e9f69080d1df38",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec::encode(_self : Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec, value :
        Ros2Franka_msgsSrvSetTCPFrame_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Franka_msgsSrvSetTCPFrame_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec::decode(_self : Ros2Franka_msgsSrvSetTCPFrame_ResponseCodec, input : Bytes) ->
        Result[Ros2Franka_msgsSrvSetTCPFrame_Response, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_msgsSrvSetTCPFrame_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_msgsSrvSetTCPFrame_Response(writer : BoundedWriter, value : Ros2Franka_msgsSrvSetTCPFrame_Response) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Franka_msgsSrvSetTCPFrame_Response(reader : BoundedReader) -> Ros2Franka_msgsSrvSetTCPFrame_Response {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Goal.
/// @details Canonical extent 32..32 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsActionMoveAbsolute_Goal {
  /// @brief Command an absolute move of the Franka Spine. Target position [m]
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Goal.position; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut position : Double
  /// @brief Motion velocity [m/s], must be > 0
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Goal.velocity; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut velocity : Double
  /// @brief Motion acceleration [m/s²], must be > 0
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Goal.acceleration; native type float64.
  /// Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut acceleration : Double
  /// @brief Motion deceleration [m/s²], must be > 0
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Goal.deceleration; native type float64.
  /// Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut deceleration : Double
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_Goal::new() -> Ros2Franka_spine_msgsActionMoveAbsolute_Goal {
  {
    position: 0.0,
    velocity: 0.0,
    acceleration: 0.0,
    deceleration: 0.0,
  }
}
pub(all) struct Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec::new() -> Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/action/MoveAbsolute_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_a0c2f9037fd6730641b19b6da6ce1c6ca03bbd517fdd791c159effc93290cf13",
    min_wire_bytes: 32, max_wire_bytes: 32 }
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec::encode(_self : Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec, value :
        Ros2Franka_spine_msgsActionMoveAbsolute_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros2Franka_spine_msgsActionMoveAbsolute_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec::decode(_self : Ros2Franka_spine_msgsActionMoveAbsolute_GoalCodec, input :
        Bytes) -> Result[Ros2Franka_spine_msgsActionMoveAbsolute_Goal, Int] {
  if input.length() < 32 || input.length() > 32 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsActionMoveAbsolute_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsActionMoveAbsolute_Goal(writer : BoundedWriter, value : Ros2Franka_spine_msgsActionMoveAbsolute_Goal)
        -> Unit {
  let part0 = value.position
  writer.float64(part0)
  let part1 = value.velocity
  writer.float64(part1)
  let part2 = value.acceleration
  writer.float64(part2)
  let part3 = value.deceleration
  writer.float64(part3)
}
fn read_Ros2Franka_spine_msgsActionMoveAbsolute_Goal(reader : BoundedReader) -> Ros2Franka_spine_msgsActionMoveAbsolute_Goal {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { position: part0, velocity: part1, acceleration: part2, deceleration: part3 }
}

/// @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Result.
/// @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsActionMoveAbsolute_Result {
  /// @brief True if the target position was reached
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Result.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief How the motion was stopped (from spine response)
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Result.stop_by; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut stop_by : String
  /// @brief Error description if success is false
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Result.error; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut error : String
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_Result::new() -> Ros2Franka_spine_msgsActionMoveAbsolute_Result {
  {
    success: false,
    stop_by: "",
    error: "",
  }
}
pub(all) struct Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec::new() -> Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/action/MoveAbsolute_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_86b5c823e6e6604595462a76cd259daef420b2dff169f6dbe00f742f079155d5",
    min_wire_bytes: 9, max_wire_bytes: 521 }
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec::encode(_self : Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec,
        value : Ros2Franka_spine_msgsActionMoveAbsolute_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 521, error: 0 }
  write_Ros2Franka_spine_msgsActionMoveAbsolute_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec::decode(_self : Ros2Franka_spine_msgsActionMoveAbsolute_ResultCodec,
        input : Bytes) -> Result[Ros2Franka_spine_msgsActionMoveAbsolute_Result, Int] {
  if input.length() < 9 || input.length() > 521 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsActionMoveAbsolute_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsActionMoveAbsolute_Result(writer : BoundedWriter, value :
        Ros2Franka_spine_msgsActionMoveAbsolute_Result) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.stop_by
  writer.text(part1, 256)
  let part2 = value.error
  writer.text(part2, 256)
}
fn read_Ros2Franka_spine_msgsActionMoveAbsolute_Result(reader : BoundedReader) -> Ros2Franka_spine_msgsActionMoveAbsolute_Result {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  let part2 = reader.text(256)
  { success: part0, stop_by: part1, error: part2 }
}

/// @brief Own every original field of franka_spine_msgs/action/MoveAbsolute_Feedback.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsActionMoveAbsolute_Feedback {
  /// @brief Current spine position [m]
  /// @details Original franka_spine_msgs/action/MoveAbsolute_Feedback.current_position; native type
  /// float64. Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut current_position : Double
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_Feedback::new() -> Ros2Franka_spine_msgsActionMoveAbsolute_Feedback {
  {
    current_position: 0.0,
  }
}
pub(all) struct Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec::new() -> Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/action/MoveAbsolute_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_cf2f760313ab8c6cc01dd79271619926320021746451f376e56d18f63ffad929",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec::encode(_self : Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec,
        value : Ros2Franka_spine_msgsActionMoveAbsolute_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec::decode(_self : Ros2Franka_spine_msgsActionMoveAbsolute_FeedbackCodec,
        input : Bytes) -> Result[Ros2Franka_spine_msgsActionMoveAbsolute_Feedback, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback(writer : BoundedWriter, value :
        Ros2Franka_spine_msgsActionMoveAbsolute_Feedback) -> Unit {
  let part0 = value.current_position
  writer.float64(part0)
}
fn read_Ros2Franka_spine_msgsActionMoveAbsolute_Feedback(reader : BoundedReader) -> Ros2Franka_spine_msgsActionMoveAbsolute_Feedback
        {
  let part0 = reader.float64()
  { current_position: part0 }
}

/// @brief Own every original field of franka_spine_msgs/msg/UserLimits.
/// @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsMsgUserLimits {
  /// @brief User-defined soft motion limits for the spine. Lower motion limit [m]
  /// @details Original franka_spine_msgs/msg/UserLimits.lower_limit; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut lower_limit : Double
  /// @brief Upper motion limit [m]
  /// @details Original franka_spine_msgs/msg/UserLimits.upper_limit; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut upper_limit : Double
}
pub fn Ros2Franka_spine_msgsMsgUserLimits::new() -> Ros2Franka_spine_msgsMsgUserLimits {
  {
    lower_limit: 0.0,
    upper_limit: 0.0,
  }
}
pub(all) struct Ros2Franka_spine_msgsMsgUserLimitsCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsMsgUserLimitsCodec::new() -> Ros2Franka_spine_msgsMsgUserLimitsCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/msg/UserLimits",
    native_identity: None,
    codec_identity: "UWVMROS1_20256e37f0ae710b5cb9ab9438b5ff8144ce2ab6fc606c5335d0f5de5384e368",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
pub fn Ros2Franka_spine_msgsMsgUserLimitsCodec::encode(_self : Ros2Franka_spine_msgsMsgUserLimitsCodec, value :
        Ros2Franka_spine_msgsMsgUserLimits) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Franka_spine_msgsMsgUserLimits(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsMsgUserLimitsCodec::decode(_self : Ros2Franka_spine_msgsMsgUserLimitsCodec, input : Bytes) ->
        Result[Ros2Franka_spine_msgsMsgUserLimits, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsMsgUserLimits(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsMsgUserLimits(writer : BoundedWriter, value : Ros2Franka_spine_msgsMsgUserLimits) -> Unit {
  let part0 = value.lower_limit
  writer.float64(part0)
  let part1 = value.upper_limit
  writer.float64(part1)
}
fn read_Ros2Franka_spine_msgsMsgUserLimits(reader : BoundedReader) -> Ros2Franka_spine_msgsMsgUserLimits {
  let part0 = reader.float64()
  let part1 = reader.float64()
  { lower_limit: part0, upper_limit: part1 }
}

/// @brief Own every original field of franka_spine_msgs/msg/SpineParameters.
/// @details Canonical extent 16..16 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsMsgSpineParameters {
  /// @brief Aggregated spine parameters returned by the GetParameters service. User-defined motion limits
  /// @details Original franka_spine_msgs/msg/SpineParameters.user_limits; native type
  /// franka_spine_msgs/msg/UserLimits. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut user_limits : Ros2Franka_spine_msgsMsgUserLimits
}
pub fn Ros2Franka_spine_msgsMsgSpineParameters::new() -> Ros2Franka_spine_msgsMsgSpineParameters {
  {
    user_limits: Ros2Franka_spine_msgsMsgUserLimits::new(),
  }
}
pub(all) struct Ros2Franka_spine_msgsMsgSpineParametersCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsMsgSpineParametersCodec::new() -> Ros2Franka_spine_msgsMsgSpineParametersCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/msg/SpineParameters",
    native_identity: None,
    codec_identity: "UWVMROS1_4d4c45cfccf278c99a189e92d438d0b11b2b693012cb0f76b65b6822eb816223",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
pub fn Ros2Franka_spine_msgsMsgSpineParametersCodec::encode(_self : Ros2Franka_spine_msgsMsgSpineParametersCodec, value :
        Ros2Franka_spine_msgsMsgSpineParameters) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Franka_spine_msgsMsgSpineParameters(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsMsgSpineParametersCodec::decode(_self : Ros2Franka_spine_msgsMsgSpineParametersCodec, input : Bytes) ->
        Result[Ros2Franka_spine_msgsMsgSpineParameters, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsMsgSpineParameters(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsMsgSpineParameters(writer : BoundedWriter, value : Ros2Franka_spine_msgsMsgSpineParameters) -> Unit {
  let part0 = value.user_limits
  write_Ros2Franka_spine_msgsMsgUserLimits(writer, part0)
}
fn read_Ros2Franka_spine_msgsMsgSpineParameters(reader : BoundedReader) -> Ros2Franka_spine_msgsMsgSpineParameters {
  let part0 = read_Ros2Franka_spine_msgsMsgUserLimits(reader)
  { user_limits: part0 }
}

/// @brief Own every original field of franka_spine_msgs/msg/SpinePosition.
/// @details Canonical extent 21..149 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsMsgSpinePosition {
  /// @brief Periodic spine position sample published on ~/position. Subscribe to this instead of polling
  /// the GetPosition service in a loop.
  /// @details Original franka_spine_msgs/msg/SpinePosition.header; native type std_msgs/msg/Header.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Last known position [m]
  /// @details Original franka_spine_msgs/msg/SpinePosition.position; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut position : Double
  /// @brief False when the sample is stale because the REST read failed
  /// @details Original franka_spine_msgs/msg/SpinePosition.valid; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut valid : Bool
}
pub fn Ros2Franka_spine_msgsMsgSpinePosition::new() -> Ros2Franka_spine_msgsMsgSpinePosition {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    position: 0.0,
    valid: false,
  }
}
pub(all) struct Ros2Franka_spine_msgsMsgSpinePositionCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsMsgSpinePositionCodec::new() -> Ros2Franka_spine_msgsMsgSpinePositionCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/msg/SpinePosition",
    native_identity: None,
    codec_identity: "UWVMROS1_71be15c40f39074dfdbe79a3587847ae512c5a3c8df23cc9415d5bfe59d05775",
    min_wire_bytes: 21, max_wire_bytes: 149 }
}
pub fn Ros2Franka_spine_msgsMsgSpinePositionCodec::encode(_self : Ros2Franka_spine_msgsMsgSpinePositionCodec, value :
        Ros2Franka_spine_msgsMsgSpinePosition) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 149, error: 0 }
  write_Ros2Franka_spine_msgsMsgSpinePosition(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 21 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsMsgSpinePositionCodec::decode(_self : Ros2Franka_spine_msgsMsgSpinePositionCodec, input : Bytes) ->
        Result[Ros2Franka_spine_msgsMsgSpinePosition, Int] {
  if input.length() < 21 || input.length() > 149 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsMsgSpinePosition(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsMsgSpinePosition(writer : BoundedWriter, value : Ros2Franka_spine_msgsMsgSpinePosition) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.position
  writer.float64(part1)
  let part2 = value.valid
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Franka_spine_msgsMsgSpinePosition(reader : BoundedReader) -> Ros2Franka_spine_msgsMsgSpinePosition {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = reader.float64()
  let part2 = reader.boolean()
  { header: part0, position: part1, valid: part2 }
}

/// @brief Own every original field of franka_spine_msgs/msg/SpineState.
/// @details Canonical extent 25..921 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsMsgSpineState {
  /// @brief Periodic spine state sample published on ~/state. Subscribe to this instead of polling the
  /// GetSpineState service in a loop. Possible states: NotReadyToSwitchOn, SwitchedOff, ReadyToSwitchOn,
  /// MotorOff, SwitchedOn, QuickStopActive, FaultReactionActive, Fault, Unknown.
  /// @details Original franka_spine_msgs/msg/SpineState.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Current spine state
  /// @details Original franka_spine_msgs/msg/SpineState.state; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut state : String
  /// @brief Error code (empty when no error)
  /// @details Original franka_spine_msgs/msg/SpineState.error_code; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut error_code : String
  /// @brief Human-readable error description
  /// @details Original franka_spine_msgs/msg/SpineState.error_description; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut error_description : String
  /// @brief False when the sample is stale because the REST read failed
  /// @details Original franka_spine_msgs/msg/SpineState.valid; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut valid : Bool
}
pub fn Ros2Franka_spine_msgsMsgSpineState::new() -> Ros2Franka_spine_msgsMsgSpineState {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    state: "",
    error_code: "",
    error_description: "",
    valid: false,
  }
}
pub(all) struct Ros2Franka_spine_msgsMsgSpineStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsMsgSpineStateCodec::new() -> Ros2Franka_spine_msgsMsgSpineStateCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/msg/SpineState",
    native_identity: None,
    codec_identity: "UWVMROS1_ad0b5dc5d79956da854582765c147d3d33edab569c4829e69cc7990edfb89441",
    min_wire_bytes: 25, max_wire_bytes: 921 }
}
pub fn Ros2Franka_spine_msgsMsgSpineStateCodec::encode(_self : Ros2Franka_spine_msgsMsgSpineStateCodec, value :
        Ros2Franka_spine_msgsMsgSpineState) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 921, error: 0 }
  write_Ros2Franka_spine_msgsMsgSpineState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsMsgSpineStateCodec::decode(_self : Ros2Franka_spine_msgsMsgSpineStateCodec, input : Bytes) ->
        Result[Ros2Franka_spine_msgsMsgSpineState, Int] {
  if input.length() < 25 || input.length() > 921 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsMsgSpineState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsMsgSpineState(writer : BoundedWriter, value : Ros2Franka_spine_msgsMsgSpineState) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.state
  writer.text(part1, 256)
  let part2 = value.error_code
  writer.text(part2, 256)
  let part3 = value.error_description
  writer.text(part3, 256)
  let part4 = value.valid
  writer.unsigned(if part4 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Franka_spine_msgsMsgSpineState(reader : BoundedReader) -> Ros2Franka_spine_msgsMsgSpineState {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = reader.text(256)
  let part2 = reader.text(256)
  let part3 = reader.text(256)
  let part4 = reader.boolean()
  { header: part0, state: part1, error_code: part2, error_description: part3, valid: part4 }
}

/// @brief Own every original field of franka_spine_msgs/srv/FaultReset_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_spine_msgsSrvFaultReset_Request { Ros2Franka_spine_msgsSrvFaultReset_RequestEmpty }
pub fn Ros2Franka_spine_msgsSrvFaultReset_Request::new() -> Ros2Franka_spine_msgsSrvFaultReset_Request {
        Ros2Franka_spine_msgsSrvFaultReset_RequestEmpty }
pub(all) struct Ros2Franka_spine_msgsSrvFaultReset_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvFaultReset_RequestCodec::new() -> Ros2Franka_spine_msgsSrvFaultReset_RequestCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/FaultReset_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_0f836229e8e8a1713b9e9a8d7f0f43677ad93380e1f7350ff1597d25067b7f33",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_spine_msgsSrvFaultReset_RequestCodec::encode(_self : Ros2Franka_spine_msgsSrvFaultReset_RequestCodec, value :
        Ros2Franka_spine_msgsSrvFaultReset_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_spine_msgsSrvFaultReset_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvFaultReset_RequestCodec::decode(_self : Ros2Franka_spine_msgsSrvFaultReset_RequestCodec, input :
        Bytes) -> Result[Ros2Franka_spine_msgsSrvFaultReset_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvFaultReset_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvFaultReset_Request(writer : BoundedWriter, value : Ros2Franka_spine_msgsSrvFaultReset_Request) ->
        Unit {
}
fn read_Ros2Franka_spine_msgsSrvFaultReset_Request(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvFaultReset_Request {
  Ros2Franka_spine_msgsSrvFaultReset_RequestEmpty
}

/// @brief Own every original field of franka_spine_msgs/srv/FaultReset_Response.
/// @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsSrvFaultReset_Response {
  /// @brief Spine state after the reset
  /// @details Original franka_spine_msgs/srv/FaultReset_Response.state; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut state : String
  /// @brief True if the fault was cleared
  /// @details Original franka_spine_msgs/srv/FaultReset_Response.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Human-readable status or error description
  /// @details Original franka_spine_msgs/srv/FaultReset_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut message : String
}
pub fn Ros2Franka_spine_msgsSrvFaultReset_Response::new() -> Ros2Franka_spine_msgsSrvFaultReset_Response {
  {
    state: "",
    success: false,
    message: "",
  }
}
pub(all) struct Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec::new() -> Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/FaultReset_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_1ebeded0dbe4a4197a52de3fa43dc57fa372bd4e6ef5e2ded2558ccbf691410c",
    min_wire_bytes: 9, max_wire_bytes: 521 }
}
pub fn Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec::encode(_self : Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec, value :
        Ros2Franka_spine_msgsSrvFaultReset_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 521, error: 0 }
  write_Ros2Franka_spine_msgsSrvFaultReset_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec::decode(_self : Ros2Franka_spine_msgsSrvFaultReset_ResponseCodec, input :
        Bytes) -> Result[Ros2Franka_spine_msgsSrvFaultReset_Response, Int] {
  if input.length() < 9 || input.length() > 521 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvFaultReset_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvFaultReset_Response(writer : BoundedWriter, value : Ros2Franka_spine_msgsSrvFaultReset_Response) ->
        Unit {
  let part0 = value.state
  writer.text(part0, 256)
  let part1 = value.success
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.message
  writer.text(part2, 256)
}
fn read_Ros2Franka_spine_msgsSrvFaultReset_Response(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvFaultReset_Response {
  let part0 = reader.text(256)
  let part1 = reader.boolean()
  let part2 = reader.text(256)
  { state: part0, success: part1, message: part2 }
}

/// @brief Own every original field of franka_spine_msgs/srv/GetParameters_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_spine_msgsSrvGetParameters_Request { Ros2Franka_spine_msgsSrvGetParameters_RequestEmpty }
pub fn Ros2Franka_spine_msgsSrvGetParameters_Request::new() -> Ros2Franka_spine_msgsSrvGetParameters_Request {
        Ros2Franka_spine_msgsSrvGetParameters_RequestEmpty }
pub(all) struct Ros2Franka_spine_msgsSrvGetParameters_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvGetParameters_RequestCodec::new() -> Ros2Franka_spine_msgsSrvGetParameters_RequestCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/GetParameters_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_80ef5d2ef6ff2df9d14f29417d1928429315c0b7be9ec59513b9b3943a970b14",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_spine_msgsSrvGetParameters_RequestCodec::encode(_self : Ros2Franka_spine_msgsSrvGetParameters_RequestCodec, value
        : Ros2Franka_spine_msgsSrvGetParameters_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_spine_msgsSrvGetParameters_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvGetParameters_RequestCodec::decode(_self : Ros2Franka_spine_msgsSrvGetParameters_RequestCodec, input
        : Bytes) -> Result[Ros2Franka_spine_msgsSrvGetParameters_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvGetParameters_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvGetParameters_Request(writer : BoundedWriter, value :
        Ros2Franka_spine_msgsSrvGetParameters_Request) -> Unit {
}
fn read_Ros2Franka_spine_msgsSrvGetParameters_Request(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvGetParameters_Request {
  Ros2Franka_spine_msgsSrvGetParameters_RequestEmpty
}

/// @brief Own every original field of franka_spine_msgs/srv/GetParameters_Response.
/// @details Canonical extent 21..277 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsSrvGetParameters_Response {
  /// @brief Calibration and limit values
  /// @details Original franka_spine_msgs/srv/GetParameters_Response.parameters; native type
  /// franka_spine_msgs/msg/SpineParameters. Scalar value. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut parameters : Ros2Franka_spine_msgsMsgSpineParameters
  /// @brief True if the REST call succeeded
  /// @details Original franka_spine_msgs/srv/GetParameters_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Human-readable status or error description
  /// @details Original franka_spine_msgs/srv/GetParameters_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut message : String
}
pub fn Ros2Franka_spine_msgsSrvGetParameters_Response::new() -> Ros2Franka_spine_msgsSrvGetParameters_Response {
  {
    parameters: Ros2Franka_spine_msgsMsgSpineParameters::new(),
    success: false,
    message: "",
  }
}
pub(all) struct Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec::new() -> Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/GetParameters_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_8e648792534d7f4996179f31d353d2594cf63031edef4451fd20a3838dc896ed",
    min_wire_bytes: 21, max_wire_bytes: 277 }
}
pub fn Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec::encode(_self : Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec,
        value : Ros2Franka_spine_msgsSrvGetParameters_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 277, error: 0 }
  write_Ros2Franka_spine_msgsSrvGetParameters_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 21 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec::decode(_self : Ros2Franka_spine_msgsSrvGetParameters_ResponseCodec,
        input : Bytes) -> Result[Ros2Franka_spine_msgsSrvGetParameters_Response, Int] {
  if input.length() < 21 || input.length() > 277 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvGetParameters_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvGetParameters_Response(writer : BoundedWriter, value :
        Ros2Franka_spine_msgsSrvGetParameters_Response) -> Unit {
  let part0 = value.parameters
  write_Ros2Franka_spine_msgsMsgSpineParameters(writer, part0)
  let part1 = value.success
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.message
  writer.text(part2, 256)
}
fn read_Ros2Franka_spine_msgsSrvGetParameters_Response(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvGetParameters_Response {
  let part0 = read_Ros2Franka_spine_msgsMsgSpineParameters(reader)
  let part1 = reader.boolean()
  let part2 = reader.text(256)
  { parameters: part0, success: part1, message: part2 }
}

/// @brief Own every original field of franka_spine_msgs/srv/GetPosition_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_spine_msgsSrvGetPosition_Request { Ros2Franka_spine_msgsSrvGetPosition_RequestEmpty }
pub fn Ros2Franka_spine_msgsSrvGetPosition_Request::new() -> Ros2Franka_spine_msgsSrvGetPosition_Request {
        Ros2Franka_spine_msgsSrvGetPosition_RequestEmpty }
pub(all) struct Ros2Franka_spine_msgsSrvGetPosition_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvGetPosition_RequestCodec::new() -> Ros2Franka_spine_msgsSrvGetPosition_RequestCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/GetPosition_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_66b05d1f08331161cafed301b3ab95a60dbb16aeb1a930ee780db163cb37c6c2",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_spine_msgsSrvGetPosition_RequestCodec::encode(_self : Ros2Franka_spine_msgsSrvGetPosition_RequestCodec, value :
        Ros2Franka_spine_msgsSrvGetPosition_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_spine_msgsSrvGetPosition_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvGetPosition_RequestCodec::decode(_self : Ros2Franka_spine_msgsSrvGetPosition_RequestCodec, input :
        Bytes) -> Result[Ros2Franka_spine_msgsSrvGetPosition_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvGetPosition_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvGetPosition_Request(writer : BoundedWriter, value : Ros2Franka_spine_msgsSrvGetPosition_Request) ->
        Unit {
}
fn read_Ros2Franka_spine_msgsSrvGetPosition_Request(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvGetPosition_Request {
  Ros2Franka_spine_msgsSrvGetPosition_RequestEmpty
}

/// @brief Own every original field of franka_spine_msgs/srv/GetPosition_Response.
/// @details Canonical extent 9..9 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsSrvGetPosition_Response {
  /// @brief Current position [m]
  /// @details Original franka_spine_msgs/srv/GetPosition_Response.position; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut position : Double
  /// @brief True if the REST call succeeded
  /// @details Original franka_spine_msgs/srv/GetPosition_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
}
pub fn Ros2Franka_spine_msgsSrvGetPosition_Response::new() -> Ros2Franka_spine_msgsSrvGetPosition_Response {
  {
    position: 0.0,
    success: false,
  }
}
pub(all) struct Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec::new() -> Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/GetPosition_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_18d9af57cc9f82c3c03d01e850da254e9431820b8291f03dafd2e8f74e849ab8",
    min_wire_bytes: 9, max_wire_bytes: 9 }
}
pub fn Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec::encode(_self : Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec, value :
        Ros2Franka_spine_msgsSrvGetPosition_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9, error: 0 }
  write_Ros2Franka_spine_msgsSrvGetPosition_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec::decode(_self : Ros2Franka_spine_msgsSrvGetPosition_ResponseCodec, input :
        Bytes) -> Result[Ros2Franka_spine_msgsSrvGetPosition_Response, Int] {
  if input.length() < 9 || input.length() > 9 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvGetPosition_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvGetPosition_Response(writer : BoundedWriter, value : Ros2Franka_spine_msgsSrvGetPosition_Response)
        -> Unit {
  let part0 = value.position
  writer.float64(part0)
  let part1 = value.success
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Franka_spine_msgsSrvGetPosition_Response(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvGetPosition_Response {
  let part0 = reader.float64()
  let part1 = reader.boolean()
  { position: part0, success: part1 }
}

/// @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_spine_msgsSrvGetSpineState_Request { Ros2Franka_spine_msgsSrvGetSpineState_RequestEmpty }
pub fn Ros2Franka_spine_msgsSrvGetSpineState_Request::new() -> Ros2Franka_spine_msgsSrvGetSpineState_Request {
        Ros2Franka_spine_msgsSrvGetSpineState_RequestEmpty }
pub(all) struct Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec::new() -> Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/GetSpineState_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_c4c456174d7b6647d09d986d37c041b942418941a5e01c447486727e919b8a67",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec::encode(_self : Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec, value
        : Ros2Franka_spine_msgsSrvGetSpineState_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_spine_msgsSrvGetSpineState_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec::decode(_self : Ros2Franka_spine_msgsSrvGetSpineState_RequestCodec, input
        : Bytes) -> Result[Ros2Franka_spine_msgsSrvGetSpineState_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvGetSpineState_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvGetSpineState_Request(writer : BoundedWriter, value :
        Ros2Franka_spine_msgsSrvGetSpineState_Request) -> Unit {
}
fn read_Ros2Franka_spine_msgsSrvGetSpineState_Request(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvGetSpineState_Request {
  Ros2Franka_spine_msgsSrvGetSpineState_RequestEmpty
}

/// @brief Own every original field of franka_spine_msgs/srv/GetSpineState_Response.
/// @details Canonical extent 13..781 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsSrvGetSpineState_Response {
  /// @brief Current spine state
  /// @details Original franka_spine_msgs/srv/GetSpineState_Response.state; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut state : String
  /// @brief Error code (empty when no error)
  /// @details Original franka_spine_msgs/srv/GetSpineState_Response.error_code; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut error_code : String
  /// @brief Human-readable error description
  /// @details Original franka_spine_msgs/srv/GetSpineState_Response.error_description; native type
  /// string. Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut error_description : String
  /// @brief True if the REST call succeeded
  /// @details Original franka_spine_msgs/srv/GetSpineState_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
}
pub fn Ros2Franka_spine_msgsSrvGetSpineState_Response::new() -> Ros2Franka_spine_msgsSrvGetSpineState_Response {
  {
    state: "",
    error_code: "",
    error_description: "",
    success: false,
  }
}
pub(all) struct Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec::new() -> Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/GetSpineState_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_297d70e2c5c24dcea4bdf8c5f9e5c8c32256e8f35f1900d8afd914ab2acfdcd1",
    min_wire_bytes: 13, max_wire_bytes: 781 }
}
pub fn Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec::encode(_self : Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec,
        value : Ros2Franka_spine_msgsSrvGetSpineState_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 781, error: 0 }
  write_Ros2Franka_spine_msgsSrvGetSpineState_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 13 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec::decode(_self : Ros2Franka_spine_msgsSrvGetSpineState_ResponseCodec,
        input : Bytes) -> Result[Ros2Franka_spine_msgsSrvGetSpineState_Response, Int] {
  if input.length() < 13 || input.length() > 781 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvGetSpineState_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvGetSpineState_Response(writer : BoundedWriter, value :
        Ros2Franka_spine_msgsSrvGetSpineState_Response) -> Unit {
  let part0 = value.state
  writer.text(part0, 256)
  let part1 = value.error_code
  writer.text(part1, 256)
  let part2 = value.error_description
  writer.text(part2, 256)
  let part3 = value.success
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Franka_spine_msgsSrvGetSpineState_Response(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvGetSpineState_Response {
  let part0 = reader.text(256)
  let part1 = reader.text(256)
  let part2 = reader.text(256)
  let part3 = reader.boolean()
  { state: part0, error_code: part1, error_description: part2, success: part3 }
}

/// @brief Own every original field of franka_spine_msgs/srv/Halt_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_spine_msgsSrvHalt_Request { Ros2Franka_spine_msgsSrvHalt_RequestEmpty }
pub fn Ros2Franka_spine_msgsSrvHalt_Request::new() -> Ros2Franka_spine_msgsSrvHalt_Request {
        Ros2Franka_spine_msgsSrvHalt_RequestEmpty }
pub(all) struct Ros2Franka_spine_msgsSrvHalt_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvHalt_RequestCodec::new() -> Ros2Franka_spine_msgsSrvHalt_RequestCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/Halt_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_50af7625abf7ec20a30ec49b01e8d32de2ee0d4710820c8de659df211be8c111",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_spine_msgsSrvHalt_RequestCodec::encode(_self : Ros2Franka_spine_msgsSrvHalt_RequestCodec, value :
        Ros2Franka_spine_msgsSrvHalt_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_spine_msgsSrvHalt_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvHalt_RequestCodec::decode(_self : Ros2Franka_spine_msgsSrvHalt_RequestCodec, input : Bytes) ->
        Result[Ros2Franka_spine_msgsSrvHalt_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvHalt_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvHalt_Request(writer : BoundedWriter, value : Ros2Franka_spine_msgsSrvHalt_Request) -> Unit {
}
fn read_Ros2Franka_spine_msgsSrvHalt_Request(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvHalt_Request {
  Ros2Franka_spine_msgsSrvHalt_RequestEmpty
}

/// @brief Own every original field of franka_spine_msgs/srv/Halt_Response.
/// @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsSrvHalt_Response {
  /// @brief Spine state after the halt
  /// @details Original franka_spine_msgs/srv/Halt_Response.state; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut state : String
  /// @brief True if the halt was executed
  /// @details Original franka_spine_msgs/srv/Halt_Response.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Human-readable status or error description
  /// @details Original franka_spine_msgs/srv/Halt_Response.message; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut message : String
}
pub fn Ros2Franka_spine_msgsSrvHalt_Response::new() -> Ros2Franka_spine_msgsSrvHalt_Response {
  {
    state: "",
    success: false,
    message: "",
  }
}
pub(all) struct Ros2Franka_spine_msgsSrvHalt_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvHalt_ResponseCodec::new() -> Ros2Franka_spine_msgsSrvHalt_ResponseCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/Halt_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_150e1d90b485a6ddf79f771379a0e1d3f99a77f88ab1cf1f569d614a63ac3d77",
    min_wire_bytes: 9, max_wire_bytes: 521 }
}
pub fn Ros2Franka_spine_msgsSrvHalt_ResponseCodec::encode(_self : Ros2Franka_spine_msgsSrvHalt_ResponseCodec, value :
        Ros2Franka_spine_msgsSrvHalt_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 521, error: 0 }
  write_Ros2Franka_spine_msgsSrvHalt_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvHalt_ResponseCodec::decode(_self : Ros2Franka_spine_msgsSrvHalt_ResponseCodec, input : Bytes) ->
        Result[Ros2Franka_spine_msgsSrvHalt_Response, Int] {
  if input.length() < 9 || input.length() > 521 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvHalt_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvHalt_Response(writer : BoundedWriter, value : Ros2Franka_spine_msgsSrvHalt_Response) -> Unit {
  let part0 = value.state
  writer.text(part0, 256)
  let part1 = value.success
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.message
  writer.text(part2, 256)
}
fn read_Ros2Franka_spine_msgsSrvHalt_Response(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvHalt_Response {
  let part0 = reader.text(256)
  let part1 = reader.boolean()
  let part2 = reader.text(256)
  { state: part0, success: part1, message: part2 }
}

/// @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_spine_msgsSrvSwitchOff_Request { Ros2Franka_spine_msgsSrvSwitchOff_RequestEmpty }
pub fn Ros2Franka_spine_msgsSrvSwitchOff_Request::new() -> Ros2Franka_spine_msgsSrvSwitchOff_Request {
        Ros2Franka_spine_msgsSrvSwitchOff_RequestEmpty }
pub(all) struct Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec::new() -> Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/SwitchOff_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_097f00adfdc8d1a49615792158a36052917c41385683b39de6686f591964fc16",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec::encode(_self : Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec, value :
        Ros2Franka_spine_msgsSrvSwitchOff_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_spine_msgsSrvSwitchOff_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec::decode(_self : Ros2Franka_spine_msgsSrvSwitchOff_RequestCodec, input : Bytes)
        -> Result[Ros2Franka_spine_msgsSrvSwitchOff_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvSwitchOff_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvSwitchOff_Request(writer : BoundedWriter, value : Ros2Franka_spine_msgsSrvSwitchOff_Request) ->
        Unit {
}
fn read_Ros2Franka_spine_msgsSrvSwitchOff_Request(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvSwitchOff_Request {
  Ros2Franka_spine_msgsSrvSwitchOff_RequestEmpty
}

/// @brief Own every original field of franka_spine_msgs/srv/SwitchOff_Response.
/// @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsSrvSwitchOff_Response {
  /// @brief Spine state after switching off
  /// @details Original franka_spine_msgs/srv/SwitchOff_Response.state; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut state : String
  /// @brief True if the transition succeeded
  /// @details Original franka_spine_msgs/srv/SwitchOff_Response.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Human-readable status or error description
  /// @details Original franka_spine_msgs/srv/SwitchOff_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut message : String
}
pub fn Ros2Franka_spine_msgsSrvSwitchOff_Response::new() -> Ros2Franka_spine_msgsSrvSwitchOff_Response {
  {
    state: "",
    success: false,
    message: "",
  }
}
pub(all) struct Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec::new() -> Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/SwitchOff_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_d3ab8516e62428b2caf71673f398ccc7199b7b25aac4c37b42c15a79878e54ad",
    min_wire_bytes: 9, max_wire_bytes: 521 }
}
pub fn Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec::encode(_self : Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec, value :
        Ros2Franka_spine_msgsSrvSwitchOff_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 521, error: 0 }
  write_Ros2Franka_spine_msgsSrvSwitchOff_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec::decode(_self : Ros2Franka_spine_msgsSrvSwitchOff_ResponseCodec, input :
        Bytes) -> Result[Ros2Franka_spine_msgsSrvSwitchOff_Response, Int] {
  if input.length() < 9 || input.length() > 521 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvSwitchOff_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvSwitchOff_Response(writer : BoundedWriter, value : Ros2Franka_spine_msgsSrvSwitchOff_Response) ->
        Unit {
  let part0 = value.state
  writer.text(part0, 256)
  let part1 = value.success
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.message
  writer.text(part2, 256)
}
fn read_Ros2Franka_spine_msgsSrvSwitchOff_Response(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvSwitchOff_Response {
  let part0 = reader.text(256)
  let part1 = reader.boolean()
  let part2 = reader.text(256)
  { state: part0, success: part1, message: part2 }
}

/// @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Franka_spine_msgsSrvSwitchOn_Request { Ros2Franka_spine_msgsSrvSwitchOn_RequestEmpty }
pub fn Ros2Franka_spine_msgsSrvSwitchOn_Request::new() -> Ros2Franka_spine_msgsSrvSwitchOn_Request {
        Ros2Franka_spine_msgsSrvSwitchOn_RequestEmpty }
pub(all) struct Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec::new() -> Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/SwitchOn_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_840d12dbe4d4a8558e72c2facbccfc547de35536f749573b6de60ce9a9238a56",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec::encode(_self : Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec, value :
        Ros2Franka_spine_msgsSrvSwitchOn_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Franka_spine_msgsSrvSwitchOn_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec::decode(_self : Ros2Franka_spine_msgsSrvSwitchOn_RequestCodec, input : Bytes)
        -> Result[Ros2Franka_spine_msgsSrvSwitchOn_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvSwitchOn_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvSwitchOn_Request(writer : BoundedWriter, value : Ros2Franka_spine_msgsSrvSwitchOn_Request) -> Unit
        {
}
fn read_Ros2Franka_spine_msgsSrvSwitchOn_Request(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvSwitchOn_Request {
  Ros2Franka_spine_msgsSrvSwitchOn_RequestEmpty
}

/// @brief Own every original field of franka_spine_msgs/srv/SwitchOn_Response.
/// @details Canonical extent 9..521 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Franka_spine_msgsSrvSwitchOn_Response {
  /// @brief Spine state after switching on
  /// @details Original franka_spine_msgs/srv/SwitchOn_Response.state; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut state : String
  /// @brief True if the transition succeeded
  /// @details Original franka_spine_msgs/srv/SwitchOn_Response.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Human-readable status or error description
  /// @details Original franka_spine_msgs/srv/SwitchOn_Response.message; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut message : String
}
pub fn Ros2Franka_spine_msgsSrvSwitchOn_Response::new() -> Ros2Franka_spine_msgsSrvSwitchOn_Response {
  {
    state: "",
    success: false,
    message: "",
  }
}
pub(all) struct Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec::new() -> Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec {
  { ros_version: 2, native_type: "franka_spine_msgs/srv/SwitchOn_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_8c58d63385a5fc6f160585504b3c9c5ca5375c6187f7a494c3db696c5cc7a37d",
    min_wire_bytes: 9, max_wire_bytes: 521 }
}
pub fn Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec::encode(_self : Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec, value :
        Ros2Franka_spine_msgsSrvSwitchOn_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 521, error: 0 }
  write_Ros2Franka_spine_msgsSrvSwitchOn_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec::decode(_self : Ros2Franka_spine_msgsSrvSwitchOn_ResponseCodec, input : Bytes)
        -> Result[Ros2Franka_spine_msgsSrvSwitchOn_Response, Int] {
  if input.length() < 9 || input.length() > 521 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Franka_spine_msgsSrvSwitchOn_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Franka_spine_msgsSrvSwitchOn_Response(writer : BoundedWriter, value : Ros2Franka_spine_msgsSrvSwitchOn_Response) ->
        Unit {
  let part0 = value.state
  writer.text(part0, 256)
  let part1 = value.success
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.message
  writer.text(part2, 256)
}
fn read_Ros2Franka_spine_msgsSrvSwitchOn_Response(reader : BoundedReader) -> Ros2Franka_spine_msgsSrvSwitchOn_Response {
  let part0 = reader.text(256)
  let part1 = reader.boolean()
  let part2 = reader.text(256)
  { state: part0, success: part1, message: part2 }
}

