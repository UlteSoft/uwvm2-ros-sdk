## UWVM_COMPLETE_FIELD_CONTRACTS
## @details Field domains below come from the unchanged canonical source catalog.
## @file records.nim
## @brief Provide the complete trossen ros2_iron canonical value surface.
## @details The original 30 record catalog retains field order, constants, defaults and quotas.
## Borrowed values and buffers must remain stable while a conversion is in progress.
## Malformed, truncated and trailing wire values are refused through the shared wire error contract.
## No declaration grants a capability or establishes a native ROS registry identity.
## Original declarations and units are retained in share/platform/trossen/catalogs.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
## @brief Own every original field of ROS2 builtin_interfaces/msg/Duration.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Builtin_interfacesMsgDuration* = object
  ## @brief Preserve original sec as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `sec`*: int32
  ## @brief Preserve original nanosec as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `nanosec`*: uint32
const Ros2Builtin_interfacesMsgDurationMaximumWireBytes* = 8
const Ros2Builtin_interfacesMsgDurationCodecIdentity* = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4"
const Ros2Builtin_interfacesMsgDurationNativeType* = "builtin_interfaces/msg/Duration"
const Ros2Builtin_interfacesMsgDurationNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Builtin_interfacesMsgDuration*(): Ros2Builtin_interfacesMsgDuration =
  result.`sec` = 0
  result.`nanosec` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Builtin_interfacesMsgDuration; w: var Writer) =
  if value.`nanosec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nanosec`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Builtin_interfacesMsgDuration*(r: var Reader): Ros2Builtin_interfacesMsgDuration =
  result = initRos2Builtin_interfacesMsgDuration()
  result.`sec` = getInteger(r,int32)
  result.`nanosec` = getInteger(r,uint32)
  if result.`nanosec` >= 1000000000: fail(22)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Builtin_interfacesMsgDuration): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Builtin_interfacesMsgDuration*(b: seq[byte]): Ros2Builtin_interfacesMsgDuration =
  var r = initReader(b,8)
  result = readRos2Builtin_interfacesMsgDuration(r)
  finish(r)
## @brief Own every original field of ROS2 builtin_interfaces/msg/Time.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Builtin_interfacesMsgTime* = object
  ## @brief Preserve original sec as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `sec`*: int32
  ## @brief Preserve original nanosec as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `nanosec`*: uint32
const Ros2Builtin_interfacesMsgTimeMaximumWireBytes* = 8
const Ros2Builtin_interfacesMsgTimeCodecIdentity* = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7"
const Ros2Builtin_interfacesMsgTimeNativeType* = "builtin_interfaces/msg/Time"
const Ros2Builtin_interfacesMsgTimeNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Builtin_interfacesMsgTime*(): Ros2Builtin_interfacesMsgTime =
  result.`sec` = 0
  result.`nanosec` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Builtin_interfacesMsgTime; w: var Writer) =
  if value.`nanosec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nanosec`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Builtin_interfacesMsgTime*(r: var Reader): Ros2Builtin_interfacesMsgTime =
  result = initRos2Builtin_interfacesMsgTime()
  result.`sec` = getInteger(r,int32)
  result.`nanosec` = getInteger(r,uint32)
  if result.`nanosec` >= 1000000000: fail(22)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Builtin_interfacesMsgTime): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Builtin_interfacesMsgTime*(b: seq[byte]): Ros2Builtin_interfacesMsgTime =
  var r = initReader(b,8)
  result = readRos2Builtin_interfacesMsgTime(r)
  finish(r)
## @brief Own every original field of ROS2 std_msgs/msg/Header.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Std_msgsMsgHeader* = object
  ## @brief Preserve original stamp as builtin_interfaces/msg/Time.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `stamp`*: Ros2Builtin_interfacesMsgTime
  ## @brief Preserve original frame_id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `frame_id`*: string
