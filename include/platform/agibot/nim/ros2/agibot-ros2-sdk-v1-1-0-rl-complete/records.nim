# @file records.nim
# @brief Full agibot nim codecs and original record metadata.
# @details Complete agibot ros2_sdk_v1_1_0_rl values in nim. 19 original records retain 71 fields and 19 interface
# descriptions. Scalar widths, bounds, units, defaults and identities follow the pinned native definitions. Encoding
# is local; compiler, guest and native ROS acceptance require separate receipts. See the profile API manual under
# document/platform/agibot/en_US/catalog/.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
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
type Ros2Aimdk_msgsMsgDomainErrorState* = object
  `value`*: uint8
const Ros2Aimdk_msgsMsgDomainErrorStateMaximumWireBytes* = 1
const Ros2Aimdk_msgsMsgDomainErrorStateCodecIdentity* = "UWVMROS1_b8ba44e26d3df3c4c71f1ca9d4e91e967c8d8e1d95042ac7433a9a3294e9e231"
const Ros2Aimdk_msgsMsgDomainErrorStateNativeType* = "aimdk_msgs/msg/DomainErrorState"
const Ros2Aimdk_msgsMsgDomainErrorStateNativeIdentity* = ""
const Ros2Aimdk_msgsMsgDomainErrorState_NONE*: uint8 = 0'u8
const Ros2Aimdk_msgsMsgDomainErrorState_DAMPING*: uint8 = 1'u8
const Ros2Aimdk_msgsMsgDomainErrorState_POWERDOWN*: uint8 = 2'u8
const Ros2Aimdk_msgsMsgDomainErrorState_DISABLE*: uint8 = 3'u8
const Ros2Aimdk_msgsMsgDomainErrorState_DISCONNECT*: uint8 = 4'u8
proc initRos2Aimdk_msgsMsgDomainErrorState*(): Ros2Aimdk_msgsMsgDomainErrorState =
  result.`value` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgDomainErrorState; w: var Writer) =
  putInteger(w,value.`value`)
proc readRos2Aimdk_msgsMsgDomainErrorState*(r: var Reader): Ros2Aimdk_msgsMsgDomainErrorState =
  result = initRos2Aimdk_msgsMsgDomainErrorState()
  result.`value` = getInteger(r,uint8)
proc encode*(value: Ros2Aimdk_msgsMsgDomainErrorState): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgDomainErrorState*(b: seq[byte]): Ros2Aimdk_msgsMsgDomainErrorState =
  var r = initReader(b,1)
  result = readRos2Aimdk_msgsMsgDomainErrorState(r)
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
  `error_code`*: uint16
const Ros2Aimdk_msgsMsgJointStateMaximumWireBytes* = 158
const Ros2Aimdk_msgsMsgJointStateCodecIdentity* = "UWVMROS1_00a7d9637f691d224a78c967343dd16161b29e12ca6f9fafadc0af5d7e405a53"
const Ros2Aimdk_msgsMsgJointStateNativeType* = "aimdk_msgs/msg/JointState"
const Ros2Aimdk_msgsMsgJointStateNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgJointState*(): Ros2Aimdk_msgsMsgJointState =
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`effort` = 0
  result.`error_code` = 0
proc writeFields*(value: Ros2Aimdk_msgsMsgJointState; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`effort`)
  putInteger(w,value.`error_code`)
proc readRos2Aimdk_msgsMsgJointState*(r: var Reader): Ros2Aimdk_msgsMsgJointState =
  result = initRos2Aimdk_msgsMsgJointState()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`effort` = getFloat64(r)
  result.`error_code` = getInteger(r,uint16)
proc encode*(value: Ros2Aimdk_msgsMsgJointState): seq[byte] =
  var w = initWriter(158)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgJointState*(b: seq[byte]): Ros2Aimdk_msgsMsgJointState =
  var r = initReader(b,158)
  result = readRos2Aimdk_msgsMsgJointState(r)
  finish(r)
