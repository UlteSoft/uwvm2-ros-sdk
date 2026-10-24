# @file records.nim
# @brief Full fourier nim codecs and original record metadata.
# @details Complete fourier ros2_aurora_bridge_v1 values in nim. 51 original records retain 138 fields and 28
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/fourier/en_US/catalog/.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros2Uwvm_fourier_bridgeMsgGroupState* = object
  `group`*: string
  `position`*: seq[float64]
  `velocity`*: seq[float64]
  `effort`*: seq[float64]
  `motion_state`*: int32
const Ros2Uwvm_fourier_bridgeMsgGroupStateMaximumWireBytes* = 1684
const Ros2Uwvm_fourier_bridgeMsgGroupStateCodecIdentity* = "UWVMROS1_f33e483ea4f7b9326e43f82c92f948ce6d47f16fb34e463ba25f3ec01d5e0bf4"
const Ros2Uwvm_fourier_bridgeMsgGroupStateNativeType* = "uwvm_fourier_bridge/msg/GroupState"
const Ros2Uwvm_fourier_bridgeMsgGroupStateNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeMsgGroupState*(): Ros2Uwvm_fourier_bridgeMsgGroupState =
  result.`group` = ""
  result.`position` = @[]
  result.`velocity` = @[]
  result.`effort` = @[]
  result.`motion_state` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeMsgGroupState; w: var Writer) =
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
proc readRos2Uwvm_fourier_bridgeMsgGroupState*(r: var Reader): Ros2Uwvm_fourier_bridgeMsgGroupState =
  result = initRos2Uwvm_fourier_bridgeMsgGroupState()
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
proc encode*(value: Ros2Uwvm_fourier_bridgeMsgGroupState): seq[byte] =
  var w = initWriter(1684)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeMsgGroupState*(b: seq[byte]): Ros2Uwvm_fourier_bridgeMsgGroupState =
  var r = initReader(b,1684)
  result = readRos2Uwvm_fourier_bridgeMsgGroupState(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeMsgGroupValues* = object
  `group`*: string
  `values`*: seq[float64]
const Ros2Uwvm_fourier_bridgeMsgGroupValuesMaximumWireBytes* = 648
const Ros2Uwvm_fourier_bridgeMsgGroupValuesCodecIdentity* = "UWVMROS1_3c69f73f7b6d1d4a8a6b5006f6dbe9a74021b10a0d3b493251f0085cb06d57f3"
const Ros2Uwvm_fourier_bridgeMsgGroupValuesNativeType* = "uwvm_fourier_bridge/msg/GroupValues"
const Ros2Uwvm_fourier_bridgeMsgGroupValuesNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeMsgGroupValues*(): Ros2Uwvm_fourier_bridgeMsgGroupValues =
  result.`group` = ""
  result.`values` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeMsgGroupValues; w: var Writer) =
  putString(w,value.`group`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos2Uwvm_fourier_bridgeMsgGroupValues*(r: var Reader): Ros2Uwvm_fourier_bridgeMsgGroupValues =
  result = initRos2Uwvm_fourier_bridgeMsgGroupValues()
  result.`group` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`values` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeMsgGroupValues): seq[byte] =
  var w = initWriter(648)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeMsgGroupValues*(b: seq[byte]): Ros2Uwvm_fourier_bridgeMsgGroupValues =
  var r = initReader(b,648)
  result = readRos2Uwvm_fourier_bridgeMsgGroupValues(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeMsgMotionRecipe* = object
  `move_type`*: uint8
  `group`*: string
  `position`*: seq[float64]
  `has_velocity`*: bool
  `velocity`*: seq[float64]
  `expected_velocity`*: int32
const Ros2Uwvm_fourier_bridgeMsgMotionRecipeMaximumWireBytes* = 1170
const Ros2Uwvm_fourier_bridgeMsgMotionRecipeCodecIdentity* = "UWVMROS1_bc50051a3fd81e146ad97200427b3b673081f817a20dbc38de1533dc0a9bee14"
const Ros2Uwvm_fourier_bridgeMsgMotionRecipeNativeType* = "uwvm_fourier_bridge/msg/MotionRecipe"
const Ros2Uwvm_fourier_bridgeMsgMotionRecipeNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeMsgMotionRecipe*(): Ros2Uwvm_fourier_bridgeMsgMotionRecipe =
  result.`move_type` = 0
  result.`group` = ""
  result.`position` = @[]
  result.`has_velocity` = false
  result.`velocity` = @[]
  result.`expected_velocity` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeMsgMotionRecipe; w: var Writer) =
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
proc readRos2Uwvm_fourier_bridgeMsgMotionRecipe*(r: var Reader): Ros2Uwvm_fourier_bridgeMsgMotionRecipe =
  result = initRos2Uwvm_fourier_bridgeMsgMotionRecipe()
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
proc encode*(value: Ros2Uwvm_fourier_bridgeMsgMotionRecipe): seq[byte] =
  var w = initWriter(1170)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeMsgMotionRecipe*(b: seq[byte]): Ros2Uwvm_fourier_bridgeMsgMotionRecipe =
  var r = initReader(b,1170)
  result = readRos2Uwvm_fourier_bridgeMsgMotionRecipe(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeMsgStatus* = object
  `fsm_state`*: int32
  `fsm_name`*: string
  `upper_fsm_state`*: int32
  `upper_fsm_name`*: string
  `velocity_source`*: int32
  `velocity_source_name`*: string
  `stand_pose`*: seq[float64]
  `groups`*: seq[Ros2Uwvm_fourier_bridgeMsgGroupState]
const Ros2Uwvm_fourier_bridgeMsgStatusMaximumWireBytes* = 14400
const Ros2Uwvm_fourier_bridgeMsgStatusCodecIdentity* = "UWVMROS1_f251a6d2da8a35e9b49c1341ffda12f809186d845eb076d225ed274da7b4165e"
const Ros2Uwvm_fourier_bridgeMsgStatusNativeType* = "uwvm_fourier_bridge/msg/Status"
const Ros2Uwvm_fourier_bridgeMsgStatusNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeMsgStatus*(): Ros2Uwvm_fourier_bridgeMsgStatus =
  result.`fsm_state` = 0
  result.`fsm_name` = ""
  result.`upper_fsm_state` = 0
  result.`upper_fsm_name` = ""
  result.`velocity_source` = 0
  result.`velocity_source_name` = ""
  result.`stand_pose` = @[]
  result.`groups` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeMsgStatus; w: var Writer) =
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
proc readRos2Uwvm_fourier_bridgeMsgStatus*(r: var Reader): Ros2Uwvm_fourier_bridgeMsgStatus =
  result = initRos2Uwvm_fourier_bridgeMsgStatus()
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
  result.`groups` = newSeq[Ros2Uwvm_fourier_bridgeMsgGroupState](count7)
  for i in 0..<count7:
    result.`groups`[i] = readRos2Uwvm_fourier_bridgeMsgGroupState(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeMsgStatus): seq[byte] =
  var w = initWriter(14400)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeMsgStatus*(b: seq[byte]): Ros2Uwvm_fourier_bridgeMsgStatus =
  var r = initReader(b,14400)
  result = readRos2Uwvm_fourier_bridgeMsgStatus(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeMsgVelocityCommand* = object
  `sequence`*: uint64
  `vx`*: float64
  `vy`*: float64
  `yaw`*: float64
  `duration`*: float64
const Ros2Uwvm_fourier_bridgeMsgVelocityCommandMaximumWireBytes* = 40
const Ros2Uwvm_fourier_bridgeMsgVelocityCommandCodecIdentity* = "UWVMROS1_9b0a6facfb591afb82a34bb01b058f340626eba26619b8b686a52c6319e11d3d"
const Ros2Uwvm_fourier_bridgeMsgVelocityCommandNativeType* = "uwvm_fourier_bridge/msg/VelocityCommand"
const Ros2Uwvm_fourier_bridgeMsgVelocityCommandNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeMsgVelocityCommand*(): Ros2Uwvm_fourier_bridgeMsgVelocityCommand =
  result.`sequence` = 0
  result.`vx` = 0
  result.`vy` = 0
  result.`yaw` = 0
  result.`duration` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeMsgVelocityCommand; w: var Writer) =
  putInteger(w,value.`sequence`)
  putFloat64(w,value.`vx`)
  putFloat64(w,value.`vy`)
  putFloat64(w,value.`yaw`)
  putFloat64(w,value.`duration`)
