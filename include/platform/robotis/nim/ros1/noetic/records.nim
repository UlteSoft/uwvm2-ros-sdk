## UWVM_COMPLETE_FIELD_CONTRACTS
## @details Field domains below come from the unchanged canonical source catalog.
## @file records.nim
## @brief Provide the complete robotis noetic canonical value surface.
## @details The original 28 record catalog retains field order, constants, defaults and quotas.
## Borrowed values and buffers must remain stable while a conversion is in progress.
## Malformed, truncated and trailing wire values are refused through the shared wire error contract.
## No declaration grants a capability or establishes a native ROS registry identity.
## Original declarations and units are retained in share/platform/robotis/catalogs.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
## @brief Own every original field of ROS1 geometry_msgs/Point.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsPoint* = object
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
const Ros1Geometry_msgsPointMaximumWireBytes* = 24
const Ros1Geometry_msgsPointCodecIdentity* = "UWVMROS1_b55e2bde60f6cedb426cada54bc7baefc536c7bc731bd49fb152d89a892de62b"
const Ros1Geometry_msgsPointNativeType* = "geometry_msgs/Point"
const Ros1Geometry_msgsPointNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsPoint*(): Ros1Geometry_msgsPoint =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsPoint; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsPoint*(r: var Reader): Ros1Geometry_msgsPoint =
  result = initRos1Geometry_msgsPoint()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsPoint): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsPoint*(b: seq[byte]): Ros1Geometry_msgsPoint =
  var r = initReader(b,24)
  result = readRos1Geometry_msgsPoint(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/Quaternion.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsQuaternion* = object
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
  ## @brief Preserve original w as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `w`*: float64
const Ros1Geometry_msgsQuaternionMaximumWireBytes* = 32
const Ros1Geometry_msgsQuaternionCodecIdentity* = "UWVMROS1_48fe20d5d29a8ca1a630605a58f80baacc52d9a65b1ca87efd50ffdd52882934"
const Ros1Geometry_msgsQuaternionNativeType* = "geometry_msgs/Quaternion"
const Ros1Geometry_msgsQuaternionNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsQuaternion*(): Ros1Geometry_msgsQuaternion =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
  result.`w` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsQuaternion; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
  putFloat64(w,value.`w`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsQuaternion*(r: var Reader): Ros1Geometry_msgsQuaternion =
  result = initRos1Geometry_msgsQuaternion()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
  result.`w` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsQuaternion): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsQuaternion*(b: seq[byte]): Ros1Geometry_msgsQuaternion =
  var r = initReader(b,32)
  result = readRos1Geometry_msgsQuaternion(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/Pose.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsPose* = object
  ## @brief Preserve original position as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `position`*: Ros1Geometry_msgsPoint
  ## @brief Preserve original orientation as geometry_msgs/Quaternion.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `orientation`*: Ros1Geometry_msgsQuaternion
const Ros1Geometry_msgsPoseMaximumWireBytes* = 56
const Ros1Geometry_msgsPoseCodecIdentity* = "UWVMROS1_e49ed287cd0de31a16c8cd49ad8f41f81d44e23306b8dcb61da6e0e789595471"
const Ros1Geometry_msgsPoseNativeType* = "geometry_msgs/Pose"
const Ros1Geometry_msgsPoseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsPose*(): Ros1Geometry_msgsPose =
  result.`position` = initRos1Geometry_msgsPoint()
  result.`orientation` = initRos1Geometry_msgsQuaternion()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsPose; w: var Writer) =
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsPose*(r: var Reader): Ros1Geometry_msgsPose =
  result = initRos1Geometry_msgsPose()
  result.`position` = readRos1Geometry_msgsPoint(r)
  result.`orientation` = readRos1Geometry_msgsQuaternion(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsPose): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsPose*(b: seq[byte]): Ros1Geometry_msgsPose =
  var r = initReader(b,56)
  result = readRos1Geometry_msgsPose(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/PoseWithCovariance.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsPoseWithCovariance* = object
  ## @brief Preserve original pose as geometry_msgs/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: Ros1Geometry_msgsPose
  ## @brief Preserve original covariance as float64.
  ## @details Exactly 36 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `covariance`*: array[36,float64]
const Ros1Geometry_msgsPoseWithCovarianceMaximumWireBytes* = 344
const Ros1Geometry_msgsPoseWithCovarianceCodecIdentity* = "UWVMROS1_17b25963aafb3adfd0432febe040c9b38a531a7a667949b89e0f3937585ef8cf"
const Ros1Geometry_msgsPoseWithCovarianceNativeType* = "geometry_msgs/PoseWithCovariance"
const Ros1Geometry_msgsPoseWithCovarianceNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsPoseWithCovariance*(): Ros1Geometry_msgsPoseWithCovariance =
  result.`pose` = initRos1Geometry_msgsPose()
  result.`covariance` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsPoseWithCovariance; w: var Writer) =
  writeFields(value.`pose`,w)
  for e in value.`covariance`:
    putFloat64(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsPoseWithCovariance*(r: var Reader): Ros1Geometry_msgsPoseWithCovariance =
  result = initRos1Geometry_msgsPoseWithCovariance()
  result.`pose` = readRos1Geometry_msgsPose(r)
  let count1 = 36
  for i in 0..<count1:
    result.`covariance`[i] = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsPoseWithCovariance): seq[byte] =
  var w = initWriter(344)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsPoseWithCovariance*(b: seq[byte]): Ros1Geometry_msgsPoseWithCovariance =
  var r = initReader(b,344)
  result = readRos1Geometry_msgsPoseWithCovariance(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/Vector3.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsVector3* = object
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
const Ros1Geometry_msgsVector3MaximumWireBytes* = 24
const Ros1Geometry_msgsVector3CodecIdentity* = "UWVMROS1_e90efcf4803d82763e0b83f8ef5502b5d042158873fcc91be32543d25d7632bc"
const Ros1Geometry_msgsVector3NativeType* = "geometry_msgs/Vector3"
const Ros1Geometry_msgsVector3NativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsVector3*(): Ros1Geometry_msgsVector3 =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsVector3; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsVector3*(r: var Reader): Ros1Geometry_msgsVector3 =
  result = initRos1Geometry_msgsVector3()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsVector3): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsVector3*(b: seq[byte]): Ros1Geometry_msgsVector3 =
  var r = initReader(b,24)
  result = readRos1Geometry_msgsVector3(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/Transform.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsTransform* = object
  ## @brief Preserve original translation as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `translation`*: Ros1Geometry_msgsVector3
  ## @brief Preserve original rotation as geometry_msgs/Quaternion.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `rotation`*: Ros1Geometry_msgsQuaternion
const Ros1Geometry_msgsTransformMaximumWireBytes* = 56
const Ros1Geometry_msgsTransformCodecIdentity* = "UWVMROS1_61aabab03e8f766ea05949c9e5f4989186d72a26f793b8d11752e53f1f300085"
const Ros1Geometry_msgsTransformNativeType* = "geometry_msgs/Transform"
const Ros1Geometry_msgsTransformNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsTransform*(): Ros1Geometry_msgsTransform =
  result.`translation` = initRos1Geometry_msgsVector3()
  result.`rotation` = initRos1Geometry_msgsQuaternion()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsTransform; w: var Writer) =
  writeFields(value.`translation`,w)
  writeFields(value.`rotation`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsTransform*(r: var Reader): Ros1Geometry_msgsTransform =
  result = initRos1Geometry_msgsTransform()
  result.`translation` = readRos1Geometry_msgsVector3(r)
  result.`rotation` = readRos1Geometry_msgsQuaternion(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsTransform): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsTransform*(b: seq[byte]): Ros1Geometry_msgsTransform =
  var r = initReader(b,56)
  result = readRos1Geometry_msgsTransform(r)
  finish(r)
## @brief Own every original field of ROS1 time.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Time* = object
  ## @brief Preserve original sec as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `sec`*: uint32
  ## @brief Preserve original nsec as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `nsec`*: uint32
const Ros1TimeMaximumWireBytes* = 8
const Ros1TimeCodecIdentity* = "UWVMROS1_90b75571d2bcc21b824eb993b485a001bf97e281adda7907e1b2e3357e4804b0"
const Ros1TimeNativeType* = "time"
const Ros1TimeNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Time*(): Ros1Time =
  result.`sec` = 0
  result.`nsec` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Time; w: var Writer) =
  if value.`nsec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nsec`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Time*(r: var Reader): Ros1Time =
  result = initRos1Time()
  result.`sec` = getInteger(r,uint32)
  result.`nsec` = getInteger(r,uint32)
  if result.`nsec` >= 1000000000: fail(22)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Time): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Time*(b: seq[byte]): Ros1Time =
  var r = initReader(b,8)
  result = readRos1Time(r)
  finish(r)
