// @file bounded_records.mbt
// @brief Represent complete typed values and their bounded wire layout for nvidia-groot.
// @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
// while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

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

pub(all) struct Ros2Uwvm_groot_bridgeMsgRGBFrame {
  mut key : String
  mut shape : Array[UInt]
  mut pixels : Array[Int]
}
pub fn Ros2Uwvm_groot_bridgeMsgRGBFrame::new() -> Ros2Uwvm_groot_bridgeMsgRGBFrame {
  {
    key: "",
    shape: Array::makei(5, fn(_) { 0U }),
    pixels: [],
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeMsgRGBFrameCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeMsgRGBFrameCodec::new() -> Ros2Uwvm_groot_bridgeMsgRGBFrameCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/msg/RGBFrame",
    native_identity: None,
    codec_identity: "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364",
    min_wire_bytes: 28, max_wire_bytes: 860 }
}
pub fn Ros2Uwvm_groot_bridgeMsgRGBFrameCodec::encode(_self : Ros2Uwvm_groot_bridgeMsgRGBFrameCodec,
    value : Ros2Uwvm_groot_bridgeMsgRGBFrame) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 860, error: 0 }
  write_Ros2Uwvm_groot_bridgeMsgRGBFrame(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 28 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeMsgRGBFrameCodec::decode(_self : Ros2Uwvm_groot_bridgeMsgRGBFrameCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeMsgRGBFrame, Int] {
  if input.length() < 28 || input.length() > 860 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeMsgRGBFrame(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeMsgRGBFrame(writer : BoundedWriter, value : Ros2Uwvm_groot_bridgeMsgRGBFrame) -> Unit {
  let part0 = value.key
  writer.text(part0, 64)
  let part1 = value.shape
  let count1 = part1.length()
  if count1 != 5 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.unsigned(element.to_uint64(), 4)
  }
  let part2 = value.pixels
  let count2 = part2.length()
  if count2 > 768 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
}
fn read_Ros2Uwvm_groot_bridgeMsgRGBFrame(reader : BoundedReader) -> Ros2Uwvm_groot_bridgeMsgRGBFrame {
  let part0 = reader.text(64)
  let part1 : Array[UInt] = []
  let count1 = 5
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.unsigned(4).to_uint())
  }
  let part2 : Array[Int] = []
  let count2 = reader.count(768, 1)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.unsigned(1).to_int())
  }
  { key: part0, shape: part1, pixels: part2 }
}

pub(all) struct Ros2Uwvm_groot_bridgeMsgFloatTensor {
  mut key : String
  mut shape : Array[UInt]
  mut values : Array[Float]
}
pub fn Ros2Uwvm_groot_bridgeMsgFloatTensor::new() -> Ros2Uwvm_groot_bridgeMsgFloatTensor {
  {
    key: "",
    shape: Array::makei(3, fn(_) { 0U }),
    values: [],
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeMsgFloatTensorCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeMsgFloatTensorCodec::new() -> Ros2Uwvm_groot_bridgeMsgFloatTensorCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/msg/FloatTensor",
    native_identity: None,
    codec_identity: "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae",
    min_wire_bytes: 20, max_wire_bytes: 1364 }
}
pub fn Ros2Uwvm_groot_bridgeMsgFloatTensorCodec::encode(_self : Ros2Uwvm_groot_bridgeMsgFloatTensorCodec,
    value : Ros2Uwvm_groot_bridgeMsgFloatTensor) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1364, error: 0 }
  write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeMsgFloatTensorCodec::decode(_self : Ros2Uwvm_groot_bridgeMsgFloatTensorCodec,
    input : Bytes) -> Result[Ros2Uwvm_groot_bridgeMsgFloatTensor, Int] {
  if input.length() < 20 || input.length() > 1364 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer : BoundedWriter, value : Ros2Uwvm_groot_bridgeMsgFloatTensor) ->
    Unit {
  let part0 = value.key
  writer.text(part0, 64)
  let part1 = value.shape
  let count1 = part1.length()
  if count1 != 3 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.unsigned(element.to_uint64(), 4)
  }
  let part2 = value.values
  let count2 = part2.length()
  if count2 > 320 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.float32(element)
  }
}
fn read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader : BoundedReader) -> Ros2Uwvm_groot_bridgeMsgFloatTensor {
  let part0 = reader.text(64)
  let part1 : Array[UInt] = []
  let count1 = 3
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.unsigned(4).to_uint())
  }
  let part2 : Array[Float] = []
  let count2 = reader.count(320, 4)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.float32())
  }
  { key: part0, shape: part1, values: part2 }
}

