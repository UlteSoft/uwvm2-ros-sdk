## UWVM_COMPLETE_FIELD_CONTRACTS
## @details Field domains below come from the unchanged canonical source catalog.
## @file records.nim
## @brief Provide the complete robotis jazzy canonical value surface.
## @details The original 34 record catalog retains field order, constants, defaults and quotas.
## Borrowed values and buffers must remain stable while a conversion is in progress.
## Malformed, truncated and trailing wire values are refused through the shared wire error contract.
## No declaration grants a capability or establishes a native ROS registry identity.
## Original declarations and units are retained in share/platform/robotis/catalogs.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
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
## @brief Own every original field of ROS2 geometry_msgs/msg/Point.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Geometry_msgsMsgPoint* = object
  ## @brief Preserve original x as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `x`*: float64
  ## @brief Preserve original y as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `y`*: float64
  ## @brief Preserve original z as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `z`*: float64
const Ros2Geometry_msgsMsgPointMaximumWireBytes* = 24
const Ros2Geometry_msgsMsgPointCodecIdentity* = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616"
const Ros2Geometry_msgsMsgPointNativeType* = "geometry_msgs/msg/Point"
const Ros2Geometry_msgsMsgPointNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Geometry_msgsMsgPoint*(): Ros2Geometry_msgsMsgPoint =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Geometry_msgsMsgPoint; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Geometry_msgsMsgPoint*(r: var Reader): Ros2Geometry_msgsMsgPoint =
  result = initRos2Geometry_msgsMsgPoint()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Geometry_msgsMsgPoint): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Geometry_msgsMsgPoint*(b: seq[byte]): Ros2Geometry_msgsMsgPoint =
  var r = initReader(b,24)
  result = readRos2Geometry_msgsMsgPoint(r)
  finish(r)
## @brief Own every original field of ROS2 geometry_msgs/msg/Quaternion.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Geometry_msgsMsgQuaternion* = object
  ## @brief Preserve original x as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Declared native default: 0.0.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `x`*: float64
  ## @brief Preserve original y as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Declared native default: 0.0.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `y`*: float64
  ## @brief Preserve original z as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Declared native default: 0.0.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `z`*: float64
  ## @brief Preserve original w as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Declared native default: 1.0.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `w`*: float64