## @brief Own every original field of ROS1 std_msgs/Header.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_msgsHeader* = object
  ## @brief Preserve original seq as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `seq`*: uint32
  ## @brief Preserve original stamp as time.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `stamp`*: Ros1Time
  ## @brief Preserve original frame_id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `frame_id`*: string
const Ros1Std_msgsHeaderMaximumWireBytes* = 144
const Ros1Std_msgsHeaderCodecIdentity* = "UWVMROS1_ee2b4e736d36ebcdb562d3ef7832777233d39d366837e9148a76aa2c36756435"
const Ros1Std_msgsHeaderNativeType* = "std_msgs/Header"
const Ros1Std_msgsHeaderNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_msgsHeader*(): Ros1Std_msgsHeader =
  result.`seq` = 0
  result.`stamp` = initRos1Time()
  result.`frame_id` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_msgsHeader; w: var Writer) =
  putInteger(w,value.`seq`)
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_msgsHeader*(r: var Reader): Ros1Std_msgsHeader =
  result = initRos1Std_msgsHeader()
  result.`seq` = getInteger(r,uint32)
  result.`stamp` = readRos1Time(r)
  result.`frame_id` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_msgsHeader): seq[byte] =
  var w = initWriter(144)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_msgsHeader*(b: seq[byte]): Ros1Std_msgsHeader =
  var r = initReader(b,144)
  result = readRos1Std_msgsHeader(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/TransformStamped.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsTransformStamped* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original child_frame_id as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `child_frame_id`*: string
  ## @brief Preserve original transform as geometry_msgs/Transform.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `transform`*: Ros1Geometry_msgsTransform
const Ros1Geometry_msgsTransformStampedMaximumWireBytes* = 460
const Ros1Geometry_msgsTransformStampedCodecIdentity* = "UWVMROS1_9237b5dc5d3beacf4310244ce746a4210b9864855b611d1bf54cf23c28d7b79a"
const Ros1Geometry_msgsTransformStampedNativeType* = "geometry_msgs/TransformStamped"
const Ros1Geometry_msgsTransformStampedNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsTransformStamped*(): Ros1Geometry_msgsTransformStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`child_frame_id` = ""
  result.`transform` = initRos1Geometry_msgsTransform()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsTransformStamped; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`child_frame_id`,256)
  writeFields(value.`transform`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsTransformStamped*(r: var Reader): Ros1Geometry_msgsTransformStamped =
  result = initRos1Geometry_msgsTransformStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`child_frame_id` = getString(r,256)
  result.`transform` = readRos1Geometry_msgsTransform(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsTransformStamped): seq[byte] =
  var w = initWriter(460)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsTransformStamped*(b: seq[byte]): Ros1Geometry_msgsTransformStamped =
  var r = initReader(b,460)
  result = readRos1Geometry_msgsTransformStamped(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/Twist.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsTwist* = object
  ## @brief Preserve original linear as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `linear`*: Ros1Geometry_msgsVector3
  ## @brief Preserve original angular as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `angular`*: Ros1Geometry_msgsVector3
const Ros1Geometry_msgsTwistMaximumWireBytes* = 48
const Ros1Geometry_msgsTwistCodecIdentity* = "UWVMROS1_d5a69cfff4380fcf3e9c131ddb3dfb6def041cd7308a7ebdbc150b6483dfd921"
const Ros1Geometry_msgsTwistNativeType* = "geometry_msgs/Twist"
const Ros1Geometry_msgsTwistNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsTwist*(): Ros1Geometry_msgsTwist =
  result.`linear` = initRos1Geometry_msgsVector3()
  result.`angular` = initRos1Geometry_msgsVector3()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsTwist; w: var Writer) =
  writeFields(value.`linear`,w)
  writeFields(value.`angular`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsTwist*(r: var Reader): Ros1Geometry_msgsTwist =
  result = initRos1Geometry_msgsTwist()
  result.`linear` = readRos1Geometry_msgsVector3(r)
  result.`angular` = readRos1Geometry_msgsVector3(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsTwist): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsTwist*(b: seq[byte]): Ros1Geometry_msgsTwist =
  var r = initReader(b,48)
  result = readRos1Geometry_msgsTwist(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/TwistStamped.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsTwistStamped* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original twist as geometry_msgs/Twist.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `twist`*: Ros1Geometry_msgsTwist
const Ros1Geometry_msgsTwistStampedMaximumWireBytes* = 192
const Ros1Geometry_msgsTwistStampedCodecIdentity* = "UWVMROS1_27a31bcca6a50fbc6c6259b53d229872336a75628d6afd9de174eee2481946c7"
const Ros1Geometry_msgsTwistStampedNativeType* = "geometry_msgs/TwistStamped"
const Ros1Geometry_msgsTwistStampedNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsTwistStamped*(): Ros1Geometry_msgsTwistStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`twist` = initRos1Geometry_msgsTwist()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsTwistStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`twist`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsTwistStamped*(r: var Reader): Ros1Geometry_msgsTwistStamped =
  result = initRos1Geometry_msgsTwistStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`twist` = readRos1Geometry_msgsTwist(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsTwistStamped): seq[byte] =
  var w = initWriter(192)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsTwistStamped*(b: seq[byte]): Ros1Geometry_msgsTwistStamped =
  var r = initReader(b,192)
  result = readRos1Geometry_msgsTwistStamped(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/TwistWithCovariance.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsTwistWithCovariance* = object
  ## @brief Preserve original twist as geometry_msgs/Twist.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `twist`*: Ros1Geometry_msgsTwist
  ## @brief Preserve original covariance as float64.
  ## @details Exactly 36 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `covariance`*: array[36,float64]
const Ros1Geometry_msgsTwistWithCovarianceMaximumWireBytes* = 336
const Ros1Geometry_msgsTwistWithCovarianceCodecIdentity* = "UWVMROS1_ff6790d181503b424d84726c8f4a7852cef14c6dd93e6d32cf3c37023f74bcdf"
const Ros1Geometry_msgsTwistWithCovarianceNativeType* = "geometry_msgs/TwistWithCovariance"
const Ros1Geometry_msgsTwistWithCovarianceNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsTwistWithCovariance*(): Ros1Geometry_msgsTwistWithCovariance =
  result.`twist` = initRos1Geometry_msgsTwist()
  result.`covariance` = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsTwistWithCovariance; w: var Writer) =
  writeFields(value.`twist`,w)
  for e in value.`covariance`:
    putFloat64(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsTwistWithCovariance*(r: var Reader): Ros1Geometry_msgsTwistWithCovariance =
  result = initRos1Geometry_msgsTwistWithCovariance()
  result.`twist` = readRos1Geometry_msgsTwist(r)
  let count1 = 36
  for i in 0..<count1:
    result.`covariance`[i] = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsTwistWithCovariance): seq[byte] =
  var w = initWriter(336)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsTwistWithCovariance*(b: seq[byte]): Ros1Geometry_msgsTwistWithCovariance =
  var r = initReader(b,336)
  result = readRos1Geometry_msgsTwistWithCovariance(r)
  finish(r)
## @brief Own every original field of ROS1 nav_msgs/Odometry.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Nav_msgsOdometry* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original child_frame_id as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `child_frame_id`*: string
  ## @brief Preserve original pose as geometry_msgs/PoseWithCovariance.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: Ros1Geometry_msgsPoseWithCovariance
  ## @brief Preserve original twist as geometry_msgs/TwistWithCovariance.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `twist`*: Ros1Geometry_msgsTwistWithCovariance
const Ros1Nav_msgsOdometryMaximumWireBytes* = 1084
const Ros1Nav_msgsOdometryCodecIdentity* = "UWVMROS1_e0ff5eb7aef868891846ac7618249b12c18fcf0969653f24fdeaa7644e636ca0"
const Ros1Nav_msgsOdometryNativeType* = "nav_msgs/Odometry"
const Ros1Nav_msgsOdometryNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Nav_msgsOdometry*(): Ros1Nav_msgsOdometry =
  result.`header` = initRos1Std_msgsHeader()
  result.`child_frame_id` = ""
  result.`pose` = initRos1Geometry_msgsPoseWithCovariance()
  result.`twist` = initRos1Geometry_msgsTwistWithCovariance()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Nav_msgsOdometry; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`child_frame_id`,256)
  writeFields(value.`pose`,w)
  writeFields(value.`twist`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Nav_msgsOdometry*(r: var Reader): Ros1Nav_msgsOdometry =
  result = initRos1Nav_msgsOdometry()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`child_frame_id` = getString(r,256)
  result.`pose` = readRos1Geometry_msgsPoseWithCovariance(r)
  result.`twist` = readRos1Geometry_msgsTwistWithCovariance(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Nav_msgsOdometry): seq[byte] =
  var w = initWriter(1084)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Nav_msgsOdometry*(b: seq[byte]): Ros1Nav_msgsOdometry =
  var r = initReader(b,1084)
  result = readRos1Nav_msgsOdometry(r)
  finish(r)
## @brief Own every original field of ROS1 sensor_msgs/BatteryState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Sensor_msgsBatteryState* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
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
const Ros1Sensor_msgsBatteryStateMaximumWireBytes* = 832
const Ros1Sensor_msgsBatteryStateCodecIdentity* = "UWVMROS1_4b176902362348cd3b7eec6ae21e2035d33df6990b4682ddf5123ef6e0339441"
const Ros1Sensor_msgsBatteryStateNativeType* = "sensor_msgs/BatteryState"
const Ros1Sensor_msgsBatteryStateNativeIdentity* = ""
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_UNKNOWN*: uint8 = 0'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_CHARGING*: uint8 = 1'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_DISCHARGING*: uint8 = 2'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_NOT_CHARGING*: uint8 = 3'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_STATUS_FULL*: uint8 = 4'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_UNKNOWN*: uint8 = 0'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_GOOD*: uint8 = 1'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_OVERHEAT*: uint8 = 2'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_DEAD*: uint8 = 3'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_OVERVOLTAGE*: uint8 = 4'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_UNSPEC_FAILURE*: uint8 = 5'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_COLD*: uint8 = 6'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_WATCHDOG_TIMER_EXPIRE*: uint8 = 7'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_HEALTH_SAFETY_TIMER_EXPIRE*: uint8 = 8'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_UNKNOWN*: uint8 = 0'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_NIMH*: uint8 = 1'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LION*: uint8 = 2'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIPO*: uint8 = 3'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIFE*: uint8 = 4'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_NICD*: uint8 = 5'u8
const Ros1Sensor_msgsBatteryState_POWER_SUPPLY_TECHNOLOGY_LIMN*: uint8 = 6'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Sensor_msgsBatteryState*(): Ros1Sensor_msgsBatteryState =
  result.`header` = initRos1Std_msgsHeader()
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
proc writeFields*(value: Ros1Sensor_msgsBatteryState; w: var Writer) =
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
proc readRos1Sensor_msgsBatteryState*(r: var Reader): Ros1Sensor_msgsBatteryState =
  result = initRos1Sensor_msgsBatteryState()
  result.`header` = readRos1Std_msgsHeader(r)
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
proc encode*(value: Ros1Sensor_msgsBatteryState): seq[byte] =
  var w = initWriter(832)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Sensor_msgsBatteryState*(b: seq[byte]): Ros1Sensor_msgsBatteryState =
  var r = initReader(b,832)
  result = readRos1Sensor_msgsBatteryState(r)
  finish(r)
## @brief Own every original field of ROS1 sensor_msgs/Imu.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Sensor_msgsImu* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original orientation as geometry_msgs/Quaternion.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `orientation`*: Ros1Geometry_msgsQuaternion
  ## @brief Preserve original orientation_covariance as float64.
  ## @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `orientation_covariance`*: array[9,float64]
  ## @brief Preserve original angular_velocity as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `angular_velocity`*: Ros1Geometry_msgsVector3
  ## @brief Preserve original angular_velocity_covariance as float64.
  ## @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `angular_velocity_covariance`*: array[9,float64]
  ## @brief Preserve original linear_acceleration as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `linear_acceleration`*: Ros1Geometry_msgsVector3
  ## @brief Preserve original linear_acceleration_covariance as float64.
  ## @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `linear_acceleration_covariance`*: array[9,float64]
const Ros1Sensor_msgsImuMaximumWireBytes* = 440
const Ros1Sensor_msgsImuCodecIdentity* = "UWVMROS1_de9c3f5bb37e1dc20be73cb44f614a9ff8645c4cfbc305dc18425d8d9f130bc3"
const Ros1Sensor_msgsImuNativeType* = "sensor_msgs/Imu"
const Ros1Sensor_msgsImuNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Sensor_msgsImu*(): Ros1Sensor_msgsImu =
  result.`header` = initRos1Std_msgsHeader()
  result.`orientation` = initRos1Geometry_msgsQuaternion()
  result.`orientation_covariance` = [0,0,0,0,0,0,0,0,0]
  result.`angular_velocity` = initRos1Geometry_msgsVector3()
  result.`angular_velocity_covariance` = [0,0,0,0,0,0,0,0,0]
  result.`linear_acceleration` = initRos1Geometry_msgsVector3()
  result.`linear_acceleration_covariance` = [0,0,0,0,0,0,0,0,0]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Sensor_msgsImu; w: var Writer) =
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
proc readRos1Sensor_msgsImu*(r: var Reader): Ros1Sensor_msgsImu =
  result = initRos1Sensor_msgsImu()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`orientation` = readRos1Geometry_msgsQuaternion(r)
  let count2 = 9
  for i in 0..<count2:
    result.`orientation_covariance`[i] = getFloat64(r)
  result.`angular_velocity` = readRos1Geometry_msgsVector3(r)
  let count4 = 9
  for i in 0..<count4:
    result.`angular_velocity_covariance`[i] = getFloat64(r)
  result.`linear_acceleration` = readRos1Geometry_msgsVector3(r)
  let count6 = 9
  for i in 0..<count6:
    result.`linear_acceleration_covariance`[i] = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Sensor_msgsImu): seq[byte] =
  var w = initWriter(440)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Sensor_msgsImu*(b: seq[byte]): Ros1Sensor_msgsImu =
  var r = initReader(b,440)
  result = readRos1Sensor_msgsImu(r)
  finish(r)
## @brief Own every original field of ROS1 sensor_msgs/JointState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Sensor_msgsJointState* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
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
const Ros1Sensor_msgsJointStateMaximumWireBytes* = 472
const Ros1Sensor_msgsJointStateCodecIdentity* = "UWVMROS1_f27093d33cca1405ec35a9e525a95aa4002421a579cb78c6da3be3719f3cb66e"
const Ros1Sensor_msgsJointStateNativeType* = "sensor_msgs/JointState"
const Ros1Sensor_msgsJointStateNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Sensor_msgsJointState*(): Ros1Sensor_msgsJointState =
  result.`header` = initRos1Std_msgsHeader()
  result.`name` = @[]
  result.`position` = @[]
  result.`velocity` = @[]
  result.`effort` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Sensor_msgsJointState; w: var Writer) =
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
proc readRos1Sensor_msgsJointState*(r: var Reader): Ros1Sensor_msgsJointState =
  result = initRos1Sensor_msgsJointState()
  result.`header` = readRos1Std_msgsHeader(r)
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
proc encode*(value: Ros1Sensor_msgsJointState): seq[byte] =
  var w = initWriter(472)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Sensor_msgsJointState*(b: seq[byte]): Ros1Sensor_msgsJointState =
  var r = initReader(b,472)
  result = readRos1Sensor_msgsJointState(r)
  finish(r)