pub(all) struct Ros2Uwvm_groot_bridgeMsgTextSequence {
  mut key : String
  mut shape : Array[UInt]
  mut texts : Array[String]
}
pub fn Ros2Uwvm_groot_bridgeMsgTextSequence::new() -> Ros2Uwvm_groot_bridgeMsgTextSequence {
  {
    key: "",
    shape: Array::makei(2, fn(_) { 0U }),
    texts: [],
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeMsgTextSequenceCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeMsgTextSequenceCodec::new() -> Ros2Uwvm_groot_bridgeMsgTextSequenceCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/msg/TextSequence",
    native_identity: None,
    codec_identity: "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d",
    min_wire_bytes: 16, max_wire_bytes: 1120 }
}
pub fn Ros2Uwvm_groot_bridgeMsgTextSequenceCodec::encode(_self : Ros2Uwvm_groot_bridgeMsgTextSequenceCodec,
    value : Ros2Uwvm_groot_bridgeMsgTextSequence) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 1120, error: 0 }
  write_Ros2Uwvm_groot_bridgeMsgTextSequence(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeMsgTextSequenceCodec::decode(_self : Ros2Uwvm_groot_bridgeMsgTextSequenceCodec,
    input : Bytes) -> Result[Ros2Uwvm_groot_bridgeMsgTextSequence, Int] {
  if input.length() < 16 || input.length() > 1120 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeMsgTextSequence(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeMsgTextSequence(writer : BoundedWriter, value : Ros2Uwvm_groot_bridgeMsgTextSequence) ->
    Unit {
  let part0 = value.key
  writer.text(part0, 64)
  let part1 = value.shape
  let count1 = part1.length()
  if count1 != 2 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.unsigned(element.to_uint64(), 4)
  }
  let part2 = value.texts
  let count2 = part2.length()
  if count2 > 4 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    writer.text(element, 256)
  }
}
fn read_Ros2Uwvm_groot_bridgeMsgTextSequence(reader : BoundedReader) -> Ros2Uwvm_groot_bridgeMsgTextSequence {
  let part0 = reader.text(64)
  let part1 : Array[UInt] = []
  let count1 = 2
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.unsigned(4).to_uint())
  }
  let part2 : Array[String] = []
  let count2 = reader.count(4, 4)
  for index = 0; index < count2; index = index + 1 {
    part2.push(reader.text(256))
  }
  { key: part0, shape: part1, texts: part2 }
}

pub(all) struct Ros2Uwvm_groot_bridgeSrvInferAction_Request {
  mut application_nonce : UInt64
  mut video : Array[Ros2Uwvm_groot_bridgeMsgRGBFrame]
  mut state : Array[Ros2Uwvm_groot_bridgeMsgFloatTensor]
  mut language : Array[Ros2Uwvm_groot_bridgeMsgTextSequence]
}
pub fn Ros2Uwvm_groot_bridgeSrvInferAction_Request::new() -> Ros2Uwvm_groot_bridgeSrvInferAction_Request {
  {
    application_nonce: 0UL,
    video: [],
    state: [],
    language: [],
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec::new() -> Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/srv/InferAction_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6",
    min_wire_bytes: 20, max_wire_bytes: 10296 }
}
pub fn Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec::encode(
    _self : Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec, value : Ros2Uwvm_groot_bridgeSrvInferAction_Request) ->
    Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 10296, error: 0 }
  write_Ros2Uwvm_groot_bridgeSrvInferAction_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec::decode(
    _self : Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeSrvInferAction_Request, Int] {
  if input.length() < 20 || input.length() > 10296 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeSrvInferAction_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeSrvInferAction_Request(writer : BoundedWriter,
    value : Ros2Uwvm_groot_bridgeSrvInferAction_Request) -> Unit {
  let part0 = value.application_nonce
  writer.unsigned(part0, 8)
  let part1 = value.video
  let count1 = part1.length()
  if count1 > 3 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Uwvm_groot_bridgeMsgRGBFrame(writer, element)
  }
  let part2 = value.state
  let count2 = part2.length()
  if count2 > 4 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, element)
  }
  let part3 = value.language
  let count3 = part3.length()
  if count3 > 2 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    write_Ros2Uwvm_groot_bridgeMsgTextSequence(writer, element)
  }
}
fn read_Ros2Uwvm_groot_bridgeSrvInferAction_Request(reader : BoundedReader) ->
    Ros2Uwvm_groot_bridgeSrvInferAction_Request {
  let part0 = reader.unsigned(8)
  let part1 : Array[Ros2Uwvm_groot_bridgeMsgRGBFrame] = []
  let count1 = reader.count(3, 28)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Uwvm_groot_bridgeMsgRGBFrame(reader))
  }
  let part2 : Array[Ros2Uwvm_groot_bridgeMsgFloatTensor] = []
  let count2 = reader.count(4, 20)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader))
  }
  let part3 : Array[Ros2Uwvm_groot_bridgeMsgTextSequence] = []
  let count3 = reader.count(2, 16)
  for index = 0; index < count3; index = index + 1 {
    part3.push(read_Ros2Uwvm_groot_bridgeMsgTextSequence(reader))
  }
  { application_nonce: part0, video: part1, state: part2, language: part3 }
}

