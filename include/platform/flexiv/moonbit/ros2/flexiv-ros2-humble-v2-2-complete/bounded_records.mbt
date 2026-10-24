// @brief Complete original flexiv ros2_humble_v2_2 canonical values.
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

/// @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Goal.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Flexiv_msgsActionErrorRecovery_Goal { Ros2Flexiv_msgsActionErrorRecovery_GoalEmpty }
pub fn Ros2Flexiv_msgsActionErrorRecovery_Goal::new() -> Ros2Flexiv_msgsActionErrorRecovery_Goal {
        Ros2Flexiv_msgsActionErrorRecovery_GoalEmpty }
pub(all) struct Ros2Flexiv_msgsActionErrorRecovery_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_GoalCodec::new() -> Ros2Flexiv_msgsActionErrorRecovery_GoalCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/ErrorRecovery_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_a034d73edc5891f3a17f52efce4e491e8d08655b3e32d9cf58338547ad412830",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_GoalCodec::encode(_self : Ros2Flexiv_msgsActionErrorRecovery_GoalCodec, value :
        Ros2Flexiv_msgsActionErrorRecovery_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Flexiv_msgsActionErrorRecovery_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_GoalCodec::decode(_self : Ros2Flexiv_msgsActionErrorRecovery_GoalCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionErrorRecovery_Goal, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionErrorRecovery_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionErrorRecovery_Goal(writer : BoundedWriter, value : Ros2Flexiv_msgsActionErrorRecovery_Goal) -> Unit {
}
fn read_Ros2Flexiv_msgsActionErrorRecovery_Goal(reader : BoundedReader) -> Ros2Flexiv_msgsActionErrorRecovery_Goal {
  Ros2Flexiv_msgsActionErrorRecovery_GoalEmpty
}

/// @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Result.
/// @details Canonical extent 7..263 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionErrorRecovery_Result {
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/ErrorRecovery_Result.success; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Operator-facing explanation of the outcome
  /// @details Original flexiv_msgs/action/ErrorRecovery_Result.message; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut message : String
  /// @brief True when the robot is operational again but controllers must be restarted to resume motion
  /// @details Original flexiv_msgs/action/ErrorRecovery_Result.requires_controller_restart; native type
  /// bool. Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut requires_controller_restart : Bool
  /// @brief Policy that applied to the condition found, values defined in RecoveryPolicy.msg
  /// @details Original flexiv_msgs/action/ErrorRecovery_Result.recovery_policy; native type uint8. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut recovery_policy : Int
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_Result::new() -> Ros2Flexiv_msgsActionErrorRecovery_Result {
  {
    success: false,
    message: "",
    requires_controller_restart: false,
    recovery_policy: 0,
  }
}
pub(all) struct Ros2Flexiv_msgsActionErrorRecovery_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_ResultCodec::new() -> Ros2Flexiv_msgsActionErrorRecovery_ResultCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/ErrorRecovery_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_e1f54f9716ae64b5da8c1463f36379fbfffe35ea983a25dcb9db6e09771fcedc",
    min_wire_bytes: 7, max_wire_bytes: 263 }
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_ResultCodec::encode(_self : Ros2Flexiv_msgsActionErrorRecovery_ResultCodec, value :
        Ros2Flexiv_msgsActionErrorRecovery_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 263, error: 0 }
  write_Ros2Flexiv_msgsActionErrorRecovery_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 7 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_ResultCodec::decode(_self : Ros2Flexiv_msgsActionErrorRecovery_ResultCodec, input : Bytes)
        -> Result[Ros2Flexiv_msgsActionErrorRecovery_Result, Int] {
  if input.length() < 7 || input.length() > 263 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionErrorRecovery_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionErrorRecovery_Result(writer : BoundedWriter, value : Ros2Flexiv_msgsActionErrorRecovery_Result) ->
        Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.message
  writer.text(part1, 256)
  let part2 = value.requires_controller_restart
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.recovery_policy
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Flexiv_msgsActionErrorRecovery_Result(reader : BoundedReader) -> Ros2Flexiv_msgsActionErrorRecovery_Result {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  let part2 = reader.boolean()
  let part3 = reader.unsigned(1).to_int()
  { success: part0, message: part1, requires_controller_restart: part2, recovery_policy: part3 }
}

/// @brief Own every original field of flexiv_msgs/action/ErrorRecovery_Feedback.
/// @details Canonical extent 9..265 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionErrorRecovery_Feedback {
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state; native type uint8.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut recovery_state : Int
  /// @brief Human-readable name of the recovery state above
  /// @details Original flexiv_msgs/action/ErrorRecovery_Feedback.recovery_state_name; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut recovery_state_name : String
  /// @brief Seconds elapsed since the recovery started
  /// @details Original flexiv_msgs/action/ErrorRecovery_Feedback.elapsed_seconds; native type float32.
  /// Scalar value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut elapsed_seconds : Float
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_Feedback::new() -> Ros2Flexiv_msgsActionErrorRecovery_Feedback {
  {
    recovery_state: 0,
    recovery_state_name: "",
    elapsed_seconds: (0U).reinterpret_as_float(),
  }
}
pub(all) struct Ros2Flexiv_msgsActionErrorRecovery_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_FeedbackCodec::new() -> Ros2Flexiv_msgsActionErrorRecovery_FeedbackCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/ErrorRecovery_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_eeafe196440ce0e03c9bd313aaeac627eaf8e2f1bc4f2ced2d94bcdf22088739",
    min_wire_bytes: 9, max_wire_bytes: 265 }
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_FeedbackCodec::encode(_self : Ros2Flexiv_msgsActionErrorRecovery_FeedbackCodec, value :
        Ros2Flexiv_msgsActionErrorRecovery_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 265, error: 0 }
  write_Ros2Flexiv_msgsActionErrorRecovery_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionErrorRecovery_FeedbackCodec::decode(_self : Ros2Flexiv_msgsActionErrorRecovery_FeedbackCodec, input :
        Bytes) -> Result[Ros2Flexiv_msgsActionErrorRecovery_Feedback, Int] {
  if input.length() < 9 || input.length() > 265 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionErrorRecovery_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionErrorRecovery_Feedback(writer : BoundedWriter, value : Ros2Flexiv_msgsActionErrorRecovery_Feedback) ->
        Unit {
  let part0 = value.recovery_state
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.recovery_state_name
  writer.text(part1, 256)
  let part2 = value.elapsed_seconds
  writer.float32(part2)
}
fn read_Ros2Flexiv_msgsActionErrorRecovery_Feedback(reader : BoundedReader) -> Ros2Flexiv_msgsActionErrorRecovery_Feedback {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.text(256)
  let part2 = reader.float32()
  { recovery_state: part0, recovery_state_name: part1, elapsed_seconds: part2 }
}

/// @brief Own every original field of flexiv_msgs/action/Grasp_Goal.
/// @details Canonical extent 8..8 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionGrasp_Goal {
  /// @brief N
  /// @details Original flexiv_msgs/action/Grasp_Goal.force; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut force : Double
}
pub fn Ros2Flexiv_msgsActionGrasp_Goal::new() -> Ros2Flexiv_msgsActionGrasp_Goal {
  {
    force: 0.0,
  }
}
pub(all) struct Ros2Flexiv_msgsActionGrasp_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionGrasp_GoalCodec::new() -> Ros2Flexiv_msgsActionGrasp_GoalCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Grasp_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_43565e364b5b889f4afe37a991d7b42a2b045737ead93475f771995882eb67ce",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Flexiv_msgsActionGrasp_GoalCodec::encode(_self : Ros2Flexiv_msgsActionGrasp_GoalCodec, value :
        Ros2Flexiv_msgsActionGrasp_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Flexiv_msgsActionGrasp_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionGrasp_GoalCodec::decode(_self : Ros2Flexiv_msgsActionGrasp_GoalCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionGrasp_Goal, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionGrasp_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionGrasp_Goal(writer : BoundedWriter, value : Ros2Flexiv_msgsActionGrasp_Goal) -> Unit {
  let part0 = value.force
  writer.float64(part0)
}
fn read_Ros2Flexiv_msgsActionGrasp_Goal(reader : BoundedReader) -> Ros2Flexiv_msgsActionGrasp_Goal {
  let part0 = reader.float64()
  { force: part0 }
}

/// @brief Own every original field of flexiv_msgs/action/Grasp_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionGrasp_Result {
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Grasp_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original flexiv_msgs/action/Grasp_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut error : String
}
pub fn Ros2Flexiv_msgsActionGrasp_Result::new() -> Ros2Flexiv_msgsActionGrasp_Result {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Flexiv_msgsActionGrasp_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionGrasp_ResultCodec::new() -> Ros2Flexiv_msgsActionGrasp_ResultCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Grasp_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_76337e629cae7403379d16725f13850a1d38a2bc53d1bd478e79f8139484341a",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Flexiv_msgsActionGrasp_ResultCodec::encode(_self : Ros2Flexiv_msgsActionGrasp_ResultCodec, value :
        Ros2Flexiv_msgsActionGrasp_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Flexiv_msgsActionGrasp_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionGrasp_ResultCodec::decode(_self : Ros2Flexiv_msgsActionGrasp_ResultCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionGrasp_Result, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionGrasp_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionGrasp_Result(writer : BoundedWriter, value : Ros2Flexiv_msgsActionGrasp_Result) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Flexiv_msgsActionGrasp_Result(reader : BoundedReader) -> Ros2Flexiv_msgsActionGrasp_Result {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of flexiv_msgs/action/Grasp_Feedback.
/// @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionGrasp_Feedback {
  /// @brief m
  /// @details Original flexiv_msgs/action/Grasp_Feedback.current_width; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut current_width : Double
  /// @brief N
  /// @details Original flexiv_msgs/action/Grasp_Feedback.current_force; native type float64. Scalar
  /// value. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut current_force : Double
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Grasp_Feedback.moving; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut moving : Bool
}
pub fn Ros2Flexiv_msgsActionGrasp_Feedback::new() -> Ros2Flexiv_msgsActionGrasp_Feedback {
  {
    current_width: 0.0,
    current_force: 0.0,
    moving: false,
  }
}
pub(all) struct Ros2Flexiv_msgsActionGrasp_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionGrasp_FeedbackCodec::new() -> Ros2Flexiv_msgsActionGrasp_FeedbackCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Grasp_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_f546cfb58043f2dd44da229d9b5687e88d2712378aa6e1db8cf0082c07e96c05",
    min_wire_bytes: 17, max_wire_bytes: 17 }
}
pub fn Ros2Flexiv_msgsActionGrasp_FeedbackCodec::encode(_self : Ros2Flexiv_msgsActionGrasp_FeedbackCodec, value :
        Ros2Flexiv_msgsActionGrasp_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 17, error: 0 }
  write_Ros2Flexiv_msgsActionGrasp_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionGrasp_FeedbackCodec::decode(_self : Ros2Flexiv_msgsActionGrasp_FeedbackCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionGrasp_Feedback, Int] {
  if input.length() < 17 || input.length() > 17 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionGrasp_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionGrasp_Feedback(writer : BoundedWriter, value : Ros2Flexiv_msgsActionGrasp_Feedback) -> Unit {
  let part0 = value.current_width
  writer.float64(part0)
  let part1 = value.current_force
  writer.float64(part1)
  let part2 = value.moving
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Flexiv_msgsActionGrasp_Feedback(reader : BoundedReader) -> Ros2Flexiv_msgsActionGrasp_Feedback {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.boolean()
  { current_width: part0, current_force: part1, moving: part2 }
}

/// @brief Own every original field of flexiv_msgs/action/Move_Goal.
/// @details Canonical extent 24..24 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionMove_Goal {
  /// @brief m
  /// @details Original flexiv_msgs/action/Move_Goal.width; native type float64. Scalar value. Finite IEEE
  /// values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut width : Double
  /// @brief m/s
  /// @details Original flexiv_msgs/action/Move_Goal.velocity; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut velocity : Double
  /// @brief N
  /// @details Original flexiv_msgs/action/Move_Goal.max_force; native type float64. Scalar value. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut max_force : Double
}
pub fn Ros2Flexiv_msgsActionMove_Goal::new() -> Ros2Flexiv_msgsActionMove_Goal {
  {
    width: 0.0,
    velocity: 0.0,
    max_force: 0.0,
  }
}
pub(all) struct Ros2Flexiv_msgsActionMove_GoalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionMove_GoalCodec::new() -> Ros2Flexiv_msgsActionMove_GoalCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Move_Goal",
    native_identity: None,
    codec_identity: "UWVMROS1_aea1dfd4e0fe2ea72865a4f9e4408564fe63c7eff23cc9eaefdedbb4a3b87ce2",
    min_wire_bytes: 24, max_wire_bytes: 24 }
}
pub fn Ros2Flexiv_msgsActionMove_GoalCodec::encode(_self : Ros2Flexiv_msgsActionMove_GoalCodec, value :
        Ros2Flexiv_msgsActionMove_Goal) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 24, error: 0 }
  write_Ros2Flexiv_msgsActionMove_Goal(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionMove_GoalCodec::decode(_self : Ros2Flexiv_msgsActionMove_GoalCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionMove_Goal, Int] {
  if input.length() < 24 || input.length() > 24 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionMove_Goal(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionMove_Goal(writer : BoundedWriter, value : Ros2Flexiv_msgsActionMove_Goal) -> Unit {
  let part0 = value.width
  writer.float64(part0)
  let part1 = value.velocity
  writer.float64(part1)
  let part2 = value.max_force
  writer.float64(part2)
}
fn read_Ros2Flexiv_msgsActionMove_Goal(reader : BoundedReader) -> Ros2Flexiv_msgsActionMove_Goal {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  { width: part0, velocity: part1, max_force: part2 }
}

/// @brief Own every original field of flexiv_msgs/action/Move_Result.
/// @details Canonical extent 5..261 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionMove_Result {
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Move_Result.success; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Retain the complete original string field.
  /// @details Original flexiv_msgs/action/Move_Result.error; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut error : String
}
pub fn Ros2Flexiv_msgsActionMove_Result::new() -> Ros2Flexiv_msgsActionMove_Result {
  {
    success: false,
    error: "",
  }
}
pub(all) struct Ros2Flexiv_msgsActionMove_ResultCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionMove_ResultCodec::new() -> Ros2Flexiv_msgsActionMove_ResultCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Move_Result",
    native_identity: None,
    codec_identity: "UWVMROS1_c95a78a3b488d7f47101110729258fcc28450dee51ab7666114da77ad139709d",
    min_wire_bytes: 5, max_wire_bytes: 261 }
}
pub fn Ros2Flexiv_msgsActionMove_ResultCodec::encode(_self : Ros2Flexiv_msgsActionMove_ResultCodec, value :
        Ros2Flexiv_msgsActionMove_Result) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 261, error: 0 }
  write_Ros2Flexiv_msgsActionMove_Result(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 5 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionMove_ResultCodec::decode(_self : Ros2Flexiv_msgsActionMove_ResultCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionMove_Result, Int] {
  if input.length() < 5 || input.length() > 261 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionMove_Result(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionMove_Result(writer : BoundedWriter, value : Ros2Flexiv_msgsActionMove_Result) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.error
  writer.text(part1, 256)
}
fn read_Ros2Flexiv_msgsActionMove_Result(reader : BoundedReader) -> Ros2Flexiv_msgsActionMove_Result {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  { success: part0, error: part1 }
}

/// @brief Own every original field of flexiv_msgs/action/Move_Feedback.
/// @details Canonical extent 17..17 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsActionMove_Feedback {
  /// @brief m
  /// @details Original flexiv_msgs/action/Move_Feedback.current_width; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut current_width : Double
  /// @brief N
  /// @details Original flexiv_msgs/action/Move_Feedback.current_force; native type float64. Scalar value.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut current_force : Double
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/action/Move_Feedback.moving; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut moving : Bool
}
pub fn Ros2Flexiv_msgsActionMove_Feedback::new() -> Ros2Flexiv_msgsActionMove_Feedback {
  {
    current_width: 0.0,
    current_force: 0.0,
    moving: false,
  }
}
pub(all) struct Ros2Flexiv_msgsActionMove_FeedbackCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsActionMove_FeedbackCodec::new() -> Ros2Flexiv_msgsActionMove_FeedbackCodec {
  { ros_version: 2, native_type: "flexiv_msgs/action/Move_Feedback",
    native_identity: None,
    codec_identity: "UWVMROS1_b28cc267ea6cd964fb24bff71d4e6e8da37fae383f437aeec8afb01431a5cd38",
    min_wire_bytes: 17, max_wire_bytes: 17 }
}
pub fn Ros2Flexiv_msgsActionMove_FeedbackCodec::encode(_self : Ros2Flexiv_msgsActionMove_FeedbackCodec, value :
        Ros2Flexiv_msgsActionMove_Feedback) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 17, error: 0 }
  write_Ros2Flexiv_msgsActionMove_Feedback(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsActionMove_FeedbackCodec::decode(_self : Ros2Flexiv_msgsActionMove_FeedbackCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsActionMove_Feedback, Int] {
  if input.length() < 17 || input.length() > 17 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsActionMove_Feedback(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsActionMove_Feedback(writer : BoundedWriter, value : Ros2Flexiv_msgsActionMove_Feedback) -> Unit {
  let part0 = value.current_width
  writer.float64(part0)
  let part1 = value.current_force
  writer.float64(part1)
  let part2 = value.moving
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Flexiv_msgsActionMove_Feedback(reader : BoundedReader) -> Ros2Flexiv_msgsActionMove_Feedback {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.boolean()
  { current_width: part0, current_force: part1, moving: part2 }
}

/// @brief Own every original field of flexiv_msgs/msg/Digital.
/// @details Canonical extent 2..2 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgDigital {
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/Digital.pin; native type uint8. Scalar value. Storage belongs to
  /// the complete value and acquires no ROS resource.
  mut pin : Int
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/Digital.state; native type bool. Scalar value. Storage belongs to
  /// the complete value and acquires no ROS resource.
  mut state : Bool
}
pub fn Ros2Flexiv_msgsMsgDigital::new() -> Ros2Flexiv_msgsMsgDigital {
  {
    pin: 0,
    state: false,
  }
}
pub(all) struct Ros2Flexiv_msgsMsgDigitalCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgDigitalCodec::new() -> Ros2Flexiv_msgsMsgDigitalCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/Digital",
    native_identity: None,
    codec_identity: "UWVMROS1_88d2ffaf88359d000dbb247773404361a70fbc86b08a6fad118a73723f2c6fbf",
    min_wire_bytes: 2, max_wire_bytes: 2 }
}
pub fn Ros2Flexiv_msgsMsgDigitalCodec::encode(_self : Ros2Flexiv_msgsMsgDigitalCodec, value : Ros2Flexiv_msgsMsgDigital) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 2, error: 0 }
  write_Ros2Flexiv_msgsMsgDigital(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 2 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgDigitalCodec::decode(_self : Ros2Flexiv_msgsMsgDigitalCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgDigital, Int] {
  if input.length() < 2 || input.length() > 2 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgDigital(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgDigital(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgDigital) -> Unit {
  let part0 = value.pin
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.state
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Flexiv_msgsMsgDigital(reader : BoundedReader) -> Ros2Flexiv_msgsMsgDigital {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.boolean()
  { pin: part0, state: part1 }
}

/// @brief Own every original field of flexiv_msgs/msg/GPIOStates.
/// @details Canonical extent 4..68 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgGPIOStates {
  /// @brief Retain the complete original flexiv_msgs/msg/Digital field.
  /// @details Original flexiv_msgs/msg/GPIOStates.states; native type flexiv_msgs/msg/Digital. At most 32
  /// elements. Storage belongs to the complete value and acquires no ROS resource.
  mut states : Array[Ros2Flexiv_msgsMsgDigital]
}
pub fn Ros2Flexiv_msgsMsgGPIOStates::new() -> Ros2Flexiv_msgsMsgGPIOStates {
  {
    states: [],
  }
}
pub(all) struct Ros2Flexiv_msgsMsgGPIOStatesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgGPIOStatesCodec::new() -> Ros2Flexiv_msgsMsgGPIOStatesCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/GPIOStates",
    native_identity: None,
    codec_identity: "UWVMROS1_befebf3e30b73f80820c51af2339e0c5a86bef6b155f42fd538540c3fbbd7b14",
    min_wire_bytes: 4, max_wire_bytes: 68 }
}
pub fn Ros2Flexiv_msgsMsgGPIOStatesCodec::encode(_self : Ros2Flexiv_msgsMsgGPIOStatesCodec, value : Ros2Flexiv_msgsMsgGPIOStates) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 68, error: 0 }
  write_Ros2Flexiv_msgsMsgGPIOStates(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 4 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgGPIOStatesCodec::decode(_self : Ros2Flexiv_msgsMsgGPIOStatesCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgGPIOStates, Int] {
  if input.length() < 4 || input.length() > 68 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgGPIOStates(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgGPIOStates(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgGPIOStates) -> Unit {
  let part0 = value.states
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    write_Ros2Flexiv_msgsMsgDigital(writer, element)
  }
}
fn read_Ros2Flexiv_msgsMsgGPIOStates(reader : BoundedReader) -> Ros2Flexiv_msgsMsgGPIOStates {
  let part0 : Array[Ros2Flexiv_msgsMsgDigital] = []
  let count0 = reader.count(32, 2)
  for index = 0; index < count0; index = index + 1 {
    part0.push(read_Ros2Flexiv_msgsMsgDigital(reader))
  }
  { states: part0 }
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

/// @brief Own every original field of flexiv_msgs/msg/JointImpedance.
/// @details Canonical extent 29..9373 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgJointImpedance {
  /// @brief Impedance properties of the robot's joint motion controller, used in the joint impedance
  /// control modes. Mirrors the arguments of flexiv::rdk::Robot::SetJointImpedance(). Header
  /// @details Original flexiv_msgs/msg/JointImpedance.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
  /// robot are covered: the robot reports no nominal joint stiffness for external axes.
  /// @details Original flexiv_msgs/msg/JointImpedance.joint_names; native type string. At most 32
  /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut joint_names : Array[String]
  /// @brief Joint motion stiffness K_q. A joint at 0 is free-floating. [Nm/rad]
  /// @details Original flexiv_msgs/msg/JointImpedance.k_q; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut k_q : Array[Double]
  /// @brief Joint motion damping ratio Z_q, dimensionless. Valid range [0.3, 0.8], nominal 0.7
  /// @details Original flexiv_msgs/msg/JointImpedance.z_q; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut z_q : Array[Double]
  /// @brief Nominal joint motion stiffness, the upper bound of k_q. [Nm/rad]
  /// @details Original flexiv_msgs/msg/JointImpedance.k_q_nom; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut k_q_nom : Array[Double]
  /// @brief Whether these values are in effect on the robot. False while the robot is not in a joint
  /// impedance control mode: they are held and applied on the next controller start.
  /// @details Original flexiv_msgs/msg/JointImpedance.in_effect; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut in_effect : Bool
}
pub fn Ros2Flexiv_msgsMsgJointImpedance::new() -> Ros2Flexiv_msgsMsgJointImpedance {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    joint_names: [],
    k_q: [],
    z_q: [],
    k_q_nom: [],
    in_effect: false,
  }
}
pub(all) struct Ros2Flexiv_msgsMsgJointImpedanceCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgJointImpedanceCodec::new() -> Ros2Flexiv_msgsMsgJointImpedanceCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/JointImpedance",
    native_identity: None,
    codec_identity: "UWVMROS1_f93719074c048d0ab915eeefd2e62bcdfe16ac74f06a3aa505f06ca6d8c3515a",
    min_wire_bytes: 29, max_wire_bytes: 9373 }
}
pub fn Ros2Flexiv_msgsMsgJointImpedanceCodec::encode(_self : Ros2Flexiv_msgsMsgJointImpedanceCodec, value :
        Ros2Flexiv_msgsMsgJointImpedance) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9373, error: 0 }
  write_Ros2Flexiv_msgsMsgJointImpedance(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 29 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgJointImpedanceCodec::decode(_self : Ros2Flexiv_msgsMsgJointImpedanceCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgJointImpedance, Int] {
  if input.length() < 29 || input.length() > 9373 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgJointImpedance(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgJointImpedance(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgJointImpedance) -> Unit {
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
  let part2 = value.k_q
  let count2 = part2.length()
  if count2 > 32 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.z_q
  let count3 = part3.length()
  if count3 > 32 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.k_q_nom
  let count4 = part4.length()
  if count4 > 32 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  let part5 = value.in_effect
  writer.unsigned(if part5 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Flexiv_msgsMsgJointImpedance(reader : BoundedReader) -> Ros2Flexiv_msgsMsgJointImpedance {
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
  let part5 = reader.boolean()
  { header: part0, joint_names: part1, k_q: part2, z_q: part3, k_q_nom: part4, in_effect: part5 }
}

/// @brief Own every original field of flexiv_msgs/msg/JointInertiaScale.
/// @details Canonical extent 21..8853 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgJointInertiaScale {
  /// @brief Inertia shaping scales of the robot's joint motion controller, used in the joint impedance
  /// control modes. Mirrors the argument of flexiv::rdk::Robot::SetJointInertiaScale(). Header
  /// @details Original flexiv_msgs/msg/JointInertiaScale.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
  /// robot are covered, matching JointImpedance.msg.
  /// @details Original flexiv_msgs/msg/JointInertiaScale.joint_names; native type string. At most 32
  /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut joint_names : Array[String]
  /// @brief Inertia shaping scale sigma_q, dimensionless. Valid range [0.75, 1.0]. The nominal value 1.0
  /// means no shaping; a smaller scale makes the joint behave as if it were lighter.
  /// @details Original flexiv_msgs/msg/JointInertiaScale.inertia_scales; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut inertia_scales : Array[Double]
  /// @brief Whether these values are in effect on the robot. False while the robot is not in a joint
  /// impedance control mode: they are held and applied on the next controller start.
  /// @details Original flexiv_msgs/msg/JointInertiaScale.in_effect; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut in_effect : Bool
}
pub fn Ros2Flexiv_msgsMsgJointInertiaScale::new() -> Ros2Flexiv_msgsMsgJointInertiaScale {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    joint_names: [],
    inertia_scales: [],
    in_effect: false,
  }
}
pub(all) struct Ros2Flexiv_msgsMsgJointInertiaScaleCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgJointInertiaScaleCodec::new() -> Ros2Flexiv_msgsMsgJointInertiaScaleCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/JointInertiaScale",
    native_identity: None,
    codec_identity: "UWVMROS1_3dc5f0addd6835f698feda5133efb05cde46e480dee0e219436fcc4443018e1f",
    min_wire_bytes: 21, max_wire_bytes: 8853 }
}
pub fn Ros2Flexiv_msgsMsgJointInertiaScaleCodec::encode(_self : Ros2Flexiv_msgsMsgJointInertiaScaleCodec, value :
        Ros2Flexiv_msgsMsgJointInertiaScale) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8853, error: 0 }
  write_Ros2Flexiv_msgsMsgJointInertiaScale(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 21 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgJointInertiaScaleCodec::decode(_self : Ros2Flexiv_msgsMsgJointInertiaScaleCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgJointInertiaScale, Int] {
  if input.length() < 21 || input.length() > 8853 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgJointInertiaScale(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgJointInertiaScale(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgJointInertiaScale) -> Unit {
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
  let part2 = value.inertia_scales
  let count2 = part2.length()
  if count2 > 32 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.in_effect
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Flexiv_msgsMsgJointInertiaScale(reader : BoundedReader) -> Ros2Flexiv_msgsMsgJointInertiaScale {
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
  let part3 = reader.boolean()
  { header: part0, joint_names: part1, inertia_scales: part2, in_effect: part3 }
}

/// @brief Own every original field of flexiv_msgs/msg/JointPosVel.
/// @details Canonical extent 8..520 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgJointPosVel {
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.positions; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut positions : Array[Double]
  /// @brief Retain the complete original float64 field.
  /// @details Original flexiv_msgs/msg/JointPosVel.velocities; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut velocities : Array[Double]
}
pub fn Ros2Flexiv_msgsMsgJointPosVel::new() -> Ros2Flexiv_msgsMsgJointPosVel {
  {
    positions: [],
    velocities: [],
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
    codec_identity: "UWVMROS1_ab1060b13eacca41febd2b58a61f0b93df867a9d6579b4f2b43bf5280f2df4ca",
    min_wire_bytes: 8, max_wire_bytes: 520 }
}
pub fn Ros2Flexiv_msgsMsgJointPosVelCodec::encode(_self : Ros2Flexiv_msgsMsgJointPosVelCodec, value : Ros2Flexiv_msgsMsgJointPosVel)
        -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 520, error: 0 }
  write_Ros2Flexiv_msgsMsgJointPosVel(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgJointPosVelCodec::decode(_self : Ros2Flexiv_msgsMsgJointPosVelCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgJointPosVel, Int] {
  if input.length() < 8 || input.length() > 520 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgJointPosVel(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgJointPosVel(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgJointPosVel) -> Unit {
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
}
fn read_Ros2Flexiv_msgsMsgJointPosVel(reader : BoundedReader) -> Ros2Flexiv_msgsMsgJointPosVel {
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
  { positions: part0, velocities: part1 }
}

/// @brief Own every original field of flexiv_msgs/msg/MaxContactTorque.
/// @details Canonical extent 25..9113 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgMaxContactTorque {
  /// @brief Maximum contact torques of the robot's joint motion controller, used in the joint impedance
  /// control modes. Mirrors the argument of flexiv::rdk::Robot::SetMaxContactTorque(). Header
  /// @details Original flexiv_msgs/msg/MaxContactTorque.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Joint names in URDF order. Every array below is indexed by this. Only the arm joints of the
  /// robot are covered, matching JointImpedance.msg.
  /// @details Original flexiv_msgs/msg/MaxContactTorque.joint_names; native type string. At most 32
  /// elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut joint_names : Array[String]
  /// @brief Maximum contact torque the controller regulates its output to maintain. [Nm]
  /// @details Original flexiv_msgs/msg/MaxContactTorque.max_contact_torques; native type float64. At most
  /// 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut max_contact_torques : Array[Double]
  /// @brief Upper software limits of joint torques, the upper bound of max_contact_torques. [Nm]
  /// @details Original flexiv_msgs/msg/MaxContactTorque.tau_max; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut tau_max : Array[Double]
  /// @brief Whether these values are in effect on the robot. False while the robot is not in a joint
  /// impedance control mode: they are held and applied on the next controller start.
  /// @details Original flexiv_msgs/msg/MaxContactTorque.in_effect; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut in_effect : Bool
}
pub fn Ros2Flexiv_msgsMsgMaxContactTorque::new() -> Ros2Flexiv_msgsMsgMaxContactTorque {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    joint_names: [],
    max_contact_torques: [],
    tau_max: [],
    in_effect: false,
  }
}
pub(all) struct Ros2Flexiv_msgsMsgMaxContactTorqueCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgMaxContactTorqueCodec::new() -> Ros2Flexiv_msgsMsgMaxContactTorqueCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/MaxContactTorque",
    native_identity: None,
    codec_identity: "UWVMROS1_d98ebc099077f69f5311d46c2179d08367c301b6c9d1b272b3bc55ba3df185da",
    min_wire_bytes: 25, max_wire_bytes: 9113 }
}
pub fn Ros2Flexiv_msgsMsgMaxContactTorqueCodec::encode(_self : Ros2Flexiv_msgsMsgMaxContactTorqueCodec, value :
        Ros2Flexiv_msgsMsgMaxContactTorque) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9113, error: 0 }
  write_Ros2Flexiv_msgsMsgMaxContactTorque(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 25 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgMaxContactTorqueCodec::decode(_self : Ros2Flexiv_msgsMsgMaxContactTorqueCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgMaxContactTorque, Int] {
  if input.length() < 25 || input.length() > 9113 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgMaxContactTorque(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgMaxContactTorque(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgMaxContactTorque) -> Unit {
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
  let part2 = value.max_contact_torques
  let count2 = part2.length()
  if count2 > 32 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.tau_max
  let count3 = part3.length()
  if count3 > 32 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.in_effect
  writer.unsigned(if part4 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Flexiv_msgsMsgMaxContactTorque(reader : BoundedReader) -> Ros2Flexiv_msgsMsgMaxContactTorque {
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
  let part4 = reader.boolean()
  { header: part0, joint_names: part1, max_contact_torques: part2, tau_max: part3, in_effect: part4 }
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
    codec_identity: "UWVMROS1_79f6d3de38a4d7d514780f9d71fcc8b5cd413a3b511f1b31243c210265be0c87",
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

/// @brief Own every original field of flexiv_msgs/msg/RobotEvent.
/// @details Canonical extent 29..1053 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgRobotEvent {
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/RobotEvent.level; native type uint8. Scalar value. Storage belongs
  /// to the complete value and acquires no ROS resource.
  mut level : Int
  /// @brief Unique ID of the event
  /// @details Original flexiv_msgs/msg/RobotEvent.id; native type int32. Scalar value. Storage belongs to
  /// the complete value and acquires no ROS resource.
  mut id : Int
  /// @brief Brief description of the event
  /// @details Original flexiv_msgs/msg/RobotEvent.description; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut description : String
  /// @brief Consequences caused by the event
  /// @details Original flexiv_msgs/msg/RobotEvent.consequences; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut consequences : String
  /// @brief Probable causes of the event
  /// @details Original flexiv_msgs/msg/RobotEvent.probable_causes; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut probable_causes : String
  /// @brief Recommended actions after the event
  /// @details Original flexiv_msgs/msg/RobotEvent.recommended_actions; native type string. Scalar value.
  /// UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut recommended_actions : String
  /// @brief Timestamp of the event
  /// @details Original flexiv_msgs/msg/RobotEvent.timestamp; native type builtin_interfaces/msg/Time.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut timestamp : Ros2Builtin_interfacesMsgTime
}
pub fn Ros2Flexiv_msgsMsgRobotEvent::new() -> Ros2Flexiv_msgsMsgRobotEvent {
  {
    level: 0,
    id: 0,
    description: "",
    consequences: "",
    probable_causes: "",
    recommended_actions: "",
    timestamp: Ros2Builtin_interfacesMsgTime::new(),
  }
}
pub(all) struct Ros2Flexiv_msgsMsgRobotEventCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgRobotEventCodec::new() -> Ros2Flexiv_msgsMsgRobotEventCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/RobotEvent",
    native_identity: None,
    codec_identity: "UWVMROS1_cbc02424eaea2ae9754309d070d424f0d0fcd078e67a64b22cbb1a36848e0a17",
    min_wire_bytes: 29, max_wire_bytes: 1053 }
}
pub fn Ros2Flexiv_msgsMsgRobotEventCodec::encode(_self : Ros2Flexiv_msgsMsgRobotEventCodec, value : Ros2Flexiv_msgsMsgRobotEvent) ->
        Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1053, error: 0 }
  write_Ros2Flexiv_msgsMsgRobotEvent(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 29 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgRobotEventCodec::decode(_self : Ros2Flexiv_msgsMsgRobotEventCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgRobotEvent, Int] {
  if input.length() < 29 || input.length() > 1053 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgRobotEvent(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgRobotEvent(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgRobotEvent) -> Unit {
  let part0 = value.level
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.id
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part2 = value.description
  writer.text(part2, 256)
  let part3 = value.consequences
  writer.text(part3, 256)
  let part4 = value.probable_causes
  writer.text(part4, 256)
  let part5 = value.recommended_actions
  writer.text(part5, 256)
  let part6 = value.timestamp
  write_Ros2Builtin_interfacesMsgTime(writer, part6)
}
fn read_Ros2Flexiv_msgsMsgRobotEvent(reader : BoundedReader) -> Ros2Flexiv_msgsMsgRobotEvent {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part2 = reader.text(256)
  let part3 = reader.text(256)
  let part4 = reader.text(256)
  let part5 = reader.text(256)
  let part6 = read_Ros2Builtin_interfacesMsgTime(reader)
  { level: part0, id: part1, description: part2, consequences: part3, probable_causes: part4, recommended_actions: part5, timestamp:
          part6 }
}

/// @brief Own every original field of flexiv_msgs/msg/OperationalStatus.
/// @details Canonical extent 34..17650 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgOperationalStatus {
  /// @brief Operational status of the robot and of the driver supervising it. The status values mirror
  /// flexiv::rdk::OperationalStatus one-for-one. Header
  /// @details Original flexiv_msgs/msg/OperationalStatus.header; native type std_msgs/msg/Header. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.operational_status; native type uint8. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut operational_status : Int
  /// @brief Human-readable name of the operational status above
  /// @details Original flexiv_msgs/msg/OperationalStatus.operational_status_name; native type string.
  /// Scalar value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut operational_status_name : String
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.driver_state; native type uint8. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut driver_state : Int
  /// @brief Robot condition flags
  /// @details Original flexiv_msgs/msg/OperationalStatus.connected; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut connected : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.fault; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut fault : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.operational; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut operational : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.estop_released; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut estop_released : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.reduced; native type bool. Scalar value. Storage
  /// belongs to the complete value and acquires no ROS resource.
  mut reduced : Bool
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/msg/OperationalStatus.recovery_state; native type bool. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut recovery_state : Bool
  /// @brief Current robot control mode, values defined in Mode.msg
  /// @details Original flexiv_msgs/msg/OperationalStatus.control_mode; native type int8. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut control_mode : Int
  /// @brief How the current condition should be recovered from, values defined in RecoveryPolicy.msg
  /// @details Original flexiv_msgs/msg/OperationalStatus.recovery_policy; native type uint8. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut recovery_policy : Int
  /// @brief Operator-facing explanation of the current condition and what to do about it
  /// @details Original flexiv_msgs/msg/OperationalStatus.message; native type string. Scalar value. UTF-8
  /// capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut message : String
  /// @brief Most recent error and critical events reported by the robot
  /// @details Original flexiv_msgs/msg/OperationalStatus.recent_events; native type
  /// flexiv_msgs/msg/RobotEvent. At most 16 elements. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut recent_events : Array[Ros2Flexiv_msgsMsgRobotEvent]
}
pub fn Ros2Flexiv_msgsMsgOperationalStatus::new() -> Ros2Flexiv_msgsMsgOperationalStatus {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    operational_status: 0,
    operational_status_name: "",
    driver_state: 0,
    connected: false,
    fault: false,
    operational: false,
    estop_released: false,
    reduced: false,
    recovery_state: false,
    control_mode: 0,
    recovery_policy: 0,
    message: "",
    recent_events: [],
  }
}
pub(all) struct Ros2Flexiv_msgsMsgOperationalStatusCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgOperationalStatusCodec::new() -> Ros2Flexiv_msgsMsgOperationalStatusCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/OperationalStatus",
    native_identity: None,
    codec_identity: "UWVMROS1_89c0f96c20a56eb45bb21b617945cbe727558f12094a8377414fe5729d147a62",
    min_wire_bytes: 34, max_wire_bytes: 17650 }
}
pub fn Ros2Flexiv_msgsMsgOperationalStatusCodec::encode(_self : Ros2Flexiv_msgsMsgOperationalStatusCodec, value :
        Ros2Flexiv_msgsMsgOperationalStatus) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 17650, error: 0 }
  write_Ros2Flexiv_msgsMsgOperationalStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 34 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgOperationalStatusCodec::decode(_self : Ros2Flexiv_msgsMsgOperationalStatusCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgOperationalStatus, Int] {
  if input.length() < 34 || input.length() > 17650 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgOperationalStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgOperationalStatus(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgOperationalStatus) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.operational_status
  if part1 < 0 || part1 > 255 { writer.error = 22 }
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part2 = value.operational_status_name
  writer.text(part2, 256)
  let part3 = value.driver_state
  if part3 < 0 || part3 > 255 { writer.error = 22 }
  writer.unsigned(part3.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part4 = value.connected
  writer.unsigned(if part4 { 1UL } else { 0UL }, 1)
  let part5 = value.fault
  writer.unsigned(if part5 { 1UL } else { 0UL }, 1)
  let part6 = value.operational
  writer.unsigned(if part6 { 1UL } else { 0UL }, 1)
  let part7 = value.estop_released
  writer.unsigned(if part7 { 1UL } else { 0UL }, 1)
  let part8 = value.reduced
  writer.unsigned(if part8 { 1UL } else { 0UL }, 1)
  let part9 = value.recovery_state
  writer.unsigned(if part9 { 1UL } else { 0UL }, 1)
  let part10 = value.control_mode
  if part10 < -128 || part10 > 127 { writer.error = 22 }
  writer.unsigned(part10.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part11 = value.recovery_policy
  if part11 < 0 || part11 > 255 { writer.error = 22 }
  writer.unsigned(part11.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part12 = value.message
  writer.text(part12, 256)
  let part13 = value.recent_events
  let count13 = part13.length()
  if count13 > 16 { writer.error = 22; return () }
  writer.unsigned(count13.to_uint64(), 4)
  for index = 0; index < count13; index = index + 1 {
    let element = part13[index]
    write_Ros2Flexiv_msgsMsgRobotEvent(writer, element)
  }
}
fn read_Ros2Flexiv_msgsMsgOperationalStatus(reader : BoundedReader) -> Ros2Flexiv_msgsMsgOperationalStatus {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = reader.unsigned(1).to_int()
  let part2 = reader.text(256)
  let part3 = reader.unsigned(1).to_int()
  let part4 = reader.boolean()
  let part5 = reader.boolean()
  let part6 = reader.boolean()
  let part7 = reader.boolean()
  let part8 = reader.boolean()
  let part9 = reader.boolean()
  let part10 = reader.signed8()
  let part11 = reader.unsigned(1).to_int()
  let part12 = reader.text(256)
  let part13 : Array[Ros2Flexiv_msgsMsgRobotEvent] = []
  let count13 = reader.count(16, 29)
  for index = 0; index < count13; index = index + 1 {
    part13.push(read_Ros2Flexiv_msgsMsgRobotEvent(reader))
  }
  { header: part0, operational_status: part1, operational_status_name: part2, driver_state: part3, connected: part4, fault: part5,
          operational: part6, estop_released: part7, reduced: part8, recovery_state: part9, control_mode: part10, recovery_policy:
          part11, message: part12, recent_events: part13 }
}

/// @brief Own every original field of flexiv_msgs/msg/RecoveryPolicy.
/// @details Canonical extent 1..1 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgRecoveryPolicy {
  /// @brief Retain the complete original uint8 field.
  /// @details Original flexiv_msgs/msg/RecoveryPolicy.recovery_policy; native type uint8. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut recovery_policy : Int
}
pub fn Ros2Flexiv_msgsMsgRecoveryPolicy::new() -> Ros2Flexiv_msgsMsgRecoveryPolicy {
  {
    recovery_policy: 0,
  }
}
pub(all) struct Ros2Flexiv_msgsMsgRecoveryPolicyCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsMsgRecoveryPolicyCodec::new() -> Ros2Flexiv_msgsMsgRecoveryPolicyCodec {
  { ros_version: 2, native_type: "flexiv_msgs/msg/RecoveryPolicy",
    native_identity: None,
    codec_identity: "UWVMROS1_0eb43d2482caac32e0977e6cd8ae7baeeba7fca2629c5cd1e1927e8a28af42bf",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros2Flexiv_msgsMsgRecoveryPolicyCodec::encode(_self : Ros2Flexiv_msgsMsgRecoveryPolicyCodec, value :
        Ros2Flexiv_msgsMsgRecoveryPolicy) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros2Flexiv_msgsMsgRecoveryPolicy(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgRecoveryPolicyCodec::decode(_self : Ros2Flexiv_msgsMsgRecoveryPolicyCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgRecoveryPolicy, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgRecoveryPolicy(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgRecoveryPolicy(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgRecoveryPolicy) -> Unit {
  let part0 = value.recovery_policy
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
}
fn read_Ros2Flexiv_msgsMsgRecoveryPolicy(reader : BoundedReader) -> Ros2Flexiv_msgsMsgRecoveryPolicy {
  let part0 = reader.unsigned(1).to_int()
  { recovery_policy: part0 }
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
/// @details Canonical extent 68..324 bytes. Native type identity is independent; constructing a value
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
    codec_identity: "UWVMROS1_a8495b0ebccf56849f2c0f798064894dde7c4eb15988d22b3a684a9fd18d05ad",
    min_wire_bytes: 68, max_wire_bytes: 324 }
}
pub fn Ros2Geometry_msgsMsgPoseStampedCodec::encode(_self : Ros2Geometry_msgsMsgPoseStampedCodec, value :
        Ros2Geometry_msgsMsgPoseStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 324, error: 0 }
  write_Ros2Geometry_msgsMsgPoseStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 68 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgPoseStampedCodec::decode(_self : Ros2Geometry_msgsMsgPoseStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgPoseStamped, Int] {
  if input.length() < 68 || input.length() > 324 { return Err(22) }
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
/// @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
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
    codec_identity: "UWVMROS1_e26c5749f60e59245f541ae7c9d66b0d5fc47eef38fa163338aa39316751e308",
    min_wire_bytes: 60, max_wire_bytes: 316 }
}
pub fn Ros2Geometry_msgsMsgTwistStampedCodec::encode(_self : Ros2Geometry_msgsMsgTwistStampedCodec, value :
        Ros2Geometry_msgsMsgTwistStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 316, error: 0 }
  write_Ros2Geometry_msgsMsgTwistStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 60 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgTwistStampedCodec::decode(_self : Ros2Geometry_msgsMsgTwistStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgTwistStamped, Int] {
  if input.length() < 60 || input.length() > 316 { return Err(22) }
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
/// @details Canonical extent 60..316 bytes. Native type identity is independent; constructing a value
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
    codec_identity: "UWVMROS1_b9573c0cc3e84b6782f303e91813d65244f61e9f58639477158795d710127177",
    min_wire_bytes: 60, max_wire_bytes: 316 }
}
pub fn Ros2Geometry_msgsMsgWrenchStampedCodec::encode(_self : Ros2Geometry_msgsMsgWrenchStampedCodec, value :
        Ros2Geometry_msgsMsgWrenchStamped) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 316, error: 0 }
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 60 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Geometry_msgsMsgWrenchStampedCodec::decode(_self : Ros2Geometry_msgsMsgWrenchStampedCodec, input : Bytes) ->
        Result[Ros2Geometry_msgsMsgWrenchStamped, Int] {
  if input.length() < 60 || input.length() > 316 { return Err(22) }
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

/// @brief Own every original field of flexiv_msgs/msg/RobotStates.
/// @details Canonical extent 552..5160 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsMsgRobotStates {
  /// @brief Header
  /// @details Original flexiv_msgs/msg/RobotStates.header; native type std_msgs/msg/Header. Scalar value.
  /// Storage belongs to the complete value and acquires no ROS resource.
  mut header : Ros2Std_msgsMsgHeader
  /// @brief Robot system timestamp
  /// @details Original flexiv_msgs/msg/RobotStates.robot_timestamp; native type
  /// builtin_interfaces/msg/Time. Scalar value. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut robot_timestamp : Ros2Builtin_interfacesMsgTime
  /// @brief Measured joint positions using link-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.q; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut q : Array[Double]
  /// @brief Measured joint positions using motor-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.theta; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut theta : Array[Double]
  /// @brief Measured joint velocities using link-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.dq; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut dq : Array[Double]
  /// @brief Measured joint velocities using motor-side encoder
  /// @details Original flexiv_msgs/msg/RobotStates.dtheta; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut dtheta : Array[Double]
  /// @brief Measured joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau; native type float64. At most 32 elements. Finite
  /// IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires no ROS
  /// resource.
  mut tau : Array[Double]
  /// @brief Numerical derivative of measured joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_dot; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut tau_dot : Array[Double]
  /// @brief Estimated external joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_ext; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut tau_ext : Array[Double]
  /// @brief Estimated interaction joint torques
  /// @details Original flexiv_msgs/msg/RobotStates.tau_interact; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut tau_interact : Array[Double]
  /// @brief Measured joint temperatures
  /// @details Original flexiv_msgs/msg/RobotStates.temperature; native type float64. At most 32 elements.
  /// Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut temperature : Array[Double]
  /// @brief Measured TCP pose expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_pose; native type geometry_msgs/msg/PoseStamped.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut tcp_pose : Ros2Geometry_msgsMsgPoseStamped
  /// @brief Measured TCP twist expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_twist; native type geometry_msgs/msg/TwistStamped.
  /// Scalar value. Storage belongs to the complete value and acquires no ROS resource.
  mut tcp_twist : Ros2Geometry_msgsMsgTwistStamped
  /// @brief Measured flange pose expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.flange_pose; native type
  /// geometry_msgs/msg/PoseStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut flange_pose : Ros2Geometry_msgsMsgPoseStamped
  /// @brief Raw force-torque (FT) sensor reading in flange frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_ft_sensor; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut raw_ft_sensor : Ros2Geometry_msgsMsgWrenchStamped
  /// @brief Estimated external wrench applied on TCP and expressed in TCP frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_wrench_local; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut tcp_wrench_local : Ros2Geometry_msgsMsgWrenchStamped
  /// @brief Estimated external wrench applied on TCP and expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.tcp_wrench; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut tcp_wrench : Ros2Geometry_msgsMsgWrenchStamped
  /// @brief Unfiltered external wrench applied on TCP and expressed in TCP frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench_local; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut raw_tcp_wrench_local : Ros2Geometry_msgsMsgWrenchStamped
  /// @brief Unfiltered external wrench applied on TCP and expressed in world frame
  /// @details Original flexiv_msgs/msg/RobotStates.raw_tcp_wrench; native type
  /// geometry_msgs/msg/WrenchStamped. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut raw_tcp_wrench : Ros2Geometry_msgsMsgWrenchStamped
}
pub fn Ros2Flexiv_msgsMsgRobotStates::new() -> Ros2Flexiv_msgsMsgRobotStates {
  {
    header: Ros2Std_msgsMsgHeader::new(),
    robot_timestamp: Ros2Builtin_interfacesMsgTime::new(),
    q: [],
    theta: [],
    dq: [],
    dtheta: [],
    tau: [],
    tau_dot: [],
    tau_ext: [],
    tau_interact: [],
    temperature: [],
    tcp_pose: Ros2Geometry_msgsMsgPoseStamped::new(),
    tcp_twist: Ros2Geometry_msgsMsgTwistStamped::new(),
    flange_pose: Ros2Geometry_msgsMsgPoseStamped::new(),
    raw_ft_sensor: Ros2Geometry_msgsMsgWrenchStamped::new(),
    tcp_wrench_local: Ros2Geometry_msgsMsgWrenchStamped::new(),
    tcp_wrench: Ros2Geometry_msgsMsgWrenchStamped::new(),
    raw_tcp_wrench_local: Ros2Geometry_msgsMsgWrenchStamped::new(),
    raw_tcp_wrench: Ros2Geometry_msgsMsgWrenchStamped::new(),
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
    codec_identity: "UWVMROS1_3faeb145bd2ce50b6478e44c55400cc484e619eb66783f56a4a0801d51af708a",
    min_wire_bytes: 552, max_wire_bytes: 5160 }
}
pub fn Ros2Flexiv_msgsMsgRobotStatesCodec::encode(_self : Ros2Flexiv_msgsMsgRobotStatesCodec, value : Ros2Flexiv_msgsMsgRobotStates)
        -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 5160, error: 0 }
  write_Ros2Flexiv_msgsMsgRobotStates(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 552 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsMsgRobotStatesCodec::decode(_self : Ros2Flexiv_msgsMsgRobotStatesCodec, input : Bytes) ->
        Result[Ros2Flexiv_msgsMsgRobotStates, Int] {
  if input.length() < 552 || input.length() > 5160 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsMsgRobotStates(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsMsgRobotStates(writer : BoundedWriter, value : Ros2Flexiv_msgsMsgRobotStates) -> Unit {
  let part0 = value.header
  write_Ros2Std_msgsMsgHeader(writer, part0)
  let part1 = value.robot_timestamp
  write_Ros2Builtin_interfacesMsgTime(writer, part1)
  let part2 = value.q
  let count2 = part2.length()
  if count2 > 32 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.theta
  let count3 = part3.length()
  if count3 > 32 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.dq
  let count4 = part4.length()
  if count4 > 32 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  let part5 = value.dtheta
  let count5 = part5.length()
  if count5 > 32 { writer.error = 22; return () }
  writer.unsigned(count5.to_uint64(), 4)
  for index = 0; index < count5; index = index + 1 {
    let element = part5[index]
    writer.float64(element)
  }
  let part6 = value.tau
  let count6 = part6.length()
  if count6 > 32 { writer.error = 22; return () }
  writer.unsigned(count6.to_uint64(), 4)
  for index = 0; index < count6; index = index + 1 {
    let element = part6[index]
    writer.float64(element)
  }
  let part7 = value.tau_dot
  let count7 = part7.length()
  if count7 > 32 { writer.error = 22; return () }
  writer.unsigned(count7.to_uint64(), 4)
  for index = 0; index < count7; index = index + 1 {
    let element = part7[index]
    writer.float64(element)
  }
  let part8 = value.tau_ext
  let count8 = part8.length()
  if count8 > 32 { writer.error = 22; return () }
  writer.unsigned(count8.to_uint64(), 4)
  for index = 0; index < count8; index = index + 1 {
    let element = part8[index]
    writer.float64(element)
  }
  let part9 = value.tau_interact
  let count9 = part9.length()
  if count9 > 32 { writer.error = 22; return () }
  writer.unsigned(count9.to_uint64(), 4)
  for index = 0; index < count9; index = index + 1 {
    let element = part9[index]
    writer.float64(element)
  }
  let part10 = value.temperature
  let count10 = part10.length()
  if count10 > 32 { writer.error = 22; return () }
  writer.unsigned(count10.to_uint64(), 4)
  for index = 0; index < count10; index = index + 1 {
    let element = part10[index]
    writer.float64(element)
  }
  let part11 = value.tcp_pose
  write_Ros2Geometry_msgsMsgPoseStamped(writer, part11)
  let part12 = value.tcp_twist
  write_Ros2Geometry_msgsMsgTwistStamped(writer, part12)
  let part13 = value.flange_pose
  write_Ros2Geometry_msgsMsgPoseStamped(writer, part13)
  let part14 = value.raw_ft_sensor
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part14)
  let part15 = value.tcp_wrench_local
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part15)
  let part16 = value.tcp_wrench
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part16)
  let part17 = value.raw_tcp_wrench_local
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part17)
  let part18 = value.raw_tcp_wrench
  write_Ros2Geometry_msgsMsgWrenchStamped(writer, part18)
}
fn read_Ros2Flexiv_msgsMsgRobotStates(reader : BoundedReader) -> Ros2Flexiv_msgsMsgRobotStates {
  let part0 = read_Ros2Std_msgsMsgHeader(reader)
  let part1 = read_Ros2Builtin_interfacesMsgTime(reader)
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
  let part5 : Array[Double] = []
  let count5 = reader.count(32, 8)
  for index = 0; index < count5; index = index + 1 {
    part5.push(reader.float64())
  }
  let part6 : Array[Double] = []
  let count6 = reader.count(32, 8)
  for index = 0; index < count6; index = index + 1 {
    part6.push(reader.float64())
  }
  let part7 : Array[Double] = []
  let count7 = reader.count(32, 8)
  for index = 0; index < count7; index = index + 1 {
    part7.push(reader.float64())
  }
  let part8 : Array[Double] = []
  let count8 = reader.count(32, 8)
  for index = 0; index < count8; index = index + 1 {
    part8.push(reader.float64())
  }
  let part9 : Array[Double] = []
  let count9 = reader.count(32, 8)
  for index = 0; index < count9; index = index + 1 {
    part9.push(reader.float64())
  }
  let part10 : Array[Double] = []
  let count10 = reader.count(32, 8)
  for index = 0; index < count10; index = index + 1 {
    part10.push(reader.float64())
  }
  let part11 = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  let part12 = read_Ros2Geometry_msgsMsgTwistStamped(reader)
  let part13 = read_Ros2Geometry_msgsMsgPoseStamped(reader)
  let part14 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  let part15 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  let part16 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  let part17 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  let part18 = read_Ros2Geometry_msgsMsgWrenchStamped(reader)
  { header: part0, robot_timestamp: part1, q: part2, theta: part3, dq: part4, dtheta: part5, tau: part6, tau_dot: part7, tau_ext:
          part8, tau_interact: part9, temperature: part10, tcp_pose: part11, tcp_twist: part12, flange_pose: part13, raw_ft_sensor:
          part14, tcp_wrench_local: part15, tcp_wrench: part16, raw_tcp_wrench_local: part17, raw_tcp_wrench: part18 }
}

/// @brief Own every original field of flexiv_msgs/srv/GetOperationalStatus_Request.
/// @details Canonical extent 0..0 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) enum Ros2Flexiv_msgsSrvGetOperationalStatus_Request { Ros2Flexiv_msgsSrvGetOperationalStatus_RequestEmpty }
pub fn Ros2Flexiv_msgsSrvGetOperationalStatus_Request::new() -> Ros2Flexiv_msgsSrvGetOperationalStatus_Request {
        Ros2Flexiv_msgsSrvGetOperationalStatus_RequestEmpty }
pub(all) struct Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCodec::new() -> Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCodec {
  { ros_version: 2, native_type: "flexiv_msgs/srv/GetOperationalStatus_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_7fd7ea129ca031bf1bf8d008b1273bc0deb676f3ae786731b420cd009bb3ae12",
    min_wire_bytes: 0, max_wire_bytes: 0 }
}
pub fn Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCodec::encode(_self : Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCodec,
        value : Ros2Flexiv_msgsSrvGetOperationalStatus_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 0, error: 0 }
  write_Ros2Flexiv_msgsSrvGetOperationalStatus_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 0 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCodec::decode(_self : Ros2Flexiv_msgsSrvGetOperationalStatus_RequestCodec,
        input : Bytes) -> Result[Ros2Flexiv_msgsSrvGetOperationalStatus_Request, Int] {
  if input.length() < 0 || input.length() > 0 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsSrvGetOperationalStatus_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsSrvGetOperationalStatus_Request(writer : BoundedWriter, value :
        Ros2Flexiv_msgsSrvGetOperationalStatus_Request) -> Unit {
}
fn read_Ros2Flexiv_msgsSrvGetOperationalStatus_Request(reader : BoundedReader) -> Ros2Flexiv_msgsSrvGetOperationalStatus_Request {
  Ros2Flexiv_msgsSrvGetOperationalStatus_RequestEmpty
}

/// @brief Own every original field of flexiv_msgs/srv/GetOperationalStatus_Response.
/// @details Canonical extent 34..17650 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsSrvGetOperationalStatus_Response {
  /// @brief Retain the complete original flexiv_msgs/msg/OperationalStatus field.
  /// @details Original flexiv_msgs/srv/GetOperationalStatus_Response.status; native type
  /// flexiv_msgs/msg/OperationalStatus. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut status : Ros2Flexiv_msgsMsgOperationalStatus
}
pub fn Ros2Flexiv_msgsSrvGetOperationalStatus_Response::new() -> Ros2Flexiv_msgsSrvGetOperationalStatus_Response {
  {
    status: Ros2Flexiv_msgsMsgOperationalStatus::new(),
  }
}
pub(all) struct Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCodec::new() -> Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCodec {
  { ros_version: 2, native_type: "flexiv_msgs/srv/GetOperationalStatus_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_c0c5d8eabf0e036c0854728e784564c68669a6cdbb5e22f7f5934956d9e4e7da",
    min_wire_bytes: 34, max_wire_bytes: 17650 }
}
pub fn Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCodec::encode(_self : Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCodec,
        value : Ros2Flexiv_msgsSrvGetOperationalStatus_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 17650, error: 0 }
  write_Ros2Flexiv_msgsSrvGetOperationalStatus_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 34 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCodec::decode(_self : Ros2Flexiv_msgsSrvGetOperationalStatus_ResponseCodec,
        input : Bytes) -> Result[Ros2Flexiv_msgsSrvGetOperationalStatus_Response, Int] {
  if input.length() < 34 || input.length() > 17650 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsSrvGetOperationalStatus_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsSrvGetOperationalStatus_Response(writer : BoundedWriter, value :
        Ros2Flexiv_msgsSrvGetOperationalStatus_Response) -> Unit {
  let part0 = value.status
  write_Ros2Flexiv_msgsMsgOperationalStatus(writer, part0)
}
fn read_Ros2Flexiv_msgsSrvGetOperationalStatus_Response(reader : BoundedReader) -> Ros2Flexiv_msgsSrvGetOperationalStatus_Response {
  let part0 = read_Ros2Flexiv_msgsMsgOperationalStatus(reader)
  { status: part0 }
}

/// @brief Own every original field of flexiv_msgs/srv/SetJointImpedance_Request.
/// @details Canonical extent 12..8844 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsSrvSetJointImpedance_Request {
  /// @brief Set impedance properties of the robot's joint motion controller. Requires the driver to run
  /// with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing
  /// changes. Joints to set, named exactly as published on ~/joint_impedance. Leave empty to address
  /// every joint the interface covers, in that published order. On a dual-arm robot this is how a single
  /// arm is set on its own: name that arm's joints and the other arm is left untouched.
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Request.joint_names; native type string. At most
  /// 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut joint_names : Array[String]
  /// @brief Joint motion stiffness K_q, one entry per joint in joint_names, or one per covered joint when
  /// joint_names is empty. Valid range [0, k_q_nom]. Setting a joint to 0 makes it free-floating, which
  /// in this position-streaming driver means the joint will sag under gravity. [Nm/rad]
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Request.k_q; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut k_q : Array[Double]
  /// @brief Joint motion damping ratio Z_q, matching k_q entry for entry, or empty for the nominal 0.7.
  /// Valid range [0.3, 0.8]. Values away from nominal may lead to performance and stability issues.
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Request.z_q; native type float64. At most 32
  /// elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the complete value and
  /// acquires no ROS resource.
  mut z_q : Array[Double]
}
pub fn Ros2Flexiv_msgsSrvSetJointImpedance_Request::new() -> Ros2Flexiv_msgsSrvSetJointImpedance_Request {
  {
    joint_names: [],
    k_q: [],
    z_q: [],
  }
}
pub(all) struct Ros2Flexiv_msgsSrvSetJointImpedance_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsSrvSetJointImpedance_RequestCodec::new() -> Ros2Flexiv_msgsSrvSetJointImpedance_RequestCodec {
  { ros_version: 2, native_type: "flexiv_msgs/srv/SetJointImpedance_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_37adbcb0beeef85996da45424e76b2d67bcbf245d22eae89f05e43d015527e08",
    min_wire_bytes: 12, max_wire_bytes: 8844 }
}
pub fn Ros2Flexiv_msgsSrvSetJointImpedance_RequestCodec::encode(_self : Ros2Flexiv_msgsSrvSetJointImpedance_RequestCodec, value :
        Ros2Flexiv_msgsSrvSetJointImpedance_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8844, error: 0 }
  write_Ros2Flexiv_msgsSrvSetJointImpedance_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsSrvSetJointImpedance_RequestCodec::decode(_self : Ros2Flexiv_msgsSrvSetJointImpedance_RequestCodec, input :
        Bytes) -> Result[Ros2Flexiv_msgsSrvSetJointImpedance_Request, Int] {
  if input.length() < 12 || input.length() > 8844 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsSrvSetJointImpedance_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsSrvSetJointImpedance_Request(writer : BoundedWriter, value : Ros2Flexiv_msgsSrvSetJointImpedance_Request) ->
        Unit {
  let part0 = value.joint_names
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.text(element, 256)
  }
  let part1 = value.k_q
  let count1 = part1.length()
  if count1 > 32 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.z_q
  let count2 = part2.length()
  if count2 > 32 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros2Flexiv_msgsSrvSetJointImpedance_Request(reader : BoundedReader) -> Ros2Flexiv_msgsSrvSetJointImpedance_Request {
  let part0 : Array[String] = []
  let count0 = reader.count(32, 4)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.text(256))
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
  { joint_names: part0, k_q: part1, z_q: part2 }
}

/// @brief Own every original field of flexiv_msgs/srv/SetJointImpedance_Response.
/// @details Canonical extent 34..9634 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsSrvSetJointImpedance_Response {
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut message : String
  /// @brief Every joint the interface covers and the values now held for it, unchanged from before on a
  /// rejection. Joints the request did not name keep the value they already had.
  /// @details Original flexiv_msgs/srv/SetJointImpedance_Response.setting; native type
  /// flexiv_msgs/msg/JointImpedance. Scalar value. Storage belongs to the complete value and acquires no
  /// ROS resource.
  mut setting : Ros2Flexiv_msgsMsgJointImpedance
}
pub fn Ros2Flexiv_msgsSrvSetJointImpedance_Response::new() -> Ros2Flexiv_msgsSrvSetJointImpedance_Response {
  {
    success: false,
    message: "",
    setting: Ros2Flexiv_msgsMsgJointImpedance::new(),
  }
}
pub(all) struct Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCodec::new() -> Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCodec {
  { ros_version: 2, native_type: "flexiv_msgs/srv/SetJointImpedance_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_95a169dd0eb880ef3e71653a5e4cdf08e743db80df706e75664db582eb927f96",
    min_wire_bytes: 34, max_wire_bytes: 9634 }
}
pub fn Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCodec::encode(_self : Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCodec, value :
        Ros2Flexiv_msgsSrvSetJointImpedance_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9634, error: 0 }
  write_Ros2Flexiv_msgsSrvSetJointImpedance_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 34 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCodec::decode(_self : Ros2Flexiv_msgsSrvSetJointImpedance_ResponseCodec, input :
        Bytes) -> Result[Ros2Flexiv_msgsSrvSetJointImpedance_Response, Int] {
  if input.length() < 34 || input.length() > 9634 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsSrvSetJointImpedance_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsSrvSetJointImpedance_Response(writer : BoundedWriter, value : Ros2Flexiv_msgsSrvSetJointImpedance_Response)
        -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.message
  writer.text(part1, 256)
  let part2 = value.setting
  write_Ros2Flexiv_msgsMsgJointImpedance(writer, part2)
}
fn read_Ros2Flexiv_msgsSrvSetJointImpedance_Response(reader : BoundedReader) -> Ros2Flexiv_msgsSrvSetJointImpedance_Response {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  let part2 = read_Ros2Flexiv_msgsMsgJointImpedance(reader)
  { success: part0, message: part1, setting: part2 }
}