const Ros2Geometry_msgsMsgQuaternionMaximumWireBytes* = 32
const Ros2Geometry_msgsMsgQuaternionCodecIdentity* = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672"
const Ros2Geometry_msgsMsgQuaternionNativeType* = "geometry_msgs/msg/Quaternion"
const Ros2Geometry_msgsMsgQuaternionNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Geometry_msgsMsgQuaternion*(): Ros2Geometry_msgsMsgQuaternion =
  result.`x` = cast[float64](0x0'u64)
  result.`y` = cast[float64](0x0'u64)
  result.`z` = cast[float64](0x0'u64)
  result.`w` = cast[float64](0x3ff0000000000000'u64)
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Geometry_msgsMsgQuaternion; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
  putFloat64(w,value.`w`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Geometry_msgsMsgQuaternion*(r: var Reader): Ros2Geometry_msgsMsgQuaternion =
  result = initRos2Geometry_msgsMsgQuaternion()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
  result.`w` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Geometry_msgsMsgQuaternion): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Geometry_msgsMsgQuaternion*(b: seq[byte]): Ros2Geometry_msgsMsgQuaternion =
  var r = initReader(b,32)
  result = readRos2Geometry_msgsMsgQuaternion(r)
  finish(r)
## @brief Own every original field of ROS2 geometry_msgs/msg/Pose.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Geometry_msgsMsgPose* = object
  ## @brief Preserve original position as geometry_msgs/msg/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `position`*: Ros2Geometry_msgsMsgPoint
  ## @brief Preserve original orientation as geometry_msgs/msg/Quaternion.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `orientation`*: Ros2Geometry_msgsMsgQuaternion
const Ros2Geometry_msgsMsgPoseMaximumWireBytes* = 56
const Ros2Geometry_msgsMsgPoseCodecIdentity* = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777"
const Ros2Geometry_msgsMsgPoseNativeType* = "geometry_msgs/msg/Pose"
const Ros2Geometry_msgsMsgPoseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Geometry_msgsMsgPose*(): Ros2Geometry_msgsMsgPose =
  result.`position` = initRos2Geometry_msgsMsgPoint()
  result.`orientation` = initRos2Geometry_msgsMsgQuaternion()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Geometry_msgsMsgPose; w: var Writer) =
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Geometry_msgsMsgPose*(r: var Reader): Ros2Geometry_msgsMsgPose =
  result = initRos2Geometry_msgsMsgPose()
  result.`position` = readRos2Geometry_msgsMsgPoint(r)
  result.`orientation` = readRos2Geometry_msgsMsgQuaternion(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Geometry_msgsMsgPose): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Geometry_msgsMsgPose*(b: seq[byte]): Ros2Geometry_msgsMsgPose =
  var r = initReader(b,56)
  result = readRos2Geometry_msgsMsgPose(r)
  finish(r)
## @brief Own every original field of ROS2 geometry_msgs/msg/PoseWithCovariance.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Geometry_msgsMsgPoseWithCovariance* = object
  ## @brief Preserve original pose as geometry_msgs/msg/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: Ros2Geometry_msgsMsgPose
  ## @brief Preserve original covariance as float64.
  ## @details Exactly 36 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `covariance`*: array[36,float64]
const Ros2Geometry_msgsMsgPoseWithCovarianceMaximumWireBytes* = 344
const Ros2Geometry_msgsMsgPoseWithCovarianceCodecIdentity* = "UWVMROS1_8eb3e25c45769eb29691011c05315ed50f2b97eff488f9e8ee2dc70bddab4dc2"
const Ros2Geometry_msgsMsgPoseWithCovarianceNativeType* = "geometry_msgs/msg/PoseWithCovariance"
const Ros2Geometry_msgsMsgPoseWithCovarianceNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Geometry_msgsMsgPoseWithCovariance*(): Ros2Geometry_msgsMsgPoseWithCovariance =
  result.`pose` = initRos2Geometry_msgsMsgPose()
  result.`covariance` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Geometry_msgsMsgPoseWithCovariance; w: var Writer) =
  writeFields(value.`pose`,w)
  for e in value.`covariance`:
    putFloat64(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Geometry_msgsMsgPoseWithCovariance*(r: var Reader): Ros2Geometry_msgsMsgPoseWithCovariance =
  result = initRos2Geometry_msgsMsgPoseWithCovariance()
  result.`pose` = readRos2Geometry_msgsMsgPose(r)
  let count1 = 36
  for i in 0..<count1:
    result.`covariance`[i] = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Geometry_msgsMsgPoseWithCovariance): seq[byte] =
  var w = initWriter(344)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Geometry_msgsMsgPoseWithCovariance*(b: seq[byte]): Ros2Geometry_msgsMsgPoseWithCovariance =
  var r = initReader(b,344)
  result = readRos2Geometry_msgsMsgPoseWithCovariance(r)
  finish(r)
## @brief Own every original field of ROS2 geometry_msgs/msg/Vector3.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Geometry_msgsMsgVector3* = object
  ## @brief Preserve original x as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `x`*: float64
  ## @brief Preserve original y as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `y`*: float64
  ## @brief Preserve original z as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `z`*: float64
const Ros2Geometry_msgsMsgVector3MaximumWireBytes* = 24
const Ros2Geometry_msgsMsgVector3CodecIdentity* = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e"
const Ros2Geometry_msgsMsgVector3NativeType* = "geometry_msgs/msg/Vector3"
const Ros2Geometry_msgsMsgVector3NativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Geometry_msgsMsgVector3*(): Ros2Geometry_msgsMsgVector3 =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Geometry_msgsMsgVector3; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Geometry_msgsMsgVector3*(r: var Reader): Ros2Geometry_msgsMsgVector3 =
  result = initRos2Geometry_msgsMsgVector3()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Geometry_msgsMsgVector3): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Geometry_msgsMsgVector3*(b: seq[byte]): Ros2Geometry_msgsMsgVector3 =
  var r = initReader(b,24)
  result = readRos2Geometry_msgsMsgVector3(r)
  finish(r)
## @brief Own every original field of ROS2 geometry_msgs/msg/Transform.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Geometry_msgsMsgTransform* = object
  ## @brief Preserve original translation as geometry_msgs/msg/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `translation`*: Ros2Geometry_msgsMsgVector3
  ## @brief Preserve original rotation as geometry_msgs/msg/Quaternion.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `rotation`*: Ros2Geometry_msgsMsgQuaternion
const Ros2Geometry_msgsMsgTransformMaximumWireBytes* = 56
const Ros2Geometry_msgsMsgTransformCodecIdentity* = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b"
const Ros2Geometry_msgsMsgTransformNativeType* = "geometry_msgs/msg/Transform"
const Ros2Geometry_msgsMsgTransformNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Geometry_msgsMsgTransform*(): Ros2Geometry_msgsMsgTransform =
  result.`translation` = initRos2Geometry_msgsMsgVector3()
  result.`rotation` = initRos2Geometry_msgsMsgQuaternion()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Geometry_msgsMsgTransform; w: var Writer) =
  writeFields(value.`translation`,w)
  writeFields(value.`rotation`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Geometry_msgsMsgTransform*(r: var Reader): Ros2Geometry_msgsMsgTransform =
  result = initRos2Geometry_msgsMsgTransform()
  result.`translation` = readRos2Geometry_msgsMsgVector3(r)
  result.`rotation` = readRos2Geometry_msgsMsgQuaternion(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Geometry_msgsMsgTransform): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Geometry_msgsMsgTransform*(b: seq[byte]): Ros2Geometry_msgsMsgTransform =
  var r = initReader(b,56)
  result = readRos2Geometry_msgsMsgTransform(r)
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
## @brief Own every original field of ROS2 geometry_msgs/msg/TransformStamped.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Geometry_msgsMsgTransformStamped* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original child_frame_id as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `child_frame_id`*: string
  ## @brief Preserve original transform as geometry_msgs/msg/Transform.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `transform`*: Ros2Geometry_msgsMsgTransform
const Ros2Geometry_msgsMsgTransformStampedMaximumWireBytes* = 456
const Ros2Geometry_msgsMsgTransformStampedCodecIdentity* = "UWVMROS1_1cb6033612e0632fe87e6cf44bf5a899220370c372ba25b989a066171925ee7a"
const Ros2Geometry_msgsMsgTransformStampedNativeType* = "geometry_msgs/msg/TransformStamped"
const Ros2Geometry_msgsMsgTransformStampedNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Geometry_msgsMsgTransformStamped*(): Ros2Geometry_msgsMsgTransformStamped =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`child_frame_id` = ""
  result.`transform` = initRos2Geometry_msgsMsgTransform()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Geometry_msgsMsgTransformStamped; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`child_frame_id`,256)
  writeFields(value.`transform`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Geometry_msgsMsgTransformStamped*(r: var Reader): Ros2Geometry_msgsMsgTransformStamped =
  result = initRos2Geometry_msgsMsgTransformStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`child_frame_id` = getString(r,256)
  result.`transform` = readRos2Geometry_msgsMsgTransform(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Geometry_msgsMsgTransformStamped): seq[byte] =
  var w = initWriter(456)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Geometry_msgsMsgTransformStamped*(b: seq[byte]): Ros2Geometry_msgsMsgTransformStamped =
  var r = initReader(b,456)
  result = readRos2Geometry_msgsMsgTransformStamped(r)
  finish(r)
## @brief Own every original field of ROS2 geometry_msgs/msg/Twist.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Geometry_msgsMsgTwist* = object
  ## @brief Preserve original linear as geometry_msgs/msg/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `linear`*: Ros2Geometry_msgsMsgVector3
  ## @brief Preserve original angular as geometry_msgs/msg/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `angular`*: Ros2Geometry_msgsMsgVector3
const Ros2Geometry_msgsMsgTwistMaximumWireBytes* = 48
const Ros2Geometry_msgsMsgTwistCodecIdentity* = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e"
const Ros2Geometry_msgsMsgTwistNativeType* = "geometry_msgs/msg/Twist"
const Ros2Geometry_msgsMsgTwistNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Geometry_msgsMsgTwist*(): Ros2Geometry_msgsMsgTwist =
  result.`linear` = initRos2Geometry_msgsMsgVector3()
  result.`angular` = initRos2Geometry_msgsMsgVector3()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Geometry_msgsMsgTwist; w: var Writer) =
  writeFields(value.`linear`,w)
  writeFields(value.`angular`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Geometry_msgsMsgTwist*(r: var Reader): Ros2Geometry_msgsMsgTwist =
  result = initRos2Geometry_msgsMsgTwist()
  result.`linear` = readRos2Geometry_msgsMsgVector3(r)
  result.`angular` = readRos2Geometry_msgsMsgVector3(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Geometry_msgsMsgTwist): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Geometry_msgsMsgTwist*(b: seq[byte]): Ros2Geometry_msgsMsgTwist =
  var r = initReader(b,48)
  result = readRos2Geometry_msgsMsgTwist(r)
  finish(r)
## @brief Own every original field of ROS2 geometry_msgs/msg/TwistStamped.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Geometry_msgsMsgTwistStamped* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original twist as geometry_msgs/msg/Twist.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `twist`*: Ros2Geometry_msgsMsgTwist
const Ros2Geometry_msgsMsgTwistStampedMaximumWireBytes* = 188
const Ros2Geometry_msgsMsgTwistStampedCodecIdentity* = "UWVMROS1_7448b885388ff3454de1a35b8c5c895ee58b791267b435df1e4cf7c1eee0f573"
const Ros2Geometry_msgsMsgTwistStampedNativeType* = "geometry_msgs/msg/TwistStamped"
const Ros2Geometry_msgsMsgTwistStampedNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Geometry_msgsMsgTwistStamped*(): Ros2Geometry_msgsMsgTwistStamped =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`twist` = initRos2Geometry_msgsMsgTwist()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Geometry_msgsMsgTwistStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`twist`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Geometry_msgsMsgTwistStamped*(r: var Reader): Ros2Geometry_msgsMsgTwistStamped =
  result = initRos2Geometry_msgsMsgTwistStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`twist` = readRos2Geometry_msgsMsgTwist(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Geometry_msgsMsgTwistStamped): seq[byte] =
  var w = initWriter(188)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Geometry_msgsMsgTwistStamped*(b: seq[byte]): Ros2Geometry_msgsMsgTwistStamped =
  var r = initReader(b,188)
  result = readRos2Geometry_msgsMsgTwistStamped(r)
  finish(r)
## @brief Own every original field of ROS2 geometry_msgs/msg/TwistWithCovariance.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Geometry_msgsMsgTwistWithCovariance* = object
  ## @brief Preserve original twist as geometry_msgs/msg/Twist.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `twist`*: Ros2Geometry_msgsMsgTwist
  ## @brief Preserve original covariance as float64.
  ## @details Exactly 36 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `covariance`*: array[36,float64]
const Ros2Geometry_msgsMsgTwistWithCovarianceMaximumWireBytes* = 336
const Ros2Geometry_msgsMsgTwistWithCovarianceCodecIdentity* = "UWVMROS1_96c9fddad7b7c240e850d8c27ddb5f8343764cac791ef9e210196f7941aaf404"
const Ros2Geometry_msgsMsgTwistWithCovarianceNativeType* = "geometry_msgs/msg/TwistWithCovariance"
const Ros2Geometry_msgsMsgTwistWithCovarianceNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Geometry_msgsMsgTwistWithCovariance*(): Ros2Geometry_msgsMsgTwistWithCovariance =
  result.`twist` = initRos2Geometry_msgsMsgTwist()
  result.`covariance` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Geometry_msgsMsgTwistWithCovariance; w: var Writer) =
  writeFields(value.`twist`,w)
  for e in value.`covariance`:
    putFloat64(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Geometry_msgsMsgTwistWithCovariance*(r: var Reader): Ros2Geometry_msgsMsgTwistWithCovariance =
  result = initRos2Geometry_msgsMsgTwistWithCovariance()
  result.`twist` = readRos2Geometry_msgsMsgTwist(r)
  let count1 = 36
  for i in 0..<count1:
    result.`covariance`[i] = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Geometry_msgsMsgTwistWithCovariance): seq[byte] =
  var w = initWriter(336)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Geometry_msgsMsgTwistWithCovariance*(b: seq[byte]): Ros2Geometry_msgsMsgTwistWithCovariance =
  var r = initReader(b,336)
  result = readRos2Geometry_msgsMsgTwistWithCovariance(r)
  finish(r)