## @brief Own every original field of ROS1 sensor_msgs/LaserScan.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Sensor_msgsLaserScan* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
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
const Ros1Sensor_msgsLaserScanMaximumWireBytes* = 8372
const Ros1Sensor_msgsLaserScanCodecIdentity* = "UWVMROS1_f7aee00335bf7d165004957149192f58abe5a27b5c4884bdf8d1ae9be06b366b"
const Ros1Sensor_msgsLaserScanNativeType* = "sensor_msgs/LaserScan"
const Ros1Sensor_msgsLaserScanNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Sensor_msgsLaserScan*(): Ros1Sensor_msgsLaserScan =
  result.`header` = initRos1Std_msgsHeader()
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
proc writeFields*(value: Ros1Sensor_msgsLaserScan; w: var Writer) =
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
proc readRos1Sensor_msgsLaserScan*(r: var Reader): Ros1Sensor_msgsLaserScan =
  result = initRos1Sensor_msgsLaserScan()
  result.`header` = readRos1Std_msgsHeader(r)
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
proc encode*(value: Ros1Sensor_msgsLaserScan): seq[byte] =
  var w = initWriter(8372)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Sensor_msgsLaserScan*(b: seq[byte]): Ros1Sensor_msgsLaserScan =
  var r = initReader(b,8372)
  result = readRos1Sensor_msgsLaserScan(r)
  finish(r)
