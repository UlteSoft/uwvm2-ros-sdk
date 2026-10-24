// @brief Complete original flexiv controller_core_humble canonical values.
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

/// @brief Own every original field of builtin_interfaces/msg/Duration.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Builtin_interfacesMsgDuration {
  /// @brief Duration defines a period between two time points. Messages of this datatype are of ROS Time
  /// following this design: https://design.ros2.org/articles/clock_and_time.html The seconds component,
  /// valid over all int32 values.
  /// @details Original builtin_interfaces/msg/Duration.sec; native type int32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut sec : Int
  /// @brief The nanoseconds component, valid in the range [0, 1e9), to be added to the seconds component.
  /// e.g. The duration -1.7 seconds is represented as {sec: -2, nanosec: 3e8} The duration 1.7 seconds is
  /// represented as {sec: 1, nanosec: 7e8}
  /// @details Original builtin_interfaces/msg/Duration.nanosec; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut nanosec : UInt
}
pub fn Ros2Builtin_interfacesMsgDuration::new() -> Ros2Builtin_interfacesMsgDuration {
  {
    sec: 0,
    nanosec: 0U,
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
pub fn Ros2Builtin_interfacesMsgDurationCodec::encode(_self : Ros2Builtin_interfacesMsgDurationCodec, value :
        Ros2Builtin_interfacesMsgDuration) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Builtin_interfacesMsgDuration(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Builtin_interfacesMsgDurationCodec::decode(_self : Ros2Builtin_interfacesMsgDurationCodec, input : Bytes) ->
        Result[Ros2Builtin_interfacesMsgDuration, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Builtin_interfacesMsgDuration(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Builtin_interfacesMsgDuration(writer : BoundedWriter, value : Ros2Builtin_interfacesMsgDuration) -> Unit {
  let part0 = value.sec
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.nanosec
  writer.unsigned(part1.to_uint64(), 4)
  if part1 >= 1000000000U { writer.error = 22 }
}
fn read_Ros2Builtin_interfacesMsgDuration(reader : BoundedReader) -> Ros2Builtin_interfacesMsgDuration {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.unsigned(4).to_uint()
  if part1 >= 1000000000U { reader.error = 22 }
  { sec: part0, nanosec: part1 }
}

/// @brief Own every original field of std_msgs/msg/Header.
/// @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Std_msgsMsgHeader {
  /// @brief Standard metadata for higher-level stamped data types. This is generally used to communicate
  /// timestamped data in a particular coordinate frame. Two-integer timestamp that is expressed as
  /// seconds and nanoseconds.
  /// @details Original std_msgs/msg/Header.stamp; native type builtin_interfaces/msg/Time. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut stamp : Ros2Builtin_interfacesMsgTime
  /// @brief Transform frame with which this data is associated.
  /// @details Original std_msgs/msg/Header.frame_id; native type string. Scalar value. UTF-8 capacity 256
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
    codec_identity: "UWVMROS1_2f4f374a97a14337b36f87987a2c2fe2fba6dc9597fa4455029ba3bef65c1c2b",
    min_wire_bytes: 12, max_wire_bytes: 268 }
}
pub fn Ros2Std_msgsMsgHeaderCodec::encode(_self : Ros2Std_msgsMsgHeaderCodec, value : Ros2Std_msgsMsgHeader) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 268, error: 0 }
  write_Ros2Std_msgsMsgHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_msgsMsgHeaderCodec::decode(_self : Ros2Std_msgsMsgHeaderCodec, input : Bytes) -> Result[Ros2Std_msgsMsgHeader, Int] {
  if input.length() < 12 || input.length() > 268 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_msgsMsgHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_msgsMsgHeader(writer : BoundedWriter, value : Ros2Std_msgsMsgHeader) -> Unit {
  let part0 = value.stamp
  write_Ros2Builtin_interfacesMsgTime(writer, part0)
  let part1 = value.frame_id
  writer.text(part1, 256)
}
fn read_Ros2Std_msgsMsgHeader(reader : BoundedReader) -> Ros2Std_msgsMsgHeader {
  let part0 = read_Ros2Builtin_interfacesMsgTime(reader)
  let part1 = reader.text(256)
  { stamp: part0, frame_id: part1 }
}

/// @brief Own every original field of sensor_msgs/msg/JointState.
/// @details Canonical extent 28..9372 bytes. Native type identity is independent; constructing a value
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
  /// @details Original sensor_msgs/msg/JointState.name; native type string. At most 32 elements. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut name : Array[String]
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.position; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut position : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.velocity; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut velocity : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original sensor_msgs/msg/JointState.effort; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
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
    codec_identity: "UWVMROS1_3faa9cdc746cb2cf7ac581bb2b0b6e32e2c6601d72043c7893249142730d8556",
    min_wire_bytes: 28, max_wire_bytes: 9372 }
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::encode(_self : Ros2Sensor_msgsMsgJointStateCodec, value : Ros2Sensor_msgsMsgJointState) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9372, error: 0 }
  write_Ros2Sensor_msgsMsgJointState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Sensor_msgsMsgJointStateCodec::decode(_self : Ros2Sensor_msgsMsgJointStateCodec, input : Bytes) ->
        Result[Ros2Sensor_msgsMsgJointState, Int] {
  if input.length() < 28 || input.length() > 9372 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Sensor_msgsMsgJointState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Sensor_msgsMsgJointState(writer : BoundedWriter, value : Ros2Sensor_msgsMsgJointState) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.name
  let count1 = part1.length()
  if count1 > 32 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 256)
  }
  let part2 = value.position
  let count2 = part2.length()
  if count2 > 32 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.velocity
  let count3 = part3.length()
  if count3 > 32 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.effort
  let count4 = part4.length()
  if count4 > 32 { writer.error = 22; return () }
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
  let count1 = reader.count(32, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(256))
  }
  let part2 : Array[Double] = []
  let count2 = reader.count(32, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(32, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 : Array[Double] = []
  let count4 = reader.count(32, 8)
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

/// @brief Own every original field of trajectory_msgs/msg/JointTrajectoryPoint.
/// @details Canonical extent 24..1048 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  /// @brief Each trajectory point specifies either positions[, velocities[, accelerations]] or
  /// positions[, effort] for the trajectory to be executed. All specified values are in the same order as
  /// the joint names in JointTrajectory.msg. Single DOF joint positions for each joint relative to their
  /// "0" position. The units depend on the specific joint type: radians for revolute or continuous
  /// joints, and meters for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.positions; native type float64. At most
  /// 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut positions : Array[Double]
  /// @brief The rate of change in position of each joint. Units are joint type dependent. Radians/second
  /// for revolute or continuous joints, and meters/second for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.velocities; native type float64. At most
  /// 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut velocities : Array[Double]
  /// @brief Rate of change in velocity of each joint. Units are joint type dependent. Radians/second^2
  /// for revolute or continuous joints, and meters/second^2 for prismatic joints.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.accelerations; native type float64. At
  /// most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete
  /// value and acquires no ROS resource.
  mut accelerations : Array[Double]
  /// @brief The torque or the force to be applied at each joint. For revolute/continuous joints effort
  /// denotes a torque in newton-meters. For prismatic joints, effort denotes a force in newtons.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.effort; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut effort : Array[Double]
  /// @brief Desired time from the trajectory start to arrive at this trajectory point.
  /// @details Original trajectory_msgs/msg/JointTrajectoryPoint.time_from_start; native type
  /// builtin_interfaces/msg/Duration. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut time_from_start : Ros2Builtin_interfacesMsgDuration
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPoint::new() -> Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  {
    positions: [],
    velocities: [],
    accelerations: [],
    effort: [],
    time_from_start: Ros2Builtin_interfacesMsgDuration::new(),
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
    codec_identity: "UWVMROS1_8320f791cea3b2edbbe7b78c9a3750708fb0284ae6a322058921c8c105f7130c",
    min_wire_bytes: 24, max_wire_bytes: 1048 }
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPointCodec::encode(_self : Ros2Trajectory_msgsMsgJointTrajectoryPointCodec, value :
        Ros2Trajectory_msgsMsgJointTrajectoryPoint) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1048, error: 0 }
  write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryPointCodec::decode(_self : Ros2Trajectory_msgsMsgJointTrajectoryPointCodec, input :
        Bytes) -> Result[Ros2Trajectory_msgsMsgJointTrajectoryPoint, Int] {
  if input.length() < 24 || input.length() > 1048 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Trajectory_msgsMsgJointTrajectoryPoint(writer : BoundedWriter, value : Ros2Trajectory_msgsMsgJointTrajectoryPoint) ->
        Unit {
  let part0 = value.positions
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.velocities
  let count1 = part1.length()
  if count1 > 32 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.accelerations
  let count2 = part2.length()
  if count2 > 32 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.effort
  let count3 = part3.length()
  if count3 > 32 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.time_from_start
  write_Ros2Builtin_interfacesMsgDuration(writer, part4)
}
fn read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader : BoundedReader) -> Ros2Trajectory_msgsMsgJointTrajectoryPoint {
  let part0 : Array[Double] = []
  let count0 = reader.count(32, 8)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = reader.count(32, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 : Array[Double] = []
  let count2 = reader.count(32, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(32, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  let part4 = read_Ros2Builtin_interfacesMsgDuration(reader)
  { positions: part0, velocities: part1, accelerations: part2, effort: part3, time_from_start: part4 }
}

/// @brief Own every original field of trajectory_msgs/msg/JointTrajectory.
/// @details Canonical extent 20..16980 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Trajectory_msgsMsgJointTrajectory {
  /// @brief The header is used to specify the coordinate frame and the reference time for the trajectory
  /// durations
  /// @details Original trajectory_msgs/msg/JointTrajectory.header; native type std_msgs/msg/Header.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief The names of the active joints in each trajectory point. These names are ordered and must
  /// correspond to the values in each trajectory point.
  /// @details Original trajectory_msgs/msg/JointTrajectory.joint_names; native type string. At most 32
  /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut joint_names : Array[String]
  /// @brief Array of trajectory points, which describe the positions, velocities, accelerations and/or
  /// efforts of the joints at each time point.
  /// @details Original trajectory_msgs/msg/JointTrajectory.points; native type
  /// trajectory_msgs/msg/JointTrajectoryPoint. At most 8 elements. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut points : Array[Ros2Trajectory_msgsMsgJointTrajectoryPoint]
}
pub fn Ros2Trajectory_msgsMsgJointTrajectory::new() -> Ros2Trajectory_msgsMsgJointTrajectory {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    joint_names: [],
    points: [],
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
    codec_identity: "UWVMROS1_0b691c3ed52f8cc3bf5e4c5a7cec1d82a15d08b7d2575bd30b34c49e37877af4",
    min_wire_bytes: 20, max_wire_bytes: 16980 }
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryCodec::encode(_self : Ros2Trajectory_msgsMsgJointTrajectoryCodec, value :
        Ros2Trajectory_msgsMsgJointTrajectory) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16980, error: 0 }
  write_Ros2Trajectory_msgsMsgJointTrajectory(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Trajectory_msgsMsgJointTrajectoryCodec::decode(_self : Ros2Trajectory_msgsMsgJointTrajectoryCodec, input : Bytes) ->
        Result[Ros2Trajectory_msgsMsgJointTrajectory, Int] {
  if input.length() < 20 || input.length() > 16980 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Trajectory_msgsMsgJointTrajectory(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Trajectory_msgsMsgJointTrajectory(writer : BoundedWriter, value : Ros2Trajectory_msgsMsgJointTrajectory) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.joint_names
  let count1 = part1.length()
  if count1 > 32 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 256)
  }
  let part2 = value.points
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
  let count1 = reader.count(32, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(256))
  }
  let part2 : Array[Ros2Trajectory_msgsMsgJointTrajectoryPoint] = []
  let count2 = reader.count(8, 24)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Trajectory_msgsMsgJointTrajectoryPoint(reader))
  }
  { header: part0, joint_names: part1, points: part2 }
}