## @brief Own every original field of ROS2 nav_msgs/msg/Odometry.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Nav_msgsMsgOdometry* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original child_frame_id as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `child_frame_id`*: string
  ## @brief Preserve original pose as geometry_msgs/msg/PoseWithCovariance.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: Ros2Geometry_msgsMsgPoseWithCovariance
  ## @brief Preserve original twist as geometry_msgs/msg/TwistWithCovariance.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `twist`*: Ros2Geometry_msgsMsgTwistWithCovariance
const Ros2Nav_msgsMsgOdometryMaximumWireBytes* = 1080
const Ros2Nav_msgsMsgOdometryCodecIdentity* = "UWVMROS1_4eb9aa4edb3d288080deaae0326c26a75923e69d40c9b10219baf6d441ea8111"
const Ros2Nav_msgsMsgOdometryNativeType* = "nav_msgs/msg/Odometry"
const Ros2Nav_msgsMsgOdometryNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Nav_msgsMsgOdometry*(): Ros2Nav_msgsMsgOdometry =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`child_frame_id` = ""
  result.`pose` = initRos2Geometry_msgsMsgPoseWithCovariance()
  result.`twist` = initRos2Geometry_msgsMsgTwistWithCovariance()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Nav_msgsMsgOdometry; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`child_frame_id`,256)
  writeFields(value.`pose`,w)
  writeFields(value.`twist`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Nav_msgsMsgOdometry*(r: var Reader): Ros2Nav_msgsMsgOdometry =
  result = initRos2Nav_msgsMsgOdometry()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`child_frame_id` = getString(r,256)
  result.`pose` = readRos2Geometry_msgsMsgPoseWithCovariance(r)
  result.`twist` = readRos2Geometry_msgsMsgTwistWithCovariance(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Nav_msgsMsgOdometry): seq[byte] =
  var w = initWriter(1080)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Nav_msgsMsgOdometry*(b: seq[byte]): Ros2Nav_msgsMsgOdometry =
  var r = initReader(b,1080)
  result = readRos2Nav_msgsMsgOdometry(r)
  finish(r)
## @brief Own every original field of ROS2 sensor_msgs/msg/BatteryState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Sensor_msgsMsgBatteryState* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original voltage as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `voltage`*: float32
  ## @brief Preserve original temperature as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `temperature`*: float32
  ## @brief Preserve original current as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `current`*: float32
  ## @brief Preserve original charge as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `charge`*: float32
  ## @brief Preserve original capacity as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `capacity`*: float32
  ## @brief Preserve original design_capacity as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `design_capacity`*: float32
  ## @brief Preserve original percentage as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `percentage`*: float32
  ## @brief Preserve original power_supply_status as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `power_supply_status`*: uint8
  ## @brief Preserve original power_supply_health as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `power_supply_health`*: uint8
  ## @brief Preserve original power_supply_technology as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `power_supply_technology`*: uint8
  ## @brief Preserve original present as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `present`*: bool
  ## @brief Preserve original cell_voltage as float32.
  ## @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `cell_voltage`*: seq[float32]
  ## @brief Preserve original cell_temperature as float32.
  ## @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `cell_temperature`*: seq[float32]
  ## @brief Preserve original location as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `location`*: string
  ## @brief Preserve original serial_number as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `serial_number`*: string
const Ros2Sensor_msgsMsgBatteryStateMaximumWireBytes* = 828
const Ros2Sensor_msgsMsgBatteryStateCodecIdentity* = "UWVMROS1_9083c57dde00bba912db4dd736027cb92bbed2b1a79f965570dee86e1ff5a96e"
const Ros2Sensor_msgsMsgBatteryStateNativeType* = "sensor_msgs/msg/BatteryState"
const Ros2Sensor_msgsMsgBatteryStateNativeIdentity* = ""
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_UNKNOWN*: uint8 = 0'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_CHARGING*: uint8 = 1'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_DISCHARGING*: uint8 = 2'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_NOT_CHARGING*: uint8 = 3'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_STATUS_FULL*: uint8 = 4'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_UNKNOWN*: uint8 = 0'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_GOOD*: uint8 = 1'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_OVERHEAT*: uint8 = 2'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_DEAD*: uint8 = 3'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_OVERVOLTAGE*: uint8 = 4'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE*: uint8 = 5'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_COLD*: uint8 = 6'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE*: uint8 = 7'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE*: uint8 = 8'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_UNKNOWN*: uint8 = 0'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_NIMH*: uint8 = 1'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LION*: uint8 = 2'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIPO*: uint8 = 3'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIFE*: uint8 = 4'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_NICD*: uint8 = 5'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_LIMN*: uint8 = 6'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_TERNARY*: uint8 = 7'u8
const Ros2Sensor_msgsMsgBatteryState_POWER_SUPPLY_TECHNOLOGY_VRLA*: uint8 = 8'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Sensor_msgsMsgBatteryState*(): Ros2Sensor_msgsMsgBatteryState =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`voltage` = 0
  result.`temperature` = 0
  result.`current` = 0
  result.`charge` = 0
  result.`capacity` = 0
  result.`design_capacity` = 0
  result.`percentage` = 0
  result.`power_supply_status` = 0
  result.`power_supply_health` = 0
  result.`power_supply_technology` = 0
  result.`present` = false
  result.`cell_voltage` = @[]
  result.`cell_temperature` = @[]
  result.`location` = ""
  result.`serial_number` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Sensor_msgsMsgBatteryState; w: var Writer) =
  writeFields(value.`header`,w)
  putFloat32(w,value.`voltage`)
  putFloat32(w,value.`temperature`)
  putFloat32(w,value.`current`)
  putFloat32(w,value.`charge`)
  putFloat32(w,value.`capacity`)
  putFloat32(w,value.`design_capacity`)
  putFloat32(w,value.`percentage`)
  putInteger(w,value.`power_supply_status`)
  putInteger(w,value.`power_supply_health`)
  putInteger(w,value.`power_supply_technology`)
  putBool(w,value.`present`)
  if value.`cell_voltage`.len > 16: fail(22)
  putInteger(w,uint32(value.`cell_voltage`.len))
  for e in value.`cell_voltage`:
    putFloat32(w,e)
  if value.`cell_temperature`.len > 16: fail(22)
  putInteger(w,uint32(value.`cell_temperature`.len))
  for e in value.`cell_temperature`:
    putFloat32(w,e)
  putString(w,value.`location`,256)
  putString(w,value.`serial_number`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Sensor_msgsMsgBatteryState*(r: var Reader): Ros2Sensor_msgsMsgBatteryState =
  result = initRos2Sensor_msgsMsgBatteryState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`voltage` = getFloat32(r)
  result.`temperature` = getFloat32(r)
  result.`current` = getFloat32(r)
  result.`charge` = getFloat32(r)
  result.`capacity` = getFloat32(r)
  result.`design_capacity` = getFloat32(r)
  result.`percentage` = getFloat32(r)
  result.`power_supply_status` = getInteger(r,uint8)
  result.`power_supply_health` = getInteger(r,uint8)
  result.`power_supply_technology` = getInteger(r,uint8)
  result.`present` = getBool(r)
  let rawcount12 = getInteger(r,uint32)
  if rawcount12 > 16: fail(22)
  let count12 = int(rawcount12)
  result.`cell_voltage` = newSeq[float32](count12)
  for i in 0..<count12:
    result.`cell_voltage`[i] = getFloat32(r)
  let rawcount13 = getInteger(r,uint32)
  if rawcount13 > 16: fail(22)
  let count13 = int(rawcount13)
  result.`cell_temperature` = newSeq[float32](count13)
  for i in 0..<count13:
    result.`cell_temperature`[i] = getFloat32(r)
  result.`location` = getString(r,256)
  result.`serial_number` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Sensor_msgsMsgBatteryState): seq[byte] =
  var w = initWriter(828)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Sensor_msgsMsgBatteryState*(b: seq[byte]): Ros2Sensor_msgsMsgBatteryState =
  var r = initReader(b,828)
  result = readRos2Sensor_msgsMsgBatteryState(r)
  finish(r)