const Ros2Std_msgsMsgHeaderMaximumWireBytes* = 140
const Ros2Std_msgsMsgHeaderCodecIdentity* = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96"
const Ros2Std_msgsMsgHeaderNativeType* = "std_msgs/msg/Header"
const Ros2Std_msgsMsgHeaderNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Std_msgsMsgHeader*(): Ros2Std_msgsMsgHeader =
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
  result.`frame_id` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Std_msgsMsgHeader; w: var Writer) =
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Std_msgsMsgHeader*(r: var Reader): Ros2Std_msgsMsgHeader =
  result = initRos2Std_msgsMsgHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
  result.`frame_id` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Std_msgsMsgHeader): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Std_msgsMsgHeader*(b: seq[byte]): Ros2Std_msgsMsgHeader =
  var r = initReader(b,140)
  result = readRos2Std_msgsMsgHeader(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_footswitch_msgs/msg/FootswitchState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_footswitch_msgsMsgFootswitchState* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original state as bool.
  ## @details Exactly 3 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `state`*: array[3,bool]
const Ros2Interbotix_footswitch_msgsMsgFootswitchStateMaximumWireBytes* = 143
const Ros2Interbotix_footswitch_msgsMsgFootswitchStateCodecIdentity* = "UWVMROS1_aeea56b64e751aa1b141270177969582a2a36c66276565733efe2180c376842c"
const Ros2Interbotix_footswitch_msgsMsgFootswitchStateNativeType* = "interbotix_footswitch_msgs/msg/FootswitchState"
const Ros2Interbotix_footswitch_msgsMsgFootswitchStateNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_footswitch_msgsMsgFootswitchState*(): Ros2Interbotix_footswitch_msgsMsgFootswitchState =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`state` = [false,false,false]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_footswitch_msgsMsgFootswitchState; w: var Writer) =
  writeFields(value.`header`,w)
  for e in value.`state`:
    putBool(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_footswitch_msgsMsgFootswitchState*(r: var Reader): Ros2Interbotix_footswitch_msgsMsgFootswitchState =
  result = initRos2Interbotix_footswitch_msgsMsgFootswitchState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let count1 = 3
  for i in 0..<count1:
    result.`state`[i] = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_footswitch_msgsMsgFootswitchState): seq[byte] =
  var w = initWriter(143)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_footswitch_msgsMsgFootswitchState*(b: seq[byte]): Ros2Interbotix_footswitch_msgsMsgFootswitchState =
  var r = initReader(b,143)
  result = readRos2Interbotix_footswitch_msgsMsgFootswitchState(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_slate_msgs/srv/SetLightState_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_slate_msgsSrvSetLightState_Request* = object
  ## @brief Preserve original light_state as uint32.
  ## @details Declared native default: 0. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `light_state`*: uint32
const Ros2Interbotix_slate_msgsSrvSetLightState_RequestMaximumWireBytes* = 4
const Ros2Interbotix_slate_msgsSrvSetLightState_RequestCodecIdentity* = "UWVMROS1_ff7ce99b264f9f71c006b31b92a9f265c87345e85a97e0cbfe1bef87faada554"
const Ros2Interbotix_slate_msgsSrvSetLightState_RequestNativeType* = "interbotix_slate_msgs/srv/SetLightState_Request"
const Ros2Interbotix_slate_msgsSrvSetLightState_RequestNativeIdentity* = ""
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_OFF*: uint32 = 0'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_RED*: uint32 = 1'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_GREEN*: uint32 = 2'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_YELLOW*: uint32 = 3'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_BLUE*: uint32 = 4'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_PURPLE*: uint32 = 5'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_CYAN*: uint32 = 6'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_WHITE*: uint32 = 7'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_RED_FLASH*: uint32 = 9'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_GREEN_FLASH*: uint32 = 10'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_YELLOW_FLASH*: uint32 = 11'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_BLUE_FLASH*: uint32 = 12'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_PURPLE_FLASH*: uint32 = 13'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_CYAN_FLASH*: uint32 = 14'u32
const Ros2Interbotix_slate_msgsSrvSetLightState_Request_LIGHT_STATE_WHITE_FLASH*: uint32 = 15'u32
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_slate_msgsSrvSetLightState_Request*(): Ros2Interbotix_slate_msgsSrvSetLightState_Request =
  result.`light_state` = 0'u32
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_slate_msgsSrvSetLightState_Request; w: var Writer) =
  putInteger(w,value.`light_state`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_slate_msgsSrvSetLightState_Request*(r: var Reader): Ros2Interbotix_slate_msgsSrvSetLightState_Request =
  result = initRos2Interbotix_slate_msgsSrvSetLightState_Request()
  result.`light_state` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_slate_msgsSrvSetLightState_Request): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_slate_msgsSrvSetLightState_Request*(b: seq[byte]): Ros2Interbotix_slate_msgsSrvSetLightState_Request =
  var r = initReader(b,4)
  result = readRos2Interbotix_slate_msgsSrvSetLightState_Request(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_slate_msgs/srv/SetLightState_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_slate_msgsSrvSetLightState_Response* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros2Interbotix_slate_msgsSrvSetLightState_ResponseMaximumWireBytes* = 133
const Ros2Interbotix_slate_msgsSrvSetLightState_ResponseCodecIdentity* = "UWVMROS1_66b8c031625c139338db9a44150a4a1bb3373aaab6138e19170bd4d73fcb9784"
const Ros2Interbotix_slate_msgsSrvSetLightState_ResponseNativeType* = "interbotix_slate_msgs/srv/SetLightState_Response"
const Ros2Interbotix_slate_msgsSrvSetLightState_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_slate_msgsSrvSetLightState_Response*(): Ros2Interbotix_slate_msgsSrvSetLightState_Response =
  result.`success` = false
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_slate_msgsSrvSetLightState_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_slate_msgsSrvSetLightState_Response*(r: var Reader): Ros2Interbotix_slate_msgsSrvSetLightState_Response =
  result = initRos2Interbotix_slate_msgsSrvSetLightState_Response()
  result.`success` = getBool(r)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_slate_msgsSrvSetLightState_Response): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_slate_msgsSrvSetLightState_Response*(b: seq[byte]): Ros2Interbotix_slate_msgsSrvSetLightState_Response =
  var r = initReader(b,133)
  result = readRos2Interbotix_slate_msgsSrvSetLightState_Response(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_slate_msgs/srv/SetString_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_slate_msgsSrvSetString_Request* = object
  ## @brief Preserve original data as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `data`*: string
const Ros2Interbotix_slate_msgsSrvSetString_RequestMaximumWireBytes* = 132
const Ros2Interbotix_slate_msgsSrvSetString_RequestCodecIdentity* = "UWVMROS1_73dee49ce66919e9dbe833756a932f480d5a73370743eff8f6c18f86b9b33c45"
const Ros2Interbotix_slate_msgsSrvSetString_RequestNativeType* = "interbotix_slate_msgs/srv/SetString_Request"
const Ros2Interbotix_slate_msgsSrvSetString_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_slate_msgsSrvSetString_Request*(): Ros2Interbotix_slate_msgsSrvSetString_Request =
  result.`data` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_slate_msgsSrvSetString_Request; w: var Writer) =
  putString(w,value.`data`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_slate_msgsSrvSetString_Request*(r: var Reader): Ros2Interbotix_slate_msgsSrvSetString_Request =
  result = initRos2Interbotix_slate_msgsSrvSetString_Request()
  result.`data` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_slate_msgsSrvSetString_Request): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_slate_msgsSrvSetString_Request*(b: seq[byte]): Ros2Interbotix_slate_msgsSrvSetString_Request =
  var r = initReader(b,132)
  result = readRos2Interbotix_slate_msgsSrvSetString_Request(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_slate_msgs/srv/SetString_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_slate_msgsSrvSetString_Response* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros2Interbotix_slate_msgsSrvSetString_ResponseMaximumWireBytes* = 133
const Ros2Interbotix_slate_msgsSrvSetString_ResponseCodecIdentity* = "UWVMROS1_b25e0d761dc29daba23de652fec51f967a432fd13fe78a5ade79e7cdb00b4e33"
const Ros2Interbotix_slate_msgsSrvSetString_ResponseNativeType* = "interbotix_slate_msgs/srv/SetString_Response"
const Ros2Interbotix_slate_msgsSrvSetString_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_slate_msgsSrvSetString_Response*(): Ros2Interbotix_slate_msgsSrvSetString_Response =
  result.`success` = false
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_slate_msgsSrvSetString_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_slate_msgsSrvSetString_Response*(r: var Reader): Ros2Interbotix_slate_msgsSrvSetString_Response =
  result = initRos2Interbotix_slate_msgsSrvSetString_Response()
  result.`success` = getBool(r)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_slate_msgsSrvSetString_Response): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_slate_msgsSrvSetString_Response*(b: seq[byte]): Ros2Interbotix_slate_msgsSrvSetString_Response =
  var r = initReader(b,133)
  result = readRos2Interbotix_slate_msgsSrvSetString_Response(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/msg/ArmJoy.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsMsgArmJoy* = object
  ## @brief Preserve original ee_x_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_x_cmd`*: int8
  ## @brief Preserve original ee_y_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_y_cmd`*: int8
  ## @brief Preserve original ee_z_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_z_cmd`*: int8
  ## @brief Preserve original ee_roll_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_roll_cmd`*: int8
  ## @brief Preserve original ee_pitch_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_pitch_cmd`*: int8
  ## @brief Preserve original waist_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `waist_cmd`*: int8
  ## @brief Preserve original gripper_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gripper_cmd`*: int8
  ## @brief Preserve original pose_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose_cmd`*: int8
  ## @brief Preserve original speed_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_cmd`*: int8
  ## @brief Preserve original speed_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_toggle_cmd`*: int8
  ## @brief Preserve original gripper_pwm_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gripper_pwm_cmd`*: int8
  ## @brief Preserve original torque_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `torque_cmd`*: int8
const Ros2Interbotix_xs_msgsMsgArmJoyMaximumWireBytes* = 12
const Ros2Interbotix_xs_msgsMsgArmJoyCodecIdentity* = "UWVMROS1_26c3b0f22cf87c464b8cfa99b6de6ba7bc16efe7244ab36828c98e1518d69b1f"
const Ros2Interbotix_xs_msgsMsgArmJoyNativeType* = "interbotix_xs_msgs/msg/ArmJoy"
const Ros2Interbotix_xs_msgsMsgArmJoyNativeIdentity* = ""
const Ros2Interbotix_xs_msgsMsgArmJoy_EE_X_INC*: int8 = 1'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_EE_X_DEC*: int8 = 2'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_EE_Y_INC*: int8 = 3'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_EE_Y_DEC*: int8 = 4'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_EE_Z_INC*: int8 = 5'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_EE_Z_DEC*: int8 = 6'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_EE_ROLL_CCW*: int8 = 7'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_EE_ROLL_CW*: int8 = 8'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_EE_PITCH_UP*: int8 = 9'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_EE_PITCH_DOWN*: int8 = 10'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_WAIST_CCW*: int8 = 11'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_WAIST_CW*: int8 = 12'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_RELEASE*: int8 = 13'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_GRASP*: int8 = 14'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_HOME_POSE*: int8 = 15'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_SLEEP_POSE*: int8 = 16'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_SPEED_INC*: int8 = 17'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_SPEED_DEC*: int8 = 18'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_SPEED_COARSE*: int8 = 19'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_SPEED_FINE*: int8 = 20'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_PWM_INC*: int8 = 21'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_GRIPPER_PWM_DEC*: int8 = 22'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_TORQUE_ON*: int8 = 23'i8
const Ros2Interbotix_xs_msgsMsgArmJoy_TORQUE_OFF*: int8 = 24'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsMsgArmJoy*(): Ros2Interbotix_xs_msgsMsgArmJoy =
  result.`ee_x_cmd` = 0
  result.`ee_y_cmd` = 0
  result.`ee_z_cmd` = 0
  result.`ee_roll_cmd` = 0
  result.`ee_pitch_cmd` = 0
  result.`waist_cmd` = 0
  result.`gripper_cmd` = 0
  result.`pose_cmd` = 0
  result.`speed_cmd` = 0
  result.`speed_toggle_cmd` = 0
  result.`gripper_pwm_cmd` = 0
  result.`torque_cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsMsgArmJoy; w: var Writer) =
  putInteger(w,value.`ee_x_cmd`)
  putInteger(w,value.`ee_y_cmd`)
  putInteger(w,value.`ee_z_cmd`)
  putInteger(w,value.`ee_roll_cmd`)
  putInteger(w,value.`ee_pitch_cmd`)
  putInteger(w,value.`waist_cmd`)
  putInteger(w,value.`gripper_cmd`)
  putInteger(w,value.`pose_cmd`)
  putInteger(w,value.`speed_cmd`)
  putInteger(w,value.`speed_toggle_cmd`)
  putInteger(w,value.`gripper_pwm_cmd`)
  putInteger(w,value.`torque_cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsMsgArmJoy*(r: var Reader): Ros2Interbotix_xs_msgsMsgArmJoy =
  result = initRos2Interbotix_xs_msgsMsgArmJoy()
  result.`ee_x_cmd` = getInteger(r,int8)
  result.`ee_y_cmd` = getInteger(r,int8)
  result.`ee_z_cmd` = getInteger(r,int8)
  result.`ee_roll_cmd` = getInteger(r,int8)
  result.`ee_pitch_cmd` = getInteger(r,int8)
  result.`waist_cmd` = getInteger(r,int8)
  result.`gripper_cmd` = getInteger(r,int8)
  result.`pose_cmd` = getInteger(r,int8)
  result.`speed_cmd` = getInteger(r,int8)
  result.`speed_toggle_cmd` = getInteger(r,int8)
  result.`gripper_pwm_cmd` = getInteger(r,int8)
  result.`torque_cmd` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsMsgArmJoy): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsMsgArmJoy*(b: seq[byte]): Ros2Interbotix_xs_msgsMsgArmJoy =
  var r = initReader(b,12)
  result = readRos2Interbotix_xs_msgsMsgArmJoy(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/msg/HexJoy.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsMsgHexJoy* = object
  ## @brief Preserve original world_x_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `world_x_cmd`*: int8
  ## @brief Preserve original world_y_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `world_y_cmd`*: int8
  ## @brief Preserve original world_yaw_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `world_yaw_cmd`*: int8
  ## @brief Preserve original place_x_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `place_x_cmd`*: int8
  ## @brief Preserve original place_y_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `place_y_cmd`*: int8
  ## @brief Preserve original place_z_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `place_z_cmd`*: int8
  ## @brief Preserve original place_roll_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `place_roll_cmd`*: int8
  ## @brief Preserve original place_pitch_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `place_pitch_cmd`*: int8
  ## @brief Preserve original pose_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose_cmd`*: int8
  ## @brief Preserve original move_type_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `move_type_cmd`*: int8
  ## @brief Preserve original gait_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gait_toggle_cmd`*: int8
  ## @brief Preserve original leg_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leg_toggle_cmd`*: int8
  ## @brief Preserve original stance_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `stance_cmd`*: int8
  ## @brief Preserve original reboot_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `reboot_cmd`*: int8
  ## @brief Preserve original set_home_pose_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `set_home_pose_cmd`*: int8
  ## @brief Preserve original speed_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_cmd`*: int8
  ## @brief Preserve original speed_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_toggle_cmd`*: int8
const Ros2Interbotix_xs_msgsMsgHexJoyMaximumWireBytes* = 17
const Ros2Interbotix_xs_msgsMsgHexJoyCodecIdentity* = "UWVMROS1_17c4cc565057e8b555ae945fdad4c8010a26dc411ad2fcc6da2edb9a1d9e9e3d"
const Ros2Interbotix_xs_msgsMsgHexJoyNativeType* = "interbotix_xs_msgs/msg/HexJoy"
const Ros2Interbotix_xs_msgsMsgHexJoyNativeIdentity* = ""
const Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_X_INC*: int8 = 1'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_X_DEC*: int8 = 2'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_Y_INC*: int8 = 3'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_Y_DEC*: int8 = 4'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_YAW_CCW*: int8 = 5'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_WORLD_YAW_CW*: int8 = 6'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_X_INC*: int8 = 7'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_X_DEC*: int8 = 8'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Y_INC*: int8 = 9'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Y_DEC*: int8 = 10'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Z_INC*: int8 = 11'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_Z_DEC*: int8 = 12'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_ROLL_CCW*: int8 = 13'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_ROLL_CW*: int8 = 14'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_PITCH_UP*: int8 = 15'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_PLACE_PITCH_DOWN*: int8 = 16'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_MOVE_HEXAPOD*: int8 = 17'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_MOVE_LEG*: int8 = 18'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_HOME_POSE*: int8 = 19'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_SLEEP_POSE*: int8 = 20'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_GAIT_NEXT*: int8 = 21'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_GAIT_PREVIOUS*: int8 = 22'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_LEG_NEXT*: int8 = 23'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_LEG_PREVIOUS*: int8 = 24'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_WIDEN_STANCE*: int8 = 25'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_NARROW_STANCE*: int8 = 26'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_REBOOT_MOTORS*: int8 = 27'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_SET_HOME_POSE*: int8 = 28'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_SPEED_INC*: int8 = 29'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_SPEED_DEC*: int8 = 30'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_SPEED_COARSE*: int8 = 31'i8
const Ros2Interbotix_xs_msgsMsgHexJoy_SPEED_FINE*: int8 = 32'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsMsgHexJoy*(): Ros2Interbotix_xs_msgsMsgHexJoy =
  result.`world_x_cmd` = 0
  result.`world_y_cmd` = 0
  result.`world_yaw_cmd` = 0
  result.`place_x_cmd` = 0
  result.`place_y_cmd` = 0
  result.`place_z_cmd` = 0
  result.`place_roll_cmd` = 0
  result.`place_pitch_cmd` = 0
  result.`pose_cmd` = 0
  result.`move_type_cmd` = 0
  result.`gait_toggle_cmd` = 0
  result.`leg_toggle_cmd` = 0
  result.`stance_cmd` = 0
  result.`reboot_cmd` = 0
  result.`set_home_pose_cmd` = 0
  result.`speed_cmd` = 0
  result.`speed_toggle_cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsMsgHexJoy; w: var Writer) =
  putInteger(w,value.`world_x_cmd`)
  putInteger(w,value.`world_y_cmd`)
  putInteger(w,value.`world_yaw_cmd`)
  putInteger(w,value.`place_x_cmd`)
  putInteger(w,value.`place_y_cmd`)
  putInteger(w,value.`place_z_cmd`)
  putInteger(w,value.`place_roll_cmd`)
  putInteger(w,value.`place_pitch_cmd`)
  putInteger(w,value.`pose_cmd`)
  putInteger(w,value.`move_type_cmd`)
  putInteger(w,value.`gait_toggle_cmd`)
  putInteger(w,value.`leg_toggle_cmd`)
  putInteger(w,value.`stance_cmd`)
  putInteger(w,value.`reboot_cmd`)
  putInteger(w,value.`set_home_pose_cmd`)
  putInteger(w,value.`speed_cmd`)
  putInteger(w,value.`speed_toggle_cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsMsgHexJoy*(r: var Reader): Ros2Interbotix_xs_msgsMsgHexJoy =
  result = initRos2Interbotix_xs_msgsMsgHexJoy()
  result.`world_x_cmd` = getInteger(r,int8)
  result.`world_y_cmd` = getInteger(r,int8)
  result.`world_yaw_cmd` = getInteger(r,int8)
  result.`place_x_cmd` = getInteger(r,int8)
  result.`place_y_cmd` = getInteger(r,int8)
  result.`place_z_cmd` = getInteger(r,int8)
  result.`place_roll_cmd` = getInteger(r,int8)
  result.`place_pitch_cmd` = getInteger(r,int8)
  result.`pose_cmd` = getInteger(r,int8)
  result.`move_type_cmd` = getInteger(r,int8)
  result.`gait_toggle_cmd` = getInteger(r,int8)
  result.`leg_toggle_cmd` = getInteger(r,int8)
  result.`stance_cmd` = getInteger(r,int8)
  result.`reboot_cmd` = getInteger(r,int8)
  result.`set_home_pose_cmd` = getInteger(r,int8)
  result.`speed_cmd` = getInteger(r,int8)
  result.`speed_toggle_cmd` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsMsgHexJoy): seq[byte] =
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsMsgHexJoy*(b: seq[byte]): Ros2Interbotix_xs_msgsMsgHexJoy =
  var r = initReader(b,17)
  result = readRos2Interbotix_xs_msgsMsgHexJoy(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/msg/JointGroupCommand.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsMsgJointGroupCommand* = object
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original cmd as float32.
  ## @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `cmd`*: seq[float32]
const Ros2Interbotix_xs_msgsMsgJointGroupCommandMaximumWireBytes* = 392
const Ros2Interbotix_xs_msgsMsgJointGroupCommandCodecIdentity* = "UWVMROS1_c038aeca8eb91f06dab5c70f8ed6b181442d0405df86ab2a19c20c076fffc42a"
const Ros2Interbotix_xs_msgsMsgJointGroupCommandNativeType* = "interbotix_xs_msgs/msg/JointGroupCommand"
const Ros2Interbotix_xs_msgsMsgJointGroupCommandNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsMsgJointGroupCommand*(): Ros2Interbotix_xs_msgsMsgJointGroupCommand =
  result.`name` = ""
  result.`cmd` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsMsgJointGroupCommand; w: var Writer) =
  putString(w,value.`name`,128)
  if value.`cmd`.len > 64: fail(22)
  putInteger(w,uint32(value.`cmd`.len))
  for e in value.`cmd`:
    putFloat32(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsMsgJointGroupCommand*(r: var Reader): Ros2Interbotix_xs_msgsMsgJointGroupCommand =
  result = initRos2Interbotix_xs_msgsMsgJointGroupCommand()
  result.`name` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`cmd` = newSeq[float32](count1)
  for i in 0..<count1:
    result.`cmd`[i] = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsMsgJointGroupCommand): seq[byte] =
  var w = initWriter(392)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsMsgJointGroupCommand*(b: seq[byte]): Ros2Interbotix_xs_msgsMsgJointGroupCommand =
  var r = initReader(b,392)
  result = readRos2Interbotix_xs_msgsMsgJointGroupCommand(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/msg/JointSingleCommand.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsMsgJointSingleCommand* = object
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original cmd as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `cmd`*: float32
const Ros2Interbotix_xs_msgsMsgJointSingleCommandMaximumWireBytes* = 136
const Ros2Interbotix_xs_msgsMsgJointSingleCommandCodecIdentity* = "UWVMROS1_6c5900103b35fd916f22997cb42cf48016f35edb4783012c1a9029486c03ac94"
const Ros2Interbotix_xs_msgsMsgJointSingleCommandNativeType* = "interbotix_xs_msgs/msg/JointSingleCommand"
const Ros2Interbotix_xs_msgsMsgJointSingleCommandNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsMsgJointSingleCommand*(): Ros2Interbotix_xs_msgsMsgJointSingleCommand =
  result.`name` = ""
  result.`cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsMsgJointSingleCommand; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat32(w,value.`cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsMsgJointSingleCommand*(r: var Reader): Ros2Interbotix_xs_msgsMsgJointSingleCommand =
  result = initRos2Interbotix_xs_msgsMsgJointSingleCommand()
  result.`name` = getString(r,128)
  result.`cmd` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsMsgJointSingleCommand): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsMsgJointSingleCommand*(b: seq[byte]): Ros2Interbotix_xs_msgsMsgJointSingleCommand =
  var r = initReader(b,136)
  result = readRos2Interbotix_xs_msgsMsgJointSingleCommand(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/msg/JointTemps.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsMsgJointTemps* = object
  ## @brief Preserve original names as string.
  ## @details At most 64 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `names`*: seq[string]
  ## @brief Preserve original temps as int32.
  ## @details At most 64 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `temps`*: seq[int32]
const Ros2Interbotix_xs_msgsMsgJointTempsMaximumWireBytes* = 8712
const Ros2Interbotix_xs_msgsMsgJointTempsCodecIdentity* = "UWVMROS1_e38f321a150c349a7bc72bbe45d004ac18cd2f147bf4cb73b1d53428a63fd2e4"
const Ros2Interbotix_xs_msgsMsgJointTempsNativeType* = "interbotix_xs_msgs/msg/JointTemps"
const Ros2Interbotix_xs_msgsMsgJointTempsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsMsgJointTemps*(): Ros2Interbotix_xs_msgsMsgJointTemps =
  result.`names` = @[]
  result.`temps` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsMsgJointTemps; w: var Writer) =
  if value.`names`.len > 64: fail(22)
  putInteger(w,uint32(value.`names`.len))
  for e in value.`names`:
    putString(w,e,128)
  if value.`temps`.len > 64: fail(22)
  putInteger(w,uint32(value.`temps`.len))
  for e in value.`temps`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsMsgJointTemps*(r: var Reader): Ros2Interbotix_xs_msgsMsgJointTemps =
  result = initRos2Interbotix_xs_msgsMsgJointTemps()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 64: fail(22)
  let count0 = int(rawcount0)
  result.`names` = newSeq[string](count0)
  for i in 0..<count0:
    result.`names`[i] = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 64: fail(22)
  let count1 = int(rawcount1)
  result.`temps` = newSeq[int32](count1)
  for i in 0..<count1:
    result.`temps`[i] = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsMsgJointTemps): seq[byte] =
  var w = initWriter(8712)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsMsgJointTemps*(b: seq[byte]): Ros2Interbotix_xs_msgsMsgJointTemps =
  var r = initReader(b,8712)
  result = readRos2Interbotix_xs_msgsMsgJointTemps(r)
  finish(r)