/// @brief Own every original field of std_msgs/msg/MultiArrayDimension.
/// @details Canonical extent 12..268 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Std_msgsMsgMultiArrayDimension {
  /// @brief This was originally provided as an example message. It is deprecated as of Foxy It is
  /// recommended to create your own semantically meaningful message. However if you would like to
  /// continue using this please use the equivalent in example_msgs. label of given dimension
  /// @details Original std_msgs/msg/MultiArrayDimension.label; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut label : String
  /// @brief size of given dimension (in type units)
  /// @details Original std_msgs/msg/MultiArrayDimension.size; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut size : UInt
  /// @brief stride of given dimension
  /// @details Original std_msgs/msg/MultiArrayDimension.stride; native type uint32. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut stride : UInt
}
pub fn Ros2Std_msgsMsgMultiArrayDimension::new() -> Ros2Std_msgsMsgMultiArrayDimension {
  {
    label: "",
    size: 0U,
    stride: 0U,
  }
}
pub(all) struct Ros2Std_msgsMsgMultiArrayDimensionCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Std_msgsMsgMultiArrayDimensionCodec::new() -> Ros2Std_msgsMsgMultiArrayDimensionCodec {
  { ros_version: 2, native_type: "std_msgs/msg/MultiArrayDimension",
    native_identity: None,
    codec_identity: "UWVMROS1_95110a90e1600af2696a69f4dec6bfde2afe315bfd453bda2e1c84f5984ae80d",
    min_wire_bytes: 12, max_wire_bytes: 268 }
}
pub fn Ros2Std_msgsMsgMultiArrayDimensionCodec::encode(_self : Ros2Std_msgsMsgMultiArrayDimensionCodec, value :
        Ros2Std_msgsMsgMultiArrayDimension) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 268, error: 0 }
  write_Ros2Std_msgsMsgMultiArrayDimension(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_msgsMsgMultiArrayDimensionCodec::decode(_self : Ros2Std_msgsMsgMultiArrayDimensionCodec, input : Bytes) ->
        Result[Ros2Std_msgsMsgMultiArrayDimension, Int] {
  if input.length() < 12 || input.length() > 268 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_msgsMsgMultiArrayDimension(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_msgsMsgMultiArrayDimension(writer : BoundedWriter, value : Ros2Std_msgsMsgMultiArrayDimension) -> Unit {
  let part0 = value.label
  writer.text(part0, 256)
  let part1 = value.size
  writer.unsigned(part1.to_uint64(), 4)
  let part2 = value.stride
  writer.unsigned(part2.to_uint64(), 4)
}
fn read_Ros2Std_msgsMsgMultiArrayDimension(reader : BoundedReader) -> Ros2Std_msgsMsgMultiArrayDimension {
  let part0 = reader.text(256)
  let part1 = reader.unsigned(4).to_uint()
  let part2 = reader.unsigned(4).to_uint()
  { label: part0, size: part1, stride: part2 }
}

/// @brief Own every original field of std_msgs/msg/MultiArrayLayout.
/// @details Canonical extent 8..2152 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Std_msgsMsgMultiArrayLayout {
  /// @brief This was originally provided as an example message. It is deprecated as of Foxy It is
  /// recommended to create your own semantically meaningful message. However if you would like to
  /// continue using this please use the equivalent in example_msgs. The multiarray declares a generic
  /// multi-dimensional array of a particular data type.  Dimensions are ordered from outer most to inner
  /// most.  Accessors should ALWAYS be written in terms of dimension stride and specified outer-most
  /// dimension first.  multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]  A
  /// standard, 3-channel 640x480 image with interleaved color channels would be specified as:
  /// dim[0].label  = "height" dim[0].size   = 480 dim[0].stride = 3*640*480 = 921600  (note dim[0] stride
  /// is just size of image) dim[1].label  = "width" dim[1].size   = 640 dim[1].stride = 3*640 = 1920
  /// dim[2].label  = "channel" dim[2].size   = 3 dim[2].stride = 3  multiarray(i,j,k) refers to the ith
  /// row, jth column, and kth channel. Array of dimension properties
  /// @details Original std_msgs/msg/MultiArrayLayout.dim; native type std_msgs/msg/MultiArrayDimension.
  /// At most 8 elements. Storage belongs to the complete value and acquires no ROS resource.
  mut dim : Array[Ros2Std_msgsMsgMultiArrayDimension]
  /// @brief padding bytes at front of data
  /// @details Original std_msgs/msg/MultiArrayLayout.data_offset; native type uint32. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut data_offset : UInt
}
pub fn Ros2Std_msgsMsgMultiArrayLayout::new() -> Ros2Std_msgsMsgMultiArrayLayout {
  {
    dim: [],
    data_offset: 0U,
  }
}
pub(all) struct Ros2Std_msgsMsgMultiArrayLayoutCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Std_msgsMsgMultiArrayLayoutCodec::new() -> Ros2Std_msgsMsgMultiArrayLayoutCodec {
  { ros_version: 2, native_type: "std_msgs/msg/MultiArrayLayout",
    native_identity: None,
    codec_identity: "UWVMROS1_1e1ea54500602a3813c1cc3b5db7dfd9a7dd9260a3d5af43e8495f6b48e32f40",
    min_wire_bytes: 8, max_wire_bytes: 2152 }
}
pub fn Ros2Std_msgsMsgMultiArrayLayoutCodec::encode(_self : Ros2Std_msgsMsgMultiArrayLayoutCodec, value :
        Ros2Std_msgsMsgMultiArrayLayout) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2152, error: 0 }
  write_Ros2Std_msgsMsgMultiArrayLayout(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_msgsMsgMultiArrayLayoutCodec::decode(_self : Ros2Std_msgsMsgMultiArrayLayoutCodec, input : Bytes) ->
        Result[Ros2Std_msgsMsgMultiArrayLayout, Int] {
  if input.length() < 8 || input.length() > 2152 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_msgsMsgMultiArrayLayout(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_msgsMsgMultiArrayLayout(writer : BoundedWriter, value : Ros2Std_msgsMsgMultiArrayLayout) -> Unit {
  let part0 = value.dim
  let count0 = part0.length()
  if count0 > 8 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Std_msgsMsgMultiArrayDimension(writer, element)
  }
  let part1 = value.data_offset
  writer.unsigned(part1.to_uint64(), 4)
}
fn read_Ros2Std_msgsMsgMultiArrayLayout(reader : BoundedReader) -> Ros2Std_msgsMsgMultiArrayLayout {
  let part0 : Array[Ros2Std_msgsMsgMultiArrayDimension] = []
  let count0 = reader.count(8, 12)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Std_msgsMsgMultiArrayDimension(reader))
  }
  let part1 = reader.unsigned(4).to_uint()
  { dim: part0, data_offset: part1 }
}

/// @brief Own every original field of std_msgs/msg/Float64MultiArray.
/// @details Canonical extent 12..2412 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Std_msgsMsgFloat64MultiArray {
  /// @brief This was originally provided as an example message. It is deprecated as of Foxy It is
  /// recommended to create your own semantically meaningful message. However if you would like to
  /// continue using this please use the equivalent in example_msgs. Please look at the MultiArrayLayout
  /// message definition for documentation on all multiarrays. specification of data layout
  /// @details Original std_msgs/msg/Float64MultiArray.layout; native type std_msgs/msg/MultiArrayLayout.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut layout : Ros2Std_msgsMsgMultiArrayLayout
  /// @brief array of data
  /// @details Original std_msgs/msg/Float64MultiArray.data; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut data : Array[Double]
}
pub fn Ros2Std_msgsMsgFloat64MultiArray::new() -> Ros2Std_msgsMsgFloat64MultiArray {
  {
    layout: Ros2Std_msgsMsgMultiArrayLayout::new(),
    data: [],
  }
}
pub(all) struct Ros2Std_msgsMsgFloat64MultiArrayCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Std_msgsMsgFloat64MultiArrayCodec::new() -> Ros2Std_msgsMsgFloat64MultiArrayCodec {
  { ros_version: 2, native_type: "std_msgs/msg/Float64MultiArray",
    native_identity: None,
    codec_identity: "UWVMROS1_9950573380aa134d889e1662549f28ffd493e8c4da68170fd076c4c9cc3db8c2",
    min_wire_bytes: 12, max_wire_bytes: 2412 }
}
pub fn Ros2Std_msgsMsgFloat64MultiArrayCodec::encode(_self : Ros2Std_msgsMsgFloat64MultiArrayCodec, value :
        Ros2Std_msgsMsgFloat64MultiArray) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2412, error: 0 }
  write_Ros2Std_msgsMsgFloat64MultiArray(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Std_msgsMsgFloat64MultiArrayCodec::decode(_self : Ros2Std_msgsMsgFloat64MultiArrayCodec, input : Bytes) ->
        Result[Ros2Std_msgsMsgFloat64MultiArray, Int] {
  if input.length() < 12 || input.length() > 2412 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Std_msgsMsgFloat64MultiArray(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Std_msgsMsgFloat64MultiArray(writer : BoundedWriter, value : Ros2Std_msgsMsgFloat64MultiArray) -> Unit {
  let part0 = value.layout
  write_Ros2Std_msgsMsgMultiArrayLayout(writer, part0)
  let part1 = value.data
  let count1 = part1.length()
  if count1 > 32 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
}
fn read_Ros2Std_msgsMsgFloat64MultiArray(reader : BoundedReader) -> Ros2Std_msgsMsgFloat64MultiArray {
  let part0 = read_Ros2Std_msgsMsgMultiArrayLayout(reader)
  let part1 : Array[Double] = []
  let count1 = reader.count(32, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  { layout: part0, data: part1 }
}