type Ros2Aimdk_msgsMsgJointStateArray* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `state`*: Ros2Aimdk_msgsMsgDomainErrorState
  `joints`*: seq[Ros2Aimdk_msgsMsgJointState]
const Ros2Aimdk_msgsMsgJointStateArrayMaximumWireBytes* = 10269
const Ros2Aimdk_msgsMsgJointStateArrayCodecIdentity* = "UWVMROS1_4768076ae2f8c344f4030e7ca926d311e7706042187a2f9864a8a63f289f297e"
const Ros2Aimdk_msgsMsgJointStateArrayNativeType* = "aimdk_msgs/msg/JointStateArray"
const Ros2Aimdk_msgsMsgJointStateArrayNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgJointStateArray*(): Ros2Aimdk_msgsMsgJointStateArray =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`state` = initRos2Aimdk_msgsMsgDomainErrorState()
  result.`joints` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgJointStateArray; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`state`,w)
  if value.`joints`.len > 64: fail(22)
  putInteger(w,uint32(value.`joints`.len))
  for e in value.`joints`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgJointStateArray*(r: var Reader): Ros2Aimdk_msgsMsgJointStateArray =
  result = initRos2Aimdk_msgsMsgJointStateArray()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`state` = readRos2Aimdk_msgsMsgDomainErrorState(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`joints` = newSeq[Ros2Aimdk_msgsMsgJointState](count2)
  for i in 0..<count2:
    result.`joints`[i] = readRos2Aimdk_msgsMsgJointState(r)
proc encode*(value: Ros2Aimdk_msgsMsgJointStateArray): seq[byte] =
  var w = initWriter(10269)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgJointStateArray*(b: seq[byte]): Ros2Aimdk_msgsMsgJointStateArray =
  var r = initReader(b,10269)
  result = readRos2Aimdk_msgsMsgJointStateArray(r)
  finish(r)
type Ros2Aimdk_msgsMsgModuleChannelInfo* = object
  `name`*: string
  `type`*: string
  `frequency`*: float64
  `min_time_diff`*: float64
  `max_time_diff`*: float64
  `std_dev`*: float64
  `window_size`*: int32
  `timeout_threshold`*: float64
  `is_active`*: bool
  `is_timeout`*: bool
  `backends`*: seq[string]
const Ros2Aimdk_msgsMsgModuleChannelInfoMaximumWireBytes* = 586
const Ros2Aimdk_msgsMsgModuleChannelInfoCodecIdentity* = "UWVMROS1_d6cfacaf7cd28f18d14ef270b868b354e896f937181c8d29279e1eac21990696"
const Ros2Aimdk_msgsMsgModuleChannelInfoNativeType* = "aimdk_msgs/msg/ModuleChannelInfo"
const Ros2Aimdk_msgsMsgModuleChannelInfoNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgModuleChannelInfo*(): Ros2Aimdk_msgsMsgModuleChannelInfo =
  result.`name` = ""
  result.`type` = ""
  result.`frequency` = 0
  result.`min_time_diff` = 0
  result.`max_time_diff` = 0
  result.`std_dev` = 0
  result.`window_size` = 0
  result.`timeout_threshold` = 0
  result.`is_active` = false
  result.`is_timeout` = false
  result.`backends` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgModuleChannelInfo; w: var Writer) =
  putString(w,value.`name`,128)
  putString(w,value.`type`,128)
  putFloat64(w,value.`frequency`)
  putFloat64(w,value.`min_time_diff`)
  putFloat64(w,value.`max_time_diff`)
  putFloat64(w,value.`std_dev`)
  putInteger(w,value.`window_size`)
  putFloat64(w,value.`timeout_threshold`)
  putBool(w,value.`is_active`)
  putBool(w,value.`is_timeout`)
  if value.`backends`.len > 4: fail(22)
  putInteger(w,uint32(value.`backends`.len))
  for e in value.`backends`:
    putString(w,e,64)