## @brief Own every original field of ROS2 sensor_msgs/msg/Imu.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Sensor_msgsMsgImu* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original orientation as geometry_msgs/msg/Quaternion.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `orientation`*: Ros2Geometry_msgsMsgQuaternion
  ## @brief Preserve original orientation_covariance as float64.
  ## @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `orientation_covariance`*: array[9,float64]
  ## @brief Preserve original angular_velocity as geometry_msgs/msg/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `angular_velocity`*: Ros2Geometry_msgsMsgVector3
  ## @brief Preserve original angular_velocity_covariance as float64.
  ## @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `angular_velocity_covariance`*: array[9,float64]
  ## @brief Preserve original linear_acceleration as geometry_msgs/msg/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `linear_acceleration`*: Ros2Geometry_msgsMsgVector3
  ## @brief Preserve original linear_acceleration_covariance as float64.
  ## @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `linear_acceleration_covariance`*: array[9,float64]
const Ros2Sensor_msgsMsgImuMaximumWireBytes* = 436
const Ros2Sensor_msgsMsgImuCodecIdentity* = "UWVMROS1_e38d1c936a2a4a870b2f069af8d1796f69e6ce7b8cae0a792925ed2f6c0cae1b"
const Ros2Sensor_msgsMsgImuNativeType* = "sensor_msgs/msg/Imu"
const Ros2Sensor_msgsMsgImuNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Sensor_msgsMsgImu*(): Ros2Sensor_msgsMsgImu =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`orientation` = initRos2Geometry_msgsMsgQuaternion()
  result.`orientation_covariance` = [0,0,0,0,0,0,0,0,0]
  result.`angular_velocity` = initRos2Geometry_msgsMsgVector3()
  result.`angular_velocity_covariance` = [0,0,0,0,0,0,0,0,0]
  result.`linear_acceleration` = initRos2Geometry_msgsMsgVector3()
  result.`linear_acceleration_covariance` = [0,0,0,0,0,0,0,0,0]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Sensor_msgsMsgImu; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`orientation`,w)
  for e in value.`orientation_covariance`:
    putFloat64(w,e)
  writeFields(value.`angular_velocity`,w)
  for e in value.`angular_velocity_covariance`:
    putFloat64(w,e)
  writeFields(value.`linear_acceleration`,w)
  for e in value.`linear_acceleration_covariance`:
    putFloat64(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Sensor_msgsMsgImu*(r: var Reader): Ros2Sensor_msgsMsgImu =
  result = initRos2Sensor_msgsMsgImu()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`orientation` = readRos2Geometry_msgsMsgQuaternion(r)
  let count2 = 9
  for i in 0..<count2:
    result.`orientation_covariance`[i] = getFloat64(r)
  result.`angular_velocity` = readRos2Geometry_msgsMsgVector3(r)
  let count4 = 9
  for i in 0..<count4:
    result.`angular_velocity_covariance`[i] = getFloat64(r)
  result.`linear_acceleration` = readRos2Geometry_msgsMsgVector3(r)
  let count6 = 9
  for i in 0..<count6:
    result.`linear_acceleration_covariance`[i] = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Sensor_msgsMsgImu): seq[byte] =
  var w = initWriter(436)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Sensor_msgsMsgImu*(b: seq[byte]): Ros2Sensor_msgsMsgImu =
  var r = initReader(b,436)
  result = readRos2Sensor_msgsMsgImu(r)
  finish(r)
## @brief Own every original field of ROS2 sensor_msgs/msg/JointState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Sensor_msgsMsgJointState* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original name as string.
  ## @details At most 2 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `name`*: seq[string]
  ## @brief Preserve original position as float64.
  ## @details At most 2 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `position`*: seq[float64]
  ## @brief Preserve original velocity as float64.
  ## @details At most 2 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `velocity`*: seq[float64]
  ## @brief Preserve original effort as float64.
  ## @details At most 2 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `effort`*: seq[float64]
const Ros2Sensor_msgsMsgJointStateMaximumWireBytes* = 468
const Ros2Sensor_msgsMsgJointStateCodecIdentity* = "UWVMROS1_5c4d1ef0128c748e20f6b30c9c3bb5ef6e3c529a0b05b81764ac4774ce765bcf"
const Ros2Sensor_msgsMsgJointStateNativeType* = "sensor_msgs/msg/JointState"
const Ros2Sensor_msgsMsgJointStateNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Sensor_msgsMsgJointState*(): Ros2Sensor_msgsMsgJointState =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`name` = @[]
  result.`position` = @[]
  result.`velocity` = @[]
  result.`effort` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Sensor_msgsMsgJointState; w: var Writer) =
  if len(value.`name`) != 0 and len(value.`position`) != 0 and len(value.`name`) != len(value.`position`): fail(22)
  if len(value.`name`) != 0 and len(value.`velocity`) != 0 and len(value.`name`) != len(value.`velocity`): fail(22)
  if len(value.`name`) != 0 and len(value.`effort`) != 0 and len(value.`name`) != len(value.`effort`): fail(22)
  if len(value.`position`) != 0 and len(value.`velocity`) != 0 and len(value.`position`) != len(value.`velocity`): fail(22)
  if len(value.`position`) != 0 and len(value.`effort`) != 0 and len(value.`position`) != len(value.`effort`): fail(22)
  if len(value.`velocity`) != 0 and len(value.`effort`) != 0 and len(value.`velocity`) != len(value.`effort`): fail(22)
  writeFields(value.`header`,w)
  if value.`name`.len > 2: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,128)
  if value.`position`.len > 2: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    putFloat64(w,e)
  if value.`velocity`.len > 2: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    putFloat64(w,e)
  if value.`effort`.len > 2: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Sensor_msgsMsgJointState*(r: var Reader): Ros2Sensor_msgsMsgJointState =
  result = initRos2Sensor_msgsMsgJointState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 2: fail(22)
  let count1 = int(rawcount1)
  result.`name` = newSeq[string](count1)
  for i in 0..<count1:
    result.`name`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 2: fail(22)
  let count2 = int(rawcount2)
  result.`position` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`position`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 2: fail(22)
  let count3 = int(rawcount3)
  result.`velocity` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`velocity`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 2: fail(22)
  let count4 = int(rawcount4)
  result.`effort` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`effort`[i] = getFloat64(r)
  if len(result.`name`) != 0 and len(result.`position`) != 0 and len(result.`name`) != len(result.`position`): fail(22)
  if len(result.`name`) != 0 and len(result.`velocity`) != 0 and len(result.`name`) != len(result.`velocity`): fail(22)
  if len(result.`name`) != 0 and len(result.`effort`) != 0 and len(result.`name`) != len(result.`effort`): fail(22)
  if len(result.`position`) != 0 and len(result.`velocity`) != 0 and len(result.`position`) != len(result.`velocity`): fail(22)
  if len(result.`position`) != 0 and len(result.`effort`) != 0 and len(result.`position`) != len(result.`effort`): fail(22)
  if len(result.`velocity`) != 0 and len(result.`effort`) != 0 and len(result.`velocity`) != len(result.`effort`): fail(22)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Sensor_msgsMsgJointState): seq[byte] =
  var w = initWriter(468)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Sensor_msgsMsgJointState*(b: seq[byte]): Ros2Sensor_msgsMsgJointState =
  var r = initReader(b,468)
  result = readRos2Sensor_msgsMsgJointState(r)
  finish(r)
