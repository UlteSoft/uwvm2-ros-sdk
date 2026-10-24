# @file records.nim
# @brief Represent complete typed values and their bounded wire layout for nvidia-isaac-sim.
# @details Field widths, defaults and sequence limits follow the selected catalog. Keep backing storage alive
# while borrowed values are in use; preserve all decode failures before invoking a ROS operation.

# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros2Builtin_interfacesMsgTime* = object
  `sec`*: int32
  `nanosec`*: uint32
const Ros2Builtin_interfacesMsgTimeMaximumWireBytes* = 8
const Ros2Builtin_interfacesMsgTimeCodecIdentity* =
    "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
const Ros2Builtin_interfacesMsgTimeNativeType* = "builtin_interfaces/msg/Time"
const Ros2Builtin_interfacesMsgTimeNativeIdentity* = ""
proc initRos2Builtin_interfacesMsgTime*(): Ros2Builtin_interfacesMsgTime =
  result.`sec` = 0
  result.`nanosec` = 0
proc writeFields*(value: Ros2Builtin_interfacesMsgTime; w: var Writer) =
  if value.`nanosec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nanosec`)
proc readRos2Builtin_interfacesMsgTime*(r: var Reader): Ros2Builtin_interfacesMsgTime =
  result = initRos2Builtin_interfacesMsgTime()
  result.`sec` = getInteger(r,int32)
  result.`nanosec` = getInteger(r,uint32)
  if result.`nanosec` >= 1000000000: fail(22)
proc encode*(value: Ros2Builtin_interfacesMsgTime): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Builtin_interfacesMsgTime*(b: seq[byte]): Ros2Builtin_interfacesMsgTime =
  var r = initReader(b,8)
  result = readRos2Builtin_interfacesMsgTime(r)
  finish(r)
type Ros2Std_msgsMsgHeader* = object
  `stamp`*: Ros2Builtin_interfacesMsgTime
  `frame_id`*: string
const Ros2Std_msgsMsgHeaderMaximumWireBytes* = 76
const Ros2Std_msgsMsgHeaderCodecIdentity* = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396"
const Ros2Std_msgsMsgHeaderNativeType* = "std_msgs/msg/Header"
const Ros2Std_msgsMsgHeaderNativeIdentity* = ""
proc initRos2Std_msgsMsgHeader*(): Ros2Std_msgsMsgHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
  result.`frame_id` = ""
proc writeFields*(value: Ros2Std_msgsMsgHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,64)
proc readRos2Std_msgsMsgHeader*(r: var Reader): Ros2Std_msgsMsgHeader =
  result = initRos2Std_msgsMsgHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
  result.`frame_id` = getString(r,64)
proc encode*(value: Ros2Std_msgsMsgHeader): seq[byte] =
  var w = initWriter(76)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_msgsMsgHeader*(b: seq[byte]): Ros2Std_msgsMsgHeader =
  var r = initReader(b,76)
  result = readRos2Std_msgsMsgHeader(r)
  finish(r)
type Ros2Sensor_msgsMsgJointState* = object
  `header`*: Ros2Std_msgsMsgHeader
  `name`*: seq[string]
  `position`*: seq[float64]
  `velocity`*: seq[float64]
  `effort`*: seq[float64]
const Ros2Sensor_msgsMsgJointStateMaximumWireBytes* = 5980
const Ros2Sensor_msgsMsgJointStateCodecIdentity* =
    "UWVMROS1_2fe8e1de38676a3880ca61266fb575e3625198e66a1da1708cf8c103cb829cac"
const Ros2Sensor_msgsMsgJointStateNativeType* = "sensor_msgs/msg/JointState"
const Ros2Sensor_msgsMsgJointStateNativeIdentity* = ""
proc initRos2Sensor_msgsMsgJointState*(): Ros2Sensor_msgsMsgJointState =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`name` = @[]
  result.`position` = @[]
  result.`velocity` = @[]
  result.`effort` = @[]