proc readRos2Aimdk_msgsMsgModuleChannelInfo*(r: var Reader): Ros2Aimdk_msgsMsgModuleChannelInfo =
  result = initRos2Aimdk_msgsMsgModuleChannelInfo()
  result.`name` = getString(r,128)
  result.`type` = getString(r,128)
  result.`frequency` = getFloat64(r)
  result.`min_time_diff` = getFloat64(r)
  result.`max_time_diff` = getFloat64(r)
  result.`std_dev` = getFloat64(r)
  result.`window_size` = getInteger(r,int32)
  result.`timeout_threshold` = getFloat64(r)
  result.`is_active` = getBool(r)
  result.`is_timeout` = getBool(r)
  let rawcount10 = getInteger(r,uint32)
  if rawcount10 > 4: fail(22)
  let count10 = int(rawcount10)
  result.`backends` = newSeq[string](count10)
  for i in 0..<count10:
    result.`backends`[i] = getString(r,64)
proc encode*(value: Ros2Aimdk_msgsMsgModuleChannelInfo): seq[byte] =
  var w = initWriter(586)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgModuleChannelInfo*(b: seq[byte]): Ros2Aimdk_msgsMsgModuleChannelInfo =
  var r = initReader(b,586)
  result = readRos2Aimdk_msgsMsgModuleChannelInfo(r)
  finish(r)
type Ros2Aimdk_msgsMsgModuleRpcInfo* = object
  `name`*: string
  `req_type`*: string
  `res_type`*: string
  `backends`*: seq[string]
const Ros2Aimdk_msgsMsgModuleRpcInfoMaximumWireBytes* = 672
const Ros2Aimdk_msgsMsgModuleRpcInfoCodecIdentity* = "UWVMROS1_e06e5cd98eaa4f17cebd95db53f6aa175cdc3682f3912f365947f8f8950d02d8"
const Ros2Aimdk_msgsMsgModuleRpcInfoNativeType* = "aimdk_msgs/msg/ModuleRpcInfo"
const Ros2Aimdk_msgsMsgModuleRpcInfoNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgModuleRpcInfo*(): Ros2Aimdk_msgsMsgModuleRpcInfo =
  result.`name` = ""
  result.`req_type` = ""
  result.`res_type` = ""
  result.`backends` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgModuleRpcInfo; w: var Writer) =
  putString(w,value.`name`,128)
  putString(w,value.`req_type`,128)
  putString(w,value.`res_type`,128)
  if value.`backends`.len > 4: fail(22)
  putInteger(w,uint32(value.`backends`.len))
  for e in value.`backends`:
    putString(w,e,64)
proc readRos2Aimdk_msgsMsgModuleRpcInfo*(r: var Reader): Ros2Aimdk_msgsMsgModuleRpcInfo =
  result = initRos2Aimdk_msgsMsgModuleRpcInfo()
  result.`name` = getString(r,128)
  result.`req_type` = getString(r,128)
  result.`res_type` = getString(r,128)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 4: fail(22)
  let count3 = int(rawcount3)
  result.`backends` = newSeq[string](count3)
  for i in 0..<count3:
    result.`backends`[i] = getString(r,64)
proc encode*(value: Ros2Aimdk_msgsMsgModuleRpcInfo): seq[byte] =
  var w = initWriter(672)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgModuleRpcInfo*(b: seq[byte]): Ros2Aimdk_msgsMsgModuleRpcInfo =
  var r = initReader(b,672)
  result = readRos2Aimdk_msgsMsgModuleRpcInfo(r)
  finish(r)
type Ros2Aimdk_msgsMsgModuleResourceInfo* = object
  `module_name`*: string
  `rpc_clients`*: seq[Ros2Aimdk_msgsMsgModuleRpcInfo]
  `rpc_services`*: seq[Ros2Aimdk_msgsMsgModuleRpcInfo]
  `pub_channels`*: seq[Ros2Aimdk_msgsMsgModuleChannelInfo]
  `sub_channels`*: seq[Ros2Aimdk_msgsMsgModuleChannelInfo]