/// @brief Own every original field of flexiv_msgs/srv/SetJointInertiaScale_Request.
/// @details Canonical extent 8..8584 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsSrvSetJointInertiaScale_Request {
  /// @brief Set inertia shaping scales of the robot's joint motion controller, which make the joints
  /// behave as if they were lighter. Requires the driver to run with rdk_control_mode:=joint_impedance.
  /// An invalid request is rejected as a whole and nothing changes. Joints to set, named exactly as
  /// published on ~/joint_inertia_scale. Leave empty to address every joint the interface covers, in that
  /// published order. On a dual-arm robot this is how a single arm is set on its own: name that arm's
  /// joints and the other arm is left untouched.
  /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.joint_names; native type string. At
  /// most 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut joint_names : Array[String]
  /// @brief Inertia shaping scale sigma_q, one entry per joint in joint_names, or one per covered joint
  /// when joint_names is empty. Valid range [0.75, 1.0]. The nominal value 1.0 means no shaping; a
  /// smaller scale corresponds to lighter inertia.
  /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Request.inertia_scales; native type float64.
  /// At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to the
  /// complete value and acquires no ROS resource.
  mut inertia_scales : Array[Double]
}
pub fn Ros2Flexiv_msgsSrvSetJointInertiaScale_Request::new() -> Ros2Flexiv_msgsSrvSetJointInertiaScale_Request {
  {
    joint_names: [],
    inertia_scales: [],
  }
}
pub(all) struct Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCodec::new() -> Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCodec {
  { ros_version: 2, native_type: "flexiv_msgs/srv/SetJointInertiaScale_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_03aeec1174b3eda7777dc74548c9781915c532bef92af3f4383a801e3b8ff625",
    min_wire_bytes: 8, max_wire_bytes: 8584 }
}
pub fn Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCodec::encode(_self : Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCodec,
        value : Ros2Flexiv_msgsSrvSetJointInertiaScale_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8584, error: 0 }
  write_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCodec::decode(_self : Ros2Flexiv_msgsSrvSetJointInertiaScale_RequestCodec,
        input : Bytes) -> Result[Ros2Flexiv_msgsSrvSetJointInertiaScale_Request, Int] {
  if input.length() < 8 || input.length() > 8584 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request(writer : BoundedWriter, value :
        Ros2Flexiv_msgsSrvSetJointInertiaScale_Request) -> Unit {
  let part0 = value.joint_names
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.text(element, 256)
  }
  let part1 = value.inertia_scales
  let count1 = part1.length()
  if count1 > 32 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
}
fn read_Ros2Flexiv_msgsSrvSetJointInertiaScale_Request(reader : BoundedReader) -> Ros2Flexiv_msgsSrvSetJointInertiaScale_Request {
  let part0 : Array[String] = []
  let count0 = reader.count(32, 4)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.text(256))
  }
  let part1 : Array[Double] = []
  let count1 = reader.count(32, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  { joint_names: part0, inertia_scales: part1 }
}