proc writeFields*(value: Ros2Sensor_msgsMsgJointState; w: var Writer) =
  if len(value.`name`) != 0 and len(value.`position`) != 0 and len(value.`name`) != len(value.`position`): fail(22)
  if len(value.`name`) != 0 and len(value.`velocity`) != 0 and len(value.`name`) != len(value.`velocity`): fail(22)
  if len(value.`name`) != 0 and len(value.`effort`) != 0 and len(value.`name`) != len(value.`effort`): fail(22)
  if len(value.`position`) != 0 and len(value.`velocity`) != 0 and len(value.`position`) != len(value.`velocity`): fail(
      22)
  if len(value.`position`) != 0 and len(value.`effort`) != 0 and len(value.`position`) != len(value.`effort`): fail(22)
  if len(value.`velocity`) != 0 and len(value.`effort`) != 0 and len(value.`velocity`) != len(value.`effort`): fail(22)
  writeFields(value.`header`,w)
  if value.`name`.len > 64: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,64)
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
proc readRos2Sensor_msgsMsgJointState*(r: var Reader): Ros2Sensor_msgsMsgJointState =
  result = initRos2Sensor_msgsMsgJointState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`name` = newSeq[string](count1)
  for i in 0..<count1:
    result.`name`[i] = getString(r,64)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`position` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`position`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 64: fail(22)
  let count3 = int(rawcount3)
  result.`velocity` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`velocity`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 64: fail(22)
  let count4 = int(rawcount4)
  result.`effort` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`effort`[i] = getFloat64(r)
  if len(result.`name`) != 0 and len(result.`position`) != 0 and len(result.`name`) != len(result.`position`): fail(22)
  if len(result.`name`) != 0 and len(result.`velocity`) != 0 and len(result.`name`) != len(result.`velocity`): fail(22)
  if len(result.`name`) != 0 and len(result.`effort`) != 0 and len(result.`name`) != len(result.`effort`): fail(22)
  if len(result.`position`) != 0 and len(result.`velocity`) != 0 and len(result.`position`) != len(
      result.`velocity`): fail(22)
  if len(result.`position`) != 0 and len(result.`effort`) != 0 and len(result.`position`) != len(result.`effort`): fail(
      22)
  if len(result.`velocity`) != 0 and len(result.`effort`) != 0 and len(result.`velocity`) != len(result.`effort`): fail(
      22)
proc encode*(value: Ros2Sensor_msgsMsgJointState): seq[byte] =
  var w = initWriter(5980)
  writeFields(value,w)
  w.bytes
proc decodeRos2Sensor_msgsMsgJointState*(b: seq[byte]): Ros2Sensor_msgsMsgJointState =
  var r = initReader(b,5980)
  result = readRos2Sensor_msgsMsgJointState(r)
  finish(r)
type Ros2Uwvm_isaac_sim_bridgeMsgClockEvent* = object
  `kind`*: uint8
  `phase`*: uint8
  `frame`*: uint32
  `sec`*: int32
  `nanosec`*: uint32
const Ros2Uwvm_isaac_sim_bridgeMsgClockEventMaximumWireBytes* = 14
const Ros2Uwvm_isaac_sim_bridgeMsgClockEventCodecIdentity* =
    "UWVMROS1_78b31f4b219f55bd576134f1b561194cb09c8ec0ac8dedafddd9b03ba6a198d6"
const Ros2Uwvm_isaac_sim_bridgeMsgClockEventNativeType* = "uwvm_isaac_sim_bridge/msg/ClockEvent"
const Ros2Uwvm_isaac_sim_bridgeMsgClockEventNativeIdentity* = ""
const Ros2Uwvm_isaac_sim_bridgeMsgClockEvent_AUTOMATIC*: uint8 = 1'u8
const Ros2Uwvm_isaac_sim_bridgeMsgClockEvent_MANUAL*: uint8 = 2'u8
proc initRos2Uwvm_isaac_sim_bridgeMsgClockEvent*(): Ros2Uwvm_isaac_sim_bridgeMsgClockEvent =
  result.`kind` = 0
  result.`phase` = 0
  result.`frame` = 0
  result.`sec` = 0
  result.`nanosec` = 0