const Ros2Aimdk_msgsMsgModuleResourceInfoMaximumWireBytes* = 5180
const Ros2Aimdk_msgsMsgModuleResourceInfoCodecIdentity* = "UWVMROS1_de2a3067e5bff40e7bd9949ce9923b6be34c8f822f74a036402a9253717aaa8f"
const Ros2Aimdk_msgsMsgModuleResourceInfoNativeType* = "aimdk_msgs/msg/ModuleResourceInfo"
const Ros2Aimdk_msgsMsgModuleResourceInfoNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgModuleResourceInfo*(): Ros2Aimdk_msgsMsgModuleResourceInfo =
  result.`module_name` = ""
  result.`rpc_clients` = @[]
  result.`rpc_services` = @[]
  result.`pub_channels` = @[]
  result.`sub_channels` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgModuleResourceInfo; w: var Writer) =
  putString(w,value.`module_name`,128)
  if value.`rpc_clients`.len > 2: fail(22)
  putInteger(w,uint32(value.`rpc_clients`.len))
  for e in value.`rpc_clients`:
    writeFields(e,w)
  if value.`rpc_services`.len > 2: fail(22)
  putInteger(w,uint32(value.`rpc_services`.len))
  for e in value.`rpc_services`:
    writeFields(e,w)
  if value.`pub_channels`.len > 2: fail(22)
  putInteger(w,uint32(value.`pub_channels`.len))
  for e in value.`pub_channels`:
    writeFields(e,w)
  if value.`sub_channels`.len > 2: fail(22)
  putInteger(w,uint32(value.`sub_channels`.len))
  for e in value.`sub_channels`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgModuleResourceInfo*(r: var Reader): Ros2Aimdk_msgsMsgModuleResourceInfo =
  result = initRos2Aimdk_msgsMsgModuleResourceInfo()
  result.`module_name` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 2: fail(22)
  let count1 = int(rawcount1)
  result.`rpc_clients` = newSeq[Ros2Aimdk_msgsMsgModuleRpcInfo](count1)
  for i in 0..<count1:
    result.`rpc_clients`[i] = readRos2Aimdk_msgsMsgModuleRpcInfo(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 2: fail(22)
  let count2 = int(rawcount2)
  result.`rpc_services` = newSeq[Ros2Aimdk_msgsMsgModuleRpcInfo](count2)
  for i in 0..<count2:
    result.`rpc_services`[i] = readRos2Aimdk_msgsMsgModuleRpcInfo(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 2: fail(22)
  let count3 = int(rawcount3)
  result.`pub_channels` = newSeq[Ros2Aimdk_msgsMsgModuleChannelInfo](count3)
  for i in 0..<count3:
    result.`pub_channels`[i] = readRos2Aimdk_msgsMsgModuleChannelInfo(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 2: fail(22)
  let count4 = int(rawcount4)
  result.`sub_channels` = newSeq[Ros2Aimdk_msgsMsgModuleChannelInfo](count4)
  for i in 0..<count4:
    result.`sub_channels`[i] = readRos2Aimdk_msgsMsgModuleChannelInfo(r)
proc encode*(value: Ros2Aimdk_msgsMsgModuleResourceInfo): seq[byte] =
  var w = initWriter(5180)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgModuleResourceInfo*(b: seq[byte]): Ros2Aimdk_msgsMsgModuleResourceInfo =
  var r = initReader(b,5180)
  result = readRos2Aimdk_msgsMsgModuleResourceInfo(r)
  finish(r)
type Ros2Aimdk_msgsMsgThreadResourceInfo* = object
  `thread_id`*: uint64
  `thread_name`*: string
  `cpu_usage_ratio`*: float64
  `cpu_sched_policy`*: string
  `cpu_sched_priority`*: int32
  `bounding_cpus`*: seq[int32]
const Ros2Aimdk_msgsMsgThreadResourceInfoMaximumWireBytes* = 352
const Ros2Aimdk_msgsMsgThreadResourceInfoCodecIdentity* = "UWVMROS1_7232a79e41b62d823fd87d761df60759839543aedbe5fa338fb46816687a0a15"
const Ros2Aimdk_msgsMsgThreadResourceInfoNativeType* = "aimdk_msgs/msg/ThreadResourceInfo"
const Ros2Aimdk_msgsMsgThreadResourceInfoNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgThreadResourceInfo*(): Ros2Aimdk_msgsMsgThreadResourceInfo =
  result.`thread_id` = 0
  result.`thread_name` = ""
  result.`cpu_usage_ratio` = 0
  result.`cpu_sched_policy` = ""
  result.`cpu_sched_priority` = 0
  result.`bounding_cpus` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgThreadResourceInfo; w: var Writer) =
  putInteger(w,value.`thread_id`)
  putString(w,value.`thread_name`,128)
  putFloat64(w,value.`cpu_usage_ratio`)
  putString(w,value.`cpu_sched_policy`,128)
  putInteger(w,value.`cpu_sched_priority`)
  if value.`bounding_cpus`.len > 16: fail(22)
  putInteger(w,uint32(value.`bounding_cpus`.len))
  for e in value.`bounding_cpus`:
    putInteger(w,e)
proc readRos2Aimdk_msgsMsgThreadResourceInfo*(r: var Reader): Ros2Aimdk_msgsMsgThreadResourceInfo =
  result = initRos2Aimdk_msgsMsgThreadResourceInfo()
  result.`thread_id` = getInteger(r,uint64)
  result.`thread_name` = getString(r,128)
  result.`cpu_usage_ratio` = getFloat64(r)
  result.`cpu_sched_policy` = getString(r,128)
  result.`cpu_sched_priority` = getInteger(r,int32)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 16: fail(22)
  let count5 = int(rawcount5)
  result.`bounding_cpus` = newSeq[int32](count5)
  for i in 0..<count5:
    result.`bounding_cpus`[i] = getInteger(r,int32)
proc encode*(value: Ros2Aimdk_msgsMsgThreadResourceInfo): seq[byte] =
  var w = initWriter(352)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgThreadResourceInfo*(b: seq[byte]): Ros2Aimdk_msgsMsgThreadResourceInfo =
  var r = initReader(b,352)
  result = readRos2Aimdk_msgsMsgThreadResourceInfo(r)
  finish(r)
type Ros2Aimdk_msgsMsgProcessResourceInfo* = object
  `process_id`*: uint64
  `process_name`*: string
  `process_mem_usage`*: uint64
  `process_mem_usage_ratio`*: float64
  `process_cpu_usage_ratio`*: float64
  `thread_count`*: uint64
  `threads`*: seq[Ros2Aimdk_msgsMsgThreadResourceInfo]
const Ros2Aimdk_msgsMsgProcessResourceInfoMaximumWireBytes* = 1584
const Ros2Aimdk_msgsMsgProcessResourceInfoCodecIdentity* = "UWVMROS1_90b5f60525abc33814dfc7e3f7e6af23c7f43a232d74a904bd06f20d27ef9550"
const Ros2Aimdk_msgsMsgProcessResourceInfoNativeType* = "aimdk_msgs/msg/ProcessResourceInfo"
const Ros2Aimdk_msgsMsgProcessResourceInfoNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgProcessResourceInfo*(): Ros2Aimdk_msgsMsgProcessResourceInfo =
  result.`process_id` = 0
  result.`process_name` = ""
  result.`process_mem_usage` = 0
  result.`process_mem_usage_ratio` = 0
  result.`process_cpu_usage_ratio` = 0
  result.`thread_count` = 0
  result.`threads` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgProcessResourceInfo; w: var Writer) =
  putInteger(w,value.`process_id`)
  putString(w,value.`process_name`,128)
  putInteger(w,value.`process_mem_usage`)
  putFloat64(w,value.`process_mem_usage_ratio`)
  putFloat64(w,value.`process_cpu_usage_ratio`)
  putInteger(w,value.`thread_count`)
  if value.`threads`.len > 4: fail(22)
  putInteger(w,uint32(value.`threads`.len))
  for e in value.`threads`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgProcessResourceInfo*(r: var Reader): Ros2Aimdk_msgsMsgProcessResourceInfo =
  result = initRos2Aimdk_msgsMsgProcessResourceInfo()
  result.`process_id` = getInteger(r,uint64)
  result.`process_name` = getString(r,128)
  result.`process_mem_usage` = getInteger(r,uint64)
  result.`process_mem_usage_ratio` = getFloat64(r)
  result.`process_cpu_usage_ratio` = getFloat64(r)
  result.`thread_count` = getInteger(r,uint64)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 4: fail(22)
  let count6 = int(rawcount6)
  result.`threads` = newSeq[Ros2Aimdk_msgsMsgThreadResourceInfo](count6)
  for i in 0..<count6:
    result.`threads`[i] = readRos2Aimdk_msgsMsgThreadResourceInfo(r)
proc encode*(value: Ros2Aimdk_msgsMsgProcessResourceInfo): seq[byte] =
  var w = initWriter(1584)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgProcessResourceInfo*(b: seq[byte]): Ros2Aimdk_msgsMsgProcessResourceInfo =
  var r = initReader(b,1584)
  result = readRos2Aimdk_msgsMsgProcessResourceInfo(r)
  finish(r)
type Ros2Aimdk_msgsMsgProcessInfo* = object
  `header`*: Ros2Aimdk_msgsMsgMessageHeader
  `app_name`*: string
  `resource`*: Ros2Aimdk_msgsMsgProcessResourceInfo
  `modules`*: seq[Ros2Aimdk_msgsMsgModuleResourceInfo]
const Ros2Aimdk_msgsMsgProcessInfoMaximumWireBytes* = 12232
const Ros2Aimdk_msgsMsgProcessInfoCodecIdentity* = "UWVMROS1_190d10dc74d66eecf65495e2795525b4f6016bb3efde2f16310e54287e703996"
const Ros2Aimdk_msgsMsgProcessInfoNativeType* = "aimdk_msgs/msg/ProcessInfo"
const Ros2Aimdk_msgsMsgProcessInfoNativeIdentity* = ""
proc initRos2Aimdk_msgsMsgProcessInfo*(): Ros2Aimdk_msgsMsgProcessInfo =
  result.`header` = initRos2Aimdk_msgsMsgMessageHeader()
  result.`app_name` = ""
  result.`resource` = initRos2Aimdk_msgsMsgProcessResourceInfo()
  result.`modules` = @[]
proc writeFields*(value: Ros2Aimdk_msgsMsgProcessInfo; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`app_name`,128)
  writeFields(value.`resource`,w)
  if value.`modules`.len > 2: fail(22)
  putInteger(w,uint32(value.`modules`.len))
  for e in value.`modules`:
    writeFields(e,w)
proc readRos2Aimdk_msgsMsgProcessInfo*(r: var Reader): Ros2Aimdk_msgsMsgProcessInfo =
  result = initRos2Aimdk_msgsMsgProcessInfo()
  result.`header` = readRos2Aimdk_msgsMsgMessageHeader(r)
  result.`app_name` = getString(r,128)
  result.`resource` = readRos2Aimdk_msgsMsgProcessResourceInfo(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 2: fail(22)
  let count3 = int(rawcount3)
  result.`modules` = newSeq[Ros2Aimdk_msgsMsgModuleResourceInfo](count3)
  for i in 0..<count3:
    result.`modules`[i] = readRos2Aimdk_msgsMsgModuleResourceInfo(r)
proc encode*(value: Ros2Aimdk_msgsMsgProcessInfo): seq[byte] =
  var w = initWriter(12232)
  writeFields(value,w)
  w.bytes
proc decodeRos2Aimdk_msgsMsgProcessInfo*(b: seq[byte]): Ros2Aimdk_msgsMsgProcessInfo =
  var r = initReader(b,12232)
  result = readRos2Aimdk_msgsMsgProcessInfo(r)
  finish(r)