## @brief Own every original field of ROS1 sensor_msgs/MagneticField.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Sensor_msgsMagneticField* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original magnetic_field as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `magnetic_field`*: Ros1Geometry_msgsVector3
  ## @brief Preserve original magnetic_field_covariance as float64.
  ## @details Exactly 9 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `magnetic_field_covariance`*: array[9,float64]
const Ros1Sensor_msgsMagneticFieldMaximumWireBytes* = 240
const Ros1Sensor_msgsMagneticFieldCodecIdentity* = "UWVMROS1_1817b7ce8903797288ccf293373f81890c75af59d03d948339943a531ab754fe"
const Ros1Sensor_msgsMagneticFieldNativeType* = "sensor_msgs/MagneticField"
const Ros1Sensor_msgsMagneticFieldNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Sensor_msgsMagneticField*(): Ros1Sensor_msgsMagneticField =
  result.`header` = initRos1Std_msgsHeader()
  result.`magnetic_field` = initRos1Geometry_msgsVector3()
  result.`magnetic_field_covariance` = [0,0,0,0,0,0,0,0,0]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Sensor_msgsMagneticField; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`magnetic_field`,w)
  for e in value.`magnetic_field_covariance`:
    putFloat64(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Sensor_msgsMagneticField*(r: var Reader): Ros1Sensor_msgsMagneticField =
  result = initRos1Sensor_msgsMagneticField()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`magnetic_field` = readRos1Geometry_msgsVector3(r)
  let count2 = 9
  for i in 0..<count2:
    result.`magnetic_field_covariance`[i] = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Sensor_msgsMagneticField): seq[byte] =
  var w = initWriter(240)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Sensor_msgsMagneticField*(b: seq[byte]): Ros1Sensor_msgsMagneticField =
  var r = initReader(b,240)
  result = readRos1Sensor_msgsMagneticField(r)
  finish(r)