## @brief Own every original field of ROS2 trajectory_msgs/msg/JointTrajectoryPoint.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Trajectory_msgsMsgJointTrajectoryPoint* = object
  ## @brief Preserve original positions as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `positions`*: seq[float64]
  ## @brief Preserve original velocities as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `velocities`*: seq[float64]
  ## @brief Preserve original accelerations as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `accelerations`*: seq[float64]
  ## @brief Preserve original effort as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `effort`*: seq[float64]
  ## @brief Preserve original time_from_start as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `time_from_start`*: Ros2Builtin_interfacesMsgDuration
const Ros2Trajectory_msgsMsgJointTrajectoryPointMaximumWireBytes* = 536
const Ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity* = "UWVMROS1_1fb219d3c64ec5983d869f0636700f9acc71296a1c104bf39a3a5dd6df7098f1"
const Ros2Trajectory_msgsMsgJointTrajectoryPointNativeType* = "trajectory_msgs/msg/JointTrajectoryPoint"
const Ros2Trajectory_msgsMsgJointTrajectoryPointNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Trajectory_msgsMsgJointTrajectoryPoint*(): Ros2Trajectory_msgsMsgJointTrajectoryPoint =
  result.`positions` = @[]
  result.`velocities` = @[]
  result.`accelerations` = @[]
  result.`effort` = @[]
  result.`time_from_start` = initRos2Builtin_interfacesMsgDuration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Trajectory_msgsMsgJointTrajectoryPoint; w: var Writer) =
  if value.`positions`.len > 16: fail(22)
  putInteger(w,uint32(value.`positions`.len))
  for e in value.`positions`:
    putFloat64(w,e)
  if value.`velocities`.len > 16: fail(22)
  putInteger(w,uint32(value.`velocities`.len))
  for e in value.`velocities`:
    putFloat64(w,e)
  if value.`accelerations`.len > 16: fail(22)
  putInteger(w,uint32(value.`accelerations`.len))
  for e in value.`accelerations`:
    putFloat64(w,e)
  if value.`effort`.len > 16: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
  writeFields(value.`time_from_start`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Trajectory_msgsMsgJointTrajectoryPoint*(r: var Reader): Ros2Trajectory_msgsMsgJointTrajectoryPoint =
  result = initRos2Trajectory_msgsMsgJointTrajectoryPoint()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`positions` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`positions`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`velocities` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`velocities`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`accelerations` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`accelerations`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`effort` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`effort`[i] = getFloat64(r)
  result.`time_from_start` = readRos2Builtin_interfacesMsgDuration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Trajectory_msgsMsgJointTrajectoryPoint): seq[byte] =
  var w = initWriter(536)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Trajectory_msgsMsgJointTrajectoryPoint*(b: seq[byte]): Ros2Trajectory_msgsMsgJointTrajectoryPoint =
  var r = initReader(b,536)
  result = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
  finish(r)
