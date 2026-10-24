# @file records.nim
# @brief Full fourier nim codecs and original record metadata.
# @details Complete fourier ros1_aurora_bridge_v1 values in nim. 51 original records retain 138 fields and 28
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/fourier/en_US/catalog/.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros1Uwvm_fourier_bridgeMotionRecipe* = object
  `move_type`*: uint8
  `group`*: string
  `position`*: seq[float64]
  `has_velocity`*: bool
  `velocity`*: seq[float64]
  `expected_velocity`*: int32
const Ros1Uwvm_fourier_bridgeMotionRecipeMaximumWireBytes* = 1170
const Ros1Uwvm_fourier_bridgeMotionRecipeCodecIdentity* = "UWVMROS1_f154f5af7297a77af5c7ab98bc78c54cb0163760dfe7b1eadedb02318cfbfd8a"
const Ros1Uwvm_fourier_bridgeMotionRecipeNativeType* = "uwvm_fourier_bridge/MotionRecipe"
const Ros1Uwvm_fourier_bridgeMotionRecipeNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeMotionRecipe*(): Ros1Uwvm_fourier_bridgeMotionRecipe =
  result.`move_type` = 0
  result.`group` = ""
  result.`position` = @[]
  result.`has_velocity` = false
  result.`velocity` = @[]
  result.`expected_velocity` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeMotionRecipe; w: var Writer) =
  putInteger(w,value.`move_type`)
  putString(w,value.`group`,128)
  if value.`position`.len > 64: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    putFloat64(w,e)
  putBool(w,value.`has_velocity`)
  if value.`velocity`.len > 64: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    putFloat64(w,e)
  putInteger(w,value.`expected_velocity`)
proc readRos1Uwvm_fourier_bridgeMotionRecipe*(r: var Reader): Ros1Uwvm_fourier_bridgeMotionRecipe =
  result = initRos1Uwvm_fourier_bridgeMotionRecipe()
  result.`move_type` = getInteger(r,uint8)
  result.`group` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`position` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`position`[i] = getFloat64(r)
  result.`has_velocity` = getBool(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 64: fail(22)
  let count4 = int(rawcount4)
  result.`velocity` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`velocity`[i] = getFloat64(r)
  result.`expected_velocity` = getInteger(r,int32)
proc encode*(value: Ros1Uwvm_fourier_bridgeMotionRecipe): seq[byte] =
  var w = initWriter(1170)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeMotionRecipe*(b: seq[byte]): Ros1Uwvm_fourier_bridgeMotionRecipe =
  var r = initReader(b,1170)
  result = readRos1Uwvm_fourier_bridgeMotionRecipe(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeExecuteMoveRequest* = object
  `sequence`*: uint64
  `moves`*: seq[Ros1Uwvm_fourier_bridgeMotionRecipe]
const Ros1Uwvm_fourier_bridgeExecuteMoveRequestMaximumWireBytes* = 9372
const Ros1Uwvm_fourier_bridgeExecuteMoveRequestCodecIdentity* = "UWVMROS1_25e369f6b32bdc9983664fd4d857000a6a664364cb8bd0ff3d123cbc3c87e61b"
const Ros1Uwvm_fourier_bridgeExecuteMoveRequestNativeType* = "uwvm_fourier_bridge/ExecuteMoveRequest"
const Ros1Uwvm_fourier_bridgeExecuteMoveRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeExecuteMoveRequest*(): Ros1Uwvm_fourier_bridgeExecuteMoveRequest =
  result.`sequence` = 0
  result.`moves` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeExecuteMoveRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  if value.`moves`.len > 8: fail(22)
  putInteger(w,uint32(value.`moves`.len))
  for e in value.`moves`:
    writeFields(e,w)
proc readRos1Uwvm_fourier_bridgeExecuteMoveRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeExecuteMoveRequest =
  result = initRos1Uwvm_fourier_bridgeExecuteMoveRequest()
  result.`sequence` = getInteger(r,uint64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`moves` = newSeq[Ros1Uwvm_fourier_bridgeMotionRecipe](count1)
  for i in 0..<count1:
    result.`moves`[i] = readRos1Uwvm_fourier_bridgeMotionRecipe(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeExecuteMoveRequest): seq[byte] =
  var w = initWriter(9372)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeExecuteMoveRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeExecuteMoveRequest =
  var r = initReader(b,9372)
  result = readRos1Uwvm_fourier_bridgeExecuteMoveRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeExecuteMoveResponse* = object
  `status`*: uint32
  `error`*: string
const Ros1Uwvm_fourier_bridgeExecuteMoveResponseMaximumWireBytes* = 136
const Ros1Uwvm_fourier_bridgeExecuteMoveResponseCodecIdentity* = "UWVMROS1_9a801e77130d12c30d67a874cb1e8c5a7cc912a2968af304d1cfd263e6242115"
const Ros1Uwvm_fourier_bridgeExecuteMoveResponseNativeType* = "uwvm_fourier_bridge/ExecuteMoveResponse"
const Ros1Uwvm_fourier_bridgeExecuteMoveResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeExecuteMoveResponse*(): Ros1Uwvm_fourier_bridgeExecuteMoveResponse =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeExecuteMoveResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos1Uwvm_fourier_bridgeExecuteMoveResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeExecuteMoveResponse =
  result = initRos1Uwvm_fourier_bridgeExecuteMoveResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeExecuteMoveResponse): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeExecuteMoveResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeExecuteMoveResponse =
  var r = initReader(b,136)
  result = readRos1Uwvm_fourier_bridgeExecuteMoveResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetBaseDataRequest* = object
  `sequence`*: uint64
  `key`*: string
const Ros1Uwvm_fourier_bridgeGetBaseDataRequestMaximumWireBytes* = 140
const Ros1Uwvm_fourier_bridgeGetBaseDataRequestCodecIdentity* = "UWVMROS1_17883b19f1dcc3d68263b6196eb5ec7afb8c902b8ab4f9b7eb66a58ef5e78528"
const Ros1Uwvm_fourier_bridgeGetBaseDataRequestNativeType* = "uwvm_fourier_bridge/GetBaseDataRequest"
const Ros1Uwvm_fourier_bridgeGetBaseDataRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetBaseDataRequest*(): Ros1Uwvm_fourier_bridgeGetBaseDataRequest =
  result.`sequence` = 0
  result.`key` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetBaseDataRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`key`,128)
proc readRos1Uwvm_fourier_bridgeGetBaseDataRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetBaseDataRequest =
  result = initRos1Uwvm_fourier_bridgeGetBaseDataRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`key` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetBaseDataRequest): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetBaseDataRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetBaseDataRequest =
  var r = initReader(b,140)
  result = readRos1Uwvm_fourier_bridgeGetBaseDataRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetBaseDataResponse* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros1Uwvm_fourier_bridgeGetBaseDataResponseMaximumWireBytes* = 652
const Ros1Uwvm_fourier_bridgeGetBaseDataResponseCodecIdentity* = "UWVMROS1_e8928e07d6dd18cfa8a7031e0a947fa6b2f36bb608f5d2178ec01b92bb78b79a"
const Ros1Uwvm_fourier_bridgeGetBaseDataResponseNativeType* = "uwvm_fourier_bridge/GetBaseDataResponse"
const Ros1Uwvm_fourier_bridgeGetBaseDataResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetBaseDataResponse*(): Ros1Uwvm_fourier_bridgeGetBaseDataResponse =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetBaseDataResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos1Uwvm_fourier_bridgeGetBaseDataResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetBaseDataResponse =
  result = initRos1Uwvm_fourier_bridgeGetBaseDataResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetBaseDataResponse): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetBaseDataResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetBaseDataResponse =
  var r = initReader(b,652)
  result = readRos1Uwvm_fourier_bridgeGetBaseDataResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetCartesianStateRequest* = object
  `sequence`*: uint64
  `group`*: string
  `key`*: string
