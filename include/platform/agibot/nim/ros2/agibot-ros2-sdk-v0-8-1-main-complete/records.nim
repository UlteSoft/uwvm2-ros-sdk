# @file records.nim
# @brief Full agibot nim codecs and original record metadata.
# @details Complete agibot ros2_sdk_v0_8_1_main values in nim. 72 original records retain 227 fields and 55
# interface descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native
# definitions. Encoding is local; compiler, guest and native ROS acceptance require separate receipts. See the
# profile API manual under document/platform/agibot/en_US/catalog/.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros2Aimdk_msgsMsgAgentPropertyIdType* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgAgentPropertyIdTypeMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgAgentPropertyIdTypeCodecIdentity* = "UWVMROS1_96958ff52528b07c7f9bc239e80676edc77b27faa077a3bed7222cf32d1ebf0b"
const Ros2Aimdk_msgsMsgAgentPropertyIdTypeNativeType* = "aimdk_msgs/msg/AgentPropertyIdType"
const Ros2Aimdk_msgsMsgAgentPropertyIdTypeNativeIdentity* = ""
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_UNDEFINED*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_LANGUAGE*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_RUN_MODE*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_GREET*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_HEAD_FOLLOW*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_DUPLEX_TIMEOUT*: uint8 = 5'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_ENVIRONMENT_SWITCH*: uint8 = 6'u8
const Ros2Aimdk_msgsMsgAgentPropertyIdType_AGENT_PROPERTY_WELCOME_STATUS*: uint8 = 7'u8
proc initRos2Aimdk_msgsMsgAgentPropertyIdType*(): Ros2Aimdk_msgsMsgAgentPropertyIdType =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgAgentPropertyIdType; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgAgentPropertyIdType*(r: var Reader): Ros2Aimdk_msgsMsgAgentPropertyIdType =
  result = initRos2Aimdk_msgsMsgAgentPropertyIdType()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgAgentPropertyIdType): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAgentPropertyIdType*(b: seq[byte]): Ros2Aimdk_msgsMsgAgentPropertyIdType =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgAgentPropertyIdType(r)
  finish(r)
type Ros2Aimdk_msgsMsgAgentPropertiesValue* = object
  `key`*: Ros2Aimdk_msgsMsgAgentPropertyIdType
  `value`*: string
const Ros2Aimdk_msgsMsgAgentPropertiesValueMaximumWireBytes* = 133
const Ros2Aimdk_msgsMsgAgentPropertiesValueCodecIdentity* = "UWVMROS1_c7ec8887e5fb223291cb324c1ae21f20490955108ee137db384c6775fb332c6a"
const Ros2Aimdk_msgsMsgAgentPropertiesValueNativeType* = "aimdk_msgs/msg/AgentPropertiesValue"
const Ros2Aimdk_msgsMsgAgentPropertiesValueNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAgentPropertiesValue*(): Ros2Aimdk_msgsMsgAgentPropertiesValue =
  result.`key` = initRos2Aimdk_msgsMsgAgentPropertyIdType()
  result.`value` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgAgentPropertiesValue; w: var Writer) =
  writeFields(value.`key`,w)
  putString(w,value.`value`,128)
proc readRos2Aimdk_msgsMsgAgentPropertiesValue*(r: var Reader): Ros2Aimdk_msgsMsgAgentPropertiesValue =
  result = initRos2Aimdk_msgsMsgAgentPropertiesValue()
  result.`key` = readRos2Aimdk_msgsMsgAgentPropertyIdType(r)
  result.`value` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgAgentPropertiesValue): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAgentPropertiesValue*(b: seq[byte]): Ros2Aimdk_msgsMsgAgentPropertiesValue =
  var r = initReader(b,133)
  result = readRos2Aimdk_msgsMsgAgentPropertiesValue(r)
  finish(r)
type Ros2Aimdk_msgsMsgAgentProperties* = object
  `properties`*: seq[Ros2Aimdk_msgsMsgAgentPropertiesValue]
const Ros2Aimdk_msgsMsgAgentPropertiesMaximumWireBytes* = 536
const Ros2Aimdk_msgsMsgAgentPropertiesCodecIdentity* = "UWVMROS1_e729493bf2dfbd5ed1f726a95ac39d42f33a28f476edd13f66e75f9cb591694f"
const Ros2Aimdk_msgsMsgAgentPropertiesNativeType* = "aimdk_msgs/msg/AgentProperties"
const Ros2Aimdk_msgsMsgAgentPropertiesNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgAgentProperties*(): Ros2Aimdk_msgsMsgAgentProperties =
  result.`properties` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgAgentProperties; w: var Writer) =
  if value.`properties`.len > 4: fail(22)
  putInteger(w,uint32(value.`properties`.len))
  for e in value.`properties`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgAgentProperties*(r: var Reader): Ros2Aimdk_msgsMsgAgentProperties =
  result = initRos2Aimdk_msgsMsgAgentProperties()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`properties` = newSeq[Ros2Aimdk_msgsMsgAgentPropertiesValue](count0)
  for i in 0..<count0:
    result.`properties`[i] = readRos2Aimdk_msgsMsgAgentPropertiesValue(r)
proc encode*(value: Ros2Aimdk_msgsMsgAgentProperties): seq[byte] =
  var w = initWriter(536)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAgentProperties*(b: seq[byte]): Ros2Aimdk_msgsMsgAgentProperties =
  var r = initReader(b,536)
  result = readRos2Aimdk_msgsMsgAgentProperties(r)
  finish(r)
type Ros2Aimdk_msgsMsgAudioVadStateType* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgAudioVadStateTypeMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgAudioVadStateTypeCodecIdentity* = "UWVMROS1_edd7a6f6ad81c2c6479d3331d9e87a2fc66eedfb73f789caf0b888eeb9480526"
const Ros2Aimdk_msgsMsgAudioVadStateTypeNativeType* = "aimdk_msgs/msg/AudioVadStateType"
const Ros2Aimdk_msgsMsgAudioVadStateTypeNativeIdentity* = ""
const Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_BEGIN*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_PROCESSING*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgAudioVadStateType_AUDIO_VAD_STATE_END*: uint8 = 3'u8
proc initRos2Aimdk_msgsMsgAudioVadStateType*(): Ros2Aimdk_msgsMsgAudioVadStateType =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgAudioVadStateType; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgAudioVadStateType*(r: var Reader): Ros2Aimdk_msgsMsgAudioVadStateType =
  result = initRos2Aimdk_msgsMsgAudioVadStateType()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgAudioVadStateType): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgAudioVadStateType*(b: seq[byte]): Ros2Aimdk_msgsMsgAudioVadStateType =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgAudioVadStateType(r)
  finish(r)
type Ros2Builtin_interfacesMsgTime* = object
  `sec`*: int32
  `nanosec`*: uint32
const Ros2Builtin_interfacesMsgTimeMaximumWireBytes* = 8
const Ros2Builtin_interfacesMsgTimeCodecIdentity* = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
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
type Ros2Aimdk_msgsMsgRequestHeader* = object
  `stamp`*: Ros2Builtin_interfacesMsgTime
const Ros2Aimdk_msgsMsgRequestHeaderMaximumWireBytes* = 8
const Ros2Aimdk_msgsMsgRequestHeaderCodecIdentity* = "UWVMROS1_743efde912144cd1db5072b5a1d26b943c3fb882612b07c1883400784947b000"
const Ros2Aimdk_msgsMsgRequestHeaderNativeType* = "aimdk_msgs/msg/RequestHeader"
const Ros2Aimdk_msgsMsgRequestHeaderNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgRequestHeader*(): Ros2Aimdk_msgsMsgRequestHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
proc writeFields*(value: Ros2Aimdk_msgsMsgRequestHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
proc readRos2Aimdk_msgsMsgRequestHeader*(r: var Reader): Ros2Aimdk_msgsMsgRequestHeader =
  result = initRos2Aimdk_msgsMsgRequestHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
proc encode*(value: Ros2Aimdk_msgsMsgRequestHeader): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgRequestHeader*(b: seq[byte]): Ros2Aimdk_msgsMsgRequestHeader =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsMsgRequestHeader(r)
  finish(r)
type Ros2Aimdk_msgsMsgCommonRequest* = object
  `header`*: Ros2Aimdk_msgsMsgRequestHeader
const Ros2Aimdk_msgsMsgCommonRequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsMsgCommonRequestCodecIdentity* = "UWVMROS1_d4dd21dc3b43faa42396e4c4aa0f1ad35a507b6bd313f5d197268e79d67dd9d7"
const Ros2Aimdk_msgsMsgCommonRequestNativeType* = "aimdk_msgs/msg/CommonRequest"
const Ros2Aimdk_msgsMsgCommonRequestNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgCommonRequest*(): Ros2Aimdk_msgsMsgCommonRequest =
  result.`header` = initRos2Aimdk_msgsMsgRequestHeader()
proc writeFields*(value: Ros2Aimdk_msgsMsgCommonRequest; w: var Writer) =
  writeFields(value.`header`,w)
proc readRos2Aimdk_msgsMsgCommonRequest*(r: var Reader): Ros2Aimdk_msgsMsgCommonRequest =
  result = initRos2Aimdk_msgsMsgCommonRequest()
  result.`header` = readRos2Aimdk_msgsMsgRequestHeader(r)
proc encode*(value: Ros2Aimdk_msgsMsgCommonRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgCommonRequest*(b: seq[byte]): Ros2Aimdk_msgsMsgCommonRequest =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsMsgCommonRequest(r)
  finish(r)
type Ros2Aimdk_msgsMsgResponseHeader* = object
  `stamp`*: Ros2Builtin_interfacesMsgTime
  `code`*: int64
const Ros2Aimdk_msgsMsgResponseHeaderMaximumWireBytes* = 16
const Ros2Aimdk_msgsMsgResponseHeaderCodecIdentity* = "UWVMROS1_1aff5b9cfbca54f9091a6295e28034b45d22481e0dbd8a75b1759cda18b57b90"
const Ros2Aimdk_msgsMsgResponseHeaderNativeType* = "aimdk_msgs/msg/ResponseHeader"
const Ros2Aimdk_msgsMsgResponseHeaderNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgResponseHeader*(): Ros2Aimdk_msgsMsgResponseHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
  result.`code` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgResponseHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
  putInteger(w,value.`code`)
proc readRos2Aimdk_msgsMsgResponseHeader*(r: var Reader): Ros2Aimdk_msgsMsgResponseHeader =
  result = initRos2Aimdk_msgsMsgResponseHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
  result.`code` = getInteger(r,int64)
proc encode*(value: Ros2Aimdk_msgsMsgResponseHeader): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgResponseHeader*(b: seq[byte]): Ros2Aimdk_msgsMsgResponseHeader =
  var r = initReader(b,16)
  result = readRos2Aimdk_msgsMsgResponseHeader(r)
  finish(r)
type Ros2Aimdk_msgsMsgCommonState* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgCommonStateMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgCommonStateCodecIdentity* = "UWVMROS1_263f2829cf13b7b12ceda8109834fa333d2da5828cd7a302a1818c044be4699e"
const Ros2Aimdk_msgsMsgCommonStateNativeType* = "aimdk_msgs/msg/CommonState"
const Ros2Aimdk_msgsMsgCommonStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgCommonState_UNKNOWN*: int32 = 0'i32
const Ros2Aimdk_msgsMsgCommonState_SUCCESS*: int32 = 1'i32
const Ros2Aimdk_msgsMsgCommonState_FAILURE*: int32 = 2'i32
const Ros2Aimdk_msgsMsgCommonState_ABORTED*: int32 = 3'i32
const Ros2Aimdk_msgsMsgCommonState_TIMEOUT*: int32 = 4'i32
const Ros2Aimdk_msgsMsgCommonState_INVALID*: int32 = 5'i32
const Ros2Aimdk_msgsMsgCommonState_IN_MANUAL*: int32 = 6'i32
const Ros2Aimdk_msgsMsgCommonState_NOT_READY*: int32 = 100'i32
const Ros2Aimdk_msgsMsgCommonState_PENDING*: int32 = 200'i32
const Ros2Aimdk_msgsMsgCommonState_CREATED*: int32 = 300'i32
const Ros2Aimdk_msgsMsgCommonState_RUNNING*: int32 = 400'i32
proc initRos2Aimdk_msgsMsgCommonState*(): Ros2Aimdk_msgsMsgCommonState =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgCommonState; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgCommonState*(r: var Reader): Ros2Aimdk_msgsMsgCommonState =
  result = initRos2Aimdk_msgsMsgCommonState()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgCommonState): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgCommonState*(b: seq[byte]): Ros2Aimdk_msgsMsgCommonState =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgCommonState(r)
  finish(r)
type Ros2Aimdk_msgsMsgCommonResponse* = object
  `header`*: Ros2Aimdk_msgsMsgResponseHeader
  `status`*: Ros2Aimdk_msgsMsgCommonState
  `message`*: string
const Ros2Aimdk_msgsMsgCommonResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsMsgCommonResponseCodecIdentity* = "UWVMROS1_03f4cf42f82eef5064c9b0563dcfe07bb9e918e8a8d81e71c4d89490bf66afb6"
const Ros2Aimdk_msgsMsgCommonResponseNativeType* = "aimdk_msgs/msg/CommonResponse"
const Ros2Aimdk_msgsMsgCommonResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgCommonResponse*(): Ros2Aimdk_msgsMsgCommonResponse =
  result.`header` = initRos2Aimdk_msgsMsgResponseHeader()
  result.`status` = initRos2Aimdk_msgsMsgCommonState()
  result.`message` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgCommonResponse; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`status`,w)
  putString(w,value.`message`,128)
proc readRos2Aimdk_msgsMsgCommonResponse*(r: var Reader): Ros2Aimdk_msgsMsgCommonResponse =
  result = initRos2Aimdk_msgsMsgCommonResponse()
  result.`header` = readRos2Aimdk_msgsMsgResponseHeader(r)
  result.`status` = readRos2Aimdk_msgsMsgCommonState(r)
  result.`message` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgCommonResponse): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgCommonResponse*(b: seq[byte]): Ros2Aimdk_msgsMsgCommonResponse =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsMsgCommonResponse(r)
  finish(r)
type Ros2Aimdk_msgsMsgCommonTaskResponse* = object
  `header`*: Ros2Aimdk_msgsMsgResponseHeader
  `task_id`*: uint64
  `state`*: Ros2Aimdk_msgsMsgCommonState
const Ros2Aimdk_msgsMsgCommonTaskResponseMaximumWireBytes* = 28
const Ros2Aimdk_msgsMsgCommonTaskResponseCodecIdentity* = "UWVMROS1_6e0f13b88f5320fecc86125c92ef073379d31a439c1b8de3a87466c98f1b9ae2"
const Ros2Aimdk_msgsMsgCommonTaskResponseNativeType* = "aimdk_msgs/msg/CommonTaskResponse"
const Ros2Aimdk_msgsMsgCommonTaskResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgCommonTaskResponse*(): Ros2Aimdk_msgsMsgCommonTaskResponse =
  result.`header` = initRos2Aimdk_msgsMsgResponseHeader()
  result.`task_id` = 0
  result.`state` = initRos2Aimdk_msgsMsgCommonState()
