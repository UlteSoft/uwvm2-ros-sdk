/// @file bounded_records.mbt
/// @brief Bound complete MoonBit field writes and reads for this catalog.
/// @details Shared trusted cursor template used by leju ros1_beta_packaged_ik. The adjacent generated catalog
/// supplies 17 complete record layouts. Writer and reader track independent bounded extents; malformed or partial
/// values must not be exposed. Encoding grants no native authority. This source still requires the pinned MoonBit
/// compiler and real guest tests.
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

pub(all) struct Ros1Motion_capture_ikArmHandPose {
  mut pos_xyz : Array[Double]
  mut quat_xyzw : Array[Double]
  mut elbow_pos_xyz : Array[Double]
  mut joint_angles : Array[Double]
}
pub fn Ros1Motion_capture_ikArmHandPose::new() -> Ros1Motion_capture_ikArmHandPose {
  {
    pos_xyz: Array::makei(3, fn(_) { 0.0 }),
    quat_xyzw: Array::makei(4, fn(_) { 0.0 }),
    elbow_pos_xyz: Array::makei(3, fn(_) { 0.0 }),
    joint_angles: Array::makei(7, fn(_) { 0.0 }),
  }
}
pub(all) struct Ros1Motion_capture_ikArmHandPoseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikArmHandPoseCodec::new() -> Ros1Motion_capture_ikArmHandPoseCodec {
  { ros_version: 1, native_type: "motion_capture_ik/armHandPose",
    native_identity: None,
    codec_identity: "UWVMROS1_7cc97650a6f0bedb8bdbc0cc534eb422e8585c69f5b0ae92b6d4f213a2d90f08",
    min_wire_bytes: 136, max_wire_bytes: 136 }
}
pub fn Ros1Motion_capture_ikArmHandPoseCodec::encode(
  _self : Ros1Motion_capture_ikArmHandPoseCodec,
  value : Ros1Motion_capture_ikArmHandPose
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros1Motion_capture_ikArmHandPose(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 136 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikArmHandPoseCodec::decode(
  _self : Ros1Motion_capture_ikArmHandPoseCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikArmHandPose, Int] {
  if input.length() < 136 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikArmHandPose(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikArmHandPose(writer : BoundedWriter, value : Ros1Motion_capture_ikArmHandPose) -> Unit {
  let part0 = value.pos_xyz
  let count0 = part0.length()
  if count0 != 3 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.quat_xyzw
  let count1 = part1.length()
  if count1 != 4 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.elbow_pos_xyz
  let count2 = part2.length()
  if count2 != 3 { writer.error = 22; return () }
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.joint_angles
  let count3 = part3.length()
  if count3 != 7 { writer.error = 22; return () }
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
}
fn read_Ros1Motion_capture_ikArmHandPose(reader : BoundedReader) -> Ros1Motion_capture_ikArmHandPose {
  let part0 : Array[Double] = []
  let count0 = 3
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = 4
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 : Array[Double] = []
  let count2 = 3
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = 7
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  { pos_xyz: part0, quat_xyzw: part1, elbow_pos_xyz: part2, joint_angles: part3 }
}

pub(all) struct Ros1Motion_capture_ikArmHandPoseFree {
  mut pos_xyz : Array[Double]
  mut quat_xyzw : Array[Double]
  mut elbow_pos_xyz : Array[Double]
  mut joint_angles : Array[Double]
}
pub fn Ros1Motion_capture_ikArmHandPoseFree::new() -> Ros1Motion_capture_ikArmHandPoseFree {
  {
    pos_xyz: Array::makei(3, fn(_) { 0.0 }),
    quat_xyzw: Array::makei(4, fn(_) { 0.0 }),
    elbow_pos_xyz: Array::makei(3, fn(_) { 0.0 }),
    joint_angles: [],
  }
}
pub(all) struct Ros1Motion_capture_ikArmHandPoseFreeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikArmHandPoseFreeCodec::new() -> Ros1Motion_capture_ikArmHandPoseFreeCodec {
  { ros_version: 1, native_type: "motion_capture_ik/armHandPoseFree",
    native_identity: None,
    codec_identity: "UWVMROS1_b46b274661ac382698a9bf1016ca647aecc41df8312020b740d73a87d2513caf",
    min_wire_bytes: 84, max_wire_bytes: 212 }
}
pub fn Ros1Motion_capture_ikArmHandPoseFreeCodec::encode(
  _self : Ros1Motion_capture_ikArmHandPoseFreeCodec,
  value : Ros1Motion_capture_ikArmHandPoseFree
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 212, error: 0 }
  write_Ros1Motion_capture_ikArmHandPoseFree(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 84 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikArmHandPoseFreeCodec::decode(
  _self : Ros1Motion_capture_ikArmHandPoseFreeCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikArmHandPoseFree, Int] {
  if input.length() < 84 || input.length() > 212 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikArmHandPoseFree(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikArmHandPoseFree(writer : BoundedWriter, value : Ros1Motion_capture_ikArmHandPoseFree) -> Unit {
  let part0 = value.pos_xyz
  let count0 = part0.length()
  if count0 != 3 { writer.error = 22; return () }
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.quat_xyzw
  let count1 = part1.length()
  if count1 != 4 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.elbow_pos_xyz
  let count2 = part2.length()
  if count2 != 3 { writer.error = 22; return () }
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.joint_angles
  let count3 = part3.length()
  if count3 > 16 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
}
fn read_Ros1Motion_capture_ikArmHandPoseFree(reader : BoundedReader) -> Ros1Motion_capture_ikArmHandPoseFree {
  let part0 : Array[Double] = []
  let count0 = 3
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = 4
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 : Array[Double] = []
  let count2 = 3
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 : Array[Double] = []
  let count3 = reader.count(16, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.float64())
  }
  { pos_xyz: part0, quat_xyzw: part1, elbow_pos_xyz: part2, joint_angles: part3 }
}

pub(all) struct Ros1Motion_capture_ikChangeArmCtrlModeRequest {
  mut control_mode : Bool
}
pub fn Ros1Motion_capture_ikChangeArmCtrlModeRequest::new() -> Ros1Motion_capture_ikChangeArmCtrlModeRequest {
  {
    control_mode: false,
  }
}
pub(all) struct Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec::new() -> Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec {
  { ros_version: 1, native_type: "motion_capture_ik/changeArmCtrlModeRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_b73d3ed01f402673124afd1c6677ced89b5b55d207a1e8c4ff1312941fc00bbd",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec::encode(
  _self : Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec,
  value : Ros1Motion_capture_ikChangeArmCtrlModeRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros1Motion_capture_ikChangeArmCtrlModeRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec::decode(
  _self : Ros1Motion_capture_ikChangeArmCtrlModeRequestCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikChangeArmCtrlModeRequest, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikChangeArmCtrlModeRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikChangeArmCtrlModeRequest(writer : BoundedWriter, value : Ros1Motion_capture_ikChangeArmCtrlModeRequest) -> Unit {
  let part0 = value.control_mode
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Motion_capture_ikChangeArmCtrlModeRequest(reader : BoundedReader) -> Ros1Motion_capture_ikChangeArmCtrlModeRequest {
  let part0 = reader.boolean()
  { control_mode: part0 }
}

pub(all) struct Ros1Motion_capture_ikChangeArmCtrlModeResponse {
  mut result : Bool
}
pub fn Ros1Motion_capture_ikChangeArmCtrlModeResponse::new() -> Ros1Motion_capture_ikChangeArmCtrlModeResponse {
  {
    result: false,
  }
}
pub(all) struct Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec::new(
  
) -> Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec {
  { ros_version: 1, native_type: "motion_capture_ik/changeArmCtrlModeResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_aee11b3bf042b1e989f7ed00d2f8e72821cfd8b6ee8232e14848ccf8ee754aac",
    min_wire_bytes: 1, max_wire_bytes: 1 }
}
pub fn Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec::encode(
  _self : Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec,
  value : Ros1Motion_capture_ikChangeArmCtrlModeResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1, error: 0 }
  write_Ros1Motion_capture_ikChangeArmCtrlModeResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 1 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec::decode(
  _self : Ros1Motion_capture_ikChangeArmCtrlModeResponseCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikChangeArmCtrlModeResponse, Int] {
  if input.length() < 1 || input.length() > 1 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikChangeArmCtrlModeResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikChangeArmCtrlModeResponse(writer : BoundedWriter, value : Ros1Motion_capture_ikChangeArmCtrlModeResponse) -> Unit {
  let part0 = value.result
  writer.unsigned(if part0 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Motion_capture_ikChangeArmCtrlModeResponse(reader : BoundedReader) -> Ros1Motion_capture_ikChangeArmCtrlModeResponse {
  let part0 = reader.boolean()
  { result: part0 }
}

pub(all) struct Ros1Motion_capture_ikHandPose {
  mut x : Double
  mut y : Double
  mut z : Double
  mut roll : Double
  mut pitch : Double
  mut yaw : Double
}
pub fn Ros1Motion_capture_ikHandPose::new() -> Ros1Motion_capture_ikHandPose {
  {
    x: 0.0,
    y: 0.0,
    z: 0.0,
    roll: 0.0,
    pitch: 0.0,
    yaw: 0.0,
  }
}
pub(all) struct Ros1Motion_capture_ikHandPoseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikHandPoseCodec::new() -> Ros1Motion_capture_ikHandPoseCodec {
  { ros_version: 1, native_type: "motion_capture_ik/handPose",
    native_identity: None,
    codec_identity: "UWVMROS1_dc924e15f38aa45188532c325292b2f9e3827f3dfa94ff946e30aa51f4fbee5f",
    min_wire_bytes: 48, max_wire_bytes: 48 }
}
pub fn Ros1Motion_capture_ikHandPoseCodec::encode(
  _self : Ros1Motion_capture_ikHandPoseCodec,
  value : Ros1Motion_capture_ikHandPose
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 48, error: 0 }
  write_Ros1Motion_capture_ikHandPose(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 48 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikHandPoseCodec::decode(
  _self : Ros1Motion_capture_ikHandPoseCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikHandPose, Int] {
  if input.length() < 48 || input.length() > 48 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikHandPose(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikHandPose(writer : BoundedWriter, value : Ros1Motion_capture_ikHandPose) -> Unit {
  let part0 = value.x
  writer.float64(part0)
  let part1 = value.y
  writer.float64(part1)
  let part2 = value.z
  writer.float64(part2)
  let part3 = value.roll
  writer.float64(part3)
  let part4 = value.pitch
  writer.float64(part4)
  let part5 = value.yaw
  writer.float64(part5)
}
fn read_Ros1Motion_capture_ikHandPose(reader : BoundedReader) -> Ros1Motion_capture_ikHandPose {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  let part5 = reader.float64()
  { x: part0, y: part1, z: part2, roll: part3, pitch: part4, yaw: part5 }
}

pub(all) struct Ros1Motion_capture_ikIkSolveError {
  mut ik_type : String
  mut left_pose_error : Ros1Motion_capture_ikHandPose
  mut right_pose_error : Ros1Motion_capture_ikHandPose
}
pub fn Ros1Motion_capture_ikIkSolveError::new() -> Ros1Motion_capture_ikIkSolveError {
  {
    ik_type: "",
    left_pose_error: Ros1Motion_capture_ikHandPose::new(),
    right_pose_error: Ros1Motion_capture_ikHandPose::new(),
  }
}
pub(all) struct Ros1Motion_capture_ikIkSolveErrorCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikIkSolveErrorCodec::new() -> Ros1Motion_capture_ikIkSolveErrorCodec {
  { ros_version: 1, native_type: "motion_capture_ik/ikSolveError",
    native_identity: None,
    codec_identity: "UWVMROS1_a20039cf8bf301a7ef643884130619c2ceb96c1c91ed15482dd6f582917e1e94",
    min_wire_bytes: 100, max_wire_bytes: 356 }
}
pub fn Ros1Motion_capture_ikIkSolveErrorCodec::encode(
  _self : Ros1Motion_capture_ikIkSolveErrorCodec,
  value : Ros1Motion_capture_ikIkSolveError
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 356, error: 0 }
  write_Ros1Motion_capture_ikIkSolveError(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 100 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikIkSolveErrorCodec::decode(
  _self : Ros1Motion_capture_ikIkSolveErrorCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikIkSolveError, Int] {
  if input.length() < 100 || input.length() > 356 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikIkSolveError(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikIkSolveError(writer : BoundedWriter, value : Ros1Motion_capture_ikIkSolveError) -> Unit {
  let part0 = value.ik_type
  writer.text(part0, 256)
  let part1 = value.left_pose_error
  write_Ros1Motion_capture_ikHandPose(writer, part1)
  let part2 = value.right_pose_error
  write_Ros1Motion_capture_ikHandPose(writer, part2)
}
fn read_Ros1Motion_capture_ikIkSolveError(reader : BoundedReader) -> Ros1Motion_capture_ikIkSolveError {
  let part0 = reader.text(256)
  let part1 = read_Ros1Motion_capture_ikHandPose(reader)
  let part2 = read_Ros1Motion_capture_ikHandPose(reader)
  { ik_type: part0, left_pose_error: part1, right_pose_error: part2 }
}

pub(all) struct Ros1Motion_capture_ikIkSolveParam {
  mut major_optimality_tol : Double
  mut major_feasibility_tol : Double
  mut minor_feasibility_tol : Double
  mut major_iterations_limit : Double
  mut oritation_constraint_tol : Double
  mut pos_constraint_tol : Double
  mut pos_cost_weight : Double
}
pub fn Ros1Motion_capture_ikIkSolveParam::new() -> Ros1Motion_capture_ikIkSolveParam {
  {
    major_optimality_tol: 0.0,
    major_feasibility_tol: 0.0,
    minor_feasibility_tol: 0.0,
    major_iterations_limit: 0.0,
    oritation_constraint_tol: 0.0,
    pos_constraint_tol: 0.0,
    pos_cost_weight: 0.0,
  }
}
pub(all) struct Ros1Motion_capture_ikIkSolveParamCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikIkSolveParamCodec::new() -> Ros1Motion_capture_ikIkSolveParamCodec {
  { ros_version: 1, native_type: "motion_capture_ik/ikSolveParam",
    native_identity: None,
    codec_identity: "UWVMROS1_8058ba64ed6070b821470b5560062e78f2ef0fa09169e7a249b584d2d158d981",
    min_wire_bytes: 56, max_wire_bytes: 56 }
}
pub fn Ros1Motion_capture_ikIkSolveParamCodec::encode(
  _self : Ros1Motion_capture_ikIkSolveParamCodec,
  value : Ros1Motion_capture_ikIkSolveParam
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 56, error: 0 }
  write_Ros1Motion_capture_ikIkSolveParam(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 56 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikIkSolveParamCodec::decode(
  _self : Ros1Motion_capture_ikIkSolveParamCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikIkSolveParam, Int] {
  if input.length() < 56 || input.length() > 56 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikIkSolveParam(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikIkSolveParam(writer : BoundedWriter, value : Ros1Motion_capture_ikIkSolveParam) -> Unit {
  let part0 = value.major_optimality_tol
  writer.float64(part0)
  let part1 = value.major_feasibility_tol
  writer.float64(part1)
  let part2 = value.minor_feasibility_tol
  writer.float64(part2)
  let part3 = value.major_iterations_limit
  writer.float64(part3)
  let part4 = value.oritation_constraint_tol
  writer.float64(part4)
  let part5 = value.pos_constraint_tol
  writer.float64(part5)
  let part6 = value.pos_cost_weight
  writer.float64(part6)
}
fn read_Ros1Motion_capture_ikIkSolveParam(reader : BoundedReader) -> Ros1Motion_capture_ikIkSolveParam {
  let part0 = reader.float64()
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  let part5 = reader.float64()
  let part6 = reader.float64()
  {
    major_optimality_tol: part0,
    major_feasibility_tol: part1,
    minor_feasibility_tol: part2,
    major_iterations_limit: part3,
    oritation_constraint_tol: part4,
    pos_constraint_tol: part5,
    pos_cost_weight: part6
  }
}

pub(all) struct Ros1Motion_capture_ikRecordArmHandPose {
  mut left_pose : Ros1Motion_capture_ikArmHandPose
  mut right_pose : Ros1Motion_capture_ikArmHandPose
}
pub fn Ros1Motion_capture_ikRecordArmHandPose::new() -> Ros1Motion_capture_ikRecordArmHandPose {
  {
    left_pose: Ros1Motion_capture_ikArmHandPose::new(),
    right_pose: Ros1Motion_capture_ikArmHandPose::new(),
  }
}
pub(all) struct Ros1Motion_capture_ikRecordArmHandPoseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikRecordArmHandPoseCodec::new() -> Ros1Motion_capture_ikRecordArmHandPoseCodec {
  { ros_version: 1, native_type: "motion_capture_ik/recordArmHandPose",
    native_identity: None,
    codec_identity: "UWVMROS1_815baf88f4e7fdf82316c06aa2baacbc2f30160c53eb73de10dfcbc1ecda2b4a",
    min_wire_bytes: 272, max_wire_bytes: 272 }
}
pub fn Ros1Motion_capture_ikRecordArmHandPoseCodec::encode(
  _self : Ros1Motion_capture_ikRecordArmHandPoseCodec,
  value : Ros1Motion_capture_ikRecordArmHandPose
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 272, error: 0 }
  write_Ros1Motion_capture_ikRecordArmHandPose(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 272 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikRecordArmHandPoseCodec::decode(
  _self : Ros1Motion_capture_ikRecordArmHandPoseCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikRecordArmHandPose, Int] {
  if input.length() < 272 || input.length() > 272 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikRecordArmHandPose(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikRecordArmHandPose(writer : BoundedWriter, value : Ros1Motion_capture_ikRecordArmHandPose) -> Unit {
  let part0 = value.left_pose
  write_Ros1Motion_capture_ikArmHandPose(writer, part0)
  let part1 = value.right_pose
  write_Ros1Motion_capture_ikArmHandPose(writer, part1)
}
fn read_Ros1Motion_capture_ikRecordArmHandPose(reader : BoundedReader) -> Ros1Motion_capture_ikRecordArmHandPose {
  let part0 = read_Ros1Motion_capture_ikArmHandPose(reader)
  let part1 = read_Ros1Motion_capture_ikArmHandPose(reader)
  { left_pose: part0, right_pose: part1 }
}

pub(all) struct Ros1Motion_capture_ikRecordArmHandPoseFree {
  mut left_pose : Ros1Motion_capture_ikArmHandPoseFree
  mut right_pose : Ros1Motion_capture_ikArmHandPoseFree
}
pub fn Ros1Motion_capture_ikRecordArmHandPoseFree::new() -> Ros1Motion_capture_ikRecordArmHandPoseFree {
  {
    left_pose: Ros1Motion_capture_ikArmHandPoseFree::new(),
    right_pose: Ros1Motion_capture_ikArmHandPoseFree::new(),
  }
}
pub(all) struct Ros1Motion_capture_ikRecordArmHandPoseFreeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikRecordArmHandPoseFreeCodec::new() -> Ros1Motion_capture_ikRecordArmHandPoseFreeCodec {
  { ros_version: 1, native_type: "motion_capture_ik/recordArmHandPoseFree",
    native_identity: None,
    codec_identity: "UWVMROS1_895dcfe228b573faa0911f4c5ca89094cae4497c06b57ba9b827356e62071811",
    min_wire_bytes: 168, max_wire_bytes: 424 }
}
pub fn Ros1Motion_capture_ikRecordArmHandPoseFreeCodec::encode(
  _self : Ros1Motion_capture_ikRecordArmHandPoseFreeCodec,
  value : Ros1Motion_capture_ikRecordArmHandPoseFree
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 424, error: 0 }
  write_Ros1Motion_capture_ikRecordArmHandPoseFree(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 168 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikRecordArmHandPoseFreeCodec::decode(
  _self : Ros1Motion_capture_ikRecordArmHandPoseFreeCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikRecordArmHandPoseFree, Int] {
  if input.length() < 168 || input.length() > 424 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikRecordArmHandPoseFree(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikRecordArmHandPoseFree(writer : BoundedWriter, value : Ros1Motion_capture_ikRecordArmHandPoseFree) -> Unit {
  let part0 = value.left_pose
  write_Ros1Motion_capture_ikArmHandPoseFree(writer, part0)
  let part1 = value.right_pose
  write_Ros1Motion_capture_ikArmHandPoseFree(writer, part1)
}
fn read_Ros1Motion_capture_ikRecordArmHandPoseFree(reader : BoundedReader) -> Ros1Motion_capture_ikRecordArmHandPoseFree {
  let part0 = read_Ros1Motion_capture_ikArmHandPoseFree(reader)
  let part1 = read_Ros1Motion_capture_ikArmHandPoseFree(reader)
  { left_pose: part0, right_pose: part1 }
}

pub(all) struct Ros1Motion_capture_ikRobotArmQVVD {
  mut q : Array[Double]
  mut v : Array[Double]
  mut vd : Array[Double]
}
pub fn Ros1Motion_capture_ikRobotArmQVVD::new() -> Ros1Motion_capture_ikRobotArmQVVD {
  {
    q: [],
    v: [],
    vd: [],
  }
}
pub(all) struct Ros1Motion_capture_ikRobotArmQVVDCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikRobotArmQVVDCodec::new() -> Ros1Motion_capture_ikRobotArmQVVDCodec {
  { ros_version: 1, native_type: "motion_capture_ik/robotArmQVVD",
    native_identity: None,
    codec_identity: "UWVMROS1_c5cfc8e6be023981b9b846a4e676e456a407479a9428f4fbe43e1af9df17fbbb",
    min_wire_bytes: 12, max_wire_bytes: 396 }
}
pub fn Ros1Motion_capture_ikRobotArmQVVDCodec::encode(
  _self : Ros1Motion_capture_ikRobotArmQVVDCodec,
  value : Ros1Motion_capture_ikRobotArmQVVD
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 396, error: 0 }
  write_Ros1Motion_capture_ikRobotArmQVVD(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikRobotArmQVVDCodec::decode(
  _self : Ros1Motion_capture_ikRobotArmQVVDCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikRobotArmQVVD, Int] {
  if input.length() < 12 || input.length() > 396 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikRobotArmQVVD(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikRobotArmQVVD(writer : BoundedWriter, value : Ros1Motion_capture_ikRobotArmQVVD) -> Unit {
  let part0 = value.q
  let count0 = part0.length()
  if count0 > 16 { writer.error = 22; return () }
  writer.unsigned(count0.to_uint64(), 4)
  for index = 0; index < count0; index = index + 1 {
    let element = part0[index]
    writer.float64(element)
  }
  let part1 = value.v
  let count1 = part1.length()
  if count1 > 16 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.vd
  let count2 = part2.length()
  if count2 > 16 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros1Motion_capture_ikRobotArmQVVD(reader : BoundedReader) -> Ros1Motion_capture_ikRobotArmQVVD {
  let part0 : Array[Double] = []
  let count0 = reader.count(16, 8)
  for index = 0; index < count0; index = index + 1 {
    part0.push(reader.float64())
  }
  let part1 : Array[Double] = []
  let count1 = reader.count(16, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  let part2 : Array[Double] = []
  let count2 = reader.count(16, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { q: part0, v: part1, vd: part2 }
}

pub(all) struct Ros1Time {
  mut sec : UInt
  mut nsec : UInt
}
pub fn Ros1Time::new() -> Ros1Time {
  {
    sec: 0U,
    nsec: 0U,
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
  let part0 = value.sec
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.nsec
  writer.unsigned(part1.to_uint64(), 4)
  if part1 >= 1000000000U { writer.error = 22 }
}
fn read_Ros1Time(reader : BoundedReader) -> Ros1Time {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(4).to_uint()
  if part1 >= 1000000000U { reader.error = 22 }
  { sec: part0, nsec: part1 }
}

pub(all) struct Ros1Std_msgsHeader {
  mut seq : UInt
  mut stamp : Ros1Time
  mut frame_id : String
}
pub fn Ros1Std_msgsHeader::new() -> Ros1Std_msgsHeader {
  {
    seq: 0U,
    stamp: Ros1Time::new(),
    frame_id: "",
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
    codec_identity: "UWVMROS1_5501bfd608c585c739688d051f0090563b3966c945bd84b7b2b3681fc61d47d7",
    min_wire_bytes: 16, max_wire_bytes: 272 }
}
pub fn Ros1Std_msgsHeaderCodec::encode(
  _self : Ros1Std_msgsHeaderCodec,
  value : Ros1Std_msgsHeader
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 272, error: 0 }
  write_Ros1Std_msgsHeader(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Std_msgsHeaderCodec::decode(
  _self : Ros1Std_msgsHeaderCodec,
  input : Bytes
) -> Result[Ros1Std_msgsHeader, Int] {
  if input.length() < 16 || input.length() > 272 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Std_msgsHeader(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Std_msgsHeader(writer : BoundedWriter, value : Ros1Std_msgsHeader) -> Unit {
  let part0 = value.seq
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.stamp
  write_Ros1Time(writer, part1)
  let part2 = value.frame_id
  writer.text(part2, 256)
}
fn read_Ros1Std_msgsHeader(reader : BoundedReader) -> Ros1Std_msgsHeader {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = read_Ros1Time(reader)
  let part2 = reader.text(256)
  { seq: part0, stamp: part1, frame_id: part2 }
}

pub(all) struct Ros1Motion_capture_ikRobotHandPosition {
  mut header : Ros1Std_msgsHeader
  mut left_hand_position : Array[Int]
  mut right_hand_position : Array[Int]
}
pub fn Ros1Motion_capture_ikRobotHandPosition::new() -> Ros1Motion_capture_ikRobotHandPosition {
  {
    header: Ros1Std_msgsHeader::new(),
    left_hand_position: [],
    right_hand_position: [],
  }
}
pub(all) struct Ros1Motion_capture_ikRobotHandPositionCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikRobotHandPositionCodec::new() -> Ros1Motion_capture_ikRobotHandPositionCodec {
  { ros_version: 1, native_type: "motion_capture_ik/robotHandPosition",
    native_identity: None,
    codec_identity: "UWVMROS1_16c4f8c128cde34eba2cf878bad0706916193ba3b54f02dcd1e4556128e3b0aa",
    min_wire_bytes: 24, max_wire_bytes: 792 }
}
pub fn Ros1Motion_capture_ikRobotHandPositionCodec::encode(
  _self : Ros1Motion_capture_ikRobotHandPositionCodec,
  value : Ros1Motion_capture_ikRobotHandPosition
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 792, error: 0 }
  write_Ros1Motion_capture_ikRobotHandPosition(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikRobotHandPositionCodec::decode(
  _self : Ros1Motion_capture_ikRobotHandPositionCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikRobotHandPosition, Int] {
  if input.length() < 24 || input.length() > 792 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikRobotHandPosition(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikRobotHandPosition(writer : BoundedWriter, value : Ros1Motion_capture_ikRobotHandPosition) -> Unit {
  let part0 = value.header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.left_hand_position
  let count1 = part1.length()
  if count1 > 256 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
  let part2 = value.right_hand_position
  let count2 = part2.length()
  if count2 > 256 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
}
fn read_Ros1Motion_capture_ikRobotHandPosition(reader : BoundedReader) -> Ros1Motion_capture_ikRobotHandPosition {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 : Array[Int] = []
  let count1 = reader.count(256, 1)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.unsigned(1).to_int())
  }
  let part2 : Array[Int] = []
  let count2 = reader.count(256, 1)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.unsigned(1).to_int())
  }
  { header: part0, left_hand_position: part1, right_hand_position: part2 }
}

pub(all) struct Ros1Motion_capture_ikTwoArmHandPose {
  mut header : Ros1Std_msgsHeader
  mut left_pose : Ros1Motion_capture_ikArmHandPose
  mut right_pose : Ros1Motion_capture_ikArmHandPose
}
pub fn Ros1Motion_capture_ikTwoArmHandPose::new() -> Ros1Motion_capture_ikTwoArmHandPose {
  {
    header: Ros1Std_msgsHeader::new(),
    left_pose: Ros1Motion_capture_ikArmHandPose::new(),
    right_pose: Ros1Motion_capture_ikArmHandPose::new(),
  }
}
pub(all) struct Ros1Motion_capture_ikTwoArmHandPoseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCodec::new() -> Ros1Motion_capture_ikTwoArmHandPoseCodec {
  { ros_version: 1, native_type: "motion_capture_ik/twoArmHandPose",
    native_identity: None,
    codec_identity: "UWVMROS1_12c87f2d727015a1dd0d5c344812528ae43bfd48168fdaa68bac006fe0bbc181",
    min_wire_bytes: 288, max_wire_bytes: 544 }
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCodec::encode(
  _self : Ros1Motion_capture_ikTwoArmHandPoseCodec,
  value : Ros1Motion_capture_ikTwoArmHandPose
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 544, error: 0 }
  write_Ros1Motion_capture_ikTwoArmHandPose(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 288 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCodec::decode(
  _self : Ros1Motion_capture_ikTwoArmHandPoseCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikTwoArmHandPose, Int] {
  if input.length() < 288 || input.length() > 544 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikTwoArmHandPose(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikTwoArmHandPose(writer : BoundedWriter, value : Ros1Motion_capture_ikTwoArmHandPose) -> Unit {
  let part0 = value.header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.left_pose
  write_Ros1Motion_capture_ikArmHandPose(writer, part1)
  let part2 = value.right_pose
  write_Ros1Motion_capture_ikArmHandPose(writer, part2)
}
fn read_Ros1Motion_capture_ikTwoArmHandPose(reader : BoundedReader) -> Ros1Motion_capture_ikTwoArmHandPose {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 = read_Ros1Motion_capture_ikArmHandPose(reader)
  let part2 = read_Ros1Motion_capture_ikArmHandPose(reader)
  { header: part0, left_pose: part1, right_pose: part2 }
}

pub(all) struct Ros1Motion_capture_ikTwoArmHandPoseCmd {
  mut hand_poses : Ros1Motion_capture_ikTwoArmHandPose
  mut use_custom_ik_param : Bool
  mut joint_angles_as_q0 : Bool
  mut ik_param : Ros1Motion_capture_ikIkSolveParam
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCmd::new() -> Ros1Motion_capture_ikTwoArmHandPoseCmd {
  {
    hand_poses: Ros1Motion_capture_ikTwoArmHandPose::new(),
    use_custom_ik_param: false,
    joint_angles_as_q0: false,
    ik_param: Ros1Motion_capture_ikIkSolveParam::new(),
  }
}
pub(all) struct Ros1Motion_capture_ikTwoArmHandPoseCmdCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCmdCodec::new() -> Ros1Motion_capture_ikTwoArmHandPoseCmdCodec {
  { ros_version: 1, native_type: "motion_capture_ik/twoArmHandPoseCmd",
    native_identity: None,
    codec_identity: "UWVMROS1_aa53de9aca25b5e5ad518a3e3fd6a36f9501d620da4fbd56721a15b693ce6acc",
    min_wire_bytes: 346, max_wire_bytes: 602 }
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCmdCodec::encode(
  _self : Ros1Motion_capture_ikTwoArmHandPoseCmdCodec,
  value : Ros1Motion_capture_ikTwoArmHandPoseCmd
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 602, error: 0 }
  write_Ros1Motion_capture_ikTwoArmHandPoseCmd(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 346 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCmdCodec::decode(
  _self : Ros1Motion_capture_ikTwoArmHandPoseCmdCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikTwoArmHandPoseCmd, Int] {
  if input.length() < 346 || input.length() > 602 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikTwoArmHandPoseCmd(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikTwoArmHandPoseCmd(writer : BoundedWriter, value : Ros1Motion_capture_ikTwoArmHandPoseCmd) -> Unit {
  let part0 = value.hand_poses
  write_Ros1Motion_capture_ikTwoArmHandPose(writer, part0)
  let part1 = value.use_custom_ik_param
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.joint_angles_as_q0
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.ik_param
  write_Ros1Motion_capture_ikIkSolveParam(writer, part3)
}
fn read_Ros1Motion_capture_ikTwoArmHandPoseCmd(reader : BoundedReader) -> Ros1Motion_capture_ikTwoArmHandPoseCmd {
  let part0 = read_Ros1Motion_capture_ikTwoArmHandPose(reader)
  let part1 = reader.boolean()
  let part2 = reader.boolean()
  let part3 = read_Ros1Motion_capture_ikIkSolveParam(reader)
  { hand_poses: part0, use_custom_ik_param: part1, joint_angles_as_q0: part2, ik_param: part3 }
}

pub(all) struct Ros1Motion_capture_ikTwoArmHandPoseFree {
  mut header : Ros1Std_msgsHeader
  mut left_pose : Ros1Motion_capture_ikArmHandPoseFree
  mut right_pose : Ros1Motion_capture_ikArmHandPoseFree
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseFree::new() -> Ros1Motion_capture_ikTwoArmHandPoseFree {
  {
    header: Ros1Std_msgsHeader::new(),
    left_pose: Ros1Motion_capture_ikArmHandPoseFree::new(),
    right_pose: Ros1Motion_capture_ikArmHandPoseFree::new(),
  }
}
pub(all) struct Ros1Motion_capture_ikTwoArmHandPoseFreeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseFreeCodec::new() -> Ros1Motion_capture_ikTwoArmHandPoseFreeCodec {
  { ros_version: 1, native_type: "motion_capture_ik/twoArmHandPoseFree",
    native_identity: None,
    codec_identity: "UWVMROS1_2b0e1aadf4405084b26888548a9c33bb9be57ec8f606122857a3b18c2a6f572c",
    min_wire_bytes: 184, max_wire_bytes: 696 }
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseFreeCodec::encode(
  _self : Ros1Motion_capture_ikTwoArmHandPoseFreeCodec,
  value : Ros1Motion_capture_ikTwoArmHandPoseFree
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 696, error: 0 }
  write_Ros1Motion_capture_ikTwoArmHandPoseFree(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 184 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseFreeCodec::decode(
  _self : Ros1Motion_capture_ikTwoArmHandPoseFreeCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikTwoArmHandPoseFree, Int] {
  if input.length() < 184 || input.length() > 696 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikTwoArmHandPoseFree(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikTwoArmHandPoseFree(writer : BoundedWriter, value : Ros1Motion_capture_ikTwoArmHandPoseFree) -> Unit {
  let part0 = value.header
  write_Ros1Std_msgsHeader(writer, part0)
  let part1 = value.left_pose
  write_Ros1Motion_capture_ikArmHandPoseFree(writer, part1)
  let part2 = value.right_pose
  write_Ros1Motion_capture_ikArmHandPoseFree(writer, part2)
}
fn read_Ros1Motion_capture_ikTwoArmHandPoseFree(reader : BoundedReader) -> Ros1Motion_capture_ikTwoArmHandPoseFree {
  let part0 = read_Ros1Std_msgsHeader(reader)
  let part1 = read_Ros1Motion_capture_ikArmHandPoseFree(reader)
  let part2 = read_Ros1Motion_capture_ikArmHandPoseFree(reader)
  { header: part0, left_pose: part1, right_pose: part2 }
}

pub(all) struct Ros1Motion_capture_ikTwoArmHandPoseCmdFree {
  mut hand_poses : Ros1Motion_capture_ikTwoArmHandPoseFree
  mut use_custom_ik_param : Bool
  mut joint_angles_as_q0 : Bool
  mut ik_param : Ros1Motion_capture_ikIkSolveParam
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCmdFree::new() -> Ros1Motion_capture_ikTwoArmHandPoseCmdFree {
  {
    hand_poses: Ros1Motion_capture_ikTwoArmHandPoseFree::new(),
    use_custom_ik_param: false,
    joint_angles_as_q0: false,
    ik_param: Ros1Motion_capture_ikIkSolveParam::new(),
  }
}
pub(all) struct Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec::new() -> Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec {
  { ros_version: 1, native_type: "motion_capture_ik/twoArmHandPoseCmdFree",
    native_identity: None,
    codec_identity: "UWVMROS1_425b1b5b856ec8d0d019829cf48728723199ff79e2b6fa5aaa3f045f1c4f8773",
    min_wire_bytes: 242, max_wire_bytes: 754 }
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec::encode(
  _self : Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec,
  value : Ros1Motion_capture_ikTwoArmHandPoseCmdFree
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 754, error: 0 }
  write_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 242 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec::decode(
  _self : Ros1Motion_capture_ikTwoArmHandPoseCmdFreeCodec,
  input : Bytes
) -> Result[Ros1Motion_capture_ikTwoArmHandPoseCmdFree, Int] {
  if input.length() < 242 || input.length() > 754 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(writer : BoundedWriter, value : Ros1Motion_capture_ikTwoArmHandPoseCmdFree) -> Unit {
  let part0 = value.hand_poses
  write_Ros1Motion_capture_ikTwoArmHandPoseFree(writer, part0)
  let part1 = value.use_custom_ik_param
  writer.unsigned(if part1 { 1UL } else { 0UL }, 1)
  let part2 = value.joint_angles_as_q0
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
  let part3 = value.ik_param
  write_Ros1Motion_capture_ikIkSolveParam(writer, part3)
}
fn read_Ros1Motion_capture_ikTwoArmHandPoseCmdFree(reader : BoundedReader) -> Ros1Motion_capture_ikTwoArmHandPoseCmdFree {
  let part0 = read_Ros1Motion_capture_ikTwoArmHandPoseFree(reader)
  let part1 = reader.boolean()
  let part2 = reader.boolean()
  let part3 = read_Ros1Motion_capture_ikIkSolveParam(reader)
  { hand_poses: part0, use_custom_ik_param: part1, joint_angles_as_q0: part2, ik_param: part3 }
}