## @brief Own every original field of ROS1 std_srvs/SetBoolRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_srvsSetBoolRequest* = object
  ## @brief Preserve original data as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `data`*: bool
const Ros1Std_srvsSetBoolRequestMaximumWireBytes* = 1
const Ros1Std_srvsSetBoolRequestCodecIdentity* = "UWVMROS1_1621dbb16e2455a199cc871a0e784642a73bc57e76a4d524778163fab97f6aac"
const Ros1Std_srvsSetBoolRequestNativeType* = "std_srvs/SetBoolRequest"
const Ros1Std_srvsSetBoolRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_srvsSetBoolRequest*(): Ros1Std_srvsSetBoolRequest =
  result.`data` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_srvsSetBoolRequest; w: var Writer) =
  putBool(w,value.`data`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_srvsSetBoolRequest*(r: var Reader): Ros1Std_srvsSetBoolRequest =
  result = initRos1Std_srvsSetBoolRequest()
  result.`data` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_srvsSetBoolRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_srvsSetBoolRequest*(b: seq[byte]): Ros1Std_srvsSetBoolRequest =
  var r = initReader(b,1)
  result = readRos1Std_srvsSetBoolRequest(r)
  finish(r)
## @brief Own every original field of ROS1 std_srvs/SetBoolResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_srvsSetBoolResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Std_srvsSetBoolResponseMaximumWireBytes* = 261
const Ros1Std_srvsSetBoolResponseCodecIdentity* = "UWVMROS1_1e12b91618f540070e34e170e12db7659f8686cdf5fb8e1bf098b8d483522cd6"
const Ros1Std_srvsSetBoolResponseNativeType* = "std_srvs/SetBoolResponse"
const Ros1Std_srvsSetBoolResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_srvsSetBoolResponse*(): Ros1Std_srvsSetBoolResponse =
  result.`success` = false
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_srvsSetBoolResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_srvsSetBoolResponse*(r: var Reader): Ros1Std_srvsSetBoolResponse =
  result = initRos1Std_srvsSetBoolResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_srvsSetBoolResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_srvsSetBoolResponse*(b: seq[byte]): Ros1Std_srvsSetBoolResponse =
  var r = initReader(b,261)
  result = readRos1Std_srvsSetBoolResponse(r)
  finish(r)
## @brief Own every original field of ROS1 std_srvs/TriggerRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_srvsTriggerRequest* = object
const Ros1Std_srvsTriggerRequestMaximumWireBytes* = 0
const Ros1Std_srvsTriggerRequestCodecIdentity* = "UWVMROS1_d4e98dca9dc9a031d6b0f51937613f4f29c36156f0f05475339149794d47db1e"
const Ros1Std_srvsTriggerRequestNativeType* = "std_srvs/TriggerRequest"
const Ros1Std_srvsTriggerRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_srvsTriggerRequest*(): Ros1Std_srvsTriggerRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_srvsTriggerRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_srvsTriggerRequest*(r: var Reader): Ros1Std_srvsTriggerRequest =
  result = initRos1Std_srvsTriggerRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_srvsTriggerRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_srvsTriggerRequest*(b: seq[byte]): Ros1Std_srvsTriggerRequest =
  var r = initReader(b,0)
  result = readRos1Std_srvsTriggerRequest(r)
  finish(r)
## @brief Own every original field of ROS1 std_srvs/TriggerResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_srvsTriggerResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Std_srvsTriggerResponseMaximumWireBytes* = 261
const Ros1Std_srvsTriggerResponseCodecIdentity* = "UWVMROS1_e625281ddea64aff38d8647e2673b418b77474cae0501500b280cabb3d247d1d"
const Ros1Std_srvsTriggerResponseNativeType* = "std_srvs/TriggerResponse"
const Ros1Std_srvsTriggerResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_srvsTriggerResponse*(): Ros1Std_srvsTriggerResponse =
  result.`success` = false
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_srvsTriggerResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_srvsTriggerResponse*(r: var Reader): Ros1Std_srvsTriggerResponse =
  result = initRos1Std_srvsTriggerResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_srvsTriggerResponse): seq[byte] =
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_srvsTriggerResponse*(b: seq[byte]): Ros1Std_srvsTriggerResponse =
  var r = initReader(b,261)
  result = readRos1Std_srvsTriggerResponse(r)
  finish(r)