proc writeFields*(value: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent; w: var Writer) =
  putInteger(w,value.`kind`)
  putInteger(w,value.`phase`)
  putInteger(w,value.`frame`)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nanosec`)
proc readRos2Uwvm_isaac_sim_bridgeMsgClockEvent*(r: var Reader): Ros2Uwvm_isaac_sim_bridgeMsgClockEvent =
  result = initRos2Uwvm_isaac_sim_bridgeMsgClockEvent()
  result.`kind` = getInteger(r,uint8)
  result.`phase` = getInteger(r,uint8)
  result.`frame` = getInteger(r,uint32)
  result.`sec` = getInteger(r,int32)
  result.`nanosec` = getInteger(r,uint32)
proc encode*(value: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent): seq[byte] =
  var w = initWriter(14)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_isaac_sim_bridgeMsgClockEvent*(b: seq[byte]): Ros2Uwvm_isaac_sim_bridgeMsgClockEvent =
  var r = initReader(b,14)
  result = readRos2Uwvm_isaac_sim_bridgeMsgClockEvent(r)
  finish(r)
type Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request* = object
  `operation`*: uint8
  `session_nonce`*: uint64
  `request_sequence`*: uint32
  `phase`*: uint8
  `frame`*: uint32
  `impulse`*: bool
  `extra_update`*: bool
  `pacing_milliseconds`*: uint16
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestMaximumWireBytes* = 22
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestCodecIdentity* =
    "UWVMROS1_8957fd758c2793d355e7356df436ea644a5d5da7ad7e2d179ed4d09936351b19"
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestNativeType* = "uwvm_isaac_sim_bridge/srv/ClockControl_Request"
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_RequestNativeIdentity* = ""
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_START*: uint8 = 1'u8
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_STEP*: uint8 = 2'u8
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_FINISH*: uint8 = 3'u8
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request_CANCEL*: uint8 = 4'u8
proc initRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request*(): Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request =
  result.`operation` = 0
  result.`session_nonce` = 0
  result.`request_sequence` = 0
  result.`phase` = 0
  result.`frame` = 0
  result.`impulse` = false
  result.`extra_update` = false
  result.`pacing_milliseconds` = 0
proc writeFields*(value: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request; w: var Writer) =
  putInteger(w,value.`operation`)
  putInteger(w,value.`session_nonce`)
  putInteger(w,value.`request_sequence`)
  putInteger(w,value.`phase`)
  putInteger(w,value.`frame`)
  putBool(w,value.`impulse`)
  putBool(w,value.`extra_update`)
  putInteger(w,value.`pacing_milliseconds`)
proc readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request*(
    r: var Reader): Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request =
  result = initRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request()
  result.`operation` = getInteger(r,uint8)
  result.`session_nonce` = getInteger(r,uint64)
  result.`request_sequence` = getInteger(r,uint32)
  result.`phase` = getInteger(r,uint8)
  result.`frame` = getInteger(r,uint32)
  result.`impulse` = getBool(r)
  result.`extra_update` = getBool(r)
  result.`pacing_milliseconds` = getInteger(r,uint16)
proc encode*(value: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request): seq[byte] =
  var w = initWriter(22)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request*(
    b: seq[byte]): Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Request =
  var r = initReader(b,22)
  result = readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Request(r)
  finish(r)
type Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response* = object
  `status`*: uint32
  `session_nonce`*: uint64
  `request_sequence`*: uint32
  `state`*: uint8
  `actual_app_updates`*: uint64
  `completed_steps`*: uint32
  `has_event`*: bool
  `event`*: Ros2Uwvm_isaac_sim_bridgeMsgClockEvent
  `cleanup_status`*: uint32
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseMaximumWireBytes* = 48
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseCodecIdentity* =
    "UWVMROS1_3b7763445df65d2a26fb54bfe6d41984008b33253cd7a614f5f057832d909502"
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseNativeType* = "uwvm_isaac_sim_bridge/srv/ClockControl_Response"
const Ros2Uwvm_isaac_sim_bridgeSrvClockControl_ResponseNativeIdentity* = ""
proc initRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response*(): Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response =
  result.`status` = 0
  result.`session_nonce` = 0
  result.`request_sequence` = 0
  result.`state` = 0
  result.`actual_app_updates` = 0
  result.`completed_steps` = 0
  result.`has_event` = false
  result.`event` = initRos2Uwvm_isaac_sim_bridgeMsgClockEvent()
  result.`cleanup_status` = 0
proc writeFields*(value: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response; w: var Writer) =
  putInteger(w,value.`status`)
  putInteger(w,value.`session_nonce`)
  putInteger(w,value.`request_sequence`)
  putInteger(w,value.`state`)
  putInteger(w,value.`actual_app_updates`)
  putInteger(w,value.`completed_steps`)
  putBool(w,value.`has_event`)
  writeFields(value.`event`,w)
  putInteger(w,value.`cleanup_status`)
proc readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response*(
    r: var Reader): Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response =
  result = initRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response()
  result.`status` = getInteger(r,uint32)
  result.`session_nonce` = getInteger(r,uint64)
  result.`request_sequence` = getInteger(r,uint32)
  result.`state` = getInteger(r,uint8)
  result.`actual_app_updates` = getInteger(r,uint64)
  result.`completed_steps` = getInteger(r,uint32)
  result.`has_event` = getBool(r)
  result.`event` = readRos2Uwvm_isaac_sim_bridgeMsgClockEvent(r)
  result.`cleanup_status` = getInteger(r,uint32)
proc encode*(value: Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response*(
    b: seq[byte]): Ros2Uwvm_isaac_sim_bridgeSrvClockControl_Response =
  var r = initReader(b,48)
  result = readRos2Uwvm_isaac_sim_bridgeSrvClockControl_Response(r)
  finish(r)
