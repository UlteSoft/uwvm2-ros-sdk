/// @file bounded_records.mbt
/// @brief Bound complete MoonBit field writes and reads for this catalog.
/// @details Shared trusted cursor template used by fourier ros1_aurora_bridge_v1. The adjacent generated catalog
/// supplies 51 complete record layouts. Writer and reader track independent bounded extents; malformed or partial
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

pub(all) struct Ros1Uwvm_fourier_bridgeMotionRecipe {
  mut move_type : Int
  mut group : String
  mut position : Array[Double]
  mut has_velocity : Bool
  mut velocity : Array[Double]
  mut expected_velocity : Int
}
pub fn Ros1Uwvm_fourier_bridgeMotionRecipe::new() -> Ros1Uwvm_fourier_bridgeMotionRecipe {
  {
    move_type: 0,
    group: "",
    position: [],
    has_velocity: false,
    velocity: [],
    expected_velocity: 0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeMotionRecipeCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeMotionRecipeCodec::new() -> Ros1Uwvm_fourier_bridgeMotionRecipeCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/MotionRecipe",
    native_identity: None,
    codec_identity: "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a",
    min_wire_bytes: 18, max_wire_bytes: 1170 }
}
pub fn Ros1Uwvm_fourier_bridgeMotionRecipeCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeMotionRecipeCodec,
  value : Ros1Uwvm_fourier_bridgeMotionRecipe
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1170, error: 0 }
  write_Ros1Uwvm_fourier_bridgeMotionRecipe(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 18 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeMotionRecipeCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeMotionRecipeCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeMotionRecipe, Int] {
  if input.length() < 18 || input.length() > 1170 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeMotionRecipe(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeMotionRecipe(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeMotionRecipe) -> Unit {
  let part0 = value.move_type
  if part0 < 0 || part0 > 255 { writer.error = 22 }
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 255UL, 1)
  let part1 = value.group
  writer.text(part1, 128)
  let part2 = value.position
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.has_velocity
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
  let part4 = value.velocity
  let count4 = part4.length()
  if count4 > 64 { writer.error = 22; return () }
  writer.unsigned(count4.to_uint64(), 4)
  for index = 0; index < count4; index = index + 1 {
    let element = part4[index]
    writer.float64(element)
  }
  let part5 = value.expected_velocity
  writer.unsigned(part5.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Uwvm_fourier_bridgeMotionRecipe(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeMotionRecipe {
  let part0 = reader.unsigned(1).to_int()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  let part3 = reader.boolean()
  let part4 : Array[Double] = []
  let count4 = reader.count(64, 8)
  for index = 0; index < count4; index = index + 1 {
    part4.push(reader.float64())
  }
  let part5 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { move_type: part0, group: part1, position: part2, has_velocity: part3, velocity: part4, expected_velocity: part5 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeExecuteMoveRequest {
  mut sequence : UInt64
  mut moves : Array[Ros1Uwvm_fourier_bridgeMotionRecipe]
}
pub fn Ros1Uwvm_fourier_bridgeExecuteMoveRequest::new() -> Ros1Uwvm_fourier_bridgeExecuteMoveRequest {
  {
    sequence: 0UL,
    moves: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec::new() -> Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/ExecuteMoveRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b",
    min_wire_bytes: 12, max_wire_bytes: 9372 }
}
pub fn Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec,
  value : Ros1Uwvm_fourier_bridgeExecuteMoveRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 9372, error: 0 }
  write_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeExecuteMoveRequest, Int] {
  if input.length() < 12 || input.length() > 9372 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeExecuteMoveRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.moves
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros1Uwvm_fourier_bridgeMotionRecipe(writer, element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeExecuteMoveRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeExecuteMoveRequest {
  let part0 = reader.unsigned(8)
  let part1 : Array[Ros1Uwvm_fourier_bridgeMotionRecipe] = []
  let count1 = reader.count(8, 18)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros1Uwvm_fourier_bridgeMotionRecipe(reader))
  }
  { sequence: part0, moves: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeExecuteMoveResponse {
  mut status : UInt
  mut error : String
}
pub fn Ros1Uwvm_fourier_bridgeExecuteMoveResponse::new() -> Ros1Uwvm_fourier_bridgeExecuteMoveResponse {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec::new() -> Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/ExecuteMoveResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec,
  value : Ros1Uwvm_fourier_bridgeExecuteMoveResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeExecuteMoveResponse, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeExecuteMoveResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeExecuteMoveResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeExecuteMoveResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetBaseDataRequest {
  mut sequence : UInt64
  mut key : String
}
pub fn Ros1Uwvm_fourier_bridgeGetBaseDataRequest::new() -> Ros1Uwvm_fourier_bridgeGetBaseDataRequest {
  {
    sequence: 0UL,
    key: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec::new() -> Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetBaseDataRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetBaseDataRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetBaseDataRequest, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetBaseDataRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.key
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeGetBaseDataRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetBaseDataRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  { sequence: part0, key: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetBaseDataResponse {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros1Uwvm_fourier_bridgeGetBaseDataResponse::new() -> Ros1Uwvm_fourier_bridgeGetBaseDataResponse {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec::new() -> Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetBaseDataResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetBaseDataResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetBaseDataResponse, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetBaseDataResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeGetBaseDataResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetBaseDataResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetCartesianStateRequest {
  mut sequence : UInt64
  mut group : String
  mut key : String
}
pub fn Ros1Uwvm_fourier_bridgeGetCartesianStateRequest::new() -> Ros1Uwvm_fourier_bridgeGetCartesianStateRequest {
  {
    sequence: 0UL,
    group: "",
    key: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetCartesianStateRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae",
    min_wire_bytes: 16, max_wire_bytes: 272 }
}
pub fn Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetCartesianStateRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 272, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetCartesianStateRequest, Int] {
  if input.length() < 16 || input.length() > 272 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetCartesianStateRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.group
  writer.text(part1, 128)
  let part2 = value.key
  writer.text(part2, 128)
}
fn read_Ros1Uwvm_fourier_bridgeGetCartesianStateRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetCartesianStateRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { sequence: part0, group: part1, key: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetCartesianStateResponse {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros1Uwvm_fourier_bridgeGetCartesianStateResponse::new() -> Ros1Uwvm_fourier_bridgeGetCartesianStateResponse {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetCartesianStateResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetCartesianStateResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetCartesianStateResponse, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetCartesianStateResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeGetCartesianStateResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetCartesianStateResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetContactDataRequest {
  mut sequence : UInt64
  mut key : String
}
pub fn Ros1Uwvm_fourier_bridgeGetContactDataRequest::new() -> Ros1Uwvm_fourier_bridgeGetContactDataRequest {
  {
    sequence: 0UL,
    key: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec::new() -> Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetContactDataRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetContactDataRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetContactDataRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetContactDataRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetContactDataRequest, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetContactDataRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetContactDataRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetContactDataRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.key
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeGetContactDataRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetContactDataRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  { sequence: part0, key: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetContactDataResponse {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros1Uwvm_fourier_bridgeGetContactDataResponse::new() -> Ros1Uwvm_fourier_bridgeGetContactDataResponse {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec::new() -> Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetContactDataResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetContactDataResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetContactDataResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetContactDataResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetContactDataResponse, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetContactDataResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetContactDataResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetContactDataResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeGetContactDataResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetContactDataResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetFsmNameRequest {
  mut sequence : UInt64
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmNameRequest::new() -> Ros1Uwvm_fourier_bridgeGetFsmNameRequest {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec::new() -> Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetFsmNameRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetFsmNameRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetFsmNameRequest, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetFsmNameRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros1Uwvm_fourier_bridgeGetFsmNameRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetFsmNameRequest {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetFsmNameResponse {
  mut status : UInt
  mut error : String
  mut value : String
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmNameResponse::new() -> Ros1Uwvm_fourier_bridgeGetFsmNameResponse {
  {
    status: 0U,
    error: "",
    value: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec::new() -> Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetFsmNameResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55",
    min_wire_bytes: 12, max_wire_bytes: 268 }
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetFsmNameResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 268, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetFsmNameResponse, Int] {
  if input.length() < 12 || input.length() > 268 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetFsmNameResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.text(part2, 128)
}
fn read_Ros1Uwvm_fourier_bridgeGetFsmNameResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetFsmNameResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetFsmStateRequest {
  mut sequence : UInt64
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmStateRequest::new() -> Ros1Uwvm_fourier_bridgeGetFsmStateRequest {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec::new() -> Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetFsmStateRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetFsmStateRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetFsmStateRequest, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetFsmStateRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros1Uwvm_fourier_bridgeGetFsmStateRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetFsmStateRequest {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetFsmStateResponse {
  mut status : UInt
  mut error : String
  mut value : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmStateResponse::new() -> Ros1Uwvm_fourier_bridgeGetFsmStateResponse {
  {
    status: 0U,
    error: "",
    value: 0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec::new() -> Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetFsmStateResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetFsmStateResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetFsmStateResponse, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetFsmStateResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Uwvm_fourier_bridgeGetFsmStateResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetFsmStateResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest {
  mut sequence : UInt64
  mut group : String
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest::new() -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest {
  {
    sequence: 0UL,
    group: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetGroupMotionStateRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.group
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  { sequence: part0, group: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse {
  mut status : UInt
  mut error : String
  mut value : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse::new() -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse {
  {
    status: 0U,
    error: "",
    value: 0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetGroupMotionStateResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest {
  mut sequence : UInt64
  mut group : String
  mut key : String
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest::new() -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest {
  {
    sequence: 0UL,
    group: "",
    key: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetGroupMotorCfgRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576",
    min_wire_bytes: 16, max_wire_bytes: 272 }
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 272, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest, Int] {
  if input.length() < 16 || input.length() > 272 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.group
  writer.text(part1, 128)
  let part2 = value.key
  writer.text(part2, 128)
}
fn read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { sequence: part0, group: part1, key: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse::new() -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetGroupMotorCfgResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupStateRequest {
  mut sequence : UInt64
  mut group : String
  mut key : String
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupStateRequest::new() -> Ros1Uwvm_fourier_bridgeGetGroupStateRequest {
  {
    sequence: 0UL,
    group: "",
    key: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec::new() -> Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetGroupStateRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc",
    min_wire_bytes: 16, max_wire_bytes: 272 }
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetGroupStateRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 272, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetGroupStateRequest, Int] {
  if input.length() < 16 || input.length() > 272 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetGroupStateRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.group
  writer.text(part1, 128)
  let part2 = value.key
  writer.text(part2, 128)
}
fn read_Ros1Uwvm_fourier_bridgeGetGroupStateRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetGroupStateRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { sequence: part0, group: part1, key: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupStateResponse {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupStateResponse::new() -> Ros1Uwvm_fourier_bridgeGetGroupStateResponse {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec::new() -> Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetGroupStateResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetGroupStateResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetGroupStateResponse, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetGroupStateResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeGetGroupStateResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetGroupStateResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetSnapshotRequest {
  mut sequence : UInt64
}
pub fn Ros1Uwvm_fourier_bridgeGetSnapshotRequest::new() -> Ros1Uwvm_fourier_bridgeGetSnapshotRequest {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec::new() -> Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetSnapshotRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetSnapshotRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetSnapshotRequest, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetSnapshotRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros1Uwvm_fourier_bridgeGetSnapshotRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetSnapshotRequest {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGroupState {
  mut group : String
  mut position : Array[Double]
  mut velocity : Array[Double]
  mut effort : Array[Double]
  mut motion_state : Int
}
pub fn Ros1Uwvm_fourier_bridgeGroupState::new() -> Ros1Uwvm_fourier_bridgeGroupState {
  {
    group: "",
    position: [],
    velocity: [],
    effort: [],
    motion_state: 0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGroupStateCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGroupStateCodec::new() -> Ros1Uwvm_fourier_bridgeGroupStateCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GroupState",
    native_identity: None,
    codec_identity: "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855",
    min_wire_bytes: 20, max_wire_bytes: 1684 }
}
pub fn Ros1Uwvm_fourier_bridgeGroupStateCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGroupStateCodec,
  value : Ros1Uwvm_fourier_bridgeGroupState
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1684, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGroupState(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGroupStateCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGroupStateCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGroupState, Int] {
  if input.length() < 20 || input.length() > 1684 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGroupState(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGroupState(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGroupState) -> Unit {
  let part0 = value.group
  writer.text(part0, 128)
  let part1 = value.position
  let count1 = part1.length()
  if count1 > 64 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
  let part2 = value.velocity
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
  let part3 = value.effort
  let count3 = part3.length()
  if count3 > 64 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    writer.float64(element)
  }
  let part4 = value.motion_state
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Uwvm_fourier_bridgeGroupState(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGroupState {
  let part0 = reader.text(128)
  let part1 : Array[Double] = []
  let count1 = reader.count(64, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
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
  let part4 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { group: part0, position: part1, velocity: part2, effort: part3, motion_state: part4 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeStatus {
  mut fsm_state : Int
  mut fsm_name : String
  mut upper_fsm_state : Int
  mut upper_fsm_name : String
  mut velocity_source : Int
  mut velocity_source_name : String
  mut stand_pose : Array[Double]
  mut groups : Array[Ros1Uwvm_fourier_bridgeGroupState]
}
pub fn Ros1Uwvm_fourier_bridgeStatus::new() -> Ros1Uwvm_fourier_bridgeStatus {
  {
    fsm_state: 0,
    fsm_name: "",
    upper_fsm_state: 0,
    upper_fsm_name: "",
    velocity_source: 0,
    velocity_source_name: "",
    stand_pose: [],
    groups: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeStatusCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeStatusCodec::new() -> Ros1Uwvm_fourier_bridgeStatusCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/Status",
    native_identity: None,
    codec_identity: "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e",
    min_wire_bytes: 32, max_wire_bytes: 14400 }
}
pub fn Ros1Uwvm_fourier_bridgeStatusCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeStatusCodec,
  value : Ros1Uwvm_fourier_bridgeStatus
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 14400, error: 0 }
  write_Ros1Uwvm_fourier_bridgeStatus(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeStatusCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeStatusCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeStatus, Int] {
  if input.length() < 32 || input.length() > 14400 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeStatus(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeStatus(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeStatus) -> Unit {
  let part0 = value.fsm_state
  writer.unsigned(part0.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part1 = value.fsm_name
  writer.text(part1, 128)
  let part2 = value.upper_fsm_state
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part3 = value.upper_fsm_name
  writer.text(part3, 128)
  let part4 = value.velocity_source
  writer.unsigned(part4.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
  let part5 = value.velocity_source_name
  writer.text(part5, 128)
  let part6 = value.stand_pose
  let count6 = part6.length()
  if count6 > 64 { writer.error = 22; return () }
  writer.unsigned(count6.to_uint64(), 4)
  for index = 0; index < count6; index = index + 1 {
    let element = part6[index]
    writer.float64(element)
  }
  let part7 = value.groups
  let count7 = part7.length()
  if count7 > 8 { writer.error = 22; return () }
  writer.unsigned(count7.to_uint64(), 4)
  for index = 0; index < count7; index = index + 1 {
    let element = part7[index]
    write_Ros1Uwvm_fourier_bridgeGroupState(writer, element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeStatus(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeStatus {
  let part0 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part3 = reader.text(128)
  let part4 = reader.unsigned(4).to_uint().reinterpret_as_int()
  let part5 = reader.text(128)
  let part6 : Array[Double] = []
  let count6 = reader.count(64, 8)
  for index = 0; index < count6; index = index + 1 {
    part6.push(reader.float64())
  }
  let part7 : Array[Ros1Uwvm_fourier_bridgeGroupState] = []
  let count7 = reader.count(8, 20)
  for index = 0; index < count7; index = index + 1 {
    part7.push(read_Ros1Uwvm_fourier_bridgeGroupState(reader))
  }
  {
    fsm_state: part0,
    fsm_name: part1,
    upper_fsm_state: part2,
    upper_fsm_name: part3,
    velocity_source: part4,
    velocity_source_name: part5,
    stand_pose: part6,
    groups: part7
  }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetSnapshotResponse {
  mut status : UInt
  mut error : String
  mut value : Ros1Uwvm_fourier_bridgeStatus
}
pub fn Ros1Uwvm_fourier_bridgeGetSnapshotResponse::new() -> Ros1Uwvm_fourier_bridgeGetSnapshotResponse {
  {
    status: 0U,
    error: "",
    value: Ros1Uwvm_fourier_bridgeStatus::new(),
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec::new() -> Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetSnapshotResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a",
    min_wire_bytes: 40, max_wire_bytes: 14536 }
}
pub fn Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetSnapshotResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 14536, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetSnapshotResponse, Int] {
  if input.length() < 40 || input.length() > 14536 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetSnapshotResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  write_Ros1Uwvm_fourier_bridgeStatus(writer, part2)
}
fn read_Ros1Uwvm_fourier_bridgeGetSnapshotResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetSnapshotResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = read_Ros1Uwvm_fourier_bridgeStatus(reader)
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetStandPoseRequest {
  mut sequence : UInt64
}
pub fn Ros1Uwvm_fourier_bridgeGetStandPoseRequest::new() -> Ros1Uwvm_fourier_bridgeGetStandPoseRequest {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec::new() -> Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetStandPoseRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetStandPoseRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetStandPoseRequest, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetStandPoseRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros1Uwvm_fourier_bridgeGetStandPoseRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetStandPoseRequest {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetStandPoseResponse {
  mut status : UInt
  mut error : String
  mut values : Array[Double]
}
pub fn Ros1Uwvm_fourier_bridgeGetStandPoseResponse::new() -> Ros1Uwvm_fourier_bridgeGetStandPoseResponse {
  {
    status: 0U,
    error: "",
    values: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec::new() -> Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetStandPoseResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d",
    min_wire_bytes: 12, max_wire_bytes: 652 }
}
pub fn Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetStandPoseResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 652, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetStandPoseResponse, Int] {
  if input.length() < 12 || input.length() > 652 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetStandPoseResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 64 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float64(element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeGetStandPoseResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetStandPoseResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 : Array[Double] = []
  let count2 = reader.count(64, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float64())
  }
  { status: part0, error: part1, values: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest {
  mut sequence : UInt64
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest::new() -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec::new() -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetUpperFsmNameRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse {
  mut status : UInt
  mut error : String
  mut value : String
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse::new() -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse {
  {
    status: 0U,
    error: "",
    value: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetUpperFsmNameResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe",
    min_wire_bytes: 12, max_wire_bytes: 268 }
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 268, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse, Int] {
  if input.length() < 12 || input.length() > 268 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.text(part2, 128)
}
fn read_Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest {
  mut sequence : UInt64
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest::new() -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetUpperFsmStateRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse {
  mut status : UInt
  mut error : String
  mut value : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse::new() -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse {
  {
    status: 0U,
    error: "",
    value: 0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetUpperFsmStateResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest {
  mut sequence : UInt64
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest::new() -> Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetVelocitySourceRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse {
  mut status : UInt
  mut error : String
  mut value : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse::new() -> Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse {
  {
    status: 0U,
    error: "",
    value: 0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetVelocitySourceResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60",
    min_wire_bytes: 12, max_wire_bytes: 140 }
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 140, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse, Int] {
  if input.length() < 12 || input.length() > 140 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.unsigned(part2.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest {
  mut sequence : UInt64
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest::new(
  
) -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest {
  {
    sequence: 0UL,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetVelocitySourceNameRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec,
  value : Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
}
fn read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest {
  let part0 = reader.unsigned(8)
  { sequence: part0 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
  mut status : UInt
  mut error : String
  mut value : String
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse::new(
  
) -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
  {
    status: 0U,
    error: "",
    value: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GetVelocitySourceNameResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b",
    min_wire_bytes: 12, max_wire_bytes: 268 }
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec,
  value : Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 268, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse, Int] {
  if input.length() < 12 || input.length() > 268 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.value
  writer.text(part2, 128)
}
fn read_Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.text(128)
  { status: part0, error: part1, value: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeGroupValues {
  mut group : String
  mut values : Array[Double]
}
pub fn Ros1Uwvm_fourier_bridgeGroupValues::new() -> Ros1Uwvm_fourier_bridgeGroupValues {
  {
    group: "",
    values: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeGroupValuesCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeGroupValuesCodec::new() -> Ros1Uwvm_fourier_bridgeGroupValuesCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/GroupValues",
    native_identity: None,
    codec_identity: "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c",
    min_wire_bytes: 8, max_wire_bytes: 648 }
}
pub fn Ros1Uwvm_fourier_bridgeGroupValuesCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeGroupValuesCodec,
  value : Ros1Uwvm_fourier_bridgeGroupValues
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 648, error: 0 }
  write_Ros1Uwvm_fourier_bridgeGroupValues(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeGroupValuesCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeGroupValuesCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeGroupValues, Int] {
  if input.length() < 8 || input.length() > 648 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeGroupValues(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeGroupValues(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeGroupValues) -> Unit {
  let part0 = value.group
  writer.text(part0, 128)
  let part1 = value.values
  let count1 = part1.length()
  if count1 > 64 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.float64(element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeGroupValues(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeGroupValues {
  let part0 = reader.text(128)
  let part1 : Array[Double] = []
  let count1 = reader.count(64, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.float64())
  }
  { group: part0, values: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetFsmStateRequest {
  mut sequence : UInt64
  mut state : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetFsmStateRequest::new() -> Ros1Uwvm_fourier_bridgeSetFsmStateRequest {
  {
    sequence: 0UL,
    state: 0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec::new() -> Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetFsmStateRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec,
  value : Ros1Uwvm_fourier_bridgeSetFsmStateRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetFsmStateRequest, Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetFsmStateRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.state
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Uwvm_fourier_bridgeSetFsmStateRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetFsmStateRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { sequence: part0, state: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetFsmStateResponse {
  mut status : UInt
  mut error : String
}
pub fn Ros1Uwvm_fourier_bridgeSetFsmStateResponse::new() -> Ros1Uwvm_fourier_bridgeSetFsmStateResponse {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec::new() -> Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetFsmStateResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec,
  value : Ros1Uwvm_fourier_bridgeSetFsmStateResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetFsmStateResponse, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetFsmStateResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeSetFsmStateResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetFsmStateResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetGroupCommandRequest {
  mut sequence : UInt64
  mut position : Array[Ros1Uwvm_fourier_bridgeGroupValues]
  mut velocity : Array[Ros1Uwvm_fourier_bridgeGroupValues]
  mut torque : Array[Ros1Uwvm_fourier_bridgeGroupValues]
}
pub fn Ros1Uwvm_fourier_bridgeSetGroupCommandRequest::new() -> Ros1Uwvm_fourier_bridgeSetGroupCommandRequest {
  {
    sequence: 0UL,
    position: [],
    velocity: [],
    torque: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec::new() -> Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetGroupCommandRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220",
    min_wire_bytes: 20, max_wire_bytes: 15572 }
}
pub fn Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec,
  value : Ros1Uwvm_fourier_bridgeSetGroupCommandRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 15572, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetGroupCommandRequest, Int] {
  if input.length() < 20 || input.length() > 15572 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetGroupCommandRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.position
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros1Uwvm_fourier_bridgeGroupValues(writer, element)
  }
  let part2 = value.velocity
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros1Uwvm_fourier_bridgeGroupValues(writer, element)
  }
  let part3 = value.torque
  let count3 = part3.length()
  if count3 > 8 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    write_Ros1Uwvm_fourier_bridgeGroupValues(writer, element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeSetGroupCommandRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetGroupCommandRequest {
  let part0 = reader.unsigned(8)
  let part1 : Array[Ros1Uwvm_fourier_bridgeGroupValues] = []
  let count1 = reader.count(8, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros1Uwvm_fourier_bridgeGroupValues(reader))
  }
  let part2 : Array[Ros1Uwvm_fourier_bridgeGroupValues] = []
  let count2 = reader.count(8, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros1Uwvm_fourier_bridgeGroupValues(reader))
  }
  let part3 : Array[Ros1Uwvm_fourier_bridgeGroupValues] = []
  let count3 = reader.count(8, 8)
  for index = 0; index < count3; index = index + 1 {
    part3.push(read_Ros1Uwvm_fourier_bridgeGroupValues(reader))
  }
  { sequence: part0, position: part1, velocity: part2, torque: part3 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetGroupCommandResponse {
  mut status : UInt
  mut error : String
}
pub fn Ros1Uwvm_fourier_bridgeSetGroupCommandResponse::new() -> Ros1Uwvm_fourier_bridgeSetGroupCommandResponse {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetGroupCommandResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec,
  value : Ros1Uwvm_fourier_bridgeSetGroupCommandResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetGroupCommandResponse, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetGroupCommandResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeSetGroupCommandResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetGroupCommandResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest {
  mut sequence : UInt64
  mut kp : Array[Ros1Uwvm_fourier_bridgeGroupValues]
  mut kd : Array[Ros1Uwvm_fourier_bridgeGroupValues]
}
pub fn Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest::new() -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest {
  {
    sequence: 0UL,
    kp: [],
    kd: [],
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec::new() -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetMotorCfgPdRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d",
    min_wire_bytes: 16, max_wire_bytes: 10384 }
}
pub fn Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec,
  value : Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 10384, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest, Int] {
  if input.length() < 16 || input.length() > 10384 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.kp
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros1Uwvm_fourier_bridgeGroupValues(writer, element)
  }
  let part2 = value.kd
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros1Uwvm_fourier_bridgeGroupValues(writer, element)
  }
}
fn read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest {
  let part0 = reader.unsigned(8)
  let part1 : Array[Ros1Uwvm_fourier_bridgeGroupValues] = []
  let count1 = reader.count(8, 8)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros1Uwvm_fourier_bridgeGroupValues(reader))
  }
  let part2 : Array[Ros1Uwvm_fourier_bridgeGroupValues] = []
  let count2 = reader.count(8, 8)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros1Uwvm_fourier_bridgeGroupValues(reader))
  }
  { sequence: part0, kp: part1, kd: part2 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse {
  mut status : UInt
  mut error : String
}
pub fn Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse::new() -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec::new() -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetMotorCfgPdResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec,
  value : Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetStandPoseRequest {
  mut sequence : UInt64
  mut delta_z : Double
  mut delta_pitch : Double
  mut delta_yaw : Double
}
pub fn Ros1Uwvm_fourier_bridgeSetStandPoseRequest::new() -> Ros1Uwvm_fourier_bridgeSetStandPoseRequest {
  {
    sequence: 0UL,
    delta_z: 0.0,
    delta_pitch: 0.0,
    delta_yaw: 0.0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec::new() -> Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetStandPoseRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed",
    min_wire_bytes: 32, max_wire_bytes: 32 }
}
pub fn Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec,
  value : Ros1Uwvm_fourier_bridgeSetStandPoseRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 32, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 32 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetStandPoseRequest, Int] {
  if input.length() < 32 || input.length() > 32 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetStandPoseRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.delta_z
  writer.float64(part1)
  let part2 = value.delta_pitch
  writer.float64(part2)
  let part3 = value.delta_yaw
  writer.float64(part3)
}
fn read_Ros1Uwvm_fourier_bridgeSetStandPoseRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetStandPoseRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  { sequence: part0, delta_z: part1, delta_pitch: part2, delta_yaw: part3 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetStandPoseResponse {
  mut status : UInt
  mut error : String
}
pub fn Ros1Uwvm_fourier_bridgeSetStandPoseResponse::new() -> Ros1Uwvm_fourier_bridgeSetStandPoseResponse {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec::new() -> Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetStandPoseResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec,
  value : Ros1Uwvm_fourier_bridgeSetStandPoseResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetStandPoseResponse, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetStandPoseResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeSetStandPoseResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetStandPoseResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest {
  mut sequence : UInt64
  mut state : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest::new() -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest {
  {
    sequence: 0UL,
    state: 0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetUpperFsmStateRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec,
  value : Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest, Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.state
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { sequence: part0, state: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse {
  mut status : UInt
  mut error : String
}
pub fn Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse::new() -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetUpperFsmStateResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec,
  value : Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetVelocityRequest {
  mut sequence : UInt64
  mut vx : Double
  mut vy : Double
  mut yaw : Double
  mut duration : Double
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocityRequest::new() -> Ros1Uwvm_fourier_bridgeSetVelocityRequest {
  {
    sequence: 0UL,
    vx: 0.0,
    vy: 0.0,
    yaw: 0.0,
    duration: 0.0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec::new() -> Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetVelocityRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d",
    min_wire_bytes: 40, max_wire_bytes: 40 }
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec,
  value : Ros1Uwvm_fourier_bridgeSetVelocityRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 40, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetVelocityRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetVelocityRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetVelocityRequest, Int] {
  if input.length() < 40 || input.length() > 40 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetVelocityRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetVelocityRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetVelocityRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.vx
  writer.float64(part1)
  let part2 = value.vy
  writer.float64(part2)
  let part3 = value.yaw
  writer.float64(part3)
  let part4 = value.duration
  writer.float64(part4)
}
fn read_Ros1Uwvm_fourier_bridgeSetVelocityRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetVelocityRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  { sequence: part0, vx: part1, vy: part2, yaw: part3, duration: part4 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetVelocityResponse {
  mut status : UInt
  mut error : String
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocityResponse::new() -> Ros1Uwvm_fourier_bridgeSetVelocityResponse {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec::new() -> Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetVelocityResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec,
  value : Ros1Uwvm_fourier_bridgeSetVelocityResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetVelocityResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetVelocityResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetVelocityResponse, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetVelocityResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetVelocityResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetVelocityResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeSetVelocityResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetVelocityResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest {
  mut sequence : UInt64
  mut source : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest::new() -> Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest {
  {
    sequence: 0UL,
    source: 0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetVelocitySourceRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec,
  value : Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest, Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.source
  writer.unsigned(part1.to_int64().reinterpret_as_uint64() & 4294967295UL, 4)
}
fn read_Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest {
  let part0 = reader.unsigned(8)
  let part1 = reader.unsigned(4).to_uint().reinterpret_as_int()
  { sequence: part0, source: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse {
  mut status : UInt
  mut error : String
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse::new() -> Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse {
  {
    status: 0U,
    error: "",
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/SetVelocitySourceResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be",
    min_wire_bytes: 8, max_wire_bytes: 136 }
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec,
  value : Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 136, error: 0 }
  write_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse, Int] {
  if input.length() < 8 || input.length() > 136 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
}
fn read_Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  { status: part0, error: part1 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeVelocityCommand {
  mut sequence : UInt64
  mut vx : Double
  mut vy : Double
  mut yaw : Double
  mut duration : Double
}
pub fn Ros1Uwvm_fourier_bridgeVelocityCommand::new() -> Ros1Uwvm_fourier_bridgeVelocityCommand {
  {
    sequence: 0UL,
    vx: 0.0,
    vy: 0.0,
    yaw: 0.0,
    duration: 0.0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeVelocityCommandCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeVelocityCommandCodec::new() -> Ros1Uwvm_fourier_bridgeVelocityCommandCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/VelocityCommand",
    native_identity: None,
    codec_identity: "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54",
    min_wire_bytes: 40, max_wire_bytes: 40 }
}
pub fn Ros1Uwvm_fourier_bridgeVelocityCommandCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeVelocityCommandCodec,
  value : Ros1Uwvm_fourier_bridgeVelocityCommand
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 40, error: 0 }
  write_Ros1Uwvm_fourier_bridgeVelocityCommand(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 40 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeVelocityCommandCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeVelocityCommandCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeVelocityCommand, Int] {
  if input.length() < 40 || input.length() > 40 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeVelocityCommand(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeVelocityCommand(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeVelocityCommand) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.vx
  writer.float64(part1)
  let part2 = value.vy
  writer.float64(part2)
  let part3 = value.yaw
  writer.float64(part3)
  let part4 = value.duration
  writer.float64(part4)
}
fn read_Ros1Uwvm_fourier_bridgeVelocityCommand(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeVelocityCommand {
  let part0 = reader.unsigned(8)
  let part1 = reader.float64()
  let part2 = reader.float64()
  let part3 = reader.float64()
  let part4 = reader.float64()
  { sequence: part0, vx: part1, vy: part2, yaw: part3, duration: part4 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest {
  mut sequence : UInt64
  mut groups : Array[String]
  mut timeout_seconds : Double
  mut poll_seconds : Double
}
pub fn Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest::new(
  
) -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest {
  {
    sequence: 0UL,
    groups: [],
    timeout_seconds: 0.0,
    poll_seconds: 0.0,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest",
    native_identity: None,
    codec_identity: "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33",
    min_wire_bytes: 28, max_wire_bytes: 1084 }
}
pub fn Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec,
  value : Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1084, error: 0 }
  write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest, Int] {
  if input.length() < 28 || input.length() > 1084 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest) -> Unit {
  let part0 = value.sequence
  writer.unsigned(part0, 8)
  let part1 = value.groups
  let count1 = part1.length()
  if count1 > 8 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.text(element, 128)
  }
  let part2 = value.timeout_seconds
  writer.float64(part2)
  let part3 = value.poll_seconds
  writer.float64(part3)
}
fn read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest {
  let part0 = reader.unsigned(8)
  let part1 : Array[String] = []
  let count1 = reader.count(8, 4)
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.text(128))
  }
  let part2 = reader.float64()
  let part3 = reader.float64()
  { sequence: part0, groups: part1, timeout_seconds: part2, poll_seconds: part3 }
}

pub(all) struct Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
  mut status : UInt
  mut error : String
  mut complete : Bool
}
pub fn Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse::new(
  
) -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
  {
    status: 0U,
    error: "",
    complete: false,
  }
}
pub(all) struct Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec::new(
  
) -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec {
  { ros_version: 1, native_type: "uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse",
    native_identity: None,
    codec_identity: "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8",
    min_wire_bytes: 9, max_wire_bytes: 137 }
}
pub fn Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec::encode(
  _self : Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec,
  value : Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse
) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 137, error: 0 }
  write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 9 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec::decode(
  _self : Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodec,
  input : Bytes
) -> Result[Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse, Int] {
  if input.length() < 9 || input.length() > 137 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(writer : BoundedWriter, value : Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.error
  writer.text(part1, 128)
  let part2 = value.complete
  writer.unsigned(if part2 { 1UL } else { 0UL }, 1)
}
fn read_Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(reader : BoundedReader) -> Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.text(128)
  let part2 = reader.boolean()
  { status: part0, error: part1, complete: part2 }
}