proc writeFields*(value: Ros2Aimdk_msgsMsgCommonTaskResponse; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`task_id`)
  writeFields(value.`state`,w)
proc readRos2Aimdk_msgsMsgCommonTaskResponse*(r: var Reader): Ros2Aimdk_msgsMsgCommonTaskResponse =
  result = initRos2Aimdk_msgsMsgCommonTaskResponse()
  result.`header` = readRos2Aimdk_msgsMsgResponseHeader(r)
  result.`task_id` = getInteger(r,uint64)
  result.`state` = readRos2Aimdk_msgsMsgCommonState(r)
proc encode*(value: Ros2Aimdk_msgsMsgCommonTaskResponse): seq[byte] =
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgCommonTaskResponse*(b: seq[byte]): Ros2Aimdk_msgsMsgCommonTaskResponse =
  var r = initReader(b,28)
  result = readRos2Aimdk_msgsMsgCommonTaskResponse(r)
  finish(r)
type Ros2Aimdk_msgsMsgMessageHeader* = object
  `stamp`*: Ros2Builtin_interfacesMsgTime
  `frame_id`*: string
  `sequence`*: uint32
  `meas_stamp`*: Ros2Builtin_interfacesMsgTime
const Ros2Aimdk_msgsMsgMessageHeaderMaximumWireBytes* = 152
const Ros2Aimdk_msgsMsgMessageHeaderCodecIdentity* = "UWVMROS1_6d8d9a27611d419d618f848c44ebe2c30d5393995d1f4fa7ecd70c34ded52496"
const Ros2Aimdk_msgsMsgMessageHeaderNativeType* = "aimdk_msgs/msg/MessageHeader"
const Ros2Aimdk_msgsMsgMessageHeaderNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMessageHeader*(): Ros2Aimdk_msgsMsgMessageHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
  result.`frame_id` = ""
  result.`sequence` = 0
  result.`meas_stamp` = initRos2Builtin_interfacesMsgTime()
proc writeFields*(value: Ros2Aimdk_msgsMsgMessageHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,128)
  putInteger(w,value.`sequence`)
  writeFields(value.`meas_stamp`,w)
proc readRos2Aimdk_msgsMsgMessageHeader*(r: var Reader): Ros2Aimdk_msgsMsgMessageHeader =
  result = initRos2Aimdk_msgsMsgMessageHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
  result.`frame_id` = getString(r,128)
  result.`sequence` = getInteger(r,uint32)
  result.`meas_stamp` = readRos2Builtin_interfacesMsgTime(r)
proc encode*(value: Ros2Aimdk_msgsMsgMessageHeader): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMessageHeader*(b: seq[byte]): Ros2Aimdk_msgsMsgMessageHeader =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsMsgMessageHeader(r)
  finish(r)
type Ros2Aimdk_msgsMsgFaceEmojiStatus* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `e_path`*: string
  `e_path_list`*: seq[string]
  `e_id`*: uint8
  `mode`*: uint8
  `priority`*: int32
  `status`*: uint8
  `time_to_end_ms`*: float64
const Ros2Aimdk_msgsMsgFaceEmojiStatusMaximumWireBytes* = 2415
const Ros2Aimdk_msgsMsgFaceEmojiStatusCodecIdentity* = "UWVMROS1_3200d2686ea5f26668f00d0249e774572668b4a36b3f8067dae4f93182af89f7"
const Ros2Aimdk_msgsMsgFaceEmojiStatusNativeType* = "aimdk_msgs/msg/FaceEmojiStatus"
const Ros2Aimdk_msgsMsgFaceEmojiStatusNativeIdentity* = ""
const Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_IDLE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_START*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_RUNNING*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_FINISHED*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgFaceEmojiStatus_STATUS_STOPPED*: uint8 = 4'u8
proc initRos2Aimdk_msgsMsgFaceEmojiStatus*(): Ros2Aimdk_msgsMsgFaceEmojiStatus =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`e_path` = ""
  result.`e_path_list` = @[]
  result.`e_id` = 0
  result.`mode` = 0
  result.`priority` = 0
  result.`status` = 0
  result.`time_to_end_ms` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgFaceEmojiStatus; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`e_path`,128)
  if value.`e_path_list`.len > 16: fail(22)
  putInteger(w,uint32(value.`e_path_list`.len))
  for e in value.`e_path_list`:
    putString(w,e,128)
  putInteger(w,value.`e_id`)
  putInteger(w,value.`mode`)
  putInteger(w,value.`priority`)
  putInteger(w,value.`status`)
  putFloat64(w,value.`time_to_end_ms`)
proc readRos2Aimdk_msgsMsgFaceEmojiStatus*(r: var Reader): Ros2Aimdk_msgsMsgFaceEmojiStatus =
  result = initRos2Aimdk_msgsMsgFaceEmojiStatus()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`e_path` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`e_path_list` = newSeq[string](count2)
  for i in 0..<count2:
    result.`e_path_list`[i] = getString(r,128)
  result.`e_id` = getInteger(r,uint8)
  result.`mode` = getInteger(r,uint8)
  result.`priority` = getInteger(r,int32)
  result.`status` = getInteger(r,uint8)
  result.`time_to_end_ms` = getFloat64(r)
proc encode*(value: Ros2Aimdk_msgsMsgFaceEmojiStatus): seq[byte] =
  var w = initWriter(2415)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgFaceEmojiStatus*(b: seq[byte]): Ros2Aimdk_msgsMsgFaceEmojiStatus =
  var r = initReader(b,2415)
  result = readRos2Aimdk_msgsMsgFaceEmojiStatus(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandCommand* = object
  `name`*: string
  `position`*: float64
  `velocity`*: float64
  `acceleration`*: float64
  `deceleration`*: float64
  `effort`*: float64
const Ros2Aimdk_msgsMsgHandCommandMaximumWireBytes* = 172
const Ros2Aimdk_msgsMsgHandCommandCodecIdentity* = "UWVMROS1_910f3d9c0907c60b2613097cc4c1426727987e2ab83f8bcc41787feb472dc4e8"
const Ros2Aimdk_msgsMsgHandCommandNativeType* = "aimdk_msgs/msg/HandCommand"
const Ros2Aimdk_msgsMsgHandCommandNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHandCommand*(): Ros2Aimdk_msgsMsgHandCommand =
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`acceleration` = 0
  result.`deceleration` = 0
  result.`effort` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgHandCommand; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`acceleration`)
  putFloat64(w,value.`deceleration`)
  putFloat64(w,value.`effort`)
proc readRos2Aimdk_msgsMsgHandCommand*(r: var Reader): Ros2Aimdk_msgsMsgHandCommand =
  result = initRos2Aimdk_msgsMsgHandCommand()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`acceleration` = getFloat64(r)
  result.`deceleration` = getFloat64(r)
  result.`effort` = getFloat64(r)
proc encode*(value: Ros2Aimdk_msgsMsgHandCommand): seq[byte] =
  var w = initWriter(172)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandCommand*(b: seq[byte]): Ros2Aimdk_msgsMsgHandCommand =
  var r = initReader(b,172)
  result = readRos2Aimdk_msgsMsgHandCommand(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandType* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgHandTypeMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgHandTypeCodecIdentity* = "UWVMROS1_e90b6ef9fea68be96eef98d3c6ce0120846da0638145a662f35a96edb690a6e6"
const Ros2Aimdk_msgsMsgHandTypeNativeType* = "aimdk_msgs/msg/HandType"
const Ros2Aimdk_msgsMsgHandTypeNativeIdentity* = ""
const Ros2Aimdk_msgsMsgHandType_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgHandType_NIMBLE_HANDS*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgHandType_CLAW*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgHandType_ERROR*: uint8 = 255'u8
proc initRos2Aimdk_msgsMsgHandType*(): Ros2Aimdk_msgsMsgHandType =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgHandType; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgHandType*(r: var Reader): Ros2Aimdk_msgsMsgHandType =
  result = initRos2Aimdk_msgsMsgHandType()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgHandType): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandType*(b: seq[byte]): Ros2Aimdk_msgsMsgHandType =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgHandType(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandCommandArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `left_hand_type`*: Ros2Aimdk_msgsMsgHandType
  `left_hands`*: seq[Ros2Aimdk_msgsMsgHandCommand]
  `right_hand_type`*: Ros2Aimdk_msgsMsgHandType
  `right_hands`*: seq[Ros2Aimdk_msgsMsgHandCommand]
const Ros2Aimdk_msgsMsgHandCommandArrayMaximumWireBytes* = 1538
const Ros2Aimdk_msgsMsgHandCommandArrayCodecIdentity* = "UWVMROS1_6786b9d07c3f807c1b4b98a5f22481a2628c1bd530c04e75ad40a36058f5558e"
const Ros2Aimdk_msgsMsgHandCommandArrayNativeType* = "aimdk_msgs/msg/HandCommandArray"
const Ros2Aimdk_msgsMsgHandCommandArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHandCommandArray*(): Ros2Aimdk_msgsMsgHandCommandArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`left_hand_type` = initRos2Aimdk_msgsMsgHandType()
  result.`left_hands` = @[]
  result.`right_hand_type` = initRos2Aimdk_msgsMsgHandType()
  result.`right_hands` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgHandCommandArray; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`left_hand_type`,w)
  if value.`left_hands`.len > 4: fail(22)
  putInteger(w,uint32(value.`left_hands`.len))
  for e in value.`left_hands`:
    writeFields(e,w)
  writeFields(value.`right_hand_type`,w)
  if value.`right_hands`.len > 4: fail(22)
  putInteger(w,uint32(value.`right_hands`.len))
  for e in value.`right_hands`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgHandCommandArray*(r: var Reader): Ros2Aimdk_msgsMsgHandCommandArray =
  result = initRos2Aimdk_msgsMsgHandCommandArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`left_hand_type` = readRos2Aimdk_msgsMsgHandType(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`left_hands` = newSeq[Ros2Aimdk_msgsMsgHandCommand](count2)
  for i in 0..<count2:
    result.`left_hands`[i] = readRos2Aimdk_msgsMsgHandCommand(r)
  result.`right_hand_type` = readRos2Aimdk_msgsMsgHandType(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 4: fail(22)
  let count4 = int(rawcount4)
  result.`right_hands` = newSeq[Ros2Aimdk_msgsMsgHandCommand](count4)
  for i in 0..<count4:
    result.`right_hands`[i] = readRos2Aimdk_msgsMsgHandCommand(r)
proc encode*(value: Ros2Aimdk_msgsMsgHandCommandArray): seq[byte] =
  var w = initWriter(1538)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandCommandArray*(b: seq[byte]): Ros2Aimdk_msgsMsgHandCommandArray =
  var r = initReader(b,1538)
  result = readRos2Aimdk_msgsMsgHandCommandArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandState* = object
  `name`*: string
  `position`*: float64
  `velocity`*: float64
  `effort`*: float64
  `state`*: int32
  `faultcode`*: int32
const Ros2Aimdk_msgsMsgHandStateMaximumWireBytes* = 164
const Ros2Aimdk_msgsMsgHandStateCodecIdentity* = "UWVMROS1_9cfb695f97c9e314103a224bcb6b321de5f279cdae85d5eef7bec0c7968a875c"
const Ros2Aimdk_msgsMsgHandStateNativeType* = "aimdk_msgs/msg/HandState"
const Ros2Aimdk_msgsMsgHandStateNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHandState*(): Ros2Aimdk_msgsMsgHandState =
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`effort` = 0
  result.`state` = 0
  result.`faultcode` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgHandState; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`effort`)
  putInteger(w,value.`state`)
  putInteger(w,value.`faultcode`)
proc readRos2Aimdk_msgsMsgHandState*(r: var Reader): Ros2Aimdk_msgsMsgHandState =
  result = initRos2Aimdk_msgsMsgHandState()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`effort` = getFloat64(r)
  result.`state` = getInteger(r,int32)
  result.`faultcode` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgHandState): seq[byte] =
  var w = initWriter(164)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandState*(b: seq[byte]): Ros2Aimdk_msgsMsgHandState =
  var r = initReader(b,164)
  result = readRos2Aimdk_msgsMsgHandState(r)
  finish(r)
type Ros2Aimdk_msgsMsgHandStateArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `left_hand_type`*: Ros2Aimdk_msgsMsgHandType
  `left_hands`*: seq[Ros2Aimdk_msgsMsgHandState]
  `right_hand_type`*: Ros2Aimdk_msgsMsgHandType
  `right_hands`*: seq[Ros2Aimdk_msgsMsgHandState]