const Ros1Uwvm_fourier_bridgeGetCartesianStateRequestMaximumWireBytes* = 272
const Ros1Uwvm_fourier_bridgeGetCartesianStateRequestCodecIdentity* = "UWVMROS1_658626f7fbd0f788149208230f03cef299bcb2a6ca4cf96d4e3af807d9b336ae"
const Ros1Uwvm_fourier_bridgeGetCartesianStateRequestNativeType* = "uwvm_fourier_bridge/GetCartesianStateRequest"
const Ros1Uwvm_fourier_bridgeGetCartesianStateRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetCartesianStateRequest*(): Ros1Uwvm_fourier_bridgeGetCartesianStateRequest =
  result.`sequence` = 0
  result.`group` = ""
  result.`key` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetCartesianStateRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`group`,128)
  putString(w,value.`key`,128)
proc readRos1Uwvm_fourier_bridgeGetCartesianStateRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetCartesianStateRequest =
  result = initRos1Uwvm_fourier_bridgeGetCartesianStateRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`group` = getString(r,128)
  result.`key` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetCartesianStateRequest): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetCartesianStateRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetCartesianStateRequest =
  var r = initReader(b,272)
  result = readRos1Uwvm_fourier_bridgeGetCartesianStateRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetCartesianStateResponse* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros1Uwvm_fourier_bridgeGetCartesianStateResponseMaximumWireBytes* = 652
const Ros1Uwvm_fourier_bridgeGetCartesianStateResponseCodecIdentity* = "UWVMROS1_a4fcd5f01a992b9aed4089b2c77ecda4656fe9aeb11c40777603805af964f671"
const Ros1Uwvm_fourier_bridgeGetCartesianStateResponseNativeType* = "uwvm_fourier_bridge/GetCartesianStateResponse"
const Ros1Uwvm_fourier_bridgeGetCartesianStateResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetCartesianStateResponse*(): Ros1Uwvm_fourier_bridgeGetCartesianStateResponse =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetCartesianStateResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos1Uwvm_fourier_bridgeGetCartesianStateResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetCartesianStateResponse =
  result = initRos1Uwvm_fourier_bridgeGetCartesianStateResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetCartesianStateResponse): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetCartesianStateResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetCartesianStateResponse =
  var r = initReader(b,652)
  result = readRos1Uwvm_fourier_bridgeGetCartesianStateResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetContactDataRequest* = object
  `sequence`*: uint64
  `key`*: string
const Ros1Uwvm_fourier_bridgeGetContactDataRequestMaximumWireBytes* = 140
const Ros1Uwvm_fourier_bridgeGetContactDataRequestCodecIdentity* = "UWVMROS1_38d1fa3409948748e19fdff39259fbb51503a98e03e996addb560cb404931787"
const Ros1Uwvm_fourier_bridgeGetContactDataRequestNativeType* = "uwvm_fourier_bridge/GetContactDataRequest"
const Ros1Uwvm_fourier_bridgeGetContactDataRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetContactDataRequest*(): Ros1Uwvm_fourier_bridgeGetContactDataRequest =
  result.`sequence` = 0
  result.`key` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetContactDataRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`key`,128)
proc readRos1Uwvm_fourier_bridgeGetContactDataRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetContactDataRequest =
  result = initRos1Uwvm_fourier_bridgeGetContactDataRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`key` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetContactDataRequest): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetContactDataRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetContactDataRequest =
  var r = initReader(b,140)
  result = readRos1Uwvm_fourier_bridgeGetContactDataRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetContactDataResponse* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros1Uwvm_fourier_bridgeGetContactDataResponseMaximumWireBytes* = 652
const Ros1Uwvm_fourier_bridgeGetContactDataResponseCodecIdentity* = "UWVMROS1_c4381d31ad73640e2f4302bd200d4507cd5a1a4ca4ee180ad009589864f3f293"
const Ros1Uwvm_fourier_bridgeGetContactDataResponseNativeType* = "uwvm_fourier_bridge/GetContactDataResponse"
const Ros1Uwvm_fourier_bridgeGetContactDataResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetContactDataResponse*(): Ros1Uwvm_fourier_bridgeGetContactDataResponse =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetContactDataResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos1Uwvm_fourier_bridgeGetContactDataResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetContactDataResponse =
  result = initRos1Uwvm_fourier_bridgeGetContactDataResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetContactDataResponse): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetContactDataResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetContactDataResponse =
  var r = initReader(b,652)
  result = readRos1Uwvm_fourier_bridgeGetContactDataResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetFsmNameRequest* = object
  `sequence`*: uint64
const Ros1Uwvm_fourier_bridgeGetFsmNameRequestMaximumWireBytes* = 8
const Ros1Uwvm_fourier_bridgeGetFsmNameRequestCodecIdentity* = "UWVMROS1_4257279fd241dee60ef24d1d5ebdcadbc84701b2e8709a6e269d2259b9293b33"
const Ros1Uwvm_fourier_bridgeGetFsmNameRequestNativeType* = "uwvm_fourier_bridge/GetFsmNameRequest"
const Ros1Uwvm_fourier_bridgeGetFsmNameRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetFsmNameRequest*(): Ros1Uwvm_fourier_bridgeGetFsmNameRequest =
  result.`sequence` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetFsmNameRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos1Uwvm_fourier_bridgeGetFsmNameRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetFsmNameRequest =
  result = initRos1Uwvm_fourier_bridgeGetFsmNameRequest()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetFsmNameRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetFsmNameRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetFsmNameRequest =
  var r = initReader(b,8)
  result = readRos1Uwvm_fourier_bridgeGetFsmNameRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetFsmNameResponse* = object
  `status`*: uint32
  `error`*: string
  `value`*: string
const Ros1Uwvm_fourier_bridgeGetFsmNameResponseMaximumWireBytes* = 268
const Ros1Uwvm_fourier_bridgeGetFsmNameResponseCodecIdentity* = "UWVMROS1_9016d706e2afed027dd150f1534e615e551c3f26d581313bb3d36a279e1d7c55"
const Ros1Uwvm_fourier_bridgeGetFsmNameResponseNativeType* = "uwvm_fourier_bridge/GetFsmNameResponse"
const Ros1Uwvm_fourier_bridgeGetFsmNameResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetFsmNameResponse*(): Ros1Uwvm_fourier_bridgeGetFsmNameResponse =
  result.`status` = 0
  result.`error` = ""
  result.`value` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetFsmNameResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putString(w,value.`value`,128)
proc readRos1Uwvm_fourier_bridgeGetFsmNameResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetFsmNameResponse =
  result = initRos1Uwvm_fourier_bridgeGetFsmNameResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetFsmNameResponse): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetFsmNameResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetFsmNameResponse =
  var r = initReader(b,268)
  result = readRos1Uwvm_fourier_bridgeGetFsmNameResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetFsmStateRequest* = object
  `sequence`*: uint64