## @brief Own every original field of ROS2 sensor_msgs/msg/LaserScan.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Sensor_msgsMsgLaserScan* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original angle_min as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `angle_min`*: float32
  ## @brief Preserve original angle_max as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `angle_max`*: float32
  ## @brief Preserve original angle_increment as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `angle_increment`*: float32
  ## @brief Preserve original time_increment as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `time_increment`*: float32
  ## @brief Preserve original scan_time as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `scan_time`*: float32
  ## @brief Preserve original range_min as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `range_min`*: float32
  ## @brief Preserve original range_max as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `range_max`*: float32
  ## @brief Preserve original ranges as float32.
  ## @details At most 1024 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `ranges`*: seq[float32]
  ## @brief Preserve original intensities as float32.
  ## @details At most 1024 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `intensities`*: seq[float32]
const Ros2Sensor_msgsMsgLaserScanMaximumWireBytes* = 8368
const Ros2Sensor_msgsMsgLaserScanCodecIdentity* = "UWVMROS1_89faa8e14fc7f79a62a576d35c0bb377caf0cbaef6a6f181a5af2da0ead6cce4"
const Ros2Sensor_msgsMsgLaserScanNativeType* = "sensor_msgs/msg/LaserScan"
const Ros2Sensor_msgsMsgLaserScanNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Sensor_msgsMsgLaserScan*(): Ros2Sensor_msgsMsgLaserScan =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`angle_min` = 0
  result.`angle_max` = 0
  result.`angle_increment` = 0
  result.`time_increment` = 0
  result.`scan_time` = 0
  result.`range_min` = 0
  result.`range_max` = 0
  result.`ranges` = @[]
  result.`intensities` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Sensor_msgsMsgLaserScan; w: var Writer) =
  writeFields(value.`header`,w)
  putFloat32(w,value.`angle_min`)
  putFloat32(w,value.`angle_max`)
  putFloat32(w,value.`angle_increment`)
  putFloat32(w,value.`time_increment`)
  putFloat32(w,value.`scan_time`)
  putFloat32(w,value.`range_min`)
  putFloat32(w,value.`range_max`)
  if value.`ranges`.len > 1024: fail(22)
  putInteger(w,uint32(value.`ranges`.len))
  for e in value.`ranges`:
    putFloat32(w,e)
  if value.`intensities`.len > 1024: fail(22)
  putInteger(w,uint32(value.`intensities`.len))
  for e in value.`intensities`:
    putFloat32(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Sensor_msgsMsgLaserScan*(r: var Reader): Ros2Sensor_msgsMsgLaserScan =
  result = initRos2Sensor_msgsMsgLaserScan()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`angle_min` = getFloat32(r)
  result.`angle_max` = getFloat32(r)
  result.`angle_increment` = getFloat32(r)
  result.`time_increment` = getFloat32(r)
  result.`scan_time` = getFloat32(r)
  result.`range_min` = getFloat32(r)
  result.`range_max` = getFloat32(r)
  let rawcount8 = getInteger(r,uint32)
  if rawcount8 > 1024: fail(22)
  let count8 = int(rawcount8)
  result.`ranges` = newSeq[float32](count8)
  for i in 0..<count8:
    result.`ranges`[i] = getFloat32(r)
  let rawcount9 = getInteger(r,uint32)
  if rawcount9 > 1024: fail(22)
  let count9 = int(rawcount9)
  result.`intensities` = newSeq[float32](count9)
  for i in 0..<count9:
    result.`intensities`[i] = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Sensor_msgsMsgLaserScan): seq[byte] =
  var w = initWriter(8368)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Sensor_msgsMsgLaserScan*(b: seq[byte]): Ros2Sensor_msgsMsgLaserScan =
  var r = initReader(b,8368)
  result = readRos2Sensor_msgsMsgLaserScan(r)
  finish(r)
## @brief Own every original field of ROS2 sensor_msgs/msg/MagneticField.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Sensor_msgsMsgMagneticField* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original magnetic_field as geometry_msgs/msg/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `magnetic_field`*: Ros2Geometry_msgsMsgVector3
  ## @brief Preserve original magnetic_field_covariance as float64.
  ## @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `magnetic_field_covariance`*: array[9,float64]
const Ros2Sensor_msgsMsgMagneticFieldMaximumWireBytes* = 236
const Ros2Sensor_msgsMsgMagneticFieldCodecIdentity* = "UWVMROS1_56ae1437e0fbe7a6722ecf4795483d15f4c616e2e891372c30fa78f18be2cf8b"
const Ros2Sensor_msgsMsgMagneticFieldNativeType* = "sensor_msgs/msg/MagneticField"
const Ros2Sensor_msgsMsgMagneticFieldNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Sensor_msgsMsgMagneticField*(): Ros2Sensor_msgsMsgMagneticField =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`magnetic_field` = initRos2Geometry_msgsMsgVector3()
  result.`magnetic_field_covariance` = [0,0,0,0,0,0,0,0,0]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Sensor_msgsMsgMagneticField; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`magnetic_field`,w)
  for e in value.`magnetic_field_covariance`:
    putFloat64(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Sensor_msgsMsgMagneticField*(r: var Reader): Ros2Sensor_msgsMsgMagneticField =
  result = initRos2Sensor_msgsMsgMagneticField()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`magnetic_field` = readRos2Geometry_msgsMsgVector3(r)
  let count2 = 9
  for i in 0..<count2:
    result.`magnetic_field_covariance`[i] = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Sensor_msgsMsgMagneticField): seq[byte] =
  var w = initWriter(236)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Sensor_msgsMsgMagneticField*(b: seq[byte]): Ros2Sensor_msgsMsgMagneticField =
  var r = initReader(b,236)
  result = readRos2Sensor_msgsMsgMagneticField(r)
  finish(r)
## @brief Own every original field of ROS2 std_srvs/srv/SetBool_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Std_srvsSrvSetBool_Request* = object
  ## @brief Preserve original data as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `data`*: bool
const Ros2Std_srvsSrvSetBool_RequestMaximumWireBytes* = 1
const Ros2Std_srvsSrvSetBool_RequestCodecIdentity* = "UWVMROS1_2523e7915bb78fe01b68f2a856611b32a88f624a6e197a6ff312b613e8c65910"
const Ros2Std_srvsSrvSetBool_RequestNativeType* = "std_srvs/srv/SetBool_Request"
const Ros2Std_srvsSrvSetBool_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Std_srvsSrvSetBool_Request*(): Ros2Std_srvsSrvSetBool_Request =
  result.`data` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Std_srvsSrvSetBool_Request; w: var Writer) =
  putBool(w,value.`data`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Std_srvsSrvSetBool_Request*(r: var Reader): Ros2Std_srvsSrvSetBool_Request =
  result = initRos2Std_srvsSrvSetBool_Request()
  result.`data` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Std_srvsSrvSetBool_Request): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Std_srvsSrvSetBool_Request*(b: seq[byte]): Ros2Std_srvsSrvSetBool_Request =
  var r = initReader(b,1)
  result = readRos2Std_srvsSrvSetBool_Request(r)
  finish(r)
