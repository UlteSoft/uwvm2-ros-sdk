## UWVM_COMPLETE_FIELD_CONTRACTS
## @details Field domains below come from the unchanged canonical source catalog.
## @file records.nim
## @brief Provide the complete pal ros2_humble_devel canonical value surface.
## @details The original 30 record catalog retains field order, constants, defaults and quotas.
## Borrowed values and buffers must remain stable while a conversion is in progress.
## Malformed, truncated and trailing wire values are refused through the shared wire error contract.
## No declaration grants a capability or establishes a native ROS registry identity.
## Original declarations and units are retained in share/platform/pal/catalogs.
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
## @brief Own every original field of ROS2 std_msgs/msg/ColorRGBA.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Std_msgsMsgColorRGBA* = object
  ## @brief Preserve original r as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `r`*: float32
  ## @brief Preserve original g as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `g`*: float32
  ## @brief Preserve original b as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `b`*: float32
  ## @brief Preserve original a as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `a`*: float32
const Ros2Std_msgsMsgColorRGBAMaximumWireBytes* = 16
const Ros2Std_msgsMsgColorRGBACodecIdentity* = "UWVMROS1_087e0282f02c82a1d8f4580a47ff359ea71b7e72d477da47f49fc6bff61238b2"
const Ros2Std_msgsMsgColorRGBANativeType* = "std_msgs/msg/ColorRGBA"
const Ros2Std_msgsMsgColorRGBANativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Std_msgsMsgColorRGBA*(): Ros2Std_msgsMsgColorRGBA =
  result.`r` = 0
  result.`g` = 0
  result.`b` = 0
  result.`a` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Std_msgsMsgColorRGBA; w: var Writer) =
  putFloat32(w,value.`r`)
  putFloat32(w,value.`g`)
  putFloat32(w,value.`b`)
  putFloat32(w,value.`a`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Std_msgsMsgColorRGBA*(r: var Reader): Ros2Std_msgsMsgColorRGBA =
  result = initRos2Std_msgsMsgColorRGBA()
  result.`r` = getFloat32(r)
  result.`g` = getFloat32(r)
  result.`b` = getFloat32(r)
  result.`a` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Std_msgsMsgColorRGBA): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Std_msgsMsgColorRGBA*(b: seq[byte]): Ros2Std_msgsMsgColorRGBA =
  var r = initReader(b,16)
  result = readRos2Std_msgsMsgColorRGBA(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedFixedColorParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedFixedColorParams* = object
  ## @brief Preserve original color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `color`*: Ros2Std_msgsMsgColorRGBA
const Ros2Pal_device_msgsMsgLedFixedColorParamsMaximumWireBytes* = 16
const Ros2Pal_device_msgsMsgLedFixedColorParamsCodecIdentity* = "UWVMROS1_486720194d8ed9dff1b17a2c59382a33cf04cab290115ecda1125481a750feac"
const Ros2Pal_device_msgsMsgLedFixedColorParamsNativeType* = "pal_device_msgs/msg/LedFixedColorParams"
const Ros2Pal_device_msgsMsgLedFixedColorParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedFixedColorParams*(): Ros2Pal_device_msgsMsgLedFixedColorParams =
  result.`color` = initRos2Std_msgsMsgColorRGBA()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedFixedColorParams; w: var Writer) =
  writeFields(value.`color`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedFixedColorParams*(r: var Reader): Ros2Pal_device_msgsMsgLedFixedColorParams =
  result = initRos2Pal_device_msgsMsgLedFixedColorParams()
  result.`color` = readRos2Std_msgsMsgColorRGBA(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedFixedColorParams): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedFixedColorParams*(b: seq[byte]): Ros2Pal_device_msgsMsgLedFixedColorParams =
  var r = initReader(b,16)
  result = readRos2Pal_device_msgsMsgLedFixedColorParams(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedRainbowParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedRainbowParams* = object
  ## @brief Preserve original transition_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `transition_duration`*: Ros2Builtin_interfacesMsgDuration
const Ros2Pal_device_msgsMsgLedRainbowParamsMaximumWireBytes* = 8
const Ros2Pal_device_msgsMsgLedRainbowParamsCodecIdentity* = "UWVMROS1_de1034a751e90f65a6f722cf685ee462b658f71c1d71b49ca7ee81177a9fd2e2"
const Ros2Pal_device_msgsMsgLedRainbowParamsNativeType* = "pal_device_msgs/msg/LedRainbowParams"
const Ros2Pal_device_msgsMsgLedRainbowParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedRainbowParams*(): Ros2Pal_device_msgsMsgLedRainbowParams =
  result.`transition_duration` = initRos2Builtin_interfacesMsgDuration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedRainbowParams; w: var Writer) =
  writeFields(value.`transition_duration`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedRainbowParams*(r: var Reader): Ros2Pal_device_msgsMsgLedRainbowParams =
  result = initRos2Pal_device_msgsMsgLedRainbowParams()
  result.`transition_duration` = readRos2Builtin_interfacesMsgDuration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedRainbowParams): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedRainbowParams*(b: seq[byte]): Ros2Pal_device_msgsMsgLedRainbowParams =
  var r = initReader(b,8)
  result = readRos2Pal_device_msgsMsgLedRainbowParams(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedFadeParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedFadeParams* = object
  ## @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original transition_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `transition_duration`*: Ros2Builtin_interfacesMsgDuration
  ## @brief Preserve original reverse_fade as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `reverse_fade`*: bool
const Ros2Pal_device_msgsMsgLedFadeParamsMaximumWireBytes* = 41
const Ros2Pal_device_msgsMsgLedFadeParamsCodecIdentity* = "UWVMROS1_a1b956d5fbae5ef515a7376ed137b3562722641b7a728ed294f210a1299167e5"
const Ros2Pal_device_msgsMsgLedFadeParamsNativeType* = "pal_device_msgs/msg/LedFadeParams"
const Ros2Pal_device_msgsMsgLedFadeParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedFadeParams*(): Ros2Pal_device_msgsMsgLedFadeParams =
  result.`first_color` = initRos2Std_msgsMsgColorRGBA()
  result.`second_color` = initRos2Std_msgsMsgColorRGBA()
  result.`transition_duration` = initRos2Builtin_interfacesMsgDuration()
  result.`reverse_fade` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedFadeParams; w: var Writer) =
  writeFields(value.`first_color`,w)
  writeFields(value.`second_color`,w)
  writeFields(value.`transition_duration`,w)
  putBool(w,value.`reverse_fade`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedFadeParams*(r: var Reader): Ros2Pal_device_msgsMsgLedFadeParams =
  result = initRos2Pal_device_msgsMsgLedFadeParams()
  result.`first_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`second_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`transition_duration` = readRos2Builtin_interfacesMsgDuration(r)
  result.`reverse_fade` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedFadeParams): seq[byte] =
  var w = initWriter(41)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedFadeParams*(b: seq[byte]): Ros2Pal_device_msgsMsgLedFadeParams =
  var r = initReader(b,41)
  result = readRos2Pal_device_msgsMsgLedFadeParams(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedBlinkParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedBlinkParams* = object
  ## @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original first_color_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color_duration`*: Ros2Builtin_interfacesMsgDuration
  ## @brief Preserve original second_color_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color_duration`*: Ros2Builtin_interfacesMsgDuration
const Ros2Pal_device_msgsMsgLedBlinkParamsMaximumWireBytes* = 48
const Ros2Pal_device_msgsMsgLedBlinkParamsCodecIdentity* = "UWVMROS1_c1c8148bf78fc5ab210d7aa1498f6f2d84aeab0199ec41362e56054482f349bd"
const Ros2Pal_device_msgsMsgLedBlinkParamsNativeType* = "pal_device_msgs/msg/LedBlinkParams"
const Ros2Pal_device_msgsMsgLedBlinkParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedBlinkParams*(): Ros2Pal_device_msgsMsgLedBlinkParams =
  result.`first_color` = initRos2Std_msgsMsgColorRGBA()
  result.`second_color` = initRos2Std_msgsMsgColorRGBA()
  result.`first_color_duration` = initRos2Builtin_interfacesMsgDuration()
  result.`second_color_duration` = initRos2Builtin_interfacesMsgDuration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedBlinkParams; w: var Writer) =
  writeFields(value.`first_color`,w)
  writeFields(value.`second_color`,w)
  writeFields(value.`first_color_duration`,w)
  writeFields(value.`second_color_duration`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedBlinkParams*(r: var Reader): Ros2Pal_device_msgsMsgLedBlinkParams =
  result = initRos2Pal_device_msgsMsgLedBlinkParams()
  result.`first_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`second_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`first_color_duration` = readRos2Builtin_interfacesMsgDuration(r)
  result.`second_color_duration` = readRos2Builtin_interfacesMsgDuration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedBlinkParams): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedBlinkParams*(b: seq[byte]): Ros2Pal_device_msgsMsgLedBlinkParams =
  var r = initReader(b,48)
  result = readRos2Pal_device_msgsMsgLedBlinkParams(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedProgressParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedProgressParams* = object
  ## @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original percentage as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `percentage`*: float32
  ## @brief Preserve original led_offset as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `led_offset`*: float32
const Ros2Pal_device_msgsMsgLedProgressParamsMaximumWireBytes* = 40
const Ros2Pal_device_msgsMsgLedProgressParamsCodecIdentity* = "UWVMROS1_db7c705edf5aa8c5512323dec23f75af30b0971c3c26a52a6d2c02ea918d7ab0"
const Ros2Pal_device_msgsMsgLedProgressParamsNativeType* = "pal_device_msgs/msg/LedProgressParams"
const Ros2Pal_device_msgsMsgLedProgressParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedProgressParams*(): Ros2Pal_device_msgsMsgLedProgressParams =
  result.`first_color` = initRos2Std_msgsMsgColorRGBA()
  result.`second_color` = initRos2Std_msgsMsgColorRGBA()
  result.`percentage` = 0
  result.`led_offset` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedProgressParams; w: var Writer) =
  writeFields(value.`first_color`,w)
  writeFields(value.`second_color`,w)
  putFloat32(w,value.`percentage`)
  putFloat32(w,value.`led_offset`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedProgressParams*(r: var Reader): Ros2Pal_device_msgsMsgLedProgressParams =
  result = initRos2Pal_device_msgsMsgLedProgressParams()
  result.`first_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`second_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`percentage` = getFloat32(r)
  result.`led_offset` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedProgressParams): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedProgressParams*(b: seq[byte]): Ros2Pal_device_msgsMsgLedProgressParams =
  var r = initReader(b,40)
  result = readRos2Pal_device_msgsMsgLedProgressParams(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedFlowParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedFlowParams* = object
  ## @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original percentage as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `percentage`*: float32
  ## @brief Preserve original velocity as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `velocity`*: float32
const Ros2Pal_device_msgsMsgLedFlowParamsMaximumWireBytes* = 40
const Ros2Pal_device_msgsMsgLedFlowParamsCodecIdentity* = "UWVMROS1_6dbf5187ca7c1e7a8c5235832799bf22e3fed9ac7b76f7ce5ee340a5d2b79561"
const Ros2Pal_device_msgsMsgLedFlowParamsNativeType* = "pal_device_msgs/msg/LedFlowParams"
const Ros2Pal_device_msgsMsgLedFlowParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedFlowParams*(): Ros2Pal_device_msgsMsgLedFlowParams =
  result.`first_color` = initRos2Std_msgsMsgColorRGBA()
  result.`second_color` = initRos2Std_msgsMsgColorRGBA()
  result.`percentage` = 0
  result.`velocity` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedFlowParams; w: var Writer) =
  writeFields(value.`first_color`,w)
  writeFields(value.`second_color`,w)
  putFloat32(w,value.`percentage`)
  putFloat32(w,value.`velocity`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedFlowParams*(r: var Reader): Ros2Pal_device_msgsMsgLedFlowParams =
  result = initRos2Pal_device_msgsMsgLedFlowParams()
  result.`first_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`second_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`percentage` = getFloat32(r)
  result.`velocity` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedFlowParams): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedFlowParams*(b: seq[byte]): Ros2Pal_device_msgsMsgLedFlowParams =
  var r = initReader(b,40)
  result = readRos2Pal_device_msgsMsgLedFlowParams(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedPreProgrammedParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedPreProgrammedParams* = object
  ## @brief Preserve original preprogrammed_id as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `preprogrammed_id`*: uint8
const Ros2Pal_device_msgsMsgLedPreProgrammedParamsMaximumWireBytes* = 1
const Ros2Pal_device_msgsMsgLedPreProgrammedParamsCodecIdentity* = "UWVMROS1_219ebe0cb090162e2975ca24ae26cfdfc0226d535b730114058f11749a4905be"
const Ros2Pal_device_msgsMsgLedPreProgrammedParamsNativeType* = "pal_device_msgs/msg/LedPreProgrammedParams"
const Ros2Pal_device_msgsMsgLedPreProgrammedParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedPreProgrammedParams*(): Ros2Pal_device_msgsMsgLedPreProgrammedParams =
  result.`preprogrammed_id` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedPreProgrammedParams; w: var Writer) =
  putInteger(w,value.`preprogrammed_id`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedPreProgrammedParams*(r: var Reader): Ros2Pal_device_msgsMsgLedPreProgrammedParams =
  result = initRos2Pal_device_msgsMsgLedPreProgrammedParams()
  result.`preprogrammed_id` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedPreProgrammedParams): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedPreProgrammedParams*(b: seq[byte]): Ros2Pal_device_msgsMsgLedPreProgrammedParams =
  var r = initReader(b,1)
  result = readRos2Pal_device_msgsMsgLedPreProgrammedParams(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedEffectViaTopicParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedEffectViaTopicParams* = object
  ## @brief Preserve original topic_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `topic_name`*: string
const Ros2Pal_device_msgsMsgLedEffectViaTopicParamsMaximumWireBytes* = 132
const Ros2Pal_device_msgsMsgLedEffectViaTopicParamsCodecIdentity* = "UWVMROS1_91ab4bac3cb9685f695a523fc63eb3d7c5c7db9c057f75d2b4685b192b39e485"
const Ros2Pal_device_msgsMsgLedEffectViaTopicParamsNativeType* = "pal_device_msgs/msg/LedEffectViaTopicParams"
const Ros2Pal_device_msgsMsgLedEffectViaTopicParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedEffectViaTopicParams*(): Ros2Pal_device_msgsMsgLedEffectViaTopicParams =
  result.`topic_name` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedEffectViaTopicParams; w: var Writer) =
  putString(w,value.`topic_name`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedEffectViaTopicParams*(r: var Reader): Ros2Pal_device_msgsMsgLedEffectViaTopicParams =
  result = initRos2Pal_device_msgsMsgLedEffectViaTopicParams()
  result.`topic_name` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedEffectViaTopicParams): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedEffectViaTopicParams*(b: seq[byte]): Ros2Pal_device_msgsMsgLedEffectViaTopicParams =
  var r = initReader(b,132)
  result = readRos2Pal_device_msgsMsgLedEffectViaTopicParams(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedDataArrayParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedDataArrayParams* = object
  ## @brief Preserve original data as std_msgs/msg/ColorRGBA.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `data`*: seq[Ros2Std_msgsMsgColorRGBA]
const Ros2Pal_device_msgsMsgLedDataArrayParamsMaximumWireBytes* = 68
const Ros2Pal_device_msgsMsgLedDataArrayParamsCodecIdentity* = "UWVMROS1_f52b27f234be53ae9cfc421d8434f6a9d0e02ca8fc88de7534dac2472a0a4349"
const Ros2Pal_device_msgsMsgLedDataArrayParamsNativeType* = "pal_device_msgs/msg/LedDataArrayParams"
const Ros2Pal_device_msgsMsgLedDataArrayParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedDataArrayParams*(): Ros2Pal_device_msgsMsgLedDataArrayParams =
  result.`data` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedDataArrayParams; w: var Writer) =
  if value.`data`.len > 4: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedDataArrayParams*(r: var Reader): Ros2Pal_device_msgsMsgLedDataArrayParams =
  result = initRos2Pal_device_msgsMsgLedDataArrayParams()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[Ros2Std_msgsMsgColorRGBA](count0)
  for i in 0..<count0:
    result.`data`[i] = readRos2Std_msgsMsgColorRGBA(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedDataArrayParams): seq[byte] =
  var w = initWriter(68)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedDataArrayParams*(b: seq[byte]): Ros2Pal_device_msgsMsgLedDataArrayParams =
  var r = initReader(b,68)
  result = readRos2Pal_device_msgsMsgLedDataArrayParams(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedEffectParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedEffectParams* = object
  ## @brief Preserve original effect_type as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_type`*: uint8
  ## @brief Preserve original fixed_color as pal_device_msgs/msg/LedFixedColorParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `fixed_color`*: Ros2Pal_device_msgsMsgLedFixedColorParams
  ## @brief Preserve original rainbow as pal_device_msgs/msg/LedRainbowParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `rainbow`*: Ros2Pal_device_msgsMsgLedRainbowParams
  ## @brief Preserve original fade as pal_device_msgs/msg/LedFadeParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `fade`*: Ros2Pal_device_msgsMsgLedFadeParams
  ## @brief Preserve original blink as pal_device_msgs/msg/LedBlinkParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `blink`*: Ros2Pal_device_msgsMsgLedBlinkParams
  ## @brief Preserve original progress as pal_device_msgs/msg/LedProgressParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `progress`*: Ros2Pal_device_msgsMsgLedProgressParams
  ## @brief Preserve original flow as pal_device_msgs/msg/LedFlowParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `flow`*: Ros2Pal_device_msgsMsgLedFlowParams
  ## @brief Preserve original preprogrammed as pal_device_msgs/msg/LedPreProgrammedParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `preprogrammed`*: Ros2Pal_device_msgsMsgLedPreProgrammedParams
  ## @brief Preserve original effect_via_topic as pal_device_msgs/msg/LedEffectViaTopicParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_via_topic`*: Ros2Pal_device_msgsMsgLedEffectViaTopicParams
  ## @brief Preserve original data_array as pal_device_msgs/msg/LedDataArrayParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `data_array`*: Ros2Pal_device_msgsMsgLedDataArrayParams
const Ros2Pal_device_msgsMsgLedEffectParamsMaximumWireBytes* = 395
const Ros2Pal_device_msgsMsgLedEffectParamsCodecIdentity* = "UWVMROS1_dbaf26734baee7c339c249fb6bd35f42672b48bac23966670f525f5d921f8848"
const Ros2Pal_device_msgsMsgLedEffectParamsNativeType* = "pal_device_msgs/msg/LedEffectParams"
const Ros2Pal_device_msgsMsgLedEffectParamsNativeIdentity* = ""
const Ros2Pal_device_msgsMsgLedEffectParams_FIXED_COLOR*: uint8 = 0'u8
const Ros2Pal_device_msgsMsgLedEffectParams_RAINBOW*: uint8 = 1'u8
const Ros2Pal_device_msgsMsgLedEffectParams_FADE*: uint8 = 2'u8
const Ros2Pal_device_msgsMsgLedEffectParams_BLINK*: uint8 = 3'u8
const Ros2Pal_device_msgsMsgLedEffectParams_PROGRESS*: uint8 = 4'u8
const Ros2Pal_device_msgsMsgLedEffectParams_FLOW*: uint8 = 5'u8
const Ros2Pal_device_msgsMsgLedEffectParams_PREPROGRAMMED_EFFECT*: uint8 = 6'u8
const Ros2Pal_device_msgsMsgLedEffectParams_EFFECT_VIA_TOPIC*: uint8 = 7'u8
const Ros2Pal_device_msgsMsgLedEffectParams_DATA_ARRAY*: uint8 = 8'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedEffectParams*(): Ros2Pal_device_msgsMsgLedEffectParams =
  result.`effect_type` = 0
  result.`fixed_color` = initRos2Pal_device_msgsMsgLedFixedColorParams()
  result.`rainbow` = initRos2Pal_device_msgsMsgLedRainbowParams()
  result.`fade` = initRos2Pal_device_msgsMsgLedFadeParams()
  result.`blink` = initRos2Pal_device_msgsMsgLedBlinkParams()
  result.`progress` = initRos2Pal_device_msgsMsgLedProgressParams()
  result.`flow` = initRos2Pal_device_msgsMsgLedFlowParams()
  result.`preprogrammed` = initRos2Pal_device_msgsMsgLedPreProgrammedParams()
  result.`effect_via_topic` = initRos2Pal_device_msgsMsgLedEffectViaTopicParams()
  result.`data_array` = initRos2Pal_device_msgsMsgLedDataArrayParams()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedEffectParams; w: var Writer) =
  putInteger(w,value.`effect_type`)
  writeFields(value.`fixed_color`,w)
  writeFields(value.`rainbow`,w)
  writeFields(value.`fade`,w)
  writeFields(value.`blink`,w)
  writeFields(value.`progress`,w)
  writeFields(value.`flow`,w)
  writeFields(value.`preprogrammed`,w)
  writeFields(value.`effect_via_topic`,w)
  writeFields(value.`data_array`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedEffectParams*(r: var Reader): Ros2Pal_device_msgsMsgLedEffectParams =
  result = initRos2Pal_device_msgsMsgLedEffectParams()
  result.`effect_type` = getInteger(r,uint8)
  result.`fixed_color` = readRos2Pal_device_msgsMsgLedFixedColorParams(r)
  result.`rainbow` = readRos2Pal_device_msgsMsgLedRainbowParams(r)
  result.`fade` = readRos2Pal_device_msgsMsgLedFadeParams(r)
  result.`blink` = readRos2Pal_device_msgsMsgLedBlinkParams(r)
  result.`progress` = readRos2Pal_device_msgsMsgLedProgressParams(r)
  result.`flow` = readRos2Pal_device_msgsMsgLedFlowParams(r)
  result.`preprogrammed` = readRos2Pal_device_msgsMsgLedPreProgrammedParams(r)
  result.`effect_via_topic` = readRos2Pal_device_msgsMsgLedEffectViaTopicParams(r)
  result.`data_array` = readRos2Pal_device_msgsMsgLedDataArrayParams(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedEffectParams): seq[byte] =
  var w = initWriter(395)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedEffectParams*(b: seq[byte]): Ros2Pal_device_msgsMsgLedEffectParams =
  var r = initReader(b,395)
  result = readRos2Pal_device_msgsMsgLedEffectParams(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/action/DoTimedLedEffect_Goal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsActionDoTimedLedEffect_Goal* = object
  ## @brief Preserve original devices as uint32.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `devices`*: seq[uint32]
  ## @brief Preserve original params as pal_device_msgs/msg/LedEffectParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `params`*: Ros2Pal_device_msgsMsgLedEffectParams
  ## @brief Preserve original effect_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_duration`*: Ros2Builtin_interfacesMsgDuration
  ## @brief Preserve original priority as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `priority`*: uint8
const Ros2Pal_device_msgsActionDoTimedLedEffect_GoalMaximumWireBytes* = 472
const Ros2Pal_device_msgsActionDoTimedLedEffect_GoalCodecIdentity* = "UWVMROS1_a7d6aafeeae03e2122a76727ab8503990df3791f351161c72d75a6ecf868a4f2"
const Ros2Pal_device_msgsActionDoTimedLedEffect_GoalNativeType* = "pal_device_msgs/action/DoTimedLedEffect_Goal"
const Ros2Pal_device_msgsActionDoTimedLedEffect_GoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsActionDoTimedLedEffect_Goal*(): Ros2Pal_device_msgsActionDoTimedLedEffect_Goal =
  result.`devices` = @[]
  result.`params` = initRos2Pal_device_msgsMsgLedEffectParams()
  result.`effect_duration` = initRos2Builtin_interfacesMsgDuration()
  result.`priority` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Goal; w: var Writer) =
  if value.`devices`.len > 16: fail(22)
  putInteger(w,uint32(value.`devices`.len))
  for e in value.`devices`:
    putInteger(w,e)
  writeFields(value.`params`,w)
  writeFields(value.`effect_duration`,w)
  putInteger(w,value.`priority`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsActionDoTimedLedEffect_Goal*(r: var Reader): Ros2Pal_device_msgsActionDoTimedLedEffect_Goal =
  result = initRos2Pal_device_msgsActionDoTimedLedEffect_Goal()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`devices` = newSeq[uint32](count0)
  for i in 0..<count0:
    result.`devices`[i] = getInteger(r,uint32)
  result.`params` = readRos2Pal_device_msgsMsgLedEffectParams(r)
  result.`effect_duration` = readRos2Builtin_interfacesMsgDuration(r)
  result.`priority` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Goal): seq[byte] =
  var w = initWriter(472)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsActionDoTimedLedEffect_Goal*(b: seq[byte]): Ros2Pal_device_msgsActionDoTimedLedEffect_Goal =
  var r = initReader(b,472)
  result = readRos2Pal_device_msgsActionDoTimedLedEffect_Goal(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/action/DoTimedLedEffect_Result.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsActionDoTimedLedEffect_Result* = object
const Ros2Pal_device_msgsActionDoTimedLedEffect_ResultMaximumWireBytes* = 0
const Ros2Pal_device_msgsActionDoTimedLedEffect_ResultCodecIdentity* = "UWVMROS1_2191f5a4810fe2c464b9a346a9615ebc44783f7a03037798b1c38c727db852f9"
const Ros2Pal_device_msgsActionDoTimedLedEffect_ResultNativeType* = "pal_device_msgs/action/DoTimedLedEffect_Result"
const Ros2Pal_device_msgsActionDoTimedLedEffect_ResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsActionDoTimedLedEffect_Result*(): Ros2Pal_device_msgsActionDoTimedLedEffect_Result =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Result; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsActionDoTimedLedEffect_Result*(r: var Reader): Ros2Pal_device_msgsActionDoTimedLedEffect_Result =
  result = initRos2Pal_device_msgsActionDoTimedLedEffect_Result()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Result): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsActionDoTimedLedEffect_Result*(b: seq[byte]): Ros2Pal_device_msgsActionDoTimedLedEffect_Result =
  var r = initReader(b,0)
  result = readRos2Pal_device_msgsActionDoTimedLedEffect_Result(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/action/DoTimedLedEffect_Feedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback* = object
const Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackMaximumWireBytes* = 0
const Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackCodecIdentity* = "UWVMROS1_b82ad14c20ec79d1face7e2ca9c6013f6a48010c88f849fc81eee4a2e120fc6d"
const Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackNativeType* = "pal_device_msgs/action/DoTimedLedEffect_Feedback"
const Ros2Pal_device_msgsActionDoTimedLedEffect_FeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsActionDoTimedLedEffect_Feedback*(): Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsActionDoTimedLedEffect_Feedback*(r: var Reader): Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback =
  result = initRos2Pal_device_msgsActionDoTimedLedEffect_Feedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsActionDoTimedLedEffect_Feedback*(b: seq[byte]): Ros2Pal_device_msgsActionDoTimedLedEffect_Feedback =
  var r = initReader(b,0)
  result = readRos2Pal_device_msgsActionDoTimedLedEffect_Feedback(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/BatteryState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgBatteryState* = object
  ## @brief Preserve original charge_state as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `charge_state`*: int8
  ## @brief Preserve original battery_percentage as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `battery_percentage`*: float32
const Ros2Pal_device_msgsMsgBatteryStateMaximumWireBytes* = 5
const Ros2Pal_device_msgsMsgBatteryStateCodecIdentity* = "UWVMROS1_a9ea99580734e3ff1f8254e19a2543e049b52bb480642e6b31beda7fff3dc904"
const Ros2Pal_device_msgsMsgBatteryStateNativeType* = "pal_device_msgs/msg/BatteryState"
const Ros2Pal_device_msgsMsgBatteryStateNativeIdentity* = ""
const Ros2Pal_device_msgsMsgBatteryState_FULL*: uint8 = 5'u8
const Ros2Pal_device_msgsMsgBatteryState_HIGH*: uint8 = 4'u8
const Ros2Pal_device_msgsMsgBatteryState_MEDIUM*: uint8 = 3'u8
const Ros2Pal_device_msgsMsgBatteryState_LOW*: uint8 = 2'u8
const Ros2Pal_device_msgsMsgBatteryState_CRITICAL_LOW*: uint8 = 1'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgBatteryState*(): Ros2Pal_device_msgsMsgBatteryState =
  result.`charge_state` = 0
  result.`battery_percentage` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgBatteryState; w: var Writer) =
  putInteger(w,value.`charge_state`)
  putFloat32(w,value.`battery_percentage`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgBatteryState*(r: var Reader): Ros2Pal_device_msgsMsgBatteryState =
  result = initRos2Pal_device_msgsMsgBatteryState()
  result.`charge_state` = getInteger(r,int8)
  result.`battery_percentage` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgBatteryState): seq[byte] =
  var w = initWriter(5)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgBatteryState*(b: seq[byte]): Ros2Pal_device_msgsMsgBatteryState =
  var r = initReader(b,5)
  result = readRos2Pal_device_msgsMsgBatteryState(r)
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
## @brief Own every original field of ROS2 pal_device_msgs/msg/Bumper.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgBumper* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original is_pressed as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `is_pressed`*: bool
const Ros2Pal_device_msgsMsgBumperMaximumWireBytes* = 141
const Ros2Pal_device_msgsMsgBumperCodecIdentity* = "UWVMROS1_3488ad42d9a7cb8a17881026b932b5d9559ecbc1525dc827ce898cd37c69c022"
const Ros2Pal_device_msgsMsgBumperNativeType* = "pal_device_msgs/msg/Bumper"
const Ros2Pal_device_msgsMsgBumperNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgBumper*(): Ros2Pal_device_msgsMsgBumper =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`is_pressed` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgBumper; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`is_pressed`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgBumper*(r: var Reader): Ros2Pal_device_msgsMsgBumper =
  result = initRos2Pal_device_msgsMsgBumper()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`is_pressed` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgBumper): seq[byte] =
  var w = initWriter(141)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgBumper*(b: seq[byte]): Ros2Pal_device_msgsMsgBumper =
  var r = initReader(b,141)
  result = readRos2Pal_device_msgsMsgBumper(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/msg/LedGroup.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsMsgLedGroup* = object
  ## @brief Preserve original led_mask as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `led_mask`*: uint32
const Ros2Pal_device_msgsMsgLedGroupMaximumWireBytes* = 4
const Ros2Pal_device_msgsMsgLedGroupCodecIdentity* = "UWVMROS1_9a08d65251c3a90b87f2013644a3d13080e40edb3b70f9d87a21d0c5421973f0"
const Ros2Pal_device_msgsMsgLedGroupNativeType* = "pal_device_msgs/msg/LedGroup"
const Ros2Pal_device_msgsMsgLedGroupNativeIdentity* = ""
const Ros2Pal_device_msgsMsgLedGroup_LEFT_EAR*: uint8 = 1'u8
const Ros2Pal_device_msgsMsgLedGroup_RIGHT_EAR*: uint8 = 2'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsMsgLedGroup*(): Ros2Pal_device_msgsMsgLedGroup =
  result.`led_mask` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsMsgLedGroup; w: var Writer) =
  putInteger(w,value.`led_mask`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsMsgLedGroup*(r: var Reader): Ros2Pal_device_msgsMsgLedGroup =
  result = initRos2Pal_device_msgsMsgLedGroup()
  result.`led_mask` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsMsgLedGroup): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsMsgLedGroup*(b: seq[byte]): Ros2Pal_device_msgsMsgLedGroup =
  var r = initReader(b,4)
  result = readRos2Pal_device_msgsMsgLedGroup(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/srv/CancelEffect_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsSrvCancelEffect_Request* = object
  ## @brief Preserve original effect_id as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_id`*: uint32
const Ros2Pal_device_msgsSrvCancelEffect_RequestMaximumWireBytes* = 4
const Ros2Pal_device_msgsSrvCancelEffect_RequestCodecIdentity* = "UWVMROS1_120bf0cc7ea1a4b52b66f30b53feabfc144f7d0fa4436f964b4d78c0249af062"
const Ros2Pal_device_msgsSrvCancelEffect_RequestNativeType* = "pal_device_msgs/srv/CancelEffect_Request"
const Ros2Pal_device_msgsSrvCancelEffect_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsSrvCancelEffect_Request*(): Ros2Pal_device_msgsSrvCancelEffect_Request =
  result.`effect_id` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsSrvCancelEffect_Request; w: var Writer) =
  putInteger(w,value.`effect_id`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsSrvCancelEffect_Request*(r: var Reader): Ros2Pal_device_msgsSrvCancelEffect_Request =
  result = initRos2Pal_device_msgsSrvCancelEffect_Request()
  result.`effect_id` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsSrvCancelEffect_Request): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsSrvCancelEffect_Request*(b: seq[byte]): Ros2Pal_device_msgsSrvCancelEffect_Request =
  var r = initReader(b,4)
  result = readRos2Pal_device_msgsSrvCancelEffect_Request(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/srv/CancelEffect_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsSrvCancelEffect_Response* = object
const Ros2Pal_device_msgsSrvCancelEffect_ResponseMaximumWireBytes* = 0
const Ros2Pal_device_msgsSrvCancelEffect_ResponseCodecIdentity* = "UWVMROS1_c54c991922500d0588c4dba48df2580f4a752fda5bdd175d318ebc1c31aad657"
const Ros2Pal_device_msgsSrvCancelEffect_ResponseNativeType* = "pal_device_msgs/srv/CancelEffect_Response"
const Ros2Pal_device_msgsSrvCancelEffect_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsSrvCancelEffect_Response*(): Ros2Pal_device_msgsSrvCancelEffect_Response =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsSrvCancelEffect_Response; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsSrvCancelEffect_Response*(r: var Reader): Ros2Pal_device_msgsSrvCancelEffect_Response =
  result = initRos2Pal_device_msgsSrvCancelEffect_Response()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsSrvCancelEffect_Response): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsSrvCancelEffect_Response*(b: seq[byte]): Ros2Pal_device_msgsSrvCancelEffect_Response =
  var r = initReader(b,0)
  result = readRos2Pal_device_msgsSrvCancelEffect_Response(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request* = object
  ## @brief Preserve original shutdown_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `shutdown_duration`*: Ros2Builtin_interfacesMsgDuration
const Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestMaximumWireBytes* = 8
const Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestCodecIdentity* = "UWVMROS1_3aa4e835b4cf21c77bd25b980b022133b5425f4eb8798832d4f8403bfc691166"
const Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestNativeType* = "pal_device_msgs/srv/ShutdownAndWakeUpRobot_Request"
const Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request*(): Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request =
  result.`shutdown_duration` = initRos2Builtin_interfacesMsgDuration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request; w: var Writer) =
  writeFields(value.`shutdown_duration`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request*(r: var Reader): Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request =
  result = initRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request()
  result.`shutdown_duration` = readRos2Builtin_interfacesMsgDuration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request*(b: seq[byte]): Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request =
  var r = initReader(b,8)
  result = readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Request(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response* = object
const Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseMaximumWireBytes* = 0
const Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseCodecIdentity* = "UWVMROS1_a3db908cd8f5f47c150070a0e2df18fada891ac05b1492ecbd025ba67d7e46af"
const Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseNativeType* = "pal_device_msgs/srv/ShutdownAndWakeUpRobot_Response"
const Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response*(): Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response*(r: var Reader): Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response =
  result = initRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response*(b: seq[byte]): Ros2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response =
  var r = initReader(b,0)
  result = readRos2Pal_device_msgsSrvShutdownAndWakeUpRobot_Response(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/srv/TimedBlinkEffect_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsSrvTimedBlinkEffect_Request* = object
  ## @brief Preserve original leds as pal_device_msgs/msg/LedGroup.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leds`*: Ros2Pal_device_msgsMsgLedGroup
  ## @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original first_color_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color_duration`*: Ros2Builtin_interfacesMsgDuration
  ## @brief Preserve original second_color_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color_duration`*: Ros2Builtin_interfacesMsgDuration
  ## @brief Preserve original effect_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_duration`*: Ros2Builtin_interfacesMsgDuration
  ## @brief Preserve original priority as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `priority`*: uint8
const Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestMaximumWireBytes* = 61
const Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestCodecIdentity* = "UWVMROS1_17a50bf4f71fe6d4d3e9d146df74fac1c2d6ed69c5899c51517785cdfcb9b15c"
const Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestNativeType* = "pal_device_msgs/srv/TimedBlinkEffect_Request"
const Ros2Pal_device_msgsSrvTimedBlinkEffect_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsSrvTimedBlinkEffect_Request*(): Ros2Pal_device_msgsSrvTimedBlinkEffect_Request =
  result.`leds` = initRos2Pal_device_msgsMsgLedGroup()
  result.`first_color` = initRos2Std_msgsMsgColorRGBA()
  result.`second_color` = initRos2Std_msgsMsgColorRGBA()
  result.`first_color_duration` = initRos2Builtin_interfacesMsgDuration()
  result.`second_color_duration` = initRos2Builtin_interfacesMsgDuration()
  result.`effect_duration` = initRos2Builtin_interfacesMsgDuration()
  result.`priority` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsSrvTimedBlinkEffect_Request; w: var Writer) =
  writeFields(value.`leds`,w)
  writeFields(value.`first_color`,w)
  writeFields(value.`second_color`,w)
  writeFields(value.`first_color_duration`,w)
  writeFields(value.`second_color_duration`,w)
  writeFields(value.`effect_duration`,w)
  putInteger(w,value.`priority`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsSrvTimedBlinkEffect_Request*(r: var Reader): Ros2Pal_device_msgsSrvTimedBlinkEffect_Request =
  result = initRos2Pal_device_msgsSrvTimedBlinkEffect_Request()
  result.`leds` = readRos2Pal_device_msgsMsgLedGroup(r)
  result.`first_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`second_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`first_color_duration` = readRos2Builtin_interfacesMsgDuration(r)
  result.`second_color_duration` = readRos2Builtin_interfacesMsgDuration(r)
  result.`effect_duration` = readRos2Builtin_interfacesMsgDuration(r)
  result.`priority` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsSrvTimedBlinkEffect_Request): seq[byte] =
  var w = initWriter(61)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsSrvTimedBlinkEffect_Request*(b: seq[byte]): Ros2Pal_device_msgsSrvTimedBlinkEffect_Request =
  var r = initReader(b,61)
  result = readRos2Pal_device_msgsSrvTimedBlinkEffect_Request(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/srv/TimedBlinkEffect_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsSrvTimedBlinkEffect_Response* = object
  ## @brief Preserve original effect_id as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_id`*: uint32
const Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseMaximumWireBytes* = 4
const Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseCodecIdentity* = "UWVMROS1_ea08afa309ccd316b279952de55d50e4d49fe027387ba12e54eba4b488e4d66a"
const Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseNativeType* = "pal_device_msgs/srv/TimedBlinkEffect_Response"
const Ros2Pal_device_msgsSrvTimedBlinkEffect_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsSrvTimedBlinkEffect_Response*(): Ros2Pal_device_msgsSrvTimedBlinkEffect_Response =
  result.`effect_id` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsSrvTimedBlinkEffect_Response; w: var Writer) =
  putInteger(w,value.`effect_id`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsSrvTimedBlinkEffect_Response*(r: var Reader): Ros2Pal_device_msgsSrvTimedBlinkEffect_Response =
  result = initRos2Pal_device_msgsSrvTimedBlinkEffect_Response()
  result.`effect_id` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsSrvTimedBlinkEffect_Response): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsSrvTimedBlinkEffect_Response*(b: seq[byte]): Ros2Pal_device_msgsSrvTimedBlinkEffect_Response =
  var r = initReader(b,4)
  result = readRos2Pal_device_msgsSrvTimedBlinkEffect_Response(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/srv/TimedColourEffect_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsSrvTimedColourEffect_Request* = object
  ## @brief Preserve original leds as pal_device_msgs/msg/LedGroup.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leds`*: Ros2Pal_device_msgsMsgLedGroup
  ## @brief Preserve original color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original effect_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_duration`*: Ros2Builtin_interfacesMsgDuration
  ## @brief Preserve original priority as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `priority`*: uint8
const Ros2Pal_device_msgsSrvTimedColourEffect_RequestMaximumWireBytes* = 29
const Ros2Pal_device_msgsSrvTimedColourEffect_RequestCodecIdentity* = "UWVMROS1_bb25c25962a52120bd8575be65dabd983ac46c7a19794f3793b37c2bf8ccbfa8"
const Ros2Pal_device_msgsSrvTimedColourEffect_RequestNativeType* = "pal_device_msgs/srv/TimedColourEffect_Request"
const Ros2Pal_device_msgsSrvTimedColourEffect_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsSrvTimedColourEffect_Request*(): Ros2Pal_device_msgsSrvTimedColourEffect_Request =
  result.`leds` = initRos2Pal_device_msgsMsgLedGroup()
  result.`color` = initRos2Std_msgsMsgColorRGBA()
  result.`effect_duration` = initRos2Builtin_interfacesMsgDuration()
  result.`priority` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsSrvTimedColourEffect_Request; w: var Writer) =
  writeFields(value.`leds`,w)
  writeFields(value.`color`,w)
  writeFields(value.`effect_duration`,w)
  putInteger(w,value.`priority`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsSrvTimedColourEffect_Request*(r: var Reader): Ros2Pal_device_msgsSrvTimedColourEffect_Request =
  result = initRos2Pal_device_msgsSrvTimedColourEffect_Request()
  result.`leds` = readRos2Pal_device_msgsMsgLedGroup(r)
  result.`color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`effect_duration` = readRos2Builtin_interfacesMsgDuration(r)
  result.`priority` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsSrvTimedColourEffect_Request): seq[byte] =
  var w = initWriter(29)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsSrvTimedColourEffect_Request*(b: seq[byte]): Ros2Pal_device_msgsSrvTimedColourEffect_Request =
  var r = initReader(b,29)
  result = readRos2Pal_device_msgsSrvTimedColourEffect_Request(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/srv/TimedColourEffect_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsSrvTimedColourEffect_Response* = object
  ## @brief Preserve original effect_id as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_id`*: uint32
const Ros2Pal_device_msgsSrvTimedColourEffect_ResponseMaximumWireBytes* = 4
const Ros2Pal_device_msgsSrvTimedColourEffect_ResponseCodecIdentity* = "UWVMROS1_5cd500032cfe7a263100061b2ebda37e8639cbf8a9c6fc978e9525f59d9df1f9"
const Ros2Pal_device_msgsSrvTimedColourEffect_ResponseNativeType* = "pal_device_msgs/srv/TimedColourEffect_Response"
const Ros2Pal_device_msgsSrvTimedColourEffect_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsSrvTimedColourEffect_Response*(): Ros2Pal_device_msgsSrvTimedColourEffect_Response =
  result.`effect_id` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsSrvTimedColourEffect_Response; w: var Writer) =
  putInteger(w,value.`effect_id`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsSrvTimedColourEffect_Response*(r: var Reader): Ros2Pal_device_msgsSrvTimedColourEffect_Response =
  result = initRos2Pal_device_msgsSrvTimedColourEffect_Response()
  result.`effect_id` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsSrvTimedColourEffect_Response): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsSrvTimedColourEffect_Response*(b: seq[byte]): Ros2Pal_device_msgsSrvTimedColourEffect_Response =
  var r = initReader(b,4)
  result = readRos2Pal_device_msgsSrvTimedColourEffect_Response(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/srv/TimedFadeEffect_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsSrvTimedFadeEffect_Request* = object
  ## @brief Preserve original leds as pal_device_msgs/msg/LedGroup.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leds`*: Ros2Pal_device_msgsMsgLedGroup
  ## @brief Preserve original first_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original second_color as std_msgs/msg/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color`*: Ros2Std_msgsMsgColorRGBA
  ## @brief Preserve original color_change_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `color_change_duration`*: Ros2Builtin_interfacesMsgDuration
  ## @brief Preserve original reverse_fade as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `reverse_fade`*: bool
  ## @brief Preserve original effect_duration as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_duration`*: Ros2Builtin_interfacesMsgDuration
  ## @brief Preserve original priority as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `priority`*: uint8
const Ros2Pal_device_msgsSrvTimedFadeEffect_RequestMaximumWireBytes* = 54
const Ros2Pal_device_msgsSrvTimedFadeEffect_RequestCodecIdentity* = "UWVMROS1_07c57a457aa0767c766865c5c3b0fdbf5c46e39eac881b452fbc08933c1d3b13"
const Ros2Pal_device_msgsSrvTimedFadeEffect_RequestNativeType* = "pal_device_msgs/srv/TimedFadeEffect_Request"
const Ros2Pal_device_msgsSrvTimedFadeEffect_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsSrvTimedFadeEffect_Request*(): Ros2Pal_device_msgsSrvTimedFadeEffect_Request =
  result.`leds` = initRos2Pal_device_msgsMsgLedGroup()
  result.`first_color` = initRos2Std_msgsMsgColorRGBA()
  result.`second_color` = initRos2Std_msgsMsgColorRGBA()
  result.`color_change_duration` = initRos2Builtin_interfacesMsgDuration()
  result.`reverse_fade` = false
  result.`effect_duration` = initRos2Builtin_interfacesMsgDuration()
  result.`priority` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsSrvTimedFadeEffect_Request; w: var Writer) =
  writeFields(value.`leds`,w)
  writeFields(value.`first_color`,w)
  writeFields(value.`second_color`,w)
  writeFields(value.`color_change_duration`,w)
  putBool(w,value.`reverse_fade`)
  writeFields(value.`effect_duration`,w)
  putInteger(w,value.`priority`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsSrvTimedFadeEffect_Request*(r: var Reader): Ros2Pal_device_msgsSrvTimedFadeEffect_Request =
  result = initRos2Pal_device_msgsSrvTimedFadeEffect_Request()
  result.`leds` = readRos2Pal_device_msgsMsgLedGroup(r)
  result.`first_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`second_color` = readRos2Std_msgsMsgColorRGBA(r)
  result.`color_change_duration` = readRos2Builtin_interfacesMsgDuration(r)
  result.`reverse_fade` = getBool(r)
  result.`effect_duration` = readRos2Builtin_interfacesMsgDuration(r)
  result.`priority` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsSrvTimedFadeEffect_Request): seq[byte] =
  var w = initWriter(54)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsSrvTimedFadeEffect_Request*(b: seq[byte]): Ros2Pal_device_msgsSrvTimedFadeEffect_Request =
  var r = initReader(b,54)
  result = readRos2Pal_device_msgsSrvTimedFadeEffect_Request(r)
  finish(r)
## @brief Own every original field of ROS2 pal_device_msgs/srv/TimedFadeEffect_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Pal_device_msgsSrvTimedFadeEffect_Response* = object
  ## @brief Preserve original effect_id as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_id`*: uint32
const Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseMaximumWireBytes* = 4
const Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseCodecIdentity* = "UWVMROS1_2d94870076ef7b1fe03d8ef45d96588fa3850faa0eaf39efd218b21fe947e8f5"
const Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseNativeType* = "pal_device_msgs/srv/TimedFadeEffect_Response"
const Ros2Pal_device_msgsSrvTimedFadeEffect_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Pal_device_msgsSrvTimedFadeEffect_Response*(): Ros2Pal_device_msgsSrvTimedFadeEffect_Response =
  result.`effect_id` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Pal_device_msgsSrvTimedFadeEffect_Response; w: var Writer) =
  putInteger(w,value.`effect_id`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Pal_device_msgsSrvTimedFadeEffect_Response*(r: var Reader): Ros2Pal_device_msgsSrvTimedFadeEffect_Response =
  result = initRos2Pal_device_msgsSrvTimedFadeEffect_Response()
  result.`effect_id` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Pal_device_msgsSrvTimedFadeEffect_Response): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Pal_device_msgsSrvTimedFadeEffect_Response*(b: seq[byte]): Ros2Pal_device_msgsSrvTimedFadeEffect_Response =
  var r = initReader(b,4)
  result = readRos2Pal_device_msgsSrvTimedFadeEffect_Response(r)
  finish(r)