pub(all) struct Ros2Uwvm_groot_bridgeSrvInferAction_Response {
  mut status : UInt
  mut application_nonce : UInt64
  mut action : Array[Ros2Uwvm_groot_bridgeMsgFloatTensor]
  mut info_is_empty : Bool
}
pub fn Ros2Uwvm_groot_bridgeSrvInferAction_Response::new() -> Ros2Uwvm_groot_bridgeSrvInferAction_Response {
  {
    status: 0U,
    application_nonce: 0UL,
    action: [],
    info_is_empty: false,
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec::new() -> Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/srv/InferAction_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce",
    min_wire_bytes: 17, max_wire_bytes: 10929 }
}
pub fn Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec::encode(
    _self : Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec, value : Ros2Uwvm_groot_bridgeSrvInferAction_Response) ->
    Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 10929, error: 0 }
  write_Ros2Uwvm_groot_bridgeSrvInferAction_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec::decode(
    _self : Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeSrvInferAction_Response, Int] {
  if input.length() < 17 || input.length() > 10929 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeSrvInferAction_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeSrvInferAction_Response(writer : BoundedWriter,
    value : Ros2Uwvm_groot_bridgeSrvInferAction_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.application_nonce
  writer.unsigned(part1, 8)
  let part2 = value.action
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, element)
  }
  let part3 = value.info_is_empty
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Uwvm_groot_bridgeSrvInferAction_Response(reader : BoundedReader) ->
    Ros2Uwvm_groot_bridgeSrvInferAction_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(8)
  let part2 : Array[Ros2Uwvm_groot_bridgeMsgFloatTensor] = []
  let count2 = reader.count(8, 20)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader))
  }
  let part3 = reader.boolean()
  { status: part0, application_nonce: part1, action: part2, info_is_empty: part3 }
}

pub(all) struct Ros2Uwvm_groot_bridgeMsgRGBDescriptor {
  mut key : String
  mut shape : Array[UInt]
}
pub fn Ros2Uwvm_groot_bridgeMsgRGBDescriptor::new() -> Ros2Uwvm_groot_bridgeMsgRGBDescriptor {
  {
    key: "",
    shape: Array::makei(5, fn(_) { 0U }),
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec::new() -> Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/msg/RGBDescriptor",
    native_identity: None,
    codec_identity: "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40",
    min_wire_bytes: 24, max_wire_bytes: 88 }
}
pub fn Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec::encode(_self : Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec,
    value : Ros2Uwvm_groot_bridgeMsgRGBDescriptor) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 88, error: 0 }
  write_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec::decode(_self : Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodec,
    input : Bytes) -> Result[Ros2Uwvm_groot_bridgeMsgRGBDescriptor, Int] {
  if input.length() < 24 || input.length() > 88 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(writer : BoundedWriter, value : Ros2Uwvm_groot_bridgeMsgRGBDescriptor) ->
    Unit {
  let part0 = value.key
  writer.text(part0, 64)
  let part1 = value.shape
  let count1 = part1.length()
  if count1 != 5 { writer.error = 22; return () }
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    writer.unsigned(element.to_uint64(), 4)
  }
}
fn read_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(reader : BoundedReader) -> Ros2Uwvm_groot_bridgeMsgRGBDescriptor {
  let part0 = reader.text(64)
  let part1 : Array[UInt] = []
  let count1 = 5
  for index = 0; index < count1; index = index + 1 {
    part1.push(reader.unsigned(4).to_uint())
  }
  { key: part0, shape: part1 }
}