const Ros1Uwvm_fourier_bridgeGetFsmStateRequestMaximumWireBytes* = 8
const Ros1Uwvm_fourier_bridgeGetFsmStateRequestCodecIdentity* = "UWVMROS1_573f497168578dce3680e1d423f64993e9fccf7774cc2fc0db38ccce8286ee3e"
const Ros1Uwvm_fourier_bridgeGetFsmStateRequestNativeType* = "uwvm_fourier_bridge/GetFsmStateRequest"
const Ros1Uwvm_fourier_bridgeGetFsmStateRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetFsmStateRequest*(): Ros1Uwvm_fourier_bridgeGetFsmStateRequest =
  result.`sequence` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetFsmStateRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos1Uwvm_fourier_bridgeGetFsmStateRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetFsmStateRequest =
  result = initRos1Uwvm_fourier_bridgeGetFsmStateRequest()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetFsmStateRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetFsmStateRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetFsmStateRequest =
  var r = initReader(b,8)
  result = readRos1Uwvm_fourier_bridgeGetFsmStateRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetFsmStateResponse* = object
  `status`*: uint32
  `error`*: string
  `value`*: int32
const Ros1Uwvm_fourier_bridgeGetFsmStateResponseMaximumWireBytes* = 140
const Ros1Uwvm_fourier_bridgeGetFsmStateResponseCodecIdentity* = "UWVMROS1_1d25f46d335312a766f3c0a7f410a45f283515396c8c6bfc4a49bcf6bc37a812"
const Ros1Uwvm_fourier_bridgeGetFsmStateResponseNativeType* = "uwvm_fourier_bridge/GetFsmStateResponse"
const Ros1Uwvm_fourier_bridgeGetFsmStateResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetFsmStateResponse*(): Ros1Uwvm_fourier_bridgeGetFsmStateResponse =
  result.`status` = 0
  result.`error` = ""
  result.`value` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetFsmStateResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putInteger(w,value.`value`)
proc readRos1Uwvm_fourier_bridgeGetFsmStateResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetFsmStateResponse =
  result = initRos1Uwvm_fourier_bridgeGetFsmStateResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetFsmStateResponse): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetFsmStateResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetFsmStateResponse =
  var r = initReader(b,140)
  result = readRos1Uwvm_fourier_bridgeGetFsmStateResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest* = object
  `sequence`*: uint64
  `group`*: string
const Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestMaximumWireBytes* = 140
const Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestCodecIdentity* = "UWVMROS1_a2b6c77c903d5d4dc5ca20805e1ed2fa7dfa0852bc3f590638a577cec9d7248f"
const Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestNativeType* = "uwvm_fourier_bridge/GetGroupMotionStateRequest"
const Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest*(): Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest =
  result.`sequence` = 0
  result.`group` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`group`,128)
proc readRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest =
  result = initRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`group` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetGroupMotionStateRequest =
  var r = initReader(b,140)
  result = readRos1Uwvm_fourier_bridgeGetGroupMotionStateRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse* = object
  `status`*: uint32
  `error`*: string
  `value`*: int32
const Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseMaximumWireBytes* = 140
const Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseCodecIdentity* = "UWVMROS1_e41b911990c306e8f264f1f9d961b822fb6669ad1ca5ee8f81609ba13a0fc8a2"
const Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseNativeType* = "uwvm_fourier_bridge/GetGroupMotionStateResponse"
const Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse*(): Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse =
  result.`status` = 0
  result.`error` = ""
  result.`value` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putInteger(w,value.`value`)
proc readRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse =
  result = initRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetGroupMotionStateResponse =
  var r = initReader(b,140)
  result = readRos1Uwvm_fourier_bridgeGetGroupMotionStateResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest* = object
  `sequence`*: uint64
  `group`*: string
  `key`*: string
const Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestMaximumWireBytes* = 272
const Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestCodecIdentity* = "UWVMROS1_bbcfb5561a970d7d086aa5a3a832dfbd8c3e2c2a9b4c5e9bea8224c6c7fc0576"
const Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestNativeType* = "uwvm_fourier_bridge/GetGroupMotorCfgRequest"
const Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest*(): Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest =
  result.`sequence` = 0
  result.`group` = ""
  result.`key` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`group`,128)
  putString(w,value.`key`,128)
proc readRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest =
  result = initRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`group` = getString(r,128)
  result.`key` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetGroupMotorCfgRequest =
  var r = initReader(b,272)
  result = readRos1Uwvm_fourier_bridgeGetGroupMotorCfgRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseMaximumWireBytes* = 652
const Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseCodecIdentity* = "UWVMROS1_cf7f2a81246842d851104edb7d422ff5342fc65dc56e573d552b10d02c81ad72"
const Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseNativeType* = "uwvm_fourier_bridge/GetGroupMotorCfgResponse"
const Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse*(): Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse =
  result = initRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetGroupMotorCfgResponse =
  var r = initReader(b,652)
  result = readRos1Uwvm_fourier_bridgeGetGroupMotorCfgResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetGroupStateRequest* = object
  `sequence`*: uint64
  `group`*: string
  `key`*: string
const Ros1Uwvm_fourier_bridgeGetGroupStateRequestMaximumWireBytes* = 272
const Ros1Uwvm_fourier_bridgeGetGroupStateRequestCodecIdentity* = "UWVMROS1_d24ebea89b1c6e7963c8058109704033c9e1f1f74673732093412c5ac453b8fc"
const Ros1Uwvm_fourier_bridgeGetGroupStateRequestNativeType* = "uwvm_fourier_bridge/GetGroupStateRequest"
const Ros1Uwvm_fourier_bridgeGetGroupStateRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetGroupStateRequest*(): Ros1Uwvm_fourier_bridgeGetGroupStateRequest =
  result.`sequence` = 0
  result.`group` = ""
  result.`key` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetGroupStateRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`group`,128)
  putString(w,value.`key`,128)
proc readRos1Uwvm_fourier_bridgeGetGroupStateRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetGroupStateRequest =
  result = initRos1Uwvm_fourier_bridgeGetGroupStateRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`group` = getString(r,128)
  result.`key` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetGroupStateRequest): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetGroupStateRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetGroupStateRequest =
  var r = initReader(b,272)
  result = readRos1Uwvm_fourier_bridgeGetGroupStateRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetGroupStateResponse* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros1Uwvm_fourier_bridgeGetGroupStateResponseMaximumWireBytes* = 652
const Ros1Uwvm_fourier_bridgeGetGroupStateResponseCodecIdentity* = "UWVMROS1_e21f17f91821b5a3154e108d0bcdb027a320b948d32e5637d20745c85edb0acb"
const Ros1Uwvm_fourier_bridgeGetGroupStateResponseNativeType* = "uwvm_fourier_bridge/GetGroupStateResponse"
const Ros1Uwvm_fourier_bridgeGetGroupStateResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetGroupStateResponse*(): Ros1Uwvm_fourier_bridgeGetGroupStateResponse =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetGroupStateResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos1Uwvm_fourier_bridgeGetGroupStateResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetGroupStateResponse =
  result = initRos1Uwvm_fourier_bridgeGetGroupStateResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetGroupStateResponse): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetGroupStateResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetGroupStateResponse =
  var r = initReader(b,652)
  result = readRos1Uwvm_fourier_bridgeGetGroupStateResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetSnapshotRequest* = object
  `sequence`*: uint64
