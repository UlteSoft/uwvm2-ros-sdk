# @file records.nim
# @brief Represent complete typed values and their bounded wire layout for nvidia-groot.
# @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
# while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros2Uwvm_groot_bridgeMsgRGBFrame* = object
  `key`*: string
  `shape`*: array[5,uint32]
  `pixels`*: seq[uint8]
const Ros2Uwvm_groot_bridgeMsgRGBFrameMaximumWireBytes* = 860
const Ros2Uwvm_groot_bridgeMsgRGBFrameCodecIdentity* =
    "UWVMROS1_db7172fe7a7f0672c907f31ca0b1cb6286b804246d62e0414ac4313ae1096364"
const Ros2Uwvm_groot_bridgeMsgRGBFrameNativeType* = "uwvm_groot_bridge/msg/RGBFrame"
const Ros2Uwvm_groot_bridgeMsgRGBFrameNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeMsgRGBFrame*(): Ros2Uwvm_groot_bridgeMsgRGBFrame =
  result.`key` = ""
  result.`shape` = [0,0,0,0,0]
  result.`pixels` = @[]
proc writeFields*(value: Ros2Uwvm_groot_bridgeMsgRGBFrame; w: var Writer) =
  putString(w,value.`key`,64)
  for e in value.`shape`:
    putInteger(w,e)
  if value.`pixels`.len > 768: fail(22)
  putInteger(w,uint32(value.`pixels`.len))
  for e in value.`pixels`:
    putInteger(w,e)