proc readRos2Uwvm_fourier_bridgeMsgVelocityCommand*(r: var Reader): Ros2Uwvm_fourier_bridgeMsgVelocityCommand =
  result = initRos2Uwvm_fourier_bridgeMsgVelocityCommand()
  result.`sequence` = getInteger(r,uint64)
  result.`vx` = getFloat64(r)
  result.`vy` = getFloat64(r)
  result.`yaw` = getFloat64(r)
  result.`duration` = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeMsgVelocityCommand): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeMsgVelocityCommand*(b: seq[byte]): Ros2Uwvm_fourier_bridgeMsgVelocityCommand =
  var r = initReader(b,40)
  result = readRos2Uwvm_fourier_bridgeMsgVelocityCommand(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request* = object
  `sequence`*: uint64
  `moves`*: seq[Ros2Uwvm_fourier_bridgeMsgMotionRecipe]
const Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestMaximumWireBytes* = 9372
const Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestCodecIdentity* = "UWVMROS1_4f306d8dc39d1aec7cb634df8a1b3573996440cbdd390ad7447edfd93e0d626b"
const Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestNativeType* = "uwvm_fourier_bridge/srv/ExecuteMove_Request"
const Ros2Uwvm_fourier_bridgeSrvExecuteMove_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvExecuteMove_Request*(): Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request =
  result.`sequence` = 0
  result.`moves` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  if value.`moves`.len > 8: fail(22)
  putInteger(w,uint32(value.`moves`.len))
  for e in value.`moves`:
    writeFields(e,w)
proc readRos2Uwvm_fourier_bridgeSrvExecuteMove_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request =
  result = initRos2Uwvm_fourier_bridgeSrvExecuteMove_Request()
  result.`sequence` = getInteger(r,uint64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`moves` = newSeq[Ros2Uwvm_fourier_bridgeMsgMotionRecipe](count1)
  for i in 0..<count1:
    result.`moves`[i] = readRos2Uwvm_fourier_bridgeMsgMotionRecipe(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request): seq[byte] =
  var w = initWriter(9372)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvExecuteMove_Request =
  var r = initReader(b,9372)
  result = readRos2Uwvm_fourier_bridgeSrvExecuteMove_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response* = object
  `status`*: uint32
  `error`*: string
const Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseMaximumWireBytes* = 136
const Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseCodecIdentity* = "UWVMROS1_16cd03eb2e730dcd9eda47be3a506298f9369f0f61bcddd634a06295f902dcab"
const Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseNativeType* = "uwvm_fourier_bridge/srv/ExecuteMove_Response"
const Ros2Uwvm_fourier_bridgeSrvExecuteMove_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvExecuteMove_Response*(): Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos2Uwvm_fourier_bridgeSrvExecuteMove_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response =
  result = initRos2Uwvm_fourier_bridgeSrvExecuteMove_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvExecuteMove_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvExecuteMove_Response =
  var r = initReader(b,136)
  result = readRos2Uwvm_fourier_bridgeSrvExecuteMove_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request* = object
  `sequence`*: uint64
  `key`*: string
const Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestMaximumWireBytes* = 140
const Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestCodecIdentity* = "UWVMROS1_19cfad0a79a7703b8dd5d9215a705026eaff78ef1794bda704f52a1e70d2dd5f"
const Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestNativeType* = "uwvm_fourier_bridge/srv/GetBaseData_Request"
const Ros2Uwvm_fourier_bridgeSrvGetBaseData_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetBaseData_Request*(): Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request =
  result.`sequence` = 0
  result.`key` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`key`,128)
proc readRos2Uwvm_fourier_bridgeSrvGetBaseData_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetBaseData_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`key` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetBaseData_Request =
  var r = initReader(b,140)
  result = readRos2Uwvm_fourier_bridgeSrvGetBaseData_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseMaximumWireBytes* = 652
const Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseCodecIdentity* = "UWVMROS1_4c632e4c71f87f82064078b2936c9af2be87f56e44014e029470748c14614804"
const Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetBaseData_Response"
const Ros2Uwvm_fourier_bridgeSrvGetBaseData_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetBaseData_Response*(): Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos2Uwvm_fourier_bridgeSrvGetBaseData_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetBaseData_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetBaseData_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetBaseData_Response =
  var r = initReader(b,652)
  result = readRos2Uwvm_fourier_bridgeSrvGetBaseData_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request* = object
  `sequence`*: uint64
  `group`*: string
  `key`*: string
const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestMaximumWireBytes* = 272
const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestCodecIdentity* = "UWVMROS1_2255ca1da45c891d1a3f8c8f77f1f6c5b9380d5ac5250a5d522ab581c4df7eee"
const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestNativeType* = "uwvm_fourier_bridge/srv/GetCartesianState_Request"
const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request*(): Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request =
  result.`sequence` = 0
  result.`group` = ""
  result.`key` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`group`,128)
  putString(w,value.`key`,128)