/// @brief Own every original field of flexiv_msgs/srv/SetJointInertiaScale_Response.
/// @details Canonical extent 26..9114 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsSrvSetJointInertiaScale_Response {
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
  /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut message : String
  /// @brief Every joint the interface covers and the values now held for it, unchanged from before on a
  /// rejection. Joints the request did not name keep the value they already had.
  /// @details Original flexiv_msgs/srv/SetJointInertiaScale_Response.setting; native type
  /// flexiv_msgs/msg/JointInertiaScale. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut setting : Ros2Flexiv_msgsMsgJointInertiaScale
}
pub fn Ros2Flexiv_msgsSrvSetJointInertiaScale_Response::new() -> Ros2Flexiv_msgsSrvSetJointInertiaScale_Response {
  {
    success: false,
    message: "",
    setting: Ros2Flexiv_msgsMsgJointInertiaScale::new(),
  }
}
pub(all) struct Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCodec::new() -> Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCodec {
  { ros_version: 2, native_type: "flexiv_msgs/srv/SetJointInertiaScale_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_2b7d36ecdc70ec1a450a03d412cfd431e735fc3aa601f321007afabe00f51931",
    min_wire_bytes: 26, max_wire_bytes: 9114 }
}
pub fn Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCodec::encode(_self : Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCodec,
        value : Ros2Flexiv_msgsSrvSetJointInertiaScale_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9114, error: 0 }
  write_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 26 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCodec::decode(_self : Ros2Flexiv_msgsSrvSetJointInertiaScale_ResponseCodec,
        input : Bytes) -> Result[Ros2Flexiv_msgsSrvSetJointInertiaScale_Response, Int] {
  if input.length() < 26 || input.length() > 9114 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response(writer : BoundedWriter, value :
        Ros2Flexiv_msgsSrvSetJointInertiaScale_Response) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.message
  writer.text(part1, 256)
  let part2 = value.setting
  write_Ros2Flexiv_msgsMsgJointInertiaScale(writer, part2)
}
fn read_Ros2Flexiv_msgsSrvSetJointInertiaScale_Response(reader : BoundedReader) -> Ros2Flexiv_msgsSrvSetJointInertiaScale_Response {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  let part2 = read_Ros2Flexiv_msgsMsgJointInertiaScale(reader)
  { success: part0, message: part1, setting: part2 }
}