proc readRos2Uwvm_groot_bridgeMsgRGBFrame*(r: var Reader): Ros2Uwvm_groot_bridgeMsgRGBFrame =
  result = initRos2Uwvm_groot_bridgeMsgRGBFrame()
  result.`key` = getString(r,64)
  let count1 = 5
  for i in 0..<count1:
    result.`shape`[i] = getInteger(r,uint32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 768: fail(22)
  let count2 = int(rawcount2)
  result.`pixels` = newSeq[uint8](count2)
  for i in 0..<count2:
    result.`pixels`[i] = getInteger(r,uint8)
proc encode*(value: Ros2Uwvm_groot_bridgeMsgRGBFrame): seq[byte] =
  var w = initWriter(860)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeMsgRGBFrame*(b: seq[byte]): Ros2Uwvm_groot_bridgeMsgRGBFrame =
  var r = initReader(b,860)
  result = readRos2Uwvm_groot_bridgeMsgRGBFrame(r)
  finish(r)
type Ros2Uwvm_groot_bridgeMsgFloatTensor* = object
  `key`*: string
  `shape`*: array[3,uint32]
  `values`*: seq[float32]
const Ros2Uwvm_groot_bridgeMsgFloatTensorMaximumWireBytes* = 1364
const Ros2Uwvm_groot_bridgeMsgFloatTensorCodecIdentity* =
    "UWVMROS1_a091d322ab737d2a9415f889fb78a18df7aec6ce74cfab0dcd5bb2a61ae3abae"
const Ros2Uwvm_groot_bridgeMsgFloatTensorNativeType* = "uwvm_groot_bridge/msg/FloatTensor"
const Ros2Uwvm_groot_bridgeMsgFloatTensorNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeMsgFloatTensor*(): Ros2Uwvm_groot_bridgeMsgFloatTensor =
  result.`key` = ""
  result.`shape` = [0,0,0]
  result.`values` = @[]
proc writeFields*(value: Ros2Uwvm_groot_bridgeMsgFloatTensor; w: var Writer) =
  putString(w,value.`key`,64)
  for e in value.`shape`:
    putInteger(w,e)
  if value.`values`.len > 320: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat32(w,e)
proc readRos2Uwvm_groot_bridgeMsgFloatTensor*(r: var Reader): Ros2Uwvm_groot_bridgeMsgFloatTensor =
  result = initRos2Uwvm_groot_bridgeMsgFloatTensor()
  result.`key` = getString(r,64)
  let count1 = 3
  for i in 0..<count1:
    result.`shape`[i] = getInteger(r,uint32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 320: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float32](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat32(r)
proc encode*(value: Ros2Uwvm_groot_bridgeMsgFloatTensor): seq[byte] =
  var w = initWriter(1364)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeMsgFloatTensor*(b: seq[byte]): Ros2Uwvm_groot_bridgeMsgFloatTensor =
  var r = initReader(b,1364)
  result = readRos2Uwvm_groot_bridgeMsgFloatTensor(r)
  finish(r)
type Ros2Uwvm_groot_bridgeMsgTextSequence* = object
  `key`*: string
  `shape`*: array[2,uint32]
  `texts`*: seq[string]
const Ros2Uwvm_groot_bridgeMsgTextSequenceMaximumWireBytes* = 1120
const Ros2Uwvm_groot_bridgeMsgTextSequenceCodecIdentity* =
    "UWVMROS1_895be974f2560f0afff7614f5400ff7205e013cda269825a8443628621c8e80d"
const Ros2Uwvm_groot_bridgeMsgTextSequenceNativeType* = "uwvm_groot_bridge/msg/TextSequence"
const Ros2Uwvm_groot_bridgeMsgTextSequenceNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeMsgTextSequence*(): Ros2Uwvm_groot_bridgeMsgTextSequence =
  result.`key` = ""
  result.`shape` = [0,0]
  result.`texts` = @[]
proc writeFields*(value: Ros2Uwvm_groot_bridgeMsgTextSequence; w: var Writer) =
  putString(w,value.`key`,64)
  for e in value.`shape`:
    putInteger(w,e)
  if value.`texts`.len > 4: fail(22)
  putInteger(w,uint32(value.`texts`.len))
  for e in value.`texts`:
    putString(w,e,256)
proc readRos2Uwvm_groot_bridgeMsgTextSequence*(r: var Reader): Ros2Uwvm_groot_bridgeMsgTextSequence =
  result = initRos2Uwvm_groot_bridgeMsgTextSequence()
  result.`key` = getString(r,64)
  let count1 = 2
  for i in 0..<count1:
    result.`shape`[i] = getInteger(r,uint32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`texts` = newSeq[string](count2)
  for i in 0..<count2:
    result.`texts`[i] = getString(r,256)
proc encode*(value: Ros2Uwvm_groot_bridgeMsgTextSequence): seq[byte] =
  var w = initWriter(1120)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeMsgTextSequence*(b: seq[byte]): Ros2Uwvm_groot_bridgeMsgTextSequence =
  var r = initReader(b,1120)
  result = readRos2Uwvm_groot_bridgeMsgTextSequence(r)
  finish(r)
type Ros2Uwvm_groot_bridgeSrvInferAction_Request* = object
  `application_nonce`*: uint64
  `video`*: seq[Ros2Uwvm_groot_bridgeMsgRGBFrame]
  `state`*: seq[Ros2Uwvm_groot_bridgeMsgFloatTensor]
  `language`*: seq[Ros2Uwvm_groot_bridgeMsgTextSequence]
const Ros2Uwvm_groot_bridgeSrvInferAction_RequestMaximumWireBytes* = 10296
const Ros2Uwvm_groot_bridgeSrvInferAction_RequestCodecIdentity* =
    "UWVMROS1_78f85929fb8646e9a92f17cafa3e8296fde42aaf49a56b271531ebad869a0fa6"
const Ros2Uwvm_groot_bridgeSrvInferAction_RequestNativeType* = "uwvm_groot_bridge/srv/InferAction_Request"
const Ros2Uwvm_groot_bridgeSrvInferAction_RequestNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeSrvInferAction_Request*(): Ros2Uwvm_groot_bridgeSrvInferAction_Request =
  result.`application_nonce` = 0
  result.`video` = @[]
  result.`state` = @[]
  result.`language` = @[]
proc writeFields*(value: Ros2Uwvm_groot_bridgeSrvInferAction_Request; w: var Writer) =
  putInteger(w,value.`application_nonce`)
  if value.`video`.len > 3: fail(22)
  putInteger(w,uint32(value.`video`.len))
  for e in value.`video`:
    writeFields(e,w)
  if value.`state`.len > 4: fail(22)
  putInteger(w,uint32(value.`state`.len))
  for e in value.`state`:
    writeFields(e,w)
  if value.`language`.len > 2: fail(22)
  putInteger(w,uint32(value.`language`.len))
  for e in value.`language`:
    writeFields(e,w)
proc readRos2Uwvm_groot_bridgeSrvInferAction_Request*(r: var Reader): Ros2Uwvm_groot_bridgeSrvInferAction_Request =
  result = initRos2Uwvm_groot_bridgeSrvInferAction_Request()
  result.`application_nonce` = getInteger(r,uint64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 3: fail(22)
  let count1 = int(rawcount1)
  result.`video` = newSeq[Ros2Uwvm_groot_bridgeMsgRGBFrame](count1)
  for i in 0..<count1:
    result.`video`[i] = readRos2Uwvm_groot_bridgeMsgRGBFrame(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`state` = newSeq[Ros2Uwvm_groot_bridgeMsgFloatTensor](count2)
  for i in 0..<count2:
    result.`state`[i] = readRos2Uwvm_groot_bridgeMsgFloatTensor(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 2: fail(22)
  let count3 = int(rawcount3)
  result.`language` = newSeq[Ros2Uwvm_groot_bridgeMsgTextSequence](count3)
  for i in 0..<count3:
    result.`language`[i] = readRos2Uwvm_groot_bridgeMsgTextSequence(r)
proc encode*(value: Ros2Uwvm_groot_bridgeSrvInferAction_Request): seq[byte] =
  var w = initWriter(10296)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeSrvInferAction_Request*(b: seq[byte]): Ros2Uwvm_groot_bridgeSrvInferAction_Request =
  var r = initReader(b,10296)
  result = readRos2Uwvm_groot_bridgeSrvInferAction_Request(r)
  finish(r)
type Ros2Uwvm_groot_bridgeSrvInferAction_Response* = object
  `status`*: uint32
  `application_nonce`*: uint64
  `action`*: seq[Ros2Uwvm_groot_bridgeMsgFloatTensor]
  `info_is_empty`*: bool
const Ros2Uwvm_groot_bridgeSrvInferAction_ResponseMaximumWireBytes* = 10929
const Ros2Uwvm_groot_bridgeSrvInferAction_ResponseCodecIdentity* =
    "UWVMROS1_787281a2adea187ae43ff951a414dd7563b3e08318414e5199e1950b8143a3ce"
const Ros2Uwvm_groot_bridgeSrvInferAction_ResponseNativeType* = "uwvm_groot_bridge/srv/InferAction_Response"
const Ros2Uwvm_groot_bridgeSrvInferAction_ResponseNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeSrvInferAction_Response*(): Ros2Uwvm_groot_bridgeSrvInferAction_Response =
  result.`status` = 0
  result.`application_nonce` = 0
  result.`action` = @[]
  result.`info_is_empty` = false
proc writeFields*(value: Ros2Uwvm_groot_bridgeSrvInferAction_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putInteger(w,value.`application_nonce`)
  if value.`action`.len > 8: fail(22)
  putInteger(w,uint32(value.`action`.len))
  for e in value.`action`:
    writeFields(e,w)
  putBool(w,value.`info_is_empty`)
proc readRos2Uwvm_groot_bridgeSrvInferAction_Response*(r: var Reader): Ros2Uwvm_groot_bridgeSrvInferAction_Response =
  result = initRos2Uwvm_groot_bridgeSrvInferAction_Response()
  result.`status` = getInteger(r,uint32)
  result.`application_nonce` = getInteger(r,uint64)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`action` = newSeq[Ros2Uwvm_groot_bridgeMsgFloatTensor](count2)
  for i in 0..<count2:
    result.`action`[i] = readRos2Uwvm_groot_bridgeMsgFloatTensor(r)
  result.`info_is_empty` = getBool(r)
proc encode*(value: Ros2Uwvm_groot_bridgeSrvInferAction_Response): seq[byte] =
  var w = initWriter(10929)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeSrvInferAction_Response*(b: seq[byte]): Ros2Uwvm_groot_bridgeSrvInferAction_Response =
  var r = initReader(b,10929)
  result = readRos2Uwvm_groot_bridgeSrvInferAction_Response(r)
  finish(r)
type Ros2Uwvm_groot_bridgeMsgRGBDescriptor* = object
  `key`*: string
  `shape`*: array[5,uint32]
const Ros2Uwvm_groot_bridgeMsgRGBDescriptorMaximumWireBytes* = 88
const Ros2Uwvm_groot_bridgeMsgRGBDescriptorCodecIdentity* =
    "UWVMROS1_6daaa392f15643aa3afe5c101c6b649dc2e63f38b61d0332309a280fa9b48e40"
const Ros2Uwvm_groot_bridgeMsgRGBDescriptorNativeType* = "uwvm_groot_bridge/msg/RGBDescriptor"
const Ros2Uwvm_groot_bridgeMsgRGBDescriptorNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeMsgRGBDescriptor*(): Ros2Uwvm_groot_bridgeMsgRGBDescriptor =
  result.`key` = ""
  result.`shape` = [0,0,0,0,0]
proc writeFields*(value: Ros2Uwvm_groot_bridgeMsgRGBDescriptor; w: var Writer) =
  putString(w,value.`key`,64)
  for e in value.`shape`:
    putInteger(w,e)
proc readRos2Uwvm_groot_bridgeMsgRGBDescriptor*(r: var Reader): Ros2Uwvm_groot_bridgeMsgRGBDescriptor =
  result = initRos2Uwvm_groot_bridgeMsgRGBDescriptor()
  result.`key` = getString(r,64)
  let count1 = 5
  for i in 0..<count1:
    result.`shape`[i] = getInteger(r,uint32)
proc encode*(value: Ros2Uwvm_groot_bridgeMsgRGBDescriptor): seq[byte] =
  var w = initWriter(88)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeMsgRGBDescriptor*(b: seq[byte]): Ros2Uwvm_groot_bridgeMsgRGBDescriptor =
  var r = initReader(b,88)
  result = readRos2Uwvm_groot_bridgeMsgRGBDescriptor(r)
  finish(r)
type Ros2Uwvm_groot_bridgeSrvBeginObservation_Request* = object
  `observation_nonce`*: uint64
  `video`*: seq[Ros2Uwvm_groot_bridgeMsgRGBDescriptor]
const Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestMaximumWireBytes* = 276
const Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestCodecIdentity* =
    "UWVMROS1_76a3b103328e39f46ea2c1cf47dcc417c110771c2253c4defad577906d6d7ba2"
const Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestNativeType* = "uwvm_groot_bridge/srv/BeginObservation_Request"
const Ros2Uwvm_groot_bridgeSrvBeginObservation_RequestNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeSrvBeginObservation_Request*(): Ros2Uwvm_groot_bridgeSrvBeginObservation_Request =
  result.`observation_nonce` = 0
  result.`video` = @[]
proc writeFields*(value: Ros2Uwvm_groot_bridgeSrvBeginObservation_Request; w: var Writer) =
  putInteger(w,value.`observation_nonce`)
  if value.`video`.len > 3: fail(22)
  putInteger(w,uint32(value.`video`.len))
  for e in value.`video`:
    writeFields(e,w)
proc readRos2Uwvm_groot_bridgeSrvBeginObservation_Request*(
    r: var Reader): Ros2Uwvm_groot_bridgeSrvBeginObservation_Request =
  result = initRos2Uwvm_groot_bridgeSrvBeginObservation_Request()
  result.`observation_nonce` = getInteger(r,uint64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 3: fail(22)
  let count1 = int(rawcount1)
  result.`video` = newSeq[Ros2Uwvm_groot_bridgeMsgRGBDescriptor](count1)
  for i in 0..<count1:
    result.`video`[i] = readRos2Uwvm_groot_bridgeMsgRGBDescriptor(r)
proc encode*(value: Ros2Uwvm_groot_bridgeSrvBeginObservation_Request): seq[byte] =
  var w = initWriter(276)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeSrvBeginObservation_Request*(
    b: seq[byte]): Ros2Uwvm_groot_bridgeSrvBeginObservation_Request =
  var r = initReader(b,276)
  result = readRos2Uwvm_groot_bridgeSrvBeginObservation_Request(r)
  finish(r)
type Ros2Uwvm_groot_bridgeSrvBeginObservation_Response* = object
  `status`*: uint32
  `observation_nonce`*: uint64
const Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseMaximumWireBytes* = 12
const Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseCodecIdentity* =
    "UWVMROS1_53141471de18d5d46601139c6ef67c2381f4274030bb05559354f2aa07def049"
const Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseNativeType* = "uwvm_groot_bridge/srv/BeginObservation_Response"
const Ros2Uwvm_groot_bridgeSrvBeginObservation_ResponseNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeSrvBeginObservation_Response*(): Ros2Uwvm_groot_bridgeSrvBeginObservation_Response =
  result.`status` = 0
  result.`observation_nonce` = 0
proc writeFields*(value: Ros2Uwvm_groot_bridgeSrvBeginObservation_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putInteger(w,value.`observation_nonce`)
proc readRos2Uwvm_groot_bridgeSrvBeginObservation_Response*(
    r: var Reader): Ros2Uwvm_groot_bridgeSrvBeginObservation_Response =
  result = initRos2Uwvm_groot_bridgeSrvBeginObservation_Response()
  result.`status` = getInteger(r,uint32)
  result.`observation_nonce` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_groot_bridgeSrvBeginObservation_Response): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeSrvBeginObservation_Response*(
    b: seq[byte]): Ros2Uwvm_groot_bridgeSrvBeginObservation_Response =
  var r = initReader(b,12)
  result = readRos2Uwvm_groot_bridgeSrvBeginObservation_Response(r)
  finish(r)
type Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request* = object
  `observation_nonce`*: uint64
  `key`*: string
  `offset`*: uint32
  `pixels`*: seq[uint8]
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestMaximumWireBytes* = 852
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestCodecIdentity* =
    "UWVMROS1_c7fe45f5da3c73a4d556ad72e0ce5c40d70c531714f0ac841a791404b1048f2c"
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestNativeType* = "uwvm_groot_bridge/srv/WriteRGBChunk_Request"
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_RequestNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request*(): Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request =
  result.`observation_nonce` = 0
  result.`key` = ""
  result.`offset` = 0
  result.`pixels` = @[]
proc writeFields*(value: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request; w: var Writer) =
  putInteger(w,value.`observation_nonce`)
  putString(w,value.`key`,64)
  putInteger(w,value.`offset`)
  if value.`pixels`.len > 768: fail(22)
  putInteger(w,uint32(value.`pixels`.len))
  for e in value.`pixels`:
    putInteger(w,e)
proc readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request*(r: var Reader): Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request =
  result = initRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request()
  result.`observation_nonce` = getInteger(r,uint64)
  result.`key` = getString(r,64)
  result.`offset` = getInteger(r,uint32)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 768: fail(22)
  let count3 = int(rawcount3)
  result.`pixels` = newSeq[uint8](count3)
  for i in 0..<count3:
    result.`pixels`[i] = getInteger(r,uint8)
proc encode*(value: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request): seq[byte] =
  var w = initWriter(852)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request*(b: seq[byte]): Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Request =
  var r = initReader(b,852)
  result = readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Request(r)
  finish(r)
type Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response* = object
  `status`*: uint32
  `observation_nonce`*: uint64
  `accepted_bytes`*: uint32
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseMaximumWireBytes* = 16
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseCodecIdentity* =
    "UWVMROS1_4c279e0701b59c05f0eb185c1990b4e6a0bb1550ca638b04b60b31143e11efba"
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseNativeType* = "uwvm_groot_bridge/srv/WriteRGBChunk_Response"
const Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_ResponseNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response*(): Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response =
  result.`status` = 0
  result.`observation_nonce` = 0
  result.`accepted_bytes` = 0
proc writeFields*(value: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putInteger(w,value.`observation_nonce`)
  putInteger(w,value.`accepted_bytes`)
proc readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response*(
    r: var Reader): Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response =
  result = initRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response()
  result.`status` = getInteger(r,uint32)
  result.`observation_nonce` = getInteger(r,uint64)
  result.`accepted_bytes` = getInteger(r,uint32)
proc encode*(value: Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response*(
    b: seq[byte]): Ros2Uwvm_groot_bridgeSrvWriteRGBChunk_Response =
  var r = initReader(b,16)
  result = readRos2Uwvm_groot_bridgeSrvWriteRGBChunk_Response(r)
  finish(r)
type Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request* = object
  `observation_nonce`*: uint64
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestMaximumWireBytes* = 8
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestCodecIdentity* =
    "UWVMROS1_dae7e73133b73414ed9d85bf3bf3bbc699f84976dbce9b12f68a5d710b3190c5"
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestNativeType* = "uwvm_groot_bridge/srv/ReleaseObservation_Request"
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_RequestNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeSrvReleaseObservation_Request*(): Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request =
  result.`observation_nonce` = 0
proc writeFields*(value: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request; w: var Writer) =
  putInteger(w,value.`observation_nonce`)
proc readRos2Uwvm_groot_bridgeSrvReleaseObservation_Request*(
    r: var Reader): Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request =
  result = initRos2Uwvm_groot_bridgeSrvReleaseObservation_Request()
  result.`observation_nonce` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Request*(
    b: seq[byte]): Ros2Uwvm_groot_bridgeSrvReleaseObservation_Request =
  var r = initReader(b,8)
  result = readRos2Uwvm_groot_bridgeSrvReleaseObservation_Request(r)
  finish(r)
type Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response* = object
  `status`*: uint32
  `observation_nonce`*: uint64
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseMaximumWireBytes* = 12
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseCodecIdentity* =
    "UWVMROS1_776da57c3952c647fc2c3f18855cb889747d84d6824222c3b8be267db1688d69"
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseNativeType* =
    "uwvm_groot_bridge/srv/ReleaseObservation_Response"
const Ros2Uwvm_groot_bridgeSrvReleaseObservation_ResponseNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeSrvReleaseObservation_Response*(): Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response =
  result.`status` = 0
  result.`observation_nonce` = 0
proc writeFields*(value: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putInteger(w,value.`observation_nonce`)
proc readRos2Uwvm_groot_bridgeSrvReleaseObservation_Response*(
    r: var Reader): Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response =
  result = initRos2Uwvm_groot_bridgeSrvReleaseObservation_Response()
  result.`status` = getInteger(r,uint32)
  result.`observation_nonce` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeSrvReleaseObservation_Response*(
    b: seq[byte]): Ros2Uwvm_groot_bridgeSrvReleaseObservation_Response =
  var r = initReader(b,12)
  result = readRos2Uwvm_groot_bridgeSrvReleaseObservation_Response(r)
  finish(r)
type Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request* = object
  `application_nonce`*: uint64
  `observation_nonce`*: uint64
  `state`*: seq[Ros2Uwvm_groot_bridgeMsgFloatTensor]
  `language`*: seq[Ros2Uwvm_groot_bridgeMsgTextSequence]
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestMaximumWireBytes* = 7720
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestCodecIdentity* =
    "UWVMROS1_fab202af4445441157f6ac5249ed0eeb3035f5c88c467fb363a2ef024a5c524d"
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestNativeType* =
    "uwvm_groot_bridge/srv/InferUploadedAction_Request"
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_RequestNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request*(): Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request =
  result.`application_nonce` = 0
  result.`observation_nonce` = 0
  result.`state` = @[]
  result.`language` = @[]
proc writeFields*(value: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request; w: var Writer) =
  putInteger(w,value.`application_nonce`)
  putInteger(w,value.`observation_nonce`)
  if value.`state`.len > 4: fail(22)
  putInteger(w,uint32(value.`state`.len))
  for e in value.`state`:
    writeFields(e,w)
  if value.`language`.len > 2: fail(22)
  putInteger(w,uint32(value.`language`.len))
  for e in value.`language`:
    writeFields(e,w)
proc readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request*(
    r: var Reader): Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request =
  result = initRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request()
  result.`application_nonce` = getInteger(r,uint64)
  result.`observation_nonce` = getInteger(r,uint64)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`state` = newSeq[Ros2Uwvm_groot_bridgeMsgFloatTensor](count2)
  for i in 0..<count2:
    result.`state`[i] = readRos2Uwvm_groot_bridgeMsgFloatTensor(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 2: fail(22)
  let count3 = int(rawcount3)
  result.`language` = newSeq[Ros2Uwvm_groot_bridgeMsgTextSequence](count3)
  for i in 0..<count3:
    result.`language`[i] = readRos2Uwvm_groot_bridgeMsgTextSequence(r)
proc encode*(value: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request): seq[byte] =
  var w = initWriter(7720)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request*(
    b: seq[byte]): Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Request =
  var r = initReader(b,7720)
  result = readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Request(r)
  finish(r)
type Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response* = object
  `status`*: uint32
  `application_nonce`*: uint64
  `action`*: seq[Ros2Uwvm_groot_bridgeMsgFloatTensor]
  `info_is_empty`*: bool
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseMaximumWireBytes* = 10929
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseCodecIdentity* =
    "UWVMROS1_b8ae8113a9cd0e2d51ffc78d81f45e047cc03282bb9e4b82dd3a2571be29d93e"
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseNativeType* =
    "uwvm_groot_bridge/srv/InferUploadedAction_Response"
const Ros2Uwvm_groot_bridgeSrvInferUploadedAction_ResponseNativeIdentity* = ""
proc initRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response*(): Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response =
  result.`status` = 0
  result.`application_nonce` = 0
  result.`action` = @[]
  result.`info_is_empty` = false
proc writeFields*(value: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putInteger(w,value.`application_nonce`)
  if value.`action`.len > 8: fail(22)
  putInteger(w,uint32(value.`action`.len))
  for e in value.`action`:
    writeFields(e,w)
  putBool(w,value.`info_is_empty`)
proc readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response*(
    r: var Reader): Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response =
  result = initRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response()
  result.`status` = getInteger(r,uint32)
  result.`application_nonce` = getInteger(r,uint64)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`action` = newSeq[Ros2Uwvm_groot_bridgeMsgFloatTensor](count2)
  for i in 0..<count2:
    result.`action`[i] = readRos2Uwvm_groot_bridgeMsgFloatTensor(r)
  result.`info_is_empty` = getBool(r)
proc encode*(value: Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response): seq[byte] =
  var w = initWriter(10929)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response*(
    b: seq[byte]): Ros2Uwvm_groot_bridgeSrvInferUploadedAction_Response =
  var r = initReader(b,10929)
  result = readRos2Uwvm_groot_bridgeSrvInferUploadedAction_Response(r)
  finish(r)