proc readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`group` = getString(r,128)
  result.`key` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Request =
  var r = initReader(b,272)
  result = readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseMaximumWireBytes* = 652
const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseCodecIdentity* = "UWVMROS1_8adfef323b2635fd716d7121496c091656bc76bce2b320479345ef94bdc62a40"
const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetCartesianState_Response"
const Ros2Uwvm_fourier_bridgeSrvGetCartesianState_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response*(): Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetCartesianState_Response =
  var r = initReader(b,652)
  result = readRos2Uwvm_fourier_bridgeSrvGetCartesianState_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetContactData_Request* = object
  `sequence`*: uint64
  `key`*: string
const Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestMaximumWireBytes* = 140
const Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestCodecIdentity* = "UWVMROS1_52cf1fcf2036a4aa97ec902842838707ee1c96c63f6466165af5d1f3cde5f4e0"
const Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestNativeType* = "uwvm_fourier_bridge/srv/GetContactData_Request"
const Ros2Uwvm_fourier_bridgeSrvGetContactData_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetContactData_Request*(): Ros2Uwvm_fourier_bridgeSrvGetContactData_Request =
  result.`sequence` = 0
  result.`key` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetContactData_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`key`,128)
proc readRos2Uwvm_fourier_bridgeSrvGetContactData_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetContactData_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetContactData_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`key` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetContactData_Request): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetContactData_Request =
  var r = initReader(b,140)
  result = readRos2Uwvm_fourier_bridgeSrvGetContactData_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetContactData_Response* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseMaximumWireBytes* = 652
const Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseCodecIdentity* = "UWVMROS1_504e7cc1bcb1c9a649cda204bbfbf8c6735fc5d71466b8a72d0536f0d3746b2e"
const Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetContactData_Response"
const Ros2Uwvm_fourier_bridgeSrvGetContactData_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetContactData_Response*(): Ros2Uwvm_fourier_bridgeSrvGetContactData_Response =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetContactData_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos2Uwvm_fourier_bridgeSrvGetContactData_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetContactData_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetContactData_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetContactData_Response): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetContactData_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetContactData_Response =
  var r = initReader(b,652)
  result = readRos2Uwvm_fourier_bridgeSrvGetContactData_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request* = object
  `sequence`*: uint64
const Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestMaximumWireBytes* = 8
const Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestCodecIdentity* = "UWVMROS1_d8a11bb7eee1af0c138ec4f934610c4b88d817be25992cb854100cb61d8d6100"
const Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestNativeType* = "uwvm_fourier_bridge/srv/GetFsmName_Request"
const Ros2Uwvm_fourier_bridgeSrvGetFsmName_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetFsmName_Request*(): Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request =
  result.`sequence` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos2Uwvm_fourier_bridgeSrvGetFsmName_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetFsmName_Request()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetFsmName_Request =
  var r = initReader(b,8)
  result = readRos2Uwvm_fourier_bridgeSrvGetFsmName_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response* = object
  `status`*: uint32
  `error`*: string
  `value`*: string
const Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseMaximumWireBytes* = 268
const Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseCodecIdentity* = "UWVMROS1_6ac4c78b17f0a366274f7fc74e981e95e605040937a78b3e328836f781c6886e"
const Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetFsmName_Response"
const Ros2Uwvm_fourier_bridgeSrvGetFsmName_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetFsmName_Response*(): Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response =
  result.`status` = 0
  result.`error` = ""
  result.`value` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putString(w,value.`value`,128)