/// @brief Own every original field of flexiv_msgs/srv/SetMaxContactTorque_Request.
/// @details Canonical extent 8..8584 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsSrvSetMaxContactTorque_Request {
  /// @brief Set maximum contact torques of the robot's joint motion controller. The controller regulates
  /// its output to keep contact torques with the environment under these values. Requires the driver to
  /// run with rdk_control_mode:=joint_impedance.  An invalid request is rejected as a whole and nothing
  /// changes. Joints to set, named exactly as published on ~/max_contact_torque. Leave empty to address
  /// every joint the interface covers, in that published order. On a dual-arm robot this is how a single
  /// arm is set on its own: name that arm's joints and the other arm is left untouched.
  /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.joint_names; native type string. At
  /// most 32 elements. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value
  /// and acquires no ROS resource.
  mut joint_names : Array[String]
  /// @brief Maximum contact torque, one entry per joint in joint_names, or one per covered joint when
  /// joint_names is empty. Valid range [0, tau_max]. Raising this increases the force the robot may exert
  /// on its surroundings. [Nm]
  /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Request.max_contact_torques; native type
  /// float64. At most 32 elements. Finite IEEE values; no implicit unit conversion. Storage belongs to
  /// the complete value and acquires no ROS resource.
  mut max_contact_torques : Array[Double]
}
pub fn Ros2Flexiv_msgsSrvSetMaxContactTorque_Request::new() -> Ros2Flexiv_msgsSrvSetMaxContactTorque_Request {
  {
    joint_names: [],
    max_contact_torques: [],
  }
}
pub(all) struct Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCodec::new() -> Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCodec {
  { ros_version: 2, native_type: "flexiv_msgs/srv/SetMaxContactTorque_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_cfbd80557b3c0529a3af3557b87908c05817d873401e3efb3c5ba8203af6b69e",
    min_wire_bytes: 8, max_wire_bytes: 8584 }
}
pub fn Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCodec::encode(_self : Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCodec, value
        : Ros2Flexiv_msgsSrvSetMaxContactTorque_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8584, error: 0 }
  write_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCodec::decode(_self : Ros2Flexiv_msgsSrvSetMaxContactTorque_RequestCodec, input
        : Bytes) -> Result[Ros2Flexiv_msgsSrvSetMaxContactTorque_Request, Int] {
  if input.length() < 8 || input.length() > 8584 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request(writer : BoundedWriter, value :
        Ros2Flexiv_msgsSrvSetMaxContactTorque_Request) -> Unit {
  let part0 = value.joint_names
  let count0 = part0.length()
  if count0 > 32 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.text(element, 256)
  }
  let part1 = value.max_contact_torques
  let count1 = part1.length()
  if count1 > 32 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
}
fn read_Ros2Flexiv_msgsSrvSetMaxContactTorque_Request(reader : BoundedReader) -> Ros2Flexiv_msgsSrvSetMaxContactTorque_Request {
  let part0 : Array[String] = []
  let count0 = reader.count(32, 4)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.text(256))
  }
  let part1 : Array[Double] = []
  let count1 = reader.count(32, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  { joint_names: part0, max_contact_torques: part1 }
}