const Ros1Uwvm_fourier_bridgeGetSnapshotRequestMaximumWireBytes* = 8
const Ros1Uwvm_fourier_bridgeGetSnapshotRequestCodecIdentity* = "UWVMROS1_384b9be938d41321afe3ef0765bdd442baa4f0c10049efd656c52d5ac1c89d4c"
const Ros1Uwvm_fourier_bridgeGetSnapshotRequestNativeType* = "uwvm_fourier_bridge/GetSnapshotRequest"
const Ros1Uwvm_fourier_bridgeGetSnapshotRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetSnapshotRequest*(): Ros1Uwvm_fourier_bridgeGetSnapshotRequest =
  result.`sequence` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetSnapshotRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos1Uwvm_fourier_bridgeGetSnapshotRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetSnapshotRequest =
  result = initRos1Uwvm_fourier_bridgeGetSnapshotRequest()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetSnapshotRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetSnapshotRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetSnapshotRequest =
  var r = initReader(b,8)
  result = readRos1Uwvm_fourier_bridgeGetSnapshotRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGroupState* = object
  `group`*: string
  `position`*: seq[float64]
  `velocity`*: seq[float64]
  `effort`*: seq[float64]
  `motion_state`*: int32
const Ros1Uwvm_fourier_bridgeGroupStateMaximumWireBytes* = 1684
const Ros1Uwvm_fourier_bridgeGroupStateCodecIdentity* = "UWVMROS1_473838de7c48b3719be265fd7c7554bb35a8a1a111e2e9290953d6a660650855"
const Ros1Uwvm_fourier_bridgeGroupStateNativeType* = "uwvm_fourier_bridge/GroupState"
const Ros1Uwvm_fourier_bridgeGroupStateNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGroupState*(): Ros1Uwvm_fourier_bridgeGroupState =
  result.`group` = ""
  result.`position` = @[]
  result.`velocity` = @[]
  result.`effort` = @[]
  result.`motion_state` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGroupState; w: var Writer) =
  putString(w,value.`group`,128)
  if value.`position`.len > 64: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    putFloat64(w,e)
  if value.`velocity`.len > 64: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    putFloat64(w,e)
  if value.`effort`.len > 64: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
  putInteger(w,value.`motion_state`)
proc readRos1Uwvm_fourier_bridgeGroupState*(r: var Reader): Ros1Uwvm_fourier_bridgeGroupState =
  result = initRos1Uwvm_fourier_bridgeGroupState()
  result.`group` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`position` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`position`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`velocity` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`velocity`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 64: fail(22)
  let count3 = int(rawcount3)
  result.`effort` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`effort`[i] = getFloat64(r)
  result.`motion_state` = getInteger(r,int32)
proc encode*(value: Ros1Uwvm_fourier_bridgeGroupState): seq[byte] =
  var w = initWriter(1684)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGroupState*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGroupState =
  var r = initReader(b,1684)
  result = readRos1Uwvm_fourier_bridgeGroupState(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeStatus* = object
  `fsm_state`*: int32
  `fsm_name`*: string
  `upper_fsm_state`*: int32
  `upper_fsm_name`*: string
  `velocity_source`*: int32
  `velocity_source_name`*: string
  `stand_pose`*: seq[float64]
  `groups`*: seq[Ros1Uwvm_fourier_bridgeGroupState]
const Ros1Uwvm_fourier_bridgeStatusMaximumWireBytes* = 14400
const Ros1Uwvm_fourier_bridgeStatusCodecIdentity* = "UWVMROS1_b08737c90dd86078c8ef968fc86b5b77562148b569cd8c271195c7b758190e3e"
const Ros1Uwvm_fourier_bridgeStatusNativeType* = "uwvm_fourier_bridge/Status"
const Ros1Uwvm_fourier_bridgeStatusNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeStatus*(): Ros1Uwvm_fourier_bridgeStatus =
  result.`fsm_state` = 0
  result.`fsm_name` = ""
  result.`upper_fsm_state` = 0
  result.`upper_fsm_name` = ""
  result.`velocity_source` = 0
  result.`velocity_source_name` = ""
  result.`stand_pose` = @[]
  result.`groups` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeStatus; w: var Writer) =
  putInteger(w,value.`fsm_state`)
  putString(w,value.`fsm_name`,128)
  putInteger(w,value.`upper_fsm_state`)
  putString(w,value.`upper_fsm_name`,128)
  putInteger(w,value.`velocity_source`)
  putString(w,value.`velocity_source_name`,128)
  if value.`stand_pose`.len > 64: fail(22)
  putInteger(w,uint32(value.`stand_pose`.len))
  for e in value.`stand_pose`:
    putFloat64(w,e)
  if value.`groups`.len > 8: fail(22)
  putInteger(w,uint32(value.`groups`.len))
  for e in value.`groups`:
    writeFields(e,w)
proc readRos1Uwvm_fourier_bridgeStatus*(r: var Reader): Ros1Uwvm_fourier_bridgeStatus =
  result = initRos1Uwvm_fourier_bridgeStatus()
  result.`fsm_state` = getInteger(r,int32)
  result.`fsm_name` = getString(r,128)
  result.`upper_fsm_state` = getInteger(r,int32)
  result.`upper_fsm_name` = getString(r,128)
  result.`velocity_source` = getInteger(r,int32)
  result.`velocity_source_name` = getString(r,128)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 64: fail(22)
  let count6 = int(rawcount6)
  result.`stand_pose` = newSeq[float64](count6)
  for i in 0..<count6:
    result.`stand_pose`[i] = getFloat64(r)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 8: fail(22)
  let count7 = int(rawcount7)
  result.`groups` = newSeq[Ros1Uwvm_fourier_bridgeGroupState](count7)
  for i in 0..<count7:
    result.`groups`[i] = readRos1Uwvm_fourier_bridgeGroupState(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeStatus): seq[byte] =
  var w = initWriter(14400)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeStatus*(b: seq[byte]): Ros1Uwvm_fourier_bridgeStatus =
  var r = initReader(b,14400)
  result = readRos1Uwvm_fourier_bridgeStatus(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetSnapshotResponse* = object
  `status`*: uint32
  `error`*: string
  `value`*: Ros1Uwvm_fourier_bridgeStatus
const Ros1Uwvm_fourier_bridgeGetSnapshotResponseMaximumWireBytes* = 14536
const Ros1Uwvm_fourier_bridgeGetSnapshotResponseCodecIdentity* = "UWVMROS1_3b8b79195d53d3e0d22ac318e8f0898cb774cfaed35bebbc5210288273137c6a"
const Ros1Uwvm_fourier_bridgeGetSnapshotResponseNativeType* = "uwvm_fourier_bridge/GetSnapshotResponse"
const Ros1Uwvm_fourier_bridgeGetSnapshotResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetSnapshotResponse*(): Ros1Uwvm_fourier_bridgeGetSnapshotResponse =
  result.`status` = 0
  result.`error` = ""
  result.`value` = initRos1Uwvm_fourier_bridgeStatus()
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetSnapshotResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  writeFields(value.`value`,w)
proc readRos1Uwvm_fourier_bridgeGetSnapshotResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetSnapshotResponse =
  result = initRos1Uwvm_fourier_bridgeGetSnapshotResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = readRos1Uwvm_fourier_bridgeStatus(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetSnapshotResponse): seq[byte] =
  var w = initWriter(14536)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetSnapshotResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetSnapshotResponse =
  var r = initReader(b,14536)
  result = readRos1Uwvm_fourier_bridgeGetSnapshotResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetStandPoseRequest* = object
  `sequence`*: uint64
const Ros1Uwvm_fourier_bridgeGetStandPoseRequestMaximumWireBytes* = 8
const Ros1Uwvm_fourier_bridgeGetStandPoseRequestCodecIdentity* = "UWVMROS1_5c3b18c383a9a9a162bf3b656007f56e791c26125e0dc59fd8dc87bd3ef54738"
const Ros1Uwvm_fourier_bridgeGetStandPoseRequestNativeType* = "uwvm_fourier_bridge/GetStandPoseRequest"
const Ros1Uwvm_fourier_bridgeGetStandPoseRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetStandPoseRequest*(): Ros1Uwvm_fourier_bridgeGetStandPoseRequest =
  result.`sequence` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetStandPoseRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos1Uwvm_fourier_bridgeGetStandPoseRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetStandPoseRequest =
  result = initRos1Uwvm_fourier_bridgeGetStandPoseRequest()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetStandPoseRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetStandPoseRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetStandPoseRequest =
  var r = initReader(b,8)
  result = readRos1Uwvm_fourier_bridgeGetStandPoseRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetStandPoseResponse* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros1Uwvm_fourier_bridgeGetStandPoseResponseMaximumWireBytes* = 652
const Ros1Uwvm_fourier_bridgeGetStandPoseResponseCodecIdentity* = "UWVMROS1_302692ae2e86c23efb3edf132e0b7a6e48fc2072a34bb941039db459f99cd15d"
const Ros1Uwvm_fourier_bridgeGetStandPoseResponseNativeType* = "uwvm_fourier_bridge/GetStandPoseResponse"
const Ros1Uwvm_fourier_bridgeGetStandPoseResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetStandPoseResponse*(): Ros1Uwvm_fourier_bridgeGetStandPoseResponse =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetStandPoseResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos1Uwvm_fourier_bridgeGetStandPoseResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetStandPoseResponse =
  result = initRos1Uwvm_fourier_bridgeGetStandPoseResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetStandPoseResponse): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetStandPoseResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetStandPoseResponse =
  var r = initReader(b,652)
  result = readRos1Uwvm_fourier_bridgeGetStandPoseResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest* = object
  `sequence`*: uint64
const Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestMaximumWireBytes* = 8
const Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestCodecIdentity* = "UWVMROS1_57fbba93abe5e136ae1522ad47155377e8a55ddaa3f02793e8a605e3b596115a"
const Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestNativeType* = "uwvm_fourier_bridge/GetUpperFsmNameRequest"
const Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest*(): Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest =
  result.`sequence` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest =
  result = initRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetUpperFsmNameRequest =
  var r = initReader(b,8)
  result = readRos1Uwvm_fourier_bridgeGetUpperFsmNameRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse* = object
  `status`*: uint32
  `error`*: string
  `value`*: string
const Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseMaximumWireBytes* = 268
const Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseCodecIdentity* = "UWVMROS1_e98befbd1c290a3cb2c99facb33334ac0d908db39247d869d0715c024e75c7fe"
const Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseNativeType* = "uwvm_fourier_bridge/GetUpperFsmNameResponse"
const Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse*(): Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse =
  result.`status` = 0
  result.`error` = ""
  result.`value` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putString(w,value.`value`,128)
proc readRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse =
  result = initRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetUpperFsmNameResponse =
  var r = initReader(b,268)
  result = readRos1Uwvm_fourier_bridgeGetUpperFsmNameResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest* = object
  `sequence`*: uint64
const Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestMaximumWireBytes* = 8
const Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestCodecIdentity* = "UWVMROS1_d38f791d76cec09de5bfa0b32d88d987ec3b077408682519f4c23940c4af0d12"
const Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestNativeType* = "uwvm_fourier_bridge/GetUpperFsmStateRequest"
const Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest*(): Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest =
  result.`sequence` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest =
  result = initRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetUpperFsmStateRequest =
  var r = initReader(b,8)
  result = readRos1Uwvm_fourier_bridgeGetUpperFsmStateRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse* = object
  `status`*: uint32
  `error`*: string
  `value`*: int32
const Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseMaximumWireBytes* = 140
const Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseCodecIdentity* = "UWVMROS1_3864ff479fa6b85dffd39e772e3260f9e5094cf8179f98c2184a09971d577e71"
const Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseNativeType* = "uwvm_fourier_bridge/GetUpperFsmStateResponse"
const Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse*(): Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse =
  result.`status` = 0
  result.`error` = ""
  result.`value` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putInteger(w,value.`value`)
proc readRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse =
  result = initRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetUpperFsmStateResponse =
  var r = initReader(b,140)
  result = readRos1Uwvm_fourier_bridgeGetUpperFsmStateResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest* = object
  `sequence`*: uint64
const Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestMaximumWireBytes* = 8
const Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestCodecIdentity* = "UWVMROS1_e38af8b3fc5b65c6f364f5949b42d694d7012d32d900f55e08b87d08bcf83042"
const Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestNativeType* = "uwvm_fourier_bridge/GetVelocitySourceRequest"
const Ros1Uwvm_fourier_bridgeGetVelocitySourceRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetVelocitySourceRequest*(): Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest =
  result.`sequence` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos1Uwvm_fourier_bridgeGetVelocitySourceRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest =
  result = initRos1Uwvm_fourier_bridgeGetVelocitySourceRequest()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetVelocitySourceRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetVelocitySourceRequest =
  var r = initReader(b,8)
  result = readRos1Uwvm_fourier_bridgeGetVelocitySourceRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse* = object
  `status`*: uint32
  `error`*: string
  `value`*: int32
const Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseMaximumWireBytes* = 140
const Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseCodecIdentity* = "UWVMROS1_5bf809b889573acff549030cda017455303b009379d495aa7c3ab4399c862f60"
const Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseNativeType* = "uwvm_fourier_bridge/GetVelocitySourceResponse"
const Ros1Uwvm_fourier_bridgeGetVelocitySourceResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetVelocitySourceResponse*(): Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse =
  result.`status` = 0
  result.`error` = ""
  result.`value` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putInteger(w,value.`value`)
proc readRos1Uwvm_fourier_bridgeGetVelocitySourceResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse =
  result = initRos1Uwvm_fourier_bridgeGetVelocitySourceResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetVelocitySourceResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetVelocitySourceResponse =
  var r = initReader(b,140)
  result = readRos1Uwvm_fourier_bridgeGetVelocitySourceResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest* = object
  `sequence`*: uint64
const Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestMaximumWireBytes* = 8
const Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestCodecIdentity* = "UWVMROS1_a880cea6f506d0670df709e9e86726272e242bd969b5917a9698efa2f6dd897b"
const Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestNativeType* = "uwvm_fourier_bridge/GetVelocitySourceNameRequest"
const Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest*(): Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest =
  result.`sequence` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest =
  result = initRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetVelocitySourceNameRequest =
  var r = initReader(b,8)
  result = readRos1Uwvm_fourier_bridgeGetVelocitySourceNameRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse* = object
  `status`*: uint32
  `error`*: string
  `value`*: string
const Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseMaximumWireBytes* = 268
const Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseCodecIdentity* = "UWVMROS1_4b746944429d7c07719da06a13b9a396dff3b51167894309e8cf46f64f049a9b"
const Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseNativeType* = "uwvm_fourier_bridge/GetVelocitySourceNameResponse"
const Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse*(): Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse =
  result.`status` = 0
  result.`error` = ""
  result.`value` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putString(w,value.`value`,128)
proc readRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse =
  result = initRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGetVelocitySourceNameResponse =
  var r = initReader(b,268)
  result = readRos1Uwvm_fourier_bridgeGetVelocitySourceNameResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeGroupValues* = object
  `group`*: string
  `values`*: seq[float64]