proc readRos2Uwvm_fourier_bridgeSrvGetFsmName_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetFsmName_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetFsmName_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetFsmName_Response =
  var r = initReader(b,268)
  result = readRos2Uwvm_fourier_bridgeSrvGetFsmName_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request* = object
  `sequence`*: uint64
const Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestMaximumWireBytes* = 8
const Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestCodecIdentity* = "UWVMROS1_061098411a7d26f31dd31957b34190e798305289bad558d351ee81df810e3bd0"
const Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestNativeType* = "uwvm_fourier_bridge/srv/GetFsmState_Request"
const Ros2Uwvm_fourier_bridgeSrvGetFsmState_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetFsmState_Request*(): Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request =
  result.`sequence` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos2Uwvm_fourier_bridgeSrvGetFsmState_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetFsmState_Request()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetFsmState_Request =
  var r = initReader(b,8)
  result = readRos2Uwvm_fourier_bridgeSrvGetFsmState_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response* = object
  `status`*: uint32
  `error`*: string
  `value`*: int32
const Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseMaximumWireBytes* = 140
const Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseCodecIdentity* = "UWVMROS1_1ac3b816f0e4aa4e769bd74d67274b85a8d9bf5ca7f8a359179280970b7e19e4"
const Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetFsmState_Response"
const Ros2Uwvm_fourier_bridgeSrvGetFsmState_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetFsmState_Response*(): Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response =
  result.`status` = 0
  result.`error` = ""
  result.`value` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putInteger(w,value.`value`)
proc readRos2Uwvm_fourier_bridgeSrvGetFsmState_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetFsmState_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetFsmState_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetFsmState_Response =
  var r = initReader(b,140)
  result = readRos2Uwvm_fourier_bridgeSrvGetFsmState_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request* = object
  `sequence`*: uint64
  `group`*: string
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestMaximumWireBytes* = 140
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestCodecIdentity* = "UWVMROS1_32606cb0ba540db0ce680716059ef3a7b4ad1277216fab4254521071cc0ea9ae"
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestNativeType* = "uwvm_fourier_bridge/srv/GetGroupMotionState_Request"
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request*(): Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request =
  result.`sequence` = 0
  result.`group` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`group`,128)
proc readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`group` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request =
  var r = initReader(b,140)
  result = readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response* = object
  `status`*: uint32
  `error`*: string
  `value`*: int32
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseMaximumWireBytes* = 140
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseCodecIdentity* = "UWVMROS1_192bd0770ca8e95e171fdbf9ef393bfc5e845a38d2a0c48f7846f3e080e219d7"
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetGroupMotionState_Response"
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response*(): Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response =
  result.`status` = 0
  result.`error` = ""
  result.`value` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putInteger(w,value.`value`)
proc readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response =
  var r = initReader(b,140)
  result = readRos2Uwvm_fourier_bridgeSrvGetGroupMotionState_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request* = object
  `sequence`*: uint64
  `group`*: string
  `key`*: string
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestMaximumWireBytes* = 272
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestCodecIdentity* = "UWVMROS1_7edceab07d5c5c571bce51ea7f82f0695df7e07ad8584d7219b7db36b697959a"
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestNativeType* = "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Request"
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request*(): Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request =
  result.`sequence` = 0
  result.`group` = ""
  result.`key` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`group`,128)
  putString(w,value.`key`,128)
proc readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`group` = getString(r,128)
  result.`key` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request =
  var r = initReader(b,272)
  result = readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseMaximumWireBytes* = 652
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseCodecIdentity* = "UWVMROS1_783f925c3b1030dec4d4a0172b4916c1cdbf72ec5e0da29167064ae754929868"
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetGroupMotorCfg_Response"
const Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response*(): Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response =
  var r = initReader(b,652)
  result = readRos2Uwvm_fourier_bridgeSrvGetGroupMotorCfg_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request* = object
  `sequence`*: uint64
  `group`*: string
  `key`*: string
const Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestMaximumWireBytes* = 272
const Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestCodecIdentity* = "UWVMROS1_8ad802cc56a28a603ea0b4e705a80aafeda7657757a36e1bbe452b85b5035fa9"
const Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestNativeType* = "uwvm_fourier_bridge/srv/GetGroupState_Request"
const Ros2Uwvm_fourier_bridgeSrvGetGroupState_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetGroupState_Request*(): Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request =
  result.`sequence` = 0
  result.`group` = ""
  result.`key` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putString(w,value.`group`,128)
  putString(w,value.`key`,128)
proc readRos2Uwvm_fourier_bridgeSrvGetGroupState_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetGroupState_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`group` = getString(r,128)
  result.`key` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetGroupState_Request =
  var r = initReader(b,272)
  result = readRos2Uwvm_fourier_bridgeSrvGetGroupState_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseMaximumWireBytes* = 652
const Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseCodecIdentity* = "UWVMROS1_22b934422928c57570784ac2100bf5fd5ca941ea59aea72b442ec7205ed2c96d"
const Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetGroupState_Response"
const Ros2Uwvm_fourier_bridgeSrvGetGroupState_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetGroupState_Response*(): Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos2Uwvm_fourier_bridgeSrvGetGroupState_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetGroupState_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetGroupState_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetGroupState_Response =
  var r = initReader(b,652)
  result = readRos2Uwvm_fourier_bridgeSrvGetGroupState_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request* = object
  `sequence`*: uint64