/// @brief Own every original field of flexiv_msgs/srv/SetMaxContactTorque_Response.
/// @details Canonical extent 30..9374 bytes. Native type identity is independent; constructing a value
/// opens no resource.
pub(all) struct Ros2Flexiv_msgsSrvSetMaxContactTorque_Response {
  /// @brief Retain the complete original bool field.
  /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.success; native type bool. Scalar
  /// value. Storage belongs to the complete value and acquires no ROS resource.
  mut success : Bool
  /// @brief Operator-facing explanation of the outcome, naming the joint and the bound on a rejection
  /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.message; native type string. Scalar
  /// value. UTF-8 capacity 256 bytes; no embedded NUL. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut message : String
  /// @brief Every joint the interface covers and the values now held for it, unchanged from before on a
  /// rejection. Joints the request did not name keep the value they already had.
  /// @details Original flexiv_msgs/srv/SetMaxContactTorque_Response.setting; native type
  /// flexiv_msgs/msg/MaxContactTorque. Scalar value. Storage belongs to the complete value and acquires
  /// no ROS resource.
  mut setting : Ros2Flexiv_msgsMsgMaxContactTorque
}
pub fn Ros2Flexiv_msgsSrvSetMaxContactTorque_Response::new() -> Ros2Flexiv_msgsSrvSetMaxContactTorque_Response {
  {
    success: false,
    message: "",
    setting: Ros2Flexiv_msgsMsgMaxContactTorque::new(),
  }
}
pub(all) struct Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCodec::new() -> Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCodec {
  { ros_version: 2, native_type: "flexiv_msgs/srv/SetMaxContactTorque_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_602bd439ab984dd9d7f64786005dd4f5763d245121a09833f75cee914e9dd43c",
    min_wire_bytes: 30, max_wire_bytes: 9374 }
}
pub fn Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCodec::encode(_self : Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCodec,
        value : Ros2Flexiv_msgsSrvSetMaxContactTorque_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9374, error: 0 }
  write_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 30 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCodec::decode(_self : Ros2Flexiv_msgsSrvSetMaxContactTorque_ResponseCodec,
        input : Bytes) -> Result[Ros2Flexiv_msgsSrvSetMaxContactTorque_Response, Int] {
  if input.length() < 30 || input.length() > 9374 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response(writer : BoundedWriter, value :
        Ros2Flexiv_msgsSrvSetMaxContactTorque_Response) -> Unit {
  let part0 = value.success
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
  let part1 = value.message
  writer.text(part1, 256)
  let part2 = value.setting
  write_Ros2Flexiv_msgsMsgMaxContactTorque(writer, part2)
}
fn read_Ros2Flexiv_msgsSrvSetMaxContactTorque_Response(reader : BoundedReader) -> Ros2Flexiv_msgsSrvSetMaxContactTorque_Response {
  let part0 = reader.boolean()
  let part1 = reader.text(256)
  let part2 = read_Ros2Flexiv_msgsMsgMaxContactTorque(reader)
  { success: part0, message: part1, setting: part2 }
}