## @brief Own every original field of ROS2 std_srvs/srv/SetBool_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Std_srvsSrvSetBool_Response* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros2Std_srvsSrvSetBool_ResponseMaximumWireBytes* = 261
const Ros2Std_srvsSrvSetBool_ResponseCodecIdentity* = "UWVMROS1_f2d46a8440538094221a151716d8ec44db02455f59845c50aaf4e7964c27ebe4"
const Ros2Std_srvsSrvSetBool_ResponseNativeType* = "std_srvs/srv/SetBool_Response"
const Ros2Std_srvsSrvSetBool_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Std_srvsSrvSetBool_Response*(): Ros2Std_srvsSrvSetBool_Response =
  result.`success` = false
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Std_srvsSrvSetBool_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Std_srvsSrvSetBool_Response*(r: var Reader): Ros2Std_srvsSrvSetBool_Response =
  result = initRos2Std_srvsSrvSetBool_Response()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Std_srvsSrvSetBool_Response): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Std_srvsSrvSetBool_Response*(b: seq[byte]): Ros2Std_srvsSrvSetBool_Response =
  var r = initReader(b,261)
  result = readRos2Std_srvsSrvSetBool_Response(r)
  finish(r)
## @brief Own every original field of ROS2 std_srvs/srv/Trigger_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Std_srvsSrvTrigger_Request* = object
const Ros2Std_srvsSrvTrigger_RequestMaximumWireBytes* = 0
const Ros2Std_srvsSrvTrigger_RequestCodecIdentity* = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77"
const Ros2Std_srvsSrvTrigger_RequestNativeType* = "std_srvs/srv/Trigger_Request"
const Ros2Std_srvsSrvTrigger_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Std_srvsSrvTrigger_Request*(): Ros2Std_srvsSrvTrigger_Request =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Std_srvsSrvTrigger_Request; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Std_srvsSrvTrigger_Request*(r: var Reader): Ros2Std_srvsSrvTrigger_Request =
  result = initRos2Std_srvsSrvTrigger_Request()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Std_srvsSrvTrigger_Request): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Std_srvsSrvTrigger_Request*(b: seq[byte]): Ros2Std_srvsSrvTrigger_Request =
  var r = initReader(b,0)
  result = readRos2Std_srvsSrvTrigger_Request(r)
  finish(r)