const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestMaximumWireBytes* = 8
const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestCodecIdentity* = "UWVMROS1_4c3003f85c4bc3c17e2e4bd4fd965fe52099a0a4a9f2c0320d165ec3db51bb58"
const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestNativeType* = "uwvm_fourier_bridge/srv/GetSnapshot_Request"
const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request*(): Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request =
  result.`sequence` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Request =
  var r = initReader(b,8)
  result = readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response* = object
  `status`*: uint32
  `error`*: string
  `value`*: Ros2Uwvm_fourier_bridgeMsgStatus
const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseMaximumWireBytes* = 14536
const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseCodecIdentity* = "UWVMROS1_bf4456397ae5115bf88b49c5568b8f289d6aefe3266f5e4d12b86d0f992de6a3"
const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetSnapshot_Response"
const Ros2Uwvm_fourier_bridgeSrvGetSnapshot_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response*(): Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response =
  result.`status` = 0
  result.`error` = ""
  result.`value` = initRos2Uwvm_fourier_bridgeMsgStatus()
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  writeFields(value.`value`,w)
proc readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = readRos2Uwvm_fourier_bridgeMsgStatus(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response): seq[byte] =
  var w = initWriter(14536)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetSnapshot_Response =
  var r = initReader(b,14536)
  result = readRos2Uwvm_fourier_bridgeSrvGetSnapshot_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request* = object
  `sequence`*: uint64
const Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestMaximumWireBytes* = 8
const Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestCodecIdentity* = "UWVMROS1_22c044b91db36a82bb825a556c41f9ae0139fb652ade47ac10aedf701ba0e044"
const Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestNativeType* = "uwvm_fourier_bridge/srv/GetStandPose_Request"
const Ros2Uwvm_fourier_bridgeSrvGetStandPose_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetStandPose_Request*(): Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request =
  result.`sequence` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos2Uwvm_fourier_bridgeSrvGetStandPose_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetStandPose_Request()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetStandPose_Request =
  var r = initReader(b,8)
  result = readRos2Uwvm_fourier_bridgeSrvGetStandPose_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response* = object
  `status`*: uint32
  `error`*: string
  `values`*: seq[float64]
const Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseMaximumWireBytes* = 652
const Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseCodecIdentity* = "UWVMROS1_b25c3c0cf5fa810e367b46ad2d20d7446ffc4f67b8fb77493060ca62017ef4e2"
const Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetStandPose_Response"
const Ros2Uwvm_fourier_bridgeSrvGetStandPose_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetStandPose_Response*(): Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response =
  result.`status` = 0
  result.`error` = ""
  result.`values` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  if value.`values`.len > 64: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat64(w,e)
proc readRos2Uwvm_fourier_bridgeSrvGetStandPose_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetStandPose_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`values` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`values`[i] = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response): seq[byte] =
  var w = initWriter(652)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetStandPose_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetStandPose_Response =
  var r = initReader(b,652)
  result = readRos2Uwvm_fourier_bridgeSrvGetStandPose_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request* = object
  `sequence`*: uint64
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestMaximumWireBytes* = 8
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestCodecIdentity* = "UWVMROS1_83187e2bc41361d7a7aef57d1458f4017a3ca4235b82c290dd80c1f58611e412"
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestNativeType* = "uwvm_fourier_bridge/srv/GetUpperFsmName_Request"
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request*(): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request =
  result.`sequence` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request =
  var r = initReader(b,8)
  result = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response* = object
  `status`*: uint32
  `error`*: string
  `value`*: string
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseMaximumWireBytes* = 268
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseCodecIdentity* = "UWVMROS1_ad6e25b9363bcadb517e96e5a1615c5ce36719542b2b32c4fb16f69ab102daed"
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetUpperFsmName_Response"
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response*(): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response =
  result.`status` = 0
  result.`error` = ""
  result.`value` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putString(w,value.`value`,128)
proc readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response =
  var r = initReader(b,268)
  result = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmName_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request* = object
  `sequence`*: uint64
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestMaximumWireBytes* = 8
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestCodecIdentity* = "UWVMROS1_9981500b7a9dacf167baf5d8dce45820a1424a7b7fbe960c0d1b37751d1dda98"
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestNativeType* = "uwvm_fourier_bridge/srv/GetUpperFsmState_Request"
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request*(): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request =
  result.`sequence` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request =
  var r = initReader(b,8)
  result = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response* = object
  `status`*: uint32
  `error`*: string
  `value`*: int32
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseMaximumWireBytes* = 140
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseCodecIdentity* = "UWVMROS1_dc699f01c04f01c7ad2e71daea02ffd80f368d4d066d5d280fcf0a2abfa126a9"
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetUpperFsmState_Response"
const Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response*(): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response =
  result.`status` = 0
  result.`error` = ""
  result.`value` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putInteger(w,value.`value`)
proc readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response =
  var r = initReader(b,140)
  result = readRos2Uwvm_fourier_bridgeSrvGetUpperFsmState_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request* = object
  `sequence`*: uint64
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestMaximumWireBytes* = 8
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestCodecIdentity* = "UWVMROS1_c11f2de346de2adac1cdf07c795d7746436851322e591a33d75c8226f75d5d4c"
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestNativeType* = "uwvm_fourier_bridge/srv/GetVelocitySource_Request"
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request*(): Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request =
  result.`sequence` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Request =
  var r = initReader(b,8)
  result = readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response* = object
  `status`*: uint32
  `error`*: string
  `value`*: int32
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseMaximumWireBytes* = 140
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseCodecIdentity* = "UWVMROS1_dedb7a6119ec7ed97a0924ff58585da8569acf3026bf0c21bbb0a43bd2094e53"
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetVelocitySource_Response"
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response*(): Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response =
  result.`status` = 0
  result.`error` = ""
  result.`value` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putInteger(w,value.`value`)