const Ros2Aimdk_msgsMsgHandStateArrayMaximumWireBytes* = 1474
const Ros2Aimdk_msgsMsgHandStateArrayCodecIdentity* = "UWVMROS1_241862e8351ba851c0b7124277b23dfc09df3344bae750f238422af6e820e46d"
const Ros2Aimdk_msgsMsgHandStateArrayNativeType* = "aimdk_msgs/msg/HandStateArray"
const Ros2Aimdk_msgsMsgHandStateArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgHandStateArray*(): Ros2Aimdk_msgsMsgHandStateArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`left_hand_type` = initRos2Aimdk_msgsMsgHandType()
  result.`left_hands` = @[]
  result.`right_hand_type` = initRos2Aimdk_msgsMsgHandType()
  result.`right_hands` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgHandStateArray; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`left_hand_type`,w)
  if value.`left_hands`.len > 4: fail(22)
  putInteger(w,uint32(value.`left_hands`.len))
  for e in value.`left_hands`:
    writeFields(e,w)
  writeFields(value.`right_hand_type`,w)
  if value.`right_hands`.len > 4: fail(22)
  putInteger(w,uint32(value.`right_hands`.len))
  for e in value.`right_hands`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgHandStateArray*(r: var Reader): Ros2Aimdk_msgsMsgHandStateArray =
  result = initRos2Aimdk_msgsMsgHandStateArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`left_hand_type` = readRos2Aimdk_msgsMsgHandType(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`left_hands` = newSeq[Ros2Aimdk_msgsMsgHandState](count2)
  for i in 0..<count2:
    result.`left_hands`[i] = readRos2Aimdk_msgsMsgHandState(r)
  result.`right_hand_type` = readRos2Aimdk_msgsMsgHandType(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 4: fail(22)
  let count4 = int(rawcount4)
  result.`right_hands` = newSeq[Ros2Aimdk_msgsMsgHandState](count4)
  for i in 0..<count4:
    result.`right_hands`[i] = readRos2Aimdk_msgsMsgHandState(r)
proc encode*(value: Ros2Aimdk_msgsMsgHandStateArray): seq[byte] =
  var w = initWriter(1474)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgHandStateArray*(b: seq[byte]): Ros2Aimdk_msgsMsgHandStateArray =
  var r = initReader(b,1474)
  result = readRos2Aimdk_msgsMsgHandStateArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgJointCommand* = object
  `name`*: string
  `position`*: float64
  `velocity`*: float64
  `effort`*: float64
  `stiffness`*: float64
  `damping`*: float64
const Ros2Aimdk_msgsMsgJointCommandMaximumWireBytes* = 172
const Ros2Aimdk_msgsMsgJointCommandCodecIdentity* = "UWVMROS1_32c4e24dc7ea567136fc811efc68eea5b8d1072a5ed58e1c4b67b4d705a9fc3f"
const Ros2Aimdk_msgsMsgJointCommandNativeType* = "aimdk_msgs/msg/JointCommand"
const Ros2Aimdk_msgsMsgJointCommandNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgJointCommand*(): Ros2Aimdk_msgsMsgJointCommand =
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`effort` = 0
  result.`stiffness` = 0
  result.`damping` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgJointCommand; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`effort`)
  putFloat64(w,value.`stiffness`)
  putFloat64(w,value.`damping`)
proc readRos2Aimdk_msgsMsgJointCommand*(r: var Reader): Ros2Aimdk_msgsMsgJointCommand =
  result = initRos2Aimdk_msgsMsgJointCommand()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`effort` = getFloat64(r)
  result.`stiffness` = getFloat64(r)
  result.`damping` = getFloat64(r)
proc encode*(value: Ros2Aimdk_msgsMsgJointCommand): seq[byte] =
  var w = initWriter(172)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgJointCommand*(b: seq[byte]): Ros2Aimdk_msgsMsgJointCommand =
  var r = initReader(b,172)
  result = readRos2Aimdk_msgsMsgJointCommand(r)
  finish(r)
type Ros2Aimdk_msgsMsgJointCommandArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `joints`*: seq[Ros2Aimdk_msgsMsgJointCommand]
const Ros2Aimdk_msgsMsgJointCommandArrayMaximumWireBytes* = 11164
const Ros2Aimdk_msgsMsgJointCommandArrayCodecIdentity* = "UWVMROS1_b8f8d9b00f02524cfdd21f81d7e683290e92ba0b00d086d4506fd3600123d9d6"
const Ros2Aimdk_msgsMsgJointCommandArrayNativeType* = "aimdk_msgs/msg/JointCommandArray"
const Ros2Aimdk_msgsMsgJointCommandArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgJointCommandArray*(): Ros2Aimdk_msgsMsgJointCommandArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`joints` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgJointCommandArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joints`.len > 64: fail(22)
  putInteger(w,uint32(value.`joints`.len))
  for e in value.`joints`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgJointCommandArray*(r: var Reader): Ros2Aimdk_msgsMsgJointCommandArray =
  result = initRos2Aimdk_msgsMsgJointCommandArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`joints` = newSeq[Ros2Aimdk_msgsMsgJointCommand](count1)
  for i in 0..<count1:
    result.`joints`[i] = readRos2Aimdk_msgsMsgJointCommand(r)
proc encode*(value: Ros2Aimdk_msgsMsgJointCommandArray): seq[byte] =
  var w = initWriter(11164)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgJointCommandArray*(b: seq[byte]): Ros2Aimdk_msgsMsgJointCommandArray =
  var r = initReader(b,11164)
  result = readRos2Aimdk_msgsMsgJointCommandArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgJointState* = object
  `name`*: string
  `position`*: float64
  `velocity`*: float64
  `effort`*: float64
  `coil_temp`*: uint8
  `motor_temp`*: uint8
  `motor_vol`*: uint8
const Ros2Aimdk_msgsMsgJointStateMaximumWireBytes* = 159
const Ros2Aimdk_msgsMsgJointStateCodecIdentity* = "UWVMROS1_1b786e0a54b6e19cbc8cdad4bffc7458534ce3db05064216eb3cf6b50674610f"
const Ros2Aimdk_msgsMsgJointStateNativeType* = "aimdk_msgs/msg/JointState"
const Ros2Aimdk_msgsMsgJointStateNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgJointState*(): Ros2Aimdk_msgsMsgJointState =
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`effort` = 0
  result.`coil_temp` = 0
  result.`motor_temp` = 0
  result.`motor_vol` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgJointState; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`effort`)
  putInteger(w,value.`coil_temp`)
  putInteger(w,value.`motor_temp`)
  putInteger(w,value.`motor_vol`)
proc readRos2Aimdk_msgsMsgJointState*(r: var Reader): Ros2Aimdk_msgsMsgJointState =
  result = initRos2Aimdk_msgsMsgJointState()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`effort` = getFloat64(r)
  result.`coil_temp` = getInteger(r,uint8)
  result.`motor_temp` = getInteger(r,uint8)
  result.`motor_vol` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgJointState): seq[byte] =
  var w = initWriter(159)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgJointState*(b: seq[byte]): Ros2Aimdk_msgsMsgJointState =
  var r = initReader(b,159)
  result = readRos2Aimdk_msgsMsgJointState(r)
  finish(r)
type Ros2Aimdk_msgsMsgJointStateArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `joints`*: seq[Ros2Aimdk_msgsMsgJointState]
const Ros2Aimdk_msgsMsgJointStateArrayMaximumWireBytes* = 10332
const Ros2Aimdk_msgsMsgJointStateArrayCodecIdentity* = "UWVMROS1_6bf212a55e2cbe59e4e1bd675bdb41d3461db28e11d91244c21bac45070683fa"
const Ros2Aimdk_msgsMsgJointStateArrayNativeType* = "aimdk_msgs/msg/JointStateArray"
const Ros2Aimdk_msgsMsgJointStateArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgJointStateArray*(): Ros2Aimdk_msgsMsgJointStateArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`joints` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgJointStateArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joints`.len > 64: fail(22)
  putInteger(w,uint32(value.`joints`.len))
  for e in value.`joints`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgJointStateArray*(r: var Reader): Ros2Aimdk_msgsMsgJointStateArray =
  result = initRos2Aimdk_msgsMsgJointStateArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count1)
  for i in 0..<count1:
    result.`joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
proc encode*(value: Ros2Aimdk_msgsMsgJointStateArray): seq[byte] =
  var w = initWriter(10332)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgJointStateArray*(b: seq[byte]): Ros2Aimdk_msgsMsgJointStateArray =
  var r = initReader(b,10332)
  result = readRos2Aimdk_msgsMsgJointStateArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcAction* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcActionMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcActionCodecIdentity* = "UWVMROS1_a43927486ae637ff4e5b8d60e1f45c91a9e3cf07b4505ea00550c6dc58e9354b"
const Ros2Aimdk_msgsMsgMcActionNativeType* = "aimdk_msgs/msg/McAction"
const Ros2Aimdk_msgsMsgMcActionNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcAction_PASSIVE_DEFAULT*: int32 = 1'i32
const Ros2Aimdk_msgsMsgMcAction_SOFT_EMERGENCY_STOP*: int32 = 2'i32
const Ros2Aimdk_msgsMsgMcAction_DAMPING_DEFAULT*: int32 = 3'i32
const Ros2Aimdk_msgsMsgMcAction_ZERO_TORQUE_DEFAULT*: int32 = 4'i32
const Ros2Aimdk_msgsMsgMcAction_JOINT_DEFAULT*: int32 = 100'i32
const Ros2Aimdk_msgsMsgMcAction_JOINT_FREEZE*: int32 = 101'i32
const Ros2Aimdk_msgsMsgMcAction_STAND_DEFAULT*: int32 = 200'i32
const Ros2Aimdk_msgsMsgMcAction_STAND_BODY_CONTROL*: int32 = 201'i32
const Ros2Aimdk_msgsMsgMcAction_LOCOMOTION_DEFAULT*: int32 = 300'i32
const Ros2Aimdk_msgsMsgMcAction_RUN_DEFAULT*: int32 = 301'i32
const Ros2Aimdk_msgsMsgMcAction_LOCOMOTION_STEP*: int32 = 302'i32
const Ros2Aimdk_msgsMsgMcAction_VR_REMOTE_CONTROLLER*: int32 = 400'i32
const Ros2Aimdk_msgsMsgMcAction_SIT_DOWN_DEFAULT*: int32 = 2000'i32
const Ros2Aimdk_msgsMsgMcAction_CROUCH_DOWN_DEFAULT*: int32 = 2002'i32
const Ros2Aimdk_msgsMsgMcAction_LIE_DOWN_DEFAULT*: int32 = 2004'i32
const Ros2Aimdk_msgsMsgMcAction_STAND_UP_DEFAULT*: int32 = 2005'i32
const Ros2Aimdk_msgsMsgMcAction_ASCEND_STAIRS*: int32 = 2006'i32
const Ros2Aimdk_msgsMsgMcAction_DESCEND_STAIRS*: int32 = 2008'i32
proc initRos2Aimdk_msgsMsgMcAction*(): Ros2Aimdk_msgsMsgMcAction =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcAction; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcAction*(r: var Reader): Ros2Aimdk_msgsMsgMcAction =
  result = initRos2Aimdk_msgsMsgMcAction()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcAction): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcAction*(b: seq[byte]): Ros2Aimdk_msgsMsgMcAction =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcAction(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcActionCommand* = object
  `action`*: Ros2Aimdk_msgsMsgMcAction
  `action_desc`*: string
const Ros2Aimdk_msgsMsgMcActionCommandMaximumWireBytes* = 136
const Ros2Aimdk_msgsMsgMcActionCommandCodecIdentity* = "UWVMROS1_9a529c7988535cbc65c36425ffb0935b210a806906598baa3a2f1f717df4f648"
const Ros2Aimdk_msgsMsgMcActionCommandNativeType* = "aimdk_msgs/msg/McActionCommand"
const Ros2Aimdk_msgsMsgMcActionCommandNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcActionCommand*(): Ros2Aimdk_msgsMsgMcActionCommand =
  result.`action` = initRos2Aimdk_msgsMsgMcAction()
  result.`action_desc` = ""
proc writeFields*(value: Ros2Aimdk_msgsMsgMcActionCommand; w: var Writer) =
  writeFields(value.`action`,w)
  putString(w,value.`action_desc`,128)
proc readRos2Aimdk_msgsMsgMcActionCommand*(r: var Reader): Ros2Aimdk_msgsMsgMcActionCommand =
  result = initRos2Aimdk_msgsMsgMcActionCommand()
  result.`action` = readRos2Aimdk_msgsMsgMcAction(r)
  result.`action_desc` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsMsgMcActionCommand): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcActionCommand*(b: seq[byte]): Ros2Aimdk_msgsMsgMcActionCommand =
  var r = initReader(b,136)
  result = readRos2Aimdk_msgsMsgMcActionCommand(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcActionStatus* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcActionStatusMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcActionStatusCodecIdentity* = "UWVMROS1_8c05e9540004b968b042b32ed0164af4857574186776f311be9b3ecde209ad48"
const Ros2Aimdk_msgsMsgMcActionStatusNativeType* = "aimdk_msgs/msg/McActionStatus"
const Ros2Aimdk_msgsMsgMcActionStatusNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcActionStatus_IDLE*: int32 = 0'i32
const Ros2Aimdk_msgsMsgMcActionStatus_RUNNING*: int32 = 100'i32
const Ros2Aimdk_msgsMsgMcActionStatus_TRANSITION*: int32 = 200'i32
proc initRos2Aimdk_msgsMsgMcActionStatus*(): Ros2Aimdk_msgsMsgMcActionStatus =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcActionStatus; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcActionStatus*(r: var Reader): Ros2Aimdk_msgsMsgMcActionStatus =
  result = initRos2Aimdk_msgsMsgMcActionStatus()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcActionStatus): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcActionStatus*(b: seq[byte]): Ros2Aimdk_msgsMsgMcActionStatus =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcActionStatus(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcActionInfo* = object
  `current_action`*: Ros2Aimdk_msgsMsgMcAction
  `action_desc`*: string
  `status`*: Ros2Aimdk_msgsMsgMcActionStatus
const Ros2Aimdk_msgsMsgMcActionInfoMaximumWireBytes* = 140
const Ros2Aimdk_msgsMsgMcActionInfoCodecIdentity* = "UWVMROS1_9c3c209060709befea26f340e6a607f4c6ddb00c638d1dedf5dd0cfa23f2e5e9"
const Ros2Aimdk_msgsMsgMcActionInfoNativeType* = "aimdk_msgs/msg/McActionInfo"
const Ros2Aimdk_msgsMsgMcActionInfoNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcActionInfo*(): Ros2Aimdk_msgsMsgMcActionInfo =
  result.`current_action` = initRos2Aimdk_msgsMsgMcAction()
  result.`action_desc` = ""
  result.`status` = initRos2Aimdk_msgsMsgMcActionStatus()
proc writeFields*(value: Ros2Aimdk_msgsMsgMcActionInfo; w: var Writer) =
  writeFields(value.`current_action`,w)
  putString(w,value.`action_desc`,128)
  writeFields(value.`status`,w)
proc readRos2Aimdk_msgsMsgMcActionInfo*(r: var Reader): Ros2Aimdk_msgsMsgMcActionInfo =
  result = initRos2Aimdk_msgsMsgMcActionInfo()
  result.`current_action` = readRos2Aimdk_msgsMsgMcAction(r)
  result.`action_desc` = getString(r,128)
  result.`status` = readRos2Aimdk_msgsMsgMcActionStatus(r)
proc encode*(value: Ros2Aimdk_msgsMsgMcActionInfo): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcActionInfo*(b: seq[byte]): Ros2Aimdk_msgsMsgMcActionInfo =
  var r = initReader(b,140)
  result = readRos2Aimdk_msgsMsgMcActionInfo(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcControlArea* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcControlAreaMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcControlAreaCodecIdentity* = "UWVMROS1_ca241b8a191674136f0eeb0deee84b5e284de71f384038c9a5d6083eb4fc75c9"
const Ros2Aimdk_msgsMsgMcControlAreaNativeType* = "aimdk_msgs/msg/McControlArea"
const Ros2Aimdk_msgsMsgMcControlAreaNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcControlArea_NONE*: int32 = 0'i32
const Ros2Aimdk_msgsMsgMcControlArea_LEFT_HAND*: int32 = 1'i32
const Ros2Aimdk_msgsMsgMcControlArea_RIGHT_HAND*: int32 = 2'i32
const Ros2Aimdk_msgsMsgMcControlArea_HEAD*: int32 = 4'i32
const Ros2Aimdk_msgsMsgMcControlArea_WAIST*: int32 = 8'i32
proc initRos2Aimdk_msgsMsgMcControlArea*(): Ros2Aimdk_msgsMsgMcControlArea =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcControlArea; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcControlArea*(r: var Reader): Ros2Aimdk_msgsMsgMcControlArea =
  result = initRos2Aimdk_msgsMsgMcControlArea()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcControlArea): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcControlArea*(b: seq[byte]): Ros2Aimdk_msgsMsgMcControlArea =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcControlArea(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcInputAction* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcInputActionMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcInputActionCodecIdentity* = "UWVMROS1_7016737845145fd03a104665957b475c512400775b93981573a40d0da30e15d9"
const Ros2Aimdk_msgsMsgMcInputActionNativeType* = "aimdk_msgs/msg/McInputAction"
const Ros2Aimdk_msgsMsgMcInputActionNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_ADD*: int32 = 1001'i32
const Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_MODIFY*: int32 = 1002'i32
const Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_DELETE*: int32 = 1003'i32
const Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_ENABLE*: int32 = 2001'i32
const Ros2Aimdk_msgsMsgMcInputAction_INPUTACTION_DISABLE*: int32 = 2002'i32
proc initRos2Aimdk_msgsMsgMcInputAction*(): Ros2Aimdk_msgsMsgMcInputAction =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcInputAction; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcInputAction*(r: var Reader): Ros2Aimdk_msgsMsgMcInputAction =
  result = initRos2Aimdk_msgsMsgMcInputAction()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcInputAction): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcInputAction*(b: seq[byte]): Ros2Aimdk_msgsMsgMcInputAction =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcInputAction(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcInputSource* = object
  `name`*: string
  `priority`*: int32
  `timeout`*: int32
const Ros2Aimdk_msgsMsgMcInputSourceMaximumWireBytes* = 140
const Ros2Aimdk_msgsMsgMcInputSourceCodecIdentity* = "UWVMROS1_4909fe165c71d1104207b393ba76d55347aa02836ebac251f6b57259ced1d1dd"
const Ros2Aimdk_msgsMsgMcInputSourceNativeType* = "aimdk_msgs/msg/McInputSource"
const Ros2Aimdk_msgsMsgMcInputSourceNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcInputSource*(): Ros2Aimdk_msgsMsgMcInputSource =
  result.`name` = ""
  result.`priority` = 0
  result.`timeout` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcInputSource; w: var Writer) =
  putString(w,value.`name`,128)
  putInteger(w,value.`priority`)
  putInteger(w,value.`timeout`)
proc readRos2Aimdk_msgsMsgMcInputSource*(r: var Reader): Ros2Aimdk_msgsMsgMcInputSource =
  result = initRos2Aimdk_msgsMsgMcInputSource()
  result.`name` = getString(r,128)
  result.`priority` = getInteger(r,int32)
  result.`timeout` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcInputSource): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcInputSource*(b: seq[byte]): Ros2Aimdk_msgsMsgMcInputSource =
  var r = initReader(b,140)
  result = readRos2Aimdk_msgsMsgMcInputSource(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcLocomotionVelocity* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `source`*: string
  `forward_velocity`*: float64
  `lateral_velocity`*: float64
  `angular_velocity`*: float64
const Ros2Aimdk_msgsMsgMcLocomotionVelocityMaximumWireBytes* = 308
const Ros2Aimdk_msgsMsgMcLocomotionVelocityCodecIdentity* = "UWVMROS1_a3c45cd56bc3098af00eefba2b2fc5c34c6439228d3429ab077d80b60ef8ca00"
const Ros2Aimdk_msgsMsgMcLocomotionVelocityNativeType* = "aimdk_msgs/msg/McLocomotionVelocity"
const Ros2Aimdk_msgsMsgMcLocomotionVelocityNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgMcLocomotionVelocity*(): Ros2Aimdk_msgsMsgMcLocomotionVelocity =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`source` = ""
  result.`forward_velocity` = 0
  result.`lateral_velocity` = 0
  result.`angular_velocity` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcLocomotionVelocity; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`source`,128)
  putFloat64(w,value.`forward_velocity`)
  putFloat64(w,value.`lateral_velocity`)
  putFloat64(w,value.`angular_velocity`)
proc readRos2Aimdk_msgsMsgMcLocomotionVelocity*(r: var Reader): Ros2Aimdk_msgsMsgMcLocomotionVelocity =
  result = initRos2Aimdk_msgsMsgMcLocomotionVelocity()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`source` = getString(r,128)
  result.`forward_velocity` = getFloat64(r)
  result.`lateral_velocity` = getFloat64(r)
  result.`angular_velocity` = getFloat64(r)
proc encode*(value: Ros2Aimdk_msgsMsgMcLocomotionVelocity): seq[byte] =
  var w = initWriter(308)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcLocomotionVelocity*(b: seq[byte]): Ros2Aimdk_msgsMsgMcLocomotionVelocity =
  var r = initReader(b,308)
  result = readRos2Aimdk_msgsMsgMcLocomotionVelocity(r)
  finish(r)
type Ros2Aimdk_msgsMsgMcPresetMotion* = object
  `value`*: int32
const Ros2Aimdk_msgsMsgMcPresetMotionMaximumWireBytes* = 4
const Ros2Aimdk_msgsMsgMcPresetMotionCodecIdentity* = "UWVMROS1_7421ee5b50a30799907e6f521dd97874158a945019f09cecf168a8f3130c9153"
const Ros2Aimdk_msgsMsgMcPresetMotionNativeType* = "aimdk_msgs/msg/McPresetMotion"
const Ros2Aimdk_msgsMsgMcPresetMotionNativeIdentity* = ""
const Ros2Aimdk_msgsMsgMcPresetMotion_RAISE_HAND*: int32 = 1001'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_WAVE_HAND*: int32 = 1002'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_SHAKE_HAND*: int32 = 1003'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_FLYING_KISS_HAND*: int32 = 1004'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_CLAP_HAND*: int32 = 1008'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_TURN_WAVE_HAND*: int32 = 2001'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BOW*: int32 = 3001'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_LIKE*: int32 = 3002'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_YE*: int32 = 3003'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SWEATHEART*: int32 = 3004'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_SALUTE*: int32 = 1013'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SAD*: int32 = 3006'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_LIGHTWAVE*: int32 = 3007'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_HUG*: int32 = 3008'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_HANDX*: int32 = 3009'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_CHESTWAVE*: int32 = 3010'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_CHEER*: int32 = 3011'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BLOWKISS*: int32 = 3012'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BASSDANCE1*: int32 = 3013'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_BASSDANCE2*: int32 = 3014'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_HITCLAP*: int32 = 3015'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_SPEAK*: int32 = 3016'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_CLIPFIST*: int32 = 1009'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_PHOTOPOSTURE*: int32 = 3018'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_INTERACTION_PHOTOTRIPPLEPOSTURE*: int32 = 3019'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_POINT_HEAD*: int32 = 4001'i32
const Ros2Aimdk_msgsMsgMcPresetMotion_SHAKE_HEAD*: int32 = 4002'i32
proc initRos2Aimdk_msgsMsgMcPresetMotion*(): Ros2Aimdk_msgsMsgMcPresetMotion =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgMcPresetMotion; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgMcPresetMotion*(r: var Reader): Ros2Aimdk_msgsMsgMcPresetMotion =
  result = initRos2Aimdk_msgsMsgMcPresetMotion()
  result.`value` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgMcPresetMotion): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgMcPresetMotion*(b: seq[byte]): Ros2Aimdk_msgsMsgMcPresetMotion =
  var r = initReader(b,4)
  result = readRos2Aimdk_msgsMsgMcPresetMotion(r)
  finish(r)
type Ros2Aimdk_msgsMsgTtsPriorityLevel* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgTtsPriorityLevelMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgTtsPriorityLevelCodecIdentity* = "UWVMROS1_38bce7b033528697c6667c348c66d327a0d63f176b519189d3720279591cd90a"
const Ros2Aimdk_msgsMsgTtsPriorityLevelNativeType* = "aimdk_msgs/msg/TtsPriorityLevel"
const Ros2Aimdk_msgsMsgTtsPriorityLevelNativeIdentity* = ""
const Ros2Aimdk_msgsMsgTtsPriorityLevel_UNKNOWN*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_BACKGROUND_L1*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_SERVICE_L2*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_MISSION_L4*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_INTERACTION_L6*: uint8 = 6'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_WARNING_L8*: uint8 = 8'u8
const Ros2Aimdk_msgsMsgTtsPriorityLevel_SAFETY_L10*: uint8 = 10'u8
proc initRos2Aimdk_msgsMsgTtsPriorityLevel*(): Ros2Aimdk_msgsMsgTtsPriorityLevel =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgTtsPriorityLevel; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgTtsPriorityLevel*(r: var Reader): Ros2Aimdk_msgsMsgTtsPriorityLevel =
  result = initRos2Aimdk_msgsMsgTtsPriorityLevel()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgTtsPriorityLevel): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgTtsPriorityLevel*(b: seq[byte]): Ros2Aimdk_msgsMsgTtsPriorityLevel =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgTtsPriorityLevel(r)
  finish(r)
type Ros2Aimdk_msgsMsgPlayMediaFileRequest* = object
  `file_name`*: string
  `sample_rate`*: uint32
  `priority_level`*: Ros2Aimdk_msgsMsgTtsPriorityLevel
  `priority_weight`*: uint32
  `domain`*: string
  `trace_id`*: string
  `is_interrupted`*: bool
const Ros2Aimdk_msgsMsgPlayMediaFileRequestMaximumWireBytes* = 406
const Ros2Aimdk_msgsMsgPlayMediaFileRequestCodecIdentity* = "UWVMROS1_de5d1ad3e7b16b0aaac78736982e24c1a1f3366952cb1b08f59a86bfaf70d254"
const Ros2Aimdk_msgsMsgPlayMediaFileRequestNativeType* = "aimdk_msgs/msg/PlayMediaFileRequest"
const Ros2Aimdk_msgsMsgPlayMediaFileRequestNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgPlayMediaFileRequest*(): Ros2Aimdk_msgsMsgPlayMediaFileRequest =
  result.`file_name` = ""
  result.`sample_rate` = 0
  result.`priority_level` = initRos2Aimdk_msgsMsgTtsPriorityLevel()
  result.`priority_weight` = 0
  result.`domain` = ""
  result.`trace_id` = ""
  result.`is_interrupted` = false
proc writeFields*(value: Ros2Aimdk_msgsMsgPlayMediaFileRequest; w: var Writer) =
  putString(w,value.`file_name`,128)
  putInteger(w,value.`sample_rate`)
  writeFields(value.`priority_level`,w)
  putInteger(w,value.`priority_weight`)
  putString(w,value.`domain`,128)
  putString(w,value.`trace_id`,128)
  putBool(w,value.`is_interrupted`)
proc readRos2Aimdk_msgsMsgPlayMediaFileRequest*(r: var Reader): Ros2Aimdk_msgsMsgPlayMediaFileRequest =
  result = initRos2Aimdk_msgsMsgPlayMediaFileRequest()
  result.`file_name` = getString(r,128)
  result.`sample_rate` = getInteger(r,uint32)
  result.`priority_level` = readRos2Aimdk_msgsMsgTtsPriorityLevel(r)
  result.`priority_weight` = getInteger(r,uint32)
  result.`domain` = getString(r,128)
  result.`trace_id` = getString(r,128)
  result.`is_interrupted` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsMsgPlayMediaFileRequest): seq[byte] =
  var w = initWriter(406)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPlayMediaFileRequest*(b: seq[byte]): Ros2Aimdk_msgsMsgPlayMediaFileRequest =
  var r = initReader(b,406)
  result = readRos2Aimdk_msgsMsgPlayMediaFileRequest(r)
  finish(r)
type Ros2Aimdk_msgsMsgPlayTtsRequest* = object
  `text`*: string
  `priority_level`*: Ros2Aimdk_msgsMsgTtsPriorityLevel
  `priority_weight`*: uint32
  `domain`*: string
  `trace_id`*: string
  `is_interrupted`*: bool
const Ros2Aimdk_msgsMsgPlayTtsRequestMaximumWireBytes* = 402
const Ros2Aimdk_msgsMsgPlayTtsRequestCodecIdentity* = "UWVMROS1_d6410f21a03f560429a39216f36ce03ad040323054f5775b75586b3890802bbd"
const Ros2Aimdk_msgsMsgPlayTtsRequestNativeType* = "aimdk_msgs/msg/PlayTtsRequest"
const Ros2Aimdk_msgsMsgPlayTtsRequestNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgPlayTtsRequest*(): Ros2Aimdk_msgsMsgPlayTtsRequest =
  result.`text` = ""
  result.`priority_level` = initRos2Aimdk_msgsMsgTtsPriorityLevel()
  result.`priority_weight` = 0
  result.`domain` = ""
  result.`trace_id` = ""
  result.`is_interrupted` = false
proc writeFields*(value: Ros2Aimdk_msgsMsgPlayTtsRequest; w: var Writer) =
  putString(w,value.`text`,128)
  writeFields(value.`priority_level`,w)
  putInteger(w,value.`priority_weight`)
  putString(w,value.`domain`,128)
  putString(w,value.`trace_id`,128)
  putBool(w,value.`is_interrupted`)
proc readRos2Aimdk_msgsMsgPlayTtsRequest*(r: var Reader): Ros2Aimdk_msgsMsgPlayTtsRequest =
  result = initRos2Aimdk_msgsMsgPlayTtsRequest()
  result.`text` = getString(r,128)
  result.`priority_level` = readRos2Aimdk_msgsMsgTtsPriorityLevel(r)
  result.`priority_weight` = getInteger(r,uint32)
  result.`domain` = getString(r,128)
  result.`trace_id` = getString(r,128)
  result.`is_interrupted` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsMsgPlayTtsRequest): seq[byte] =
  var w = initWriter(402)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPlayTtsRequest*(b: seq[byte]): Ros2Aimdk_msgsMsgPlayTtsRequest =
  var r = initReader(b,402)
  result = readRos2Aimdk_msgsMsgPlayTtsRequest(r)
  finish(r)
type Ros2Aimdk_msgsMsgPlayTtsResponse* = object
  `text`*: string
  `priority_level`*: Ros2Aimdk_msgsMsgTtsPriorityLevel
  `priority_weight`*: uint32
  `domain`*: string
  `trace_id`*: string
  `is_success`*: bool
  `error_message`*: string
  `estimated_duration`*: uint32
const Ros2Aimdk_msgsMsgPlayTtsResponseMaximumWireBytes* = 538
const Ros2Aimdk_msgsMsgPlayTtsResponseCodecIdentity* = "UWVMROS1_8347d2c5ae04c1db9ea2fd0c6afdffcb5e1327a170e15a7e861a00a08c8a8af3"
const Ros2Aimdk_msgsMsgPlayTtsResponseNativeType* = "aimdk_msgs/msg/PlayTtsResponse"
const Ros2Aimdk_msgsMsgPlayTtsResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgPlayTtsResponse*(): Ros2Aimdk_msgsMsgPlayTtsResponse =
  result.`text` = ""
  result.`priority_level` = initRos2Aimdk_msgsMsgTtsPriorityLevel()
  result.`priority_weight` = 0
  result.`domain` = ""
  result.`trace_id` = ""
  result.`is_success` = false
  result.`error_message` = ""
  result.`estimated_duration` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgPlayTtsResponse; w: var Writer) =
  putString(w,value.`text`,128)
  writeFields(value.`priority_level`,w)
  putInteger(w,value.`priority_weight`)
  putString(w,value.`domain`,128)
  putString(w,value.`trace_id`,128)
  putBool(w,value.`is_success`)
  putString(w,value.`error_message`,128)
  putInteger(w,value.`estimated_duration`)
proc readRos2Aimdk_msgsMsgPlayTtsResponse*(r: var Reader): Ros2Aimdk_msgsMsgPlayTtsResponse =
  result = initRos2Aimdk_msgsMsgPlayTtsResponse()
  result.`text` = getString(r,128)
  result.`priority_level` = readRos2Aimdk_msgsMsgTtsPriorityLevel(r)
  result.`priority_weight` = getInteger(r,uint32)
  result.`domain` = getString(r,128)
  result.`trace_id` = getString(r,128)
  result.`is_success` = getBool(r)
  result.`error_message` = getString(r,128)
  result.`estimated_duration` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsMsgPlayTtsResponse): seq[byte] =
  var w = initWriter(538)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPlayTtsResponse*(b: seq[byte]): Ros2Aimdk_msgsMsgPlayTtsResponse =
  var r = initReader(b,538)
  result = readRos2Aimdk_msgsMsgPlayTtsResponse(r)
  finish(r)
type Ros2Aimdk_msgsMsgPmuState* = object
  `pmu_software_version`*: string
  `pmu_hardware_version`*: string
  `pmu_protocol_version`*: string
  `pmu_bool_status`*: uint32
  `head_power_current`*: float64
  `output_48v_current`*: float64
  `rk3588_current`*: float64
  `output_12v_current`*: float64
  `bus_48v_current`*: float64
  `orin_current`*: float64
  `bus_48v_pmos_voltage`*: float64
  `battery_voltage`*: float64
  `fan_voltage`*: float64
  `output_12v_voltage`*: float64
  `output_48v_voltage`*: float64
  `bus_48v_voltage`*: float64
  `head_power_voltage`*: float64
  `orin_voltage`*: float64
  `rk3588_voltage`*: float64
  `bms_manufacturer`*: string
  `bms_serial_number`*: string
  `bms_hardware_version`*: string
  `bms_software_version`*: string
  `bms_status_bits`*: uint32
  `battery_balance_line_resistance`*: uint16
  `battery_pack_voltage`*: float64
  `battery_current`*: float64
  `battery_output_power`*: float64
  `battery_temperature`*: float64
  `battery_remaining_capacity`*: uint32
  `battery_remaining_capacity_percentage`*: uint8
  `battery_cycle_count`*: uint16
  `battery_cycle_total_capacity`*: uint32
const Ros2Aimdk_msgsMsgPmuStateMaximumWireBytes* = 1097
const Ros2Aimdk_msgsMsgPmuStateCodecIdentity* = "UWVMROS1_5b7bda78c820384993ef98ff4563e61cc55fa29d5176db91b91bd787c91b8a1c"
const Ros2Aimdk_msgsMsgPmuStateNativeType* = "aimdk_msgs/msg/PmuState"
const Ros2Aimdk_msgsMsgPmuStateNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgPmuState*(): Ros2Aimdk_msgsMsgPmuState =
  result.`pmu_software_version` = ""
  result.`pmu_hardware_version` = ""
  result.`pmu_protocol_version` = ""
  result.`pmu_bool_status` = 0
  result.`head_power_current` = 0
  result.`output_48v_current` = 0
  result.`rk3588_current` = 0
  result.`output_12v_current` = 0
  result.`bus_48v_current` = 0
  result.`orin_current` = 0
  result.`bus_48v_pmos_voltage` = 0
  result.`battery_voltage` = 0
  result.`fan_voltage` = 0
  result.`output_12v_voltage` = 0
  result.`output_48v_voltage` = 0
  result.`bus_48v_voltage` = 0
  result.`head_power_voltage` = 0
  result.`orin_voltage` = 0
  result.`rk3588_voltage` = 0
  result.`bms_manufacturer` = ""
  result.`bms_serial_number` = ""
  result.`bms_hardware_version` = ""
  result.`bms_software_version` = ""
  result.`bms_status_bits` = 0
  result.`battery_balance_line_resistance` = 0
  result.`battery_pack_voltage` = 0
  result.`battery_current` = 0
  result.`battery_output_power` = 0
  result.`battery_temperature` = 0
  result.`battery_remaining_capacity` = 0
  result.`battery_remaining_capacity_percentage` = 0
  result.`battery_cycle_count` = 0
  result.`battery_cycle_total_capacity` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgPmuState; w: var Writer) =
  putString(w,value.`pmu_software_version`,128)
  putString(w,value.`pmu_hardware_version`,128)
  putString(w,value.`pmu_protocol_version`,128)
  putInteger(w,value.`pmu_bool_status`)
  putFloat64(w,value.`head_power_current`)
  putFloat64(w,value.`output_48v_current`)
  putFloat64(w,value.`rk3588_current`)
  putFloat64(w,value.`output_12v_current`)
  putFloat64(w,value.`bus_48v_current`)
  putFloat64(w,value.`orin_current`)
  putFloat64(w,value.`bus_48v_pmos_voltage`)
  putFloat64(w,value.`battery_voltage`)
  putFloat64(w,value.`fan_voltage`)
  putFloat64(w,value.`output_12v_voltage`)
  putFloat64(w,value.`output_48v_voltage`)
  putFloat64(w,value.`bus_48v_voltage`)
  putFloat64(w,value.`head_power_voltage`)
  putFloat64(w,value.`orin_voltage`)
  putFloat64(w,value.`rk3588_voltage`)
  putString(w,value.`bms_manufacturer`,128)
  putString(w,value.`bms_serial_number`,128)
  putString(w,value.`bms_hardware_version`,128)
  putString(w,value.`bms_software_version`,128)
  putInteger(w,value.`bms_status_bits`)
  putInteger(w,value.`battery_balance_line_resistance`)
  putFloat64(w,value.`battery_pack_voltage`)
  putFloat64(w,value.`battery_current`)
  putFloat64(w,value.`battery_output_power`)
  putFloat64(w,value.`battery_temperature`)
  putInteger(w,value.`battery_remaining_capacity`)
  putInteger(w,value.`battery_remaining_capacity_percentage`)
  putInteger(w,value.`battery_cycle_count`)
  putInteger(w,value.`battery_cycle_total_capacity`)
proc readRos2Aimdk_msgsMsgPmuState*(r: var Reader): Ros2Aimdk_msgsMsgPmuState =
  result = initRos2Aimdk_msgsMsgPmuState()
  result.`pmu_software_version` = getString(r,128)
  result.`pmu_hardware_version` = getString(r,128)
  result.`pmu_protocol_version` = getString(r,128)
  result.`pmu_bool_status` = getInteger(r,uint32)
  result.`head_power_current` = getFloat64(r)
  result.`output_48v_current` = getFloat64(r)
  result.`rk3588_current` = getFloat64(r)
  result.`output_12v_current` = getFloat64(r)
  result.`bus_48v_current` = getFloat64(r)
  result.`orin_current` = getFloat64(r)
  result.`bus_48v_pmos_voltage` = getFloat64(r)
  result.`battery_voltage` = getFloat64(r)
  result.`fan_voltage` = getFloat64(r)
  result.`output_12v_voltage` = getFloat64(r)
  result.`output_48v_voltage` = getFloat64(r)
  result.`bus_48v_voltage` = getFloat64(r)
  result.`head_power_voltage` = getFloat64(r)
  result.`orin_voltage` = getFloat64(r)
  result.`rk3588_voltage` = getFloat64(r)
  result.`bms_manufacturer` = getString(r,128)
  result.`bms_serial_number` = getString(r,128)
  result.`bms_hardware_version` = getString(r,128)
  result.`bms_software_version` = getString(r,128)
  result.`bms_status_bits` = getInteger(r,uint32)
  result.`battery_balance_line_resistance` = getInteger(r,uint16)
  result.`battery_pack_voltage` = getFloat64(r)
  result.`battery_current` = getFloat64(r)
  result.`battery_output_power` = getFloat64(r)
  result.`battery_temperature` = getFloat64(r)
  result.`battery_remaining_capacity` = getInteger(r,uint32)
  result.`battery_remaining_capacity_percentage` = getInteger(r,uint8)
  result.`battery_cycle_count` = getInteger(r,uint16)
  result.`battery_cycle_total_capacity` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsMsgPmuState): seq[byte] =
  var w = initWriter(1097)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgPmuState*(b: seq[byte]): Ros2Aimdk_msgsMsgPmuState =
  var r = initReader(b,1097)
  result = readRos2Aimdk_msgsMsgPmuState(r)
  finish(r)
type Ros2Aimdk_msgsMsgProcessedAudioOutput* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `stream_id`*: uint32
  `audio_vad_state`*: Ros2Aimdk_msgsMsgAudioVadStateType
  `audio_data`*: seq[uint8]
const Ros2Aimdk_msgsMsgProcessedAudioOutputMaximumWireBytes* = 417
const Ros2Aimdk_msgsMsgProcessedAudioOutputCodecIdentity* = "UWVMROS1_8b0ea5b4fc3db2efe41730f74a261ee6ea94ad34ee35ff42ae5288ddf501cc30"
const Ros2Aimdk_msgsMsgProcessedAudioOutputNativeType* = "aimdk_msgs/msg/ProcessedAudioOutput"
const Ros2Aimdk_msgsMsgProcessedAudioOutputNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgProcessedAudioOutput*(): Ros2Aimdk_msgsMsgProcessedAudioOutput =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`stream_id` = 0
  result.`audio_vad_state` = initRos2Aimdk_msgsMsgAudioVadStateType()
  result.`audio_data` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgProcessedAudioOutput; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`stream_id`)
  writeFields(value.`audio_vad_state`,w)
  if value.`audio_data`.len > 256: fail(22)
  putInteger(w,uint32(value.`audio_data`.len))
  for e in value.`audio_data`:
    putInteger(w,e)
proc readRos2Aimdk_msgsMsgProcessedAudioOutput*(r: var Reader): Ros2Aimdk_msgsMsgProcessedAudioOutput =
  result = initRos2Aimdk_msgsMsgProcessedAudioOutput()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`stream_id` = getInteger(r,uint32)
  result.`audio_vad_state` = readRos2Aimdk_msgsMsgAudioVadStateType(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 256: fail(22)
  let count3 = int(rawcount3)
  result.`audio_data` = newSeq[uint8](count3)
  for i in 0..<count3:
    result.`audio_data`[i] = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgProcessedAudioOutput): seq[byte] =
  var w = initWriter(417)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgProcessedAudioOutput*(b: seq[byte]): Ros2Aimdk_msgsMsgProcessedAudioOutput =
  var r = initReader(b,417)
  result = readRos2Aimdk_msgsMsgProcessedAudioOutput(r)
  finish(r)
type Ros2Aimdk_msgsMsgTouchState* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `event_type`*: uint8
  `data`*: array[8,uint32]
  `threshold`*: array[8,uint32]
  `is_touched`*: array[8,bool]
const Ros2Aimdk_msgsMsgTouchStateMaximumWireBytes* = 225
const Ros2Aimdk_msgsMsgTouchStateCodecIdentity* = "UWVMROS1_90d5626f09f2254a102224e74c1f8a4d8db63910b7e5eeafa519afd79c7b1564"
const Ros2Aimdk_msgsMsgTouchStateNativeType* = "aimdk_msgs/msg/TouchState"
const Ros2Aimdk_msgsMsgTouchStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgTouchState_UNKNOWN*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgTouchState_IDLE*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgTouchState_TOUCH*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgTouchState_SLIDE*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgTouchState_PAT_ONCE*: uint8 = 4'u8
const Ros2Aimdk_msgsMsgTouchState_PAT_TWICE*: uint8 = 5'u8
const Ros2Aimdk_msgsMsgTouchState_PAT_TRIPLE*: uint8 = 6'u8
proc initRos2Aimdk_msgsMsgTouchState*(): Ros2Aimdk_msgsMsgTouchState =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`event_type` = 0
  result.`data` = [0,0,0,0,0,0,0,0]
  result.`threshold` = [0,0,0,0,0,0,0,0]
  result.`is_touched` = [false,false,false,false,false,false,false,false]
proc writeFields*(value: Ros2Aimdk_msgsMsgTouchState; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`event_type`)
  for e in value.`data`:
    putInteger(w,e)
  for e in value.`threshold`:
    putInteger(w,e)
  for e in value.`is_touched`:
    putBool(w,e)
proc readRos2Aimdk_msgsMsgTouchState*(r: var Reader): Ros2Aimdk_msgsMsgTouchState =
  result = initRos2Aimdk_msgsMsgTouchState()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`event_type` = getInteger(r,uint8)
  let count2 = 8
  for i in 0..<count2:
    result.`data`[i] = getInteger(r,uint32)
  let count3 = 8
  for i in 0..<count3:
    result.`threshold`[i] = getInteger(r,uint32)
  let count4 = 8
  for i in 0..<count4:
    result.`is_touched`[i] = getBool(r)
proc encode*(value: Ros2Aimdk_msgsMsgTouchState): seq[byte] =
  var w = initWriter(225)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgTouchState*(b: seq[byte]): Ros2Aimdk_msgsMsgTouchState =
  var r = initReader(b,225)
  result = readRos2Aimdk_msgsMsgTouchState(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetAllJointState_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetAllJointState_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetAllJointState_RequestCodecIdentity* = "UWVMROS1_6ebdd4b2a15c8d5f3089fa93003d73adb818d92b51ecb65ea817b72e0ee90260"
const Ros2Aimdk_msgsSrvGetAllJointState_RequestNativeType* = "aimdk_msgs/srv/GetAllJointState_Request"
const Ros2Aimdk_msgsSrvGetAllJointState_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetAllJointState_Request*(): Ros2Aimdk_msgsSrvGetAllJointState_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetAllJointState_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetAllJointState_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetAllJointState_Request =
  result = initRos2Aimdk_msgsSrvGetAllJointState_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetAllJointState_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetAllJointState_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetAllJointState_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetAllJointState_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetAllJointState_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `head_joints`*: seq[Ros2Aimdk_msgsMsgJointState]
  `arm_joints`*: seq[Ros2Aimdk_msgsMsgJointState]
  `waist_joints`*: seq[Ros2Aimdk_msgsMsgJointState]
  `leg_joints`*: seq[Ros2Aimdk_msgsMsgJointState]
const Ros2Aimdk_msgsSrvGetAllJointState_ResponseMaximumWireBytes* = 2712
const Ros2Aimdk_msgsSrvGetAllJointState_ResponseCodecIdentity* = "UWVMROS1_14baa3fa0f7685798bdc9f15f4f65ca87070ca388fcbe65696fa030b0d68f793"
const Ros2Aimdk_msgsSrvGetAllJointState_ResponseNativeType* = "aimdk_msgs/srv/GetAllJointState_Response"
const Ros2Aimdk_msgsSrvGetAllJointState_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetAllJointState_Response*(): Ros2Aimdk_msgsSrvGetAllJointState_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`head_joints` = @[]
  result.`arm_joints` = @[]
  result.`waist_joints` = @[]
  result.`leg_joints` = @[]
proc writeFields*(value: Ros2Aimdk_msgsSrvGetAllJointState_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  if value.`head_joints`.len > 4: fail(22)
  putInteger(w,uint32(value.`head_joints`.len))
  for e in value.`head_joints`:
    writeFields(e,w)
  if value.`arm_joints`.len > 4: fail(22)
  putInteger(w,uint32(value.`arm_joints`.len))
  for e in value.`arm_joints`:
    writeFields(e,w)
  if value.`waist_joints`.len > 4: fail(22)
  putInteger(w,uint32(value.`waist_joints`.len))
  for e in value.`waist_joints`:
    writeFields(e,w)
  if value.`leg_joints`.len > 4: fail(22)
  putInteger(w,uint32(value.`leg_joints`.len))
  for e in value.`leg_joints`:
    writeFields(e,w)
proc readRos2Aimdk_msgsSrvGetAllJointState_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetAllJointState_Response =
  result = initRos2Aimdk_msgsSrvGetAllJointState_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`head_joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count1)
  for i in 0..<count1:
    result.`head_joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`arm_joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count2)
  for i in 0..<count2:
    result.`arm_joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 4: fail(22)
  let count3 = int(rawcount3)
  result.`waist_joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count3)
  for i in 0..<count3:
    result.`waist_joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 4: fail(22)
  let count4 = int(rawcount4)
  result.`leg_joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count4)
  for i in 0..<count4:
    result.`leg_joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetAllJointState_Response): seq[byte] =
  var w = initWriter(2712)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetAllJointState_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetAllJointState_Response =
  var r = initReader(b,2712)
  result = readRos2Aimdk_msgsSrvGetAllJointState_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetCurrentInputSource_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestCodecIdentity* = "UWVMROS1_d5b73ba9bc2ea2f864884a0e278e2a3e327e0af405594a5e7aac7d3884e7143a"
const Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestNativeType* = "aimdk_msgs/srv/GetCurrentInputSource_Request"
const Ros2Aimdk_msgsSrvGetCurrentInputSource_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetCurrentInputSource_Request*(): Ros2Aimdk_msgsSrvGetCurrentInputSource_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetCurrentInputSource_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetCurrentInputSource_Request =
  result = initRos2Aimdk_msgsSrvGetCurrentInputSource_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetCurrentInputSource_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetCurrentInputSource_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetCurrentInputSource_Response* = object
  `response`*: Ros2Aimdk_msgsMsgCommonTaskResponse
  `input_source`*: Ros2Aimdk_msgsMsgMcInputSource
const Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseMaximumWireBytes* = 168
const Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseCodecIdentity* = "UWVMROS1_74952e748930b62ef98f8837c39e3925425b6f3a715fadb0d01339104bafbe5e"
const Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseNativeType* = "aimdk_msgs/srv/GetCurrentInputSource_Response"
const Ros2Aimdk_msgsSrvGetCurrentInputSource_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetCurrentInputSource_Response*(): Ros2Aimdk_msgsSrvGetCurrentInputSource_Response =
  result.`response` = initRos2Aimdk_msgsMsgCommonTaskResponse()
  result.`input_source` = initRos2Aimdk_msgsMsgMcInputSource()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response; w: var Writer) =
  writeFields(value.`response`,w)
  writeFields(value.`input_source`,w)
proc readRos2Aimdk_msgsSrvGetCurrentInputSource_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetCurrentInputSource_Response =
  result = initRos2Aimdk_msgsSrvGetCurrentInputSource_Response()
  result.`response` = readRos2Aimdk_msgsMsgCommonTaskResponse(r)
  result.`input_source` = readRos2Aimdk_msgsMsgMcInputSource(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetCurrentInputSource_Response): seq[byte] =
  var w = initWriter(168)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetCurrentInputSource_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetCurrentInputSource_Response =
  var r = initReader(b,168)
  result = readRos2Aimdk_msgsSrvGetCurrentInputSource_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetHandType_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetHandType_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetHandType_RequestCodecIdentity* = "UWVMROS1_d286d9ff63fa2191490e6aa526330d2a448b37fc47231d9e42d61a3b4ddca470"
const Ros2Aimdk_msgsSrvGetHandType_RequestNativeType* = "aimdk_msgs/srv/GetHandType_Request"
const Ros2Aimdk_msgsSrvGetHandType_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetHandType_Request*(): Ros2Aimdk_msgsSrvGetHandType_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetHandType_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetHandType_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetHandType_Request =
  result = initRos2Aimdk_msgsSrvGetHandType_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetHandType_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetHandType_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetHandType_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetHandType_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetHandType_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `left_hands_type`*: Ros2Aimdk_msgsMsgHandType
  `right_hands_type`*: Ros2Aimdk_msgsMsgHandType
const Ros2Aimdk_msgsSrvGetHandType_ResponseMaximumWireBytes* = 154
const Ros2Aimdk_msgsSrvGetHandType_ResponseCodecIdentity* = "UWVMROS1_04f69fc5f7df302c1e73d2a51ffaef813b002ec387014b6d4d8a648e1e5d098c"
const Ros2Aimdk_msgsSrvGetHandType_ResponseNativeType* = "aimdk_msgs/srv/GetHandType_Response"
const Ros2Aimdk_msgsSrvGetHandType_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetHandType_Response*(): Ros2Aimdk_msgsSrvGetHandType_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`left_hands_type` = initRos2Aimdk_msgsMsgHandType()
  result.`right_hands_type` = initRos2Aimdk_msgsMsgHandType()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetHandType_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  writeFields(value.`left_hands_type`,w)
  writeFields(value.`right_hands_type`,w)
proc readRos2Aimdk_msgsSrvGetHandType_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetHandType_Response =
  result = initRos2Aimdk_msgsSrvGetHandType_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`left_hands_type` = readRos2Aimdk_msgsMsgHandType(r)
  result.`right_hands_type` = readRos2Aimdk_msgsMsgHandType(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetHandType_Response): seq[byte] =
  var w = initWriter(154)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetHandType_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetHandType_Response =
  var r = initReader(b,154)
  result = readRos2Aimdk_msgsSrvGetHandType_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMcAction_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetMcAction_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetMcAction_RequestCodecIdentity* = "UWVMROS1_f6dc5b72271fc51bfb1950b67d671619b65dfabc7931e12889a237fe47d18cfe"
const Ros2Aimdk_msgsSrvGetMcAction_RequestNativeType* = "aimdk_msgs/srv/GetMcAction_Request"
const Ros2Aimdk_msgsSrvGetMcAction_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMcAction_Request*(): Ros2Aimdk_msgsSrvGetMcAction_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMcAction_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetMcAction_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetMcAction_Request =
  result = initRos2Aimdk_msgsSrvGetMcAction_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMcAction_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMcAction_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMcAction_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetMcAction_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMcAction_Response* = object
  `header`*: Ros2Aimdk_msgsMsgResponseHeader
  `info`*: Ros2Aimdk_msgsMsgMcActionInfo
const Ros2Aimdk_msgsSrvGetMcAction_ResponseMaximumWireBytes* = 156
const Ros2Aimdk_msgsSrvGetMcAction_ResponseCodecIdentity* = "UWVMROS1_e2518bce930bc6f8e195b638d9eb5c132dffa93449c94b6f044e6192843df18f"
const Ros2Aimdk_msgsSrvGetMcAction_ResponseNativeType* = "aimdk_msgs/srv/GetMcAction_Response"
const Ros2Aimdk_msgsSrvGetMcAction_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMcAction_Response*(): Ros2Aimdk_msgsSrvGetMcAction_Response =
  result.`header` = initRos2Aimdk_msgsMsgResponseHeader()
  result.`info` = initRos2Aimdk_msgsMsgMcActionInfo()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMcAction_Response; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`info`,w)
proc readRos2Aimdk_msgsSrvGetMcAction_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetMcAction_Response =
  result = initRos2Aimdk_msgsSrvGetMcAction_Response()
  result.`header` = readRos2Aimdk_msgsMsgResponseHeader(r)
  result.`info` = readRos2Aimdk_msgsMsgMcActionInfo(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMcAction_Response): seq[byte] =
  var w = initWriter(156)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMcAction_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMcAction_Response =
  var r = initReader(b,156)
  result = readRos2Aimdk_msgsSrvGetMcAction_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMute_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetMute_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetMute_RequestCodecIdentity* = "UWVMROS1_0f3d2a1679b2af2dca96bcdba69e8f076e9a333d4166a53501de40594c723ca5"
const Ros2Aimdk_msgsSrvGetMute_RequestNativeType* = "aimdk_msgs/srv/GetMute_Request"
const Ros2Aimdk_msgsSrvGetMute_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMute_Request*(): Ros2Aimdk_msgsSrvGetMute_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMute_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetMute_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetMute_Request =
  result = initRos2Aimdk_msgsSrvGetMute_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMute_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMute_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMute_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetMute_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetMute_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `is_mute`*: bool
const Ros2Aimdk_msgsSrvGetMute_ResponseMaximumWireBytes* = 153
const Ros2Aimdk_msgsSrvGetMute_ResponseCodecIdentity* = "UWVMROS1_c1beb5c0c269083a0be2c3a4718043ec92639b6ac58cf1d74bae051bec2d8a42"
const Ros2Aimdk_msgsSrvGetMute_ResponseNativeType* = "aimdk_msgs/srv/GetMute_Response"
const Ros2Aimdk_msgsSrvGetMute_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetMute_Response*(): Ros2Aimdk_msgsSrvGetMute_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`is_mute` = false
proc writeFields*(value: Ros2Aimdk_msgsSrvGetMute_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  putBool(w,value.`is_mute`)
proc readRos2Aimdk_msgsSrvGetMute_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetMute_Response =
  result = initRos2Aimdk_msgsSrvGetMute_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`is_mute` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetMute_Response): seq[byte] =
  var w = initWriter(153)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetMute_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetMute_Response =
  var r = initReader(b,153)
  result = readRos2Aimdk_msgsSrvGetMute_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetVolume_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
const Ros2Aimdk_msgsSrvGetVolume_RequestMaximumWireBytes* = 8
const Ros2Aimdk_msgsSrvGetVolume_RequestCodecIdentity* = "UWVMROS1_6e0d1472098c746f350535d30a3281758480e8e7c7b8ef54485310dae16dfc2b"
const Ros2Aimdk_msgsSrvGetVolume_RequestNativeType* = "aimdk_msgs/srv/GetVolume_Request"
const Ros2Aimdk_msgsSrvGetVolume_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetVolume_Request*(): Ros2Aimdk_msgsSrvGetVolume_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvGetVolume_Request; w: var Writer) =
  writeFields(value.`request`,w)
proc readRos2Aimdk_msgsSrvGetVolume_Request*(r: var Reader): Ros2Aimdk_msgsSrvGetVolume_Request =
  result = initRos2Aimdk_msgsSrvGetVolume_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvGetVolume_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetVolume_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvGetVolume_Request =
  var r = initReader(b,8)
  result = readRos2Aimdk_msgsSrvGetVolume_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvGetVolume_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `audio_volume`*: uint32
const Ros2Aimdk_msgsSrvGetVolume_ResponseMaximumWireBytes* = 156
const Ros2Aimdk_msgsSrvGetVolume_ResponseCodecIdentity* = "UWVMROS1_24a04a12d640be4e17e24d372b0bbb2f65a89bd56e4ee1448e252db2c833c266"
const Ros2Aimdk_msgsSrvGetVolume_ResponseNativeType* = "aimdk_msgs/srv/GetVolume_Response"
const Ros2Aimdk_msgsSrvGetVolume_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvGetVolume_Response*(): Ros2Aimdk_msgsSrvGetVolume_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`audio_volume` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvGetVolume_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  putInteger(w,value.`audio_volume`)
proc readRos2Aimdk_msgsSrvGetVolume_Response*(r: var Reader): Ros2Aimdk_msgsSrvGetVolume_Response =
  result = initRos2Aimdk_msgsSrvGetVolume_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`audio_volume` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsSrvGetVolume_Response): seq[byte] =
  var w = initWriter(156)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvGetVolume_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvGetVolume_Response =
  var r = initReader(b,156)
  result = readRos2Aimdk_msgsSrvGetVolume_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvLedStripCommand_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `led_strip_mode`*: uint8
  `r`*: uint8
  `g`*: uint8
  `b`*: uint8
const Ros2Aimdk_msgsSrvLedStripCommand_RequestMaximumWireBytes* = 12
const Ros2Aimdk_msgsSrvLedStripCommand_RequestCodecIdentity* = "UWVMROS1_bd3167edba193b3ed932c8f6e841d229cf6e6574b2ce0c157d5f8bfc4cbc80a6"
const Ros2Aimdk_msgsSrvLedStripCommand_RequestNativeType* = "aimdk_msgs/srv/LedStripCommand_Request"
const Ros2Aimdk_msgsSrvLedStripCommand_RequestNativeIdentity* = ""
const Ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_CONSTANT*: uint8 = 0'u8
const Ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_BREATH*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_FLASH*: uint8 = 2'u8
const Ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_FLOW*: uint8 = 3'u8
const Ros2Aimdk_msgsSrvLedStripCommand_Request_LED_STRIP_MODE_MAX*: uint8 = 4'u8
proc initRos2Aimdk_msgsSrvLedStripCommand_Request*(): Ros2Aimdk_msgsSrvLedStripCommand_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`led_strip_mode` = 0
  result.`r` = 0
  result.`g` = 0
  result.`b` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvLedStripCommand_Request; w: var Writer) =
  writeFields(value.`request`,w)
  putInteger(w,value.`led_strip_mode`)
  putInteger(w,value.`r`)
  putInteger(w,value.`g`)
  putInteger(w,value.`b`)
proc readRos2Aimdk_msgsSrvLedStripCommand_Request*(r: var Reader): Ros2Aimdk_msgsSrvLedStripCommand_Request =
  result = initRos2Aimdk_msgsSrvLedStripCommand_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`led_strip_mode` = getInteger(r,uint8)
  result.`r` = getInteger(r,uint8)
  result.`g` = getInteger(r,uint8)
  result.`b` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsSrvLedStripCommand_Request): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvLedStripCommand_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvLedStripCommand_Request =
  var r = initReader(b,12)
  result = readRos2Aimdk_msgsSrvLedStripCommand_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvLedStripCommand_Response* = object
  `header`*: Ros2Aimdk_msgsMsgResponseHeader
  `status_code`*: uint16
const Ros2Aimdk_msgsSrvLedStripCommand_ResponseMaximumWireBytes* = 18
const Ros2Aimdk_msgsSrvLedStripCommand_ResponseCodecIdentity* = "UWVMROS1_3e08fb0103545c0d4e1558eba1dd8adad52f90ef083e7e8fb336087386e3c2a9"
const Ros2Aimdk_msgsSrvLedStripCommand_ResponseNativeType* = "aimdk_msgs/srv/LedStripCommand_Response"
const Ros2Aimdk_msgsSrvLedStripCommand_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvLedStripCommand_Response*(): Ros2Aimdk_msgsSrvLedStripCommand_Response =
  result.`header` = initRos2Aimdk_msgsMsgResponseHeader()
  result.`status_code` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvLedStripCommand_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`status_code`)
proc readRos2Aimdk_msgsSrvLedStripCommand_Response*(r: var Reader): Ros2Aimdk_msgsSrvLedStripCommand_Response =
  result = initRos2Aimdk_msgsSrvLedStripCommand_Response()
  result.`header` = readRos2Aimdk_msgsMsgResponseHeader(r)
  result.`status_code` = getInteger(r,uint16)
proc encode*(value: Ros2Aimdk_msgsSrvLedStripCommand_Response): seq[byte] =
  var w = initWriter(18)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvLedStripCommand_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvLedStripCommand_Response =
  var r = initReader(b,18)
  result = readRos2Aimdk_msgsSrvLedStripCommand_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayEmoji_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `emotion_id`*: uint8
  `mode`*: uint8
  `priority`*: int32
const Ros2Aimdk_msgsSrvPlayEmoji_RequestMaximumWireBytes* = 14
const Ros2Aimdk_msgsSrvPlayEmoji_RequestCodecIdentity* = "UWVMROS1_ba31bdc232369e170ee9fb00ac8e51639d81a657de8f6e61f9acfccc2a083d43"
const Ros2Aimdk_msgsSrvPlayEmoji_RequestNativeType* = "aimdk_msgs/srv/PlayEmoji_Request"
const Ros2Aimdk_msgsSrvPlayEmoji_RequestNativeIdentity* = ""
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_UNKNOWN*: uint8 = 0'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_BLINK*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CALM_1*: uint8 = 10'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CALM_2*: uint8 = 11'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_GAME*: uint8 = 20'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_1*: uint8 = 30'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_2*: uint8 = 31'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_3*: uint8 = 32'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_IDLE_CUTE_4*: uint8 = 33'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CLOSE*: uint8 = 40'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_OPEN*: uint8 = 50'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_BORING_1*: uint8 = 60'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ABNORMAL*: uint8 = 70'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SLEEPY*: uint8 = 80'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_HAPPY*: uint8 = 90'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEHAPPY_1*: uint8 = 100'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEHAPPY_2*: uint8 = 101'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SAD*: uint8 = 110'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SYMPATHY*: uint8 = 120'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CONFUSE*: uint8 = 130'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SHOCK*: uint8 = 140'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ACTCUTE*: uint8 = 150'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_SERIOUS*: uint8 = 160'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_THINKING*: uint8 = 170'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ANGRY*: uint8 = 180'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEANGRY*: uint8 = 190'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_ADORE*: uint8 = 200'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_EXTREMEADORE*: uint8 = 210'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_EYE_CHARGE*: uint8 = 220'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_MODE_ONCE*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvPlayEmoji_Request_EMOTION_MODE_LOOP*: uint8 = 2'u8
proc initRos2Aimdk_msgsSrvPlayEmoji_Request*(): Ros2Aimdk_msgsSrvPlayEmoji_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`emotion_id` = 0
  result.`mode` = 0
  result.`priority` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayEmoji_Request; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`emotion_id`)
  putInteger(w,value.`mode`)
  putInteger(w,value.`priority`)
proc readRos2Aimdk_msgsSrvPlayEmoji_Request*(r: var Reader): Ros2Aimdk_msgsSrvPlayEmoji_Request =
  result = initRos2Aimdk_msgsSrvPlayEmoji_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`emotion_id` = getInteger(r,uint8)
  result.`mode` = getInteger(r,uint8)
  result.`priority` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsSrvPlayEmoji_Request): seq[byte] =
  var w = initWriter(14)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayEmoji_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayEmoji_Request =
  var r = initReader(b,14)
  result = readRos2Aimdk_msgsSrvPlayEmoji_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayEmoji_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `success`*: bool
  `message`*: string
const Ros2Aimdk_msgsSrvPlayEmoji_ResponseMaximumWireBytes* = 285
const Ros2Aimdk_msgsSrvPlayEmoji_ResponseCodecIdentity* = "UWVMROS1_5e5ba0082cf9bf5d9b9c7eae034efd76bd44503306bb4994e06862a802cfb6b9"
const Ros2Aimdk_msgsSrvPlayEmoji_ResponseNativeType* = "aimdk_msgs/srv/PlayEmoji_Response"
const Ros2Aimdk_msgsSrvPlayEmoji_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayEmoji_Response*(): Ros2Aimdk_msgsSrvPlayEmoji_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayEmoji_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`success`)
  putString(w,value.`message`,128)
proc readRos2Aimdk_msgsSrvPlayEmoji_Response*(r: var Reader): Ros2Aimdk_msgsSrvPlayEmoji_Response =
  result = initRos2Aimdk_msgsSrvPlayEmoji_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvPlayEmoji_Response): seq[byte] =
  var w = initWriter(285)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayEmoji_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayEmoji_Response =
  var r = initReader(b,285)
  result = readRos2Aimdk_msgsSrvPlayEmoji_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayMediaFile_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `media_file_req`*: Ros2Aimdk_msgsMsgPlayMediaFileRequest
const Ros2Aimdk_msgsSrvPlayMediaFile_RequestMaximumWireBytes* = 414
const Ros2Aimdk_msgsSrvPlayMediaFile_RequestCodecIdentity* = "UWVMROS1_546706b9797f99c98a014f9849171aef262775e8ab702cfe6517d92f5047247c"
const Ros2Aimdk_msgsSrvPlayMediaFile_RequestNativeType* = "aimdk_msgs/srv/PlayMediaFile_Request"
const Ros2Aimdk_msgsSrvPlayMediaFile_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayMediaFile_Request*(): Ros2Aimdk_msgsSrvPlayMediaFile_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`media_file_req` = initRos2Aimdk_msgsMsgPlayMediaFileRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayMediaFile_Request; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`media_file_req`,w)
proc readRos2Aimdk_msgsSrvPlayMediaFile_Request*(r: var Reader): Ros2Aimdk_msgsSrvPlayMediaFile_Request =
  result = initRos2Aimdk_msgsSrvPlayMediaFile_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`media_file_req` = readRos2Aimdk_msgsMsgPlayMediaFileRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvPlayMediaFile_Request): seq[byte] =
  var w = initWriter(414)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayMediaFile_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayMediaFile_Request =
  var r = initReader(b,414)
  result = readRos2Aimdk_msgsSrvPlayMediaFile_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayMediaFile_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `tts_resp`*: Ros2Aimdk_msgsMsgPlayTtsResponse
const Ros2Aimdk_msgsSrvPlayMediaFile_ResponseMaximumWireBytes* = 690
const Ros2Aimdk_msgsSrvPlayMediaFile_ResponseCodecIdentity* = "UWVMROS1_124871324704ab61f208168e64d4789376b3935b34895e824996e07561795099"
const Ros2Aimdk_msgsSrvPlayMediaFile_ResponseNativeType* = "aimdk_msgs/srv/PlayMediaFile_Response"
const Ros2Aimdk_msgsSrvPlayMediaFile_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayMediaFile_Response*(): Ros2Aimdk_msgsSrvPlayMediaFile_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`tts_resp` = initRos2Aimdk_msgsMsgPlayTtsResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayMediaFile_Response; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`tts_resp`,w)
proc readRos2Aimdk_msgsSrvPlayMediaFile_Response*(r: var Reader): Ros2Aimdk_msgsSrvPlayMediaFile_Response =
  result = initRos2Aimdk_msgsSrvPlayMediaFile_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`tts_resp` = readRos2Aimdk_msgsMsgPlayTtsResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvPlayMediaFile_Response): seq[byte] =
  var w = initWriter(690)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayMediaFile_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayMediaFile_Response =
  var r = initReader(b,690)
  result = readRos2Aimdk_msgsSrvPlayMediaFile_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayTts_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `tts_req`*: Ros2Aimdk_msgsMsgPlayTtsRequest
const Ros2Aimdk_msgsSrvPlayTts_RequestMaximumWireBytes* = 410
const Ros2Aimdk_msgsSrvPlayTts_RequestCodecIdentity* = "UWVMROS1_2325b475e9d2777afe139aff54b29254f3e0ac0fd1fa499db049cf535810c6f7"
const Ros2Aimdk_msgsSrvPlayTts_RequestNativeType* = "aimdk_msgs/srv/PlayTts_Request"
const Ros2Aimdk_msgsSrvPlayTts_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayTts_Request*(): Ros2Aimdk_msgsSrvPlayTts_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`tts_req` = initRos2Aimdk_msgsMsgPlayTtsRequest()
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayTts_Request; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`tts_req`,w)
proc readRos2Aimdk_msgsSrvPlayTts_Request*(r: var Reader): Ros2Aimdk_msgsSrvPlayTts_Request =
  result = initRos2Aimdk_msgsSrvPlayTts_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`tts_req` = readRos2Aimdk_msgsMsgPlayTtsRequest(r)
proc encode*(value: Ros2Aimdk_msgsSrvPlayTts_Request): seq[byte] =
  var w = initWriter(410)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayTts_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayTts_Request =
  var r = initReader(b,410)
  result = readRos2Aimdk_msgsSrvPlayTts_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayTts_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `tts_resp`*: Ros2Aimdk_msgsMsgPlayTtsResponse
const Ros2Aimdk_msgsSrvPlayTts_ResponseMaximumWireBytes* = 690
const Ros2Aimdk_msgsSrvPlayTts_ResponseCodecIdentity* = "UWVMROS1_a0587cd9d9294f30dc27c095bfc1acdf54d98b47cf4ac8ddd77b6b75530c290a"
const Ros2Aimdk_msgsSrvPlayTts_ResponseNativeType* = "aimdk_msgs/srv/PlayTts_Response"
const Ros2Aimdk_msgsSrvPlayTts_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayTts_Response*(): Ros2Aimdk_msgsSrvPlayTts_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`tts_resp` = initRos2Aimdk_msgsMsgPlayTtsResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayTts_Response; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`tts_resp`,w)
proc readRos2Aimdk_msgsSrvPlayTts_Response*(r: var Reader): Ros2Aimdk_msgsSrvPlayTts_Response =
  result = initRos2Aimdk_msgsSrvPlayTts_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`tts_resp` = readRos2Aimdk_msgsMsgPlayTtsResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvPlayTts_Response): seq[byte] =
  var w = initWriter(690)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayTts_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayTts_Response =
  var r = initReader(b,690)
  result = readRos2Aimdk_msgsSrvPlayTts_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayVideo_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `video_path`*: string
  `mode`*: uint8
  `priority`*: int32
const Ros2Aimdk_msgsSrvPlayVideo_RequestMaximumWireBytes* = 145
const Ros2Aimdk_msgsSrvPlayVideo_RequestCodecIdentity* = "UWVMROS1_a42348160bfed67c90f9ddc96beaca7b37e6099ba67c8c025d6ac0f95e6bc878"
const Ros2Aimdk_msgsSrvPlayVideo_RequestNativeType* = "aimdk_msgs/srv/PlayVideo_Request"
const Ros2Aimdk_msgsSrvPlayVideo_RequestNativeIdentity* = ""
const Ros2Aimdk_msgsSrvPlayVideo_Request_EMOTION_MODE_ONCE*: uint8 = 1'u8
const Ros2Aimdk_msgsSrvPlayVideo_Request_EMOTION_MODE_LOOP*: uint8 = 2'u8
proc initRos2Aimdk_msgsSrvPlayVideo_Request*(): Ros2Aimdk_msgsSrvPlayVideo_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`video_path` = ""
  result.`mode` = 0
  result.`priority` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayVideo_Request; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`video_path`,128)
  putInteger(w,value.`mode`)
  putInteger(w,value.`priority`)
proc readRos2Aimdk_msgsSrvPlayVideo_Request*(r: var Reader): Ros2Aimdk_msgsSrvPlayVideo_Request =
  result = initRos2Aimdk_msgsSrvPlayVideo_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`video_path` = getString(r,128)
  result.`mode` = getInteger(r,uint8)
  result.`priority` = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsSrvPlayVideo_Request): seq[byte] =
  var w = initWriter(145)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayVideo_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayVideo_Request =
  var r = initReader(b,145)
  result = readRos2Aimdk_msgsSrvPlayVideo_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvPlayVideo_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
  `success`*: bool
  `message`*: string
const Ros2Aimdk_msgsSrvPlayVideo_ResponseMaximumWireBytes* = 285
const Ros2Aimdk_msgsSrvPlayVideo_ResponseCodecIdentity* = "UWVMROS1_f714873f193ca3ee0d02c822dbc3262033a2fe7913748ba177136a24d5b7f627"
const Ros2Aimdk_msgsSrvPlayVideo_ResponseNativeType* = "aimdk_msgs/srv/PlayVideo_Response"
const Ros2Aimdk_msgsSrvPlayVideo_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvPlayVideo_Response*(): Ros2Aimdk_msgsSrvPlayVideo_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvPlayVideo_Response; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`success`)
  putString(w,value.`message`,128)
proc readRos2Aimdk_msgsSrvPlayVideo_Response*(r: var Reader): Ros2Aimdk_msgsSrvPlayVideo_Response =
  result = initRos2Aimdk_msgsSrvPlayVideo_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`success` = getBool(r)
  result.`message` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvPlayVideo_Response): seq[byte] =
  var w = initWriter(285)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvPlayVideo_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvPlayVideo_Response =
  var r = initReader(b,285)
  result = readRos2Aimdk_msgsSrvPlayVideo_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request* = object
  `header`*: Ros2Aimdk_msgsMsgCommonRequest
  `contents`*: Ros2Aimdk_msgsMsgAgentProperties
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestMaximumWireBytes* = 544
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestCodecIdentity* = "UWVMROS1_965af85f35239b728d7b2ea3c8e995a7cd54d3254bc1e89d3eeb36612ada5dec"
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestNativeType* = "aimdk_msgs/srv/SetAgentPropertiesRequest_Request"
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request*(): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request =
  result.`header` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`contents` = initRos2Aimdk_msgsMsgAgentProperties()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`contents`,w)
proc readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request =
  result = initRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request()
  result.`header` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`contents` = readRos2Aimdk_msgsMsgAgentProperties(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request): seq[byte] =
  var w = initWriter(544)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Request =
  var r = initReader(b,544)
  result = readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response* = object
  `header`*: Ros2Aimdk_msgsMsgCommonResponse
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseCodecIdentity* = "UWVMROS1_193eace6181c5da860dd9fa0d274415bdcb2246f7054acece8ae925414b0a81b"
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseNativeType* = "aimdk_msgs/srv/SetAgentPropertiesRequest_Response"
const Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response*(): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response =
  result.`header` = initRos2Aimdk_msgsMsgCommonResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response; w: var Writer) =
  writeFields(value.`header`,w)
proc readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response =
  result = initRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response()
  result.`header` = readRos2Aimdk_msgsMsgCommonResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetAgentPropertiesRequest_Response =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvSetAgentPropertiesRequest_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcAction_Request* = object
  `header`*: Ros2Aimdk_msgsMsgRequestHeader
  `command`*: Ros2Aimdk_msgsMsgMcActionCommand
const Ros2Aimdk_msgsSrvSetMcAction_RequestMaximumWireBytes* = 144
const Ros2Aimdk_msgsSrvSetMcAction_RequestCodecIdentity* = "UWVMROS1_6ad0e14f9aefc0ae34c383eec4498c556c97757f03eb315b74977327691489d5"
const Ros2Aimdk_msgsSrvSetMcAction_RequestNativeType* = "aimdk_msgs/srv/SetMcAction_Request"
const Ros2Aimdk_msgsSrvSetMcAction_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcAction_Request*(): Ros2Aimdk_msgsSrvSetMcAction_Request =
  result.`header` = initRos2Aimdk_msgsMsgRequestHeader()
  result.`command` = initRos2Aimdk_msgsMsgMcActionCommand()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcAction_Request; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`command`,w)
proc readRos2Aimdk_msgsSrvSetMcAction_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetMcAction_Request =
  result = initRos2Aimdk_msgsSrvSetMcAction_Request()
  result.`header` = readRos2Aimdk_msgsMsgRequestHeader(r)
  result.`command` = readRos2Aimdk_msgsMsgMcActionCommand(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcAction_Request): seq[byte] =
  var w = initWriter(144)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcAction_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcAction_Request =
  var r = initReader(b,144)
  result = readRos2Aimdk_msgsSrvSetMcAction_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcAction_Response* = object
  `response`*: Ros2Aimdk_msgsMsgCommonResponse
const Ros2Aimdk_msgsSrvSetMcAction_ResponseMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvSetMcAction_ResponseCodecIdentity* = "UWVMROS1_64c336314ea7d3635494d1e3f9da9b23442653033e3ddfb0936440520141d24f"
const Ros2Aimdk_msgsSrvSetMcAction_ResponseNativeType* = "aimdk_msgs/srv/SetMcAction_Response"
const Ros2Aimdk_msgsSrvSetMcAction_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcAction_Response*(): Ros2Aimdk_msgsSrvSetMcAction_Response =
  result.`response` = initRos2Aimdk_msgsMsgCommonResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcAction_Response; w: var Writer) =
  writeFields(value.`response`,w)
proc readRos2Aimdk_msgsSrvSetMcAction_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetMcAction_Response =
  result = initRos2Aimdk_msgsSrvSetMcAction_Response()
  result.`response` = readRos2Aimdk_msgsMsgCommonResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcAction_Response): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcAction_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcAction_Response =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvSetMcAction_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcInputSource_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `action`*: Ros2Aimdk_msgsMsgMcInputAction
  `input_source`*: Ros2Aimdk_msgsMsgMcInputSource
const Ros2Aimdk_msgsSrvSetMcInputSource_RequestMaximumWireBytes* = 152
const Ros2Aimdk_msgsSrvSetMcInputSource_RequestCodecIdentity* = "UWVMROS1_853ae368291aa7e14c665d3d47caad66ba626c086ad759180c31223a9785b021"
const Ros2Aimdk_msgsSrvSetMcInputSource_RequestNativeType* = "aimdk_msgs/srv/SetMcInputSource_Request"
const Ros2Aimdk_msgsSrvSetMcInputSource_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcInputSource_Request*(): Ros2Aimdk_msgsSrvSetMcInputSource_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`action` = initRos2Aimdk_msgsMsgMcInputAction()
  result.`input_source` = initRos2Aimdk_msgsMsgMcInputSource()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcInputSource_Request; w: var Writer) =
  writeFields(value.`request`,w)
  writeFields(value.`action`,w)
  writeFields(value.`input_source`,w)
proc readRos2Aimdk_msgsSrvSetMcInputSource_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetMcInputSource_Request =
  result = initRos2Aimdk_msgsSrvSetMcInputSource_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`action` = readRos2Aimdk_msgsMsgMcInputAction(r)
  result.`input_source` = readRos2Aimdk_msgsMsgMcInputSource(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcInputSource_Request): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcInputSource_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcInputSource_Request =
  var r = initReader(b,152)
  result = readRos2Aimdk_msgsSrvSetMcInputSource_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcInputSource_Response* = object
  `response`*: Ros2Aimdk_msgsMsgCommonTaskResponse
const Ros2Aimdk_msgsSrvSetMcInputSource_ResponseMaximumWireBytes* = 28
const Ros2Aimdk_msgsSrvSetMcInputSource_ResponseCodecIdentity* = "UWVMROS1_0c0764d24b86f57f3c2f1a59966a787113cf9411cf89f40d29a7708bf03650cb"
const Ros2Aimdk_msgsSrvSetMcInputSource_ResponseNativeType* = "aimdk_msgs/srv/SetMcInputSource_Response"
const Ros2Aimdk_msgsSrvSetMcInputSource_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcInputSource_Response*(): Ros2Aimdk_msgsSrvSetMcInputSource_Response =
  result.`response` = initRos2Aimdk_msgsMsgCommonTaskResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcInputSource_Response; w: var Writer) =
  writeFields(value.`response`,w)
proc readRos2Aimdk_msgsSrvSetMcInputSource_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetMcInputSource_Response =
  result = initRos2Aimdk_msgsSrvSetMcInputSource_Response()
  result.`response` = readRos2Aimdk_msgsMsgCommonTaskResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcInputSource_Response): seq[byte] =
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcInputSource_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcInputSource_Response =
  var r = initReader(b,28)
  result = readRos2Aimdk_msgsSrvSetMcInputSource_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcPresetMotion_Request* = object
  `header`*: Ros2Aimdk_msgsMsgRequestHeader
  `area`*: Ros2Aimdk_msgsMsgMcControlArea
  `motion`*: Ros2Aimdk_msgsMsgMcPresetMotion
  `interrupt`*: bool
  `ani_path`*: string
const Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestMaximumWireBytes* = 149
const Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestCodecIdentity* = "UWVMROS1_f8789c1eb47184c1a1c219ac861b5551d22bdc624caf1f7022523160c6cd62ea"
const Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestNativeType* = "aimdk_msgs/srv/SetMcPresetMotion_Request"
const Ros2Aimdk_msgsSrvSetMcPresetMotion_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcPresetMotion_Request*(): Ros2Aimdk_msgsSrvSetMcPresetMotion_Request =
  result.`header` = initRos2Aimdk_msgsMsgRequestHeader()
  result.`area` = initRos2Aimdk_msgsMsgMcControlArea()
  result.`motion` = initRos2Aimdk_msgsMsgMcPresetMotion()
  result.`interrupt` = false
  result.`ani_path` = ""
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`area`,w)
  writeFields(value.`motion`,w)
  putBool(w,value.`interrupt`)
  putString(w,value.`ani_path`,128)
proc readRos2Aimdk_msgsSrvSetMcPresetMotion_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetMcPresetMotion_Request =
  result = initRos2Aimdk_msgsSrvSetMcPresetMotion_Request()
  result.`header` = readRos2Aimdk_msgsMsgRequestHeader(r)
  result.`area` = readRos2Aimdk_msgsMsgMcControlArea(r)
  result.`motion` = readRos2Aimdk_msgsMsgMcPresetMotion(r)
  result.`interrupt` = getBool(r)
  result.`ani_path` = getString(r,128)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Request): seq[byte] =
  var w = initWriter(149)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcPresetMotion_Request =
  var r = initReader(b,149)
  result = readRos2Aimdk_msgsSrvSetMcPresetMotion_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMcPresetMotion_Response* = object
  `response`*: Ros2Aimdk_msgsMsgCommonTaskResponse
const Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseMaximumWireBytes* = 28
const Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseCodecIdentity* = "UWVMROS1_9534060f44b6d36c7f0c585e7ce1f1e8b06a2561a2161a29fe6d0e4d22c77e85"
const Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseNativeType* = "aimdk_msgs/srv/SetMcPresetMotion_Response"
const Ros2Aimdk_msgsSrvSetMcPresetMotion_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMcPresetMotion_Response*(): Ros2Aimdk_msgsSrvSetMcPresetMotion_Response =
  result.`response` = initRos2Aimdk_msgsMsgCommonTaskResponse()
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response; w: var Writer) =
  writeFields(value.`response`,w)
proc readRos2Aimdk_msgsSrvSetMcPresetMotion_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetMcPresetMotion_Response =
  result = initRos2Aimdk_msgsSrvSetMcPresetMotion_Response()
  result.`response` = readRos2Aimdk_msgsMsgCommonTaskResponse(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMcPresetMotion_Response): seq[byte] =
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMcPresetMotion_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMcPresetMotion_Response =
  var r = initReader(b,28)
  result = readRos2Aimdk_msgsSrvSetMcPresetMotion_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMute_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `is_mute`*: bool
const Ros2Aimdk_msgsSrvSetMute_RequestMaximumWireBytes* = 9
const Ros2Aimdk_msgsSrvSetMute_RequestCodecIdentity* = "UWVMROS1_a37f6b638f226a9d150315baa5b11e6994422ba8f58541ac7b04df11e5c21fe3"
const Ros2Aimdk_msgsSrvSetMute_RequestNativeType* = "aimdk_msgs/srv/SetMute_Request"
const Ros2Aimdk_msgsSrvSetMute_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMute_Request*(): Ros2Aimdk_msgsSrvSetMute_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`is_mute` = false
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMute_Request; w: var Writer) =
  writeFields(value.`request`,w)
  putBool(w,value.`is_mute`)
proc readRos2Aimdk_msgsSrvSetMute_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetMute_Request =
  result = initRos2Aimdk_msgsSrvSetMute_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`is_mute` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMute_Request): seq[byte] =
  var w = initWriter(9)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMute_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMute_Request =
  var r = initReader(b,9)
  result = readRos2Aimdk_msgsSrvSetMute_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetMute_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `is_mute`*: bool
const Ros2Aimdk_msgsSrvSetMute_ResponseMaximumWireBytes* = 153
const Ros2Aimdk_msgsSrvSetMute_ResponseCodecIdentity* = "UWVMROS1_0ba7d8046b7a0d23deb0b4cdb2ba5d144543a68a2468d657cc0b29f60efdca50"
const Ros2Aimdk_msgsSrvSetMute_ResponseNativeType* = "aimdk_msgs/srv/SetMute_Response"
const Ros2Aimdk_msgsSrvSetMute_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetMute_Response*(): Ros2Aimdk_msgsSrvSetMute_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`is_mute` = false
proc writeFields*(value: Ros2Aimdk_msgsSrvSetMute_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  putBool(w,value.`is_mute`)
proc readRos2Aimdk_msgsSrvSetMute_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetMute_Response =
  result = initRos2Aimdk_msgsSrvSetMute_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`is_mute` = getBool(r)
proc encode*(value: Ros2Aimdk_msgsSrvSetMute_Response): seq[byte] =
  var w = initWriter(153)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetMute_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetMute_Response =
  var r = initReader(b,153)
  result = readRos2Aimdk_msgsSrvSetMute_Response(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetVolume_Request* = object
  `request`*: Ros2Aimdk_msgsMsgCommonRequest
  `audio_volume`*: uint32
const Ros2Aimdk_msgsSrvSetVolume_RequestMaximumWireBytes* = 12
const Ros2Aimdk_msgsSrvSetVolume_RequestCodecIdentity* = "UWVMROS1_09161b7a7ae47ab702190725e42e27cd247f681702de05c4f68fa59581f85aad"
const Ros2Aimdk_msgsSrvSetVolume_RequestNativeType* = "aimdk_msgs/srv/SetVolume_Request"
const Ros2Aimdk_msgsSrvSetVolume_RequestNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetVolume_Request*(): Ros2Aimdk_msgsSrvSetVolume_Request =
  result.`request` = initRos2Aimdk_msgsMsgCommonRequest()
  result.`audio_volume` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvSetVolume_Request; w: var Writer) =
  writeFields(value.`request`,w)
  putInteger(w,value.`audio_volume`)
proc readRos2Aimdk_msgsSrvSetVolume_Request*(r: var Reader): Ros2Aimdk_msgsSrvSetVolume_Request =
  result = initRos2Aimdk_msgsSrvSetVolume_Request()
  result.`request` = readRos2Aimdk_msgsMsgCommonRequest(r)
  result.`audio_volume` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsSrvSetVolume_Request): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetVolume_Request*(b: seq[byte]): Ros2Aimdk_msgsSrvSetVolume_Request =
  var r = initReader(b,12)
  result = readRos2Aimdk_msgsSrvSetVolume_Request(r)
  finish(r)
type Ros2Aimdk_msgsSrvSetVolume_Response* = object
  `reponse`*: Ros2Aimdk_msgsMsgCommonResponse
  `audio_volume`*: uint32
const Ros2Aimdk_msgsSrvSetVolume_ResponseMaximumWireBytes* = 156
const Ros2Aimdk_msgsSrvSetVolume_ResponseCodecIdentity* = "UWVMROS1_e5baf36b9fe876cfa8633c769aa7bcf085b813a7174de2bd6dd2026bc3744a1e"
const Ros2Aimdk_msgsSrvSetVolume_ResponseNativeType* = "aimdk_msgs/srv/SetVolume_Response"
const Ros2Aimdk_msgsSrvSetVolume_ResponseNativeIdentity* = ""
proc initRos2Aimdk_msgsSrvSetVolume_Response*(): Ros2Aimdk_msgsSrvSetVolume_Response =
  result.`reponse` = initRos2Aimdk_msgsMsgCommonResponse()
  result.`audio_volume` = 0
proc writeFields*(value: Ros2Aimdk_msgsSrvSetVolume_Response; w: var Writer) =
  writeFields(value.`reponse`,w)
  putInteger(w,value.`audio_volume`)
proc readRos2Aimdk_msgsSrvSetVolume_Response*(r: var Reader): Ros2Aimdk_msgsSrvSetVolume_Response =
  result = initRos2Aimdk_msgsSrvSetVolume_Response()
  result.`reponse` = readRos2Aimdk_msgsMsgCommonResponse(r)
  result.`audio_volume` = getInteger(r,uint32)
proc encode*(value: Ros2Aimdk_msgsSrvSetVolume_Response): seq[byte] =
  var w = initWriter(156)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsSrvSetVolume_Response*(b: seq[byte]): Ros2Aimdk_msgsSrvSetVolume_Response =
  var r = initReader(b,156)
  result = readRos2Aimdk_msgsSrvSetVolume_Response(r)
  finish(r)