const Ros1Uwvm_fourier_bridgeGroupValuesMaximumWireBytes* = 648
const Ros1Uwvm_fourier_bridgeGroupValuesCodecIdentity* = "UWVMROS1_899fb75506245b34c004d1ad1392f79434612d04c73d80a3329f27ec8ff5244c"
const Ros1Uwvm_fourier_bridgeGroupValuesNativeType* = "uwvm_fourier_bridge/GroupValues"
const Ros1Uwvm_fourier_bridgeGroupValuesNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeGroupValues*(): Ros1Uwvm_fourier_bridgeGroupValues =
  result.`group` = ""
  result.`values` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeGroupValues; w: var Writer) =
  putString(w,value.`group`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos1Uwvm_fourier_bridgeGroupValues*(r: var Reader): Ros1Uwvm_fourier_bridgeGroupValues =
  result = initRos1Uwvm_fourier_bridgeGroupValues()
  result.`group` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`values` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeGroupValues): seq[byte] =
  var w = initWriter(648)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeGroupValues*(b: seq[byte]): Ros1Uwvm_fourier_bridgeGroupValues =
  var r = initReader(b,648)
  result = readRos1Uwvm_fourier_bridgeGroupValues(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetFsmStateRequest* = object
  `sequence`*: uint64
  `state`*: int32
const Ros1Uwvm_fourier_bridgeSetFsmStateRequestMaximumWireBytes* = 12
const Ros1Uwvm_fourier_bridgeSetFsmStateRequestCodecIdentity* = "UWVMROS1_303406629d56a2b60a273488cd1e12081e7541374653bac04e2ca073d8c20885"
const Ros1Uwvm_fourier_bridgeSetFsmStateRequestNativeType* = "uwvm_fourier_bridge/SetFsmStateRequest"
const Ros1Uwvm_fourier_bridgeSetFsmStateRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetFsmStateRequest*(): Ros1Uwvm_fourier_bridgeSetFsmStateRequest =
  result.`sequence` = 0
  result.`state` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetFsmStateRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putInteger(w,value.`state`)
proc readRos1Uwvm_fourier_bridgeSetFsmStateRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeSetFsmStateRequest =
  result = initRos1Uwvm_fourier_bridgeSetFsmStateRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`state` = getInteger(r,int32)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetFsmStateRequest): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetFsmStateRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetFsmStateRequest =
  var r = initReader(b,12)
  result = readRos1Uwvm_fourier_bridgeSetFsmStateRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetFsmStateResponse* = object
  `status`*: uint32
  `error`*: string
const Ros1Uwvm_fourier_bridgeSetFsmStateResponseMaximumWireBytes* = 136
const Ros1Uwvm_fourier_bridgeSetFsmStateResponseCodecIdentity* = "UWVMROS1_cffc820dc64a954aa94912941d3678a59a839b3dde4a6ebafdaf7d4367c22bd1"
const Ros1Uwvm_fourier_bridgeSetFsmStateResponseNativeType* = "uwvm_fourier_bridge/SetFsmStateResponse"
const Ros1Uwvm_fourier_bridgeSetFsmStateResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetFsmStateResponse*(): Ros1Uwvm_fourier_bridgeSetFsmStateResponse =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetFsmStateResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos1Uwvm_fourier_bridgeSetFsmStateResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeSetFsmStateResponse =
  result = initRos1Uwvm_fourier_bridgeSetFsmStateResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetFsmStateResponse): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetFsmStateResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetFsmStateResponse =
  var r = initReader(b,136)
  result = readRos1Uwvm_fourier_bridgeSetFsmStateResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetGroupCommandRequest* = object
  `sequence`*: uint64
  `position`*: seq[Ros1Uwvm_fourier_bridgeGroupValues]
  `velocity`*: seq[Ros1Uwvm_fourier_bridgeGroupValues]
  `torque`*: seq[Ros1Uwvm_fourier_bridgeGroupValues]
const Ros1Uwvm_fourier_bridgeSetGroupCommandRequestMaximumWireBytes* = 15572
const Ros1Uwvm_fourier_bridgeSetGroupCommandRequestCodecIdentity* = "UWVMROS1_b313435600ece44507300ad1ea5e375244387cde33301484ffda0390ca523220"
const Ros1Uwvm_fourier_bridgeSetGroupCommandRequestNativeType* = "uwvm_fourier_bridge/SetGroupCommandRequest"
const Ros1Uwvm_fourier_bridgeSetGroupCommandRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetGroupCommandRequest*(): Ros1Uwvm_fourier_bridgeSetGroupCommandRequest =
  result.`sequence` = 0
  result.`position` = @[]
  result.`velocity` = @[]
  result.`torque` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetGroupCommandRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  if value.`position`.len > 8: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    writeFields(e,w)
  if value.`velocity`.len > 8: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    writeFields(e,w)
  if value.`torque`.len > 8: fail(22)
  putInteger(w,uint32(value.`torque`.len))
  for e in value.`torque`:
    writeFields(e,w)