proc readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetVelocitySource_Response =
  var r = initReader(b,140)
  result = readRos2Uwvm_fourier_bridgeSrvGetVelocitySource_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request* = object
  `sequence`*: uint64
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestMaximumWireBytes* = 8
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestCodecIdentity* = "UWVMROS1_e1bc07b31243e938bd0fe61b1a8a7c788be7442ee978bdc0e0f3da128f1986d1"
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestNativeType* = "uwvm_fourier_bridge/srv/GetVelocitySourceName_Request"
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request*(): Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request =
  result.`sequence` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
proc readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request =
  result = initRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request()
  result.`sequence` = getInteger(r,uint64)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request =
  var r = initReader(b,8)
  result = readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response* = object
  `status`*: uint32
  `error`*: string
  `value`*: string
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseMaximumWireBytes* = 268
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseCodecIdentity* = "UWVMROS1_a79939894c6e446a7ee1b4af1270aa7bb72a8d54f543e82299a869b0a317ab40"
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseNativeType* = "uwvm_fourier_bridge/srv/GetVelocitySourceName_Response"
const Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response*(): Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response =
  result.`status` = 0
  result.`error` = ""
  result.`value` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putString(w,value.`value`,128)
proc readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response =
  result = initRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`value` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response): seq[byte] =
  var w = initWriter(268)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response =
  var r = initReader(b,268)
  result = readRos2Uwvm_fourier_bridgeSrvGetVelocitySourceName_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request* = object
  `sequence`*: uint64
  `state`*: int32
const Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestMaximumWireBytes* = 12
const Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestCodecIdentity* = "UWVMROS1_a479783bb0f94bf69a62333235049ee7692f618ae255edbefaa9cf9f110e090d"
const Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestNativeType* = "uwvm_fourier_bridge/srv/SetFsmState_Request"
const Ros2Uwvm_fourier_bridgeSrvSetFsmState_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetFsmState_Request*(): Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request =
  result.`sequence` = 0
  result.`state` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putInteger(w,value.`state`)
proc readRos2Uwvm_fourier_bridgeSrvSetFsmState_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request =
  result = initRos2Uwvm_fourier_bridgeSrvSetFsmState_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`state` = getInteger(r,int32)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetFsmState_Request =
  var r = initReader(b,12)
  result = readRos2Uwvm_fourier_bridgeSrvSetFsmState_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response* = object
  `status`*: uint32
  `error`*: string
const Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseMaximumWireBytes* = 136
const Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseCodecIdentity* = "UWVMROS1_35161a47d290454d74849c87e6333379e93454fe070c21a4ad6175c5da715e70"
const Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseNativeType* = "uwvm_fourier_bridge/srv/SetFsmState_Response"
const Ros2Uwvm_fourier_bridgeSrvSetFsmState_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetFsmState_Response*(): Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos2Uwvm_fourier_bridgeSrvSetFsmState_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response =
  result = initRos2Uwvm_fourier_bridgeSrvSetFsmState_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetFsmState_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetFsmState_Response =
  var r = initReader(b,136)
  result = readRos2Uwvm_fourier_bridgeSrvSetFsmState_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request* = object
  `sequence`*: uint64
  `position`*: seq[Ros2Uwvm_fourier_bridgeMsgGroupValues]
  `velocity`*: seq[Ros2Uwvm_fourier_bridgeMsgGroupValues]
  `torque`*: seq[Ros2Uwvm_fourier_bridgeMsgGroupValues]