pub(all) struct Ros2Uwvm_groot_bridgeSrvBeginObservation_Request {
  mut observation_nonce : UInt64
  mut video : Array[Ros2Uwvm_groot_bridgeMsgRGBDescriptor]
}
pub fn Ros2Uwvm_groot_bridgeSrvBeginObservation_Request::new() -> Ros2Uwvm_groot_bridgeSrvBeginObservation_Request {
  {
    observation_nonce: 0UL,
    video: [],
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec::new() ->
    Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/srv/BeginObservation_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2",
    min_wire_bytes: 12, max_wire_bytes: 276 }
}
pub fn Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec::encode(
    _self : Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec,
    value : Ros2Uwvm_groot_bridgeSrvBeginObservation_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 276, error: 0 }
  write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec::decode(
    _self : Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeSrvBeginObservation_Request, Int] {
  if input.length() < 12 || input.length() > 276 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(writer : BoundedWriter,
    value : Ros2Uwvm_groot_bridgeSrvBeginObservation_Request) -> Unit {
  let part0 = value.observation_nonce
  writer.unsigned(part0, 8)
  let part1 = value.video
  let count1 = part1.length()
  if count1 > 3 { writer.error = 22; return () }
  writer.unsigned(count1.to_uint64(), 4)
  for index = 0; index < count1; index = index + 1 {
    let element = part1[index]
    write_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(writer, element)
  }
}
fn read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Request(reader : BoundedReader) ->
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Request {
  let part0 = reader.unsigned(8)
  let part1 : Array[Ros2Uwvm_groot_bridgeMsgRGBDescriptor] = []
  let count1 = reader.count(3, 24)
  for index = 0; index < count1; index = index + 1 {
    part1.push(read_Ros2Uwvm_groot_bridgeMsgRGBDescriptor(reader))
  }
  { observation_nonce: part0, video: part1 }
}

pub(all) struct Ros2Uwvm_groot_bridgeSrvBeginObservation_Response {
  mut status : UInt
  mut observation_nonce : UInt64
}
pub fn Ros2Uwvm_groot_bridgeSrvBeginObservation_Response::new() -> Ros2Uwvm_groot_bridgeSrvBeginObservation_Response {
  {
    status: 0U,
    observation_nonce: 0UL,
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec::new() ->
    Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/srv/BeginObservation_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec::encode(
    _self : Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec,
    value : Ros2Uwvm_groot_bridgeSrvBeginObservation_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec::decode(
    _self : Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeSrvBeginObservation_Response, Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(writer : BoundedWriter,
    value : Ros2Uwvm_groot_bridgeSrvBeginObservation_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.observation_nonce
  writer.unsigned(part1, 8)
}
fn read_Ros2Uwvm_groot_bridgeSrvBeginObservation_Response(reader : BoundedReader) ->
    Ros2Uwvm_groot_bridgeSrvBeginObservation_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(8)
  { status: part0, observation_nonce: part1 }
}

pub(all) struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request {
  mut observation_nonce : UInt64
  mut key : String
  mut offset : UInt
  mut pixels : Array[Int]
}
pub fn Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request::new() -> Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request {
  {
    observation_nonce: 0UL,
    key: "",
    offset: 0U,
    pixels: [],
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec::new() -> Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/srv/WriteRGBChunk_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c",
    min_wire_bytes: 20, max_wire_bytes: 852 }
}
pub fn Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec::encode(
    _self : Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec,
    value : Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 852, error: 0 }
  write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 20 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec::decode(
    _self : Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request, Int] {
  if input.length() < 20 || input.length() > 852 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(writer : BoundedWriter,
    value : Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request) -> Unit {
  let part0 = value.observation_nonce
  writer.unsigned(part0, 8)
  let part1 = value.key
  writer.text(part1, 64)
  let part2 = value.offset
  writer.unsigned(part2.to_uint64(), 4)
  let part3 = value.pixels
  let count3 = part3.length()
  if count3 > 768 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    if element < 0 || element > 255 { writer.error = 22 }
    writer.unsigned(element.to_int64().reinterpret_as_uint64() & 255UL, 1)
  }
}
fn read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(reader : BoundedReader) ->
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.text(64)
  let part2 = reader.unsigned(4).to_uint()
  let part3 : Array[Int] = []
  let count3 = reader.count(768, 1)
  for index = 0; index < count3; index = index + 1 {
    part3.push(reader.unsigned(1).to_int())
  }
  { observation_nonce: part0, key: part1, offset: part2, pixels: part3 }
}

pub(all) struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response {
  mut status : UInt
  mut observation_nonce : UInt64
  mut accepted_bytes : UInt
}
pub fn Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response::new() -> Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response {
  {
    status: 0U,
    observation_nonce: 0UL,
    accepted_bytes: 0U,
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec::new() ->
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/srv/WriteRGBChunk_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba",
    min_wire_bytes: 16, max_wire_bytes: 16 }
}
pub fn Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec::encode(
    _self : Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec,
    value : Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 16, error: 0 }
  write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 16 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec::decode(
    _self : Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response, Int] {
  if input.length() < 16 || input.length() > 16 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(writer : BoundedWriter,
    value : Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.observation_nonce
  writer.unsigned(part1, 8)
  let part2 = value.accepted_bytes
  writer.unsigned(part2.to_uint64(), 4)
}
fn read_Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(reader : BoundedReader) ->
    Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(8)
  let part2 = reader.unsigned(4).to_uint()
  { status: part0, observation_nonce: part1, accepted_bytes: part2 }
}

pub(all) struct Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request {
  mut observation_nonce : UInt64
}
pub fn Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request::new() -> Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request {
  {
    observation_nonce: 0UL,
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec::new() ->
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/srv/ReleaseObservation_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5",
    min_wire_bytes: 8, max_wire_bytes: 8 }
}
pub fn Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec::encode(
    _self : Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec,
    value : Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 8, error: 0 }
  write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 8 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec::decode(
    _self : Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request, Int] {
  if input.length() < 8 || input.length() > 8 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(writer : BoundedWriter,
    value : Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request) -> Unit {
  let part0 = value.observation_nonce
  writer.unsigned(part0, 8)
}
fn read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request(reader : BoundedReader) ->
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request {
  let part0 = reader.unsigned(8)
  { observation_nonce: part0 }
}

pub(all) struct Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response {
  mut status : UInt
  mut observation_nonce : UInt64
}
pub fn Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response::new() ->
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response {
  {
    status: 0U,
    observation_nonce: 0UL,
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec::new() ->
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/srv/ReleaseObservation_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69",
    min_wire_bytes: 12, max_wire_bytes: 12 }
}
pub fn Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec::encode(
    _self : Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec,
    value : Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 12, error: 0 }
  write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 12 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec::decode(
    _self : Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response, Int] {
  if input.length() < 12 || input.length() > 12 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(writer : BoundedWriter,
    value : Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.observation_nonce
  writer.unsigned(part1, 8)
}
fn read_Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response(reader : BoundedReader) ->
    Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(8)
  { status: part0, observation_nonce: part1 }
}

pub(all) struct Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request {
  mut application_nonce : UInt64
  mut observation_nonce : UInt64
  mut state : Array[Ros2Uwvm_groot_bridgeMsgFloatTensor]
  mut language : Array[Ros2Uwvm_groot_bridgeMsgTextSequence]
}
pub fn Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request::new() ->
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request {
  {
    application_nonce: 0UL,
    observation_nonce: 0UL,
    state: [],
    language: [],
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec::new() ->
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/srv/InferUploadedAction_Request",
    native_identity: None,
    codec_identity: "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d",
    min_wire_bytes: 24, max_wire_bytes: 7720 }
}
pub fn Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec::encode(
    _self : Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec,
    value : Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 7720, error: 0 }
  write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 24 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec::decode(
    _self : Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request, Int] {
  if input.length() < 24 || input.length() > 7720 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(writer : BoundedWriter,
    value : Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request) -> Unit {
  let part0 = value.application_nonce
  writer.unsigned(part0, 8)
  let part1 = value.observation_nonce
  writer.unsigned(part1, 8)
  let part2 = value.state
  let count2 = part2.length()
  if count2 > 4 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, element)
  }
  let part3 = value.language
  let count3 = part3.length()
  if count3 > 2 { writer.error = 22; return () }
  writer.unsigned(count3.to_uint64(), 4)
  for index = 0; index < count3; index = index + 1 {
    let element = part3[index]
    write_Ros2Uwvm_groot_bridgeMsgTextSequence(writer, element)
  }
}
fn read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request(reader : BoundedReader) ->
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request {
  let part0 = reader.unsigned(8)
  let part1 = reader.unsigned(8)
  let part2 : Array[Ros2Uwvm_groot_bridgeMsgFloatTensor] = []
  let count2 = reader.count(4, 20)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader))
  }
  let part3 : Array[Ros2Uwvm_groot_bridgeMsgTextSequence] = []
  let count3 = reader.count(2, 16)
  for index = 0; index < count3; index = index + 1 {
    part3.push(read_Ros2Uwvm_groot_bridgeMsgTextSequence(reader))
  }
  { application_nonce: part0, observation_nonce: part1, state: part2, language: part3 }
}