## @brief Own every original field of ROS1 turtlebot3_example/Turtlebot3Goal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Turtlebot3_exampleTurtlebot3Goal* = object
  ## @brief Preserve original goal as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `goal`*: Ros1Geometry_msgsVector3
const Ros1Turtlebot3_exampleTurtlebot3GoalMaximumWireBytes* = 24
const Ros1Turtlebot3_exampleTurtlebot3GoalCodecIdentity* = "UWVMROS1_f6eb642301e239005c1790cfd5b9ff00388d98d27a17cbb0edb103b6ac7bfad5"
const Ros1Turtlebot3_exampleTurtlebot3GoalNativeType* = "turtlebot3_example/Turtlebot3Goal"
const Ros1Turtlebot3_exampleTurtlebot3GoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Turtlebot3_exampleTurtlebot3Goal*(): Ros1Turtlebot3_exampleTurtlebot3Goal =
  result.`goal` = initRos1Geometry_msgsVector3()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Turtlebot3_exampleTurtlebot3Goal; w: var Writer) =
  writeFields(value.`goal`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Turtlebot3_exampleTurtlebot3Goal*(r: var Reader): Ros1Turtlebot3_exampleTurtlebot3Goal =
  result = initRos1Turtlebot3_exampleTurtlebot3Goal()
  result.`goal` = readRos1Geometry_msgsVector3(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Turtlebot3_exampleTurtlebot3Goal): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Turtlebot3_exampleTurtlebot3Goal*(b: seq[byte]): Ros1Turtlebot3_exampleTurtlebot3Goal =
  var r = initReader(b,24)
  result = readRos1Turtlebot3_exampleTurtlebot3Goal(r)
  finish(r)
## @brief Own every original field of ROS1 turtlebot3_example/Turtlebot3Result.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Turtlebot3_exampleTurtlebot3Result* = object
  ## @brief Preserve original result as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `result`*: string
const Ros1Turtlebot3_exampleTurtlebot3ResultMaximumWireBytes* = 260
const Ros1Turtlebot3_exampleTurtlebot3ResultCodecIdentity* = "UWVMROS1_c749a56ed9a0c74d1b167f69cc9b4435f9549d49144ef2951a4c3db501bad528"
const Ros1Turtlebot3_exampleTurtlebot3ResultNativeType* = "turtlebot3_example/Turtlebot3Result"
const Ros1Turtlebot3_exampleTurtlebot3ResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Turtlebot3_exampleTurtlebot3Result*(): Ros1Turtlebot3_exampleTurtlebot3Result =
  result.`result` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Turtlebot3_exampleTurtlebot3Result; w: var Writer) =
  putString(w,value.`result`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Turtlebot3_exampleTurtlebot3Result*(r: var Reader): Ros1Turtlebot3_exampleTurtlebot3Result =
  result = initRos1Turtlebot3_exampleTurtlebot3Result()
  result.`result` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Turtlebot3_exampleTurtlebot3Result): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Turtlebot3_exampleTurtlebot3Result*(b: seq[byte]): Ros1Turtlebot3_exampleTurtlebot3Result =
  var r = initReader(b,260)
  result = readRos1Turtlebot3_exampleTurtlebot3Result(r)
  finish(r)