const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestMaximumWireBytes* = 15572
const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestCodecIdentity* = "UWVMROS1_b0b7d59e3985faf7a7c3e186e0556059b479e624c799f20dafb973e774ae3be9"
const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestNativeType* = "uwvm_fourier_bridge/srv/SetGroupCommand_Request"
const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request*(): Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request =
  result.`sequence` = 0
  result.`position` = @[]
  result.`velocity` = @[]
  result.`torque` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request; w: var Writer) =
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
proc readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request =
  result = initRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request()
  result.`sequence` = getInteger(r,uint64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`position` = newSeq[Ros2Uwvm_fourier_bridgeMsgGroupValues](count1)
  for i in 0..<count1:
    result.`position`[i] = readRos2Uwvm_fourier_bridgeMsgGroupValues(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`velocity` = newSeq[Ros2Uwvm_fourier_bridgeMsgGroupValues](count2)
  for i in 0..<count2:
    result.`velocity`[i] = readRos2Uwvm_fourier_bridgeMsgGroupValues(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`torque` = newSeq[Ros2Uwvm_fourier_bridgeMsgGroupValues](count3)
  for i in 0..<count3:
    result.`torque`[i] = readRos2Uwvm_fourier_bridgeMsgGroupValues(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request): seq[byte] =
  var w = initWriter(15572)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Request =
  var r = initReader(b,15572)
  result = readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response* = object
  `status`*: uint32
  `error`*: string
const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseMaximumWireBytes* = 136
const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseCodecIdentity* = "UWVMROS1_53dc9e28bf3c95b193748d49c2796f5a936815f654863d326b6536a44077d290"
const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseNativeType* = "uwvm_fourier_bridge/srv/SetGroupCommand_Response"
const Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response*(): Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response =
  result = initRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetGroupCommand_Response =
  var r = initReader(b,136)
  result = readRos2Uwvm_fourier_bridgeSrvSetGroupCommand_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request* = object
  `sequence`*: uint64
  `kp`*: seq[Ros2Uwvm_fourier_bridgeMsgGroupValues]
  `kd`*: seq[Ros2Uwvm_fourier_bridgeMsgGroupValues]
const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestMaximumWireBytes* = 10384
const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestCodecIdentity* = "UWVMROS1_0e5ee74f7eaed206d45a883b2fe8ddeda407edf921aa31c4f2d04462479324de"
const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestNativeType* = "uwvm_fourier_bridge/srv/SetMotorCfgPd_Request"
const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request*(): Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request =
  result.`sequence` = 0
  result.`kp` = @[]
  result.`kd` = @[]
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  if value.`kp`.len > 8: fail(22)
  putInteger(w,uint32(value.`kp`.len))
  for e in value.`kp`:
    writeFields(e,w)
  if value.`kd`.len > 8: fail(22)
  putInteger(w,uint32(value.`kd`.len))
  for e in value.`kd`:
    writeFields(e,w)
proc readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request =
  result = initRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request()
  result.`sequence` = getInteger(r,uint64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`kp` = newSeq[Ros2Uwvm_fourier_bridgeMsgGroupValues](count1)
  for i in 0..<count1:
    result.`kp`[i] = readRos2Uwvm_fourier_bridgeMsgGroupValues(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`kd` = newSeq[Ros2Uwvm_fourier_bridgeMsgGroupValues](count2)
  for i in 0..<count2:
    result.`kd`[i] = readRos2Uwvm_fourier_bridgeMsgGroupValues(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request): seq[byte] =
  var w = initWriter(10384)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request =
  var r = initReader(b,10384)
  result = readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response* = object
  `status`*: uint32
  `error`*: string
const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseMaximumWireBytes* = 136
const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseCodecIdentity* = "UWVMROS1_dc86ac23016dc2d81dd5a69d3a6bcd96db09e1012f8f86e9fe4adcb38dabc804"
const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseNativeType* = "uwvm_fourier_bridge/srv/SetMotorCfgPd_Response"
const Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response*(): Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response =
  result = initRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response =
  var r = initReader(b,136)
  result = readRos2Uwvm_fourier_bridgeSrvSetMotorCfgPd_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request* = object
  `sequence`*: uint64
  `delta_z`*: float64
  `delta_pitch`*: float64
  `delta_yaw`*: float64
const Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestMaximumWireBytes* = 32
const Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestCodecIdentity* = "UWVMROS1_21e410d17dac9b44b02507adc3752236def8ad2bc9e251b64114a7f757577211"
const Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestNativeType* = "uwvm_fourier_bridge/srv/SetStandPose_Request"
const Ros2Uwvm_fourier_bridgeSrvSetStandPose_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetStandPose_Request*(): Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request =
  result.`sequence` = 0
  result.`delta_z` = 0
  result.`delta_pitch` = 0
  result.`delta_yaw` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putFloat64(w,value.`delta_z`)
  putFloat64(w,value.`delta_pitch`)
  putFloat64(w,value.`delta_yaw`)
proc readRos2Uwvm_fourier_bridgeSrvSetStandPose_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request =
  result = initRos2Uwvm_fourier_bridgeSrvSetStandPose_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`delta_z` = getFloat64(r)
  result.`delta_pitch` = getFloat64(r)
  result.`delta_yaw` = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetStandPose_Request =
  var r = initReader(b,32)
  result = readRos2Uwvm_fourier_bridgeSrvSetStandPose_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response* = object
  `status`*: uint32
  `error`*: string
const Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseMaximumWireBytes* = 136
const Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseCodecIdentity* = "UWVMROS1_9b3ea0a1868a4672f1ca95ac2cd43e31eeaa9f059c4194a2205b5df1cf09291f"
const Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseNativeType* = "uwvm_fourier_bridge/srv/SetStandPose_Response"
const Ros2Uwvm_fourier_bridgeSrvSetStandPose_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetStandPose_Response*(): Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos2Uwvm_fourier_bridgeSrvSetStandPose_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response =
  result = initRos2Uwvm_fourier_bridgeSrvSetStandPose_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetStandPose_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetStandPose_Response =
  var r = initReader(b,136)
  result = readRos2Uwvm_fourier_bridgeSrvSetStandPose_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request* = object
  `sequence`*: uint64
  `state`*: int32
const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestMaximumWireBytes* = 12
const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestCodecIdentity* = "UWVMROS1_9742535e908c4d9640af2c7432a91e65e76f3a442c265ef9255df599227a4182"
const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestNativeType* = "uwvm_fourier_bridge/srv/SetUpperFsmState_Request"
const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request*(): Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request =
  result.`sequence` = 0
  result.`state` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putInteger(w,value.`state`)
proc readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request =
  result = initRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`state` = getInteger(r,int32)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request =
  var r = initReader(b,12)
  result = readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response* = object
  `status`*: uint32
  `error`*: string
const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseMaximumWireBytes* = 136
const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseCodecIdentity* = "UWVMROS1_8247b198b8a857c16d15f248da2ac705ff2fd6b596f8c148c316025cd917c9f8"
const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseNativeType* = "uwvm_fourier_bridge/srv/SetUpperFsmState_Response"
const Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response*(): Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response =
  result = initRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response =
  var r = initReader(b,136)
  result = readRos2Uwvm_fourier_bridgeSrvSetUpperFsmState_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request* = object
  `sequence`*: uint64
  `vx`*: float64
  `vy`*: float64
  `yaw`*: float64
  `duration`*: float64
const Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestMaximumWireBytes* = 40
const Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestCodecIdentity* = "UWVMROS1_7d81116c1df184dc948db4bcba368ae3ea118f3c27418ee44bd0ceb6347cee44"
const Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestNativeType* = "uwvm_fourier_bridge/srv/SetVelocity_Request"
const Ros2Uwvm_fourier_bridgeSrvSetVelocity_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetVelocity_Request*(): Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request =
  result.`sequence` = 0
  result.`vx` = 0
  result.`vy` = 0
  result.`yaw` = 0
  result.`duration` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putFloat64(w,value.`vx`)
  putFloat64(w,value.`vy`)
  putFloat64(w,value.`yaw`)
  putFloat64(w,value.`duration`)
proc readRos2Uwvm_fourier_bridgeSrvSetVelocity_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request =
  result = initRos2Uwvm_fourier_bridgeSrvSetVelocity_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`vx` = getFloat64(r)
  result.`vy` = getFloat64(r)
  result.`yaw` = getFloat64(r)
  result.`duration` = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetVelocity_Request =
  var r = initReader(b,40)
  result = readRos2Uwvm_fourier_bridgeSrvSetVelocity_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response* = object
  `status`*: uint32
  `error`*: string
const Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseMaximumWireBytes* = 136
const Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseCodecIdentity* = "UWVMROS1_fa76b58061fed9672c09c5a110ebd3dc3dcdfde38da662338a48c0cf00250307"
const Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseNativeType* = "uwvm_fourier_bridge/srv/SetVelocity_Response"
const Ros2Uwvm_fourier_bridgeSrvSetVelocity_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetVelocity_Response*(): Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos2Uwvm_fourier_bridgeSrvSetVelocity_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response =
  result = initRos2Uwvm_fourier_bridgeSrvSetVelocity_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetVelocity_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetVelocity_Response =
  var r = initReader(b,136)
  result = readRos2Uwvm_fourier_bridgeSrvSetVelocity_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request* = object
  `sequence`*: uint64
  `source`*: int32
const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestMaximumWireBytes* = 12
const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestCodecIdentity* = "UWVMROS1_5e31cdd231ecbb30ece49edc211860b6be67c9e74839a328f37a46231e41271c"
const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestNativeType* = "uwvm_fourier_bridge/srv/SetVelocitySource_Request"
const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request*(): Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request =
  result.`sequence` = 0
  result.`source` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  putInteger(w,value.`source`)
proc readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request =
  result = initRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request()
  result.`sequence` = getInteger(r,uint64)
  result.`source` = getInteger(r,int32)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Request =
  var r = initReader(b,12)
  result = readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response* = object
  `status`*: uint32
  `error`*: string
const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseMaximumWireBytes* = 136
const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseCodecIdentity* = "UWVMROS1_9eb723e979b56e4a2dff53e026a3cab3cd0ddd4752c85e9b3ca08332e7a0eea7"
const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseNativeType* = "uwvm_fourier_bridge/srv/SetVelocitySource_Response"
const Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response*(): Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response =
  result.`status` = 0
  result.`error` = ""
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
proc readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response =
  result = initRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvSetVelocitySource_Response =
  var r = initReader(b,136)
  result = readRos2Uwvm_fourier_bridgeSrvSetVelocitySource_Response(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request* = object
  `sequence`*: uint64
  `groups`*: seq[string]
  `timeout_seconds`*: float64
  `poll_seconds`*: float64
const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestMaximumWireBytes* = 1084
const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestCodecIdentity* = "UWVMROS1_c6abe539be15088e34d76cb243ddd814fd6781baa7bf623949f1fb03651ef202"
const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestNativeType* = "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Request"
const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_RequestNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request*(): Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request =
  result.`sequence` = 0
  result.`groups` = @[]
  result.`timeout_seconds` = 0
  result.`poll_seconds` = 0
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request; w: var Writer) =
  putInteger(w,value.`sequence`)
  if value.`groups`.len > 8: fail(22)
  putInteger(w,uint32(value.`groups`.len))
  for e in value.`groups`:
    putString(w,e,128)
  putFloat64(w,value.`timeout_seconds`)
  putFloat64(w,value.`poll_seconds`)
proc readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request =
  result = initRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request()
  result.`sequence` = getInteger(r,uint64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`groups` = newSeq[string](count1)
  for i in 0..<count1:
    result.`groups`[i] = getString(r,128)
  result.`timeout_seconds` = getFloat64(r)
  result.`poll_seconds` = getFloat64(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request): seq[byte] =
  var w = initWriter(1084)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request =
  var r = initReader(b,1084)
  result = readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Request(r)
  finish(r)
type Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response* = object
  `status`*: uint32
  `error`*: string
  `complete`*: bool
const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseMaximumWireBytes* = 137
const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseCodecIdentity* = "UWVMROS1_19184faa294d8dae790908044ff067851cde1074e1228a32b19320b6cc94a74f"
const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseNativeType* = "uwvm_fourier_bridge/srv/WaitGroupsMotionComplete_Response"
const Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_ResponseNativeIdentity* = ""
proc initRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response*(): Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response =
  result.`status` = 0
  result.`error` = ""
  result.`complete` = false
proc writeFields*(value: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putString(w,value.`error`,128)
  putBool(w,value.`complete`)
proc readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response*(r: var Reader): Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response =
  result = initRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response()
  result.`status` = getInteger(r,uint32)
  result.`error` = getString(r,128)
  result.`complete` = getBool(r)
proc encode*(value: Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response): seq[byte] =
  var w = initWriter(137)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response*(b: seq[byte]): Ros2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response =
  var r = initReader(b,137)
  result = readRos2Uwvm_fourier_bridgeSrvWaitGroupsMotionComplete_Response(r)
  finish(r)