## @brief Own every original field of ROS2 trajectory_msgs/msg/JointTrajectory.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Trajectory_msgsMsgJointTrajectory* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original joint_names as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `joint_names`*: seq[string]
  ## @brief Preserve original points as trajectory_msgs/msg/JointTrajectoryPoint.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `points`*: seq[Ros2Trajectory_msgsMsgJointTrajectoryPoint]
const Ros2Trajectory_msgsMsgJointTrajectoryMaximumWireBytes* = 4404
const Ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity* = "UWVMROS1_98c0ef27ef94ae8fb4dd663b60fe91b607e56f32a68618f0e6eb975341b64ba7"
const Ros2Trajectory_msgsMsgJointTrajectoryNativeType* = "trajectory_msgs/msg/JointTrajectory"
const Ros2Trajectory_msgsMsgJointTrajectoryNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Trajectory_msgsMsgJointTrajectory*(): Ros2Trajectory_msgsMsgJointTrajectory =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_names` = @[]
  result.`points` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Trajectory_msgsMsgJointTrajectory; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,128)
  if value.`points`.len > 4: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Trajectory_msgsMsgJointTrajectory*(r: var Reader): Ros2Trajectory_msgsMsgJointTrajectory =
  result = initRos2Trajectory_msgsMsgJointTrajectory()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`points` = newSeq[Ros2Trajectory_msgsMsgJointTrajectoryPoint](count2)
  for i in 0..<count2:
    result.`points`[i] = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Trajectory_msgsMsgJointTrajectory): seq[byte] =
  var w = initWriter(4404)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Trajectory_msgsMsgJointTrajectory*(b: seq[byte]): Ros2Trajectory_msgsMsgJointTrajectory =
  var r = initReader(b,4404)
  result = readRos2Trajectory_msgsMsgJointTrajectory(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/msg/JointTrajectoryCommand.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original traj as trajectory_msgs/msg/JointTrajectory.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `traj`*: Ros2Trajectory_msgsMsgJointTrajectory
const Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandMaximumWireBytes* = 4668
const Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandCodecIdentity* = "UWVMROS1_5695ab0bcd0212bf0fe4ab801303714958f3c862845fefa13078ea8514076f52"
const Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandNativeType* = "interbotix_xs_msgs/msg/JointTrajectoryCommand"
const Ros2Interbotix_xs_msgsMsgJointTrajectoryCommandNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsMsgJointTrajectoryCommand*(): Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`traj` = initRos2Trajectory_msgsMsgJointTrajectory()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  writeFields(value.`traj`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsMsgJointTrajectoryCommand*(r: var Reader): Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand =
  result = initRos2Interbotix_xs_msgsMsgJointTrajectoryCommand()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`traj` = readRos2Trajectory_msgsMsgJointTrajectory(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand): seq[byte] =
  var w = initWriter(4668)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsMsgJointTrajectoryCommand*(b: seq[byte]): Ros2Interbotix_xs_msgsMsgJointTrajectoryCommand =
  var r = initReader(b,4668)
  result = readRos2Interbotix_xs_msgsMsgJointTrajectoryCommand(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/msg/LocobotJoy.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsMsgLocobotJoy* = object
  ## @brief Preserve original base_x_cmd as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `base_x_cmd`*: float64
  ## @brief Preserve original base_theta_cmd as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `base_theta_cmd`*: float64
  ## @brief Preserve original base_reset_odom_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `base_reset_odom_cmd`*: int8
  ## @brief Preserve original pan_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pan_cmd`*: int8
  ## @brief Preserve original tilt_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `tilt_cmd`*: int8
  ## @brief Preserve original ee_x_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_x_cmd`*: int8
  ## @brief Preserve original ee_y_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_y_cmd`*: int8
  ## @brief Preserve original ee_z_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_z_cmd`*: int8
  ## @brief Preserve original ee_roll_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_roll_cmd`*: int8
  ## @brief Preserve original ee_pitch_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ee_pitch_cmd`*: int8
  ## @brief Preserve original waist_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `waist_cmd`*: int8
  ## @brief Preserve original gripper_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gripper_cmd`*: int8
  ## @brief Preserve original pose_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose_cmd`*: int8
  ## @brief Preserve original speed_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_cmd`*: int8
  ## @brief Preserve original speed_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_toggle_cmd`*: int8
  ## @brief Preserve original gripper_pwm_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `gripper_pwm_cmd`*: int8