## @brief Own every original field of ROS1 turtlebot3_example/Turtlebot3Feedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Turtlebot3_exampleTurtlebot3Feedback* = object
  ## @brief Preserve original state as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `state`*: string
const Ros1Turtlebot3_exampleTurtlebot3FeedbackMaximumWireBytes* = 260
const Ros1Turtlebot3_exampleTurtlebot3FeedbackCodecIdentity* = "UWVMROS1_077b5593a1e4c23c89c4d6a87dc1d67d8fa1bf04fa3aa440f54c8eda60b688f8"
const Ros1Turtlebot3_exampleTurtlebot3FeedbackNativeType* = "turtlebot3_example/Turtlebot3Feedback"
const Ros1Turtlebot3_exampleTurtlebot3FeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Turtlebot3_exampleTurtlebot3Feedback*(): Ros1Turtlebot3_exampleTurtlebot3Feedback =
  result.`state` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Turtlebot3_exampleTurtlebot3Feedback; w: var Writer) =
  putString(w,value.`state`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Turtlebot3_exampleTurtlebot3Feedback*(r: var Reader): Ros1Turtlebot3_exampleTurtlebot3Feedback =
  result = initRos1Turtlebot3_exampleTurtlebot3Feedback()
  result.`state` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Turtlebot3_exampleTurtlebot3Feedback): seq[byte] =
  var w = initWriter(260)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Turtlebot3_exampleTurtlebot3Feedback*(b: seq[byte]): Ros1Turtlebot3_exampleTurtlebot3Feedback =
  var r = initReader(b,260)
  result = readRos1Turtlebot3_exampleTurtlebot3Feedback(r)
  finish(r)