proc readRos1Uwvm_fourier_bridgeSetGroupCommandRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeSetGroupCommandRequest =
  result = initRos1Uwvm_fourier_bridgeSetGroupCommandRequest()
  result.`sequence` = getInteger(r,uint64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`position` = newSeq[Ros1Uwvm_fourier_bridgeGroupValues](count1)
  for i in 0..<count1:
    result.`position`[i] = readRos1Uwvm_fourier_bridgeGroupValues(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`velocity` = newSeq[Ros1Uwvm_fourier_bridgeGroupValues](count2)
  for i in 0..<count2:
    result.`velocity`[i] = readRos1Uwvm_fourier_bridgeGroupValues(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`torque` = newSeq[Ros1Uwvm_fourier_bridgeGroupValues](count3)
  for i in 0..<count3:
    result.`torque`[i] = readRos1Uwvm_fourier_bridgeGroupValues(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetGroupCommandRequest): seq[byte] =
  var w = initWriter(15572)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetGroupCommandRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetGroupCommandRequest =
  var r = initReader(b,15572)
  result = readRos1Uwvm_fourier_bridgeSetGroupCommandRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetGroupCommandResponse* = object
  `status`*: uint32
  `error`*: string
const Ros1Uwvm_fourier_bridgeSetGroupCommandResponseMaximumWireBytes* = 136
const Ros1Uwvm_fourier_bridgeSetGroupCommandResponseCodecIdentity* = "UWVMROS1_d4c199515080deccf6a7bbd7101c84f45d7b280a7ed618c2165231343aae558b"
const Ros1Uwvm_fourier_bridgeSetGroupCommandResponseNativeType* = "uwvm_fourier_bridge/SetGroupCommandResponse"
const Ros1Uwvm_fourier_bridgeSetGroupCommandResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetGroupCommandResponse*(): Ros1Uwvm_fourier_bridgeSetGroupCommandResponse =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetGroupCommandResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos1Uwvm_fourier_bridgeSetGroupCommandResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeSetGroupCommandResponse =
  result = initRos1Uwvm_fourier_bridgeSetGroupCommandResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetGroupCommandResponse): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetGroupCommandResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetGroupCommandResponse =
  var r = initReader(b,136)
  result = readRos1Uwvm_fourier_bridgeSetGroupCommandResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest* = object
  `sequence`*: uint64
  `kp`*: seq[Ros1Uwvm_fourier_bridgeGroupValues]
  `kd`*: seq[Ros1Uwvm_fourier_bridgeGroupValues]
const Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestMaximumWireBytes* = 10384
const Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestCodecIdentity* = "UWVMROS1_b6dc93532397dc9016b751bf29f651e5cbb0823b5a03a3f8473823bb234bc51d"
const Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestNativeType* = "uwvm_fourier_bridge/SetMotorCfgPdRequest"
const Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest*(): Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest =
  result.`sequence` = 0
  result.`kp` = @[]
  result.`kd` = @[]
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  if value.`kp`.len > 8: fail(22)
  putInteger(w,uint32(value.`kp`.len))
  for e in value.`kp`:
    writeFields(e,w)
  if value.`kd`.len > 8: fail(22)
  putInteger(w,uint32(value.`kd`.len))
  for e in value.`kd`:
    writeFields(e,w)
proc readRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest =
  result = initRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest()
  result.`sequence` = getInteger(r,uint64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`kp` = newSeq[Ros1Uwvm_fourier_bridgeGroupValues](count1)
  for i in 0..<count1:
    result.`kp`[i] = readRos1Uwvm_fourier_bridgeGroupValues(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`kd` = newSeq[Ros1Uwvm_fourier_bridgeGroupValues](count2)
  for i in 0..<count2:
    result.`kd`[i] = readRos1Uwvm_fourier_bridgeGroupValues(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest): seq[byte] =
  var w = initWriter(10384)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetMotorCfgPdRequest =
  var r = initReader(b,10384)
  result = readRos1Uwvm_fourier_bridgeSetMotorCfgPdRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse* = object
  `status`*: uint32
  `error`*: string
const Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseMaximumWireBytes* = 136
const Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseCodecIdentity* = "UWVMROS1_c1a69a2c03c6cee9b43484b29a800a5f82be4b9188e3b199eb2db8babd205bdc"
const Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseNativeType* = "uwvm_fourier_bridge/SetMotorCfgPdResponse"
const Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse*(): Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse =
  result = initRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetMotorCfgPdResponse =
  var r = initReader(b,136)
  result = readRos1Uwvm_fourier_bridgeSetMotorCfgPdResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetStandPoseRequest* = object
  `sequence`*: uint64
  `delta_z`*: float64
  `delta_pitch`*: float64
  `delta_yaw`*: float64
const Ros1Uwvm_fourier_bridgeSetStandPoseRequestMaximumWireBytes* = 32
const Ros1Uwvm_fourier_bridgeSetStandPoseRequestCodecIdentity* = "UWVMROS1_75a21fe3986a90ff45b9e7ef023a93be9852d1174b5724b77b82b87e002492ed"
const Ros1Uwvm_fourier_bridgeSetStandPoseRequestNativeType* = "uwvm_fourier_bridge/SetStandPoseRequest"
const Ros1Uwvm_fourier_bridgeSetStandPoseRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetStandPoseRequest*(): Ros1Uwvm_fourier_bridgeSetStandPoseRequest =
  result.`sequence` = 0
  result.`delta_z` = 0
  result.`delta_pitch` = 0
  result.`delta_yaw` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetStandPoseRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putFloat64(w,value.`delta_z`)
  putFloat64(w,value.`delta_pitch`)
  putFloat64(w,value.`delta_yaw`)
proc readRos1Uwvm_fourier_bridgeSetStandPoseRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeSetStandPoseRequest =
  result = initRos1Uwvm_fourier_bridgeSetStandPoseRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`delta_z` = getFloat64(r)
  result.`delta_pitch` = getFloat64(r)
  result.`delta_yaw` = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetStandPoseRequest): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetStandPoseRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetStandPoseRequest =
  var r = initReader(b,32)
  result = readRos1Uwvm_fourier_bridgeSetStandPoseRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetStandPoseResponse* = object
  `status`*: uint32
  `error`*: string
const Ros1Uwvm_fourier_bridgeSetStandPoseResponseMaximumWireBytes* = 136
const Ros1Uwvm_fourier_bridgeSetStandPoseResponseCodecIdentity* = "UWVMROS1_257da5b52ebfca54b067ced2acfab01e3aa3187c77751a5f82f9fda25885fe7e"
const Ros1Uwvm_fourier_bridgeSetStandPoseResponseNativeType* = "uwvm_fourier_bridge/SetStandPoseResponse"
const Ros1Uwvm_fourier_bridgeSetStandPoseResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetStandPoseResponse*(): Ros1Uwvm_fourier_bridgeSetStandPoseResponse =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetStandPoseResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos1Uwvm_fourier_bridgeSetStandPoseResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeSetStandPoseResponse =
  result = initRos1Uwvm_fourier_bridgeSetStandPoseResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetStandPoseResponse): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetStandPoseResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetStandPoseResponse =
  var r = initReader(b,136)
  result = readRos1Uwvm_fourier_bridgeSetStandPoseResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest* = object
  `sequence`*: uint64
  `state`*: int32
const Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestMaximumWireBytes* = 12
const Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestCodecIdentity* = "UWVMROS1_cc12b01c002d9e3662f16595a55df6abebdea2fe06e350b7e81f33bee0d47758"
const Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestNativeType* = "uwvm_fourier_bridge/SetUpperFsmStateRequest"
const Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest*(): Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest =
  result.`sequence` = 0
  result.`state` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putInteger(w,value.`state`)
proc readRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest =
  result = initRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`state` = getInteger(r,int32)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetUpperFsmStateRequest =
  var r = initReader(b,12)
  result = readRos1Uwvm_fourier_bridgeSetUpperFsmStateRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse* = object
  `status`*: uint32
  `error`*: string
const Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseMaximumWireBytes* = 136
const Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseCodecIdentity* = "UWVMROS1_27ee9830ebf52c3cfcdd8691bf1be9a1a63f7cd12c43cd30531b73501cd423c1"
const Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseNativeType* = "uwvm_fourier_bridge/SetUpperFsmStateResponse"
const Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse*(): Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse =
  result = initRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetUpperFsmStateResponse =
  var r = initReader(b,136)
  result = readRos1Uwvm_fourier_bridgeSetUpperFsmStateResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetVelocityRequest* = object
  `sequence`*: uint64
  `vx`*: float64
  `vy`*: float64
  `yaw`*: float64
  `duration`*: float64
const Ros1Uwvm_fourier_bridgeSetVelocityRequestMaximumWireBytes* = 40
const Ros1Uwvm_fourier_bridgeSetVelocityRequestCodecIdentity* = "UWVMROS1_33eb9021c19ed28c9aabc0076b8e5cc9f36b1fcaebbb93ebfa3dc38e9691ed2d"
const Ros1Uwvm_fourier_bridgeSetVelocityRequestNativeType* = "uwvm_fourier_bridge/SetVelocityRequest"
const Ros1Uwvm_fourier_bridgeSetVelocityRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetVelocityRequest*(): Ros1Uwvm_fourier_bridgeSetVelocityRequest =
  result.`sequence` = 0
  result.`vx` = 0
  result.`vy` = 0
  result.`yaw` = 0
  result.`duration` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetVelocityRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putFloat64(w,value.`vx`)
  putFloat64(w,value.`vy`)
  putFloat64(w,value.`yaw`)
  putFloat64(w,value.`duration`)
proc readRos1Uwvm_fourier_bridgeSetVelocityRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeSetVelocityRequest =
  result = initRos1Uwvm_fourier_bridgeSetVelocityRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`vx` = getFloat64(r)
  result.`vy` = getFloat64(r)
  result.`yaw` = getFloat64(r)
  result.`duration` = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetVelocityRequest): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetVelocityRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetVelocityRequest =
  var r = initReader(b,40)
  result = readRos1Uwvm_fourier_bridgeSetVelocityRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetVelocityResponse* = object
  `status`*: uint32
  `error`*: string
const Ros1Uwvm_fourier_bridgeSetVelocityResponseMaximumWireBytes* = 136
const Ros1Uwvm_fourier_bridgeSetVelocityResponseCodecIdentity* = "UWVMROS1_3325d6b620d3481b6976cd4579f197ed19d6a5074618f700273ca89e0eba762a"
const Ros1Uwvm_fourier_bridgeSetVelocityResponseNativeType* = "uwvm_fourier_bridge/SetVelocityResponse"
const Ros1Uwvm_fourier_bridgeSetVelocityResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetVelocityResponse*(): Ros1Uwvm_fourier_bridgeSetVelocityResponse =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetVelocityResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos1Uwvm_fourier_bridgeSetVelocityResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeSetVelocityResponse =
  result = initRos1Uwvm_fourier_bridgeSetVelocityResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetVelocityResponse): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetVelocityResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetVelocityResponse =
  var r = initReader(b,136)
  result = readRos1Uwvm_fourier_bridgeSetVelocityResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest* = object
  `sequence`*: uint64
  `source`*: int32
const Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestMaximumWireBytes* = 12
const Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestCodecIdentity* = "UWVMROS1_769c68344260812d775718b441b2a0e5e26422995c946031b919707994e295eb"
const Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestNativeType* = "uwvm_fourier_bridge/SetVelocitySourceRequest"
const Ros1Uwvm_fourier_bridgeSetVelocitySourceRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetVelocitySourceRequest*(): Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest =
  result.`sequence` = 0
  result.`source` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  putInteger(w,value.`source`)
proc readRos1Uwvm_fourier_bridgeSetVelocitySourceRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest =
  result = initRos1Uwvm_fourier_bridgeSetVelocitySourceRequest()
  result.`sequence` = getInteger(r,uint64)
  result.`source` = getInteger(r,int32)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetVelocitySourceRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetVelocitySourceRequest =
  var r = initReader(b,12)
  result = readRos1Uwvm_fourier_bridgeSetVelocitySourceRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse* = object
  `status`*: uint32
  `error`*: string
const Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseMaximumWireBytes* = 136
const Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseCodecIdentity* = "UWVMROS1_d791bd1ff7d8219a98a9ad475cdf0274fa87638452ce0359de57abc05ff0c3be"
const Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseNativeType* = "uwvm_fourier_bridge/SetVelocitySourceResponse"
const Ros1Uwvm_fourier_bridgeSetVelocitySourceResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeSetVelocitySourceResponse*(): Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos1Uwvm_fourier_bridgeSetVelocitySourceResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse =
  result = initRos1Uwvm_fourier_bridgeSetVelocitySourceResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeSetVelocitySourceResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeSetVelocitySourceResponse =
  var r = initReader(b,136)
  result = readRos1Uwvm_fourier_bridgeSetVelocitySourceResponse(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeVelocityCommand* = object
  `sequence`*: uint64
  `vx`*: float64
  `vy`*: float64
  `yaw`*: float64
  `duration`*: float64
const Ros1Uwvm_fourier_bridgeVelocityCommandMaximumWireBytes* = 40
const Ros1Uwvm_fourier_bridgeVelocityCommandCodecIdentity* = "UWVMROS1_befc41dabd1a7359d32aa3dd4a0197e607fa84346f14fd79f8bc04d328b6ad54"
const Ros1Uwvm_fourier_bridgeVelocityCommandNativeType* = "uwvm_fourier_bridge/VelocityCommand"
const Ros1Uwvm_fourier_bridgeVelocityCommandNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeVelocityCommand*(): Ros1Uwvm_fourier_bridgeVelocityCommand =
  result.`sequence` = 0
  result.`vx` = 0
  result.`vy` = 0
  result.`yaw` = 0
  result.`duration` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeVelocityCommand; w: var Writer) =
  putInteger(w,value.`sequence`)
  putFloat64(w,value.`vx`)
  putFloat64(w,value.`vy`)
  putFloat64(w,value.`yaw`)
  putFloat64(w,value.`duration`)
proc readRos1Uwvm_fourier_bridgeVelocityCommand*(r: var Reader): Ros1Uwvm_fourier_bridgeVelocityCommand =
  result = initRos1Uwvm_fourier_bridgeVelocityCommand()
  result.`sequence` = getInteger(r,uint64)
  result.`vx` = getFloat64(r)
  result.`vy` = getFloat64(r)
  result.`yaw` = getFloat64(r)
  result.`duration` = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeVelocityCommand): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeVelocityCommand*(b: seq[byte]): Ros1Uwvm_fourier_bridgeVelocityCommand =
  var r = initReader(b,40)
  result = readRos1Uwvm_fourier_bridgeVelocityCommand(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest* = object
  `sequence`*: uint64
  `groups`*: seq[string]
  `timeout_seconds`*: float64
  `poll_seconds`*: float64
const Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestMaximumWireBytes* = 1084
const Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestCodecIdentity* = "UWVMROS1_27bdd6aa7689099eb40b3bdf96a1c3939677b016c685bd6fb6a275233b933b33"
const Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestNativeType* = "uwvm_fourier_bridge/WaitGroupsMotionCompleteRequest"
const Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequestNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest*(): Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest =
  result.`sequence` = 0
  result.`groups` = @[]
  result.`timeout_seconds` = 0
  result.`poll_seconds` = 0
proc writeFields*(value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest; w: var Writer) =
  putInteger(w,value.`sequence`)
  if value.`groups`.len > 8: fail(22)
  putInteger(w,uint32(value.`groups`.len))
  for e in value.`groups`:
    putString(w,e,128)
  putFloat64(w,value.`timeout_seconds`)
  putFloat64(w,value.`poll_seconds`)
proc readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest*(r: var Reader): Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest =
  result = initRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest()
  result.`sequence` = getInteger(r,uint64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`groups` = newSeq[string](count1)
  for i in 0..<count1:
    result.`groups`[i] = getString(r,128)
  result.`timeout_seconds` = getFloat64(r)
  result.`poll_seconds` = getFloat64(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest): seq[byte] =
  var w = initWriter(1084)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest*(b: seq[byte]): Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest =
  var r = initReader(b,1084)
  result = readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteRequest(r)
  finish(r)
type Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse* = object
  `status`*: uint32
  `error`*: string
  `complete`*: bool
const Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseMaximumWireBytes* = 137
const Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseCodecIdentity* = "UWVMROS1_7d0a1faabf2934ec1a75981a5ed4251017a666975174efca8be48c152a15fee8"
const Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseNativeType* = "uwvm_fourier_bridge/WaitGroupsMotionCompleteResponse"
const Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponseNativeIdentity* = ""
proc initRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse*(): Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse =
  result.`status` = 0
  result.`error` = ""
  result.`complete` = false
proc writeFields*(value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putBool(w,value.`complete`)
proc readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse*(r: var Reader): Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse =
  result = initRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`complete` = getBool(r)
proc encode*(value: Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse): seq[byte] =
  var w = initWriter(137)
  writeFields(value,w)
  w.bytes
proc decodeRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse*(b: seq[byte]): Ros1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse =
  var r = initReader(b,137)
  result = readRos1Uwvm_fourier_bridgeWaitGroupsMotionCompleteResponse(r)
  finish(r)