const Ros2Interbotix_xs_msgsMsgLocobotJoyMaximumWireBytes* = 30
const Ros2Interbotix_xs_msgsMsgLocobotJoyCodecIdentity* = "UWVMROS1_5a2637e1298987f966f0c70e1c2f37d6077d2ce531012b18349b5354f3189633"
const Ros2Interbotix_xs_msgsMsgLocobotJoyNativeType* = "interbotix_xs_msgs/msg/LocobotJoy"
const Ros2Interbotix_xs_msgsMsgLocobotJoyNativeIdentity* = ""
const Ros2Interbotix_xs_msgsMsgLocobotJoy_RESET_ODOM*: int8 = 1'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_CCW*: int8 = 2'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_CW*: int8 = 3'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_TILT_UP*: int8 = 4'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_TILT_DOWN*: int8 = 5'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_PAN_TILT_HOME*: int8 = 6'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_X_INC*: int8 = 7'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_X_DEC*: int8 = 8'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Y_INC*: int8 = 9'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Y_DEC*: int8 = 10'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Z_INC*: int8 = 11'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_Z_DEC*: int8 = 12'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_ROLL_CCW*: int8 = 13'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_ROLL_CW*: int8 = 14'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_PITCH_UP*: int8 = 15'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_EE_PITCH_DOWN*: int8 = 16'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_WAIST_CCW*: int8 = 17'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_WAIST_CW*: int8 = 18'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_RELEASE*: int8 = 19'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_GRASP*: int8 = 20'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_HOME_POSE*: int8 = 21'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_SLEEP_POSE*: int8 = 22'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_INC*: int8 = 23'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_DEC*: int8 = 24'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_COARSE*: int8 = 25'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_SPEED_FINE*: int8 = 26'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_PWM_INC*: int8 = 27'i8
const Ros2Interbotix_xs_msgsMsgLocobotJoy_GRIPPER_PWM_DEC*: int8 = 28'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsMsgLocobotJoy*(): Ros2Interbotix_xs_msgsMsgLocobotJoy =
  result.`base_x_cmd` = 0
  result.`base_theta_cmd` = 0
  result.`base_reset_odom_cmd` = 0
  result.`pan_cmd` = 0
  result.`tilt_cmd` = 0
  result.`ee_x_cmd` = 0
  result.`ee_y_cmd` = 0
  result.`ee_z_cmd` = 0
  result.`ee_roll_cmd` = 0
  result.`ee_pitch_cmd` = 0
  result.`waist_cmd` = 0
  result.`gripper_cmd` = 0
  result.`pose_cmd` = 0
  result.`speed_cmd` = 0
  result.`speed_toggle_cmd` = 0
  result.`gripper_pwm_cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsMsgLocobotJoy; w: var Writer) =
  putFloat64(w,value.`base_x_cmd`)
  putFloat64(w,value.`base_theta_cmd`)
  putInteger(w,value.`base_reset_odom_cmd`)
  putInteger(w,value.`pan_cmd`)
  putInteger(w,value.`tilt_cmd`)
  putInteger(w,value.`ee_x_cmd`)
  putInteger(w,value.`ee_y_cmd`)
  putInteger(w,value.`ee_z_cmd`)
  putInteger(w,value.`ee_roll_cmd`)
  putInteger(w,value.`ee_pitch_cmd`)
  putInteger(w,value.`waist_cmd`)
  putInteger(w,value.`gripper_cmd`)
  putInteger(w,value.`pose_cmd`)
  putInteger(w,value.`speed_cmd`)
  putInteger(w,value.`speed_toggle_cmd`)
  putInteger(w,value.`gripper_pwm_cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsMsgLocobotJoy*(r: var Reader): Ros2Interbotix_xs_msgsMsgLocobotJoy =
  result = initRos2Interbotix_xs_msgsMsgLocobotJoy()
  result.`base_x_cmd` = getFloat64(r)
  result.`base_theta_cmd` = getFloat64(r)
  result.`base_reset_odom_cmd` = getInteger(r,int8)
  result.`pan_cmd` = getInteger(r,int8)
  result.`tilt_cmd` = getInteger(r,int8)
  result.`ee_x_cmd` = getInteger(r,int8)
  result.`ee_y_cmd` = getInteger(r,int8)
  result.`ee_z_cmd` = getInteger(r,int8)
  result.`ee_roll_cmd` = getInteger(r,int8)
  result.`ee_pitch_cmd` = getInteger(r,int8)
  result.`waist_cmd` = getInteger(r,int8)
  result.`gripper_cmd` = getInteger(r,int8)
  result.`pose_cmd` = getInteger(r,int8)
  result.`speed_cmd` = getInteger(r,int8)
  result.`speed_toggle_cmd` = getInteger(r,int8)
  result.`gripper_pwm_cmd` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsMsgLocobotJoy): seq[byte] =
  var w = initWriter(30)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsMsgLocobotJoy*(b: seq[byte]): Ros2Interbotix_xs_msgsMsgLocobotJoy =
  var r = initReader(b,30)
  result = readRos2Interbotix_xs_msgsMsgLocobotJoy(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/msg/TurretJoy.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsMsgTurretJoy* = object
  ## @brief Preserve original pan_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pan_cmd`*: int8
  ## @brief Preserve original tilt_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `tilt_cmd`*: int8
  ## @brief Preserve original speed_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_cmd`*: int8
  ## @brief Preserve original speed_toggle_cmd as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `speed_toggle_cmd`*: int8
const Ros2Interbotix_xs_msgsMsgTurretJoyMaximumWireBytes* = 4
const Ros2Interbotix_xs_msgsMsgTurretJoyCodecIdentity* = "UWVMROS1_ed098904f5694e04331c31f8096f8c4f7b3f938ffa0007b65cba5ea2f6c36e0f"
const Ros2Interbotix_xs_msgsMsgTurretJoyNativeType* = "interbotix_xs_msgs/msg/TurretJoy"
const Ros2Interbotix_xs_msgsMsgTurretJoyNativeIdentity* = ""
const Ros2Interbotix_xs_msgsMsgTurretJoy_PAN_CCW*: int8 = 1'i8
const Ros2Interbotix_xs_msgsMsgTurretJoy_PAN_CW*: int8 = 2'i8
const Ros2Interbotix_xs_msgsMsgTurretJoy_TILT_UP*: int8 = 3'i8
const Ros2Interbotix_xs_msgsMsgTurretJoy_TILT_DOWN*: int8 = 4'i8
const Ros2Interbotix_xs_msgsMsgTurretJoy_PAN_TILT_HOME*: int8 = 5'i8
const Ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_INC*: int8 = 6'i8
const Ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_DEC*: int8 = 7'i8
const Ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_COARSE*: int8 = 8'i8
const Ros2Interbotix_xs_msgsMsgTurretJoy_SPEED_FINE*: int8 = 9'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsMsgTurretJoy*(): Ros2Interbotix_xs_msgsMsgTurretJoy =
  result.`pan_cmd` = 0
  result.`tilt_cmd` = 0
  result.`speed_cmd` = 0
  result.`speed_toggle_cmd` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsMsgTurretJoy; w: var Writer) =
  putInteger(w,value.`pan_cmd`)
  putInteger(w,value.`tilt_cmd`)
  putInteger(w,value.`speed_cmd`)
  putInteger(w,value.`speed_toggle_cmd`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsMsgTurretJoy*(r: var Reader): Ros2Interbotix_xs_msgsMsgTurretJoy =
  result = initRos2Interbotix_xs_msgsMsgTurretJoy()
  result.`pan_cmd` = getInteger(r,int8)
  result.`tilt_cmd` = getInteger(r,int8)
  result.`speed_cmd` = getInteger(r,int8)
  result.`speed_toggle_cmd` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsMsgTurretJoy): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsMsgTurretJoy*(b: seq[byte]): Ros2Interbotix_xs_msgsMsgTurretJoy =
  var r = initReader(b,4)
  result = readRos2Interbotix_xs_msgsMsgTurretJoy(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/MotorGains_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvMotorGains_Request* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original kp_pos as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `kp_pos`*: int32
  ## @brief Preserve original ki_pos as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ki_pos`*: int32
  ## @brief Preserve original kd_pos as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `kd_pos`*: int32
  ## @brief Preserve original k1 as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `k1`*: int32
  ## @brief Preserve original k2 as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `k2`*: int32
  ## @brief Preserve original kp_vel as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `kp_vel`*: int32
  ## @brief Preserve original ki_vel as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ki_vel`*: int32
const Ros2Interbotix_xs_msgsSrvMotorGains_RequestMaximumWireBytes* = 292
const Ros2Interbotix_xs_msgsSrvMotorGains_RequestCodecIdentity* = "UWVMROS1_1d4391978c6f8e54b26f7b5b16a56bc8bbe81f170e702082f1eee5a28ce1587f"
const Ros2Interbotix_xs_msgsSrvMotorGains_RequestNativeType* = "interbotix_xs_msgs/srv/MotorGains_Request"
const Ros2Interbotix_xs_msgsSrvMotorGains_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvMotorGains_Request*(): Ros2Interbotix_xs_msgsSrvMotorGains_Request =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`kp_pos` = 0
  result.`ki_pos` = 0
  result.`kd_pos` = 0
  result.`k1` = 0
  result.`k2` = 0
  result.`kp_vel` = 0
  result.`ki_vel` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvMotorGains_Request; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  putInteger(w,value.`kp_pos`)
  putInteger(w,value.`ki_pos`)
  putInteger(w,value.`kd_pos`)
  putInteger(w,value.`k1`)
  putInteger(w,value.`k2`)
  putInteger(w,value.`kp_vel`)
  putInteger(w,value.`ki_vel`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvMotorGains_Request*(r: var Reader): Ros2Interbotix_xs_msgsSrvMotorGains_Request =
  result = initRos2Interbotix_xs_msgsSrvMotorGains_Request()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`kp_pos` = getInteger(r,int32)
  result.`ki_pos` = getInteger(r,int32)
  result.`kd_pos` = getInteger(r,int32)
  result.`k1` = getInteger(r,int32)
  result.`k2` = getInteger(r,int32)
  result.`kp_vel` = getInteger(r,int32)
  result.`ki_vel` = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvMotorGains_Request): seq[byte] =
  var w = initWriter(292)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvMotorGains_Request*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvMotorGains_Request =
  var r = initReader(b,292)
  result = readRos2Interbotix_xs_msgsSrvMotorGains_Request(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/MotorGains_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvMotorGains_Response* = object
const Ros2Interbotix_xs_msgsSrvMotorGains_ResponseMaximumWireBytes* = 0
const Ros2Interbotix_xs_msgsSrvMotorGains_ResponseCodecIdentity* = "UWVMROS1_fade5fb84bdb51114ae0aa3a37d96b2fa6d29718f0ee1b688079459f948d7972"
const Ros2Interbotix_xs_msgsSrvMotorGains_ResponseNativeType* = "interbotix_xs_msgs/srv/MotorGains_Response"
const Ros2Interbotix_xs_msgsSrvMotorGains_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvMotorGains_Response*(): Ros2Interbotix_xs_msgsSrvMotorGains_Response =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvMotorGains_Response; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvMotorGains_Response*(r: var Reader): Ros2Interbotix_xs_msgsSrvMotorGains_Response =
  result = initRos2Interbotix_xs_msgsSrvMotorGains_Response()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvMotorGains_Response): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvMotorGains_Response*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvMotorGains_Response =
  var r = initReader(b,0)
  result = readRos2Interbotix_xs_msgsSrvMotorGains_Response(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/OperatingModes_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvOperatingModes_Request* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original mode as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `mode`*: string
  ## @brief Preserve original profile_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `profile_type`*: string
  ## @brief Preserve original profile_velocity as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `profile_velocity`*: int32
  ## @brief Preserve original profile_acceleration as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `profile_acceleration`*: int32
const Ros2Interbotix_xs_msgsSrvOperatingModes_RequestMaximumWireBytes* = 536
const Ros2Interbotix_xs_msgsSrvOperatingModes_RequestCodecIdentity* = "UWVMROS1_79c4fb8d937d09f9bd7d97774174db4a647070f564f4496c9e77d117cba27f15"
const Ros2Interbotix_xs_msgsSrvOperatingModes_RequestNativeType* = "interbotix_xs_msgs/srv/OperatingModes_Request"
const Ros2Interbotix_xs_msgsSrvOperatingModes_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvOperatingModes_Request*(): Ros2Interbotix_xs_msgsSrvOperatingModes_Request =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`mode` = ""
  result.`profile_type` = ""
  result.`profile_velocity` = 0
  result.`profile_acceleration` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvOperatingModes_Request; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  putString(w,value.`mode`,128)
  putString(w,value.`profile_type`,128)
  putInteger(w,value.`profile_velocity`)
  putInteger(w,value.`profile_acceleration`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvOperatingModes_Request*(r: var Reader): Ros2Interbotix_xs_msgsSrvOperatingModes_Request =
  result = initRos2Interbotix_xs_msgsSrvOperatingModes_Request()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`mode` = getString(r,128)
  result.`profile_type` = getString(r,128)
  result.`profile_velocity` = getInteger(r,int32)
  result.`profile_acceleration` = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvOperatingModes_Request): seq[byte] =
  var w = initWriter(536)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvOperatingModes_Request*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvOperatingModes_Request =
  var r = initReader(b,536)
  result = readRos2Interbotix_xs_msgsSrvOperatingModes_Request(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/OperatingModes_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvOperatingModes_Response* = object
const Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseMaximumWireBytes* = 0
const Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseCodecIdentity* = "UWVMROS1_28180c90e6e146915e81a6e9312148c6ce27741d3e0df6fb82abef65bb658345"
const Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseNativeType* = "interbotix_xs_msgs/srv/OperatingModes_Response"
const Ros2Interbotix_xs_msgsSrvOperatingModes_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvOperatingModes_Response*(): Ros2Interbotix_xs_msgsSrvOperatingModes_Response =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvOperatingModes_Response; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvOperatingModes_Response*(r: var Reader): Ros2Interbotix_xs_msgsSrvOperatingModes_Response =
  result = initRos2Interbotix_xs_msgsSrvOperatingModes_Response()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvOperatingModes_Response): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvOperatingModes_Response*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvOperatingModes_Response =
  var r = initReader(b,0)
  result = readRos2Interbotix_xs_msgsSrvOperatingModes_Response(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/Reboot_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvReboot_Request* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original enable as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `enable`*: bool
  ## @brief Preserve original smart_reboot as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `smart_reboot`*: bool
const Ros2Interbotix_xs_msgsSrvReboot_RequestMaximumWireBytes* = 266
const Ros2Interbotix_xs_msgsSrvReboot_RequestCodecIdentity* = "UWVMROS1_877df815d5efae67de6098b2280ed73b6e93d9db6024622d522112de52eccd55"
const Ros2Interbotix_xs_msgsSrvReboot_RequestNativeType* = "interbotix_xs_msgs/srv/Reboot_Request"
const Ros2Interbotix_xs_msgsSrvReboot_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvReboot_Request*(): Ros2Interbotix_xs_msgsSrvReboot_Request =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`enable` = false
  result.`smart_reboot` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvReboot_Request; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  putBool(w,value.`enable`)
  putBool(w,value.`smart_reboot`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvReboot_Request*(r: var Reader): Ros2Interbotix_xs_msgsSrvReboot_Request =
  result = initRos2Interbotix_xs_msgsSrvReboot_Request()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`enable` = getBool(r)
  result.`smart_reboot` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvReboot_Request): seq[byte] =
  var w = initWriter(266)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvReboot_Request*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvReboot_Request =
  var r = initReader(b,266)
  result = readRos2Interbotix_xs_msgsSrvReboot_Request(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/Reboot_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvReboot_Response* = object
const Ros2Interbotix_xs_msgsSrvReboot_ResponseMaximumWireBytes* = 0
const Ros2Interbotix_xs_msgsSrvReboot_ResponseCodecIdentity* = "UWVMROS1_00761585231e339f21ff40ffd8b9a025d67fe16b7d33410171c430d2aa2c051b"
const Ros2Interbotix_xs_msgsSrvReboot_ResponseNativeType* = "interbotix_xs_msgs/srv/Reboot_Response"
const Ros2Interbotix_xs_msgsSrvReboot_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvReboot_Response*(): Ros2Interbotix_xs_msgsSrvReboot_Response =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvReboot_Response; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvReboot_Response*(r: var Reader): Ros2Interbotix_xs_msgsSrvReboot_Response =
  result = initRos2Interbotix_xs_msgsSrvReboot_Response()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvReboot_Response): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvReboot_Response*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvReboot_Response =
  var r = initReader(b,0)
  result = readRos2Interbotix_xs_msgsSrvReboot_Response(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/RegisterValues_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvRegisterValues_Request* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original reg as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `reg`*: string
  ## @brief Preserve original value as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `value`*: int32
const Ros2Interbotix_xs_msgsSrvRegisterValues_RequestMaximumWireBytes* = 400
const Ros2Interbotix_xs_msgsSrvRegisterValues_RequestCodecIdentity* = "UWVMROS1_73ad91bb12d7c5ee8142f3657c3238a9bd547468e31a74f19a469343bd3241fd"
const Ros2Interbotix_xs_msgsSrvRegisterValues_RequestNativeType* = "interbotix_xs_msgs/srv/RegisterValues_Request"
const Ros2Interbotix_xs_msgsSrvRegisterValues_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvRegisterValues_Request*(): Ros2Interbotix_xs_msgsSrvRegisterValues_Request =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`reg` = ""
  result.`value` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvRegisterValues_Request; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  putString(w,value.`reg`,128)
  putInteger(w,value.`value`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvRegisterValues_Request*(r: var Reader): Ros2Interbotix_xs_msgsSrvRegisterValues_Request =
  result = initRos2Interbotix_xs_msgsSrvRegisterValues_Request()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`reg` = getString(r,128)
  result.`value` = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvRegisterValues_Request): seq[byte] =
  var w = initWriter(400)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvRegisterValues_Request*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvRegisterValues_Request =
  var r = initReader(b,400)
  result = readRos2Interbotix_xs_msgsSrvRegisterValues_Request(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/RegisterValues_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvRegisterValues_Response* = object
  ## @brief Preserve original values as int32.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `values`*: seq[int32]
const Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseMaximumWireBytes* = 68
const Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseCodecIdentity* = "UWVMROS1_f8e4d0f5065281434cbd3c3845c92458348541dd0fc477b2552856941a58120a"
const Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseNativeType* = "interbotix_xs_msgs/srv/RegisterValues_Response"
const Ros2Interbotix_xs_msgsSrvRegisterValues_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvRegisterValues_Response*(): Ros2Interbotix_xs_msgsSrvRegisterValues_Response =
  result.`values` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvRegisterValues_Response; w: var Writer) =
  if value.`values`.len > 16: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvRegisterValues_Response*(r: var Reader): Ros2Interbotix_xs_msgsSrvRegisterValues_Response =
  result = initRos2Interbotix_xs_msgsSrvRegisterValues_Response()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`values` = newSeq[int32](count0)
  for i in 0..<count0:
    result.`values`[i] = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvRegisterValues_Response): seq[byte] =
  var w = initWriter(68)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvRegisterValues_Response*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvRegisterValues_Response =
  var r = initReader(b,68)
  result = readRos2Interbotix_xs_msgsSrvRegisterValues_Response(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/RobotInfo_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvRobotInfo_Request* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
const Ros2Interbotix_xs_msgsSrvRobotInfo_RequestMaximumWireBytes* = 264
const Ros2Interbotix_xs_msgsSrvRobotInfo_RequestCodecIdentity* = "UWVMROS1_af4294279451a23fccc9c274609eb11479004d92b62ffa4e1dece0e88927a6f9"
const Ros2Interbotix_xs_msgsSrvRobotInfo_RequestNativeType* = "interbotix_xs_msgs/srv/RobotInfo_Request"
const Ros2Interbotix_xs_msgsSrvRobotInfo_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvRobotInfo_Request*(): Ros2Interbotix_xs_msgsSrvRobotInfo_Request =
  result.`cmd_type` = ""
  result.`name` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvRobotInfo_Request; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvRobotInfo_Request*(r: var Reader): Ros2Interbotix_xs_msgsSrvRobotInfo_Request =
  result = initRos2Interbotix_xs_msgsSrvRobotInfo_Request()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvRobotInfo_Request): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvRobotInfo_Request*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvRobotInfo_Request =
  var r = initReader(b,264)
  result = readRos2Interbotix_xs_msgsSrvRobotInfo_Request(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/RobotInfo_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvRobotInfo_Response* = object
  ## @brief Preserve original mode as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `mode`*: string
  ## @brief Preserve original profile_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `profile_type`*: string
  ## @brief Preserve original joint_names as string.
  ## @details At most 64 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `joint_names`*: seq[string]
  ## @brief Preserve original joint_ids as int16.
  ## @details At most 64 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `joint_ids`*: seq[int16]
  ## @brief Preserve original joint_lower_limits as float32.
  ## @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `joint_lower_limits`*: seq[float32]
  ## @brief Preserve original joint_upper_limits as float32.
  ## @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `joint_upper_limits`*: seq[float32]
  ## @brief Preserve original joint_velocity_limits as float32.
  ## @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `joint_velocity_limits`*: seq[float32]
  ## @brief Preserve original joint_sleep_positions as float32.
  ## @details At most 64 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `joint_sleep_positions`*: seq[float32]
  ## @brief Preserve original joint_state_indices as int16.
  ## @details At most 64 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `joint_state_indices`*: seq[int16]
  ## @brief Preserve original num_joints as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `num_joints`*: int16
  ## @brief Preserve original name as string.
  ## @details At most 64 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `name`*: seq[string]
const Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseMaximumWireBytes* = 18474
const Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseCodecIdentity* = "UWVMROS1_28722f2f9b200bbe87da55a7ea34bdc98ea278f7332acaf45a59d318e0ea8b14"
const Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseNativeType* = "interbotix_xs_msgs/srv/RobotInfo_Response"
const Ros2Interbotix_xs_msgsSrvRobotInfo_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvRobotInfo_Response*(): Ros2Interbotix_xs_msgsSrvRobotInfo_Response =
  result.`mode` = ""
  result.`profile_type` = ""
  result.`joint_names` = @[]
  result.`joint_ids` = @[]
  result.`joint_lower_limits` = @[]
  result.`joint_upper_limits` = @[]
  result.`joint_velocity_limits` = @[]
  result.`joint_sleep_positions` = @[]
  result.`joint_state_indices` = @[]
  result.`num_joints` = 0
  result.`name` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvRobotInfo_Response; w: var Writer) =
  putString(w,value.`mode`,128)
  putString(w,value.`profile_type`,128)
  if value.`joint_names`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,128)
  if value.`joint_ids`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_ids`.len))
  for e in value.`joint_ids`:
    putInteger(w,e)
  if value.`joint_lower_limits`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_lower_limits`.len))
  for e in value.`joint_lower_limits`:
    putFloat32(w,e)
  if value.`joint_upper_limits`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_upper_limits`.len))
  for e in value.`joint_upper_limits`:
    putFloat32(w,e)
  if value.`joint_velocity_limits`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_velocity_limits`.len))
  for e in value.`joint_velocity_limits`:
    putFloat32(w,e)
  if value.`joint_sleep_positions`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_sleep_positions`.len))
  for e in value.`joint_sleep_positions`:
    putFloat32(w,e)
  if value.`joint_state_indices`.len > 64: fail(22)
  putInteger(w,uint32(value.`joint_state_indices`.len))
  for e in value.`joint_state_indices`:
    putInteger(w,e)
  putInteger(w,value.`num_joints`)
  if value.`name`.len > 64: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvRobotInfo_Response*(r: var Reader): Ros2Interbotix_xs_msgsSrvRobotInfo_Response =
  result = initRos2Interbotix_xs_msgsSrvRobotInfo_Response()
  result.`mode` = getString(r,128)
  result.`profile_type` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 64: fail(22)
  let count2 = int(rawcount2)
  result.`joint_names` = newSeq[string](count2)
  for i in 0..<count2:
    result.`joint_names`[i] = getString(r,128)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 64: fail(22)
  let count3 = int(rawcount3)
  result.`joint_ids` = newSeq[int16](count3)
  for i in 0..<count3:
    result.`joint_ids`[i] = getInteger(r,int16)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 64: fail(22)
  let count4 = int(rawcount4)
  result.`joint_lower_limits` = newSeq[float32](count4)
  for i in 0..<count4:
    result.`joint_lower_limits`[i] = getFloat32(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 64: fail(22)
  let count5 = int(rawcount5)
  result.`joint_upper_limits` = newSeq[float32](count5)
  for i in 0..<count5:
    result.`joint_upper_limits`[i] = getFloat32(r)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 64: fail(22)
  let count6 = int(rawcount6)
  result.`joint_velocity_limits` = newSeq[float32](count6)
  for i in 0..<count6:
    result.`joint_velocity_limits`[i] = getFloat32(r)
  let rawcount7 = getInteger(r,uint32)
  if rawcount7 > 64: fail(22)
  let count7 = int(rawcount7)
  result.`joint_sleep_positions` = newSeq[float32](count7)
  for i in 0..<count7:
    result.`joint_sleep_positions`[i] = getFloat32(r)
  let rawcount8 = getInteger(r,uint32)
  if rawcount8 > 64: fail(22)
  let count8 = int(rawcount8)
  result.`joint_state_indices` = newSeq[int16](count8)
  for i in 0..<count8:
    result.`joint_state_indices`[i] = getInteger(r,int16)
  result.`num_joints` = getInteger(r,int16)
  let rawcount10 = getInteger(r,uint32)
  if rawcount10 > 64: fail(22)
  let count10 = int(rawcount10)
  result.`name` = newSeq[string](count10)
  for i in 0..<count10:
    result.`name`[i] = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvRobotInfo_Response): seq[byte] =
  var w = initWriter(18474)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvRobotInfo_Response*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvRobotInfo_Response =
  var r = initReader(b,18474)
  result = readRos2Interbotix_xs_msgsSrvRobotInfo_Response(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/TorqueEnable_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvTorqueEnable_Request* = object
  ## @brief Preserve original cmd_type as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `cmd_type`*: string
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original enable as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `enable`*: bool
const Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestMaximumWireBytes* = 265
const Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestCodecIdentity* = "UWVMROS1_f5c5aa1cc5b2d81b7a8c70d4ad420315129124e151b9cbd6419ae5ece83297da"
const Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestNativeType* = "interbotix_xs_msgs/srv/TorqueEnable_Request"
const Ros2Interbotix_xs_msgsSrvTorqueEnable_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvTorqueEnable_Request*(): Ros2Interbotix_xs_msgsSrvTorqueEnable_Request =
  result.`cmd_type` = ""
  result.`name` = ""
  result.`enable` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvTorqueEnable_Request; w: var Writer) =
  putString(w,value.`cmd_type`,128)
  putString(w,value.`name`,128)
  putBool(w,value.`enable`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvTorqueEnable_Request*(r: var Reader): Ros2Interbotix_xs_msgsSrvTorqueEnable_Request =
  result = initRos2Interbotix_xs_msgsSrvTorqueEnable_Request()
  result.`cmd_type` = getString(r,128)
  result.`name` = getString(r,128)
  result.`enable` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvTorqueEnable_Request): seq[byte] =
  var w = initWriter(265)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvTorqueEnable_Request*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvTorqueEnable_Request =
  var r = initReader(b,265)
  result = readRos2Interbotix_xs_msgsSrvTorqueEnable_Request(r)
  finish(r)
## @brief Own every original field of ROS2 interbotix_xs_msgs/srv/TorqueEnable_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Interbotix_xs_msgsSrvTorqueEnable_Response* = object
const Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseMaximumWireBytes* = 0
const Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseCodecIdentity* = "UWVMROS1_6ef9f0b62d47e7cf7f9761869145d65eaad9fd157f3bd0c5f87437f8d1b5d31b"
const Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseNativeType* = "interbotix_xs_msgs/srv/TorqueEnable_Response"
const Ros2Interbotix_xs_msgsSrvTorqueEnable_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Interbotix_xs_msgsSrvTorqueEnable_Response*(): Ros2Interbotix_xs_msgsSrvTorqueEnable_Response =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Interbotix_xs_msgsSrvTorqueEnable_Response; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Interbotix_xs_msgsSrvTorqueEnable_Response*(r: var Reader): Ros2Interbotix_xs_msgsSrvTorqueEnable_Response =
  result = initRos2Interbotix_xs_msgsSrvTorqueEnable_Response()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Interbotix_xs_msgsSrvTorqueEnable_Response): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Interbotix_xs_msgsSrvTorqueEnable_Response*(b: seq[byte]): Ros2Interbotix_xs_msgsSrvTorqueEnable_Response =
  var r = initReader(b,0)
  result = readRos2Interbotix_xs_msgsSrvTorqueEnable_Response(r)
  finish(r)