## @brief Own every original field of ROS1 turtlebot3_msgs/SensorState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Turtlebot3_msgsSensorState* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
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
const Ros1Turtlebot3_msgsSensorStateMaximumWireBytes* = 172
const Ros1Turtlebot3_msgsSensorStateCodecIdentity* = "UWVMROS1_0ef7dd1a4b965ae027b081a6b34f111731a3adfbabcc6fd547d4da7378fcb81f"
const Ros1Turtlebot3_msgsSensorStateNativeType* = "turtlebot3_msgs/SensorState"
const Ros1Turtlebot3_msgsSensorStateNativeIdentity* = ""
const Ros1Turtlebot3_msgsSensorState_BUMPER_FORWARD*: uint8 = 1'u8
const Ros1Turtlebot3_msgsSensorState_BUMPER_BACKWARD*: uint8 = 2'u8
const Ros1Turtlebot3_msgsSensorState_CLIFF*: uint8 = 1'u8
const Ros1Turtlebot3_msgsSensorState_SONAR*: uint8 = 1'u8
const Ros1Turtlebot3_msgsSensorState_ILLUMINATION*: uint8 = 1'u8
const Ros1Turtlebot3_msgsSensorState_BUTTON0*: uint8 = 1'u8
const Ros1Turtlebot3_msgsSensorState_BUTTON1*: uint8 = 2'u8
const Ros1Turtlebot3_msgsSensorState_ERROR_LEFT_MOTOR*: uint8 = 1'u8
const Ros1Turtlebot3_msgsSensorState_ERROR_RIGHT_MOTOR*: uint8 = 2'u8
const Ros1Turtlebot3_msgsSensorState_TORQUE_ON*: uint8 = 1'u8
const Ros1Turtlebot3_msgsSensorState_TORQUE_OFF*: uint8 = 2'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Turtlebot3_msgsSensorState*(): Ros1Turtlebot3_msgsSensorState =
  result.`header` = initRos1Std_msgsHeader()
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
proc writeFields*(value: Ros1Turtlebot3_msgsSensorState; w: var Writer) =
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
proc readRos1Turtlebot3_msgsSensorState*(r: var Reader): Ros1Turtlebot3_msgsSensorState =
  result = initRos1Turtlebot3_msgsSensorState()
  result.`header` = readRos1Std_msgsHeader(r)
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
proc encode*(value: Ros1Turtlebot3_msgsSensorState): seq[byte] =
  var w = initWriter(172)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Turtlebot3_msgsSensorState*(b: seq[byte]): Ros1Turtlebot3_msgsSensorState =
  var r = initReader(b,172)
  result = readRos1Turtlebot3_msgsSensorState(r)
  finish(r)
## @brief Own every original field of ROS1 turtlebot3_msgs/Sound.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Turtlebot3_msgsSound* = object
  ## @brief Preserve original value as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `value`*: uint8
const Ros1Turtlebot3_msgsSoundMaximumWireBytes* = 1
const Ros1Turtlebot3_msgsSoundCodecIdentity* = "UWVMROS1_0e5af3d5a2acbfff5bf5ba94c1520490fe281e70aff02cfb6ad31acd89e7536a"
const Ros1Turtlebot3_msgsSoundNativeType* = "turtlebot3_msgs/Sound"
const Ros1Turtlebot3_msgsSoundNativeIdentity* = ""
const Ros1Turtlebot3_msgsSound_OFF*: uint8 = 0'u8
const Ros1Turtlebot3_msgsSound_ON*: uint8 = 1'u8
const Ros1Turtlebot3_msgsSound_LOW_BATTERY*: uint8 = 2'u8
const Ros1Turtlebot3_msgsSound_ERROR*: uint8 = 3'u8
const Ros1Turtlebot3_msgsSound_BUTTON1*: uint8 = 4'u8
const Ros1Turtlebot3_msgsSound_BUTTON2*: uint8 = 5'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Turtlebot3_msgsSound*(): Ros1Turtlebot3_msgsSound =
  result.`value` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Turtlebot3_msgsSound; w: var Writer) =
  putInteger(w,value.`value`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Turtlebot3_msgsSound*(r: var Reader): Ros1Turtlebot3_msgsSound =
  result = initRos1Turtlebot3_msgsSound()
  result.`value` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Turtlebot3_msgsSound): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Turtlebot3_msgsSound*(b: seq[byte]): Ros1Turtlebot3_msgsSound =
  var r = initReader(b,1)
  result = readRos1Turtlebot3_msgsSound(r)
  finish(r)
## @brief Own every original field of ROS1 turtlebot3_msgs/VersionInfo.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Turtlebot3_msgsVersionInfo* = object
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
const Ros1Turtlebot3_msgsVersionInfoMaximumWireBytes* = 780
const Ros1Turtlebot3_msgsVersionInfoCodecIdentity* = "UWVMROS1_8f41d37cf43fda2e3649d85fcca83ad735dc5a8122f7829a98b18659bcad8b3a"
const Ros1Turtlebot3_msgsVersionInfoNativeType* = "turtlebot3_msgs/VersionInfo"
const Ros1Turtlebot3_msgsVersionInfoNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Turtlebot3_msgsVersionInfo*(): Ros1Turtlebot3_msgsVersionInfo =
  result.`hardware` = ""
  result.`firmware` = ""
  result.`software` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Turtlebot3_msgsVersionInfo; w: var Writer) =
  putString(w,value.`hardware`,256)
  putString(w,value.`firmware`,256)
  putString(w,value.`software`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Turtlebot3_msgsVersionInfo*(r: var Reader): Ros1Turtlebot3_msgsVersionInfo =
  result = initRos1Turtlebot3_msgsVersionInfo()
  result.`hardware` = getString(r,256)
  result.`firmware` = getString(r,256)
  result.`software` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Turtlebot3_msgsVersionInfo): seq[byte] =
  var w = initWriter(780)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Turtlebot3_msgsVersionInfo*(b: seq[byte]): Ros1Turtlebot3_msgsVersionInfo =
  var r = initReader(b,780)
  result = readRos1Turtlebot3_msgsVersionInfo(r)
  finish(r)