pub(all) struct Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response {
  mut status : UInt
  mut application_nonce : UInt64
  mut action : Array[Ros2Uwvm_groot_bridgeMsgFloatTensor]
  mut info_is_empty : Bool
}
pub fn Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response::new() ->
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response {
  {
    status: 0U,
    application_nonce: 0UL,
    action: [],
    info_is_empty: false,
  }
}
pub(all) struct Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec {
  ros_version : Int
  native_type : String
  native_identity : String?
  codec_identity : String
  min_wire_bytes : Int
  max_wire_bytes : Int
}
pub fn Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec::new() ->
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec {
  { ros_version: 2, native_type: "uwvm_groot_bridge/srv/InferUploadedAction_Response",
    native_identity: None,
    codec_identity: "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e",
    min_wire_bytes: 17, max_wire_bytes: 10929 }
}
pub fn Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec::encode(
    _self : Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec,
    value : Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response) -> Result[Bytes, Int] {
  let writer : BoundedWriter = { bytes: [], maximum: 10929, error: 0 }
  write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(writer, value)
  if writer.error != 0 { return Err(writer.error) }
  if writer.bytes.length() < 17 { return Err(22) }
  Ok(Bytes::makei(writer.bytes.length(), fn(index) { writer.bytes[index] }))
}
pub fn Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec::decode(
    _self : Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodec, input : Bytes) ->
    Result[Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response, Int] {
  if input.length() < 17 || input.length() > 10929 { return Err(22) }
  let reader : BoundedReader = { bytes: input.copy(), position: 0, error: 0 }
  let value = read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(reader)
  if reader.error != 0 || reader.position != reader.bytes.length() { Err(22) } else { Ok(value) }
}
fn write_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(writer : BoundedWriter,
    value : Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response) -> Unit {
  let part0 = value.status
  writer.unsigned(part0.to_uint64(), 4)
  let part1 = value.application_nonce
  writer.unsigned(part1, 8)
  let part2 = value.action
  let count2 = part2.length()
  if count2 > 8 { writer.error = 22; return () }
  writer.unsigned(count2.to_uint64(), 4)
  for index = 0; index < count2; index = index + 1 {
    let element = part2[index]
    write_Ros2Uwvm_groot_bridgeMsgFloatTensor(writer, element)
  }
  let part3 = value.info_is_empty
  writer.unsigned(if part3 { 1UL } else { 0UL }, 1)
}
fn read_Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response(reader : BoundedReader) ->
    Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response {
  let part0 = reader.unsigned(4).to_uint()
  let part1 = reader.unsigned(8)
  let part2 : Array[Ros2Uwvm_groot_bridgeMsgFloatTensor] = []
  let count2 = reader.count(8, 20)
  for index = 0; index < count2; index = index + 1 {
    part2.push(read_Ros2Uwvm_groot_bridgeMsgFloatTensor(reader))
  }
  let part3 = reader.boolean()
  { status: part0, application_nonce: part1, action: part2, info_is_empty: part3 }
}