## @brief Own every original field of ROS2 std_srvs/srv/Trigger_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Std_srvsSrvTrigger_Response* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros2Std_srvsSrvTrigger_ResponseMaximumWireBytes* = 261
const Ros2Std_srvsSrvTrigger_ResponseCodecIdentity* = "UWVMROS1_58806c592727ad1011b32edb6bca3ca32d8e5dbe7f2fa20c86220daf64a10392"
const Ros2Std_srvsSrvTrigger_ResponseNativeType* = "std_srvs/srv/Trigger_Response"
const Ros2Std_srvsSrvTrigger_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Std_srvsSrvTrigger_Response*(): Ros2Std_srvsSrvTrigger_Response =
  result.`success` = false
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Std_srvsSrvTrigger_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Std_srvsSrvTrigger_Response*(r: var Reader): Ros2Std_srvsSrvTrigger_Response =
  result = initRos2Std_srvsSrvTrigger_Response()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Std_srvsSrvTrigger_Response): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Std_srvsSrvTrigger_Response*(b: seq[byte]): Ros2Std_srvsSrvTrigger_Response =
  var r = initReader(b,261)
  result = readRos2Std_srvsSrvTrigger_Response(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/action/Patrol_Goal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsActionPatrol_Goal* = object
  ## @brief Preserve original goal as geometry_msgs/msg/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `goal`*: Ros2Geometry_msgsMsgVector3
const Ros2Turtlebot3_msgsActionPatrol_GoalMaximumWireBytes* = 24
const Ros2Turtlebot3_msgsActionPatrol_GoalCodecIdentity* = "UWVMROS1_929abdbc422698464043e7e8d12c2a5edd418dcd52bbde4a542b33e6862ba96f"
const Ros2Turtlebot3_msgsActionPatrol_GoalNativeType* = "turtlebot3_msgs/action/Patrol_Goal"
const Ros2Turtlebot3_msgsActionPatrol_GoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsActionPatrol_Goal*(): Ros2Turtlebot3_msgsActionPatrol_Goal =
  result.`goal` = initRos2Geometry_msgsMsgVector3()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsActionPatrol_Goal; w: var Writer) =
  writeFields(value.`goal`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsActionPatrol_Goal*(r: var Reader): Ros2Turtlebot3_msgsActionPatrol_Goal =
  result = initRos2Turtlebot3_msgsActionPatrol_Goal()
  result.`goal` = readRos2Geometry_msgsMsgVector3(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsActionPatrol_Goal): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsActionPatrol_Goal*(b: seq[byte]): Ros2Turtlebot3_msgsActionPatrol_Goal =
  var r = initReader(b,24)
  result = readRos2Turtlebot3_msgsActionPatrol_Goal(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/action/Patrol_Result.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsActionPatrol_Result* = object
  ## @brief Preserve original result as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `result`*: string
const Ros2Turtlebot3_msgsActionPatrol_ResultMaximumWireBytes* = 260
const Ros2Turtlebot3_msgsActionPatrol_ResultCodecIdentity* = "UWVMROS1_1d1fa277be54e1df3bd314a632ff80d79f22a306fc232219a7c23cce7a7703a3"
const Ros2Turtlebot3_msgsActionPatrol_ResultNativeType* = "turtlebot3_msgs/action/Patrol_Result"
const Ros2Turtlebot3_msgsActionPatrol_ResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsActionPatrol_Result*(): Ros2Turtlebot3_msgsActionPatrol_Result =
  result.`result` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsActionPatrol_Result; w: var Writer) =
  putString(w,value.`result`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsActionPatrol_Result*(r: var Reader): Ros2Turtlebot3_msgsActionPatrol_Result =
  result = initRos2Turtlebot3_msgsActionPatrol_Result()
  result.`result` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsActionPatrol_Result): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsActionPatrol_Result*(b: seq[byte]): Ros2Turtlebot3_msgsActionPatrol_Result =
  var r = initReader(b,260)
  result = readRos2Turtlebot3_msgsActionPatrol_Result(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/action/Patrol_Feedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsActionPatrol_Feedback* = object
  ## @brief Preserve original state as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `state`*: string
const Ros2Turtlebot3_msgsActionPatrol_FeedbackMaximumWireBytes* = 260
const Ros2Turtlebot3_msgsActionPatrol_FeedbackCodecIdentity* = "UWVMROS1_7c2f3824653a3048e1b93fa95584543a01efae8bb67253d3371a2988407a601e"
const Ros2Turtlebot3_msgsActionPatrol_FeedbackNativeType* = "turtlebot3_msgs/action/Patrol_Feedback"
const Ros2Turtlebot3_msgsActionPatrol_FeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsActionPatrol_Feedback*(): Ros2Turtlebot3_msgsActionPatrol_Feedback =
  result.`state` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsActionPatrol_Feedback; w: var Writer) =
  putString(w,value.`state`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsActionPatrol_Feedback*(r: var Reader): Ros2Turtlebot3_msgsActionPatrol_Feedback =
  result = initRos2Turtlebot3_msgsActionPatrol_Feedback()
  result.`state` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsActionPatrol_Feedback): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsActionPatrol_Feedback*(b: seq[byte]): Ros2Turtlebot3_msgsActionPatrol_Feedback =
  var r = initReader(b,260)
  result = readRos2Turtlebot3_msgsActionPatrol_Feedback(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/msg/SensorState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsMsgSensorState* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original bumper as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `bumper`*: uint8
  ## @brief Preserve original cliff as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `cliff`*: float32
  ## @brief Preserve original sonar as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `sonar`*: float32
  ## @brief Preserve original illumination as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `illumination`*: float32
  ## @brief Preserve original led as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `led`*: uint8
  ## @brief Preserve original button as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `button`*: uint8
  ## @brief Preserve original torque as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `torque`*: bool
  ## @brief Preserve original left_encoder as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `left_encoder`*: int32
  ## @brief Preserve original right_encoder as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `right_encoder`*: int32
  ## @brief Preserve original battery as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `battery`*: float32
const Ros2Turtlebot3_msgsMsgSensorStateMaximumWireBytes* = 168
const Ros2Turtlebot3_msgsMsgSensorStateCodecIdentity* = "UWVMROS1_7974ef7ca70ababf0e3f7a5e4099335a1398933833260798482f155291a62358"
const Ros2Turtlebot3_msgsMsgSensorStateNativeType* = "turtlebot3_msgs/msg/SensorState"
const Ros2Turtlebot3_msgsMsgSensorStateNativeIdentity* = ""
const Ros2Turtlebot3_msgsMsgSensorState_BUMPER_FORWARD*: uint8 = 1'u8
const Ros2Turtlebot3_msgsMsgSensorState_BUMPER_BACKWARD*: uint8 = 2'u8
const Ros2Turtlebot3_msgsMsgSensorState_CLIFF*: uint8 = 1'u8
const Ros2Turtlebot3_msgsMsgSensorState_SONAR*: uint8 = 1'u8
const Ros2Turtlebot3_msgsMsgSensorState_ILLUMINATION*: uint8 = 1'u8
const Ros2Turtlebot3_msgsMsgSensorState_BUTTON0*: uint8 = 1'u8
const Ros2Turtlebot3_msgsMsgSensorState_BUTTON1*: uint8 = 2'u8
const Ros2Turtlebot3_msgsMsgSensorState_ERROR_LEFT_MOTOR*: uint8 = 1'u8
const Ros2Turtlebot3_msgsMsgSensorState_ERROR_RIGHT_MOTOR*: uint8 = 2'u8
const Ros2Turtlebot3_msgsMsgSensorState_TORQUE_ON*: uint8 = 1'u8
const Ros2Turtlebot3_msgsMsgSensorState_TORQUE_OFF*: uint8 = 2'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsMsgSensorState*(): Ros2Turtlebot3_msgsMsgSensorState =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`bumper` = 0
  result.`cliff` = 0
  result.`sonar` = 0
  result.`illumination` = 0
  result.`led` = 0
  result.`button` = 0
  result.`torque` = false
  result.`left_encoder` = 0
  result.`right_encoder` = 0
  result.`battery` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsMsgSensorState; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`bumper`)
  putFloat32(w,value.`cliff`)
  putFloat32(w,value.`sonar`)
  putFloat32(w,value.`illumination`)
  putInteger(w,value.`led`)
  putInteger(w,value.`button`)
  putBool(w,value.`torque`)
  putInteger(w,value.`left_encoder`)
  putInteger(w,value.`right_encoder`)
  putFloat32(w,value.`battery`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsMsgSensorState*(r: var Reader): Ros2Turtlebot3_msgsMsgSensorState =
  result = initRos2Turtlebot3_msgsMsgSensorState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`bumper` = getInteger(r,uint8)
  result.`cliff` = getFloat32(r)
  result.`sonar` = getFloat32(r)
  result.`illumination` = getFloat32(r)
  result.`led` = getInteger(r,uint8)
  result.`button` = getInteger(r,uint8)
  result.`torque` = getBool(r)
  result.`left_encoder` = getInteger(r,int32)
  result.`right_encoder` = getInteger(r,int32)
  result.`battery` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsMsgSensorState): seq[byte] =
  var w = initWriter(168)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsMsgSensorState*(b: seq[byte]): Ros2Turtlebot3_msgsMsgSensorState =
  var r = initReader(b,168)
  result = readRos2Turtlebot3_msgsMsgSensorState(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/msg/Sound.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsMsgSound* = object
  ## @brief Preserve original value as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `value`*: uint8
const Ros2Turtlebot3_msgsMsgSoundMaximumWireBytes* = 1
const Ros2Turtlebot3_msgsMsgSoundCodecIdentity* = "UWVMROS1_e8bd9a5fdf84ad1df0f264bd13a0e8966918de19ab62e91c7524dd8fc17a4e4b"
const Ros2Turtlebot3_msgsMsgSoundNativeType* = "turtlebot3_msgs/msg/Sound"
const Ros2Turtlebot3_msgsMsgSoundNativeIdentity* = ""
const Ros2Turtlebot3_msgsMsgSound_OFF*: uint8 = 0'u8
const Ros2Turtlebot3_msgsMsgSound_ON*: uint8 = 1'u8
const Ros2Turtlebot3_msgsMsgSound_LOW_BATTERY*: uint8 = 2'u8
const Ros2Turtlebot3_msgsMsgSound_ERROR*: uint8 = 3'u8
const Ros2Turtlebot3_msgsMsgSound_BUTTON1*: uint8 = 4'u8
const Ros2Turtlebot3_msgsMsgSound_BUTTON2*: uint8 = 5'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsMsgSound*(): Ros2Turtlebot3_msgsMsgSound =
  result.`value` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsMsgSound; w: var Writer) =
  putInteger(w,value.`value`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsMsgSound*(r: var Reader): Ros2Turtlebot3_msgsMsgSound =
  result = initRos2Turtlebot3_msgsMsgSound()
  result.`value` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsMsgSound): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsMsgSound*(b: seq[byte]): Ros2Turtlebot3_msgsMsgSound =
  var r = initReader(b,1)
  result = readRos2Turtlebot3_msgsMsgSound(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/msg/VersionInfo.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsMsgVersionInfo* = object
  ## @brief Preserve original hardware as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `hardware`*: string
  ## @brief Preserve original firmware as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `firmware`*: string
  ## @brief Preserve original software as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `software`*: string
const Ros2Turtlebot3_msgsMsgVersionInfoMaximumWireBytes* = 780
const Ros2Turtlebot3_msgsMsgVersionInfoCodecIdentity* = "UWVMROS1_7668c77b01a05eeb8ba3c5f259f3f3a9dfad3d4fdf8aa566d65f6e8f1c0f2d6a"
const Ros2Turtlebot3_msgsMsgVersionInfoNativeType* = "turtlebot3_msgs/msg/VersionInfo"
const Ros2Turtlebot3_msgsMsgVersionInfoNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsMsgVersionInfo*(): Ros2Turtlebot3_msgsMsgVersionInfo =
  result.`hardware` = ""
  result.`firmware` = ""
  result.`software` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsMsgVersionInfo; w: var Writer) =
  putString(w,value.`hardware`,256)
  putString(w,value.`firmware`,256)
  putString(w,value.`software`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsMsgVersionInfo*(r: var Reader): Ros2Turtlebot3_msgsMsgVersionInfo =
  result = initRos2Turtlebot3_msgsMsgVersionInfo()
  result.`hardware` = getString(r,256)
  result.`firmware` = getString(r,256)
  result.`software` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsMsgVersionInfo): seq[byte] =
  var w = initWriter(780)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsMsgVersionInfo*(b: seq[byte]): Ros2Turtlebot3_msgsMsgVersionInfo =
  var r = initReader(b,780)
  result = readRos2Turtlebot3_msgsMsgVersionInfo(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/srv/Dqn_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsSrvDqn_Request* = object
  ## @brief Preserve original action as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `action`*: uint8
  ## @brief Preserve original init as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `init`*: bool
const Ros2Turtlebot3_msgsSrvDqn_RequestMaximumWireBytes* = 2
const Ros2Turtlebot3_msgsSrvDqn_RequestCodecIdentity* = "UWVMROS1_14042e65db9f4feef7a43bfb44255795470bb0ed91a3cf301ebec98c2d4e2d0e"
const Ros2Turtlebot3_msgsSrvDqn_RequestNativeType* = "turtlebot3_msgs/srv/Dqn_Request"
const Ros2Turtlebot3_msgsSrvDqn_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsSrvDqn_Request*(): Ros2Turtlebot3_msgsSrvDqn_Request =
  result.`action` = 0
  result.`init` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsSrvDqn_Request; w: var Writer) =
  putInteger(w,value.`action`)
  putBool(w,value.`init`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsSrvDqn_Request*(r: var Reader): Ros2Turtlebot3_msgsSrvDqn_Request =
  result = initRos2Turtlebot3_msgsSrvDqn_Request()
  result.`action` = getInteger(r,uint8)
  result.`init` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsSrvDqn_Request): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsSrvDqn_Request*(b: seq[byte]): Ros2Turtlebot3_msgsSrvDqn_Request =
  var r = initReader(b,2)
  result = readRos2Turtlebot3_msgsSrvDqn_Request(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/srv/Dqn_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsSrvDqn_Response* = object
  ## @brief Preserve original state as float32.
  ## @details At most 128 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `state`*: seq[float32]
  ## @brief Preserve original reward as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `reward`*: float32
  ## @brief Preserve original done as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `done`*: bool
const Ros2Turtlebot3_msgsSrvDqn_ResponseMaximumWireBytes* = 521
const Ros2Turtlebot3_msgsSrvDqn_ResponseCodecIdentity* = "UWVMROS1_5d256e9c87d7959917f07e7cfcc0049fc18f79f547d83b72bd388a63c1417c6e"
const Ros2Turtlebot3_msgsSrvDqn_ResponseNativeType* = "turtlebot3_msgs/srv/Dqn_Response"
const Ros2Turtlebot3_msgsSrvDqn_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsSrvDqn_Response*(): Ros2Turtlebot3_msgsSrvDqn_Response =
  result.`state` = @[]
  result.`reward` = 0
  result.`done` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsSrvDqn_Response; w: var Writer) =
  if value.`state`.len > 128: fail(22)
  putInteger(w,uint32(value.`state`.len))
  for e in value.`state`:
    putFloat32(w,e)
  putFloat32(w,value.`reward`)
  putBool(w,value.`done`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsSrvDqn_Response*(r: var Reader): Ros2Turtlebot3_msgsSrvDqn_Response =
  result = initRos2Turtlebot3_msgsSrvDqn_Response()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 128: fail(22)
  let count0 = int(rawcount0)
  result.`state` = newSeq[float32](count0)
  for i in 0..<count0:
    result.`state`[i] = getFloat32(r)
  result.`reward` = getFloat32(r)
  result.`done` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsSrvDqn_Response): seq[byte] =
  var w = initWriter(521)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsSrvDqn_Response*(b: seq[byte]): Ros2Turtlebot3_msgsSrvDqn_Response =
  var r = initReader(b,521)
  result = readRos2Turtlebot3_msgsSrvDqn_Response(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/srv/Goal_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsSrvGoal_Request* = object
const Ros2Turtlebot3_msgsSrvGoal_RequestMaximumWireBytes* = 0
const Ros2Turtlebot3_msgsSrvGoal_RequestCodecIdentity* = "UWVMROS1_f76094f3cf00772bb80b59e846f1160ae6255fc0d931bbcba362104081698ded"
const Ros2Turtlebot3_msgsSrvGoal_RequestNativeType* = "turtlebot3_msgs/srv/Goal_Request"
const Ros2Turtlebot3_msgsSrvGoal_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsSrvGoal_Request*(): Ros2Turtlebot3_msgsSrvGoal_Request =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsSrvGoal_Request; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsSrvGoal_Request*(r: var Reader): Ros2Turtlebot3_msgsSrvGoal_Request =
  result = initRos2Turtlebot3_msgsSrvGoal_Request()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsSrvGoal_Request): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsSrvGoal_Request*(b: seq[byte]): Ros2Turtlebot3_msgsSrvGoal_Request =
  var r = initReader(b,0)
  result = readRos2Turtlebot3_msgsSrvGoal_Request(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/srv/Goal_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsSrvGoal_Response* = object
  ## @brief Preserve original pose_x as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `pose_x`*: float32
  ## @brief Preserve original pose_y as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `pose_y`*: float32
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
const Ros2Turtlebot3_msgsSrvGoal_ResponseMaximumWireBytes* = 9
const Ros2Turtlebot3_msgsSrvGoal_ResponseCodecIdentity* = "UWVMROS1_8b9022a7fb8c68a0b063b080cd05c230b653169badbe205bcd8051b8020f7990"
const Ros2Turtlebot3_msgsSrvGoal_ResponseNativeType* = "turtlebot3_msgs/srv/Goal_Response"
const Ros2Turtlebot3_msgsSrvGoal_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsSrvGoal_Response*(): Ros2Turtlebot3_msgsSrvGoal_Response =
  result.`pose_x` = 0
  result.`pose_y` = 0
  result.`success` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsSrvGoal_Response; w: var Writer) =
  putFloat32(w,value.`pose_x`)
  putFloat32(w,value.`pose_y`)
  putBool(w,value.`success`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsSrvGoal_Response*(r: var Reader): Ros2Turtlebot3_msgsSrvGoal_Response =
  result = initRos2Turtlebot3_msgsSrvGoal_Response()
  result.`pose_x` = getFloat32(r)
  result.`pose_y` = getFloat32(r)
  result.`success` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsSrvGoal_Response): seq[byte] =
  var w = initWriter(9)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsSrvGoal_Response*(b: seq[byte]): Ros2Turtlebot3_msgsSrvGoal_Response =
  var r = initReader(b,9)
  result = readRos2Turtlebot3_msgsSrvGoal_Response(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/srv/Sound_Request.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsSrvSound_Request* = object
  ## @brief Preserve original value as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `value`*: uint8
const Ros2Turtlebot3_msgsSrvSound_RequestMaximumWireBytes* = 1
const Ros2Turtlebot3_msgsSrvSound_RequestCodecIdentity* = "UWVMROS1_0dcba95f5ba646d9a24b0054ba603daf1d1e5e4e9a6ffe7387cd61bff2e4151a"
const Ros2Turtlebot3_msgsSrvSound_RequestNativeType* = "turtlebot3_msgs/srv/Sound_Request"
const Ros2Turtlebot3_msgsSrvSound_RequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsSrvSound_Request*(): Ros2Turtlebot3_msgsSrvSound_Request =
  result.`value` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsSrvSound_Request; w: var Writer) =
  putInteger(w,value.`value`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsSrvSound_Request*(r: var Reader): Ros2Turtlebot3_msgsSrvSound_Request =
  result = initRos2Turtlebot3_msgsSrvSound_Request()
  result.`value` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsSrvSound_Request): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsSrvSound_Request*(b: seq[byte]): Ros2Turtlebot3_msgsSrvSound_Request =
  var r = initReader(b,1)
  result = readRos2Turtlebot3_msgsSrvSound_Request(r)
  finish(r)
## @brief Own every original field of ROS2 turtlebot3_msgs/srv/Sound_Response.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Turtlebot3_msgsSrvSound_Response* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros2Turtlebot3_msgsSrvSound_ResponseMaximumWireBytes* = 261
const Ros2Turtlebot3_msgsSrvSound_ResponseCodecIdentity* = "UWVMROS1_bc5a5fd3e2bf733a278b8a1315c8905b27fff49b4844df238d5574149068998e"
const Ros2Turtlebot3_msgsSrvSound_ResponseNativeType* = "turtlebot3_msgs/srv/Sound_Response"
const Ros2Turtlebot3_msgsSrvSound_ResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Turtlebot3_msgsSrvSound_Response*(): Ros2Turtlebot3_msgsSrvSound_Response =
  result.`success` = false
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Turtlebot3_msgsSrvSound_Response; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Turtlebot3_msgsSrvSound_Response*(r: var Reader): Ros2Turtlebot3_msgsSrvSound_Response =
  result = initRos2Turtlebot3_msgsSrvSound_Response()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Turtlebot3_msgsSrvSound_Response): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Turtlebot3_msgsSrvSound_Response*(b: seq[byte]): Ros2Turtlebot3_msgsSrvSound_Response =
  var r = initReader(b,261)
  result = readRos2Turtlebot3_msgsSrvSound_Response(r)
  finish(r)
