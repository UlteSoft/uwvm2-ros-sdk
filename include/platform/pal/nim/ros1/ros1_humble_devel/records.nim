## UWVM_COMPLETE_FIELD_CONTRACTS
## @details Field domains below come from the unchanged canonical source catalog.
## @file records.nim
## @brief Provide the complete pal ros1_humble_devel canonical value surface.
## @details The original 275 record catalog retains field order, constants, defaults and quotas.
## Borrowed values and buffers must remain stable while a conversion is in progress.
## Malformed, truncated and trailing wire values are refused through the shared wire error contract.
## No declaration grants a capability or establishes a native ROS registry identity.
## Original declarations and units are retained in share/platform/pal/catalogs.
# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
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
## @brief Own every original field of ROS1 geometry_msgs/Accel.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsAccel* = object
  ## @brief Preserve original linear as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `linear`*: Ros1Geometry_msgsVector3
  ## @brief Preserve original angular as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `angular`*: Ros1Geometry_msgsVector3
const Ros1Geometry_msgsAccelMaximumWireBytes* = 48
const Ros1Geometry_msgsAccelCodecIdentity* = "UWVMROS1_3345762fc354a5698d41098276702c7d3cee87fe9a531b0229111b9b3bf700ed"
const Ros1Geometry_msgsAccelNativeType* = "geometry_msgs/Accel"
const Ros1Geometry_msgsAccelNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsAccel*(): Ros1Geometry_msgsAccel =
  result.`linear` = initRos1Geometry_msgsVector3()
  result.`angular` = initRos1Geometry_msgsVector3()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsAccel; w: var Writer) =
  writeFields(value.`linear`,w)
  writeFields(value.`angular`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsAccel*(r: var Reader): Ros1Geometry_msgsAccel =
  result = initRos1Geometry_msgsAccel()
  result.`linear` = readRos1Geometry_msgsVector3(r)
  result.`angular` = readRos1Geometry_msgsVector3(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsAccel): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsAccel*(b: seq[byte]): Ros1Geometry_msgsAccel =
  var r = initReader(b,48)
  result = readRos1Geometry_msgsAccel(r)
  finish(r)
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
## @brief Own every original field of ROS1 geometry_msgs/Point32.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsPoint32* = object
  ## @brief Preserve original x as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `x`*: float32
  ## @brief Preserve original y as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `y`*: float32
  ## @brief Preserve original z as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `z`*: float32
const Ros1Geometry_msgsPoint32MaximumWireBytes* = 12
const Ros1Geometry_msgsPoint32CodecIdentity* = "UWVMROS1_ac11d311f1db295f3e53b300246dbb111148097fe50787e812cd1bf627ecc59d"
const Ros1Geometry_msgsPoint32NativeType* = "geometry_msgs/Point32"
const Ros1Geometry_msgsPoint32NativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsPoint32*(): Ros1Geometry_msgsPoint32 =
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsPoint32; w: var Writer) =
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
  putFloat32(w,value.`z`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsPoint32*(r: var Reader): Ros1Geometry_msgsPoint32 =
  result = initRos1Geometry_msgsPoint32()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
  result.`z` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsPoint32): seq[byte] =
  var w = initWriter(12)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsPoint32*(b: seq[byte]): Ros1Geometry_msgsPoint32 =
  var r = initReader(b,12)
  result = readRos1Geometry_msgsPoint32(r)
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
## @brief Own every original field of ROS1 geometry_msgs/PointStamped.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsPointStamped* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original point as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `point`*: Ros1Geometry_msgsPoint
const Ros1Geometry_msgsPointStampedMaximumWireBytes* = 168
const Ros1Geometry_msgsPointStampedCodecIdentity* = "UWVMROS1_4292765fd525ff25fcdf66cba24b1680e01d7a3f036f66a1d5bc21f5db935e90"
const Ros1Geometry_msgsPointStampedNativeType* = "geometry_msgs/PointStamped"
const Ros1Geometry_msgsPointStampedNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsPointStamped*(): Ros1Geometry_msgsPointStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`point` = initRos1Geometry_msgsPoint()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsPointStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`point`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsPointStamped*(r: var Reader): Ros1Geometry_msgsPointStamped =
  result = initRos1Geometry_msgsPointStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`point` = readRos1Geometry_msgsPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsPointStamped): seq[byte] =
  var w = initWriter(168)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsPointStamped*(b: seq[byte]): Ros1Geometry_msgsPointStamped =
  var r = initReader(b,168)
  result = readRos1Geometry_msgsPointStamped(r)
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
## @brief Own every original field of ROS1 geometry_msgs/Pose2D.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsPose2D* = object
  ## @brief Preserve original x as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `x`*: float64
  ## @brief Preserve original y as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `y`*: float64
  ## @brief Preserve original theta as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `theta`*: float64
const Ros1Geometry_msgsPose2DMaximumWireBytes* = 24
const Ros1Geometry_msgsPose2DCodecIdentity* = "UWVMROS1_272e907f7422675f272752642d2421c870d46b48b101f1fc6dec5e9ea70b8b0f"
const Ros1Geometry_msgsPose2DNativeType* = "geometry_msgs/Pose2D"
const Ros1Geometry_msgsPose2DNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsPose2D*(): Ros1Geometry_msgsPose2D =
  result.`x` = 0
  result.`y` = 0
  result.`theta` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsPose2D; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`theta`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsPose2D*(r: var Reader): Ros1Geometry_msgsPose2D =
  result = initRos1Geometry_msgsPose2D()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`theta` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsPose2D): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsPose2D*(b: seq[byte]): Ros1Geometry_msgsPose2D =
  var r = initReader(b,24)
  result = readRos1Geometry_msgsPose2D(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/PoseArray.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsPoseArray* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original poses as geometry_msgs/Pose.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `poses`*: seq[Ros1Geometry_msgsPose]
const Ros1Geometry_msgsPoseArrayMaximumWireBytes* = 372
const Ros1Geometry_msgsPoseArrayCodecIdentity* = "UWVMROS1_cc369b2d02464c719f6c9c6eb8f4e328e7623ddd455372cea2085f44bb782900"
const Ros1Geometry_msgsPoseArrayNativeType* = "geometry_msgs/PoseArray"
const Ros1Geometry_msgsPoseArrayNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsPoseArray*(): Ros1Geometry_msgsPoseArray =
  result.`header` = initRos1Std_msgsHeader()
  result.`poses` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsPoseArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`poses`.len > 4: fail(22)
  putInteger(w,uint32(value.`poses`.len))
  for e in value.`poses`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsPoseArray*(r: var Reader): Ros1Geometry_msgsPoseArray =
  result = initRos1Geometry_msgsPoseArray()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`poses` = newSeq[Ros1Geometry_msgsPose](count1)
  for i in 0..<count1:
    result.`poses`[i] = readRos1Geometry_msgsPose(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsPoseArray): seq[byte] =
  var w = initWriter(372)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsPoseArray*(b: seq[byte]): Ros1Geometry_msgsPoseArray =
  var r = initReader(b,372)
  result = readRos1Geometry_msgsPoseArray(r)
  finish(r)
## @brief Own every original field of ROS1 geometry_msgs/PoseStamped.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsPoseStamped* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original pose as geometry_msgs/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: Ros1Geometry_msgsPose
const Ros1Geometry_msgsPoseStampedMaximumWireBytes* = 200
const Ros1Geometry_msgsPoseStampedCodecIdentity* = "UWVMROS1_bb59c4e82f561266c0f10500bfbbd1a809e9c1122ecbf559a812326af3eb2e95"
const Ros1Geometry_msgsPoseStampedNativeType* = "geometry_msgs/PoseStamped"
const Ros1Geometry_msgsPoseStampedNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsPoseStamped*(): Ros1Geometry_msgsPoseStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`pose` = initRos1Geometry_msgsPose()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsPoseStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`pose`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsPoseStamped*(r: var Reader): Ros1Geometry_msgsPoseStamped =
  result = initRos1Geometry_msgsPoseStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`pose` = readRos1Geometry_msgsPose(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsPoseStamped): seq[byte] =
  var w = initWriter(200)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsPoseStamped*(b: seq[byte]): Ros1Geometry_msgsPoseStamped =
  var r = initReader(b,200)
  result = readRos1Geometry_msgsPoseStamped(r)
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
## @brief Own every original field of ROS1 geometry_msgs/PoseWithCovarianceStamped.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsPoseWithCovarianceStamped* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original pose as geometry_msgs/PoseWithCovariance.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: Ros1Geometry_msgsPoseWithCovariance
const Ros1Geometry_msgsPoseWithCovarianceStampedMaximumWireBytes* = 488
const Ros1Geometry_msgsPoseWithCovarianceStampedCodecIdentity* = "UWVMROS1_6708292fe381a7f14aaf84f47a969f55af7446087bfcb309d3b86ab95f34a2d9"
const Ros1Geometry_msgsPoseWithCovarianceStampedNativeType* = "geometry_msgs/PoseWithCovarianceStamped"
const Ros1Geometry_msgsPoseWithCovarianceStampedNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsPoseWithCovarianceStamped*(): Ros1Geometry_msgsPoseWithCovarianceStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`pose` = initRos1Geometry_msgsPoseWithCovariance()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsPoseWithCovarianceStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`pose`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsPoseWithCovarianceStamped*(r: var Reader): Ros1Geometry_msgsPoseWithCovarianceStamped =
  result = initRos1Geometry_msgsPoseWithCovarianceStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`pose` = readRos1Geometry_msgsPoseWithCovariance(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsPoseWithCovarianceStamped): seq[byte] =
  var w = initWriter(488)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsPoseWithCovarianceStamped*(b: seq[byte]): Ros1Geometry_msgsPoseWithCovarianceStamped =
  var r = initReader(b,488)
  result = readRos1Geometry_msgsPoseWithCovarianceStamped(r)
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
## @brief Own every original field of ROS1 geometry_msgs/TransformStamped.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsTransformStamped* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original child_frame_id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `child_frame_id`*: string
  ## @brief Preserve original transform as geometry_msgs/Transform.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `transform`*: Ros1Geometry_msgsTransform
const Ros1Geometry_msgsTransformStampedMaximumWireBytes* = 332
const Ros1Geometry_msgsTransformStampedCodecIdentity* = "UWVMROS1_f4e1d7f868984da7e3717192245f9adf2cc18c76bebaac6357ae2ed30b5b132c"
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
  putString(w,value.`child_frame_id`,128)
  writeFields(value.`transform`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsTransformStamped*(r: var Reader): Ros1Geometry_msgsTransformStamped =
  result = initRos1Geometry_msgsTransformStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`child_frame_id` = getString(r,128)
  result.`transform` = readRos1Geometry_msgsTransform(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsTransformStamped): seq[byte] =
  var w = initWriter(332)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsTransformStamped*(b: seq[byte]): Ros1Geometry_msgsTransformStamped =
  var r = initReader(b,332)
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
## @brief Own every original field of ROS1 geometry_msgs/Wrench.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Geometry_msgsWrench* = object
  ## @brief Preserve original force as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `force`*: Ros1Geometry_msgsVector3
  ## @brief Preserve original torque as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `torque`*: Ros1Geometry_msgsVector3
const Ros1Geometry_msgsWrenchMaximumWireBytes* = 48
const Ros1Geometry_msgsWrenchCodecIdentity* = "UWVMROS1_b0938c4e084df68cf7c46445070ac3e9305d06f678275845aec6055db77617c3"
const Ros1Geometry_msgsWrenchNativeType* = "geometry_msgs/Wrench"
const Ros1Geometry_msgsWrenchNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Geometry_msgsWrench*(): Ros1Geometry_msgsWrench =
  result.`force` = initRos1Geometry_msgsVector3()
  result.`torque` = initRos1Geometry_msgsVector3()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Geometry_msgsWrench; w: var Writer) =
  writeFields(value.`force`,w)
  writeFields(value.`torque`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Geometry_msgsWrench*(r: var Reader): Ros1Geometry_msgsWrench =
  result = initRos1Geometry_msgsWrench()
  result.`force` = readRos1Geometry_msgsVector3(r)
  result.`torque` = readRos1Geometry_msgsVector3(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Geometry_msgsWrench): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Geometry_msgsWrench*(b: seq[byte]): Ros1Geometry_msgsWrench =
  var r = initReader(b,48)
  result = readRos1Geometry_msgsWrench(r)
  finish(r)
## @brief Own every original field of ROS1 humanoid_nav_msgs/StepTarget.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Humanoid_nav_msgsStepTarget* = object
  ## @brief Preserve original pose as geometry_msgs/Pose2D.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: Ros1Geometry_msgsPose2D
  ## @brief Preserve original leg as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leg`*: uint8
const Ros1Humanoid_nav_msgsStepTargetMaximumWireBytes* = 25
const Ros1Humanoid_nav_msgsStepTargetCodecIdentity* = "UWVMROS1_569ffb799d7e55047bf9191eee9af61296726974e01efa8e3b59be779f25c0e6"
const Ros1Humanoid_nav_msgsStepTargetNativeType* = "humanoid_nav_msgs/StepTarget"
const Ros1Humanoid_nav_msgsStepTargetNativeIdentity* = ""
const Ros1Humanoid_nav_msgsStepTarget_right*: uint8 = 0'u8
const Ros1Humanoid_nav_msgsStepTarget_left*: uint8 = 1'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Humanoid_nav_msgsStepTarget*(): Ros1Humanoid_nav_msgsStepTarget =
  result.`pose` = initRos1Geometry_msgsPose2D()
  result.`leg` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Humanoid_nav_msgsStepTarget; w: var Writer) =
  writeFields(value.`pose`,w)
  putInteger(w,value.`leg`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Humanoid_nav_msgsStepTarget*(r: var Reader): Ros1Humanoid_nav_msgsStepTarget =
  result = initRos1Humanoid_nav_msgsStepTarget()
  result.`pose` = readRos1Geometry_msgsPose2D(r)
  result.`leg` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Humanoid_nav_msgsStepTarget): seq[byte] =
  var w = initWriter(25)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Humanoid_nav_msgsStepTarget*(b: seq[byte]): Ros1Humanoid_nav_msgsStepTarget =
  var r = initReader(b,25)
  result = readRos1Humanoid_nav_msgsStepTarget(r)
  finish(r)
## @brief Own every original field of ROS1 nav_msgs/MapMetaData.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Nav_msgsMapMetaData* = object
  ## @brief Preserve original map_load_time as time.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `map_load_time`*: Ros1Time
  ## @brief Preserve original resolution as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `resolution`*: float32
  ## @brief Preserve original width as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `width`*: uint32
  ## @brief Preserve original height as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `height`*: uint32
  ## @brief Preserve original origin as geometry_msgs/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `origin`*: Ros1Geometry_msgsPose
const Ros1Nav_msgsMapMetaDataMaximumWireBytes* = 76
const Ros1Nav_msgsMapMetaDataCodecIdentity* = "UWVMROS1_2bd90889cc46f8b6669b9bdbdd911747e873c2e3fb948cd3c94a1add8c4555ec"
const Ros1Nav_msgsMapMetaDataNativeType* = "nav_msgs/MapMetaData"
const Ros1Nav_msgsMapMetaDataNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Nav_msgsMapMetaData*(): Ros1Nav_msgsMapMetaData =
  result.`map_load_time` = initRos1Time()
  result.`resolution` = 0
  result.`width` = 0
  result.`height` = 0
  result.`origin` = initRos1Geometry_msgsPose()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Nav_msgsMapMetaData; w: var Writer) =
  writeFields(value.`map_load_time`,w)
  putFloat32(w,value.`resolution`)
  putInteger(w,value.`width`)
  putInteger(w,value.`height`)
  writeFields(value.`origin`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Nav_msgsMapMetaData*(r: var Reader): Ros1Nav_msgsMapMetaData =
  result = initRos1Nav_msgsMapMetaData()
  result.`map_load_time` = readRos1Time(r)
  result.`resolution` = getFloat32(r)
  result.`width` = getInteger(r,uint32)
  result.`height` = getInteger(r,uint32)
  result.`origin` = readRos1Geometry_msgsPose(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Nav_msgsMapMetaData): seq[byte] =
  var w = initWriter(76)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Nav_msgsMapMetaData*(b: seq[byte]): Ros1Nav_msgsMapMetaData =
  var r = initReader(b,76)
  result = readRos1Nav_msgsMapMetaData(r)
  finish(r)
## @brief Own every original field of ROS1 nav_msgs/OccupancyGrid.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Nav_msgsOccupancyGrid* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original info as nav_msgs/MapMetaData.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `info`*: Ros1Nav_msgsMapMetaData
  ## @brief Preserve original data as int8.
  ## @details At most 256 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `data`*: seq[int8]
const Ros1Nav_msgsOccupancyGridMaximumWireBytes* = 480
const Ros1Nav_msgsOccupancyGridCodecIdentity* = "UWVMROS1_01c46df6fd069eca1664115a5bfaefa2497f0b44b1c0b11b6f293cb56b0c837d"
const Ros1Nav_msgsOccupancyGridNativeType* = "nav_msgs/OccupancyGrid"
const Ros1Nav_msgsOccupancyGridNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Nav_msgsOccupancyGrid*(): Ros1Nav_msgsOccupancyGrid =
  result.`header` = initRos1Std_msgsHeader()
  result.`info` = initRos1Nav_msgsMapMetaData()
  result.`data` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Nav_msgsOccupancyGrid; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`info`,w)
  if value.`data`.len > 256: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Nav_msgsOccupancyGrid*(r: var Reader): Ros1Nav_msgsOccupancyGrid =
  result = initRos1Nav_msgsOccupancyGrid()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`info` = readRos1Nav_msgsMapMetaData(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 256: fail(22)
  let count2 = int(rawcount2)
  result.`data` = newSeq[int8](count2)
  for i in 0..<count2:
    result.`data`[i] = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Nav_msgsOccupancyGrid): seq[byte] =
  var w = initWriter(480)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Nav_msgsOccupancyGrid*(b: seq[byte]): Ros1Nav_msgsOccupancyGrid =
  var r = initReader(b,480)
  result = readRos1Nav_msgsOccupancyGrid(r)
  finish(r)
## @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourArgument.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_behaviour_msgsBehaviourArgument* = object
  ## @brief Preserve original key as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `key`*: string
  ## @brief Preserve original value as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `value`*: string
const Ros1Pal_behaviour_msgsBehaviourArgumentMaximumWireBytes* = 264
const Ros1Pal_behaviour_msgsBehaviourArgumentCodecIdentity* = "UWVMROS1_024bb88cf3b278e19491258b73c01eca83b0ccfd9381e96b9bb5733227bc4bc0"
const Ros1Pal_behaviour_msgsBehaviourArgumentNativeType* = "pal_behaviour_msgs/BehaviourArgument"
const Ros1Pal_behaviour_msgsBehaviourArgumentNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_behaviour_msgsBehaviourArgument*(): Ros1Pal_behaviour_msgsBehaviourArgument =
  result.`key` = ""
  result.`value` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_behaviour_msgsBehaviourArgument; w: var Writer) =
  putString(w,value.`key`,128)
  putString(w,value.`value`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_behaviour_msgsBehaviourArgument*(r: var Reader): Ros1Pal_behaviour_msgsBehaviourArgument =
  result = initRos1Pal_behaviour_msgsBehaviourArgument()
  result.`key` = getString(r,128)
  result.`value` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_behaviour_msgsBehaviourArgument): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_behaviour_msgsBehaviourArgument*(b: seq[byte]): Ros1Pal_behaviour_msgsBehaviourArgument =
  var r = initReader(b,264)
  result = readRos1Pal_behaviour_msgsBehaviourArgument(r)
  finish(r)
## @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourEventRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_behaviour_msgsBehaviourEventRequest* = object
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original arguments as pal_behaviour_msgs/BehaviourArgument.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `arguments`*: seq[Ros1Pal_behaviour_msgsBehaviourArgument]
const Ros1Pal_behaviour_msgsBehaviourEventRequestMaximumWireBytes* = 1192
const Ros1Pal_behaviour_msgsBehaviourEventRequestCodecIdentity* = "UWVMROS1_048535054a3fb576c8101615baffb84809d2e09e6570527a185e54b54460374c"
const Ros1Pal_behaviour_msgsBehaviourEventRequestNativeType* = "pal_behaviour_msgs/BehaviourEventRequest"
const Ros1Pal_behaviour_msgsBehaviourEventRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_behaviour_msgsBehaviourEventRequest*(): Ros1Pal_behaviour_msgsBehaviourEventRequest =
  result.`name` = ""
  result.`arguments` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_behaviour_msgsBehaviourEventRequest; w: var Writer) =
  putString(w,value.`name`,128)
  if value.`arguments`.len > 4: fail(22)
  putInteger(w,uint32(value.`arguments`.len))
  for e in value.`arguments`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_behaviour_msgsBehaviourEventRequest*(r: var Reader): Ros1Pal_behaviour_msgsBehaviourEventRequest =
  result = initRos1Pal_behaviour_msgsBehaviourEventRequest()
  result.`name` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`arguments` = newSeq[Ros1Pal_behaviour_msgsBehaviourArgument](count1)
  for i in 0..<count1:
    result.`arguments`[i] = readRos1Pal_behaviour_msgsBehaviourArgument(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_behaviour_msgsBehaviourEventRequest): seq[byte] =
  var w = initWriter(1192)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_behaviour_msgsBehaviourEventRequest*(b: seq[byte]): Ros1Pal_behaviour_msgsBehaviourEventRequest =
  var r = initReader(b,1192)
  result = readRos1Pal_behaviour_msgsBehaviourEventRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourEventResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_behaviour_msgsBehaviourEventResponse* = object
  ## @brief Preserve original response as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `response`*: string
const Ros1Pal_behaviour_msgsBehaviourEventResponseMaximumWireBytes* = 132
const Ros1Pal_behaviour_msgsBehaviourEventResponseCodecIdentity* = "UWVMROS1_5d4451abae7cf7d65e7385b4e447df7f991644aa8763758b129e5df6920ba1fd"
const Ros1Pal_behaviour_msgsBehaviourEventResponseNativeType* = "pal_behaviour_msgs/BehaviourEventResponse"
const Ros1Pal_behaviour_msgsBehaviourEventResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_behaviour_msgsBehaviourEventResponse*(): Ros1Pal_behaviour_msgsBehaviourEventResponse =
  result.`response` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_behaviour_msgsBehaviourEventResponse; w: var Writer) =
  putString(w,value.`response`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_behaviour_msgsBehaviourEventResponse*(r: var Reader): Ros1Pal_behaviour_msgsBehaviourEventResponse =
  result = initRos1Pal_behaviour_msgsBehaviourEventResponse()
  result.`response` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_behaviour_msgsBehaviourEventResponse): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_behaviour_msgsBehaviourEventResponse*(b: seq[byte]): Ros1Pal_behaviour_msgsBehaviourEventResponse =
  var r = initReader(b,132)
  result = readRos1Pal_behaviour_msgsBehaviourEventResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourTaskGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_behaviour_msgsBehaviourTaskGoal* = object
  ## @brief Preserve original taskName as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `taskName`*: string
  ## @brief Preserve original arguments as pal_behaviour_msgs/BehaviourArgument.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `arguments`*: seq[Ros1Pal_behaviour_msgsBehaviourArgument]
const Ros1Pal_behaviour_msgsBehaviourTaskGoalMaximumWireBytes* = 1192
const Ros1Pal_behaviour_msgsBehaviourTaskGoalCodecIdentity* = "UWVMROS1_298df310a5cc1085df5355d10a2ecd627415e85f1399f52eaba19a3e16f2389f"
const Ros1Pal_behaviour_msgsBehaviourTaskGoalNativeType* = "pal_behaviour_msgs/BehaviourTaskGoal"
const Ros1Pal_behaviour_msgsBehaviourTaskGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_behaviour_msgsBehaviourTaskGoal*(): Ros1Pal_behaviour_msgsBehaviourTaskGoal =
  result.`taskName` = ""
  result.`arguments` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_behaviour_msgsBehaviourTaskGoal; w: var Writer) =
  putString(w,value.`taskName`,128)
  if value.`arguments`.len > 4: fail(22)
  putInteger(w,uint32(value.`arguments`.len))
  for e in value.`arguments`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_behaviour_msgsBehaviourTaskGoal*(r: var Reader): Ros1Pal_behaviour_msgsBehaviourTaskGoal =
  result = initRos1Pal_behaviour_msgsBehaviourTaskGoal()
  result.`taskName` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`arguments` = newSeq[Ros1Pal_behaviour_msgsBehaviourArgument](count1)
  for i in 0..<count1:
    result.`arguments`[i] = readRos1Pal_behaviour_msgsBehaviourArgument(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_behaviour_msgsBehaviourTaskGoal): seq[byte] =
  var w = initWriter(1192)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_behaviour_msgsBehaviourTaskGoal*(b: seq[byte]): Ros1Pal_behaviour_msgsBehaviourTaskGoal =
  var r = initReader(b,1192)
  result = readRos1Pal_behaviour_msgsBehaviourTaskGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourTaskResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_behaviour_msgsBehaviourTaskResult* = object
const Ros1Pal_behaviour_msgsBehaviourTaskResultMaximumWireBytes* = 0
const Ros1Pal_behaviour_msgsBehaviourTaskResultCodecIdentity* = "UWVMROS1_e18dbdb679b8d00ba9ba5f72201ccf93eec866891009b3639f0892c64da18491"
const Ros1Pal_behaviour_msgsBehaviourTaskResultNativeType* = "pal_behaviour_msgs/BehaviourTaskResult"
const Ros1Pal_behaviour_msgsBehaviourTaskResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_behaviour_msgsBehaviourTaskResult*(): Ros1Pal_behaviour_msgsBehaviourTaskResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_behaviour_msgsBehaviourTaskResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_behaviour_msgsBehaviourTaskResult*(r: var Reader): Ros1Pal_behaviour_msgsBehaviourTaskResult =
  result = initRos1Pal_behaviour_msgsBehaviourTaskResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_behaviour_msgsBehaviourTaskResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_behaviour_msgsBehaviourTaskResult*(b: seq[byte]): Ros1Pal_behaviour_msgsBehaviourTaskResult =
  var r = initReader(b,0)
  result = readRos1Pal_behaviour_msgsBehaviourTaskResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_behaviour_msgs/BehaviourTaskFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_behaviour_msgsBehaviourTaskFeedback* = object
const Ros1Pal_behaviour_msgsBehaviourTaskFeedbackMaximumWireBytes* = 0
const Ros1Pal_behaviour_msgsBehaviourTaskFeedbackCodecIdentity* = "UWVMROS1_4270594f10120216110afd3b219cec42018a71cc751bf09a379e608ce99b1752"
const Ros1Pal_behaviour_msgsBehaviourTaskFeedbackNativeType* = "pal_behaviour_msgs/BehaviourTaskFeedback"
const Ros1Pal_behaviour_msgsBehaviourTaskFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_behaviour_msgsBehaviourTaskFeedback*(): Ros1Pal_behaviour_msgsBehaviourTaskFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_behaviour_msgsBehaviourTaskFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_behaviour_msgsBehaviourTaskFeedback*(r: var Reader): Ros1Pal_behaviour_msgsBehaviourTaskFeedback =
  result = initRos1Pal_behaviour_msgsBehaviourTaskFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_behaviour_msgsBehaviourTaskFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_behaviour_msgsBehaviourTaskFeedback*(b: seq[byte]): Ros1Pal_behaviour_msgsBehaviourTaskFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_behaviour_msgsBehaviourTaskFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_behaviour_msgs/PresentationGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_behaviour_msgsPresentationGoal* = object
  ## @brief Preserve original presentationFile as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `presentationFile`*: string
const Ros1Pal_behaviour_msgsPresentationGoalMaximumWireBytes* = 132
const Ros1Pal_behaviour_msgsPresentationGoalCodecIdentity* = "UWVMROS1_f63991747249e4417a36723dcfe3620fb3efc20784b6a60334f46b3476c76b96"
const Ros1Pal_behaviour_msgsPresentationGoalNativeType* = "pal_behaviour_msgs/PresentationGoal"
const Ros1Pal_behaviour_msgsPresentationGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_behaviour_msgsPresentationGoal*(): Ros1Pal_behaviour_msgsPresentationGoal =
  result.`presentationFile` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_behaviour_msgsPresentationGoal; w: var Writer) =
  putString(w,value.`presentationFile`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_behaviour_msgsPresentationGoal*(r: var Reader): Ros1Pal_behaviour_msgsPresentationGoal =
  result = initRos1Pal_behaviour_msgsPresentationGoal()
  result.`presentationFile` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_behaviour_msgsPresentationGoal): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_behaviour_msgsPresentationGoal*(b: seq[byte]): Ros1Pal_behaviour_msgsPresentationGoal =
  var r = initReader(b,132)
  result = readRos1Pal_behaviour_msgsPresentationGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_behaviour_msgs/PresentationResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_behaviour_msgsPresentationResult* = object
const Ros1Pal_behaviour_msgsPresentationResultMaximumWireBytes* = 0
const Ros1Pal_behaviour_msgsPresentationResultCodecIdentity* = "UWVMROS1_416d43dac88c97f0b25fb206e5529d660fbadb5c8bf98c78190616eaae7c8c41"
const Ros1Pal_behaviour_msgsPresentationResultNativeType* = "pal_behaviour_msgs/PresentationResult"
const Ros1Pal_behaviour_msgsPresentationResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_behaviour_msgsPresentationResult*(): Ros1Pal_behaviour_msgsPresentationResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_behaviour_msgsPresentationResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_behaviour_msgsPresentationResult*(r: var Reader): Ros1Pal_behaviour_msgsPresentationResult =
  result = initRos1Pal_behaviour_msgsPresentationResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_behaviour_msgsPresentationResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_behaviour_msgsPresentationResult*(b: seq[byte]): Ros1Pal_behaviour_msgsPresentationResult =
  var r = initReader(b,0)
  result = readRos1Pal_behaviour_msgsPresentationResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_behaviour_msgs/PresentationFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_behaviour_msgsPresentationFeedback* = object
const Ros1Pal_behaviour_msgsPresentationFeedbackMaximumWireBytes* = 0
const Ros1Pal_behaviour_msgsPresentationFeedbackCodecIdentity* = "UWVMROS1_a80db9d9290af9c76e0d611c42e60939bcfc26897ba56efb2cefd5df072f5970"
const Ros1Pal_behaviour_msgsPresentationFeedbackNativeType* = "pal_behaviour_msgs/PresentationFeedback"
const Ros1Pal_behaviour_msgsPresentationFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_behaviour_msgsPresentationFeedback*(): Ros1Pal_behaviour_msgsPresentationFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_behaviour_msgsPresentationFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_behaviour_msgsPresentationFeedback*(r: var Reader): Ros1Pal_behaviour_msgsPresentationFeedback =
  result = initRos1Pal_behaviour_msgsPresentationFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_behaviour_msgsPresentationFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_behaviour_msgsPresentationFeedback*(b: seq[byte]): Ros1Pal_behaviour_msgsPresentationFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_behaviour_msgsPresentationFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/DisableGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsDisableGoal* = object
  ## @brief Preserve original duration as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `duration`*: float32
const Ros1Pal_common_msgsDisableGoalMaximumWireBytes* = 4
const Ros1Pal_common_msgsDisableGoalCodecIdentity* = "UWVMROS1_7b506fba552b6058cfbd7275e45a82399b686d73dc891bfee6dc506a02f1db3a"
const Ros1Pal_common_msgsDisableGoalNativeType* = "pal_common_msgs/DisableGoal"
const Ros1Pal_common_msgsDisableGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsDisableGoal*(): Ros1Pal_common_msgsDisableGoal =
  result.`duration` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsDisableGoal; w: var Writer) =
  putFloat32(w,value.`duration`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsDisableGoal*(r: var Reader): Ros1Pal_common_msgsDisableGoal =
  result = initRos1Pal_common_msgsDisableGoal()
  result.`duration` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsDisableGoal): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsDisableGoal*(b: seq[byte]): Ros1Pal_common_msgsDisableGoal =
  var r = initReader(b,4)
  result = readRos1Pal_common_msgsDisableGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/DisableResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsDisableResult* = object
const Ros1Pal_common_msgsDisableResultMaximumWireBytes* = 0
const Ros1Pal_common_msgsDisableResultCodecIdentity* = "UWVMROS1_e16cdbd4052e095ead5edfda8c339d94483de63d5442139e0c8b0c5300a2056f"
const Ros1Pal_common_msgsDisableResultNativeType* = "pal_common_msgs/DisableResult"
const Ros1Pal_common_msgsDisableResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsDisableResult*(): Ros1Pal_common_msgsDisableResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsDisableResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsDisableResult*(r: var Reader): Ros1Pal_common_msgsDisableResult =
  result = initRos1Pal_common_msgsDisableResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsDisableResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsDisableResult*(b: seq[byte]): Ros1Pal_common_msgsDisableResult =
  var r = initReader(b,0)
  result = readRos1Pal_common_msgsDisableResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/DisableFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsDisableFeedback* = object
const Ros1Pal_common_msgsDisableFeedbackMaximumWireBytes* = 0
const Ros1Pal_common_msgsDisableFeedbackCodecIdentity* = "UWVMROS1_892e1dc5726b25276dfd880aff5c9741922b938048d8fc044662fd6f11939555"
const Ros1Pal_common_msgsDisableFeedbackNativeType* = "pal_common_msgs/DisableFeedback"
const Ros1Pal_common_msgsDisableFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsDisableFeedback*(): Ros1Pal_common_msgsDisableFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsDisableFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsDisableFeedback*(r: var Reader): Ros1Pal_common_msgsDisableFeedback =
  result = initRos1Pal_common_msgsDisableFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsDisableFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsDisableFeedback*(b: seq[byte]): Ros1Pal_common_msgsDisableFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_common_msgsDisableFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/EmptyGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsEmptyGoal* = object
const Ros1Pal_common_msgsEmptyGoalMaximumWireBytes* = 0
const Ros1Pal_common_msgsEmptyGoalCodecIdentity* = "UWVMROS1_b2e8505fe9480002666ccc1bc6ed3e250f521f1e0fb2165336de288f0798c7ce"
const Ros1Pal_common_msgsEmptyGoalNativeType* = "pal_common_msgs/EmptyGoal"
const Ros1Pal_common_msgsEmptyGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsEmptyGoal*(): Ros1Pal_common_msgsEmptyGoal =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsEmptyGoal; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsEmptyGoal*(r: var Reader): Ros1Pal_common_msgsEmptyGoal =
  result = initRos1Pal_common_msgsEmptyGoal()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsEmptyGoal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsEmptyGoal*(b: seq[byte]): Ros1Pal_common_msgsEmptyGoal =
  var r = initReader(b,0)
  result = readRos1Pal_common_msgsEmptyGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/EmptyResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsEmptyResult* = object
const Ros1Pal_common_msgsEmptyResultMaximumWireBytes* = 0
const Ros1Pal_common_msgsEmptyResultCodecIdentity* = "UWVMROS1_7e831f6ff8bda7d3ff2a477bb867ce2b965d82e60c8c089a68a030be1c56202a"
const Ros1Pal_common_msgsEmptyResultNativeType* = "pal_common_msgs/EmptyResult"
const Ros1Pal_common_msgsEmptyResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsEmptyResult*(): Ros1Pal_common_msgsEmptyResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsEmptyResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsEmptyResult*(r: var Reader): Ros1Pal_common_msgsEmptyResult =
  result = initRos1Pal_common_msgsEmptyResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsEmptyResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsEmptyResult*(b: seq[byte]): Ros1Pal_common_msgsEmptyResult =
  var r = initReader(b,0)
  result = readRos1Pal_common_msgsEmptyResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/EmptyFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsEmptyFeedback* = object
const Ros1Pal_common_msgsEmptyFeedbackMaximumWireBytes* = 0
const Ros1Pal_common_msgsEmptyFeedbackCodecIdentity* = "UWVMROS1_4e37b746163e601913c21f82128415e9493467848b1203b0744a4f7697125160"
const Ros1Pal_common_msgsEmptyFeedbackNativeType* = "pal_common_msgs/EmptyFeedback"
const Ros1Pal_common_msgsEmptyFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsEmptyFeedback*(): Ros1Pal_common_msgsEmptyFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsEmptyFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsEmptyFeedback*(r: var Reader): Ros1Pal_common_msgsEmptyFeedback =
  result = initRos1Pal_common_msgsEmptyFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsEmptyFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsEmptyFeedback*(b: seq[byte]): Ros1Pal_common_msgsEmptyFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_common_msgsEmptyFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/GetStringRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsGetStringRequest* = object
const Ros1Pal_common_msgsGetStringRequestMaximumWireBytes* = 0
const Ros1Pal_common_msgsGetStringRequestCodecIdentity* = "UWVMROS1_5da980a34f4dc0c571eccf18e9b5ba9e3f600ec33066d5632e5eed6a57432975"
const Ros1Pal_common_msgsGetStringRequestNativeType* = "pal_common_msgs/GetStringRequest"
const Ros1Pal_common_msgsGetStringRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsGetStringRequest*(): Ros1Pal_common_msgsGetStringRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsGetStringRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsGetStringRequest*(r: var Reader): Ros1Pal_common_msgsGetStringRequest =
  result = initRos1Pal_common_msgsGetStringRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsGetStringRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsGetStringRequest*(b: seq[byte]): Ros1Pal_common_msgsGetStringRequest =
  var r = initReader(b,0)
  result = readRos1Pal_common_msgsGetStringRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/GetStringResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsGetStringResponse* = object
  ## @brief Preserve original data as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `data`*: string
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
const Ros1Pal_common_msgsGetStringResponseMaximumWireBytes* = 133
const Ros1Pal_common_msgsGetStringResponseCodecIdentity* = "UWVMROS1_92faf0451e15a3363daed687078ea103a59e98135e888ad54f8dd9d282443a59"
const Ros1Pal_common_msgsGetStringResponseNativeType* = "pal_common_msgs/GetStringResponse"
const Ros1Pal_common_msgsGetStringResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsGetStringResponse*(): Ros1Pal_common_msgsGetStringResponse =
  result.`data` = ""
  result.`success` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsGetStringResponse; w: var Writer) =
  putString(w,value.`data`,128)
  putBool(w,value.`success`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsGetStringResponse*(r: var Reader): Ros1Pal_common_msgsGetStringResponse =
  result = initRos1Pal_common_msgsGetStringResponse()
  result.`data` = getString(r,128)
  result.`success` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsGetStringResponse): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsGetStringResponse*(b: seq[byte]): Ros1Pal_common_msgsGetStringResponse =
  var r = initReader(b,133)
  result = readRos1Pal_common_msgsGetStringResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/JointCurrent.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsJointCurrent* = object
  ## @brief Preserve original joints as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `joints`*: string
  ## @brief Preserve original current_limit as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `current_limit`*: float32
const Ros1Pal_common_msgsJointCurrentMaximumWireBytes* = 136
const Ros1Pal_common_msgsJointCurrentCodecIdentity* = "UWVMROS1_5c8818c8e15e17e0696cd7301896246ea43e5309f24e8d00e3254283199a5b39"
const Ros1Pal_common_msgsJointCurrentNativeType* = "pal_common_msgs/JointCurrent"
const Ros1Pal_common_msgsJointCurrentNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsJointCurrent*(): Ros1Pal_common_msgsJointCurrent =
  result.`joints` = ""
  result.`current_limit` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsJointCurrent; w: var Writer) =
  putString(w,value.`joints`,128)
  putFloat32(w,value.`current_limit`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsJointCurrent*(r: var Reader): Ros1Pal_common_msgsJointCurrent =
  result = initRos1Pal_common_msgsJointCurrent()
  result.`joints` = getString(r,128)
  result.`current_limit` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsJointCurrent): seq[byte] =
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsJointCurrent*(b: seq[byte]): Ros1Pal_common_msgsJointCurrent =
  var r = initReader(b,136)
  result = readRos1Pal_common_msgsJointCurrent(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/SetStringRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsSetStringRequest* = object
  ## @brief Preserve original data as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `data`*: string
const Ros1Pal_common_msgsSetStringRequestMaximumWireBytes* = 132
const Ros1Pal_common_msgsSetStringRequestCodecIdentity* = "UWVMROS1_1266d5e50f2f3ada01139b7cf49daf4dd6a9a358edf26519c6b85bd2b9c675b3"
const Ros1Pal_common_msgsSetStringRequestNativeType* = "pal_common_msgs/SetStringRequest"
const Ros1Pal_common_msgsSetStringRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsSetStringRequest*(): Ros1Pal_common_msgsSetStringRequest =
  result.`data` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsSetStringRequest; w: var Writer) =
  putString(w,value.`data`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsSetStringRequest*(r: var Reader): Ros1Pal_common_msgsSetStringRequest =
  result = initRos1Pal_common_msgsSetStringRequest()
  result.`data` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsSetStringRequest): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsSetStringRequest*(b: seq[byte]): Ros1Pal_common_msgsSetStringRequest =
  var r = initReader(b,132)
  result = readRos1Pal_common_msgsSetStringRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_common_msgs/SetStringResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_common_msgsSetStringResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
const Ros1Pal_common_msgsSetStringResponseMaximumWireBytes* = 1
const Ros1Pal_common_msgsSetStringResponseCodecIdentity* = "UWVMROS1_77c77473e16b6242e69e1674bf3c1faf66169bb858144992be3f6cfd712bd370"
const Ros1Pal_common_msgsSetStringResponseNativeType* = "pal_common_msgs/SetStringResponse"
const Ros1Pal_common_msgsSetStringResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_common_msgsSetStringResponse*(): Ros1Pal_common_msgsSetStringResponse =
  result.`success` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_common_msgsSetStringResponse; w: var Writer) =
  putBool(w,value.`success`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_common_msgsSetStringResponse*(r: var Reader): Ros1Pal_common_msgsSetStringResponse =
  result = initRos1Pal_common_msgsSetStringResponse()
  result.`success` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_common_msgsSetStringResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_common_msgsSetStringResponse*(b: seq[byte]): Ros1Pal_common_msgsSetStringResponse =
  var r = initReader(b,1)
  result = readRos1Pal_common_msgsSetStringResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/ActuatorCurrentLimit.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsActuatorCurrentLimit* = object
  ## @brief Preserve original actuator_names as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `actuator_names`*: seq[string]
  ## @brief Preserve original current_limits as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `current_limits`*: seq[float64]
const Ros1Pal_control_msgsActuatorCurrentLimitMaximumWireBytes* = 2248
const Ros1Pal_control_msgsActuatorCurrentLimitCodecIdentity* = "UWVMROS1_cf7369861a4d556cc9edc22cc60c79f484ca84e295c508a2ff7d7332247addbe"
const Ros1Pal_control_msgsActuatorCurrentLimitNativeType* = "pal_control_msgs/ActuatorCurrentLimit"
const Ros1Pal_control_msgsActuatorCurrentLimitNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsActuatorCurrentLimit*(): Ros1Pal_control_msgsActuatorCurrentLimit =
  result.`actuator_names` = @[]
  result.`current_limits` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsActuatorCurrentLimit; w: var Writer) =
  if value.`actuator_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`actuator_names`.len))
  for e in value.`actuator_names`:
    putString(w,e,128)
  if value.`current_limits`.len > 16: fail(22)
  putInteger(w,uint32(value.`current_limits`.len))
  for e in value.`current_limits`:
    putFloat64(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsActuatorCurrentLimit*(r: var Reader): Ros1Pal_control_msgsActuatorCurrentLimit =
  result = initRos1Pal_control_msgsActuatorCurrentLimit()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`actuator_names` = newSeq[string](count0)
  for i in 0..<count0:
    result.`actuator_names`[i] = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`current_limits` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`current_limits`[i] = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsActuatorCurrentLimit): seq[byte] =
  var w = initWriter(2248)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsActuatorCurrentLimit*(b: seq[byte]): Ros1Pal_control_msgsActuatorCurrentLimit =
  var r = initReader(b,2248)
  result = readRos1Pal_control_msgsActuatorCurrentLimit(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/CurrentLimitRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsCurrentLimitRequest* = object
  ## @brief Preserve original actuator_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `actuator_name`*: string
  ## @brief Preserve original current_limit as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `current_limit`*: float64
const Ros1Pal_control_msgsCurrentLimitRequestMaximumWireBytes* = 140
const Ros1Pal_control_msgsCurrentLimitRequestCodecIdentity* = "UWVMROS1_b029cf04f0b1c9db6817fbd10f193d7402afbc84853aed53dc62646e56d030b5"
const Ros1Pal_control_msgsCurrentLimitRequestNativeType* = "pal_control_msgs/CurrentLimitRequest"
const Ros1Pal_control_msgsCurrentLimitRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsCurrentLimitRequest*(): Ros1Pal_control_msgsCurrentLimitRequest =
  result.`actuator_name` = ""
  result.`current_limit` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsCurrentLimitRequest; w: var Writer) =
  putString(w,value.`actuator_name`,128)
  putFloat64(w,value.`current_limit`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsCurrentLimitRequest*(r: var Reader): Ros1Pal_control_msgsCurrentLimitRequest =
  result = initRos1Pal_control_msgsCurrentLimitRequest()
  result.`actuator_name` = getString(r,128)
  result.`current_limit` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsCurrentLimitRequest): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsCurrentLimitRequest*(b: seq[byte]): Ros1Pal_control_msgsCurrentLimitRequest =
  var r = initReader(b,140)
  result = readRos1Pal_control_msgsCurrentLimitRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/CurrentLimitResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsCurrentLimitResponse* = object
  ## @brief Preserve original status as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `status`*: string
const Ros1Pal_control_msgsCurrentLimitResponseMaximumWireBytes* = 132
const Ros1Pal_control_msgsCurrentLimitResponseCodecIdentity* = "UWVMROS1_e3b16641e9b7be7b3cb0cf7198a63b41ebd0b38eb7dc6b7bd9263650279b0c37"
const Ros1Pal_control_msgsCurrentLimitResponseNativeType* = "pal_control_msgs/CurrentLimitResponse"
const Ros1Pal_control_msgsCurrentLimitResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsCurrentLimitResponse*(): Ros1Pal_control_msgsCurrentLimitResponse =
  result.`status` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsCurrentLimitResponse; w: var Writer) =
  putString(w,value.`status`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsCurrentLimitResponse*(r: var Reader): Ros1Pal_control_msgsCurrentLimitResponse =
  result = initRos1Pal_control_msgsCurrentLimitResponse()
  result.`status` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsCurrentLimitResponse): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsCurrentLimitResponse*(b: seq[byte]): Ros1Pal_control_msgsCurrentLimitResponse =
  var r = initReader(b,132)
  result = readRos1Pal_control_msgsCurrentLimitResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/MotionManagerGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsMotionManagerGoal* = object
  ## @brief Preserve original filename as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `filename`*: string
  ## @brief Preserve original plan as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `plan`*: bool
  ## @brief Preserve original checkSafety as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `checkSafety`*: bool
  ## @brief Preserve original repeat as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `repeat`*: bool
  ## @brief Preserve original priority as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `priority`*: uint8
  ## @brief Preserve original queueTimeout as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `queueTimeout`*: int32
const Ros1Pal_control_msgsMotionManagerGoalMaximumWireBytes* = 140
const Ros1Pal_control_msgsMotionManagerGoalCodecIdentity* = "UWVMROS1_d2191004950c3f14c8fd71cc2c59cbe39eb76a3c521327293e7355f88e8d2383"
const Ros1Pal_control_msgsMotionManagerGoalNativeType* = "pal_control_msgs/MotionManagerGoal"
const Ros1Pal_control_msgsMotionManagerGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsMotionManagerGoal*(): Ros1Pal_control_msgsMotionManagerGoal =
  result.`filename` = ""
  result.`plan` = false
  result.`checkSafety` = false
  result.`repeat` = false
  result.`priority` = 0
  result.`queueTimeout` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsMotionManagerGoal; w: var Writer) =
  putString(w,value.`filename`,128)
  putBool(w,value.`plan`)
  putBool(w,value.`checkSafety`)
  putBool(w,value.`repeat`)
  putInteger(w,value.`priority`)
  putInteger(w,value.`queueTimeout`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsMotionManagerGoal*(r: var Reader): Ros1Pal_control_msgsMotionManagerGoal =
  result = initRos1Pal_control_msgsMotionManagerGoal()
  result.`filename` = getString(r,128)
  result.`plan` = getBool(r)
  result.`checkSafety` = getBool(r)
  result.`repeat` = getBool(r)
  result.`priority` = getInteger(r,uint8)
  result.`queueTimeout` = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsMotionManagerGoal): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsMotionManagerGoal*(b: seq[byte]): Ros1Pal_control_msgsMotionManagerGoal =
  var r = initReader(b,140)
  result = readRos1Pal_control_msgsMotionManagerGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/MotionManagerResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsMotionManagerResult* = object
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Pal_control_msgsMotionManagerResultMaximumWireBytes* = 132
const Ros1Pal_control_msgsMotionManagerResultCodecIdentity* = "UWVMROS1_8c9a1d39fe8d1a23621b871bb0752196123c9eab96c31055c384d0056da3165c"
const Ros1Pal_control_msgsMotionManagerResultNativeType* = "pal_control_msgs/MotionManagerResult"
const Ros1Pal_control_msgsMotionManagerResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsMotionManagerResult*(): Ros1Pal_control_msgsMotionManagerResult =
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsMotionManagerResult; w: var Writer) =
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsMotionManagerResult*(r: var Reader): Ros1Pal_control_msgsMotionManagerResult =
  result = initRos1Pal_control_msgsMotionManagerResult()
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsMotionManagerResult): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsMotionManagerResult*(b: seq[byte]): Ros1Pal_control_msgsMotionManagerResult =
  var r = initReader(b,132)
  result = readRos1Pal_control_msgsMotionManagerResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/MotionManagerFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsMotionManagerFeedback* = object
const Ros1Pal_control_msgsMotionManagerFeedbackMaximumWireBytes* = 0
const Ros1Pal_control_msgsMotionManagerFeedbackCodecIdentity* = "UWVMROS1_90343a2a84a0db6a4730b7c9cb437ba55e9dd30c10b662db6dabe561ecf48009"
const Ros1Pal_control_msgsMotionManagerFeedbackNativeType* = "pal_control_msgs/MotionManagerFeedback"
const Ros1Pal_control_msgsMotionManagerFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsMotionManagerFeedback*(): Ros1Pal_control_msgsMotionManagerFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsMotionManagerFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsMotionManagerFeedback*(r: var Reader): Ros1Pal_control_msgsMotionManagerFeedback =
  result = initRos1Pal_control_msgsMotionManagerFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsMotionManagerFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsMotionManagerFeedback*(b: seq[byte]): Ros1Pal_control_msgsMotionManagerFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_control_msgsMotionManagerFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 duration.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Duration* = object
  ## @brief Preserve original sec as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `sec`*: int32
  ## @brief Preserve original nsec as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `nsec`*: int32
const Ros1DurationMaximumWireBytes* = 8
const Ros1DurationCodecIdentity* = "UWVMROS1_8dbec6cdfef79495208abb358c5e8283ec8d9d471f984424afcda997d142cca8"
const Ros1DurationNativeType* = "duration"
const Ros1DurationNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Duration*(): Ros1Duration =
  result.`sec` = 0
  result.`nsec` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Duration; w: var Writer) =
  if value.`nsec` < 0: fail(22)
  if value.`nsec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nsec`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Duration*(r: var Reader): Ros1Duration =
  result = initRos1Duration()
  result.`sec` = getInteger(r,int32)
  result.`nsec` = getInteger(r,int32)
  if result.`nsec` < 0: fail(22)
  if result.`nsec` >= 1000000000: fail(22)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Duration): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Duration*(b: seq[byte]): Ros1Duration =
  var r = initReader(b,8)
  result = readRos1Duration(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/OperationalSpaceGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsOperationalSpaceGoal* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original has_vel as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `has_vel`*: bool
  ## @brief Preserve original has_accel as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `has_accel`*: bool
  ## @brief Preserve original duration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `duration`*: Ros1Duration
  ## @brief Preserve original pose as geometry_msgs/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: Ros1Geometry_msgsPose
  ## @brief Preserve original velocity as geometry_msgs/Twist.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `velocity`*: Ros1Geometry_msgsTwist
  ## @brief Preserve original acceleration as geometry_msgs/Accel.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `acceleration`*: Ros1Geometry_msgsAccel
const Ros1Pal_control_msgsOperationalSpaceGoalMaximumWireBytes* = 306
const Ros1Pal_control_msgsOperationalSpaceGoalCodecIdentity* = "UWVMROS1_c2a633eaaae880b4becdac4e48068d798b121a63ed50339ae5f8eb455416c752"
const Ros1Pal_control_msgsOperationalSpaceGoalNativeType* = "pal_control_msgs/OperationalSpaceGoal"
const Ros1Pal_control_msgsOperationalSpaceGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsOperationalSpaceGoal*(): Ros1Pal_control_msgsOperationalSpaceGoal =
  result.`header` = initRos1Std_msgsHeader()
  result.`has_vel` = false
  result.`has_accel` = false
  result.`duration` = initRos1Duration()
  result.`pose` = initRos1Geometry_msgsPose()
  result.`velocity` = initRos1Geometry_msgsTwist()
  result.`acceleration` = initRos1Geometry_msgsAccel()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsOperationalSpaceGoal; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`has_vel`)
  putBool(w,value.`has_accel`)
  writeFields(value.`duration`,w)
  writeFields(value.`pose`,w)
  writeFields(value.`velocity`,w)
  writeFields(value.`acceleration`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsOperationalSpaceGoal*(r: var Reader): Ros1Pal_control_msgsOperationalSpaceGoal =
  result = initRos1Pal_control_msgsOperationalSpaceGoal()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`has_vel` = getBool(r)
  result.`has_accel` = getBool(r)
  result.`duration` = readRos1Duration(r)
  result.`pose` = readRos1Geometry_msgsPose(r)
  result.`velocity` = readRos1Geometry_msgsTwist(r)
  result.`acceleration` = readRos1Geometry_msgsAccel(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsOperationalSpaceGoal): seq[byte] =
  var w = initWriter(306)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsOperationalSpaceGoal*(b: seq[byte]): Ros1Pal_control_msgsOperationalSpaceGoal =
  var r = initReader(b,306)
  result = readRos1Pal_control_msgsOperationalSpaceGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/RigidBodyTrajectoryPoint.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsRigidBodyTrajectoryPoint* = object
  ## @brief Preserve original duration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `duration`*: Ros1Duration
  ## @brief Preserve original pose as geometry_msgs/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: Ros1Geometry_msgsPose
  ## @brief Preserve original velocity as geometry_msgs/Twist.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `velocity`*: Ros1Geometry_msgsTwist
  ## @brief Preserve original acceleration as geometry_msgs/Accel.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `acceleration`*: Ros1Geometry_msgsAccel
const Ros1Pal_control_msgsRigidBodyTrajectoryPointMaximumWireBytes* = 160
const Ros1Pal_control_msgsRigidBodyTrajectoryPointCodecIdentity* = "UWVMROS1_25a24ab0d2eea5acbd4f1e0e0ba45262aa18750fcfb7cd6e57361ac782006d8f"
const Ros1Pal_control_msgsRigidBodyTrajectoryPointNativeType* = "pal_control_msgs/RigidBodyTrajectoryPoint"
const Ros1Pal_control_msgsRigidBodyTrajectoryPointNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsRigidBodyTrajectoryPoint*(): Ros1Pal_control_msgsRigidBodyTrajectoryPoint =
  result.`duration` = initRos1Duration()
  result.`pose` = initRos1Geometry_msgsPose()
  result.`velocity` = initRos1Geometry_msgsTwist()
  result.`acceleration` = initRos1Geometry_msgsAccel()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsRigidBodyTrajectoryPoint; w: var Writer) =
  writeFields(value.`duration`,w)
  writeFields(value.`pose`,w)
  writeFields(value.`velocity`,w)
  writeFields(value.`acceleration`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsRigidBodyTrajectoryPoint*(r: var Reader): Ros1Pal_control_msgsRigidBodyTrajectoryPoint =
  result = initRos1Pal_control_msgsRigidBodyTrajectoryPoint()
  result.`duration` = readRos1Duration(r)
  result.`pose` = readRos1Geometry_msgsPose(r)
  result.`velocity` = readRos1Geometry_msgsTwist(r)
  result.`acceleration` = readRos1Geometry_msgsAccel(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsRigidBodyTrajectoryPoint): seq[byte] =
  var w = initWriter(160)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsRigidBodyTrajectoryPoint*(b: seq[byte]): Ros1Pal_control_msgsRigidBodyTrajectoryPoint =
  var r = initReader(b,160)
  result = readRos1Pal_control_msgsRigidBodyTrajectoryPoint(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/RigidBodyTrajectoryGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsRigidBodyTrajectoryGoal* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original interpolation_type as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `interpolation_type`*: int8
  ## @brief Preserve original trajectory as pal_control_msgs/RigidBodyTrajectoryPoint.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `trajectory`*: seq[Ros1Pal_control_msgsRigidBodyTrajectoryPoint]
const Ros1Pal_control_msgsRigidBodyTrajectoryGoalMaximumWireBytes* = 789
const Ros1Pal_control_msgsRigidBodyTrajectoryGoalCodecIdentity* = "UWVMROS1_03623f36fd48567680ea44e05f1e8fceb65f85bbbbfc9c76e19005deb2b2f599"
const Ros1Pal_control_msgsRigidBodyTrajectoryGoalNativeType* = "pal_control_msgs/RigidBodyTrajectoryGoal"
const Ros1Pal_control_msgsRigidBodyTrajectoryGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsRigidBodyTrajectoryGoal*(): Ros1Pal_control_msgsRigidBodyTrajectoryGoal =
  result.`header` = initRos1Std_msgsHeader()
  result.`interpolation_type` = 0
  result.`trajectory` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsRigidBodyTrajectoryGoal; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`interpolation_type`)
  if value.`trajectory`.len > 4: fail(22)
  putInteger(w,uint32(value.`trajectory`.len))
  for e in value.`trajectory`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsRigidBodyTrajectoryGoal*(r: var Reader): Ros1Pal_control_msgsRigidBodyTrajectoryGoal =
  result = initRos1Pal_control_msgsRigidBodyTrajectoryGoal()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`interpolation_type` = getInteger(r,int8)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`trajectory` = newSeq[Ros1Pal_control_msgsRigidBodyTrajectoryPoint](count2)
  for i in 0..<count2:
    result.`trajectory`[i] = readRos1Pal_control_msgsRigidBodyTrajectoryPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsRigidBodyTrajectoryGoal): seq[byte] =
  var w = initWriter(789)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsRigidBodyTrajectoryGoal*(b: seq[byte]): Ros1Pal_control_msgsRigidBodyTrajectoryGoal =
  var r = initReader(b,789)
  result = readRos1Pal_control_msgsRigidBodyTrajectoryGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/RigidBodyTrajectoryResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsRigidBodyTrajectoryResult* = object
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Pal_control_msgsRigidBodyTrajectoryResultMaximumWireBytes* = 132
const Ros1Pal_control_msgsRigidBodyTrajectoryResultCodecIdentity* = "UWVMROS1_7f2a255f550c28c0d817ada4d3a0419b4d44347d0d9050821395a65ae6431f9f"
const Ros1Pal_control_msgsRigidBodyTrajectoryResultNativeType* = "pal_control_msgs/RigidBodyTrajectoryResult"
const Ros1Pal_control_msgsRigidBodyTrajectoryResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsRigidBodyTrajectoryResult*(): Ros1Pal_control_msgsRigidBodyTrajectoryResult =
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsRigidBodyTrajectoryResult; w: var Writer) =
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsRigidBodyTrajectoryResult*(r: var Reader): Ros1Pal_control_msgsRigidBodyTrajectoryResult =
  result = initRos1Pal_control_msgsRigidBodyTrajectoryResult()
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsRigidBodyTrajectoryResult): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsRigidBodyTrajectoryResult*(b: seq[byte]): Ros1Pal_control_msgsRigidBodyTrajectoryResult =
  var r = initReader(b,132)
  result = readRos1Pal_control_msgsRigidBodyTrajectoryResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_control_msgs/RigidBodyTrajectoryFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_control_msgsRigidBodyTrajectoryFeedback* = object
const Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackMaximumWireBytes* = 0
const Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackCodecIdentity* = "UWVMROS1_2ea6f2ce67dcc51782fa6db213b7a9e0c758b608961efc1e0783c8f14dbabd96"
const Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackNativeType* = "pal_control_msgs/RigidBodyTrajectoryFeedback"
const Ros1Pal_control_msgsRigidBodyTrajectoryFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_control_msgsRigidBodyTrajectoryFeedback*(): Ros1Pal_control_msgsRigidBodyTrajectoryFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_control_msgsRigidBodyTrajectoryFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_control_msgsRigidBodyTrajectoryFeedback*(r: var Reader): Ros1Pal_control_msgsRigidBodyTrajectoryFeedback =
  result = initRos1Pal_control_msgsRigidBodyTrajectoryFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_control_msgsRigidBodyTrajectoryFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_control_msgsRigidBodyTrajectoryFeedback*(b: seq[byte]): Ros1Pal_control_msgsRigidBodyTrajectoryFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_control_msgsRigidBodyTrajectoryFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 sensor_msgs/Image.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Sensor_msgsImage* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original height as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `height`*: uint32
  ## @brief Preserve original width as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `width`*: uint32
  ## @brief Preserve original encoding as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `encoding`*: string
  ## @brief Preserve original is_bigendian as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `is_bigendian`*: uint8
  ## @brief Preserve original step as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `step`*: uint32
  ## @brief Preserve original data as uint8.
  ## @details At most 4096 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `data`*: seq[uint8]
const Ros1Sensor_msgsImageMaximumWireBytes* = 4389
const Ros1Sensor_msgsImageCodecIdentity* = "UWVMROS1_da3bee65c72205c46f51ab123a4399369df1a0a1419c32fdcd350f16bd5f76ce"
const Ros1Sensor_msgsImageNativeType* = "sensor_msgs/Image"
const Ros1Sensor_msgsImageNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Sensor_msgsImage*(): Ros1Sensor_msgsImage =
  result.`header` = initRos1Std_msgsHeader()
  result.`height` = 0
  result.`width` = 0
  result.`encoding` = ""
  result.`is_bigendian` = 0
  result.`step` = 0
  result.`data` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Sensor_msgsImage; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`height`)
  putInteger(w,value.`width`)
  putString(w,value.`encoding`,128)
  putInteger(w,value.`is_bigendian`)
  putInteger(w,value.`step`)
  if value.`data`.len > 4096: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Sensor_msgsImage*(r: var Reader): Ros1Sensor_msgsImage =
  result = initRos1Sensor_msgsImage()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`height` = getInteger(r,uint32)
  result.`width` = getInteger(r,uint32)
  result.`encoding` = getString(r,128)
  result.`is_bigendian` = getInteger(r,uint8)
  result.`step` = getInteger(r,uint32)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 4096: fail(22)
  let count6 = int(rawcount6)
  result.`data` = newSeq[uint8](count6)
  for i in 0..<count6:
    result.`data`[i] = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Sensor_msgsImage): seq[byte] =
  var w = initWriter(4389)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Sensor_msgsImage*(b: seq[byte]): Ros1Sensor_msgsImage =
  var r = initReader(b,4389)
  result = readRos1Sensor_msgsImage(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/AddTexturedObjectRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsAddTexturedObjectRequest* = object
  ## @brief Preserve original img as sensor_msgs/Image.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `img`*: Ros1Sensor_msgsImage
  ## @brief Preserve original fullPathFileName as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `fullPathFileName`*: string
const Ros1Pal_detection_msgsAddTexturedObjectRequestMaximumWireBytes* = 4521
const Ros1Pal_detection_msgsAddTexturedObjectRequestCodecIdentity* = "UWVMROS1_0462d396de70e5db24dbbe0dab8c326f81120356b4d632fd3b56b433d89f616d"
const Ros1Pal_detection_msgsAddTexturedObjectRequestNativeType* = "pal_detection_msgs/AddTexturedObjectRequest"
const Ros1Pal_detection_msgsAddTexturedObjectRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsAddTexturedObjectRequest*(): Ros1Pal_detection_msgsAddTexturedObjectRequest =
  result.`img` = initRos1Sensor_msgsImage()
  result.`fullPathFileName` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsAddTexturedObjectRequest; w: var Writer) =
  writeFields(value.`img`,w)
  putString(w,value.`fullPathFileName`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsAddTexturedObjectRequest*(r: var Reader): Ros1Pal_detection_msgsAddTexturedObjectRequest =
  result = initRos1Pal_detection_msgsAddTexturedObjectRequest()
  result.`img` = readRos1Sensor_msgsImage(r)
  result.`fullPathFileName` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsAddTexturedObjectRequest): seq[byte] =
  var w = initWriter(4521)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsAddTexturedObjectRequest*(b: seq[byte]): Ros1Pal_detection_msgsAddTexturedObjectRequest =
  var r = initReader(b,4521)
  result = readRos1Pal_detection_msgsAddTexturedObjectRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/AddTexturedObjectResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsAddTexturedObjectResponse* = object
  ## @brief Preserve original result as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `result`*: bool
const Ros1Pal_detection_msgsAddTexturedObjectResponseMaximumWireBytes* = 1
const Ros1Pal_detection_msgsAddTexturedObjectResponseCodecIdentity* = "UWVMROS1_6eb1d5f37f64d4f141251e607533ebf037973dc704dbcf3e06d4fb8d2c86ee1d"
const Ros1Pal_detection_msgsAddTexturedObjectResponseNativeType* = "pal_detection_msgs/AddTexturedObjectResponse"
const Ros1Pal_detection_msgsAddTexturedObjectResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsAddTexturedObjectResponse*(): Ros1Pal_detection_msgsAddTexturedObjectResponse =
  result.`result` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsAddTexturedObjectResponse; w: var Writer) =
  putBool(w,value.`result`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsAddTexturedObjectResponse*(r: var Reader): Ros1Pal_detection_msgsAddTexturedObjectResponse =
  result = initRos1Pal_detection_msgsAddTexturedObjectResponse()
  result.`result` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsAddTexturedObjectResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsAddTexturedObjectResponse*(b: seq[byte]): Ros1Pal_detection_msgsAddTexturedObjectResponse =
  var r = initReader(b,1)
  result = readRos1Pal_detection_msgsAddTexturedObjectResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/ChangeObjectRecognizerModelRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest* = object
  ## @brief Preserve original model_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `model_name`*: string
  ## @brief Preserve original reset_desired_classes_param as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `reset_desired_classes_param`*: bool
const Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestMaximumWireBytes* = 133
const Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestCodecIdentity* = "UWVMROS1_d8071195e710803f51bfd07d74bd9450c5ce1ca21b464414ad806695692e0342"
const Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestNativeType* = "pal_detection_msgs/ChangeObjectRecognizerModelRequest"
const Ros1Pal_detection_msgsChangeObjectRecognizerModelRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsChangeObjectRecognizerModelRequest*(): Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest =
  result.`model_name` = ""
  result.`reset_desired_classes_param` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest; w: var Writer) =
  putString(w,value.`model_name`,128)
  putBool(w,value.`reset_desired_classes_param`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsChangeObjectRecognizerModelRequest*(r: var Reader): Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest =
  result = initRos1Pal_detection_msgsChangeObjectRecognizerModelRequest()
  result.`model_name` = getString(r,128)
  result.`reset_desired_classes_param` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsChangeObjectRecognizerModelRequest*(b: seq[byte]): Ros1Pal_detection_msgsChangeObjectRecognizerModelRequest =
  var r = initReader(b,133)
  result = readRos1Pal_detection_msgsChangeObjectRecognizerModelRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/ChangeObjectRecognizerModelResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse* = object
  ## @brief Preserve original status as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `status`*: bool
const Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseMaximumWireBytes* = 1
const Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseCodecIdentity* = "UWVMROS1_cd5c9ca75201a47ae2eb04ec69ecea7762257b946bb2777a2c7224b51515775d"
const Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseNativeType* = "pal_detection_msgs/ChangeObjectRecognizerModelResponse"
const Ros1Pal_detection_msgsChangeObjectRecognizerModelResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsChangeObjectRecognizerModelResponse*(): Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse =
  result.`status` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse; w: var Writer) =
  putBool(w,value.`status`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsChangeObjectRecognizerModelResponse*(r: var Reader): Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse =
  result = initRos1Pal_detection_msgsChangeObjectRecognizerModelResponse()
  result.`status` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsChangeObjectRecognizerModelResponse*(b: seq[byte]): Ros1Pal_detection_msgsChangeObjectRecognizerModelResponse =
  var r = initReader(b,1)
  result = readRos1Pal_detection_msgsChangeObjectRecognizerModelResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/Detection2d.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsDetection2d* = object
  ## @brief Preserve original x as int64.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `x`*: int64
  ## @brief Preserve original y as int64.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `y`*: int64
  ## @brief Preserve original width as int64.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `width`*: int64
  ## @brief Preserve original height as int64.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `height`*: int64
const Ros1Pal_detection_msgsDetection2dMaximumWireBytes* = 32
const Ros1Pal_detection_msgsDetection2dCodecIdentity* = "UWVMROS1_4f0e64fd7996b772586fce060823565b53147a7b29456c8a3b5f8fa48e81663e"
const Ros1Pal_detection_msgsDetection2dNativeType* = "pal_detection_msgs/Detection2d"
const Ros1Pal_detection_msgsDetection2dNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsDetection2d*(): Ros1Pal_detection_msgsDetection2d =
  result.`x` = 0
  result.`y` = 0
  result.`width` = 0
  result.`height` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsDetection2d; w: var Writer) =
  putInteger(w,value.`x`)
  putInteger(w,value.`y`)
  putInteger(w,value.`width`)
  putInteger(w,value.`height`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsDetection2d*(r: var Reader): Ros1Pal_detection_msgsDetection2d =
  result = initRos1Pal_detection_msgsDetection2d()
  result.`x` = getInteger(r,int64)
  result.`y` = getInteger(r,int64)
  result.`width` = getInteger(r,int64)
  result.`height` = getInteger(r,int64)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsDetection2d): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsDetection2d*(b: seq[byte]): Ros1Pal_detection_msgsDetection2d =
  var r = initReader(b,32)
  result = readRos1Pal_detection_msgsDetection2d(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/Detections2d.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsDetections2d* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original detections as pal_detection_msgs/Detection2d.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `detections`*: seq[Ros1Pal_detection_msgsDetection2d]
  ## @brief Preserve original camera_pose as geometry_msgs/TransformStamped.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `camera_pose`*: Ros1Geometry_msgsTransformStamped
const Ros1Pal_detection_msgsDetections2dMaximumWireBytes* = 608
const Ros1Pal_detection_msgsDetections2dCodecIdentity* = "UWVMROS1_0b21e2e5d47b2e4e46f46506940a84b3df0acef77d7e3c66716bc9cc7b0b8e04"
const Ros1Pal_detection_msgsDetections2dNativeType* = "pal_detection_msgs/Detections2d"
const Ros1Pal_detection_msgsDetections2dNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsDetections2d*(): Ros1Pal_detection_msgsDetections2d =
  result.`header` = initRos1Std_msgsHeader()
  result.`detections` = @[]
  result.`camera_pose` = initRos1Geometry_msgsTransformStamped()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsDetections2d; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`detections`.len > 4: fail(22)
  putInteger(w,uint32(value.`detections`.len))
  for e in value.`detections`:
    writeFields(e,w)
  writeFields(value.`camera_pose`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsDetections2d*(r: var Reader): Ros1Pal_detection_msgsDetections2d =
  result = initRos1Pal_detection_msgsDetections2d()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`detections` = newSeq[Ros1Pal_detection_msgsDetection2d](count1)
  for i in 0..<count1:
    result.`detections`[i] = readRos1Pal_detection_msgsDetection2d(r)
  result.`camera_pose` = readRos1Geometry_msgsTransformStamped(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsDetections2d): seq[byte] =
  var w = initWriter(608)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsDetections2d*(b: seq[byte]): Ros1Pal_detection_msgsDetections2d =
  var r = initReader(b,608)
  result = readRos1Pal_detection_msgsDetections2d(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/FaceDetection.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsFaceDetection* = object
  ## @brief Preserve original x as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `x`*: int32
  ## @brief Preserve original y as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `y`*: int32
  ## @brief Preserve original width as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `width`*: int32
  ## @brief Preserve original height as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `height`*: int32
  ## @brief Preserve original eyesLocated as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `eyesLocated`*: bool
  ## @brief Preserve original leftEyeX as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leftEyeX`*: int32
  ## @brief Preserve original leftEyeY as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leftEyeY`*: int32
  ## @brief Preserve original rightEyeX as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `rightEyeX`*: int32
  ## @brief Preserve original rightEyeY as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `rightEyeY`*: int32
  ## @brief Preserve original position as geometry_msgs/Point32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `position`*: Ros1Geometry_msgsPoint32
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original confidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `confidence`*: float32
  ## @brief Preserve original gender as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `gender`*: string
  ## @brief Preserve original genderConfidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `genderConfidence`*: float32
  ## @brief Preserve original expression as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `expression`*: string
  ## @brief Preserve original expression_confidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `expression_confidence`*: float32
  ## @brief Preserve original emotion_anger_confidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `emotion_anger_confidence`*: float32
  ## @brief Preserve original emotion_disgust_confidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `emotion_disgust_confidence`*: float32
  ## @brief Preserve original emotion_fear_confidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `emotion_fear_confidence`*: float32
  ## @brief Preserve original emotion_happiness_confidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `emotion_happiness_confidence`*: float32
  ## @brief Preserve original emotion_neutral_confidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `emotion_neutral_confidence`*: float32
  ## @brief Preserve original emotion_sadness_confidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `emotion_sadness_confidence`*: float32
  ## @brief Preserve original emotion_surprise_confidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `emotion_surprise_confidence`*: float32
const Ros1Pal_detection_msgsFaceDetectionMaximumWireBytes* = 481
const Ros1Pal_detection_msgsFaceDetectionCodecIdentity* = "UWVMROS1_792fe21dbe06a6a47493a66571ff9b324dba17447855965b2e4f3e79cd302395"
const Ros1Pal_detection_msgsFaceDetectionNativeType* = "pal_detection_msgs/FaceDetection"
const Ros1Pal_detection_msgsFaceDetectionNativeIdentity* = ""
const Ros1Pal_detection_msgsFaceDetection_EXPRESSION_NEUTRAL*: string = "\x6e\x65\x75\x74\x72\x61\x6c"
const Ros1Pal_detection_msgsFaceDetection_EXPRESSION_SMILE*: string = "\x73\x6d\x69\x6c\x65"
const Ros1Pal_detection_msgsFaceDetection_EXPRESSION_RAISED_BROWS*: string = "\x72\x61\x69\x73\x65\x64\x20\x62\x72\x6f\x77\x73"
const Ros1Pal_detection_msgsFaceDetection_EXPRESSION_EYES_AWAY*: string = "\x65\x79\x65\x73\x20\x61\x77\x61\x79"
const Ros1Pal_detection_msgsFaceDetection_EXPRESSION_SQUINTING*: string = "\x73\x71\x75\x69\x6e\x74\x69\x6e\x67"
const Ros1Pal_detection_msgsFaceDetection_EXPRESSION_FROWNING*: string = "\x66\x72\x6f\x77\x6e\x69\x6e\x67"
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsFaceDetection*(): Ros1Pal_detection_msgsFaceDetection =
  result.`x` = 0
  result.`y` = 0
  result.`width` = 0
  result.`height` = 0
  result.`eyesLocated` = false
  result.`leftEyeX` = 0
  result.`leftEyeY` = 0
  result.`rightEyeX` = 0
  result.`rightEyeY` = 0
  result.`position` = initRos1Geometry_msgsPoint32()
  result.`name` = ""
  result.`confidence` = 0
  result.`gender` = ""
  result.`genderConfidence` = 0
  result.`expression` = ""
  result.`expression_confidence` = 0
  result.`emotion_anger_confidence` = 0
  result.`emotion_disgust_confidence` = 0
  result.`emotion_fear_confidence` = 0
  result.`emotion_happiness_confidence` = 0
  result.`emotion_neutral_confidence` = 0
  result.`emotion_sadness_confidence` = 0
  result.`emotion_surprise_confidence` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsFaceDetection; w: var Writer) =
  putInteger(w,value.`x`)
  putInteger(w,value.`y`)
  putInteger(w,value.`width`)
  putInteger(w,value.`height`)
  putBool(w,value.`eyesLocated`)
  putInteger(w,value.`leftEyeX`)
  putInteger(w,value.`leftEyeY`)
  putInteger(w,value.`rightEyeX`)
  putInteger(w,value.`rightEyeY`)
  writeFields(value.`position`,w)
  putString(w,value.`name`,128)
  putFloat32(w,value.`confidence`)
  putString(w,value.`gender`,128)
  putFloat32(w,value.`genderConfidence`)
  putString(w,value.`expression`,128)
  putFloat32(w,value.`expression_confidence`)
  putFloat32(w,value.`emotion_anger_confidence`)
  putFloat32(w,value.`emotion_disgust_confidence`)
  putFloat32(w,value.`emotion_fear_confidence`)
  putFloat32(w,value.`emotion_happiness_confidence`)
  putFloat32(w,value.`emotion_neutral_confidence`)
  putFloat32(w,value.`emotion_sadness_confidence`)
  putFloat32(w,value.`emotion_surprise_confidence`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsFaceDetection*(r: var Reader): Ros1Pal_detection_msgsFaceDetection =
  result = initRos1Pal_detection_msgsFaceDetection()
  result.`x` = getInteger(r,int32)
  result.`y` = getInteger(r,int32)
  result.`width` = getInteger(r,int32)
  result.`height` = getInteger(r,int32)
  result.`eyesLocated` = getBool(r)
  result.`leftEyeX` = getInteger(r,int32)
  result.`leftEyeY` = getInteger(r,int32)
  result.`rightEyeX` = getInteger(r,int32)
  result.`rightEyeY` = getInteger(r,int32)
  result.`position` = readRos1Geometry_msgsPoint32(r)
  result.`name` = getString(r,128)
  result.`confidence` = getFloat32(r)
  result.`gender` = getString(r,128)
  result.`genderConfidence` = getFloat32(r)
  result.`expression` = getString(r,128)
  result.`expression_confidence` = getFloat32(r)
  result.`emotion_anger_confidence` = getFloat32(r)
  result.`emotion_disgust_confidence` = getFloat32(r)
  result.`emotion_fear_confidence` = getFloat32(r)
  result.`emotion_happiness_confidence` = getFloat32(r)
  result.`emotion_neutral_confidence` = getFloat32(r)
  result.`emotion_sadness_confidence` = getFloat32(r)
  result.`emotion_surprise_confidence` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsFaceDetection): seq[byte] =
  var w = initWriter(481)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsFaceDetection*(b: seq[byte]): Ros1Pal_detection_msgsFaceDetection =
  var r = initReader(b,481)
  result = readRos1Pal_detection_msgsFaceDetection(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/FaceDetections.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsFaceDetections* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original faces as pal_detection_msgs/FaceDetection.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `faces`*: seq[Ros1Pal_detection_msgsFaceDetection]
  ## @brief Preserve original camera_pose as geometry_msgs/TransformStamped.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `camera_pose`*: Ros1Geometry_msgsTransformStamped
const Ros1Pal_detection_msgsFaceDetectionsMaximumWireBytes* = 2404
const Ros1Pal_detection_msgsFaceDetectionsCodecIdentity* = "UWVMROS1_ee4b1061b4a4d0bd25f5f2ae4725248e53c82181ab685036cc246100f6019a4b"
const Ros1Pal_detection_msgsFaceDetectionsNativeType* = "pal_detection_msgs/FaceDetections"
const Ros1Pal_detection_msgsFaceDetectionsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsFaceDetections*(): Ros1Pal_detection_msgsFaceDetections =
  result.`header` = initRos1Std_msgsHeader()
  result.`faces` = @[]
  result.`camera_pose` = initRos1Geometry_msgsTransformStamped()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsFaceDetections; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`faces`.len > 4: fail(22)
  putInteger(w,uint32(value.`faces`.len))
  for e in value.`faces`:
    writeFields(e,w)
  writeFields(value.`camera_pose`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsFaceDetections*(r: var Reader): Ros1Pal_detection_msgsFaceDetections =
  result = initRos1Pal_detection_msgsFaceDetections()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`faces` = newSeq[Ros1Pal_detection_msgsFaceDetection](count1)
  for i in 0..<count1:
    result.`faces`[i] = readRos1Pal_detection_msgsFaceDetection(r)
  result.`camera_pose` = readRos1Geometry_msgsTransformStamped(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsFaceDetections): seq[byte] =
  var w = initWriter(2404)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsFaceDetections*(b: seq[byte]): Ros1Pal_detection_msgsFaceDetections =
  var r = initReader(b,2404)
  result = readRos1Pal_detection_msgsFaceDetections(r)
  finish(r)
## @brief Own every original field of ROS1 sensor_msgs/RegionOfInterest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Sensor_msgsRegionOfInterest* = object
  ## @brief Preserve original x_offset as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `x_offset`*: uint32
  ## @brief Preserve original y_offset as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `y_offset`*: uint32
  ## @brief Preserve original height as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `height`*: uint32
  ## @brief Preserve original width as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `width`*: uint32
  ## @brief Preserve original do_rectify as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `do_rectify`*: bool
const Ros1Sensor_msgsRegionOfInterestMaximumWireBytes* = 17
const Ros1Sensor_msgsRegionOfInterestCodecIdentity* = "UWVMROS1_28eb54e504fa3d32a4848f5b534e998656e34ce4fee49fd120b0fd729e569c86"
const Ros1Sensor_msgsRegionOfInterestNativeType* = "sensor_msgs/RegionOfInterest"
const Ros1Sensor_msgsRegionOfInterestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Sensor_msgsRegionOfInterest*(): Ros1Sensor_msgsRegionOfInterest =
  result.`x_offset` = 0
  result.`y_offset` = 0
  result.`height` = 0
  result.`width` = 0
  result.`do_rectify` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Sensor_msgsRegionOfInterest; w: var Writer) =
  putInteger(w,value.`x_offset`)
  putInteger(w,value.`y_offset`)
  putInteger(w,value.`height`)
  putInteger(w,value.`width`)
  putBool(w,value.`do_rectify`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Sensor_msgsRegionOfInterest*(r: var Reader): Ros1Sensor_msgsRegionOfInterest =
  result = initRos1Sensor_msgsRegionOfInterest()
  result.`x_offset` = getInteger(r,uint32)
  result.`y_offset` = getInteger(r,uint32)
  result.`height` = getInteger(r,uint32)
  result.`width` = getInteger(r,uint32)
  result.`do_rectify` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Sensor_msgsRegionOfInterest): seq[byte] =
  var w = initWriter(17)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Sensor_msgsRegionOfInterest*(b: seq[byte]): Ros1Sensor_msgsRegionOfInterest =
  var r = initReader(b,17)
  result = readRos1Sensor_msgsRegionOfInterest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/FaceThermalDetections.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsFaceThermalDetections* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original faces as sensor_msgs/RegionOfInterest.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `faces`*: seq[Ros1Sensor_msgsRegionOfInterest]
const Ros1Pal_detection_msgsFaceThermalDetectionsMaximumWireBytes* = 216
const Ros1Pal_detection_msgsFaceThermalDetectionsCodecIdentity* = "UWVMROS1_056b2da5537a5a7a7cb428e134dc11c22e271780146febf7af837a516fb9b07d"
const Ros1Pal_detection_msgsFaceThermalDetectionsNativeType* = "pal_detection_msgs/FaceThermalDetections"
const Ros1Pal_detection_msgsFaceThermalDetectionsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsFaceThermalDetections*(): Ros1Pal_detection_msgsFaceThermalDetections =
  result.`header` = initRos1Std_msgsHeader()
  result.`faces` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsFaceThermalDetections; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`faces`.len > 4: fail(22)
  putInteger(w,uint32(value.`faces`.len))
  for e in value.`faces`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsFaceThermalDetections*(r: var Reader): Ros1Pal_detection_msgsFaceThermalDetections =
  result = initRos1Pal_detection_msgsFaceThermalDetections()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`faces` = newSeq[Ros1Sensor_msgsRegionOfInterest](count1)
  for i in 0..<count1:
    result.`faces`[i] = readRos1Sensor_msgsRegionOfInterest(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsFaceThermalDetections): seq[byte] =
  var w = initWriter(216)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsFaceThermalDetections*(b: seq[byte]): Ros1Pal_detection_msgsFaceThermalDetections =
  var r = initReader(b,216)
  result = readRos1Pal_detection_msgsFaceThermalDetections(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/Gesture.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsGesture* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original gestureId as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `gestureId`*: string
  ## @brief Preserve original position3D as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `position3D`*: Ros1Geometry_msgsPoint
const Ros1Pal_detection_msgsGestureMaximumWireBytes* = 300
const Ros1Pal_detection_msgsGestureCodecIdentity* = "UWVMROS1_d9a3e3adffc40a24a70a967fa616ee81a8d21eb08d7656830e0915cd0945ac38"
const Ros1Pal_detection_msgsGestureNativeType* = "pal_detection_msgs/Gesture"
const Ros1Pal_detection_msgsGestureNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsGesture*(): Ros1Pal_detection_msgsGesture =
  result.`header` = initRos1Std_msgsHeader()
  result.`gestureId` = ""
  result.`position3D` = initRos1Geometry_msgsPoint()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsGesture; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`gestureId`,128)
  writeFields(value.`position3D`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsGesture*(r: var Reader): Ros1Pal_detection_msgsGesture =
  result = initRos1Pal_detection_msgsGesture()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`gestureId` = getString(r,128)
  result.`position3D` = readRos1Geometry_msgsPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsGesture): seq[byte] =
  var w = initWriter(300)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsGesture*(b: seq[byte]): Ros1Pal_detection_msgsGesture =
  var r = initReader(b,300)
  result = readRos1Pal_detection_msgsGesture(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/LegDetections.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsLegDetections* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original position3D as geometry_msgs/Point.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `position3D`*: seq[Ros1Geometry_msgsPoint]
  ## @brief Preserve original laser_pose as geometry_msgs/TransformStamped.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `laser_pose`*: Ros1Geometry_msgsTransformStamped
const Ros1Pal_detection_msgsLegDetectionsMaximumWireBytes* = 576
const Ros1Pal_detection_msgsLegDetectionsCodecIdentity* = "UWVMROS1_eaaabdd63d786de0b4bf51199a211f86024e9f835ede77f9bcf92dc77f67ac1d"
const Ros1Pal_detection_msgsLegDetectionsNativeType* = "pal_detection_msgs/LegDetections"
const Ros1Pal_detection_msgsLegDetectionsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsLegDetections*(): Ros1Pal_detection_msgsLegDetections =
  result.`header` = initRos1Std_msgsHeader()
  result.`position3D` = @[]
  result.`laser_pose` = initRos1Geometry_msgsTransformStamped()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsLegDetections; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`position3D`.len > 4: fail(22)
  putInteger(w,uint32(value.`position3D`.len))
  for e in value.`position3D`:
    writeFields(e,w)
  writeFields(value.`laser_pose`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsLegDetections*(r: var Reader): Ros1Pal_detection_msgsLegDetections =
  result = initRos1Pal_detection_msgsLegDetections()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`position3D` = newSeq[Ros1Geometry_msgsPoint](count1)
  for i in 0..<count1:
    result.`position3D`[i] = readRos1Geometry_msgsPoint(r)
  result.`laser_pose` = readRos1Geometry_msgsTransformStamped(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsLegDetections): seq[byte] =
  var w = initWriter(576)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsLegDetections*(b: seq[byte]): Ros1Pal_detection_msgsLegDetections =
  var r = initReader(b,576)
  result = readRos1Pal_detection_msgsLegDetections(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/Obstacle.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsObstacle* = object
  ## @brief Preserve original id as int64.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `id`*: int64
  ## @brief Preserve original position as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `position`*: Ros1Geometry_msgsPoint
  ## @brief Preserve original position_covariance as float64.
  ## @details Exactly 4 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `position_covariance`*: array[4,float64]
  ## @brief Preserve original width as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `width`*: float32
  ## @brief Preserve original height as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `height`*: float32
const Ros1Pal_detection_msgsObstacleMaximumWireBytes* = 72
const Ros1Pal_detection_msgsObstacleCodecIdentity* = "UWVMROS1_ebc85fb238f48ed8d9d595afd92f5f28c4ead850154e350733e09ec1d407c661"
const Ros1Pal_detection_msgsObstacleNativeType* = "pal_detection_msgs/Obstacle"
const Ros1Pal_detection_msgsObstacleNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsObstacle*(): Ros1Pal_detection_msgsObstacle =
  result.`id` = 0
  result.`position` = initRos1Geometry_msgsPoint()
  result.`position_covariance` = [0,0,0,0]
  result.`width` = 0
  result.`height` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsObstacle; w: var Writer) =
  putInteger(w,value.`id`)
  writeFields(value.`position`,w)
  for e in value.`position_covariance`:
    putFloat64(w,e)
  putFloat32(w,value.`width`)
  putFloat32(w,value.`height`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsObstacle*(r: var Reader): Ros1Pal_detection_msgsObstacle =
  result = initRos1Pal_detection_msgsObstacle()
  result.`id` = getInteger(r,int64)
  result.`position` = readRos1Geometry_msgsPoint(r)
  let count2 = 4
  for i in 0..<count2:
    result.`position_covariance`[i] = getFloat64(r)
  result.`width` = getFloat32(r)
  result.`height` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsObstacle): seq[byte] =
  var w = initWriter(72)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsObstacle*(b: seq[byte]): Ros1Pal_detection_msgsObstacle =
  var r = initReader(b,72)
  result = readRos1Pal_detection_msgsObstacle(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/Obstacles.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsObstacles* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original obstacles as pal_detection_msgs/Obstacle.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `obstacles`*: seq[Ros1Pal_detection_msgsObstacle]
const Ros1Pal_detection_msgsObstaclesMaximumWireBytes* = 436
const Ros1Pal_detection_msgsObstaclesCodecIdentity* = "UWVMROS1_4dba9077149d1e00d54b01031f5de9ef885904c00e2ec10b262302fccb86fe7e"
const Ros1Pal_detection_msgsObstaclesNativeType* = "pal_detection_msgs/Obstacles"
const Ros1Pal_detection_msgsObstaclesNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsObstacles*(): Ros1Pal_detection_msgsObstacles =
  result.`header` = initRos1Std_msgsHeader()
  result.`obstacles` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsObstacles; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`obstacles`.len > 4: fail(22)
  putInteger(w,uint32(value.`obstacles`.len))
  for e in value.`obstacles`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsObstacles*(r: var Reader): Ros1Pal_detection_msgsObstacles =
  result = initRos1Pal_detection_msgsObstacles()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`obstacles` = newSeq[Ros1Pal_detection_msgsObstacle](count1)
  for i in 0..<count1:
    result.`obstacles`[i] = readRos1Pal_detection_msgsObstacle(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsObstacles): seq[byte] =
  var w = initWriter(436)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsObstacles*(b: seq[byte]): Ros1Pal_detection_msgsObstacles =
  var r = initReader(b,436)
  result = readRos1Pal_detection_msgsObstacles(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/PersonDetection.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsPersonDetection* = object
  ## @brief Preserve original full_body as pal_detection_msgs/Detection2d.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `full_body`*: Ros1Pal_detection_msgsDetection2d
  ## @brief Preserve original face as pal_detection_msgs/FaceDetection.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `face`*: Ros1Pal_detection_msgsFaceDetection
  ## @brief Preserve original legs as pal_detection_msgs/LegDetections.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `legs`*: Ros1Pal_detection_msgsLegDetections
  ## @brief Preserve original position3D as geometry_msgs/PointStamped.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `position3D`*: Ros1Geometry_msgsPointStamped
const Ros1Pal_detection_msgsPersonDetectionMaximumWireBytes* = 1257
const Ros1Pal_detection_msgsPersonDetectionCodecIdentity* = "UWVMROS1_4da91c014135c4fc077060bdfdde36f82e41d45729fe56642b33b83157d07853"
const Ros1Pal_detection_msgsPersonDetectionNativeType* = "pal_detection_msgs/PersonDetection"
const Ros1Pal_detection_msgsPersonDetectionNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsPersonDetection*(): Ros1Pal_detection_msgsPersonDetection =
  result.`full_body` = initRos1Pal_detection_msgsDetection2d()
  result.`face` = initRos1Pal_detection_msgsFaceDetection()
  result.`legs` = initRos1Pal_detection_msgsLegDetections()
  result.`position3D` = initRos1Geometry_msgsPointStamped()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsPersonDetection; w: var Writer) =
  writeFields(value.`full_body`,w)
  writeFields(value.`face`,w)
  writeFields(value.`legs`,w)
  writeFields(value.`position3D`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsPersonDetection*(r: var Reader): Ros1Pal_detection_msgsPersonDetection =
  result = initRos1Pal_detection_msgsPersonDetection()
  result.`full_body` = readRos1Pal_detection_msgsDetection2d(r)
  result.`face` = readRos1Pal_detection_msgsFaceDetection(r)
  result.`legs` = readRos1Pal_detection_msgsLegDetections(r)
  result.`position3D` = readRos1Geometry_msgsPointStamped(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsPersonDetection): seq[byte] =
  var w = initWriter(1257)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsPersonDetection*(b: seq[byte]): Ros1Pal_detection_msgsPersonDetection =
  var r = initReader(b,1257)
  result = readRos1Pal_detection_msgsPersonDetection(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/PersonDetections.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsPersonDetections* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original persons as pal_detection_msgs/PersonDetection.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `persons`*: seq[Ros1Pal_detection_msgsPersonDetection]
  ## @brief Preserve original camera_pose as geometry_msgs/TransformStamped.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `camera_pose`*: Ros1Geometry_msgsTransformStamped
const Ros1Pal_detection_msgsPersonDetectionsMaximumWireBytes* = 5508
const Ros1Pal_detection_msgsPersonDetectionsCodecIdentity* = "UWVMROS1_cafbf2a5df82057119e9638012e379e0126c0cb951ca159747ebe69c1ed0fd91"
const Ros1Pal_detection_msgsPersonDetectionsNativeType* = "pal_detection_msgs/PersonDetections"
const Ros1Pal_detection_msgsPersonDetectionsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsPersonDetections*(): Ros1Pal_detection_msgsPersonDetections =
  result.`header` = initRos1Std_msgsHeader()
  result.`persons` = @[]
  result.`camera_pose` = initRos1Geometry_msgsTransformStamped()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsPersonDetections; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`persons`.len > 4: fail(22)
  putInteger(w,uint32(value.`persons`.len))
  for e in value.`persons`:
    writeFields(e,w)
  writeFields(value.`camera_pose`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsPersonDetections*(r: var Reader): Ros1Pal_detection_msgsPersonDetections =
  result = initRos1Pal_detection_msgsPersonDetections()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`persons` = newSeq[Ros1Pal_detection_msgsPersonDetection](count1)
  for i in 0..<count1:
    result.`persons`[i] = readRos1Pal_detection_msgsPersonDetection(r)
  result.`camera_pose` = readRos1Geometry_msgsTransformStamped(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsPersonDetections): seq[byte] =
  var w = initWriter(5508)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsPersonDetections*(b: seq[byte]): Ros1Pal_detection_msgsPersonDetections =
  var r = initReader(b,5508)
  result = readRos1Pal_detection_msgsPersonDetections(r)
  finish(r)
## @brief Own every original field of ROS1 sensor_msgs/CompressedImage.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Sensor_msgsCompressedImage* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original format as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `format`*: string
  ## @brief Preserve original data as uint8.
  ## @details At most 4096 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `data`*: seq[uint8]
const Ros1Sensor_msgsCompressedImageMaximumWireBytes* = 4376
const Ros1Sensor_msgsCompressedImageCodecIdentity* = "UWVMROS1_c72a32a46b8b10037ccaa32f7c5d403f908eed838df86faf2c7d36344cea958d"
const Ros1Sensor_msgsCompressedImageNativeType* = "sensor_msgs/CompressedImage"
const Ros1Sensor_msgsCompressedImageNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Sensor_msgsCompressedImage*(): Ros1Sensor_msgsCompressedImage =
  result.`header` = initRos1Std_msgsHeader()
  result.`format` = ""
  result.`data` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Sensor_msgsCompressedImage; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`format`,128)
  if value.`data`.len > 4096: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Sensor_msgsCompressedImage*(r: var Reader): Ros1Sensor_msgsCompressedImage =
  result = initRos1Sensor_msgsCompressedImage()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`format` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4096: fail(22)
  let count2 = int(rawcount2)
  result.`data` = newSeq[uint8](count2)
  for i in 0..<count2:
    result.`data`[i] = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Sensor_msgsCompressedImage): seq[byte] =
  var w = initWriter(4376)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Sensor_msgsCompressedImage*(b: seq[byte]): Ros1Sensor_msgsCompressedImage =
  var r = initReader(b,4376)
  result = readRos1Sensor_msgsCompressedImage(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/RecognizeObjectsGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsRecognizeObjectsGoal* = object
  ## @brief Preserve original input_image as sensor_msgs/CompressedImage.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `input_image`*: Ros1Sensor_msgsCompressedImage
const Ros1Pal_detection_msgsRecognizeObjectsGoalMaximumWireBytes* = 4376
const Ros1Pal_detection_msgsRecognizeObjectsGoalCodecIdentity* = "UWVMROS1_9d87bc6c703c50a0b900a7d4bdcefeda5363c5b2f9affe4e9466a3b4f6dfc585"
const Ros1Pal_detection_msgsRecognizeObjectsGoalNativeType* = "pal_detection_msgs/RecognizeObjectsGoal"
const Ros1Pal_detection_msgsRecognizeObjectsGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsRecognizeObjectsGoal*(): Ros1Pal_detection_msgsRecognizeObjectsGoal =
  result.`input_image` = initRos1Sensor_msgsCompressedImage()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsRecognizeObjectsGoal; w: var Writer) =
  writeFields(value.`input_image`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsRecognizeObjectsGoal*(r: var Reader): Ros1Pal_detection_msgsRecognizeObjectsGoal =
  result = initRos1Pal_detection_msgsRecognizeObjectsGoal()
  result.`input_image` = readRos1Sensor_msgsCompressedImage(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsRecognizeObjectsGoal): seq[byte] =
  var w = initWriter(4376)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsRecognizeObjectsGoal*(b: seq[byte]): Ros1Pal_detection_msgsRecognizeObjectsGoal =
  var r = initReader(b,4376)
  result = readRos1Pal_detection_msgsRecognizeObjectsGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/RecognizedObject.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsRecognizedObject* = object
  ## @brief Preserve original object_class as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `object_class`*: string
  ## @brief Preserve original confidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `confidence`*: float32
  ## @brief Preserve original bounding_box as sensor_msgs/RegionOfInterest.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `bounding_box`*: Ros1Sensor_msgsRegionOfInterest
const Ros1Pal_detection_msgsRecognizedObjectMaximumWireBytes* = 153
const Ros1Pal_detection_msgsRecognizedObjectCodecIdentity* = "UWVMROS1_36cc36b8ff12ed25b3feadadc7e58a76c1e9c57aaa68b2a295c341c5075203fd"
const Ros1Pal_detection_msgsRecognizedObjectNativeType* = "pal_detection_msgs/RecognizedObject"
const Ros1Pal_detection_msgsRecognizedObjectNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsRecognizedObject*(): Ros1Pal_detection_msgsRecognizedObject =
  result.`object_class` = ""
  result.`confidence` = 0
  result.`bounding_box` = initRos1Sensor_msgsRegionOfInterest()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsRecognizedObject; w: var Writer) =
  putString(w,value.`object_class`,128)
  putFloat32(w,value.`confidence`)
  writeFields(value.`bounding_box`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsRecognizedObject*(r: var Reader): Ros1Pal_detection_msgsRecognizedObject =
  result = initRos1Pal_detection_msgsRecognizedObject()
  result.`object_class` = getString(r,128)
  result.`confidence` = getFloat32(r)
  result.`bounding_box` = readRos1Sensor_msgsRegionOfInterest(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsRecognizedObject): seq[byte] =
  var w = initWriter(153)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsRecognizedObject*(b: seq[byte]): Ros1Pal_detection_msgsRecognizedObject =
  var r = initReader(b,153)
  result = readRos1Pal_detection_msgsRecognizedObject(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/RecognizedObjectArray.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsRecognizedObjectArray* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original objects as pal_detection_msgs/RecognizedObject.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `objects`*: seq[Ros1Pal_detection_msgsRecognizedObject]
const Ros1Pal_detection_msgsRecognizedObjectArrayMaximumWireBytes* = 760
const Ros1Pal_detection_msgsRecognizedObjectArrayCodecIdentity* = "UWVMROS1_8d781116572e1ba9b5cc79b9d4ae844c64e3ef56a274da3de56cc2400baa51e0"
const Ros1Pal_detection_msgsRecognizedObjectArrayNativeType* = "pal_detection_msgs/RecognizedObjectArray"
const Ros1Pal_detection_msgsRecognizedObjectArrayNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsRecognizedObjectArray*(): Ros1Pal_detection_msgsRecognizedObjectArray =
  result.`header` = initRos1Std_msgsHeader()
  result.`objects` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsRecognizedObjectArray; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`objects`.len > 4: fail(22)
  putInteger(w,uint32(value.`objects`.len))
  for e in value.`objects`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsRecognizedObjectArray*(r: var Reader): Ros1Pal_detection_msgsRecognizedObjectArray =
  result = initRos1Pal_detection_msgsRecognizedObjectArray()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`objects` = newSeq[Ros1Pal_detection_msgsRecognizedObject](count1)
  for i in 0..<count1:
    result.`objects`[i] = readRos1Pal_detection_msgsRecognizedObject(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsRecognizedObjectArray): seq[byte] =
  var w = initWriter(760)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsRecognizedObjectArray*(b: seq[byte]): Ros1Pal_detection_msgsRecognizedObjectArray =
  var r = initReader(b,760)
  result = readRos1Pal_detection_msgsRecognizedObjectArray(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/RecognizeObjectsResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsRecognizeObjectsResult* = object
  ## @brief Preserve original image as sensor_msgs/CompressedImage.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `image`*: Ros1Sensor_msgsCompressedImage
  ## @brief Preserve original num_detections as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `num_detections`*: int16
  ## @brief Preserve original recognized_objects as pal_detection_msgs/RecognizedObjectArray.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `recognized_objects`*: Ros1Pal_detection_msgsRecognizedObjectArray
const Ros1Pal_detection_msgsRecognizeObjectsResultMaximumWireBytes* = 5138
const Ros1Pal_detection_msgsRecognizeObjectsResultCodecIdentity* = "UWVMROS1_1d30540a71461481094e70b11d19c4a327881fd6ed81689bc948b3de5853b8da"
const Ros1Pal_detection_msgsRecognizeObjectsResultNativeType* = "pal_detection_msgs/RecognizeObjectsResult"
const Ros1Pal_detection_msgsRecognizeObjectsResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsRecognizeObjectsResult*(): Ros1Pal_detection_msgsRecognizeObjectsResult =
  result.`image` = initRos1Sensor_msgsCompressedImage()
  result.`num_detections` = 0
  result.`recognized_objects` = initRos1Pal_detection_msgsRecognizedObjectArray()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsRecognizeObjectsResult; w: var Writer) =
  writeFields(value.`image`,w)
  putInteger(w,value.`num_detections`)
  writeFields(value.`recognized_objects`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsRecognizeObjectsResult*(r: var Reader): Ros1Pal_detection_msgsRecognizeObjectsResult =
  result = initRos1Pal_detection_msgsRecognizeObjectsResult()
  result.`image` = readRos1Sensor_msgsCompressedImage(r)
  result.`num_detections` = getInteger(r,int16)
  result.`recognized_objects` = readRos1Pal_detection_msgsRecognizedObjectArray(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsRecognizeObjectsResult): seq[byte] =
  var w = initWriter(5138)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsRecognizeObjectsResult*(b: seq[byte]): Ros1Pal_detection_msgsRecognizeObjectsResult =
  var r = initReader(b,5138)
  result = readRos1Pal_detection_msgsRecognizeObjectsResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/RecognizeObjectsFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsRecognizeObjectsFeedback* = object
const Ros1Pal_detection_msgsRecognizeObjectsFeedbackMaximumWireBytes* = 0
const Ros1Pal_detection_msgsRecognizeObjectsFeedbackCodecIdentity* = "UWVMROS1_c18fdb9db683f1ae2a17cc0a7cdc2bcc3ca060ef0c05cacb4defc35af0829f94"
const Ros1Pal_detection_msgsRecognizeObjectsFeedbackNativeType* = "pal_detection_msgs/RecognizeObjectsFeedback"
const Ros1Pal_detection_msgsRecognizeObjectsFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsRecognizeObjectsFeedback*(): Ros1Pal_detection_msgsRecognizeObjectsFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsRecognizeObjectsFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsRecognizeObjectsFeedback*(r: var Reader): Ros1Pal_detection_msgsRecognizeObjectsFeedback =
  result = initRos1Pal_detection_msgsRecognizeObjectsFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsRecognizeObjectsFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsRecognizeObjectsFeedback*(b: seq[byte]): Ros1Pal_detection_msgsRecognizeObjectsFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_detection_msgsRecognizeObjectsFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/RecognizedActions.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsRecognizedActions* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original action_name as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `action_name`*: seq[string]
  ## @brief Preserve original u as int64.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `u`*: seq[int64]
  ## @brief Preserve original v as int64.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `v`*: seq[int64]
const Ros1Pal_detection_msgsRecognizedActionsMaximumWireBytes* = 2524
const Ros1Pal_detection_msgsRecognizedActionsCodecIdentity* = "UWVMROS1_b061282e0a4039af635d355d554c8f93af760ff116dfae31f36535b8b9378c33"
const Ros1Pal_detection_msgsRecognizedActionsNativeType* = "pal_detection_msgs/RecognizedActions"
const Ros1Pal_detection_msgsRecognizedActionsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsRecognizedActions*(): Ros1Pal_detection_msgsRecognizedActions =
  result.`header` = initRos1Std_msgsHeader()
  result.`action_name` = @[]
  result.`u` = @[]
  result.`v` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsRecognizedActions; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`action_name`.len > 16: fail(22)
  putInteger(w,uint32(value.`action_name`.len))
  for e in value.`action_name`:
    putString(w,e,128)
  if value.`u`.len > 16: fail(22)
  putInteger(w,uint32(value.`u`.len))
  for e in value.`u`:
    putInteger(w,e)
  if value.`v`.len > 16: fail(22)
  putInteger(w,uint32(value.`v`.len))
  for e in value.`v`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsRecognizedActions*(r: var Reader): Ros1Pal_detection_msgsRecognizedActions =
  result = initRos1Pal_detection_msgsRecognizedActions()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`action_name` = newSeq[string](count1)
  for i in 0..<count1:
    result.`action_name`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`u` = newSeq[int64](count2)
  for i in 0..<count2:
    result.`u`[i] = getInteger(r,int64)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`v` = newSeq[int64](count3)
  for i in 0..<count3:
    result.`v`[i] = getInteger(r,int64)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsRecognizedActions): seq[byte] =
  var w = initWriter(2524)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsRecognizedActions*(b: seq[byte]): Ros1Pal_detection_msgsRecognizedActions =
  var r = initReader(b,2524)
  result = readRos1Pal_detection_msgsRecognizedActions(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/RecognizerRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsRecognizerRequest* = object
  ## @brief Preserve original enabled as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `enabled`*: bool
  ## @brief Preserve original minConfidence as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `minConfidence`*: float32
const Ros1Pal_detection_msgsRecognizerRequestMaximumWireBytes* = 5
const Ros1Pal_detection_msgsRecognizerRequestCodecIdentity* = "UWVMROS1_0d3ff43e5e851b33f710c9477383884c1db45971e4959df5892abff59fe29f55"
const Ros1Pal_detection_msgsRecognizerRequestNativeType* = "pal_detection_msgs/RecognizerRequest"
const Ros1Pal_detection_msgsRecognizerRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsRecognizerRequest*(): Ros1Pal_detection_msgsRecognizerRequest =
  result.`enabled` = false
  result.`minConfidence` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsRecognizerRequest; w: var Writer) =
  putBool(w,value.`enabled`)
  putFloat32(w,value.`minConfidence`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsRecognizerRequest*(r: var Reader): Ros1Pal_detection_msgsRecognizerRequest =
  result = initRos1Pal_detection_msgsRecognizerRequest()
  result.`enabled` = getBool(r)
  result.`minConfidence` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsRecognizerRequest): seq[byte] =
  var w = initWriter(5)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsRecognizerRequest*(b: seq[byte]): Ros1Pal_detection_msgsRecognizerRequest =
  var r = initReader(b,5)
  result = readRos1Pal_detection_msgsRecognizerRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/RecognizerResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsRecognizerResponse* = object
const Ros1Pal_detection_msgsRecognizerResponseMaximumWireBytes* = 0
const Ros1Pal_detection_msgsRecognizerResponseCodecIdentity* = "UWVMROS1_604e61f18d602f79b4e5a4145530ded34ac47d7a0ed97185c31457cef365935a"
const Ros1Pal_detection_msgsRecognizerResponseNativeType* = "pal_detection_msgs/RecognizerResponse"
const Ros1Pal_detection_msgsRecognizerResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsRecognizerResponse*(): Ros1Pal_detection_msgsRecognizerResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsRecognizerResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsRecognizerResponse*(r: var Reader): Ros1Pal_detection_msgsRecognizerResponse =
  result = initRos1Pal_detection_msgsRecognizerResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsRecognizerResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsRecognizerResponse*(b: seq[byte]): Ros1Pal_detection_msgsRecognizerResponse =
  var r = initReader(b,0)
  result = readRos1Pal_detection_msgsRecognizerResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/RotatedDetection2d.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsRotatedDetection2d* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original x as int64.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `x`*: seq[int64]
  ## @brief Preserve original y as int64.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `y`*: seq[int64]
const Ros1Pal_detection_msgsRotatedDetection2dMaximumWireBytes* = 408
const Ros1Pal_detection_msgsRotatedDetection2dCodecIdentity* = "UWVMROS1_2f22137d0171356fffb61ee8f668d07f90deadad0f900a2aa83ee0edfde0e52d"
const Ros1Pal_detection_msgsRotatedDetection2dNativeType* = "pal_detection_msgs/RotatedDetection2d"
const Ros1Pal_detection_msgsRotatedDetection2dNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsRotatedDetection2d*(): Ros1Pal_detection_msgsRotatedDetection2d =
  result.`header` = initRos1Std_msgsHeader()
  result.`x` = @[]
  result.`y` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsRotatedDetection2d; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`x`.len > 16: fail(22)
  putInteger(w,uint32(value.`x`.len))
  for e in value.`x`:
    putInteger(w,e)
  if value.`y`.len > 16: fail(22)
  putInteger(w,uint32(value.`y`.len))
  for e in value.`y`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsRotatedDetection2d*(r: var Reader): Ros1Pal_detection_msgsRotatedDetection2d =
  result = initRos1Pal_detection_msgsRotatedDetection2d()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`x` = newSeq[int64](count1)
  for i in 0..<count1:
    result.`x`[i] = getInteger(r,int64)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`y` = newSeq[int64](count2)
  for i in 0..<count2:
    result.`y`[i] = getInteger(r,int64)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsRotatedDetection2d): seq[byte] =
  var w = initWriter(408)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsRotatedDetection2d*(b: seq[byte]): Ros1Pal_detection_msgsRotatedDetection2d =
  var r = initReader(b,408)
  result = readRos1Pal_detection_msgsRotatedDetection2d(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/SelectTexturedObjectRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsSelectTexturedObjectRequest* = object
  ## @brief Preserve original imageFullPathFileName as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `imageFullPathFileName`*: string
  ## @brief Preserve original width as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `width`*: float64
  ## @brief Preserve original height as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `height`*: float64
const Ros1Pal_detection_msgsSelectTexturedObjectRequestMaximumWireBytes* = 148
const Ros1Pal_detection_msgsSelectTexturedObjectRequestCodecIdentity* = "UWVMROS1_866b10e9fcb4e51c9aa5f5a9b7c9c36cbef544fd685f3cfd77de8a3b759e1004"
const Ros1Pal_detection_msgsSelectTexturedObjectRequestNativeType* = "pal_detection_msgs/SelectTexturedObjectRequest"
const Ros1Pal_detection_msgsSelectTexturedObjectRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsSelectTexturedObjectRequest*(): Ros1Pal_detection_msgsSelectTexturedObjectRequest =
  result.`imageFullPathFileName` = ""
  result.`width` = 0
  result.`height` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsSelectTexturedObjectRequest; w: var Writer) =
  putString(w,value.`imageFullPathFileName`,128)
  putFloat64(w,value.`width`)
  putFloat64(w,value.`height`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsSelectTexturedObjectRequest*(r: var Reader): Ros1Pal_detection_msgsSelectTexturedObjectRequest =
  result = initRos1Pal_detection_msgsSelectTexturedObjectRequest()
  result.`imageFullPathFileName` = getString(r,128)
  result.`width` = getFloat64(r)
  result.`height` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsSelectTexturedObjectRequest): seq[byte] =
  var w = initWriter(148)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsSelectTexturedObjectRequest*(b: seq[byte]): Ros1Pal_detection_msgsSelectTexturedObjectRequest =
  var r = initReader(b,148)
  result = readRos1Pal_detection_msgsSelectTexturedObjectRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/SelectTexturedObjectResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsSelectTexturedObjectResponse* = object
  ## @brief Preserve original result as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `result`*: bool
const Ros1Pal_detection_msgsSelectTexturedObjectResponseMaximumWireBytes* = 1
const Ros1Pal_detection_msgsSelectTexturedObjectResponseCodecIdentity* = "UWVMROS1_98857d1de78a0b8014ea0dfd0597f41b908869229b1ef9d815a983571180db22"
const Ros1Pal_detection_msgsSelectTexturedObjectResponseNativeType* = "pal_detection_msgs/SelectTexturedObjectResponse"
const Ros1Pal_detection_msgsSelectTexturedObjectResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsSelectTexturedObjectResponse*(): Ros1Pal_detection_msgsSelectTexturedObjectResponse =
  result.`result` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsSelectTexturedObjectResponse; w: var Writer) =
  putBool(w,value.`result`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsSelectTexturedObjectResponse*(r: var Reader): Ros1Pal_detection_msgsSelectTexturedObjectResponse =
  result = initRos1Pal_detection_msgsSelectTexturedObjectResponse()
  result.`result` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsSelectTexturedObjectResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsSelectTexturedObjectResponse*(b: seq[byte]): Ros1Pal_detection_msgsSelectTexturedObjectResponse =
  var r = initReader(b,1)
  result = readRos1Pal_detection_msgsSelectTexturedObjectResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/SetDatabaseRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsSetDatabaseRequest* = object
  ## @brief Preserve original databaseName as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `databaseName`*: string
  ## @brief Preserve original purgeAll as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `purgeAll`*: bool
const Ros1Pal_detection_msgsSetDatabaseRequestMaximumWireBytes* = 133
const Ros1Pal_detection_msgsSetDatabaseRequestCodecIdentity* = "UWVMROS1_fa4b3a519fcae8b8ac43d6e764203d720939a001c7f572e43e03c2f64904308b"
const Ros1Pal_detection_msgsSetDatabaseRequestNativeType* = "pal_detection_msgs/SetDatabaseRequest"
const Ros1Pal_detection_msgsSetDatabaseRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsSetDatabaseRequest*(): Ros1Pal_detection_msgsSetDatabaseRequest =
  result.`databaseName` = ""
  result.`purgeAll` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsSetDatabaseRequest; w: var Writer) =
  putString(w,value.`databaseName`,128)
  putBool(w,value.`purgeAll`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsSetDatabaseRequest*(r: var Reader): Ros1Pal_detection_msgsSetDatabaseRequest =
  result = initRos1Pal_detection_msgsSetDatabaseRequest()
  result.`databaseName` = getString(r,128)
  result.`purgeAll` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsSetDatabaseRequest): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsSetDatabaseRequest*(b: seq[byte]): Ros1Pal_detection_msgsSetDatabaseRequest =
  var r = initReader(b,133)
  result = readRos1Pal_detection_msgsSetDatabaseRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/SetDatabaseResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsSetDatabaseResponse* = object
const Ros1Pal_detection_msgsSetDatabaseResponseMaximumWireBytes* = 0
const Ros1Pal_detection_msgsSetDatabaseResponseCodecIdentity* = "UWVMROS1_31307d8d81296f69a5bb7dbd54bc10aea47a41b1d1458b6d5451d53bdc2f9b46"
const Ros1Pal_detection_msgsSetDatabaseResponseNativeType* = "pal_detection_msgs/SetDatabaseResponse"
const Ros1Pal_detection_msgsSetDatabaseResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsSetDatabaseResponse*(): Ros1Pal_detection_msgsSetDatabaseResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsSetDatabaseResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsSetDatabaseResponse*(r: var Reader): Ros1Pal_detection_msgsSetDatabaseResponse =
  result = initRos1Pal_detection_msgsSetDatabaseResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsSetDatabaseResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsSetDatabaseResponse*(b: seq[byte]): Ros1Pal_detection_msgsSetDatabaseResponse =
  var r = initReader(b,0)
  result = readRos1Pal_detection_msgsSetDatabaseResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/StartEnrollmentRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsStartEnrollmentRequest* = object
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
const Ros1Pal_detection_msgsStartEnrollmentRequestMaximumWireBytes* = 132
const Ros1Pal_detection_msgsStartEnrollmentRequestCodecIdentity* = "UWVMROS1_d1175a40ec4050b7d53f0929d9fb9ca6d33155c6df2295082e159db96e2fa7d8"
const Ros1Pal_detection_msgsStartEnrollmentRequestNativeType* = "pal_detection_msgs/StartEnrollmentRequest"
const Ros1Pal_detection_msgsStartEnrollmentRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsStartEnrollmentRequest*(): Ros1Pal_detection_msgsStartEnrollmentRequest =
  result.`name` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsStartEnrollmentRequest; w: var Writer) =
  putString(w,value.`name`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsStartEnrollmentRequest*(r: var Reader): Ros1Pal_detection_msgsStartEnrollmentRequest =
  result = initRos1Pal_detection_msgsStartEnrollmentRequest()
  result.`name` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsStartEnrollmentRequest): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsStartEnrollmentRequest*(b: seq[byte]): Ros1Pal_detection_msgsStartEnrollmentRequest =
  var r = initReader(b,132)
  result = readRos1Pal_detection_msgsStartEnrollmentRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/StartEnrollmentResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsStartEnrollmentResponse* = object
  ## @brief Preserve original result as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `result`*: bool
const Ros1Pal_detection_msgsStartEnrollmentResponseMaximumWireBytes* = 1
const Ros1Pal_detection_msgsStartEnrollmentResponseCodecIdentity* = "UWVMROS1_7d24b04c596d75db09309a7244e275e5980344aaf020f91a44bef100927d5b62"
const Ros1Pal_detection_msgsStartEnrollmentResponseNativeType* = "pal_detection_msgs/StartEnrollmentResponse"
const Ros1Pal_detection_msgsStartEnrollmentResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsStartEnrollmentResponse*(): Ros1Pal_detection_msgsStartEnrollmentResponse =
  result.`result` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsStartEnrollmentResponse; w: var Writer) =
  putBool(w,value.`result`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsStartEnrollmentResponse*(r: var Reader): Ros1Pal_detection_msgsStartEnrollmentResponse =
  result = initRos1Pal_detection_msgsStartEnrollmentResponse()
  result.`result` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsStartEnrollmentResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsStartEnrollmentResponse*(b: seq[byte]): Ros1Pal_detection_msgsStartEnrollmentResponse =
  var r = initReader(b,1)
  result = readRos1Pal_detection_msgsStartEnrollmentResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/StopEnrollmentRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsStopEnrollmentRequest* = object
const Ros1Pal_detection_msgsStopEnrollmentRequestMaximumWireBytes* = 0
const Ros1Pal_detection_msgsStopEnrollmentRequestCodecIdentity* = "UWVMROS1_627511d9388c67421ccbd8f1928ec5a7e87ad1cc19f0e6b69b4be089ea69d3df"
const Ros1Pal_detection_msgsStopEnrollmentRequestNativeType* = "pal_detection_msgs/StopEnrollmentRequest"
const Ros1Pal_detection_msgsStopEnrollmentRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsStopEnrollmentRequest*(): Ros1Pal_detection_msgsStopEnrollmentRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsStopEnrollmentRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsStopEnrollmentRequest*(r: var Reader): Ros1Pal_detection_msgsStopEnrollmentRequest =
  result = initRos1Pal_detection_msgsStopEnrollmentRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsStopEnrollmentRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsStopEnrollmentRequest*(b: seq[byte]): Ros1Pal_detection_msgsStopEnrollmentRequest =
  var r = initReader(b,0)
  result = readRos1Pal_detection_msgsStopEnrollmentRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/StopEnrollmentResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsStopEnrollmentResponse* = object
  ## @brief Preserve original enrollment_ok as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `enrollment_ok`*: bool
  ## @brief Preserve original numFacesEnrolled as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `numFacesEnrolled`*: int32
  ## @brief Preserve original error_msg as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `error_msg`*: string
const Ros1Pal_detection_msgsStopEnrollmentResponseMaximumWireBytes* = 137
const Ros1Pal_detection_msgsStopEnrollmentResponseCodecIdentity* = "UWVMROS1_30384a8e564b227756bc3e778edf7d0a0b60440baf8e966352600b15b1a9a1aa"
const Ros1Pal_detection_msgsStopEnrollmentResponseNativeType* = "pal_detection_msgs/StopEnrollmentResponse"
const Ros1Pal_detection_msgsStopEnrollmentResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsStopEnrollmentResponse*(): Ros1Pal_detection_msgsStopEnrollmentResponse =
  result.`enrollment_ok` = false
  result.`numFacesEnrolled` = 0
  result.`error_msg` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsStopEnrollmentResponse; w: var Writer) =
  putBool(w,value.`enrollment_ok`)
  putInteger(w,value.`numFacesEnrolled`)
  putString(w,value.`error_msg`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsStopEnrollmentResponse*(r: var Reader): Ros1Pal_detection_msgsStopEnrollmentResponse =
  result = initRos1Pal_detection_msgsStopEnrollmentResponse()
  result.`enrollment_ok` = getBool(r)
  result.`numFacesEnrolled` = getInteger(r,int32)
  result.`error_msg` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsStopEnrollmentResponse): seq[byte] =
  var w = initWriter(137)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsStopEnrollmentResponse*(b: seq[byte]): Ros1Pal_detection_msgsStopEnrollmentResponse =
  var r = initReader(b,137)
  result = readRos1Pal_detection_msgsStopEnrollmentResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/TexturedObjectDetection.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsTexturedObjectDetection* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original img as sensor_msgs/CompressedImage.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `img`*: Ros1Sensor_msgsCompressedImage
  ## @brief Preserve original roi as pal_detection_msgs/RotatedDetection2d.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `roi`*: Ros1Pal_detection_msgsRotatedDetection2d
const Ros1Pal_detection_msgsTexturedObjectDetectionMaximumWireBytes* = 4928
const Ros1Pal_detection_msgsTexturedObjectDetectionCodecIdentity* = "UWVMROS1_4a13d12a14db4a3f8883d2bd66317d4b50bd2246fde7de5cdc966d4d35cff204"
const Ros1Pal_detection_msgsTexturedObjectDetectionNativeType* = "pal_detection_msgs/TexturedObjectDetection"
const Ros1Pal_detection_msgsTexturedObjectDetectionNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsTexturedObjectDetection*(): Ros1Pal_detection_msgsTexturedObjectDetection =
  result.`header` = initRos1Std_msgsHeader()
  result.`img` = initRos1Sensor_msgsCompressedImage()
  result.`roi` = initRos1Pal_detection_msgsRotatedDetection2d()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsTexturedObjectDetection; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`img`,w)
  writeFields(value.`roi`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsTexturedObjectDetection*(r: var Reader): Ros1Pal_detection_msgsTexturedObjectDetection =
  result = initRos1Pal_detection_msgsTexturedObjectDetection()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`img` = readRos1Sensor_msgsCompressedImage(r)
  result.`roi` = readRos1Pal_detection_msgsRotatedDetection2d(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsTexturedObjectDetection): seq[byte] =
  var w = initWriter(4928)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsTexturedObjectDetection*(b: seq[byte]): Ros1Pal_detection_msgsTexturedObjectDetection =
  var r = initReader(b,4928)
  result = readRos1Pal_detection_msgsTexturedObjectDetection(r)
  finish(r)
## @brief Own every original field of ROS1 pal_detection_msgs/WaveDetection.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_detection_msgsWaveDetection* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original wave as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `wave`*: bool
  ## @brief Preserve original u as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `u`*: int8
  ## @brief Preserve original v as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `v`*: int8
const Ros1Pal_detection_msgsWaveDetectionMaximumWireBytes* = 147
const Ros1Pal_detection_msgsWaveDetectionCodecIdentity* = "UWVMROS1_9c121f0ad95f8e28a13b1b7b80c32f0cea55b737edccf63fe92908ed806db52e"
const Ros1Pal_detection_msgsWaveDetectionNativeType* = "pal_detection_msgs/WaveDetection"
const Ros1Pal_detection_msgsWaveDetectionNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_detection_msgsWaveDetection*(): Ros1Pal_detection_msgsWaveDetection =
  result.`header` = initRos1Std_msgsHeader()
  result.`wave` = false
  result.`u` = 0
  result.`v` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_detection_msgsWaveDetection; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`wave`)
  putInteger(w,value.`u`)
  putInteger(w,value.`v`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_detection_msgsWaveDetection*(r: var Reader): Ros1Pal_detection_msgsWaveDetection =
  result = initRos1Pal_detection_msgsWaveDetection()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`wave` = getBool(r)
  result.`u` = getInteger(r,int8)
  result.`v` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_detection_msgsWaveDetection): seq[byte] =
  var w = initWriter(147)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_detection_msgsWaveDetection*(b: seq[byte]): Ros1Pal_detection_msgsWaveDetection =
  var r = initReader(b,147)
  result = readRos1Pal_detection_msgsWaveDetection(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRActivation.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRActivation* = object
  ## @brief Preserve original action as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `action`*: int8
const Ros1Pal_interaction_msgsASRActivationMaximumWireBytes* = 1
const Ros1Pal_interaction_msgsASRActivationCodecIdentity* = "UWVMROS1_30f9e3f26cd145518ec1957bab9ca45f4cbe4ac25f82c8853ad1997bad1fdda7"
const Ros1Pal_interaction_msgsASRActivationNativeType* = "pal_interaction_msgs/ASRActivation"
const Ros1Pal_interaction_msgsASRActivationNativeIdentity* = ""
const Ros1Pal_interaction_msgsASRActivation_ACTIVATE*: int8 = 1'i8
const Ros1Pal_interaction_msgsASRActivation_DEACTIVATE*: int8 = 2'i8
const Ros1Pal_interaction_msgsASRActivation_PAUSE*: int8 = 3'i8
const Ros1Pal_interaction_msgsASRActivation_RESUME*: int8 = 4'i8
const Ros1Pal_interaction_msgsASRActivation_CALIBRATE*: int8 = 5'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRActivation*(): Ros1Pal_interaction_msgsASRActivation =
  result.`action` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRActivation; w: var Writer) =
  putInteger(w,value.`action`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRActivation*(r: var Reader): Ros1Pal_interaction_msgsASRActivation =
  result = initRos1Pal_interaction_msgsASRActivation()
  result.`action` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRActivation): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRActivation*(b: seq[byte]): Ros1Pal_interaction_msgsASRActivation =
  var r = initReader(b,1)
  result = readRos1Pal_interaction_msgsASRActivation(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/actiontag.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsActiontag* = object
  ## @brief Preserve original key as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `key`*: string
  ## @brief Preserve original value as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `value`*: string
const Ros1Pal_interaction_msgsActiontagMaximumWireBytes* = 264
const Ros1Pal_interaction_msgsActiontagCodecIdentity* = "UWVMROS1_bd76d0c6a24ccccf66c8723e96bdb0bacf4b9f89fd569482dbb05b8c3a0e7a08"
const Ros1Pal_interaction_msgsActiontagNativeType* = "pal_interaction_msgs/actiontag"
const Ros1Pal_interaction_msgsActiontagNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsActiontag*(): Ros1Pal_interaction_msgsActiontag =
  result.`key` = ""
  result.`value` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsActiontag; w: var Writer) =
  putString(w,value.`key`,128)
  putString(w,value.`value`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsActiontag*(r: var Reader): Ros1Pal_interaction_msgsActiontag =
  result = initRos1Pal_interaction_msgsActiontag()
  result.`key` = getString(r,128)
  result.`value` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsActiontag): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsActiontag*(b: seq[byte]): Ros1Pal_interaction_msgsActiontag =
  var r = initReader(b,264)
  result = readRos1Pal_interaction_msgsActiontag(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/asrresult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsAsrresult* = object
  ## @brief Preserve original text as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `text`*: string
  ## @brief Preserve original confidence as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `confidence`*: int8
  ## @brief Preserve original start as time.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `start`*: Ros1Time
  ## @brief Preserve original end as time.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `end`*: Ros1Time
  ## @brief Preserve original tags as pal_interaction_msgs/actiontag.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `tags`*: seq[Ros1Pal_interaction_msgsActiontag]
const Ros1Pal_interaction_msgsAsrresultMaximumWireBytes* = 1209
const Ros1Pal_interaction_msgsAsrresultCodecIdentity* = "UWVMROS1_b259acfd1ed092ec360582155843297af7f18152debe9cfae0573c695f271058"
const Ros1Pal_interaction_msgsAsrresultNativeType* = "pal_interaction_msgs/asrresult"
const Ros1Pal_interaction_msgsAsrresultNativeIdentity* = ""
const Ros1Pal_interaction_msgsAsrresult_CONFIDENCE_UNDEFINED*: int8 = -1'i8
const Ros1Pal_interaction_msgsAsrresult_CONFIDENCE_POOR*: int8 = 1'i8
const Ros1Pal_interaction_msgsAsrresult_CONFIDENCE_LOW*: int8 = 2'i8
const Ros1Pal_interaction_msgsAsrresult_CONFIDENCE_GOOD*: int8 = 3'i8
const Ros1Pal_interaction_msgsAsrresult_CONFIDENCE_MAX*: int8 = 4'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsAsrresult*(): Ros1Pal_interaction_msgsAsrresult =
  result.`text` = ""
  result.`confidence` = 0
  result.`start` = initRos1Time()
  result.`end` = initRos1Time()
  result.`tags` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsAsrresult; w: var Writer) =
  putString(w,value.`text`,128)
  putInteger(w,value.`confidence`)
  writeFields(value.`start`,w)
  writeFields(value.`end`,w)
  if value.`tags`.len > 4: fail(22)
  putInteger(w,uint32(value.`tags`.len))
  for e in value.`tags`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsAsrresult*(r: var Reader): Ros1Pal_interaction_msgsAsrresult =
  result = initRos1Pal_interaction_msgsAsrresult()
  result.`text` = getString(r,128)
  result.`confidence` = getInteger(r,int8)
  result.`start` = readRos1Time(r)
  result.`end` = readRos1Time(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 4: fail(22)
  let count4 = int(rawcount4)
  result.`tags` = newSeq[Ros1Pal_interaction_msgsActiontag](count4)
  for i in 0..<count4:
    result.`tags`[i] = readRos1Pal_interaction_msgsActiontag(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsAsrresult): seq[byte] =
  var w = initWriter(1209)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsAsrresult*(b: seq[byte]): Ros1Pal_interaction_msgsAsrresult =
  var r = initReader(b,1209)
  result = readRos1Pal_interaction_msgsAsrresult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASREvent.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASREvent* = object
  ## @brief Preserve original event_id as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `event_id`*: int8
  ## @brief Preserve original listen_state as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `listen_state`*: int8
  ## @brief Preserve original recognized_utterance as pal_interaction_msgs/asrresult.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `recognized_utterance`*: Ros1Pal_interaction_msgsAsrresult
  ## @brief Preserve original active as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `active`*: bool
const Ros1Pal_interaction_msgsASREventMaximumWireBytes* = 1212
const Ros1Pal_interaction_msgsASREventCodecIdentity* = "UWVMROS1_459ea9c0c0a993881cc4189329bc42ae244d6133b8d3ae789206dbc4655a0926"
const Ros1Pal_interaction_msgsASREventNativeType* = "pal_interaction_msgs/ASREvent"
const Ros1Pal_interaction_msgsASREventNativeIdentity* = ""
const Ros1Pal_interaction_msgsASREvent_EVENT_UNDEFINED*: int8 = -1'i8
const Ros1Pal_interaction_msgsASREvent_EVENT_LISTEN_STATE*: int8 = 1'i8
const Ros1Pal_interaction_msgsASREvent_EVENT_RECOGNIZED_UTT*: int8 = 2'i8
const Ros1Pal_interaction_msgsASREvent_EVENT_ASR_ACTIVATION*: int8 = 3'i8
const Ros1Pal_interaction_msgsASREvent_EVENT_FAILED_DECODING*: int8 = 4'i8
const Ros1Pal_interaction_msgsASREvent_LISTEN_UNDEFINED*: int8 = 20'i8
const Ros1Pal_interaction_msgsASREvent_LISTEN_CALIBRATION*: int8 = 21'i8
const Ros1Pal_interaction_msgsASREvent_LISTEN_WAITING_FOR_SPEECH*: int8 = 22'i8
const Ros1Pal_interaction_msgsASREvent_LISTEN_SPEECH_DETECTED*: int8 = 23'i8
const Ros1Pal_interaction_msgsASREvent_LISTEN_END_OF_SPEECH*: int8 = 24'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASREvent*(): Ros1Pal_interaction_msgsASREvent =
  result.`event_id` = 0
  result.`listen_state` = 0
  result.`recognized_utterance` = initRos1Pal_interaction_msgsAsrresult()
  result.`active` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASREvent; w: var Writer) =
  putInteger(w,value.`event_id`)
  putInteger(w,value.`listen_state`)
  writeFields(value.`recognized_utterance`,w)
  putBool(w,value.`active`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASREvent*(r: var Reader): Ros1Pal_interaction_msgsASREvent =
  result = initRos1Pal_interaction_msgsASREvent()
  result.`event_id` = getInteger(r,int8)
  result.`listen_state` = getInteger(r,int8)
  result.`recognized_utterance` = readRos1Pal_interaction_msgsAsrresult(r)
  result.`active` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASREvent): seq[byte] =
  var w = initWriter(1212)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASREvent*(b: seq[byte]): Ros1Pal_interaction_msgsASREvent =
  var r = initReader(b,1212)
  result = readRos1Pal_interaction_msgsASREvent(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRFileGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRFileGoal* = object
  ## @brief Preserve original file as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `file`*: string
  ## @brief Preserve original lang_id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `lang_id`*: string
  ## @brief Preserve original grammar as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `grammar`*: string
const Ros1Pal_interaction_msgsASRFileGoalMaximumWireBytes* = 396
const Ros1Pal_interaction_msgsASRFileGoalCodecIdentity* = "UWVMROS1_9ccba4b3d861d0e759312bec211e5f198eb11bd3838088906a7cba85ab56dd35"
const Ros1Pal_interaction_msgsASRFileGoalNativeType* = "pal_interaction_msgs/ASRFileGoal"
const Ros1Pal_interaction_msgsASRFileGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRFileGoal*(): Ros1Pal_interaction_msgsASRFileGoal =
  result.`file` = ""
  result.`lang_id` = ""
  result.`grammar` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRFileGoal; w: var Writer) =
  putString(w,value.`file`,128)
  putString(w,value.`lang_id`,128)
  putString(w,value.`grammar`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRFileGoal*(r: var Reader): Ros1Pal_interaction_msgsASRFileGoal =
  result = initRos1Pal_interaction_msgsASRFileGoal()
  result.`file` = getString(r,128)
  result.`lang_id` = getString(r,128)
  result.`grammar` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRFileGoal): seq[byte] =
  var w = initWriter(396)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRFileGoal*(b: seq[byte]): Ros1Pal_interaction_msgsASRFileGoal =
  var r = initReader(b,396)
  result = readRos1Pal_interaction_msgsASRFileGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRFileResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRFileResult* = object
  ## @brief Preserve original file as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `file`*: string
  ## @brief Preserve original msg as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `msg`*: string
  ## @brief Preserve original recognised_utterances as pal_interaction_msgs/asrresult.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `recognised_utterances`*: seq[Ros1Pal_interaction_msgsAsrresult]
const Ros1Pal_interaction_msgsASRFileResultMaximumWireBytes* = 5104
const Ros1Pal_interaction_msgsASRFileResultCodecIdentity* = "UWVMROS1_8fef2b5f288de2136bf3d58eca596fcb8d41c43e0eb428d5fac61cc0dfdc9db2"
const Ros1Pal_interaction_msgsASRFileResultNativeType* = "pal_interaction_msgs/ASRFileResult"
const Ros1Pal_interaction_msgsASRFileResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRFileResult*(): Ros1Pal_interaction_msgsASRFileResult =
  result.`file` = ""
  result.`msg` = ""
  result.`recognised_utterances` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRFileResult; w: var Writer) =
  putString(w,value.`file`,128)
  putString(w,value.`msg`,128)
  if value.`recognised_utterances`.len > 4: fail(22)
  putInteger(w,uint32(value.`recognised_utterances`.len))
  for e in value.`recognised_utterances`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRFileResult*(r: var Reader): Ros1Pal_interaction_msgsASRFileResult =
  result = initRos1Pal_interaction_msgsASRFileResult()
  result.`file` = getString(r,128)
  result.`msg` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`recognised_utterances` = newSeq[Ros1Pal_interaction_msgsAsrresult](count2)
  for i in 0..<count2:
    result.`recognised_utterances`[i] = readRos1Pal_interaction_msgsAsrresult(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRFileResult): seq[byte] =
  var w = initWriter(5104)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRFileResult*(b: seq[byte]): Ros1Pal_interaction_msgsASRFileResult =
  var r = initReader(b,5104)
  result = readRos1Pal_interaction_msgsASRFileResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRFileFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRFileFeedback* = object
  ## @brief Preserve original recognised_utterance as pal_interaction_msgs/asrresult.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `recognised_utterance`*: Ros1Pal_interaction_msgsAsrresult
const Ros1Pal_interaction_msgsASRFileFeedbackMaximumWireBytes* = 1209
const Ros1Pal_interaction_msgsASRFileFeedbackCodecIdentity* = "UWVMROS1_c5a53add76fa297f74af24e0ecb0d3dc68b3ce85eaecdff21a26a7441e2ad9c3"
const Ros1Pal_interaction_msgsASRFileFeedbackNativeType* = "pal_interaction_msgs/ASRFileFeedback"
const Ros1Pal_interaction_msgsASRFileFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRFileFeedback*(): Ros1Pal_interaction_msgsASRFileFeedback =
  result.`recognised_utterance` = initRos1Pal_interaction_msgsAsrresult()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRFileFeedback; w: var Writer) =
  writeFields(value.`recognised_utterance`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRFileFeedback*(r: var Reader): Ros1Pal_interaction_msgsASRFileFeedback =
  result = initRos1Pal_interaction_msgsASRFileFeedback()
  result.`recognised_utterance` = readRos1Pal_interaction_msgsAsrresult(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRFileFeedback): seq[byte] =
  var w = initWriter(1209)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRFileFeedback*(b: seq[byte]): Ros1Pal_interaction_msgsASRFileFeedback =
  var r = initReader(b,1209)
  result = readRos1Pal_interaction_msgsASRFileFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRLangModelMngmt.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRLangModelMngmt* = object
  ## @brief Preserve original action as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `action`*: int8
  ## @brief Preserve original modelName as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `modelName`*: string
const Ros1Pal_interaction_msgsASRLangModelMngmtMaximumWireBytes* = 133
const Ros1Pal_interaction_msgsASRLangModelMngmtCodecIdentity* = "UWVMROS1_9ef368d2c72d86f541952fd520429be4998fd28e46c32da1d60edc1cd63c3b09"
const Ros1Pal_interaction_msgsASRLangModelMngmtNativeType* = "pal_interaction_msgs/ASRLangModelMngmt"
const Ros1Pal_interaction_msgsASRLangModelMngmtNativeIdentity* = ""
const Ros1Pal_interaction_msgsASRLangModelMngmt_ENABLE*: int8 = 1'i8
const Ros1Pal_interaction_msgsASRLangModelMngmt_DISABLE*: int8 = 2'i8
const Ros1Pal_interaction_msgsASRLangModelMngmt_LOAD*: int8 = 3'i8
const Ros1Pal_interaction_msgsASRLangModelMngmt_UNLOAD*: int8 = 4'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRLangModelMngmt*(): Ros1Pal_interaction_msgsASRLangModelMngmt =
  result.`action` = 0
  result.`modelName` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRLangModelMngmt; w: var Writer) =
  putInteger(w,value.`action`)
  putString(w,value.`modelName`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRLangModelMngmt*(r: var Reader): Ros1Pal_interaction_msgsASRLangModelMngmt =
  result = initRos1Pal_interaction_msgsASRLangModelMngmt()
  result.`action` = getInteger(r,int8)
  result.`modelName` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRLangModelMngmt): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRLangModelMngmt*(b: seq[byte]): Ros1Pal_interaction_msgsASRLangModelMngmt =
  var r = initReader(b,133)
  result = readRos1Pal_interaction_msgsASRLangModelMngmt(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRLanguage.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRLanguage* = object
  ## @brief Preserve original language as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `language`*: string
const Ros1Pal_interaction_msgsASRLanguageMaximumWireBytes* = 132
const Ros1Pal_interaction_msgsASRLanguageCodecIdentity* = "UWVMROS1_227aee498814954d3800e631b8dce3a5fd3d22dc5437ec24b03b5f8cc48000eb"
const Ros1Pal_interaction_msgsASRLanguageNativeType* = "pal_interaction_msgs/ASRLanguage"
const Ros1Pal_interaction_msgsASRLanguageNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRLanguage*(): Ros1Pal_interaction_msgsASRLanguage =
  result.`language` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRLanguage; w: var Writer) =
  putString(w,value.`language`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRLanguage*(r: var Reader): Ros1Pal_interaction_msgsASRLanguage =
  result = initRos1Pal_interaction_msgsASRLanguage()
  result.`language` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRLanguage): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRLanguage*(b: seq[byte]): Ros1Pal_interaction_msgsASRLanguage =
  var r = initReader(b,132)
  result = readRos1Pal_interaction_msgsASRLanguage(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRSrvRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRSrvRequest* = object
  ## @brief Preserve original requests as int8.
  ## @details At most 256 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `requests`*: seq[int8]
  ## @brief Preserve original activation as pal_interaction_msgs/ASRActivation.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `activation`*: Ros1Pal_interaction_msgsASRActivation
  ## @brief Preserve original model as pal_interaction_msgs/ASRLangModelMngmt.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `model`*: Ros1Pal_interaction_msgsASRLangModelMngmt
  ## @brief Preserve original lang as pal_interaction_msgs/ASRLanguage.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `lang`*: Ros1Pal_interaction_msgsASRLanguage
const Ros1Pal_interaction_msgsASRSrvRequestMaximumWireBytes* = 526
const Ros1Pal_interaction_msgsASRSrvRequestCodecIdentity* = "UWVMROS1_3a7fc134e8d1e0c32421ff0ad9831a892e7bc94b211d8309f8a2c2e99720e170"
const Ros1Pal_interaction_msgsASRSrvRequestNativeType* = "pal_interaction_msgs/ASRSrvRequest"
const Ros1Pal_interaction_msgsASRSrvRequestNativeIdentity* = ""
const Ros1Pal_interaction_msgsASRSrvRequest_ACTIVATION*: int8 = 1'i8
const Ros1Pal_interaction_msgsASRSrvRequest_GRAMMAR*: int8 = 2'i8
const Ros1Pal_interaction_msgsASRSrvRequest_LANGUAGE*: int8 = 3'i8
const Ros1Pal_interaction_msgsASRSrvRequest_STATUS*: int8 = 4'i8
const Ros1Pal_interaction_msgsASRSrvRequest_KWSPOTTING*: int8 = 5'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRSrvRequest*(): Ros1Pal_interaction_msgsASRSrvRequest =
  result.`requests` = @[]
  result.`activation` = initRos1Pal_interaction_msgsASRActivation()
  result.`model` = initRos1Pal_interaction_msgsASRLangModelMngmt()
  result.`lang` = initRos1Pal_interaction_msgsASRLanguage()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRSrvRequest; w: var Writer) =
  if value.`requests`.len > 256: fail(22)
  putInteger(w,uint32(value.`requests`.len))
  for e in value.`requests`:
    putInteger(w,e)
  writeFields(value.`activation`,w)
  writeFields(value.`model`,w)
  writeFields(value.`lang`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRSrvRequest*(r: var Reader): Ros1Pal_interaction_msgsASRSrvRequest =
  result = initRos1Pal_interaction_msgsASRSrvRequest()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 256: fail(22)
  let count0 = int(rawcount0)
  result.`requests` = newSeq[int8](count0)
  for i in 0..<count0:
    result.`requests`[i] = getInteger(r,int8)
  result.`activation` = readRos1Pal_interaction_msgsASRActivation(r)
  result.`model` = readRos1Pal_interaction_msgsASRLangModelMngmt(r)
  result.`lang` = readRos1Pal_interaction_msgsASRLanguage(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRSrvRequest): seq[byte] =
  var w = initWriter(526)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRSrvRequest*(b: seq[byte]): Ros1Pal_interaction_msgsASRSrvRequest =
  var r = initReader(b,526)
  result = readRos1Pal_interaction_msgsASRSrvRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRServiceRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRServiceRequest* = object
  ## @brief Preserve original request as pal_interaction_msgs/ASRSrvRequest.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `request`*: Ros1Pal_interaction_msgsASRSrvRequest
const Ros1Pal_interaction_msgsASRServiceRequestMaximumWireBytes* = 526
const Ros1Pal_interaction_msgsASRServiceRequestCodecIdentity* = "UWVMROS1_c78e78d5d88eb264ecc15c534da9e28e04bc6e3bb33685e24b9cf695aee73715"
const Ros1Pal_interaction_msgsASRServiceRequestNativeType* = "pal_interaction_msgs/ASRServiceRequest"
const Ros1Pal_interaction_msgsASRServiceRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRServiceRequest*(): Ros1Pal_interaction_msgsASRServiceRequest =
  result.`request` = initRos1Pal_interaction_msgsASRSrvRequest()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRServiceRequest; w: var Writer) =
  writeFields(value.`request`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRServiceRequest*(r: var Reader): Ros1Pal_interaction_msgsASRServiceRequest =
  result = initRos1Pal_interaction_msgsASRServiceRequest()
  result.`request` = readRos1Pal_interaction_msgsASRSrvRequest(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRServiceRequest): seq[byte] =
  var w = initWriter(526)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRServiceRequest*(b: seq[byte]): Ros1Pal_interaction_msgsASRServiceRequest =
  var r = initReader(b,526)
  result = readRos1Pal_interaction_msgsASRServiceRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/AudioDeviceDescription.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsAudioDeviceDescription* = object
  ## @brief Preserve original device_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `device_name`*: string
  ## @brief Preserve original sample_rate as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `sample_rate`*: uint32
  ## @brief Preserve original sample_size as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `sample_size`*: int8
  ## @brief Preserve original format as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `format`*: int8
  ## @brief Preserve original buffer_size as uint16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `buffer_size`*: uint16
  ## @brief Preserve original number_of_channels as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `number_of_channels`*: int8
const Ros1Pal_interaction_msgsAudioDeviceDescriptionMaximumWireBytes* = 141
const Ros1Pal_interaction_msgsAudioDeviceDescriptionCodecIdentity* = "UWVMROS1_899a8393d0b03ca92891b0c60871b5e3a697750b036ef34b37709eed88139857"
const Ros1Pal_interaction_msgsAudioDeviceDescriptionNativeType* = "pal_interaction_msgs/AudioDeviceDescription"
const Ros1Pal_interaction_msgsAudioDeviceDescriptionNativeIdentity* = ""
const Ros1Pal_interaction_msgsAudioDeviceDescription_SIGNED*: int8 = 0'i8
const Ros1Pal_interaction_msgsAudioDeviceDescription_UNSIGNED*: int8 = 1'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsAudioDeviceDescription*(): Ros1Pal_interaction_msgsAudioDeviceDescription =
  result.`device_name` = ""
  result.`sample_rate` = 0
  result.`sample_size` = 0
  result.`format` = 0
  result.`buffer_size` = 0
  result.`number_of_channels` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsAudioDeviceDescription; w: var Writer) =
  putString(w,value.`device_name`,128)
  putInteger(w,value.`sample_rate`)
  putInteger(w,value.`sample_size`)
  putInteger(w,value.`format`)
  putInteger(w,value.`buffer_size`)
  putInteger(w,value.`number_of_channels`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsAudioDeviceDescription*(r: var Reader): Ros1Pal_interaction_msgsAudioDeviceDescription =
  result = initRos1Pal_interaction_msgsAudioDeviceDescription()
  result.`device_name` = getString(r,128)
  result.`sample_rate` = getInteger(r,uint32)
  result.`sample_size` = getInteger(r,int8)
  result.`format` = getInteger(r,int8)
  result.`buffer_size` = getInteger(r,uint16)
  result.`number_of_channels` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsAudioDeviceDescription): seq[byte] =
  var w = initWriter(141)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsAudioDeviceDescription*(b: seq[byte]): Ros1Pal_interaction_msgsAudioDeviceDescription =
  var r = initReader(b,141)
  result = readRos1Pal_interaction_msgsAudioDeviceDescription(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRStatus.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRStatus* = object
  ## @brief Preserve original active as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `active`*: bool
  ## @brief Preserve original language as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `language`*: string
  ## @brief Preserve original enabled_grammar as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `enabled_grammar`*: string
  ## @brief Preserve original acoustic_env as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `acoustic_env`*: string
  ## @brief Preserve original device as pal_interaction_msgs/AudioDeviceDescription.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `device`*: Ros1Pal_interaction_msgsAudioDeviceDescription
const Ros1Pal_interaction_msgsASRStatusMaximumWireBytes* = 538
const Ros1Pal_interaction_msgsASRStatusCodecIdentity* = "UWVMROS1_0469173f91448cb5069e27cab54cfd117d9a22d757e8a8303ac5cb1c53e7e985"
const Ros1Pal_interaction_msgsASRStatusNativeType* = "pal_interaction_msgs/ASRStatus"
const Ros1Pal_interaction_msgsASRStatusNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRStatus*(): Ros1Pal_interaction_msgsASRStatus =
  result.`active` = false
  result.`language` = ""
  result.`enabled_grammar` = ""
  result.`acoustic_env` = ""
  result.`device` = initRos1Pal_interaction_msgsAudioDeviceDescription()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRStatus; w: var Writer) =
  putBool(w,value.`active`)
  putString(w,value.`language`,128)
  putString(w,value.`enabled_grammar`,128)
  putString(w,value.`acoustic_env`,128)
  writeFields(value.`device`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRStatus*(r: var Reader): Ros1Pal_interaction_msgsASRStatus =
  result = initRos1Pal_interaction_msgsASRStatus()
  result.`active` = getBool(r)
  result.`language` = getString(r,128)
  result.`enabled_grammar` = getString(r,128)
  result.`acoustic_env` = getString(r,128)
  result.`device` = readRos1Pal_interaction_msgsAudioDeviceDescription(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRStatus): seq[byte] =
  var w = initWriter(538)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRStatus*(b: seq[byte]): Ros1Pal_interaction_msgsASRStatus =
  var r = initReader(b,538)
  result = readRos1Pal_interaction_msgsASRStatus(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRSrvResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRSrvResponse* = object
  ## @brief Preserve original status as pal_interaction_msgs/ASRStatus.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `status`*: Ros1Pal_interaction_msgsASRStatus
  ## @brief Preserve original error_msg as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `error_msg`*: string
  ## @brief Preserve original warn_msg as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `warn_msg`*: string
const Ros1Pal_interaction_msgsASRSrvResponseMaximumWireBytes* = 802
const Ros1Pal_interaction_msgsASRSrvResponseCodecIdentity* = "UWVMROS1_b0d47bec71896b9a6090ee0e99c5dad16272306b7b266a99e3da0db334e24d3a"
const Ros1Pal_interaction_msgsASRSrvResponseNativeType* = "pal_interaction_msgs/ASRSrvResponse"
const Ros1Pal_interaction_msgsASRSrvResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRSrvResponse*(): Ros1Pal_interaction_msgsASRSrvResponse =
  result.`status` = initRos1Pal_interaction_msgsASRStatus()
  result.`error_msg` = ""
  result.`warn_msg` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRSrvResponse; w: var Writer) =
  writeFields(value.`status`,w)
  putString(w,value.`error_msg`,128)
  putString(w,value.`warn_msg`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRSrvResponse*(r: var Reader): Ros1Pal_interaction_msgsASRSrvResponse =
  result = initRos1Pal_interaction_msgsASRSrvResponse()
  result.`status` = readRos1Pal_interaction_msgsASRStatus(r)
  result.`error_msg` = getString(r,128)
  result.`warn_msg` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRSrvResponse): seq[byte] =
  var w = initWriter(802)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRSrvResponse*(b: seq[byte]): Ros1Pal_interaction_msgsASRSrvResponse =
  var r = initReader(b,802)
  result = readRos1Pal_interaction_msgsASRSrvResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/ASRServiceResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsASRServiceResponse* = object
  ## @brief Preserve original response as pal_interaction_msgs/ASRSrvResponse.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `response`*: Ros1Pal_interaction_msgsASRSrvResponse
const Ros1Pal_interaction_msgsASRServiceResponseMaximumWireBytes* = 802
const Ros1Pal_interaction_msgsASRServiceResponseCodecIdentity* = "UWVMROS1_bfa0a5701b04c4f637febfb3c24d5f49ebd690b82089ec88e21d7dca40028680"
const Ros1Pal_interaction_msgsASRServiceResponseNativeType* = "pal_interaction_msgs/ASRServiceResponse"
const Ros1Pal_interaction_msgsASRServiceResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsASRServiceResponse*(): Ros1Pal_interaction_msgsASRServiceResponse =
  result.`response` = initRos1Pal_interaction_msgsASRSrvResponse()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsASRServiceResponse; w: var Writer) =
  writeFields(value.`response`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsASRServiceResponse*(r: var Reader): Ros1Pal_interaction_msgsASRServiceResponse =
  result = initRos1Pal_interaction_msgsASRServiceResponse()
  result.`response` = readRos1Pal_interaction_msgsASRSrvResponse(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsASRServiceResponse): seq[byte] =
  var w = initWriter(802)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsASRServiceResponse*(b: seq[byte]): Ros1Pal_interaction_msgsASRServiceResponse =
  var r = initReader(b,802)
  result = readRos1Pal_interaction_msgsASRServiceResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/AudioPlayGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsAudioPlayGoal* = object
  ## @brief Preserve original file as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `file`*: string
  ## @brief Preserve original priority as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `priority`*: uint8
const Ros1Pal_interaction_msgsAudioPlayGoalMaximumWireBytes* = 133
const Ros1Pal_interaction_msgsAudioPlayGoalCodecIdentity* = "UWVMROS1_1c2b6894e5b00f204c3d36af18802e5b54e2950b2ef22d3294460f3e7bd84e30"
const Ros1Pal_interaction_msgsAudioPlayGoalNativeType* = "pal_interaction_msgs/AudioPlayGoal"
const Ros1Pal_interaction_msgsAudioPlayGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsAudioPlayGoal*(): Ros1Pal_interaction_msgsAudioPlayGoal =
  result.`file` = ""
  result.`priority` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsAudioPlayGoal; w: var Writer) =
  putString(w,value.`file`,128)
  putInteger(w,value.`priority`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsAudioPlayGoal*(r: var Reader): Ros1Pal_interaction_msgsAudioPlayGoal =
  result = initRos1Pal_interaction_msgsAudioPlayGoal()
  result.`file` = getString(r,128)
  result.`priority` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsAudioPlayGoal): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsAudioPlayGoal*(b: seq[byte]): Ros1Pal_interaction_msgsAudioPlayGoal =
  var r = initReader(b,133)
  result = readRos1Pal_interaction_msgsAudioPlayGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/AudioPlayResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsAudioPlayResult* = object
const Ros1Pal_interaction_msgsAudioPlayResultMaximumWireBytes* = 0
const Ros1Pal_interaction_msgsAudioPlayResultCodecIdentity* = "UWVMROS1_46d6efb4dbf5cca76894398daf8b70e0f6577f624e90dc088beeca147a4f91fe"
const Ros1Pal_interaction_msgsAudioPlayResultNativeType* = "pal_interaction_msgs/AudioPlayResult"
const Ros1Pal_interaction_msgsAudioPlayResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsAudioPlayResult*(): Ros1Pal_interaction_msgsAudioPlayResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsAudioPlayResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsAudioPlayResult*(r: var Reader): Ros1Pal_interaction_msgsAudioPlayResult =
  result = initRos1Pal_interaction_msgsAudioPlayResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsAudioPlayResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsAudioPlayResult*(b: seq[byte]): Ros1Pal_interaction_msgsAudioPlayResult =
  var r = initReader(b,0)
  result = readRos1Pal_interaction_msgsAudioPlayResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/AudioPlayFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsAudioPlayFeedback* = object
const Ros1Pal_interaction_msgsAudioPlayFeedbackMaximumWireBytes* = 0
const Ros1Pal_interaction_msgsAudioPlayFeedbackCodecIdentity* = "UWVMROS1_8715716200235ab9076d7f152ef277236349ffb02f01b16ba5f10ede343729bd"
const Ros1Pal_interaction_msgsAudioPlayFeedbackNativeType* = "pal_interaction_msgs/AudioPlayFeedback"
const Ros1Pal_interaction_msgsAudioPlayFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsAudioPlayFeedback*(): Ros1Pal_interaction_msgsAudioPlayFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsAudioPlayFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsAudioPlayFeedback*(r: var Reader): Ros1Pal_interaction_msgsAudioPlayFeedback =
  result = initRos1Pal_interaction_msgsAudioPlayFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsAudioPlayFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsAudioPlayFeedback*(b: seq[byte]): Ros1Pal_interaction_msgsAudioPlayFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_interaction_msgsAudioPlayFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/AudioPlayerState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsAudioPlayerState* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original isPlaying as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `isPlaying`*: bool
  ## @brief Preserve original msg as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `msg`*: string
const Ros1Pal_interaction_msgsAudioPlayerStateMaximumWireBytes* = 277
const Ros1Pal_interaction_msgsAudioPlayerStateCodecIdentity* = "UWVMROS1_01549954e3ca3bfb4dd7e5c82e8697d0a480d16757826cc4708266794ec85675"
const Ros1Pal_interaction_msgsAudioPlayerStateNativeType* = "pal_interaction_msgs/AudioPlayerState"
const Ros1Pal_interaction_msgsAudioPlayerStateNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsAudioPlayerState*(): Ros1Pal_interaction_msgsAudioPlayerState =
  result.`header` = initRos1Std_msgsHeader()
  result.`isPlaying` = false
  result.`msg` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsAudioPlayerState; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`isPlaying`)
  putString(w,value.`msg`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsAudioPlayerState*(r: var Reader): Ros1Pal_interaction_msgsAudioPlayerState =
  result = initRos1Pal_interaction_msgsAudioPlayerState()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`isPlaying` = getBool(r)
  result.`msg` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsAudioPlayerState): seq[byte] =
  var w = initWriter(277)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsAudioPlayerState*(b: seq[byte]): Ros1Pal_interaction_msgsAudioPlayerState =
  var r = initReader(b,277)
  result = readRos1Pal_interaction_msgsAudioPlayerState(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/DirectionOfArrival.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsDirectionOfArrival* = object
  ## @brief Preserve original doa as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `doa`*: float32
  ## @brief Preserve original prob as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `prob`*: float32
  ## @brief Preserve original power as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `power`*: float32
  ## @brief Preserve original metadoa as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `metadoa`*: string
const Ros1Pal_interaction_msgsDirectionOfArrivalMaximumWireBytes* = 144
const Ros1Pal_interaction_msgsDirectionOfArrivalCodecIdentity* = "UWVMROS1_1569630ee3abd3caad9a14797d6381b68e764f0c00266d2de5c450f002c8f5fd"
const Ros1Pal_interaction_msgsDirectionOfArrivalNativeType* = "pal_interaction_msgs/DirectionOfArrival"
const Ros1Pal_interaction_msgsDirectionOfArrivalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsDirectionOfArrival*(): Ros1Pal_interaction_msgsDirectionOfArrival =
  result.`doa` = 0
  result.`prob` = 0
  result.`power` = 0
  result.`metadoa` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsDirectionOfArrival; w: var Writer) =
  putFloat32(w,value.`doa`)
  putFloat32(w,value.`prob`)
  putFloat32(w,value.`power`)
  putString(w,value.`metadoa`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsDirectionOfArrival*(r: var Reader): Ros1Pal_interaction_msgsDirectionOfArrival =
  result = initRos1Pal_interaction_msgsDirectionOfArrival()
  result.`doa` = getFloat32(r)
  result.`prob` = getFloat32(r)
  result.`power` = getFloat32(r)
  result.`metadoa` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsDirectionOfArrival): seq[byte] =
  var w = initWriter(144)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsDirectionOfArrival*(b: seq[byte]): Ros1Pal_interaction_msgsDirectionOfArrival =
  var r = initReader(b,144)
  result = readRos1Pal_interaction_msgsDirectionOfArrival(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/EnablingSoundLocalisation.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsEnablingSoundLocalisation* = object
  ## @brief Preserve original enable as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `enable`*: bool
const Ros1Pal_interaction_msgsEnablingSoundLocalisationMaximumWireBytes* = 1
const Ros1Pal_interaction_msgsEnablingSoundLocalisationCodecIdentity* = "UWVMROS1_8df033349e2f5d7072336e535fc87c1ff6148ed15bc36cc952a99d133a69d495"
const Ros1Pal_interaction_msgsEnablingSoundLocalisationNativeType* = "pal_interaction_msgs/EnablingSoundLocalisation"
const Ros1Pal_interaction_msgsEnablingSoundLocalisationNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsEnablingSoundLocalisation*(): Ros1Pal_interaction_msgsEnablingSoundLocalisation =
  result.`enable` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsEnablingSoundLocalisation; w: var Writer) =
  putBool(w,value.`enable`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsEnablingSoundLocalisation*(r: var Reader): Ros1Pal_interaction_msgsEnablingSoundLocalisation =
  result = initRos1Pal_interaction_msgsEnablingSoundLocalisation()
  result.`enable` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsEnablingSoundLocalisation): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsEnablingSoundLocalisation*(b: seq[byte]): Ros1Pal_interaction_msgsEnablingSoundLocalisation =
  var r = initReader(b,1)
  result = readRos1Pal_interaction_msgsEnablingSoundLocalisation(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/I18nArgument.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsI18nArgument* = object
  ## @brief Preserve original section as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `section`*: string
  ## @brief Preserve original key as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `key`*: string
  ## @brief Preserve original expanded as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `expanded`*: string
const Ros1Pal_interaction_msgsI18nArgumentMaximumWireBytes* = 396
const Ros1Pal_interaction_msgsI18nArgumentCodecIdentity* = "UWVMROS1_2ca48fd9d8f6dc4a1bc9b69c33c407ea1d6c400f22ceff31f784f161f41f27fb"
const Ros1Pal_interaction_msgsI18nArgumentNativeType* = "pal_interaction_msgs/I18nArgument"
const Ros1Pal_interaction_msgsI18nArgumentNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsI18nArgument*(): Ros1Pal_interaction_msgsI18nArgument =
  result.`section` = ""
  result.`key` = ""
  result.`expanded` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsI18nArgument; w: var Writer) =
  putString(w,value.`section`,128)
  putString(w,value.`key`,128)
  putString(w,value.`expanded`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsI18nArgument*(r: var Reader): Ros1Pal_interaction_msgsI18nArgument =
  result = initRos1Pal_interaction_msgsI18nArgument()
  result.`section` = getString(r,128)
  result.`key` = getString(r,128)
  result.`expanded` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsI18nArgument): seq[byte] =
  var w = initWriter(396)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsI18nArgument*(b: seq[byte]): Ros1Pal_interaction_msgsI18nArgument =
  var r = initReader(b,396)
  result = readRos1Pal_interaction_msgsI18nArgument(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/I18nText.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsI18nText* = object
  ## @brief Preserve original section as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `section`*: string
  ## @brief Preserve original key as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `key`*: string
  ## @brief Preserve original lang_id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `lang_id`*: string
  ## @brief Preserve original arguments as pal_interaction_msgs/I18nArgument.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `arguments`*: seq[Ros1Pal_interaction_msgsI18nArgument]
const Ros1Pal_interaction_msgsI18nTextMaximumWireBytes* = 1984
const Ros1Pal_interaction_msgsI18nTextCodecIdentity* = "UWVMROS1_b3e1cb48129a6ed9cad7f0b543c770aa8b7b0362d00e71185bb6b5ad8c38816c"
const Ros1Pal_interaction_msgsI18nTextNativeType* = "pal_interaction_msgs/I18nText"
const Ros1Pal_interaction_msgsI18nTextNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsI18nText*(): Ros1Pal_interaction_msgsI18nText =
  result.`section` = ""
  result.`key` = ""
  result.`lang_id` = ""
  result.`arguments` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsI18nText; w: var Writer) =
  putString(w,value.`section`,128)
  putString(w,value.`key`,128)
  putString(w,value.`lang_id`,128)
  if value.`arguments`.len > 4: fail(22)
  putInteger(w,uint32(value.`arguments`.len))
  for e in value.`arguments`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsI18nText*(r: var Reader): Ros1Pal_interaction_msgsI18nText =
  result = initRos1Pal_interaction_msgsI18nText()
  result.`section` = getString(r,128)
  result.`key` = getString(r,128)
  result.`lang_id` = getString(r,128)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 4: fail(22)
  let count3 = int(rawcount3)
  result.`arguments` = newSeq[Ros1Pal_interaction_msgsI18nArgument](count3)
  for i in 0..<count3:
    result.`arguments`[i] = readRos1Pal_interaction_msgsI18nArgument(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsI18nText): seq[byte] =
  var w = initWriter(1984)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsI18nText*(b: seq[byte]): Ros1Pal_interaction_msgsI18nText =
  var r = initReader(b,1984)
  result = readRos1Pal_interaction_msgsI18nText(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/TtsText.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsTtsText* = object
  ## @brief Preserve original text as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `text`*: string
  ## @brief Preserve original lang_id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `lang_id`*: string
const Ros1Pal_interaction_msgsTtsTextMaximumWireBytes* = 264
const Ros1Pal_interaction_msgsTtsTextCodecIdentity* = "UWVMROS1_0bf14fabb5b62c5341e606b8ac9f6abaf74a85033a10e9a8f1e5b8bdfe178a87"
const Ros1Pal_interaction_msgsTtsTextNativeType* = "pal_interaction_msgs/TtsText"
const Ros1Pal_interaction_msgsTtsTextNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsTtsText*(): Ros1Pal_interaction_msgsTtsText =
  result.`text` = ""
  result.`lang_id` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsTtsText; w: var Writer) =
  putString(w,value.`text`,128)
  putString(w,value.`lang_id`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsTtsText*(r: var Reader): Ros1Pal_interaction_msgsTtsText =
  result = initRos1Pal_interaction_msgsTtsText()
  result.`text` = getString(r,128)
  result.`lang_id` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsTtsText): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsTtsText*(b: seq[byte]): Ros1Pal_interaction_msgsTtsText =
  var r = initReader(b,264)
  result = readRos1Pal_interaction_msgsTtsText(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/GetSpeechDurationRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsGetSpeechDurationRequest* = object
  ## @brief Preserve original text as pal_interaction_msgs/I18nText.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `text`*: Ros1Pal_interaction_msgsI18nText
  ## @brief Preserve original rawtext as pal_interaction_msgs/TtsText.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `rawtext`*: Ros1Pal_interaction_msgsTtsText
const Ros1Pal_interaction_msgsGetSpeechDurationRequestMaximumWireBytes* = 2248
const Ros1Pal_interaction_msgsGetSpeechDurationRequestCodecIdentity* = "UWVMROS1_0926f4515183e6c9fd4cd5b20c6aa53014ba7dbd4e64113c9b6c514123ba7dc5"
const Ros1Pal_interaction_msgsGetSpeechDurationRequestNativeType* = "pal_interaction_msgs/GetSpeechDurationRequest"
const Ros1Pal_interaction_msgsGetSpeechDurationRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsGetSpeechDurationRequest*(): Ros1Pal_interaction_msgsGetSpeechDurationRequest =
  result.`text` = initRos1Pal_interaction_msgsI18nText()
  result.`rawtext` = initRos1Pal_interaction_msgsTtsText()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsGetSpeechDurationRequest; w: var Writer) =
  writeFields(value.`text`,w)
  writeFields(value.`rawtext`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsGetSpeechDurationRequest*(r: var Reader): Ros1Pal_interaction_msgsGetSpeechDurationRequest =
  result = initRos1Pal_interaction_msgsGetSpeechDurationRequest()
  result.`text` = readRos1Pal_interaction_msgsI18nText(r)
  result.`rawtext` = readRos1Pal_interaction_msgsTtsText(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsGetSpeechDurationRequest): seq[byte] =
  var w = initWriter(2248)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsGetSpeechDurationRequest*(b: seq[byte]): Ros1Pal_interaction_msgsGetSpeechDurationRequest =
  var r = initReader(b,2248)
  result = readRos1Pal_interaction_msgsGetSpeechDurationRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/GetSpeechDurationResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsGetSpeechDurationResponse* = object
  ## @brief Preserve original ok as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ok`*: bool
  ## @brief Preserve original words as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `words`*: seq[string]
  ## @brief Preserve original word_durations as duration.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `word_durations`*: seq[Ros1Duration]
const Ros1Pal_interaction_msgsGetSpeechDurationResponseMaximumWireBytes* = 2249
const Ros1Pal_interaction_msgsGetSpeechDurationResponseCodecIdentity* = "UWVMROS1_44379b24ddf4582ec184a0da7993d27b9f4ec5d430a129468bf8aef6d5437578"
const Ros1Pal_interaction_msgsGetSpeechDurationResponseNativeType* = "pal_interaction_msgs/GetSpeechDurationResponse"
const Ros1Pal_interaction_msgsGetSpeechDurationResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsGetSpeechDurationResponse*(): Ros1Pal_interaction_msgsGetSpeechDurationResponse =
  result.`ok` = false
  result.`words` = @[]
  result.`word_durations` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsGetSpeechDurationResponse; w: var Writer) =
  putBool(w,value.`ok`)
  if value.`words`.len > 16: fail(22)
  putInteger(w,uint32(value.`words`.len))
  for e in value.`words`:
    putString(w,e,128)
  if value.`word_durations`.len > 16: fail(22)
  putInteger(w,uint32(value.`word_durations`.len))
  for e in value.`word_durations`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsGetSpeechDurationResponse*(r: var Reader): Ros1Pal_interaction_msgsGetSpeechDurationResponse =
  result = initRos1Pal_interaction_msgsGetSpeechDurationResponse()
  result.`ok` = getBool(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`words` = newSeq[string](count1)
  for i in 0..<count1:
    result.`words`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`word_durations` = newSeq[Ros1Duration](count2)
  for i in 0..<count2:
    result.`word_durations`[i] = readRos1Duration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsGetSpeechDurationResponse): seq[byte] =
  var w = initWriter(2249)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsGetSpeechDurationResponse*(b: seq[byte]): Ros1Pal_interaction_msgsGetSpeechDurationResponse =
  var r = initReader(b,2249)
  result = readRos1Pal_interaction_msgsGetSpeechDurationResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/InputArgument.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsInputArgument* = object
  ## @brief Preserve original key as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `key`*: string
  ## @brief Preserve original value as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `value`*: string
const Ros1Pal_interaction_msgsInputArgumentMaximumWireBytes* = 264
const Ros1Pal_interaction_msgsInputArgumentCodecIdentity* = "UWVMROS1_96c3c0967199a746bf47ffd146123f31ec2f1949b7f3a343cad3825b8b1e8dd0"
const Ros1Pal_interaction_msgsInputArgumentNativeType* = "pal_interaction_msgs/InputArgument"
const Ros1Pal_interaction_msgsInputArgumentNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsInputArgument*(): Ros1Pal_interaction_msgsInputArgument =
  result.`key` = ""
  result.`value` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsInputArgument; w: var Writer) =
  putString(w,value.`key`,128)
  putString(w,value.`value`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsInputArgument*(r: var Reader): Ros1Pal_interaction_msgsInputArgument =
  result = initRos1Pal_interaction_msgsInputArgument()
  result.`key` = getString(r,128)
  result.`value` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsInputArgument): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsInputArgument*(b: seq[byte]): Ros1Pal_interaction_msgsInputArgument =
  var r = initReader(b,264)
  result = readRos1Pal_interaction_msgsInputArgument(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/Input.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsInput* = object
  ## @brief Preserve original action as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `action`*: string
  ## @brief Preserve original args as pal_interaction_msgs/InputArgument.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `args`*: seq[Ros1Pal_interaction_msgsInputArgument]
const Ros1Pal_interaction_msgsInputMaximumWireBytes* = 1192
const Ros1Pal_interaction_msgsInputCodecIdentity* = "UWVMROS1_11478aeb5c676f50680ee5c4e75973b10cec5df40f09cbb8573ddad4eb91d307"
const Ros1Pal_interaction_msgsInputNativeType* = "pal_interaction_msgs/Input"
const Ros1Pal_interaction_msgsInputNativeIdentity* = ""
const Ros1Pal_interaction_msgsInput_INPUT_ACCEPT*: string = "\x49\x4e\x50\x55\x54\x5f\x41\x43\x43\x45\x50\x54"
const Ros1Pal_interaction_msgsInput_INPUT_REJECT*: string = "\x49\x4e\x50\x55\x54\x5f\x52\x45\x4a\x45\x43\x54"
const Ros1Pal_interaction_msgsInput_INPUT_CANCEL*: string = "\x49\x4e\x50\x55\x54\x5f\x43\x41\x4e\x43\x45\x4c"
const Ros1Pal_interaction_msgsInput_OK*: string = "\x6f\x6b"
const Ros1Pal_interaction_msgsInput_YES*: string = "\x79\x65\x73"
const Ros1Pal_interaction_msgsInput_NO*: string = "\x6e\x6f"
const Ros1Pal_interaction_msgsInput_CANCEL*: string = "\x63\x61\x6e\x63\x65\x6c"
const Ros1Pal_interaction_msgsInput_ABORT*: string = "\x61\x62\x6f\x72\x74"
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsInput*(): Ros1Pal_interaction_msgsInput =
  result.`action` = ""
  result.`args` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsInput; w: var Writer) =
  putString(w,value.`action`,128)
  if value.`args`.len > 4: fail(22)
  putInteger(w,uint32(value.`args`.len))
  for e in value.`args`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsInput*(r: var Reader): Ros1Pal_interaction_msgsInput =
  result = initRos1Pal_interaction_msgsInput()
  result.`action` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`args` = newSeq[Ros1Pal_interaction_msgsInputArgument](count1)
  for i in 0..<count1:
    result.`args`[i] = readRos1Pal_interaction_msgsInputArgument(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsInput): seq[byte] =
  var w = initWriter(1192)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsInput*(b: seq[byte]): Ros1Pal_interaction_msgsInput =
  var r = initReader(b,1192)
  result = readRos1Pal_interaction_msgsInput(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/SoundGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsSoundGoal* = object
  ## @brief Preserve original text as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `text`*: string
  ## @brief Preserve original lang_id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `lang_id`*: string
  ## @brief Preserve original wait_before_speaking as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `wait_before_speaking`*: Ros1Duration
const Ros1Pal_interaction_msgsSoundGoalMaximumWireBytes* = 272
const Ros1Pal_interaction_msgsSoundGoalCodecIdentity* = "UWVMROS1_07b9c59deb5669b601a4e02708bd14d16a19263edde6f8fef3a4781724a4f3db"
const Ros1Pal_interaction_msgsSoundGoalNativeType* = "pal_interaction_msgs/SoundGoal"
const Ros1Pal_interaction_msgsSoundGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsSoundGoal*(): Ros1Pal_interaction_msgsSoundGoal =
  result.`text` = ""
  result.`lang_id` = ""
  result.`wait_before_speaking` = initRos1Duration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsSoundGoal; w: var Writer) =
  putString(w,value.`text`,128)
  putString(w,value.`lang_id`,128)
  writeFields(value.`wait_before_speaking`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsSoundGoal*(r: var Reader): Ros1Pal_interaction_msgsSoundGoal =
  result = initRos1Pal_interaction_msgsSoundGoal()
  result.`text` = getString(r,128)
  result.`lang_id` = getString(r,128)
  result.`wait_before_speaking` = readRos1Duration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsSoundGoal): seq[byte] =
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsSoundGoal*(b: seq[byte]): Ros1Pal_interaction_msgsSoundGoal =
  var r = initReader(b,272)
  result = readRos1Pal_interaction_msgsSoundGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/SoundResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsSoundResult* = object
  ## @brief Preserve original text as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `text`*: string
const Ros1Pal_interaction_msgsSoundResultMaximumWireBytes* = 132
const Ros1Pal_interaction_msgsSoundResultCodecIdentity* = "UWVMROS1_53c3ab50649a2ffe113e4ae246aa05736090d42f5a0158f2878292319ee89a86"
const Ros1Pal_interaction_msgsSoundResultNativeType* = "pal_interaction_msgs/SoundResult"
const Ros1Pal_interaction_msgsSoundResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsSoundResult*(): Ros1Pal_interaction_msgsSoundResult =
  result.`text` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsSoundResult; w: var Writer) =
  putString(w,value.`text`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsSoundResult*(r: var Reader): Ros1Pal_interaction_msgsSoundResult =
  result = initRos1Pal_interaction_msgsSoundResult()
  result.`text` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsSoundResult): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsSoundResult*(b: seq[byte]): Ros1Pal_interaction_msgsSoundResult =
  var r = initReader(b,132)
  result = readRos1Pal_interaction_msgsSoundResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/SoundFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsSoundFeedback* = object
const Ros1Pal_interaction_msgsSoundFeedbackMaximumWireBytes* = 0
const Ros1Pal_interaction_msgsSoundFeedbackCodecIdentity* = "UWVMROS1_e9a77075706815852fbf5684df54d9d655925f7fecc7caa407d9076adc645d7d"
const Ros1Pal_interaction_msgsSoundFeedbackNativeType* = "pal_interaction_msgs/SoundFeedback"
const Ros1Pal_interaction_msgsSoundFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsSoundFeedback*(): Ros1Pal_interaction_msgsSoundFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsSoundFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsSoundFeedback*(r: var Reader): Ros1Pal_interaction_msgsSoundFeedback =
  result = initRos1Pal_interaction_msgsSoundFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsSoundFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsSoundFeedback*(b: seq[byte]): Ros1Pal_interaction_msgsSoundFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_interaction_msgsSoundFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/SoundLocalisationServiceRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsSoundLocalisationServiceRequest* = object
  ## @brief Preserve original enabling as pal_interaction_msgs/EnablingSoundLocalisation.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `enabling`*: Ros1Pal_interaction_msgsEnablingSoundLocalisation
const Ros1Pal_interaction_msgsSoundLocalisationServiceRequestMaximumWireBytes* = 1
const Ros1Pal_interaction_msgsSoundLocalisationServiceRequestCodecIdentity* = "UWVMROS1_e7505ba44b9dc511311f5609c1618a1214362063600b32e2057dbe9cc2d32feb"
const Ros1Pal_interaction_msgsSoundLocalisationServiceRequestNativeType* = "pal_interaction_msgs/SoundLocalisationServiceRequest"
const Ros1Pal_interaction_msgsSoundLocalisationServiceRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsSoundLocalisationServiceRequest*(): Ros1Pal_interaction_msgsSoundLocalisationServiceRequest =
  result.`enabling` = initRos1Pal_interaction_msgsEnablingSoundLocalisation()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsSoundLocalisationServiceRequest; w: var Writer) =
  writeFields(value.`enabling`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsSoundLocalisationServiceRequest*(r: var Reader): Ros1Pal_interaction_msgsSoundLocalisationServiceRequest =
  result = initRos1Pal_interaction_msgsSoundLocalisationServiceRequest()
  result.`enabling` = readRos1Pal_interaction_msgsEnablingSoundLocalisation(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsSoundLocalisationServiceRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsSoundLocalisationServiceRequest*(b: seq[byte]): Ros1Pal_interaction_msgsSoundLocalisationServiceRequest =
  var r = initReader(b,1)
  result = readRos1Pal_interaction_msgsSoundLocalisationServiceRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/SoundLocalisationServiceResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsSoundLocalisationServiceResponse* = object
const Ros1Pal_interaction_msgsSoundLocalisationServiceResponseMaximumWireBytes* = 0
const Ros1Pal_interaction_msgsSoundLocalisationServiceResponseCodecIdentity* = "UWVMROS1_205fe5e2195345e29bac8477e95059862a44b476a359d808551427941c64ad6e"
const Ros1Pal_interaction_msgsSoundLocalisationServiceResponseNativeType* = "pal_interaction_msgs/SoundLocalisationServiceResponse"
const Ros1Pal_interaction_msgsSoundLocalisationServiceResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsSoundLocalisationServiceResponse*(): Ros1Pal_interaction_msgsSoundLocalisationServiceResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsSoundLocalisationServiceResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsSoundLocalisationServiceResponse*(r: var Reader): Ros1Pal_interaction_msgsSoundLocalisationServiceResponse =
  result = initRos1Pal_interaction_msgsSoundLocalisationServiceResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsSoundLocalisationServiceResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsSoundLocalisationServiceResponse*(b: seq[byte]): Ros1Pal_interaction_msgsSoundLocalisationServiceResponse =
  var r = initReader(b,0)
  result = readRos1Pal_interaction_msgsSoundLocalisationServiceResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/TTSstate.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsTTSstate* = object
  ## @brief Preserve original isSpeaking as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `isSpeaking`*: bool
  ## @brief Preserve original text as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `text`*: string
const Ros1Pal_interaction_msgsTTSstateMaximumWireBytes* = 133
const Ros1Pal_interaction_msgsTTSstateCodecIdentity* = "UWVMROS1_b9269838ab729ac39efc69c373314419ace1b43a2bf47176c822671aba9d9987"
const Ros1Pal_interaction_msgsTTSstateNativeType* = "pal_interaction_msgs/TTSstate"
const Ros1Pal_interaction_msgsTTSstateNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsTTSstate*(): Ros1Pal_interaction_msgsTTSstate =
  result.`isSpeaking` = false
  result.`text` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsTTSstate; w: var Writer) =
  putBool(w,value.`isSpeaking`)
  putString(w,value.`text`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsTTSstate*(r: var Reader): Ros1Pal_interaction_msgsTTSstate =
  result = initRos1Pal_interaction_msgsTTSstate()
  result.`isSpeaking` = getBool(r)
  result.`text` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsTTSstate): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsTTSstate*(b: seq[byte]): Ros1Pal_interaction_msgsTTSstate =
  var r = initReader(b,133)
  result = readRos1Pal_interaction_msgsTTSstate(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/TtsGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsTtsGoal* = object
  ## @brief Preserve original text as pal_interaction_msgs/I18nText.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `text`*: Ros1Pal_interaction_msgsI18nText
  ## @brief Preserve original rawtext as pal_interaction_msgs/TtsText.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `rawtext`*: Ros1Pal_interaction_msgsTtsText
  ## @brief Preserve original speakerName as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `speakerName`*: string
  ## @brief Preserve original wait_before_speaking as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `wait_before_speaking`*: float64
const Ros1Pal_interaction_msgsTtsGoalMaximumWireBytes* = 2388
const Ros1Pal_interaction_msgsTtsGoalCodecIdentity* = "UWVMROS1_d128a99394120e1688e4feb9906b033af53982dbf12040604502aeb8f59304c7"
const Ros1Pal_interaction_msgsTtsGoalNativeType* = "pal_interaction_msgs/TtsGoal"
const Ros1Pal_interaction_msgsTtsGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsTtsGoal*(): Ros1Pal_interaction_msgsTtsGoal =
  result.`text` = initRos1Pal_interaction_msgsI18nText()
  result.`rawtext` = initRos1Pal_interaction_msgsTtsText()
  result.`speakerName` = ""
  result.`wait_before_speaking` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsTtsGoal; w: var Writer) =
  writeFields(value.`text`,w)
  writeFields(value.`rawtext`,w)
  putString(w,value.`speakerName`,128)
  putFloat64(w,value.`wait_before_speaking`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsTtsGoal*(r: var Reader): Ros1Pal_interaction_msgsTtsGoal =
  result = initRos1Pal_interaction_msgsTtsGoal()
  result.`text` = readRos1Pal_interaction_msgsI18nText(r)
  result.`rawtext` = readRos1Pal_interaction_msgsTtsText(r)
  result.`speakerName` = getString(r,128)
  result.`wait_before_speaking` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsTtsGoal): seq[byte] =
  var w = initWriter(2388)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsTtsGoal*(b: seq[byte]): Ros1Pal_interaction_msgsTtsGoal =
  var r = initReader(b,2388)
  result = readRos1Pal_interaction_msgsTtsGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/TtsResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsTtsResult* = object
  ## @brief Preserve original text as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `text`*: string
  ## @brief Preserve original msg as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `msg`*: string
const Ros1Pal_interaction_msgsTtsResultMaximumWireBytes* = 264
const Ros1Pal_interaction_msgsTtsResultCodecIdentity* = "UWVMROS1_74f6eebecfd7e0e50e48ca3393fc0f9e9e24baec834bf39cb30455e9f0d9cf56"
const Ros1Pal_interaction_msgsTtsResultNativeType* = "pal_interaction_msgs/TtsResult"
const Ros1Pal_interaction_msgsTtsResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsTtsResult*(): Ros1Pal_interaction_msgsTtsResult =
  result.`text` = ""
  result.`msg` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsTtsResult; w: var Writer) =
  putString(w,value.`text`,128)
  putString(w,value.`msg`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsTtsResult*(r: var Reader): Ros1Pal_interaction_msgsTtsResult =
  result = initRos1Pal_interaction_msgsTtsResult()
  result.`text` = getString(r,128)
  result.`msg` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsTtsResult): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsTtsResult*(b: seq[byte]): Ros1Pal_interaction_msgsTtsResult =
  var r = initReader(b,264)
  result = readRos1Pal_interaction_msgsTtsResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/TtsMark.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsTtsMark* = object
  ## @brief Preserve original id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `id`*: string
  ## @brief Preserve original keys as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `keys`*: seq[string]
  ## @brief Preserve original value as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `value`*: seq[string]
const Ros1Pal_interaction_msgsTtsMarkMaximumWireBytes* = 4364
const Ros1Pal_interaction_msgsTtsMarkCodecIdentity* = "UWVMROS1_4f92d66f3ec5bc7645da4cb0dabce2d662ebffe13a67c999c5cf3d771f11fc95"
const Ros1Pal_interaction_msgsTtsMarkNativeType* = "pal_interaction_msgs/TtsMark"
const Ros1Pal_interaction_msgsTtsMarkNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsTtsMark*(): Ros1Pal_interaction_msgsTtsMark =
  result.`id` = ""
  result.`keys` = @[]
  result.`value` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsTtsMark; w: var Writer) =
  putString(w,value.`id`,128)
  if value.`keys`.len > 16: fail(22)
  putInteger(w,uint32(value.`keys`.len))
  for e in value.`keys`:
    putString(w,e,128)
  if value.`value`.len > 16: fail(22)
  putInteger(w,uint32(value.`value`.len))
  for e in value.`value`:
    putString(w,e,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsTtsMark*(r: var Reader): Ros1Pal_interaction_msgsTtsMark =
  result = initRos1Pal_interaction_msgsTtsMark()
  result.`id` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`keys` = newSeq[string](count1)
  for i in 0..<count1:
    result.`keys`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`value` = newSeq[string](count2)
  for i in 0..<count2:
    result.`value`[i] = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsTtsMark): seq[byte] =
  var w = initWriter(4364)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsTtsMark*(b: seq[byte]): Ros1Pal_interaction_msgsTtsMark =
  var r = initReader(b,4364)
  result = readRos1Pal_interaction_msgsTtsMark(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/TtsFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsTtsFeedback* = object
  ## @brief Preserve original event_type as uint16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `event_type`*: uint16
  ## @brief Preserve original timestamp as time.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `timestamp`*: Ros1Time
  ## @brief Preserve original text_said as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `text_said`*: string
  ## @brief Preserve original next_word as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `next_word`*: string
  ## @brief Preserve original viseme_id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `viseme_id`*: string
  ## @brief Preserve original marks as pal_interaction_msgs/TtsMark.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `marks`*: Ros1Pal_interaction_msgsTtsMark
const Ros1Pal_interaction_msgsTtsFeedbackMaximumWireBytes* = 4770
const Ros1Pal_interaction_msgsTtsFeedbackCodecIdentity* = "UWVMROS1_3154aa11cda4bc9750910ea8283b14106fc992d9b4f99055bdefd226bf784894"
const Ros1Pal_interaction_msgsTtsFeedbackNativeType* = "pal_interaction_msgs/TtsFeedback"
const Ros1Pal_interaction_msgsTtsFeedbackNativeIdentity* = ""
const Ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_INITIALIZATION*: uint16 = 1'u16
const Ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_SHUTDOWN*: uint16 = 2'u16
const Ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_SYNCHRONIZATION*: uint16 = 4'u16
const Ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_FINISHED_PLAYING_UTTERANCE*: uint16 = 8'u16
const Ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_MARK*: uint16 = 16'u16
const Ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_STARTED_PLAYING_WORD*: uint16 = 32'u16
const Ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_FINISHED_PLAYING_PHRASE*: uint16 = 64'u16
const Ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_FINISHED_PLAYING_SENTENCE*: uint16 = 128'u16
const Ros1Pal_interaction_msgsTtsFeedback_TTS_EVENT_VISEME*: uint16 = 256'u16
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsTtsFeedback*(): Ros1Pal_interaction_msgsTtsFeedback =
  result.`event_type` = 0
  result.`timestamp` = initRos1Time()
  result.`text_said` = ""
  result.`next_word` = ""
  result.`viseme_id` = ""
  result.`marks` = initRos1Pal_interaction_msgsTtsMark()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsTtsFeedback; w: var Writer) =
  putInteger(w,value.`event_type`)
  writeFields(value.`timestamp`,w)
  putString(w,value.`text_said`,128)
  putString(w,value.`next_word`,128)
  putString(w,value.`viseme_id`,128)
  writeFields(value.`marks`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsTtsFeedback*(r: var Reader): Ros1Pal_interaction_msgsTtsFeedback =
  result = initRos1Pal_interaction_msgsTtsFeedback()
  result.`event_type` = getInteger(r,uint16)
  result.`timestamp` = readRos1Time(r)
  result.`text_said` = getString(r,128)
  result.`next_word` = getString(r,128)
  result.`viseme_id` = getString(r,128)
  result.`marks` = readRos1Pal_interaction_msgsTtsMark(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsTtsFeedback): seq[byte] =
  var w = initWriter(4770)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsTtsFeedback*(b: seq[byte]): Ros1Pal_interaction_msgsTtsFeedback =
  var r = initReader(b,4770)
  result = readRos1Pal_interaction_msgsTtsFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/VoiceActivity.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsVoiceActivity* = object
  ## @brief Preserve original isSpeech as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `isSpeech`*: bool
const Ros1Pal_interaction_msgsVoiceActivityMaximumWireBytes* = 1
const Ros1Pal_interaction_msgsVoiceActivityCodecIdentity* = "UWVMROS1_c33952dbed35f2e6e08dd4dd8b7adf5c71a52106e2b274b988ec3218648b42a7"
const Ros1Pal_interaction_msgsVoiceActivityNativeType* = "pal_interaction_msgs/VoiceActivity"
const Ros1Pal_interaction_msgsVoiceActivityNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsVoiceActivity*(): Ros1Pal_interaction_msgsVoiceActivity =
  result.`isSpeech` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsVoiceActivity; w: var Writer) =
  putBool(w,value.`isSpeech`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsVoiceActivity*(r: var Reader): Ros1Pal_interaction_msgsVoiceActivity =
  result = initRos1Pal_interaction_msgsVoiceActivity()
  result.`isSpeech` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsVoiceActivity): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsVoiceActivity*(b: seq[byte]): Ros1Pal_interaction_msgsVoiceActivity =
  var r = initReader(b,1)
  result = readRos1Pal_interaction_msgsVoiceActivity(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/WebGuiEvent.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsWebGuiEvent* = object
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original arg as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `arg`*: string
const Ros1Pal_interaction_msgsWebGuiEventMaximumWireBytes* = 264
const Ros1Pal_interaction_msgsWebGuiEventCodecIdentity* = "UWVMROS1_fb8030a4cb371da5dae852d62b28d8e7b03c3d37f0f6390c904ef3dc84084e23"
const Ros1Pal_interaction_msgsWebGuiEventNativeType* = "pal_interaction_msgs/WebGuiEvent"
const Ros1Pal_interaction_msgsWebGuiEventNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsWebGuiEvent*(): Ros1Pal_interaction_msgsWebGuiEvent =
  result.`name` = ""
  result.`arg` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsWebGuiEvent; w: var Writer) =
  putString(w,value.`name`,128)
  putString(w,value.`arg`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsWebGuiEvent*(r: var Reader): Ros1Pal_interaction_msgsWebGuiEvent =
  result = initRos1Pal_interaction_msgsWebGuiEvent()
  result.`name` = getString(r,128)
  result.`arg` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsWebGuiEvent): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsWebGuiEvent*(b: seq[byte]): Ros1Pal_interaction_msgsWebGuiEvent =
  var r = initReader(b,264)
  result = readRos1Pal_interaction_msgsWebGuiEvent(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/asrupdate.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsAsrupdate* = object
  ## @brief Preserve original language as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `language`*: string
  ## @brief Preserve original enable_grammar as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `enable_grammar`*: string
  ## @brief Preserve original disable_grammar as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `disable_grammar`*: string
  ## @brief Preserve original acousticenv as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `acousticenv`*: string
  ## @brief Preserve original active as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `active`*: bool
const Ros1Pal_interaction_msgsAsrupdateMaximumWireBytes* = 529
const Ros1Pal_interaction_msgsAsrupdateCodecIdentity* = "UWVMROS1_34584358ab6faa36c96fbbe2de2bef7cba7ae6eb5879cd6b676a1826fb154fda"
const Ros1Pal_interaction_msgsAsrupdateNativeType* = "pal_interaction_msgs/asrupdate"
const Ros1Pal_interaction_msgsAsrupdateNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsAsrupdate*(): Ros1Pal_interaction_msgsAsrupdate =
  result.`language` = ""
  result.`enable_grammar` = ""
  result.`disable_grammar` = ""
  result.`acousticenv` = ""
  result.`active` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsAsrupdate; w: var Writer) =
  putString(w,value.`language`,128)
  putString(w,value.`enable_grammar`,128)
  putString(w,value.`disable_grammar`,128)
  putString(w,value.`acousticenv`,128)
  putBool(w,value.`active`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsAsrupdate*(r: var Reader): Ros1Pal_interaction_msgsAsrupdate =
  result = initRos1Pal_interaction_msgsAsrupdate()
  result.`language` = getString(r,128)
  result.`enable_grammar` = getString(r,128)
  result.`disable_grammar` = getString(r,128)
  result.`acousticenv` = getString(r,128)
  result.`active` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsAsrupdate): seq[byte] =
  var w = initWriter(529)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsAsrupdate*(b: seq[byte]): Ros1Pal_interaction_msgsAsrupdate =
  var r = initReader(b,529)
  result = readRos1Pal_interaction_msgsAsrupdate(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/audiosignal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsAudiosignal* = object
  ## @brief Preserve original channel0 as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `channel0`*: seq[float64]
  ## @brief Preserve original channel1 as float64.
  ## @details At most 16 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `channel1`*: seq[float64]
const Ros1Pal_interaction_msgsAudiosignalMaximumWireBytes* = 264
const Ros1Pal_interaction_msgsAudiosignalCodecIdentity* = "UWVMROS1_f70d9a987e0f5443060a55d2f617d9a8fc9e59fe110a9acd256a186b64e5e809"
const Ros1Pal_interaction_msgsAudiosignalNativeType* = "pal_interaction_msgs/audiosignal"
const Ros1Pal_interaction_msgsAudiosignalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsAudiosignal*(): Ros1Pal_interaction_msgsAudiosignal =
  result.`channel0` = @[]
  result.`channel1` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsAudiosignal; w: var Writer) =
  if value.`channel0`.len > 16: fail(22)
  putInteger(w,uint32(value.`channel0`.len))
  for e in value.`channel0`:
    putFloat64(w,e)
  if value.`channel1`.len > 16: fail(22)
  putInteger(w,uint32(value.`channel1`.len))
  for e in value.`channel1`:
    putFloat64(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsAudiosignal*(r: var Reader): Ros1Pal_interaction_msgsAudiosignal =
  result = initRos1Pal_interaction_msgsAudiosignal()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`channel0` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`channel0`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`channel1` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`channel1`[i] = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsAudiosignal): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsAudiosignal*(b: seq[byte]): Ros1Pal_interaction_msgsAudiosignal =
  var r = initReader(b,264)
  result = readRos1Pal_interaction_msgsAudiosignal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/recognizerServiceRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsRecognizerServiceRequest* = object
  ## @brief Preserve original asrupdate as pal_interaction_msgs/asrupdate.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `asrupdate`*: Ros1Pal_interaction_msgsAsrupdate
const Ros1Pal_interaction_msgsRecognizerServiceRequestMaximumWireBytes* = 529
const Ros1Pal_interaction_msgsRecognizerServiceRequestCodecIdentity* = "UWVMROS1_369151b882d849a0ab75110068aedd9eac22d87afe7b5bc13af87a6f78588edc"
const Ros1Pal_interaction_msgsRecognizerServiceRequestNativeType* = "pal_interaction_msgs/recognizerServiceRequest"
const Ros1Pal_interaction_msgsRecognizerServiceRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsRecognizerServiceRequest*(): Ros1Pal_interaction_msgsRecognizerServiceRequest =
  result.`asrupdate` = initRos1Pal_interaction_msgsAsrupdate()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsRecognizerServiceRequest; w: var Writer) =
  writeFields(value.`asrupdate`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsRecognizerServiceRequest*(r: var Reader): Ros1Pal_interaction_msgsRecognizerServiceRequest =
  result = initRos1Pal_interaction_msgsRecognizerServiceRequest()
  result.`asrupdate` = readRos1Pal_interaction_msgsAsrupdate(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsRecognizerServiceRequest): seq[byte] =
  var w = initWriter(529)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsRecognizerServiceRequest*(b: seq[byte]): Ros1Pal_interaction_msgsRecognizerServiceRequest =
  var r = initReader(b,529)
  result = readRos1Pal_interaction_msgsRecognizerServiceRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_interaction_msgs/recognizerServiceResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_interaction_msgsRecognizerServiceResponse* = object
const Ros1Pal_interaction_msgsRecognizerServiceResponseMaximumWireBytes* = 0
const Ros1Pal_interaction_msgsRecognizerServiceResponseCodecIdentity* = "UWVMROS1_3598ef995f13f4377e0e4eff270a9e277c3c94018f60aeb944119ce9f5b25813"
const Ros1Pal_interaction_msgsRecognizerServiceResponseNativeType* = "pal_interaction_msgs/recognizerServiceResponse"
const Ros1Pal_interaction_msgsRecognizerServiceResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_interaction_msgsRecognizerServiceResponse*(): Ros1Pal_interaction_msgsRecognizerServiceResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_interaction_msgsRecognizerServiceResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_interaction_msgsRecognizerServiceResponse*(r: var Reader): Ros1Pal_interaction_msgsRecognizerServiceResponse =
  result = initRos1Pal_interaction_msgsRecognizerServiceResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_interaction_msgsRecognizerServiceResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_interaction_msgsRecognizerServiceResponse*(b: seq[byte]): Ros1Pal_interaction_msgsRecognizerServiceResponse =
  var r = initReader(b,0)
  result = readRos1Pal_interaction_msgsRecognizerServiceResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_motion_model_msgs/GetMotionMapRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_motion_model_msgsGetMotionMapRequest* = object
const Ros1Pal_motion_model_msgsGetMotionMapRequestMaximumWireBytes* = 0
const Ros1Pal_motion_model_msgsGetMotionMapRequestCodecIdentity* = "UWVMROS1_4bfce8e9cc79e30ec211aa18bafb432fa0d3ff4fa18569a1c0ef178fe2729e97"
const Ros1Pal_motion_model_msgsGetMotionMapRequestNativeType* = "pal_motion_model_msgs/GetMotionMapRequest"
const Ros1Pal_motion_model_msgsGetMotionMapRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_motion_model_msgsGetMotionMapRequest*(): Ros1Pal_motion_model_msgsGetMotionMapRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_motion_model_msgsGetMotionMapRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_motion_model_msgsGetMotionMapRequest*(r: var Reader): Ros1Pal_motion_model_msgsGetMotionMapRequest =
  result = initRos1Pal_motion_model_msgsGetMotionMapRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_motion_model_msgsGetMotionMapRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_motion_model_msgsGetMotionMapRequest*(b: seq[byte]): Ros1Pal_motion_model_msgsGetMotionMapRequest =
  var r = initReader(b,0)
  result = readRos1Pal_motion_model_msgsGetMotionMapRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_motion_model_msgs/MotionModel.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_motion_model_msgsMotionModel* = object
  ## @brief Preserve original heading_mean as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `heading_mean`*: float32
  ## @brief Preserve original heading_std_dev as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `heading_std_dev`*: float32
  ## @brief Preserve original linear_speed_mean as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `linear_speed_mean`*: float32
  ## @brief Preserve original linear_speed_std_dev as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `linear_speed_std_dev`*: float32
  ## @brief Preserve original angular_speed_mean as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `angular_speed_mean`*: float32
  ## @brief Preserve original angular_speed_std_dev as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `angular_speed_std_dev`*: float32
const Ros1Pal_motion_model_msgsMotionModelMaximumWireBytes* = 24
const Ros1Pal_motion_model_msgsMotionModelCodecIdentity* = "UWVMROS1_3d44b889a1c70d5e84107202bccf2143c8dd559a2cd5499d0c7319568469c1ea"
const Ros1Pal_motion_model_msgsMotionModelNativeType* = "pal_motion_model_msgs/MotionModel"
const Ros1Pal_motion_model_msgsMotionModelNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_motion_model_msgsMotionModel*(): Ros1Pal_motion_model_msgsMotionModel =
  result.`heading_mean` = 0
  result.`heading_std_dev` = 0
  result.`linear_speed_mean` = 0
  result.`linear_speed_std_dev` = 0
  result.`angular_speed_mean` = 0
  result.`angular_speed_std_dev` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_motion_model_msgsMotionModel; w: var Writer) =
  putFloat32(w,value.`heading_mean`)
  putFloat32(w,value.`heading_std_dev`)
  putFloat32(w,value.`linear_speed_mean`)
  putFloat32(w,value.`linear_speed_std_dev`)
  putFloat32(w,value.`angular_speed_mean`)
  putFloat32(w,value.`angular_speed_std_dev`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_motion_model_msgsMotionModel*(r: var Reader): Ros1Pal_motion_model_msgsMotionModel =
  result = initRos1Pal_motion_model_msgsMotionModel()
  result.`heading_mean` = getFloat32(r)
  result.`heading_std_dev` = getFloat32(r)
  result.`linear_speed_mean` = getFloat32(r)
  result.`linear_speed_std_dev` = getFloat32(r)
  result.`angular_speed_mean` = getFloat32(r)
  result.`angular_speed_std_dev` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_motion_model_msgsMotionModel): seq[byte] =
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_motion_model_msgsMotionModel*(b: seq[byte]): Ros1Pal_motion_model_msgsMotionModel =
  var r = initReader(b,24)
  result = readRos1Pal_motion_model_msgsMotionModel(r)
  finish(r)
## @brief Own every original field of ROS1 pal_motion_model_msgs/MotionModelList.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_motion_model_msgsMotionModelList* = object
  ## @brief Preserve original models as pal_motion_model_msgs/MotionModel.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `models`*: seq[Ros1Pal_motion_model_msgsMotionModel]
const Ros1Pal_motion_model_msgsMotionModelListMaximumWireBytes* = 100
const Ros1Pal_motion_model_msgsMotionModelListCodecIdentity* = "UWVMROS1_f85f87d53cc9ae6392347e9d2cc41d306260335b4568e671890ebdd43a27a294"
const Ros1Pal_motion_model_msgsMotionModelListNativeType* = "pal_motion_model_msgs/MotionModelList"
const Ros1Pal_motion_model_msgsMotionModelListNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_motion_model_msgsMotionModelList*(): Ros1Pal_motion_model_msgsMotionModelList =
  result.`models` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_motion_model_msgsMotionModelList; w: var Writer) =
  if value.`models`.len > 4: fail(22)
  putInteger(w,uint32(value.`models`.len))
  for e in value.`models`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_motion_model_msgsMotionModelList*(r: var Reader): Ros1Pal_motion_model_msgsMotionModelList =
  result = initRos1Pal_motion_model_msgsMotionModelList()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`models` = newSeq[Ros1Pal_motion_model_msgsMotionModel](count0)
  for i in 0..<count0:
    result.`models`[i] = readRos1Pal_motion_model_msgsMotionModel(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_motion_model_msgsMotionModelList): seq[byte] =
  var w = initWriter(100)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_motion_model_msgsMotionModelList*(b: seq[byte]): Ros1Pal_motion_model_msgsMotionModelList =
  var r = initReader(b,100)
  result = readRos1Pal_motion_model_msgsMotionModelList(r)
  finish(r)
## @brief Own every original field of ROS1 pal_motion_model_msgs/MotionModelMap.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_motion_model_msgsMotionModelMap* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original info as nav_msgs/MapMetaData.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `info`*: Ros1Nav_msgsMapMetaData
  ## @brief Preserve original data as pal_motion_model_msgs/MotionModelList.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `data`*: seq[Ros1Pal_motion_model_msgsMotionModelList]
const Ros1Pal_motion_model_msgsMotionModelMapMaximumWireBytes* = 624
const Ros1Pal_motion_model_msgsMotionModelMapCodecIdentity* = "UWVMROS1_6f1702acedc40207e16d9a06d68581fb055ac1b42135efdbbbd1477eff42b289"
const Ros1Pal_motion_model_msgsMotionModelMapNativeType* = "pal_motion_model_msgs/MotionModelMap"
const Ros1Pal_motion_model_msgsMotionModelMapNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_motion_model_msgsMotionModelMap*(): Ros1Pal_motion_model_msgsMotionModelMap =
  result.`header` = initRos1Std_msgsHeader()
  result.`info` = initRos1Nav_msgsMapMetaData()
  result.`data` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_motion_model_msgsMotionModelMap; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`info`,w)
  if value.`data`.len > 4: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_motion_model_msgsMotionModelMap*(r: var Reader): Ros1Pal_motion_model_msgsMotionModelMap =
  result = initRos1Pal_motion_model_msgsMotionModelMap()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`info` = readRos1Nav_msgsMapMetaData(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`data` = newSeq[Ros1Pal_motion_model_msgsMotionModelList](count2)
  for i in 0..<count2:
    result.`data`[i] = readRos1Pal_motion_model_msgsMotionModelList(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_motion_model_msgsMotionModelMap): seq[byte] =
  var w = initWriter(624)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_motion_model_msgsMotionModelMap*(b: seq[byte]): Ros1Pal_motion_model_msgsMotionModelMap =
  var r = initReader(b,624)
  result = readRos1Pal_motion_model_msgsMotionModelMap(r)
  finish(r)
## @brief Own every original field of ROS1 pal_motion_model_msgs/GetMotionMapResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_motion_model_msgsGetMotionMapResponse* = object
  ## @brief Preserve original map as pal_motion_model_msgs/MotionModelMap.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `map`*: Ros1Pal_motion_model_msgsMotionModelMap
const Ros1Pal_motion_model_msgsGetMotionMapResponseMaximumWireBytes* = 624
const Ros1Pal_motion_model_msgsGetMotionMapResponseCodecIdentity* = "UWVMROS1_b031c17ef990e784eeeb7fbf270b482207c5de43323a9cbf37306ac07b159440"
const Ros1Pal_motion_model_msgsGetMotionMapResponseNativeType* = "pal_motion_model_msgs/GetMotionMapResponse"
const Ros1Pal_motion_model_msgsGetMotionMapResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_motion_model_msgsGetMotionMapResponse*(): Ros1Pal_motion_model_msgsGetMotionMapResponse =
  result.`map` = initRos1Pal_motion_model_msgsMotionModelMap()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_motion_model_msgsGetMotionMapResponse; w: var Writer) =
  writeFields(value.`map`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_motion_model_msgsGetMotionMapResponse*(r: var Reader): Ros1Pal_motion_model_msgsGetMotionMapResponse =
  result = initRos1Pal_motion_model_msgsGetMotionMapResponse()
  result.`map` = readRos1Pal_motion_model_msgsMotionModelMap(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_motion_model_msgsGetMotionMapResponse): seq[byte] =
  var w = initWriter(624)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_motion_model_msgsGetMotionMapResponse*(b: seq[byte]): Ros1Pal_motion_model_msgsGetMotionMapResponse =
  var r = initReader(b,624)
  result = readRos1Pal_motion_model_msgsGetMotionMapResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_multirobot_msgs/WifiServiceDetection.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_multirobot_msgsWifiServiceDetection* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original id as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `id`*: string
  ## @brief Preserve original signal as int16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `signal`*: int16
const Ros1Pal_multirobot_msgsWifiServiceDetectionMaximumWireBytes* = 278
const Ros1Pal_multirobot_msgsWifiServiceDetectionCodecIdentity* = "UWVMROS1_1f9a244c4e98ec5f4eb60bd008a62b94a91a6982b56273510c3019b95f1b5741"
const Ros1Pal_multirobot_msgsWifiServiceDetectionNativeType* = "pal_multirobot_msgs/WifiServiceDetection"
const Ros1Pal_multirobot_msgsWifiServiceDetectionNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_multirobot_msgsWifiServiceDetection*(): Ros1Pal_multirobot_msgsWifiServiceDetection =
  result.`header` = initRos1Std_msgsHeader()
  result.`id` = ""
  result.`signal` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_multirobot_msgsWifiServiceDetection; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`id`,128)
  putInteger(w,value.`signal`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_multirobot_msgsWifiServiceDetection*(r: var Reader): Ros1Pal_multirobot_msgsWifiServiceDetection =
  result = initRos1Pal_multirobot_msgsWifiServiceDetection()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`id` = getString(r,128)
  result.`signal` = getInteger(r,int16)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_multirobot_msgsWifiServiceDetection): seq[byte] =
  var w = initWriter(278)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_multirobot_msgsWifiServiceDetection*(b: seq[byte]): Ros1Pal_multirobot_msgsWifiServiceDetection =
  var r = initReader(b,278)
  result = readRos1Pal_multirobot_msgsWifiServiceDetection(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/AcknowledgmentRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsAcknowledgmentRequest* = object
  ## @brief Preserve original input as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `input`*: string
const Ros1Pal_navigation_msgsAcknowledgmentRequestMaximumWireBytes* = 132
const Ros1Pal_navigation_msgsAcknowledgmentRequestCodecIdentity* = "UWVMROS1_0249fb5130ed44b9127f0cb73472fc4366de614fcc3be68ed3e7bf2a4636cae5"
const Ros1Pal_navigation_msgsAcknowledgmentRequestNativeType* = "pal_navigation_msgs/AcknowledgmentRequest"
const Ros1Pal_navigation_msgsAcknowledgmentRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsAcknowledgmentRequest*(): Ros1Pal_navigation_msgsAcknowledgmentRequest =
  result.`input` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsAcknowledgmentRequest; w: var Writer) =
  putString(w,value.`input`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsAcknowledgmentRequest*(r: var Reader): Ros1Pal_navigation_msgsAcknowledgmentRequest =
  result = initRos1Pal_navigation_msgsAcknowledgmentRequest()
  result.`input` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsAcknowledgmentRequest): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsAcknowledgmentRequest*(b: seq[byte]): Ros1Pal_navigation_msgsAcknowledgmentRequest =
  var r = initReader(b,132)
  result = readRos1Pal_navigation_msgsAcknowledgmentRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/AcknowledgmentResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsAcknowledgmentResponse* = object
  ## @brief Preserve original output as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `output`*: bool
  ## @brief Preserve original error as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `error`*: string
const Ros1Pal_navigation_msgsAcknowledgmentResponseMaximumWireBytes* = 133
const Ros1Pal_navigation_msgsAcknowledgmentResponseCodecIdentity* = "UWVMROS1_cbc0f207907bc8de9f5c04bbf13c54ce81e72797ffadd0fea44980d1aa2658ae"
const Ros1Pal_navigation_msgsAcknowledgmentResponseNativeType* = "pal_navigation_msgs/AcknowledgmentResponse"
const Ros1Pal_navigation_msgsAcknowledgmentResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsAcknowledgmentResponse*(): Ros1Pal_navigation_msgsAcknowledgmentResponse =
  result.`output` = false
  result.`error` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsAcknowledgmentResponse; w: var Writer) =
  putBool(w,value.`output`)
  putString(w,value.`error`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsAcknowledgmentResponse*(r: var Reader): Ros1Pal_navigation_msgsAcknowledgmentResponse =
  result = initRos1Pal_navigation_msgsAcknowledgmentResponse()
  result.`output` = getBool(r)
  result.`error` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsAcknowledgmentResponse): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsAcknowledgmentResponse*(b: seq[byte]): Ros1Pal_navigation_msgsAcknowledgmentResponse =
  var r = initReader(b,133)
  result = readRos1Pal_navigation_msgsAcknowledgmentResponse(r)
  finish(r)
## @brief Own every original field of ROS1 std_msgs/String.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_msgsString* = object
  ## @brief Preserve original data as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `data`*: string
const Ros1Std_msgsStringMaximumWireBytes* = 132
const Ros1Std_msgsStringCodecIdentity* = "UWVMROS1_8a71a2d5957414e5a34318653c6314c005aab13980a35fa331401a4acd4442dc"
const Ros1Std_msgsStringNativeType* = "std_msgs/String"
const Ros1Std_msgsStringNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_msgsString*(): Ros1Std_msgsString =
  result.`data` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_msgsString; w: var Writer) =
  putString(w,value.`data`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_msgsString*(r: var Reader): Ros1Std_msgsString =
  result = initRos1Std_msgsString()
  result.`data` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_msgsString): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_msgsString*(b: seq[byte]): Ros1Std_msgsString =
  var r = initReader(b,132)
  result = readRos1Std_msgsString(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/AvailableMaps.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsAvailableMaps* = object
  ## @brief Preserve original map_names as std_msgs/String.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `map_names`*: seq[Ros1Std_msgsString]
const Ros1Pal_navigation_msgsAvailableMapsMaximumWireBytes* = 532
const Ros1Pal_navigation_msgsAvailableMapsCodecIdentity* = "UWVMROS1_3ac5ca4dc811d8082ad915e4f81eca379f2165a639dc113bb078f9952ed7322d"
const Ros1Pal_navigation_msgsAvailableMapsNativeType* = "pal_navigation_msgs/AvailableMaps"
const Ros1Pal_navigation_msgsAvailableMapsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsAvailableMaps*(): Ros1Pal_navigation_msgsAvailableMaps =
  result.`map_names` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsAvailableMaps; w: var Writer) =
  if value.`map_names`.len > 4: fail(22)
  putInteger(w,uint32(value.`map_names`.len))
  for e in value.`map_names`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsAvailableMaps*(r: var Reader): Ros1Pal_navigation_msgsAvailableMaps =
  result = initRos1Pal_navigation_msgsAvailableMaps()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`map_names` = newSeq[Ros1Std_msgsString](count0)
  for i in 0..<count0:
    result.`map_names`[i] = readRos1Std_msgsString(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsAvailableMaps): seq[byte] =
  var w = initWriter(532)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsAvailableMaps*(b: seq[byte]): Ros1Pal_navigation_msgsAvailableMaps =
  var r = initReader(b,532)
  result = readRos1Pal_navigation_msgsAvailableMaps(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ChangeBuildingRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsChangeBuildingRequest* = object
  ## @brief Preserve original building_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `building_name`*: string
  ## @brief Preserve original floor_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `floor_name`*: string
const Ros1Pal_navigation_msgsChangeBuildingRequestMaximumWireBytes* = 264
const Ros1Pal_navigation_msgsChangeBuildingRequestCodecIdentity* = "UWVMROS1_6144b47179187bf53c27112461762b29e9af1841704a53981e0b633d798c094c"
const Ros1Pal_navigation_msgsChangeBuildingRequestNativeType* = "pal_navigation_msgs/ChangeBuildingRequest"
const Ros1Pal_navigation_msgsChangeBuildingRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsChangeBuildingRequest*(): Ros1Pal_navigation_msgsChangeBuildingRequest =
  result.`building_name` = ""
  result.`floor_name` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsChangeBuildingRequest; w: var Writer) =
  putString(w,value.`building_name`,128)
  putString(w,value.`floor_name`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsChangeBuildingRequest*(r: var Reader): Ros1Pal_navigation_msgsChangeBuildingRequest =
  result = initRos1Pal_navigation_msgsChangeBuildingRequest()
  result.`building_name` = getString(r,128)
  result.`floor_name` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsChangeBuildingRequest): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsChangeBuildingRequest*(b: seq[byte]): Ros1Pal_navigation_msgsChangeBuildingRequest =
  var r = initReader(b,264)
  result = readRos1Pal_navigation_msgsChangeBuildingRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ChangeBuildingResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsChangeBuildingResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
const Ros1Pal_navigation_msgsChangeBuildingResponseMaximumWireBytes* = 1
const Ros1Pal_navigation_msgsChangeBuildingResponseCodecIdentity* = "UWVMROS1_561da528ec2a5cc779e660da2d9218d3b64339cf0a7c3a889aabb5d8aa63e640"
const Ros1Pal_navigation_msgsChangeBuildingResponseNativeType* = "pal_navigation_msgs/ChangeBuildingResponse"
const Ros1Pal_navigation_msgsChangeBuildingResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsChangeBuildingResponse*(): Ros1Pal_navigation_msgsChangeBuildingResponse =
  result.`success` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsChangeBuildingResponse; w: var Writer) =
  putBool(w,value.`success`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsChangeBuildingResponse*(r: var Reader): Ros1Pal_navigation_msgsChangeBuildingResponse =
  result = initRos1Pal_navigation_msgsChangeBuildingResponse()
  result.`success` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsChangeBuildingResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsChangeBuildingResponse*(b: seq[byte]): Ros1Pal_navigation_msgsChangeBuildingResponse =
  var r = initReader(b,1)
  result = readRos1Pal_navigation_msgsChangeBuildingResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ChangeMapRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsChangeMapRequest* = object
  ## @brief Preserve original map as nav_msgs/OccupancyGrid.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `map`*: Ros1Nav_msgsOccupancyGrid
const Ros1Pal_navigation_msgsChangeMapRequestMaximumWireBytes* = 480
const Ros1Pal_navigation_msgsChangeMapRequestCodecIdentity* = "UWVMROS1_5b418e8170efc2707f0667474c75034109e36b29e3d00f0b6ae1410a59beb4bf"
const Ros1Pal_navigation_msgsChangeMapRequestNativeType* = "pal_navigation_msgs/ChangeMapRequest"
const Ros1Pal_navigation_msgsChangeMapRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsChangeMapRequest*(): Ros1Pal_navigation_msgsChangeMapRequest =
  result.`map` = initRos1Nav_msgsOccupancyGrid()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsChangeMapRequest; w: var Writer) =
  writeFields(value.`map`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsChangeMapRequest*(r: var Reader): Ros1Pal_navigation_msgsChangeMapRequest =
  result = initRos1Pal_navigation_msgsChangeMapRequest()
  result.`map` = readRos1Nav_msgsOccupancyGrid(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsChangeMapRequest): seq[byte] =
  var w = initWriter(480)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsChangeMapRequest*(b: seq[byte]): Ros1Pal_navigation_msgsChangeMapRequest =
  var r = initReader(b,480)
  result = readRos1Pal_navigation_msgsChangeMapRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ChangeMapResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsChangeMapResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
const Ros1Pal_navigation_msgsChangeMapResponseMaximumWireBytes* = 1
const Ros1Pal_navigation_msgsChangeMapResponseCodecIdentity* = "UWVMROS1_29d8c048afd7b6e76c7045decd5d8af1d994db75f4af2c2e663d95c3579077f5"
const Ros1Pal_navigation_msgsChangeMapResponseNativeType* = "pal_navigation_msgs/ChangeMapResponse"
const Ros1Pal_navigation_msgsChangeMapResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsChangeMapResponse*(): Ros1Pal_navigation_msgsChangeMapResponse =
  result.`success` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsChangeMapResponse; w: var Writer) =
  putBool(w,value.`success`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsChangeMapResponse*(r: var Reader): Ros1Pal_navigation_msgsChangeMapResponse =
  result = initRos1Pal_navigation_msgsChangeMapResponse()
  result.`success` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsChangeMapResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsChangeMapResponse*(b: seq[byte]): Ros1Pal_navigation_msgsChangeMapResponse =
  var r = initReader(b,1)
  result = readRos1Pal_navigation_msgsChangeMapResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ChangeSyncMapRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsChangeSyncMapRequest* = object
  ## @brief Preserve original map as nav_msgs/OccupancyGrid.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `map`*: Ros1Nav_msgsOccupancyGrid
  ## @brief Preserve original map_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `map_name`*: string
  ## @brief Preserve original sources as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `sources`*: seq[string]
const Ros1Pal_navigation_msgsChangeSyncMapRequestMaximumWireBytes* = 2728
const Ros1Pal_navigation_msgsChangeSyncMapRequestCodecIdentity* = "UWVMROS1_d289a4940286f55bfade22fc3c87a511067e1f1ec078d8735acf455469846de5"
const Ros1Pal_navigation_msgsChangeSyncMapRequestNativeType* = "pal_navigation_msgs/ChangeSyncMapRequest"
const Ros1Pal_navigation_msgsChangeSyncMapRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsChangeSyncMapRequest*(): Ros1Pal_navigation_msgsChangeSyncMapRequest =
  result.`map` = initRos1Nav_msgsOccupancyGrid()
  result.`map_name` = ""
  result.`sources` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsChangeSyncMapRequest; w: var Writer) =
  writeFields(value.`map`,w)
  putString(w,value.`map_name`,128)
  if value.`sources`.len > 16: fail(22)
  putInteger(w,uint32(value.`sources`.len))
  for e in value.`sources`:
    putString(w,e,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsChangeSyncMapRequest*(r: var Reader): Ros1Pal_navigation_msgsChangeSyncMapRequest =
  result = initRos1Pal_navigation_msgsChangeSyncMapRequest()
  result.`map` = readRos1Nav_msgsOccupancyGrid(r)
  result.`map_name` = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`sources` = newSeq[string](count2)
  for i in 0..<count2:
    result.`sources`[i] = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsChangeSyncMapRequest): seq[byte] =
  var w = initWriter(2728)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsChangeSyncMapRequest*(b: seq[byte]): Ros1Pal_navigation_msgsChangeSyncMapRequest =
  var r = initReader(b,2728)
  result = readRos1Pal_navigation_msgsChangeSyncMapRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ChangeSyncMapResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsChangeSyncMapResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
const Ros1Pal_navigation_msgsChangeSyncMapResponseMaximumWireBytes* = 1
const Ros1Pal_navigation_msgsChangeSyncMapResponseCodecIdentity* = "UWVMROS1_d10c4bb1230e579ed4b24537211cdfd6d7d155a7297681a14af9a5d9a3f2ab80"
const Ros1Pal_navigation_msgsChangeSyncMapResponseNativeType* = "pal_navigation_msgs/ChangeSyncMapResponse"
const Ros1Pal_navigation_msgsChangeSyncMapResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsChangeSyncMapResponse*(): Ros1Pal_navigation_msgsChangeSyncMapResponse =
  result.`success` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsChangeSyncMapResponse; w: var Writer) =
  putBool(w,value.`success`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsChangeSyncMapResponse*(r: var Reader): Ros1Pal_navigation_msgsChangeSyncMapResponse =
  result = initRos1Pal_navigation_msgsChangeSyncMapResponse()
  result.`success` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsChangeSyncMapResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsChangeSyncMapResponse*(b: seq[byte]): Ros1Pal_navigation_msgsChangeSyncMapResponse =
  var r = initReader(b,1)
  result = readRos1Pal_navigation_msgsChangeSyncMapResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/DisableEmergencyRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsDisableEmergencyRequest* = object
  ## @brief Preserve original second as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `second`*: float64
  ## @brief Preserve original useLEDs as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `useLEDs`*: bool
const Ros1Pal_navigation_msgsDisableEmergencyRequestMaximumWireBytes* = 9
const Ros1Pal_navigation_msgsDisableEmergencyRequestCodecIdentity* = "UWVMROS1_70dbc31ae4309c03fa21a0247c16598ca1a9056243963854e9e17a4648cc599c"
const Ros1Pal_navigation_msgsDisableEmergencyRequestNativeType* = "pal_navigation_msgs/DisableEmergencyRequest"
const Ros1Pal_navigation_msgsDisableEmergencyRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsDisableEmergencyRequest*(): Ros1Pal_navigation_msgsDisableEmergencyRequest =
  result.`second` = 0
  result.`useLEDs` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsDisableEmergencyRequest; w: var Writer) =
  putFloat64(w,value.`second`)
  putBool(w,value.`useLEDs`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsDisableEmergencyRequest*(r: var Reader): Ros1Pal_navigation_msgsDisableEmergencyRequest =
  result = initRos1Pal_navigation_msgsDisableEmergencyRequest()
  result.`second` = getFloat64(r)
  result.`useLEDs` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsDisableEmergencyRequest): seq[byte] =
  var w = initWriter(9)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsDisableEmergencyRequest*(b: seq[byte]): Ros1Pal_navigation_msgsDisableEmergencyRequest =
  var r = initReader(b,9)
  result = readRos1Pal_navigation_msgsDisableEmergencyRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/DisableEmergencyResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsDisableEmergencyResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
const Ros1Pal_navigation_msgsDisableEmergencyResponseMaximumWireBytes* = 1
const Ros1Pal_navigation_msgsDisableEmergencyResponseCodecIdentity* = "UWVMROS1_c5b7fa73ccceb51e2a6fa950f690a65f91f046644b75f878964d322d9b6573a4"
const Ros1Pal_navigation_msgsDisableEmergencyResponseNativeType* = "pal_navigation_msgs/DisableEmergencyResponse"
const Ros1Pal_navigation_msgsDisableEmergencyResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsDisableEmergencyResponse*(): Ros1Pal_navigation_msgsDisableEmergencyResponse =
  result.`success` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsDisableEmergencyResponse; w: var Writer) =
  putBool(w,value.`success`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsDisableEmergencyResponse*(r: var Reader): Ros1Pal_navigation_msgsDisableEmergencyResponse =
  result = initRos1Pal_navigation_msgsDisableEmergencyResponse()
  result.`success` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsDisableEmergencyResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsDisableEmergencyResponse*(b: seq[byte]): Ros1Pal_navigation_msgsDisableEmergencyResponse =
  var r = initReader(b,1)
  result = readRos1Pal_navigation_msgsDisableEmergencyResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/Emergency.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsEmergency* = object
  ## @brief Preserve original data as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `data`*: bool
  ## @brief Preserve original forward as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `forward`*: bool
  ## @brief Preserve original backward as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `backward`*: bool
  ## @brief Preserve original msgs as std_msgs/String.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `msgs`*: seq[Ros1Std_msgsString]
const Ros1Pal_navigation_msgsEmergencyMaximumWireBytes* = 535
const Ros1Pal_navigation_msgsEmergencyCodecIdentity* = "UWVMROS1_00339764ab9f5d7e90ce08b5675434a1113e38b31e9f94166a6c8b994b02d635"
const Ros1Pal_navigation_msgsEmergencyNativeType* = "pal_navigation_msgs/Emergency"
const Ros1Pal_navigation_msgsEmergencyNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsEmergency*(): Ros1Pal_navigation_msgsEmergency =
  result.`data` = false
  result.`forward` = false
  result.`backward` = false
  result.`msgs` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsEmergency; w: var Writer) =
  putBool(w,value.`data`)
  putBool(w,value.`forward`)
  putBool(w,value.`backward`)
  if value.`msgs`.len > 4: fail(22)
  putInteger(w,uint32(value.`msgs`.len))
  for e in value.`msgs`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsEmergency*(r: var Reader): Ros1Pal_navigation_msgsEmergency =
  result = initRos1Pal_navigation_msgsEmergency()
  result.`data` = getBool(r)
  result.`forward` = getBool(r)
  result.`backward` = getBool(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 4: fail(22)
  let count3 = int(rawcount3)
  result.`msgs` = newSeq[Ros1Std_msgsString](count3)
  for i in 0..<count3:
    result.`msgs`[i] = readRos1Std_msgsString(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsEmergency): seq[byte] =
  var w = initWriter(535)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsEmergency*(b: seq[byte]): Ros1Pal_navigation_msgsEmergency =
  var r = initReader(b,535)
  result = readRos1Pal_navigation_msgsEmergency(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/EulerAngles.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsEulerAngles* = object
  ## @brief Preserve original sequence as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `sequence`*: string
  ## @brief Preserve original angles_in_degrees as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `angles_in_degrees`*: bool
  ## @brief Preserve original ai as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `ai`*: float64
  ## @brief Preserve original aj as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `aj`*: float64
  ## @brief Preserve original ak as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `ak`*: float64
const Ros1Pal_navigation_msgsEulerAnglesMaximumWireBytes* = 157
const Ros1Pal_navigation_msgsEulerAnglesCodecIdentity* = "UWVMROS1_cc1bd6ac99235a0d92e3f458be257dcd81c88763822f7e9c5b3f034a76691d0f"
const Ros1Pal_navigation_msgsEulerAnglesNativeType* = "pal_navigation_msgs/EulerAngles"
const Ros1Pal_navigation_msgsEulerAnglesNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsEulerAngles*(): Ros1Pal_navigation_msgsEulerAngles =
  result.`sequence` = ""
  result.`angles_in_degrees` = false
  result.`ai` = 0
  result.`aj` = 0
  result.`ak` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsEulerAngles; w: var Writer) =
  putString(w,value.`sequence`,128)
  putBool(w,value.`angles_in_degrees`)
  putFloat64(w,value.`ai`)
  putFloat64(w,value.`aj`)
  putFloat64(w,value.`ak`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsEulerAngles*(r: var Reader): Ros1Pal_navigation_msgsEulerAngles =
  result = initRos1Pal_navigation_msgsEulerAngles()
  result.`sequence` = getString(r,128)
  result.`angles_in_degrees` = getBool(r)
  result.`ai` = getFloat64(r)
  result.`aj` = getFloat64(r)
  result.`ak` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsEulerAngles): seq[byte] =
  var w = initWriter(157)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsEulerAngles*(b: seq[byte]): Ros1Pal_navigation_msgsEulerAngles =
  var r = initReader(b,157)
  result = readRos1Pal_navigation_msgsEulerAngles(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/EulerAnglesStamped.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsEulerAnglesStamped* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original angles as pal_navigation_msgs/EulerAngles.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `angles`*: Ros1Pal_navigation_msgsEulerAngles
const Ros1Pal_navigation_msgsEulerAnglesStampedMaximumWireBytes* = 301
const Ros1Pal_navigation_msgsEulerAnglesStampedCodecIdentity* = "UWVMROS1_595448173da01bddbdba145a6bd1e6269a37b12ac4a7fdc26ca5cb5083452462"
const Ros1Pal_navigation_msgsEulerAnglesStampedNativeType* = "pal_navigation_msgs/EulerAnglesStamped"
const Ros1Pal_navigation_msgsEulerAnglesStampedNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsEulerAnglesStamped*(): Ros1Pal_navigation_msgsEulerAnglesStamped =
  result.`header` = initRos1Std_msgsHeader()
  result.`angles` = initRos1Pal_navigation_msgsEulerAngles()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsEulerAnglesStamped; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`angles`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsEulerAnglesStamped*(r: var Reader): Ros1Pal_navigation_msgsEulerAnglesStamped =
  result = initRos1Pal_navigation_msgsEulerAnglesStamped()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`angles` = readRos1Pal_navigation_msgsEulerAngles(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsEulerAnglesStamped): seq[byte] =
  var w = initWriter(301)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsEulerAnglesStamped*(b: seq[byte]): Ros1Pal_navigation_msgsEulerAnglesStamped =
  var r = initReader(b,301)
  result = readRos1Pal_navigation_msgsEulerAnglesStamped(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ExecuteParkingGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsExecuteParkingGoal* = object
  ## @brief Preserve original source_frame as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `source_frame`*: string
  ## @brief Preserve original target_frame as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `target_frame`*: string
  ## @brief Preserve original backwards as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `backwards`*: bool
  ## @brief Preserve original max_lin_vel as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `max_lin_vel`*: float64
  ## @brief Preserve original max_rot_vel as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `max_rot_vel`*: float64
const Ros1Pal_navigation_msgsExecuteParkingGoalMaximumWireBytes* = 281
const Ros1Pal_navigation_msgsExecuteParkingGoalCodecIdentity* = "UWVMROS1_5bc772cbbc3a5f90165c84a9f5d81d961a789e78bbbf2fe19706d76be3e3dfae"
const Ros1Pal_navigation_msgsExecuteParkingGoalNativeType* = "pal_navigation_msgs/ExecuteParkingGoal"
const Ros1Pal_navigation_msgsExecuteParkingGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsExecuteParkingGoal*(): Ros1Pal_navigation_msgsExecuteParkingGoal =
  result.`source_frame` = ""
  result.`target_frame` = ""
  result.`backwards` = false
  result.`max_lin_vel` = 0
  result.`max_rot_vel` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsExecuteParkingGoal; w: var Writer) =
  putString(w,value.`source_frame`,128)
  putString(w,value.`target_frame`,128)
  putBool(w,value.`backwards`)
  putFloat64(w,value.`max_lin_vel`)
  putFloat64(w,value.`max_rot_vel`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsExecuteParkingGoal*(r: var Reader): Ros1Pal_navigation_msgsExecuteParkingGoal =
  result = initRos1Pal_navigation_msgsExecuteParkingGoal()
  result.`source_frame` = getString(r,128)
  result.`target_frame` = getString(r,128)
  result.`backwards` = getBool(r)
  result.`max_lin_vel` = getFloat64(r)
  result.`max_rot_vel` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsExecuteParkingGoal): seq[byte] =
  var w = initWriter(281)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsExecuteParkingGoal*(b: seq[byte]): Ros1Pal_navigation_msgsExecuteParkingGoal =
  var r = initReader(b,281)
  result = readRos1Pal_navigation_msgsExecuteParkingGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ExecuteParkingResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsExecuteParkingResult* = object
const Ros1Pal_navigation_msgsExecuteParkingResultMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsExecuteParkingResultCodecIdentity* = "UWVMROS1_51f06f36f320cad8e090e602ad2b390141b364fc4d13ea92a2cbf1cfb784f1ca"
const Ros1Pal_navigation_msgsExecuteParkingResultNativeType* = "pal_navigation_msgs/ExecuteParkingResult"
const Ros1Pal_navigation_msgsExecuteParkingResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsExecuteParkingResult*(): Ros1Pal_navigation_msgsExecuteParkingResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsExecuteParkingResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsExecuteParkingResult*(r: var Reader): Ros1Pal_navigation_msgsExecuteParkingResult =
  result = initRos1Pal_navigation_msgsExecuteParkingResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsExecuteParkingResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsExecuteParkingResult*(b: seq[byte]): Ros1Pal_navigation_msgsExecuteParkingResult =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsExecuteParkingResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ExecuteParkingFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsExecuteParkingFeedback* = object
const Ros1Pal_navigation_msgsExecuteParkingFeedbackMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsExecuteParkingFeedbackCodecIdentity* = "UWVMROS1_54fd7db88b179345d32957a36858d4dc1be0e3d1bdbee1ae2051cb69feabd842"
const Ros1Pal_navigation_msgsExecuteParkingFeedbackNativeType* = "pal_navigation_msgs/ExecuteParkingFeedback"
const Ros1Pal_navigation_msgsExecuteParkingFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsExecuteParkingFeedback*(): Ros1Pal_navigation_msgsExecuteParkingFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsExecuteParkingFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsExecuteParkingFeedback*(r: var Reader): Ros1Pal_navigation_msgsExecuteParkingFeedback =
  result = initRos1Pal_navigation_msgsExecuteParkingFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsExecuteParkingFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsExecuteParkingFeedback*(b: seq[byte]): Ros1Pal_navigation_msgsExecuteParkingFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsExecuteParkingFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/FinalApproachPoseRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsFinalApproachPoseRequest* = object
  ## @brief Preserve original pose as geometry_msgs/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pose`*: Ros1Geometry_msgsPose
const Ros1Pal_navigation_msgsFinalApproachPoseRequestMaximumWireBytes* = 56
const Ros1Pal_navigation_msgsFinalApproachPoseRequestCodecIdentity* = "UWVMROS1_52d199aa79bb76f00cff19792aefd0414fe7319a5f2e4f6c74f88ff7d3810f16"
const Ros1Pal_navigation_msgsFinalApproachPoseRequestNativeType* = "pal_navigation_msgs/FinalApproachPoseRequest"
const Ros1Pal_navigation_msgsFinalApproachPoseRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsFinalApproachPoseRequest*(): Ros1Pal_navigation_msgsFinalApproachPoseRequest =
  result.`pose` = initRos1Geometry_msgsPose()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsFinalApproachPoseRequest; w: var Writer) =
  writeFields(value.`pose`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsFinalApproachPoseRequest*(r: var Reader): Ros1Pal_navigation_msgsFinalApproachPoseRequest =
  result = initRos1Pal_navigation_msgsFinalApproachPoseRequest()
  result.`pose` = readRos1Geometry_msgsPose(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsFinalApproachPoseRequest): seq[byte] =
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsFinalApproachPoseRequest*(b: seq[byte]): Ros1Pal_navigation_msgsFinalApproachPoseRequest =
  var r = initReader(b,56)
  result = readRos1Pal_navigation_msgsFinalApproachPoseRequest(r)
  finish(r)
## @brief Own every original field of ROS1 std_msgs/Bool.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_msgsBool* = object
  ## @brief Preserve original data as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `data`*: bool
const Ros1Std_msgsBoolMaximumWireBytes* = 1
const Ros1Std_msgsBoolCodecIdentity* = "UWVMROS1_cbbbbbf2df23f98389500cbf265f45ca9210c3495622a1fd122c1b8b76ce7d33"
const Ros1Std_msgsBoolNativeType* = "std_msgs/Bool"
const Ros1Std_msgsBoolNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_msgsBool*(): Ros1Std_msgsBool =
  result.`data` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_msgsBool; w: var Writer) =
  putBool(w,value.`data`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_msgsBool*(r: var Reader): Ros1Std_msgsBool =
  result = initRos1Std_msgsBool()
  result.`data` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_msgsBool): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_msgsBool*(b: seq[byte]): Ros1Std_msgsBool =
  var r = initReader(b,1)
  result = readRos1Std_msgsBool(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/FinalApproachPoseResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsFinalApproachPoseResponse* = object
  ## @brief Preserve original done as std_msgs/Bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `done`*: Ros1Std_msgsBool
const Ros1Pal_navigation_msgsFinalApproachPoseResponseMaximumWireBytes* = 1
const Ros1Pal_navigation_msgsFinalApproachPoseResponseCodecIdentity* = "UWVMROS1_b0fdbf02ad6c5cd8352a6b66994bd075acfe88027276b560edb8f0f37ba1bf09"
const Ros1Pal_navigation_msgsFinalApproachPoseResponseNativeType* = "pal_navigation_msgs/FinalApproachPoseResponse"
const Ros1Pal_navigation_msgsFinalApproachPoseResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsFinalApproachPoseResponse*(): Ros1Pal_navigation_msgsFinalApproachPoseResponse =
  result.`done` = initRos1Std_msgsBool()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsFinalApproachPoseResponse; w: var Writer) =
  writeFields(value.`done`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsFinalApproachPoseResponse*(r: var Reader): Ros1Pal_navigation_msgsFinalApproachPoseResponse =
  result = initRos1Pal_navigation_msgsFinalApproachPoseResponse()
  result.`done` = readRos1Std_msgsBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsFinalApproachPoseResponse): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsFinalApproachPoseResponse*(b: seq[byte]): Ros1Pal_navigation_msgsFinalApproachPoseResponse =
  var r = initReader(b,1)
  result = readRos1Pal_navigation_msgsFinalApproachPoseResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GetMapConfigurationRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGetMapConfigurationRequest* = object
const Ros1Pal_navigation_msgsGetMapConfigurationRequestMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsGetMapConfigurationRequestCodecIdentity* = "UWVMROS1_4bfa959fc39c0b51bfa7b9874ff219c2ec1ec59462aa46bf3e504571bda6937e"
const Ros1Pal_navigation_msgsGetMapConfigurationRequestNativeType* = "pal_navigation_msgs/GetMapConfigurationRequest"
const Ros1Pal_navigation_msgsGetMapConfigurationRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGetMapConfigurationRequest*(): Ros1Pal_navigation_msgsGetMapConfigurationRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGetMapConfigurationRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGetMapConfigurationRequest*(r: var Reader): Ros1Pal_navigation_msgsGetMapConfigurationRequest =
  result = initRos1Pal_navigation_msgsGetMapConfigurationRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGetMapConfigurationRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGetMapConfigurationRequest*(b: seq[byte]): Ros1Pal_navigation_msgsGetMapConfigurationRequest =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsGetMapConfigurationRequest(r)
  finish(r)
## @brief Own every original field of ROS1 std_msgs/Float32.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_msgsFloat32* = object
  ## @brief Preserve original data as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `data`*: float32
const Ros1Std_msgsFloat32MaximumWireBytes* = 4
const Ros1Std_msgsFloat32CodecIdentity* = "UWVMROS1_d19ba548217238df8898fc387f092102779ef51eb3dfece19928caf0025b40b9"
const Ros1Std_msgsFloat32NativeType* = "std_msgs/Float32"
const Ros1Std_msgsFloat32NativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_msgsFloat32*(): Ros1Std_msgsFloat32 =
  result.`data` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_msgsFloat32; w: var Writer) =
  putFloat32(w,value.`data`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_msgsFloat32*(r: var Reader): Ros1Std_msgsFloat32 =
  result = initRos1Std_msgsFloat32()
  result.`data` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_msgsFloat32): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_msgsFloat32*(b: seq[byte]): Ros1Std_msgsFloat32 =
  var r = initReader(b,4)
  result = readRos1Std_msgsFloat32(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/Highways.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsHighways* = object
  ## @brief Preserve original points as geometry_msgs/Point.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `points`*: seq[Ros1Geometry_msgsPoint]
  ## @brief Preserve original directional as std_msgs/Bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `directional`*: Ros1Std_msgsBool
  ## @brief Preserve original line_width as std_msgs/Float32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `line_width`*: Ros1Std_msgsFloat32
  ## @brief Preserve original name as std_msgs/String.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `name`*: Ros1Std_msgsString
const Ros1Pal_navigation_msgsHighwaysMaximumWireBytes* = 237
const Ros1Pal_navigation_msgsHighwaysCodecIdentity* = "UWVMROS1_f3717c2a5b4e42173901f70af63a28b4dd00e24adf686212a01ff442379f1c43"
const Ros1Pal_navigation_msgsHighwaysNativeType* = "pal_navigation_msgs/Highways"
const Ros1Pal_navigation_msgsHighwaysNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsHighways*(): Ros1Pal_navigation_msgsHighways =
  result.`points` = @[]
  result.`directional` = initRos1Std_msgsBool()
  result.`line_width` = initRos1Std_msgsFloat32()
  result.`name` = initRos1Std_msgsString()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsHighways; w: var Writer) =
  if value.`points`.len > 4: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
  writeFields(value.`directional`,w)
  writeFields(value.`line_width`,w)
  writeFields(value.`name`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsHighways*(r: var Reader): Ros1Pal_navigation_msgsHighways =
  result = initRos1Pal_navigation_msgsHighways()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`points` = newSeq[Ros1Geometry_msgsPoint](count0)
  for i in 0..<count0:
    result.`points`[i] = readRos1Geometry_msgsPoint(r)
  result.`directional` = readRos1Std_msgsBool(r)
  result.`line_width` = readRos1Std_msgsFloat32(r)
  result.`name` = readRos1Std_msgsString(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsHighways): seq[byte] =
  var w = initWriter(237)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsHighways*(b: seq[byte]): Ros1Pal_navigation_msgsHighways =
  var r = initReader(b,237)
  result = readRos1Pal_navigation_msgsHighways(r)
  finish(r)
## @brief Own every original field of ROS1 sensor_msgs/ChannelFloat32.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Sensor_msgsChannelFloat32* = object
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original values as float32.
  ## @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `values`*: seq[float32]
const Ros1Sensor_msgsChannelFloat32MaximumWireBytes* = 200
const Ros1Sensor_msgsChannelFloat32CodecIdentity* = "UWVMROS1_a164e6a7d124c3c1d5cc165f622c492079b7b31686d4bcff3f8dc45b20a0213b"
const Ros1Sensor_msgsChannelFloat32NativeType* = "sensor_msgs/ChannelFloat32"
const Ros1Sensor_msgsChannelFloat32NativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Sensor_msgsChannelFloat32*(): Ros1Sensor_msgsChannelFloat32 =
  result.`name` = ""
  result.`values` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Sensor_msgsChannelFloat32; w: var Writer) =
  putString(w,value.`name`,128)
  if value.`values`.len > 16: fail(22)
  putInteger(w,uint32(value.`values`.len))
  for e in value.`values`:
    putFloat32(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Sensor_msgsChannelFloat32*(r: var Reader): Ros1Sensor_msgsChannelFloat32 =
  result = initRos1Sensor_msgsChannelFloat32()
  result.`name` = getString(r,128)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`values` = newSeq[float32](count1)
  for i in 0..<count1:
    result.`values`[i] = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Sensor_msgsChannelFloat32): seq[byte] =
  var w = initWriter(200)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Sensor_msgsChannelFloat32*(b: seq[byte]): Ros1Sensor_msgsChannelFloat32 =
  var r = initReader(b,200)
  result = readRos1Sensor_msgsChannelFloat32(r)
  finish(r)
## @brief Own every original field of ROS1 sensor_msgs/PointCloud.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Sensor_msgsPointCloud* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original points as geometry_msgs/Point32.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `points`*: seq[Ros1Geometry_msgsPoint32]
  ## @brief Preserve original channels as sensor_msgs/ChannelFloat32.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `channels`*: seq[Ros1Sensor_msgsChannelFloat32]
const Ros1Sensor_msgsPointCloudMaximumWireBytes* = 1000
const Ros1Sensor_msgsPointCloudCodecIdentity* = "UWVMROS1_714f5812773665cb9e8cfb03b86e3926eaae188eed2d96cd775c20a9c42a3fce"
const Ros1Sensor_msgsPointCloudNativeType* = "sensor_msgs/PointCloud"
const Ros1Sensor_msgsPointCloudNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Sensor_msgsPointCloud*(): Ros1Sensor_msgsPointCloud =
  result.`header` = initRos1Std_msgsHeader()
  result.`points` = @[]
  result.`channels` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Sensor_msgsPointCloud; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`points`.len > 4: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
  if value.`channels`.len > 4: fail(22)
  putInteger(w,uint32(value.`channels`.len))
  for e in value.`channels`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Sensor_msgsPointCloud*(r: var Reader): Ros1Sensor_msgsPointCloud =
  result = initRos1Sensor_msgsPointCloud()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`points` = newSeq[Ros1Geometry_msgsPoint32](count1)
  for i in 0..<count1:
    result.`points`[i] = readRos1Geometry_msgsPoint32(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`channels` = newSeq[Ros1Sensor_msgsChannelFloat32](count2)
  for i in 0..<count2:
    result.`channels`[i] = readRos1Sensor_msgsChannelFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Sensor_msgsPointCloud): seq[byte] =
  var w = initWriter(1000)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Sensor_msgsPointCloud*(b: seq[byte]): Ros1Sensor_msgsPointCloud =
  var r = initReader(b,1000)
  result = readRos1Sensor_msgsPointCloud(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/POI.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsPOI* = object
  ## @brief Preserve original points as sensor_msgs/PointCloud.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `points`*: Ros1Sensor_msgsPointCloud
  ## @brief Preserve original ids as std_msgs/String.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `ids`*: seq[Ros1Std_msgsString]
  ## @brief Preserve original map_id as std_msgs/String.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `map_id`*: Ros1Std_msgsString
const Ros1Pal_navigation_msgsPOIMaximumWireBytes* = 1664
const Ros1Pal_navigation_msgsPOICodecIdentity* = "UWVMROS1_3750170dda28a05b81a5c1255fb3e88adc6105bef955601cccb82a6639e796a4"
const Ros1Pal_navigation_msgsPOINativeType* = "pal_navigation_msgs/POI"
const Ros1Pal_navigation_msgsPOINativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsPOI*(): Ros1Pal_navigation_msgsPOI =
  result.`points` = initRos1Sensor_msgsPointCloud()
  result.`ids` = @[]
  result.`map_id` = initRos1Std_msgsString()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsPOI; w: var Writer) =
  writeFields(value.`points`,w)
  if value.`ids`.len > 4: fail(22)
  putInteger(w,uint32(value.`ids`.len))
  for e in value.`ids`:
    writeFields(e,w)
  writeFields(value.`map_id`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsPOI*(r: var Reader): Ros1Pal_navigation_msgsPOI =
  result = initRos1Pal_navigation_msgsPOI()
  result.`points` = readRos1Sensor_msgsPointCloud(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`ids` = newSeq[Ros1Std_msgsString](count1)
  for i in 0..<count1:
    result.`ids`[i] = readRos1Std_msgsString(r)
  result.`map_id` = readRos1Std_msgsString(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsPOI): seq[byte] =
  var w = initWriter(1664)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsPOI*(b: seq[byte]): Ros1Pal_navigation_msgsPOI =
  var r = initReader(b,1664)
  result = readRos1Pal_navigation_msgsPOI(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/POIGroup.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsPOIGroup* = object
  ## @brief Preserve original group_name as std_msgs/String.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `group_name`*: Ros1Std_msgsString
  ## @brief Preserve original poi_names as std_msgs/String.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `poi_names`*: seq[Ros1Std_msgsString]
const Ros1Pal_navigation_msgsPOIGroupMaximumWireBytes* = 664
const Ros1Pal_navigation_msgsPOIGroupCodecIdentity* = "UWVMROS1_82b1a1a03ae086b33692ee39850fe1d5df11a3ed3f74cf32204a9851a55b0abf"
const Ros1Pal_navigation_msgsPOIGroupNativeType* = "pal_navigation_msgs/POIGroup"
const Ros1Pal_navigation_msgsPOIGroupNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsPOIGroup*(): Ros1Pal_navigation_msgsPOIGroup =
  result.`group_name` = initRos1Std_msgsString()
  result.`poi_names` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsPOIGroup; w: var Writer) =
  writeFields(value.`group_name`,w)
  if value.`poi_names`.len > 4: fail(22)
  putInteger(w,uint32(value.`poi_names`.len))
  for e in value.`poi_names`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsPOIGroup*(r: var Reader): Ros1Pal_navigation_msgsPOIGroup =
  result = initRos1Pal_navigation_msgsPOIGroup()
  result.`group_name` = readRos1Std_msgsString(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`poi_names` = newSeq[Ros1Std_msgsString](count1)
  for i in 0..<count1:
    result.`poi_names`[i] = readRos1Std_msgsString(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsPOIGroup): seq[byte] =
  var w = initWriter(664)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsPOIGroup*(b: seq[byte]): Ros1Pal_navigation_msgsPOIGroup =
  var r = initReader(b,664)
  result = readRos1Pal_navigation_msgsPOIGroup(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/VisualLocDB.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsVisualLocDB* = object
  ## @brief Preserve original documents as uint8.
  ## @details At most 256 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `documents`*: seq[uint8]
  ## @brief Preserve original tree as uint8.
  ## @details At most 256 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `tree`*: seq[uint8]
  ## @brief Preserve original weights as uint8.
  ## @details At most 256 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `weights`*: seq[uint8]
const Ros1Pal_navigation_msgsVisualLocDBMaximumWireBytes* = 780
const Ros1Pal_navigation_msgsVisualLocDBCodecIdentity* = "UWVMROS1_644cacceb6580e474906170240e511dca1427355428ac346eb5ba2a74eceb063"
const Ros1Pal_navigation_msgsVisualLocDBNativeType* = "pal_navigation_msgs/VisualLocDB"
const Ros1Pal_navigation_msgsVisualLocDBNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsVisualLocDB*(): Ros1Pal_navigation_msgsVisualLocDB =
  result.`documents` = @[]
  result.`tree` = @[]
  result.`weights` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsVisualLocDB; w: var Writer) =
  if value.`documents`.len > 256: fail(22)
  putInteger(w,uint32(value.`documents`.len))
  for e in value.`documents`:
    putInteger(w,e)
  if value.`tree`.len > 256: fail(22)
  putInteger(w,uint32(value.`tree`.len))
  for e in value.`tree`:
    putInteger(w,e)
  if value.`weights`.len > 256: fail(22)
  putInteger(w,uint32(value.`weights`.len))
  for e in value.`weights`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsVisualLocDB*(r: var Reader): Ros1Pal_navigation_msgsVisualLocDB =
  result = initRos1Pal_navigation_msgsVisualLocDB()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 256: fail(22)
  let count0 = int(rawcount0)
  result.`documents` = newSeq[uint8](count0)
  for i in 0..<count0:
    result.`documents`[i] = getInteger(r,uint8)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 256: fail(22)
  let count1 = int(rawcount1)
  result.`tree` = newSeq[uint8](count1)
  for i in 0..<count1:
    result.`tree`[i] = getInteger(r,uint8)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 256: fail(22)
  let count2 = int(rawcount2)
  result.`weights` = newSeq[uint8](count2)
  for i in 0..<count2:
    result.`weights`[i] = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsVisualLocDB): seq[byte] =
  var w = initWriter(780)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsVisualLocDB*(b: seq[byte]): Ros1Pal_navigation_msgsVisualLocDB =
  var r = initReader(b,780)
  result = readRos1Pal_navigation_msgsVisualLocDB(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/NiceMapTransformation.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsNiceMapTransformation* = object
  ## @brief Preserve original x as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `x`*: float64
  ## @brief Preserve original y as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `y`*: float64
  ## @brief Preserve original rotYawRad as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `rotYawRad`*: float64
  ## @brief Preserve original scale as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `scale`*: float64
const Ros1Pal_navigation_msgsNiceMapTransformationMaximumWireBytes* = 32
const Ros1Pal_navigation_msgsNiceMapTransformationCodecIdentity* = "UWVMROS1_0c52375fd069a4fc6f5d93c7652ddaba7e9e0002e40e5d0db64aa77e355d0ef0"
const Ros1Pal_navigation_msgsNiceMapTransformationNativeType* = "pal_navigation_msgs/NiceMapTransformation"
const Ros1Pal_navigation_msgsNiceMapTransformationNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsNiceMapTransformation*(): Ros1Pal_navigation_msgsNiceMapTransformation =
  result.`x` = 0
  result.`y` = 0
  result.`rotYawRad` = 0
  result.`scale` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsNiceMapTransformation; w: var Writer) =
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`rotYawRad`)
  putFloat64(w,value.`scale`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsNiceMapTransformation*(r: var Reader): Ros1Pal_navigation_msgsNiceMapTransformation =
  result = initRos1Pal_navigation_msgsNiceMapTransformation()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`rotYawRad` = getFloat64(r)
  result.`scale` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsNiceMapTransformation): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsNiceMapTransformation*(b: seq[byte]): Ros1Pal_navigation_msgsNiceMapTransformation =
  var r = initReader(b,32)
  result = readRos1Pal_navigation_msgsNiceMapTransformation(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/MapConfiguration.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsMapConfiguration* = object
  ## @brief Preserve original numberOfSubMaps as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `numberOfSubMaps`*: int32
  ## @brief Preserve original highways as pal_navigation_msgs/Highways.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `highways`*: seq[Ros1Pal_navigation_msgsHighways]
  ## @brief Preserve original pois as pal_navigation_msgs/POI.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `pois`*: Ros1Pal_navigation_msgsPOI
  ## @brief Preserve original vo as pal_navigation_msgs/POI.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `vo`*: Ros1Pal_navigation_msgsPOI
  ## @brief Preserve original zoi as pal_navigation_msgs/POI.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `zoi`*: Ros1Pal_navigation_msgsPOI
  ## @brief Preserve original ramps as pal_navigation_msgs/POI.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ramps`*: Ros1Pal_navigation_msgsPOI
  ## @brief Preserve original poigroups as pal_navigation_msgs/POIGroup.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `poigroups`*: seq[Ros1Pal_navigation_msgsPOIGroup]
  ## @brief Preserve original visualLocDb as pal_navigation_msgs/VisualLocDB.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `visualLocDb`*: Ros1Pal_navigation_msgsVisualLocDB
  ## @brief Preserve original navigation_map as nav_msgs/OccupancyGrid.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `navigation_map`*: Ros1Nav_msgsOccupancyGrid
  ## @brief Preserve original user_map as sensor_msgs/Image.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `user_map`*: Ros1Sensor_msgsImage
  ## @brief Preserve original transform as pal_navigation_msgs/NiceMapTransformation.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `transform`*: Ros1Pal_navigation_msgsNiceMapTransformation
const Ros1Pal_navigation_msgsMapConfigurationMaximumWireBytes* = 15953
const Ros1Pal_navigation_msgsMapConfigurationCodecIdentity* = "UWVMROS1_807b6436f6e7ee13b63cfadc9de5fd38ca3fedd2d0e902c3c7558c1d7b606255"
const Ros1Pal_navigation_msgsMapConfigurationNativeType* = "pal_navigation_msgs/MapConfiguration"
const Ros1Pal_navigation_msgsMapConfigurationNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsMapConfiguration*(): Ros1Pal_navigation_msgsMapConfiguration =
  result.`numberOfSubMaps` = 0
  result.`highways` = @[]
  result.`pois` = initRos1Pal_navigation_msgsPOI()
  result.`vo` = initRos1Pal_navigation_msgsPOI()
  result.`zoi` = initRos1Pal_navigation_msgsPOI()
  result.`ramps` = initRos1Pal_navigation_msgsPOI()
  result.`poigroups` = @[]
  result.`visualLocDb` = initRos1Pal_navigation_msgsVisualLocDB()
  result.`navigation_map` = initRos1Nav_msgsOccupancyGrid()
  result.`user_map` = initRos1Sensor_msgsImage()
  result.`transform` = initRos1Pal_navigation_msgsNiceMapTransformation()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsMapConfiguration; w: var Writer) =
  putInteger(w,value.`numberOfSubMaps`)
  if value.`highways`.len > 4: fail(22)
  putInteger(w,uint32(value.`highways`.len))
  for e in value.`highways`:
    writeFields(e,w)
  writeFields(value.`pois`,w)
  writeFields(value.`vo`,w)
  writeFields(value.`zoi`,w)
  writeFields(value.`ramps`,w)
  if value.`poigroups`.len > 4: fail(22)
  putInteger(w,uint32(value.`poigroups`.len))
  for e in value.`poigroups`:
    writeFields(e,w)
  writeFields(value.`visualLocDb`,w)
  writeFields(value.`navigation_map`,w)
  writeFields(value.`user_map`,w)
  writeFields(value.`transform`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsMapConfiguration*(r: var Reader): Ros1Pal_navigation_msgsMapConfiguration =
  result = initRos1Pal_navigation_msgsMapConfiguration()
  result.`numberOfSubMaps` = getInteger(r,int32)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`highways` = newSeq[Ros1Pal_navigation_msgsHighways](count1)
  for i in 0..<count1:
    result.`highways`[i] = readRos1Pal_navigation_msgsHighways(r)
  result.`pois` = readRos1Pal_navigation_msgsPOI(r)
  result.`vo` = readRos1Pal_navigation_msgsPOI(r)
  result.`zoi` = readRos1Pal_navigation_msgsPOI(r)
  result.`ramps` = readRos1Pal_navigation_msgsPOI(r)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 4: fail(22)
  let count6 = int(rawcount6)
  result.`poigroups` = newSeq[Ros1Pal_navigation_msgsPOIGroup](count6)
  for i in 0..<count6:
    result.`poigroups`[i] = readRos1Pal_navigation_msgsPOIGroup(r)
  result.`visualLocDb` = readRos1Pal_navigation_msgsVisualLocDB(r)
  result.`navigation_map` = readRos1Nav_msgsOccupancyGrid(r)
  result.`user_map` = readRos1Sensor_msgsImage(r)
  result.`transform` = readRos1Pal_navigation_msgsNiceMapTransformation(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsMapConfiguration): seq[byte] =
  var w = initWriter(15953)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsMapConfiguration*(b: seq[byte]): Ros1Pal_navigation_msgsMapConfiguration =
  var r = initReader(b,15953)
  result = readRos1Pal_navigation_msgsMapConfiguration(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GetMapConfigurationResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGetMapConfigurationResponse* = object
  ## @brief Preserve original map_config as pal_navigation_msgs/MapConfiguration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `map_config`*: Ros1Pal_navigation_msgsMapConfiguration
const Ros1Pal_navigation_msgsGetMapConfigurationResponseMaximumWireBytes* = 15953
const Ros1Pal_navigation_msgsGetMapConfigurationResponseCodecIdentity* = "UWVMROS1_89a83992447a75bd8c210766b00ca09e0235d872716f57c6e438490c762cd60d"
const Ros1Pal_navigation_msgsGetMapConfigurationResponseNativeType* = "pal_navigation_msgs/GetMapConfigurationResponse"
const Ros1Pal_navigation_msgsGetMapConfigurationResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGetMapConfigurationResponse*(): Ros1Pal_navigation_msgsGetMapConfigurationResponse =
  result.`map_config` = initRos1Pal_navigation_msgsMapConfiguration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGetMapConfigurationResponse; w: var Writer) =
  writeFields(value.`map_config`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGetMapConfigurationResponse*(r: var Reader): Ros1Pal_navigation_msgsGetMapConfigurationResponse =
  result = initRos1Pal_navigation_msgsGetMapConfigurationResponse()
  result.`map_config` = readRos1Pal_navigation_msgsMapConfiguration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGetMapConfigurationResponse): seq[byte] =
  var w = initWriter(15953)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGetMapConfigurationResponse*(b: seq[byte]): Ros1Pal_navigation_msgsGetMapConfigurationResponse =
  var r = initReader(b,15953)
  result = readRos1Pal_navigation_msgsGetMapConfigurationResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GetNodesRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGetNodesRequest* = object
const Ros1Pal_navigation_msgsGetNodesRequestMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsGetNodesRequestCodecIdentity* = "UWVMROS1_dee03ae04981d1dc0c0b9e7af3a8379f8409e50a790c3be71894d97edb00c4e2"
const Ros1Pal_navigation_msgsGetNodesRequestNativeType* = "pal_navigation_msgs/GetNodesRequest"
const Ros1Pal_navigation_msgsGetNodesRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGetNodesRequest*(): Ros1Pal_navigation_msgsGetNodesRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGetNodesRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGetNodesRequest*(r: var Reader): Ros1Pal_navigation_msgsGetNodesRequest =
  result = initRos1Pal_navigation_msgsGetNodesRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGetNodesRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGetNodesRequest*(b: seq[byte]): Ros1Pal_navigation_msgsGetNodesRequest =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsGetNodesRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GetNodesResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGetNodesResponse* = object
  ## @brief Preserve original node as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `node`*: int8
  ## @brief Preserve original totPOI as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `totPOI`*: int8
const Ros1Pal_navigation_msgsGetNodesResponseMaximumWireBytes* = 2
const Ros1Pal_navigation_msgsGetNodesResponseCodecIdentity* = "UWVMROS1_415815a998e9ab87b1e40663082bddb4c8d19ac64b9165bb4e70feeaedd110a3"
const Ros1Pal_navigation_msgsGetNodesResponseNativeType* = "pal_navigation_msgs/GetNodesResponse"
const Ros1Pal_navigation_msgsGetNodesResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGetNodesResponse*(): Ros1Pal_navigation_msgsGetNodesResponse =
  result.`node` = 0
  result.`totPOI` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGetNodesResponse; w: var Writer) =
  putInteger(w,value.`node`)
  putInteger(w,value.`totPOI`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGetNodesResponse*(r: var Reader): Ros1Pal_navigation_msgsGetNodesResponse =
  result = initRos1Pal_navigation_msgsGetNodesResponse()
  result.`node` = getInteger(r,int8)
  result.`totPOI` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGetNodesResponse): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGetNodesResponse*(b: seq[byte]): Ros1Pal_navigation_msgsGetNodesResponse =
  var r = initReader(b,2)
  result = readRos1Pal_navigation_msgsGetNodesResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GetPOIRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGetPOIRequest* = object
const Ros1Pal_navigation_msgsGetPOIRequestMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsGetPOIRequestCodecIdentity* = "UWVMROS1_4405875fa858b2faaabaca085a3f16846b311ed7866c36b583887c827ad54cc6"
const Ros1Pal_navigation_msgsGetPOIRequestNativeType* = "pal_navigation_msgs/GetPOIRequest"
const Ros1Pal_navigation_msgsGetPOIRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGetPOIRequest*(): Ros1Pal_navigation_msgsGetPOIRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGetPOIRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGetPOIRequest*(r: var Reader): Ros1Pal_navigation_msgsGetPOIRequest =
  result = initRos1Pal_navigation_msgsGetPOIRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGetPOIRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGetPOIRequest*(b: seq[byte]): Ros1Pal_navigation_msgsGetPOIRequest =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsGetPOIRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GetPOIResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGetPOIResponse* = object
  ## @brief Preserve original poi as pal_navigation_msgs/POI.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `poi`*: Ros1Pal_navigation_msgsPOI
const Ros1Pal_navigation_msgsGetPOIResponseMaximumWireBytes* = 1664
const Ros1Pal_navigation_msgsGetPOIResponseCodecIdentity* = "UWVMROS1_9d7a0f291c648928f13eeb120c69ce685be71ef4de559684d7b4a758dd74dfe3"
const Ros1Pal_navigation_msgsGetPOIResponseNativeType* = "pal_navigation_msgs/GetPOIResponse"
const Ros1Pal_navigation_msgsGetPOIResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGetPOIResponse*(): Ros1Pal_navigation_msgsGetPOIResponse =
  result.`poi` = initRos1Pal_navigation_msgsPOI()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGetPOIResponse; w: var Writer) =
  writeFields(value.`poi`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGetPOIResponse*(r: var Reader): Ros1Pal_navigation_msgsGetPOIResponse =
  result = initRos1Pal_navigation_msgsGetPOIResponse()
  result.`poi` = readRos1Pal_navigation_msgsPOI(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGetPOIResponse): seq[byte] =
  var w = initWriter(1664)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGetPOIResponse*(b: seq[byte]): Ros1Pal_navigation_msgsGetPOIResponse =
  var r = initReader(b,1664)
  result = readRos1Pal_navigation_msgsGetPOIResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GetSubMapRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGetSubMapRequest* = object
  ## @brief Preserve original index as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `index`*: int8
const Ros1Pal_navigation_msgsGetSubMapRequestMaximumWireBytes* = 1
const Ros1Pal_navigation_msgsGetSubMapRequestCodecIdentity* = "UWVMROS1_93c60279a243153baa7ab19b93ae27fabfdfff99e28e961c782f7498550ca377"
const Ros1Pal_navigation_msgsGetSubMapRequestNativeType* = "pal_navigation_msgs/GetSubMapRequest"
const Ros1Pal_navigation_msgsGetSubMapRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGetSubMapRequest*(): Ros1Pal_navigation_msgsGetSubMapRequest =
  result.`index` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGetSubMapRequest; w: var Writer) =
  putInteger(w,value.`index`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGetSubMapRequest*(r: var Reader): Ros1Pal_navigation_msgsGetSubMapRequest =
  result = initRos1Pal_navigation_msgsGetSubMapRequest()
  result.`index` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGetSubMapRequest): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGetSubMapRequest*(b: seq[byte]): Ros1Pal_navigation_msgsGetSubMapRequest =
  var r = initReader(b,1)
  result = readRos1Pal_navigation_msgsGetSubMapRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GetSubMapResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGetSubMapResponse* = object
const Ros1Pal_navigation_msgsGetSubMapResponseMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsGetSubMapResponseCodecIdentity* = "UWVMROS1_0e89187a2b88f7eca611483f7dd8db9b09bad5da07cf65e350b1b1e7dbab6768"
const Ros1Pal_navigation_msgsGetSubMapResponseNativeType* = "pal_navigation_msgs/GetSubMapResponse"
const Ros1Pal_navigation_msgsGetSubMapResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGetSubMapResponse*(): Ros1Pal_navigation_msgsGetSubMapResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGetSubMapResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGetSubMapResponse*(r: var Reader): Ros1Pal_navigation_msgsGetSubMapResponse =
  result = initRos1Pal_navigation_msgsGetSubMapResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGetSubMapResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGetSubMapResponse*(b: seq[byte]): Ros1Pal_navigation_msgsGetSubMapResponse =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsGetSubMapResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GoToGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGoToGoal* = object
  ## @brief Preserve original target_pose as geometry_msgs/PoseStamped.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `target_pose`*: Ros1Geometry_msgsPoseStamped
const Ros1Pal_navigation_msgsGoToGoalMaximumWireBytes* = 200
const Ros1Pal_navigation_msgsGoToGoalCodecIdentity* = "UWVMROS1_26ff6f3220dee058063f4d81ed396c7d152b56b735878ed3ce2929eeeebb24d1"
const Ros1Pal_navigation_msgsGoToGoalNativeType* = "pal_navigation_msgs/GoToGoal"
const Ros1Pal_navigation_msgsGoToGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGoToGoal*(): Ros1Pal_navigation_msgsGoToGoal =
  result.`target_pose` = initRos1Geometry_msgsPoseStamped()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGoToGoal; w: var Writer) =
  writeFields(value.`target_pose`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGoToGoal*(r: var Reader): Ros1Pal_navigation_msgsGoToGoal =
  result = initRos1Pal_navigation_msgsGoToGoal()
  result.`target_pose` = readRos1Geometry_msgsPoseStamped(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGoToGoal): seq[byte] =
  var w = initWriter(200)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGoToGoal*(b: seq[byte]): Ros1Pal_navigation_msgsGoToGoal =
  var r = initReader(b,200)
  result = readRos1Pal_navigation_msgsGoToGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GoToResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGoToResult* = object
const Ros1Pal_navigation_msgsGoToResultMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsGoToResultCodecIdentity* = "UWVMROS1_89a3eb05425f5a9b3e7a514cc44ffcc0c2492cf0247d51c3fe4b5c1635d09ef1"
const Ros1Pal_navigation_msgsGoToResultNativeType* = "pal_navigation_msgs/GoToResult"
const Ros1Pal_navigation_msgsGoToResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGoToResult*(): Ros1Pal_navigation_msgsGoToResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGoToResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGoToResult*(r: var Reader): Ros1Pal_navigation_msgsGoToResult =
  result = initRos1Pal_navigation_msgsGoToResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGoToResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGoToResult*(b: seq[byte]): Ros1Pal_navigation_msgsGoToResult =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsGoToResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GoToFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGoToFeedback* = object
  ## @brief Preserve original base_position as geometry_msgs/PoseStamped.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `base_position`*: Ros1Geometry_msgsPoseStamped
const Ros1Pal_navigation_msgsGoToFeedbackMaximumWireBytes* = 200
const Ros1Pal_navigation_msgsGoToFeedbackCodecIdentity* = "UWVMROS1_1ae5791a0a5d958bb57df7596658f1ce3cc369b832229fc407d2205f7076847b"
const Ros1Pal_navigation_msgsGoToFeedbackNativeType* = "pal_navigation_msgs/GoToFeedback"
const Ros1Pal_navigation_msgsGoToFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGoToFeedback*(): Ros1Pal_navigation_msgsGoToFeedback =
  result.`base_position` = initRos1Geometry_msgsPoseStamped()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGoToFeedback; w: var Writer) =
  writeFields(value.`base_position`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGoToFeedback*(r: var Reader): Ros1Pal_navigation_msgsGoToFeedback =
  result = initRos1Pal_navigation_msgsGoToFeedback()
  result.`base_position` = readRos1Geometry_msgsPoseStamped(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGoToFeedback): seq[byte] =
  var w = initWriter(200)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGoToFeedback*(b: seq[byte]): Ros1Pal_navigation_msgsGoToFeedback =
  var r = initReader(b,200)
  result = readRos1Pal_navigation_msgsGoToFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GoToPOIGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGoToPOIGoal* = object
  ## @brief Preserve original poi as std_msgs/String.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `poi`*: Ros1Std_msgsString
const Ros1Pal_navigation_msgsGoToPOIGoalMaximumWireBytes* = 132
const Ros1Pal_navigation_msgsGoToPOIGoalCodecIdentity* = "UWVMROS1_76b73385b6183f03926456ae38d666a53db772bc4f9dfbb1060cf7955154f043"
const Ros1Pal_navigation_msgsGoToPOIGoalNativeType* = "pal_navigation_msgs/GoToPOIGoal"
const Ros1Pal_navigation_msgsGoToPOIGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGoToPOIGoal*(): Ros1Pal_navigation_msgsGoToPOIGoal =
  result.`poi` = initRos1Std_msgsString()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGoToPOIGoal; w: var Writer) =
  writeFields(value.`poi`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGoToPOIGoal*(r: var Reader): Ros1Pal_navigation_msgsGoToPOIGoal =
  result = initRos1Pal_navigation_msgsGoToPOIGoal()
  result.`poi` = readRos1Std_msgsString(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGoToPOIGoal): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGoToPOIGoal*(b: seq[byte]): Ros1Pal_navigation_msgsGoToPOIGoal =
  var r = initReader(b,132)
  result = readRos1Pal_navigation_msgsGoToPOIGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GoToPOIResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGoToPOIResult* = object
const Ros1Pal_navigation_msgsGoToPOIResultMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsGoToPOIResultCodecIdentity* = "UWVMROS1_0378eb6adc3b300e5f7bb037789cfab4a986c333bfcb45d191e26f74867ef807"
const Ros1Pal_navigation_msgsGoToPOIResultNativeType* = "pal_navigation_msgs/GoToPOIResult"
const Ros1Pal_navigation_msgsGoToPOIResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGoToPOIResult*(): Ros1Pal_navigation_msgsGoToPOIResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGoToPOIResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGoToPOIResult*(r: var Reader): Ros1Pal_navigation_msgsGoToPOIResult =
  result = initRos1Pal_navigation_msgsGoToPOIResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGoToPOIResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGoToPOIResult*(b: seq[byte]): Ros1Pal_navigation_msgsGoToPOIResult =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsGoToPOIResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/GoToPOIFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsGoToPOIFeedback* = object
  ## @brief Preserve original base_position as geometry_msgs/PoseStamped.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `base_position`*: Ros1Geometry_msgsPoseStamped
const Ros1Pal_navigation_msgsGoToPOIFeedbackMaximumWireBytes* = 200
const Ros1Pal_navigation_msgsGoToPOIFeedbackCodecIdentity* = "UWVMROS1_78d8367fcd91cdb4d50ab664251531390a75e7042506bf60f048a3ddffe746d6"
const Ros1Pal_navigation_msgsGoToPOIFeedbackNativeType* = "pal_navigation_msgs/GoToPOIFeedback"
const Ros1Pal_navigation_msgsGoToPOIFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsGoToPOIFeedback*(): Ros1Pal_navigation_msgsGoToPOIFeedback =
  result.`base_position` = initRos1Geometry_msgsPoseStamped()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsGoToPOIFeedback; w: var Writer) =
  writeFields(value.`base_position`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsGoToPOIFeedback*(r: var Reader): Ros1Pal_navigation_msgsGoToPOIFeedback =
  result = initRos1Pal_navigation_msgsGoToPOIFeedback()
  result.`base_position` = readRos1Geometry_msgsPoseStamped(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsGoToPOIFeedback): seq[byte] =
  var w = initWriter(200)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsGoToPOIFeedback*(b: seq[byte]): Ros1Pal_navigation_msgsGoToPOIFeedback =
  var r = initReader(b,200)
  result = readRos1Pal_navigation_msgsGoToPOIFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/JoyPriorityGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsJoyPriorityGoal* = object
const Ros1Pal_navigation_msgsJoyPriorityGoalMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsJoyPriorityGoalCodecIdentity* = "UWVMROS1_d3276e0ecfb362f00a38258d939d052108742f0b7546303a86ea6cf51aa5d7d1"
const Ros1Pal_navigation_msgsJoyPriorityGoalNativeType* = "pal_navigation_msgs/JoyPriorityGoal"
const Ros1Pal_navigation_msgsJoyPriorityGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsJoyPriorityGoal*(): Ros1Pal_navigation_msgsJoyPriorityGoal =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsJoyPriorityGoal; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsJoyPriorityGoal*(r: var Reader): Ros1Pal_navigation_msgsJoyPriorityGoal =
  result = initRos1Pal_navigation_msgsJoyPriorityGoal()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsJoyPriorityGoal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsJoyPriorityGoal*(b: seq[byte]): Ros1Pal_navigation_msgsJoyPriorityGoal =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsJoyPriorityGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/JoyPriorityResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsJoyPriorityResult* = object
const Ros1Pal_navigation_msgsJoyPriorityResultMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsJoyPriorityResultCodecIdentity* = "UWVMROS1_877ee5214e72b1c83d9d1335fe7684bb5688b6f6b84c073168b4f0594fa6b20d"
const Ros1Pal_navigation_msgsJoyPriorityResultNativeType* = "pal_navigation_msgs/JoyPriorityResult"
const Ros1Pal_navigation_msgsJoyPriorityResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsJoyPriorityResult*(): Ros1Pal_navigation_msgsJoyPriorityResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsJoyPriorityResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsJoyPriorityResult*(r: var Reader): Ros1Pal_navigation_msgsJoyPriorityResult =
  result = initRos1Pal_navigation_msgsJoyPriorityResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsJoyPriorityResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsJoyPriorityResult*(b: seq[byte]): Ros1Pal_navigation_msgsJoyPriorityResult =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsJoyPriorityResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/JoyPriorityFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsJoyPriorityFeedback* = object
const Ros1Pal_navigation_msgsJoyPriorityFeedbackMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsJoyPriorityFeedbackCodecIdentity* = "UWVMROS1_46000d5acaf6e01c153895486f7d8f5b19dd8d7df068459ad51cd767e8a979e7"
const Ros1Pal_navigation_msgsJoyPriorityFeedbackNativeType* = "pal_navigation_msgs/JoyPriorityFeedback"
const Ros1Pal_navigation_msgsJoyPriorityFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsJoyPriorityFeedback*(): Ros1Pal_navigation_msgsJoyPriorityFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsJoyPriorityFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsJoyPriorityFeedback*(r: var Reader): Ros1Pal_navigation_msgsJoyPriorityFeedback =
  result = initRos1Pal_navigation_msgsJoyPriorityFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsJoyPriorityFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsJoyPriorityFeedback*(b: seq[byte]): Ros1Pal_navigation_msgsJoyPriorityFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsJoyPriorityFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/JoyTurboGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsJoyTurboGoal* = object
const Ros1Pal_navigation_msgsJoyTurboGoalMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsJoyTurboGoalCodecIdentity* = "UWVMROS1_3a7c13c9dd95b66aa331ca3e9324fed749a2ca0c310f4d00ef8a77afd03cd3a5"
const Ros1Pal_navigation_msgsJoyTurboGoalNativeType* = "pal_navigation_msgs/JoyTurboGoal"
const Ros1Pal_navigation_msgsJoyTurboGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsJoyTurboGoal*(): Ros1Pal_navigation_msgsJoyTurboGoal =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsJoyTurboGoal; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsJoyTurboGoal*(r: var Reader): Ros1Pal_navigation_msgsJoyTurboGoal =
  result = initRos1Pal_navigation_msgsJoyTurboGoal()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsJoyTurboGoal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsJoyTurboGoal*(b: seq[byte]): Ros1Pal_navigation_msgsJoyTurboGoal =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsJoyTurboGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/JoyTurboResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsJoyTurboResult* = object
const Ros1Pal_navigation_msgsJoyTurboResultMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsJoyTurboResultCodecIdentity* = "UWVMROS1_3cafcac3a4a1e9f17e9be6827f3c6888c21c7aa0f644a17b097301346f1fc97d"
const Ros1Pal_navigation_msgsJoyTurboResultNativeType* = "pal_navigation_msgs/JoyTurboResult"
const Ros1Pal_navigation_msgsJoyTurboResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsJoyTurboResult*(): Ros1Pal_navigation_msgsJoyTurboResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsJoyTurboResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsJoyTurboResult*(r: var Reader): Ros1Pal_navigation_msgsJoyTurboResult =
  result = initRos1Pal_navigation_msgsJoyTurboResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsJoyTurboResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsJoyTurboResult*(b: seq[byte]): Ros1Pal_navigation_msgsJoyTurboResult =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsJoyTurboResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/JoyTurboFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsJoyTurboFeedback* = object
const Ros1Pal_navigation_msgsJoyTurboFeedbackMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsJoyTurboFeedbackCodecIdentity* = "UWVMROS1_8028ff57865bec806da57ae6bf19e7928af52b969fe0c6662474f39eb27fbb8e"
const Ros1Pal_navigation_msgsJoyTurboFeedbackNativeType* = "pal_navigation_msgs/JoyTurboFeedback"
const Ros1Pal_navigation_msgsJoyTurboFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsJoyTurboFeedback*(): Ros1Pal_navigation_msgsJoyTurboFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsJoyTurboFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsJoyTurboFeedback*(r: var Reader): Ros1Pal_navigation_msgsJoyTurboFeedback =
  result = initRos1Pal_navigation_msgsJoyTurboFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsJoyTurboFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsJoyTurboFeedback*(b: seq[byte]): Ros1Pal_navigation_msgsJoyTurboFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsJoyTurboFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/LaserImage.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsLaserImage* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original origin as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `origin`*: Ros1Geometry_msgsPoint
  ## @brief Preserve original image as sensor_msgs/CompressedImage.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `image`*: Ros1Sensor_msgsCompressedImage
  ## @brief Preserve original height as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `height`*: float32
  ## @brief Preserve original width as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `width`*: float32
  ## @brief Preserve original resolution as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `resolution`*: float32
const Ros1Pal_navigation_msgsLaserImageMaximumWireBytes* = 4556
const Ros1Pal_navigation_msgsLaserImageCodecIdentity* = "UWVMROS1_94e3d294205016ea87f46b5cf6bbc1bb7644f24f900ce1f9cbb4bac6004b66f2"
const Ros1Pal_navigation_msgsLaserImageNativeType* = "pal_navigation_msgs/LaserImage"
const Ros1Pal_navigation_msgsLaserImageNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsLaserImage*(): Ros1Pal_navigation_msgsLaserImage =
  result.`header` = initRos1Std_msgsHeader()
  result.`origin` = initRos1Geometry_msgsPoint()
  result.`image` = initRos1Sensor_msgsCompressedImage()
  result.`height` = 0
  result.`width` = 0
  result.`resolution` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsLaserImage; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`origin`,w)
  writeFields(value.`image`,w)
  putFloat32(w,value.`height`)
  putFloat32(w,value.`width`)
  putFloat32(w,value.`resolution`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsLaserImage*(r: var Reader): Ros1Pal_navigation_msgsLaserImage =
  result = initRos1Pal_navigation_msgsLaserImage()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`origin` = readRos1Geometry_msgsPoint(r)
  result.`image` = readRos1Sensor_msgsCompressedImage(r)
  result.`height` = getFloat32(r)
  result.`width` = getFloat32(r)
  result.`resolution` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsLaserImage): seq[byte] =
  var w = initWriter(4556)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsLaserImage*(b: seq[byte]): Ros1Pal_navigation_msgsLaserImage =
  var r = initReader(b,4556)
  result = readRos1Pal_navigation_msgsLaserImage(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ListMapsRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsListMapsRequest* = object
const Ros1Pal_navigation_msgsListMapsRequestMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsListMapsRequestCodecIdentity* = "UWVMROS1_5705dfe7ff7affbbcc0469694234dba068652b4e2bf1409ab85cf07ee1fd2385"
const Ros1Pal_navigation_msgsListMapsRequestNativeType* = "pal_navigation_msgs/ListMapsRequest"
const Ros1Pal_navigation_msgsListMapsRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsListMapsRequest*(): Ros1Pal_navigation_msgsListMapsRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsListMapsRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsListMapsRequest*(r: var Reader): Ros1Pal_navigation_msgsListMapsRequest =
  result = initRos1Pal_navigation_msgsListMapsRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsListMapsRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsListMapsRequest*(b: seq[byte]): Ros1Pal_navigation_msgsListMapsRequest =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsListMapsRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ListMapsResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsListMapsResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original maps as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `maps`*: seq[string]
const Ros1Pal_navigation_msgsListMapsResponseMaximumWireBytes* = 2117
const Ros1Pal_navigation_msgsListMapsResponseCodecIdentity* = "UWVMROS1_348a760b57b0c823d35a49efb65bdf8e11d1bcab3aaf218f51781de9fc5d8033"
const Ros1Pal_navigation_msgsListMapsResponseNativeType* = "pal_navigation_msgs/ListMapsResponse"
const Ros1Pal_navigation_msgsListMapsResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsListMapsResponse*(): Ros1Pal_navigation_msgsListMapsResponse =
  result.`success` = false
  result.`maps` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsListMapsResponse; w: var Writer) =
  putBool(w,value.`success`)
  if value.`maps`.len > 16: fail(22)
  putInteger(w,uint32(value.`maps`.len))
  for e in value.`maps`:
    putString(w,e,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsListMapsResponse*(r: var Reader): Ros1Pal_navigation_msgsListMapsResponse =
  result = initRos1Pal_navigation_msgsListMapsResponse()
  result.`success` = getBool(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`maps` = newSeq[string](count1)
  for i in 0..<count1:
    result.`maps`[i] = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsListMapsResponse): seq[byte] =
  var w = initWriter(2117)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsListMapsResponse*(b: seq[byte]): Ros1Pal_navigation_msgsListMapsResponse =
  var r = initReader(b,2117)
  result = readRos1Pal_navigation_msgsListMapsResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/NavigationStatus.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsNavigationStatus* = object
  ## @brief Preserve original status as std_msgs/String.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `status`*: Ros1Std_msgsString
  ## @brief Preserve original msg as std_msgs/String.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `msg`*: Ros1Std_msgsString
const Ros1Pal_navigation_msgsNavigationStatusMaximumWireBytes* = 264
const Ros1Pal_navigation_msgsNavigationStatusCodecIdentity* = "UWVMROS1_64ae750f64cce12a3e2c6379380c208ee9afab146582280af4b6e445a2ccb105"
const Ros1Pal_navigation_msgsNavigationStatusNativeType* = "pal_navigation_msgs/NavigationStatus"
const Ros1Pal_navigation_msgsNavigationStatusNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsNavigationStatus*(): Ros1Pal_navigation_msgsNavigationStatus =
  result.`status` = initRos1Std_msgsString()
  result.`msg` = initRos1Std_msgsString()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsNavigationStatus; w: var Writer) =
  writeFields(value.`status`,w)
  writeFields(value.`msg`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsNavigationStatus*(r: var Reader): Ros1Pal_navigation_msgsNavigationStatus =
  result = initRos1Pal_navigation_msgsNavigationStatus()
  result.`status` = readRos1Std_msgsString(r)
  result.`msg` = readRos1Std_msgsString(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsNavigationStatus): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsNavigationStatus*(b: seq[byte]): Ros1Pal_navigation_msgsNavigationStatus =
  var r = initReader(b,264)
  result = readRos1Pal_navigation_msgsNavigationStatus(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/PolarReading.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsPolarReading* = object
  ## @brief Preserve original angle as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `angle`*: float32
  ## @brief Preserve original distance as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `distance`*: float32
const Ros1Pal_navigation_msgsPolarReadingMaximumWireBytes* = 8
const Ros1Pal_navigation_msgsPolarReadingCodecIdentity* = "UWVMROS1_8fda83158c3186185b077be3457af2c77bb69a9efc6fedde6b2e0d2bfb902fd2"
const Ros1Pal_navigation_msgsPolarReadingNativeType* = "pal_navigation_msgs/PolarReading"
const Ros1Pal_navigation_msgsPolarReadingNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsPolarReading*(): Ros1Pal_navigation_msgsPolarReading =
  result.`angle` = 0
  result.`distance` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsPolarReading; w: var Writer) =
  putFloat32(w,value.`angle`)
  putFloat32(w,value.`distance`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsPolarReading*(r: var Reader): Ros1Pal_navigation_msgsPolarReading =
  result = initRos1Pal_navigation_msgsPolarReading()
  result.`angle` = getFloat32(r)
  result.`distance` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsPolarReading): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsPolarReading*(b: seq[byte]): Ros1Pal_navigation_msgsPolarReading =
  var r = initReader(b,8)
  result = readRos1Pal_navigation_msgsPolarReading(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/PolarReadingScan.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsPolarReadingScan* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original readings as pal_navigation_msgs/PolarReading.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `readings`*: seq[Ros1Pal_navigation_msgsPolarReading]
const Ros1Pal_navigation_msgsPolarReadingScanMaximumWireBytes* = 180
const Ros1Pal_navigation_msgsPolarReadingScanCodecIdentity* = "UWVMROS1_80d29afd1790fc33923dd1233f118dce0189db42194aac17d6059873ead24245"
const Ros1Pal_navigation_msgsPolarReadingScanNativeType* = "pal_navigation_msgs/PolarReadingScan"
const Ros1Pal_navigation_msgsPolarReadingScanNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsPolarReadingScan*(): Ros1Pal_navigation_msgsPolarReadingScan =
  result.`header` = initRos1Std_msgsHeader()
  result.`readings` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsPolarReadingScan; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`readings`.len > 4: fail(22)
  putInteger(w,uint32(value.`readings`.len))
  for e in value.`readings`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsPolarReadingScan*(r: var Reader): Ros1Pal_navigation_msgsPolarReadingScan =
  result = initRos1Pal_navigation_msgsPolarReadingScan()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`readings` = newSeq[Ros1Pal_navigation_msgsPolarReading](count1)
  for i in 0..<count1:
    result.`readings`[i] = readRos1Pal_navigation_msgsPolarReading(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsPolarReadingScan): seq[byte] =
  var w = initWriter(180)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsPolarReadingScan*(b: seq[byte]): Ros1Pal_navigation_msgsPolarReadingScan =
  var r = initReader(b,180)
  result = readRos1Pal_navigation_msgsPolarReadingScan(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/RenameMapRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsRenameMapRequest* = object
  ## @brief Preserve original current_map_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `current_map_name`*: string
  ## @brief Preserve original new_map_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `new_map_name`*: string
const Ros1Pal_navigation_msgsRenameMapRequestMaximumWireBytes* = 264
const Ros1Pal_navigation_msgsRenameMapRequestCodecIdentity* = "UWVMROS1_a0c1e30166e0a09c94ab0192d8f0b34954eb795eb34f2636110dee13a1539852"
const Ros1Pal_navigation_msgsRenameMapRequestNativeType* = "pal_navigation_msgs/RenameMapRequest"
const Ros1Pal_navigation_msgsRenameMapRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsRenameMapRequest*(): Ros1Pal_navigation_msgsRenameMapRequest =
  result.`current_map_name` = ""
  result.`new_map_name` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsRenameMapRequest; w: var Writer) =
  putString(w,value.`current_map_name`,128)
  putString(w,value.`new_map_name`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsRenameMapRequest*(r: var Reader): Ros1Pal_navigation_msgsRenameMapRequest =
  result = initRos1Pal_navigation_msgsRenameMapRequest()
  result.`current_map_name` = getString(r,128)
  result.`new_map_name` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsRenameMapRequest): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsRenameMapRequest*(b: seq[byte]): Ros1Pal_navigation_msgsRenameMapRequest =
  var r = initReader(b,264)
  result = readRos1Pal_navigation_msgsRenameMapRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/RenameMapResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsRenameMapResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Pal_navigation_msgsRenameMapResponseMaximumWireBytes* = 133
const Ros1Pal_navigation_msgsRenameMapResponseCodecIdentity* = "UWVMROS1_9a2e4bcfbd5b7b7476b7dad1a51fa19f749806fefe395a55834a38e831b51807"
const Ros1Pal_navigation_msgsRenameMapResponseNativeType* = "pal_navigation_msgs/RenameMapResponse"
const Ros1Pal_navigation_msgsRenameMapResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsRenameMapResponse*(): Ros1Pal_navigation_msgsRenameMapResponse =
  result.`success` = false
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsRenameMapResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsRenameMapResponse*(r: var Reader): Ros1Pal_navigation_msgsRenameMapResponse =
  result = initRos1Pal_navigation_msgsRenameMapResponse()
  result.`success` = getBool(r)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsRenameMapResponse): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsRenameMapResponse*(b: seq[byte]): Ros1Pal_navigation_msgsRenameMapResponse =
  var r = initReader(b,133)
  result = readRos1Pal_navigation_msgsRenameMapResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/SafetyZoneRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsSafetyZoneRequest* = object
  ## @brief Preserve original distance as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `distance`*: float64
  ## @brief Preserve original leftAngleRad as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `leftAngleRad`*: float64
  ## @brief Preserve original rightAngleRad as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `rightAngleRad`*: float64
  ## @brief Preserve original sensorMask as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `sensorMask`*: uint32
const Ros1Pal_navigation_msgsSafetyZoneRequestMaximumWireBytes* = 28
const Ros1Pal_navigation_msgsSafetyZoneRequestCodecIdentity* = "UWVMROS1_c7bfca2804a0307c6666f800ecaacccc5daf70a315407b097799b2ea2ce8d53f"
const Ros1Pal_navigation_msgsSafetyZoneRequestNativeType* = "pal_navigation_msgs/SafetyZoneRequest"
const Ros1Pal_navigation_msgsSafetyZoneRequestNativeIdentity* = ""
const Ros1Pal_navigation_msgsSafetyZoneRequest_NO_SENSORS*: int8 = 0'i8
const Ros1Pal_navigation_msgsSafetyZoneRequest_ALL_SENSORS*: int8 = 127'i8
const Ros1Pal_navigation_msgsSafetyZoneRequest_FRONT_SONARS*: int8 = 1'i8
const Ros1Pal_navigation_msgsSafetyZoneRequest_LEFT_SONARS*: int8 = 2'i8
const Ros1Pal_navigation_msgsSafetyZoneRequest_RIGHT_SONARS*: int8 = 4'i8
const Ros1Pal_navigation_msgsSafetyZoneRequest_BACK_SONARS*: int8 = 8'i8
const Ros1Pal_navigation_msgsSafetyZoneRequest_TORSO_SONARS*: int8 = 16'i8
const Ros1Pal_navigation_msgsSafetyZoneRequest_ONLY_SONARS*: int8 = 31'i8
const Ros1Pal_navigation_msgsSafetyZoneRequest_BASE_LASER*: int8 = 32'i8
const Ros1Pal_navigation_msgsSafetyZoneRequest_TORSO_LASER*: int8 = 64'i8
const Ros1Pal_navigation_msgsSafetyZoneRequest_ONLY_LASERS*: int8 = 96'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsSafetyZoneRequest*(): Ros1Pal_navigation_msgsSafetyZoneRequest =
  result.`distance` = 0
  result.`leftAngleRad` = 0
  result.`rightAngleRad` = 0
  result.`sensorMask` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsSafetyZoneRequest; w: var Writer) =
  putFloat64(w,value.`distance`)
  putFloat64(w,value.`leftAngleRad`)
  putFloat64(w,value.`rightAngleRad`)
  putInteger(w,value.`sensorMask`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsSafetyZoneRequest*(r: var Reader): Ros1Pal_navigation_msgsSafetyZoneRequest =
  result = initRos1Pal_navigation_msgsSafetyZoneRequest()
  result.`distance` = getFloat64(r)
  result.`leftAngleRad` = getFloat64(r)
  result.`rightAngleRad` = getFloat64(r)
  result.`sensorMask` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsSafetyZoneRequest): seq[byte] =
  var w = initWriter(28)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsSafetyZoneRequest*(b: seq[byte]): Ros1Pal_navigation_msgsSafetyZoneRequest =
  var r = initReader(b,28)
  result = readRos1Pal_navigation_msgsSafetyZoneRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/SafetyZoneResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsSafetyZoneResponse* = object
  ## @brief Preserve original leftSafe as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leftSafe`*: bool
  ## @brief Preserve original leftMinDist as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `leftMinDist`*: float64
  ## @brief Preserve original leftMinDistAngleRad as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `leftMinDistAngleRad`*: float64
  ## @brief Preserve original rightSafe as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `rightSafe`*: bool
  ## @brief Preserve original rightMinDist as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `rightMinDist`*: float64
  ## @brief Preserve original rightMinDistAngleRad as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `rightMinDistAngleRad`*: float64
const Ros1Pal_navigation_msgsSafetyZoneResponseMaximumWireBytes* = 34
const Ros1Pal_navigation_msgsSafetyZoneResponseCodecIdentity* = "UWVMROS1_237e4207a82e5b1a1caccdf5a010cef018d1bcebff8c00a550d11bb5f729d122"
const Ros1Pal_navigation_msgsSafetyZoneResponseNativeType* = "pal_navigation_msgs/SafetyZoneResponse"
const Ros1Pal_navigation_msgsSafetyZoneResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsSafetyZoneResponse*(): Ros1Pal_navigation_msgsSafetyZoneResponse =
  result.`leftSafe` = false
  result.`leftMinDist` = 0
  result.`leftMinDistAngleRad` = 0
  result.`rightSafe` = false
  result.`rightMinDist` = 0
  result.`rightMinDistAngleRad` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsSafetyZoneResponse; w: var Writer) =
  putBool(w,value.`leftSafe`)
  putFloat64(w,value.`leftMinDist`)
  putFloat64(w,value.`leftMinDistAngleRad`)
  putBool(w,value.`rightSafe`)
  putFloat64(w,value.`rightMinDist`)
  putFloat64(w,value.`rightMinDistAngleRad`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsSafetyZoneResponse*(r: var Reader): Ros1Pal_navigation_msgsSafetyZoneResponse =
  result = initRos1Pal_navigation_msgsSafetyZoneResponse()
  result.`leftSafe` = getBool(r)
  result.`leftMinDist` = getFloat64(r)
  result.`leftMinDistAngleRad` = getFloat64(r)
  result.`rightSafe` = getBool(r)
  result.`rightMinDist` = getFloat64(r)
  result.`rightMinDistAngleRad` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsSafetyZoneResponse): seq[byte] =
  var w = initWriter(34)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsSafetyZoneResponse*(b: seq[byte]): Ros1Pal_navigation_msgsSafetyZoneResponse =
  var r = initReader(b,34)
  result = readRos1Pal_navigation_msgsSafetyZoneResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/SaveMapRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsSaveMapRequest* = object
  ## @brief Preserve original directory as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `directory`*: string
const Ros1Pal_navigation_msgsSaveMapRequestMaximumWireBytes* = 132
const Ros1Pal_navigation_msgsSaveMapRequestCodecIdentity* = "UWVMROS1_a5ff7c9bf1f8f2117dda21a7ac565fc743a6753a0de329ea601754bfed7fb07d"
const Ros1Pal_navigation_msgsSaveMapRequestNativeType* = "pal_navigation_msgs/SaveMapRequest"
const Ros1Pal_navigation_msgsSaveMapRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsSaveMapRequest*(): Ros1Pal_navigation_msgsSaveMapRequest =
  result.`directory` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsSaveMapRequest; w: var Writer) =
  putString(w,value.`directory`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsSaveMapRequest*(r: var Reader): Ros1Pal_navigation_msgsSaveMapRequest =
  result = initRos1Pal_navigation_msgsSaveMapRequest()
  result.`directory` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsSaveMapRequest): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsSaveMapRequest*(b: seq[byte]): Ros1Pal_navigation_msgsSaveMapRequest =
  var r = initReader(b,132)
  result = readRos1Pal_navigation_msgsSaveMapRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/SaveMapResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsSaveMapResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original full_path as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `full_path`*: string
  ## @brief Preserve original message as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `message`*: string
const Ros1Pal_navigation_msgsSaveMapResponseMaximumWireBytes* = 397
const Ros1Pal_navigation_msgsSaveMapResponseCodecIdentity* = "UWVMROS1_afc5ee8548a56c73711b0f2057a399d88b02485b96b9ef7c2c4deec48ddcb064"
const Ros1Pal_navigation_msgsSaveMapResponseNativeType* = "pal_navigation_msgs/SaveMapResponse"
const Ros1Pal_navigation_msgsSaveMapResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsSaveMapResponse*(): Ros1Pal_navigation_msgsSaveMapResponse =
  result.`success` = false
  result.`name` = ""
  result.`full_path` = ""
  result.`message` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsSaveMapResponse; w: var Writer) =
  putBool(w,value.`success`)
  putString(w,value.`name`,128)
  putString(w,value.`full_path`,128)
  putString(w,value.`message`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsSaveMapResponse*(r: var Reader): Ros1Pal_navigation_msgsSaveMapResponse =
  result = initRos1Pal_navigation_msgsSaveMapResponse()
  result.`success` = getBool(r)
  result.`name` = getString(r,128)
  result.`full_path` = getString(r,128)
  result.`message` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsSaveMapResponse): seq[byte] =
  var w = initWriter(397)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsSaveMapResponse*(b: seq[byte]): Ros1Pal_navigation_msgsSaveMapResponse =
  var r = initReader(b,397)
  result = readRos1Pal_navigation_msgsSaveMapResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/ServiceStatus.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsServiceStatus* = object
  ## @brief Preserve original serviceName as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `serviceName`*: string
  ## @brief Preserve original is_running as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `is_running`*: bool
  ## @brief Preserve original update_frequency as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `update_frequency`*: float32
  ## @brief Preserve original latest_run_time as time.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `latest_run_time`*: Ros1Time
  ## @brief Preserve original status as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `status`*: bool
const Ros1Pal_navigation_msgsServiceStatusMaximumWireBytes* = 146
const Ros1Pal_navigation_msgsServiceStatusCodecIdentity* = "UWVMROS1_c08ab79758b14d1722aaaf425096153a299db64bf4efa8f154d08f20b0d68622"
const Ros1Pal_navigation_msgsServiceStatusNativeType* = "pal_navigation_msgs/ServiceStatus"
const Ros1Pal_navigation_msgsServiceStatusNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsServiceStatus*(): Ros1Pal_navigation_msgsServiceStatus =
  result.`serviceName` = ""
  result.`is_running` = false
  result.`update_frequency` = 0
  result.`latest_run_time` = initRos1Time()
  result.`status` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsServiceStatus; w: var Writer) =
  putString(w,value.`serviceName`,128)
  putBool(w,value.`is_running`)
  putFloat32(w,value.`update_frequency`)
  writeFields(value.`latest_run_time`,w)
  putBool(w,value.`status`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsServiceStatus*(r: var Reader): Ros1Pal_navigation_msgsServiceStatus =
  result = initRos1Pal_navigation_msgsServiceStatus()
  result.`serviceName` = getString(r,128)
  result.`is_running` = getBool(r)
  result.`update_frequency` = getFloat32(r)
  result.`latest_run_time` = readRos1Time(r)
  result.`status` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsServiceStatus): seq[byte] =
  var w = initWriter(146)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsServiceStatus*(b: seq[byte]): Ros1Pal_navigation_msgsServiceStatus =
  var r = initReader(b,146)
  result = readRos1Pal_navigation_msgsServiceStatus(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/SetMapConfigurationRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsSetMapConfigurationRequest* = object
  ## @brief Preserve original map_config as pal_navigation_msgs/MapConfiguration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `map_config`*: Ros1Pal_navigation_msgsMapConfiguration
const Ros1Pal_navigation_msgsSetMapConfigurationRequestMaximumWireBytes* = 15953
const Ros1Pal_navigation_msgsSetMapConfigurationRequestCodecIdentity* = "UWVMROS1_f8205ddf6c3a59445ee1a9868259a07e4b5d2d88e3e722259410016317b88cd8"
const Ros1Pal_navigation_msgsSetMapConfigurationRequestNativeType* = "pal_navigation_msgs/SetMapConfigurationRequest"
const Ros1Pal_navigation_msgsSetMapConfigurationRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsSetMapConfigurationRequest*(): Ros1Pal_navigation_msgsSetMapConfigurationRequest =
  result.`map_config` = initRos1Pal_navigation_msgsMapConfiguration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsSetMapConfigurationRequest; w: var Writer) =
  writeFields(value.`map_config`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsSetMapConfigurationRequest*(r: var Reader): Ros1Pal_navigation_msgsSetMapConfigurationRequest =
  result = initRos1Pal_navigation_msgsSetMapConfigurationRequest()
  result.`map_config` = readRos1Pal_navigation_msgsMapConfiguration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsSetMapConfigurationRequest): seq[byte] =
  var w = initWriter(15953)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsSetMapConfigurationRequest*(b: seq[byte]): Ros1Pal_navigation_msgsSetMapConfigurationRequest =
  var r = initReader(b,15953)
  result = readRos1Pal_navigation_msgsSetMapConfigurationRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/SetMapConfigurationResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsSetMapConfigurationResponse* = object
const Ros1Pal_navigation_msgsSetMapConfigurationResponseMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsSetMapConfigurationResponseCodecIdentity* = "UWVMROS1_ef256f903c5860e7f8eb52e644184d325614940a29b96beb716381d1a066f701"
const Ros1Pal_navigation_msgsSetMapConfigurationResponseNativeType* = "pal_navigation_msgs/SetMapConfigurationResponse"
const Ros1Pal_navigation_msgsSetMapConfigurationResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsSetMapConfigurationResponse*(): Ros1Pal_navigation_msgsSetMapConfigurationResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsSetMapConfigurationResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsSetMapConfigurationResponse*(r: var Reader): Ros1Pal_navigation_msgsSetMapConfigurationResponse =
  result = initRos1Pal_navigation_msgsSetMapConfigurationResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsSetMapConfigurationResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsSetMapConfigurationResponse*(b: seq[byte]): Ros1Pal_navigation_msgsSetMapConfigurationResponse =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsSetMapConfigurationResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/SetPOIRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsSetPOIRequest* = object
  ## @brief Preserve original poi as pal_navigation_msgs/POI.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `poi`*: Ros1Pal_navigation_msgsPOI
const Ros1Pal_navigation_msgsSetPOIRequestMaximumWireBytes* = 1664
const Ros1Pal_navigation_msgsSetPOIRequestCodecIdentity* = "UWVMROS1_ca248b399762c27d6bf941c2600ead52f026f9b5a1fde3987d6050b2626c582e"
const Ros1Pal_navigation_msgsSetPOIRequestNativeType* = "pal_navigation_msgs/SetPOIRequest"
const Ros1Pal_navigation_msgsSetPOIRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsSetPOIRequest*(): Ros1Pal_navigation_msgsSetPOIRequest =
  result.`poi` = initRos1Pal_navigation_msgsPOI()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsSetPOIRequest; w: var Writer) =
  writeFields(value.`poi`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsSetPOIRequest*(r: var Reader): Ros1Pal_navigation_msgsSetPOIRequest =
  result = initRos1Pal_navigation_msgsSetPOIRequest()
  result.`poi` = readRos1Pal_navigation_msgsPOI(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsSetPOIRequest): seq[byte] =
  var w = initWriter(1664)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsSetPOIRequest*(b: seq[byte]): Ros1Pal_navigation_msgsSetPOIRequest =
  var r = initReader(b,1664)
  result = readRos1Pal_navigation_msgsSetPOIRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/SetPOIResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsSetPOIResponse* = object
const Ros1Pal_navigation_msgsSetPOIResponseMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsSetPOIResponseCodecIdentity* = "UWVMROS1_a273017f817a15e0936b8eba139ca9797c2f550b7b5926a9275416dce3dfbfd1"
const Ros1Pal_navigation_msgsSetPOIResponseNativeType* = "pal_navigation_msgs/SetPOIResponse"
const Ros1Pal_navigation_msgsSetPOIResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsSetPOIResponse*(): Ros1Pal_navigation_msgsSetPOIResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsSetPOIResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsSetPOIResponse*(r: var Reader): Ros1Pal_navigation_msgsSetPOIResponse =
  result = initRos1Pal_navigation_msgsSetPOIResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsSetPOIResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsSetPOIResponse*(b: seq[byte]): Ros1Pal_navigation_msgsSetPOIResponse =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsSetPOIResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/SetSubMapFloorRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsSetSubMapFloorRequest* = object
  ## @brief Preserve original index as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `index`*: int8
  ## @brief Preserve original floor as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `floor`*: int8
const Ros1Pal_navigation_msgsSetSubMapFloorRequestMaximumWireBytes* = 2
const Ros1Pal_navigation_msgsSetSubMapFloorRequestCodecIdentity* = "UWVMROS1_4bade8d2022442add78465f9e7aa302fd650256c6e4fefedadc46f6ea3f19536"
const Ros1Pal_navigation_msgsSetSubMapFloorRequestNativeType* = "pal_navigation_msgs/SetSubMapFloorRequest"
const Ros1Pal_navigation_msgsSetSubMapFloorRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsSetSubMapFloorRequest*(): Ros1Pal_navigation_msgsSetSubMapFloorRequest =
  result.`index` = 0
  result.`floor` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsSetSubMapFloorRequest; w: var Writer) =
  putInteger(w,value.`index`)
  putInteger(w,value.`floor`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsSetSubMapFloorRequest*(r: var Reader): Ros1Pal_navigation_msgsSetSubMapFloorRequest =
  result = initRos1Pal_navigation_msgsSetSubMapFloorRequest()
  result.`index` = getInteger(r,int8)
  result.`floor` = getInteger(r,int8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsSetSubMapFloorRequest): seq[byte] =
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsSetSubMapFloorRequest*(b: seq[byte]): Ros1Pal_navigation_msgsSetSubMapFloorRequest =
  var r = initReader(b,2)
  result = readRos1Pal_navigation_msgsSetSubMapFloorRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/SetSubMapFloorResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsSetSubMapFloorResponse* = object
const Ros1Pal_navigation_msgsSetSubMapFloorResponseMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsSetSubMapFloorResponseCodecIdentity* = "UWVMROS1_67d24dd2353c6ee7113822da8a23e15a5a465c6f692ef40d8ca8486b5fccc1ac"
const Ros1Pal_navigation_msgsSetSubMapFloorResponseNativeType* = "pal_navigation_msgs/SetSubMapFloorResponse"
const Ros1Pal_navigation_msgsSetSubMapFloorResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsSetSubMapFloorResponse*(): Ros1Pal_navigation_msgsSetSubMapFloorResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsSetSubMapFloorResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsSetSubMapFloorResponse*(r: var Reader): Ros1Pal_navigation_msgsSetSubMapFloorResponse =
  result = initRos1Pal_navigation_msgsSetSubMapFloorResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsSetSubMapFloorResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsSetSubMapFloorResponse*(b: seq[byte]): Ros1Pal_navigation_msgsSetSubMapFloorResponse =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsSetSubMapFloorResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/TabletPOI.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsTabletPOI* = object
  ## @brief Preserve original POIs as geometry_msgs/Point.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `POIs`*: seq[Ros1Geometry_msgsPoint]
  ## @brief Preserve original IDs as std_msgs/String.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `IDs`*: seq[Ros1Std_msgsString]
  ## @brief Preserve original map_id as std_msgs/String.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `map_id`*: Ros1Std_msgsString
const Ros1Pal_navigation_msgsTabletPOIMaximumWireBytes* = 764
const Ros1Pal_navigation_msgsTabletPOICodecIdentity* = "UWVMROS1_0f632e29a4a78c036cf5ccb39ae26a0f64a7642d727698c06f2d879de9241ae0"
const Ros1Pal_navigation_msgsTabletPOINativeType* = "pal_navigation_msgs/TabletPOI"
const Ros1Pal_navigation_msgsTabletPOINativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsTabletPOI*(): Ros1Pal_navigation_msgsTabletPOI =
  result.`POIs` = @[]
  result.`IDs` = @[]
  result.`map_id` = initRos1Std_msgsString()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsTabletPOI; w: var Writer) =
  if value.`POIs`.len > 4: fail(22)
  putInteger(w,uint32(value.`POIs`.len))
  for e in value.`POIs`:
    writeFields(e,w)
  if value.`IDs`.len > 4: fail(22)
  putInteger(w,uint32(value.`IDs`.len))
  for e in value.`IDs`:
    writeFields(e,w)
  writeFields(value.`map_id`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsTabletPOI*(r: var Reader): Ros1Pal_navigation_msgsTabletPOI =
  result = initRos1Pal_navigation_msgsTabletPOI()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`POIs` = newSeq[Ros1Geometry_msgsPoint](count0)
  for i in 0..<count0:
    result.`POIs`[i] = readRos1Geometry_msgsPoint(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`IDs` = newSeq[Ros1Std_msgsString](count1)
  for i in 0..<count1:
    result.`IDs`[i] = readRos1Std_msgsString(r)
  result.`map_id` = readRos1Std_msgsString(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsTabletPOI): seq[byte] =
  var w = initWriter(764)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsTabletPOI*(b: seq[byte]): Ros1Pal_navigation_msgsTabletPOI =
  var r = initReader(b,764)
  result = readRos1Pal_navigation_msgsTabletPOI(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/VisualLocRecognizeRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsVisualLocRecognizeRequest* = object
const Ros1Pal_navigation_msgsVisualLocRecognizeRequestMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsVisualLocRecognizeRequestCodecIdentity* = "UWVMROS1_7a4a33e9269b79d338bc44c15c0e9ffab87d8fe9c132fddd487df5b9248600e4"
const Ros1Pal_navigation_msgsVisualLocRecognizeRequestNativeType* = "pal_navigation_msgs/VisualLocRecognizeRequest"
const Ros1Pal_navigation_msgsVisualLocRecognizeRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsVisualLocRecognizeRequest*(): Ros1Pal_navigation_msgsVisualLocRecognizeRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsVisualLocRecognizeRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsVisualLocRecognizeRequest*(r: var Reader): Ros1Pal_navigation_msgsVisualLocRecognizeRequest =
  result = initRos1Pal_navigation_msgsVisualLocRecognizeRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsVisualLocRecognizeRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsVisualLocRecognizeRequest*(b: seq[byte]): Ros1Pal_navigation_msgsVisualLocRecognizeRequest =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsVisualLocRecognizeRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/VisualLocRecognizeResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsVisualLocRecognizeResponse* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original confidence as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `confidence`*: float64
  ## @brief Preserve original estimatedPose as geometry_msgs/PoseWithCovarianceStamped.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `estimatedPose`*: Ros1Geometry_msgsPoseWithCovarianceStamped
const Ros1Pal_navigation_msgsVisualLocRecognizeResponseMaximumWireBytes* = 497
const Ros1Pal_navigation_msgsVisualLocRecognizeResponseCodecIdentity* = "UWVMROS1_306e234599c2ff8a294a8e078a4f6c43dbf8fba8d368fca5a6016826b098be89"
const Ros1Pal_navigation_msgsVisualLocRecognizeResponseNativeType* = "pal_navigation_msgs/VisualLocRecognizeResponse"
const Ros1Pal_navigation_msgsVisualLocRecognizeResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsVisualLocRecognizeResponse*(): Ros1Pal_navigation_msgsVisualLocRecognizeResponse =
  result.`success` = false
  result.`confidence` = 0
  result.`estimatedPose` = initRos1Geometry_msgsPoseWithCovarianceStamped()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsVisualLocRecognizeResponse; w: var Writer) =
  putBool(w,value.`success`)
  putFloat64(w,value.`confidence`)
  writeFields(value.`estimatedPose`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsVisualLocRecognizeResponse*(r: var Reader): Ros1Pal_navigation_msgsVisualLocRecognizeResponse =
  result = initRos1Pal_navigation_msgsVisualLocRecognizeResponse()
  result.`success` = getBool(r)
  result.`confidence` = getFloat64(r)
  result.`estimatedPose` = readRos1Geometry_msgsPoseWithCovarianceStamped(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsVisualLocRecognizeResponse): seq[byte] =
  var w = initWriter(497)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsVisualLocRecognizeResponse*(b: seq[byte]): Ros1Pal_navigation_msgsVisualLocRecognizeResponse =
  var r = initReader(b,497)
  result = readRos1Pal_navigation_msgsVisualLocRecognizeResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/VisualTrainingGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsVisualTrainingGoal* = object
  ## @brief Preserve original action as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `action`*: uint8
  ## @brief Preserve original database_path as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `database_path`*: string
const Ros1Pal_navigation_msgsVisualTrainingGoalMaximumWireBytes* = 133
const Ros1Pal_navigation_msgsVisualTrainingGoalCodecIdentity* = "UWVMROS1_ea430253b6b7cd7fd82e0e3cbc0c40cb6d4835444a09587d90f1b698dd53ade4"
const Ros1Pal_navigation_msgsVisualTrainingGoalNativeType* = "pal_navigation_msgs/VisualTrainingGoal"
const Ros1Pal_navigation_msgsVisualTrainingGoalNativeIdentity* = ""
const Ros1Pal_navigation_msgsVisualTrainingGoal_ACTION_TRAIN*: uint8 = 0'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsVisualTrainingGoal*(): Ros1Pal_navigation_msgsVisualTrainingGoal =
  result.`action` = 0
  result.`database_path` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsVisualTrainingGoal; w: var Writer) =
  putInteger(w,value.`action`)
  putString(w,value.`database_path`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsVisualTrainingGoal*(r: var Reader): Ros1Pal_navigation_msgsVisualTrainingGoal =
  result = initRos1Pal_navigation_msgsVisualTrainingGoal()
  result.`action` = getInteger(r,uint8)
  result.`database_path` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsVisualTrainingGoal): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsVisualTrainingGoal*(b: seq[byte]): Ros1Pal_navigation_msgsVisualTrainingGoal =
  var r = initReader(b,133)
  result = readRos1Pal_navigation_msgsVisualTrainingGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/VisualTrainingResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsVisualTrainingResult* = object
const Ros1Pal_navigation_msgsVisualTrainingResultMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsVisualTrainingResultCodecIdentity* = "UWVMROS1_3a1c9623f4ec7e02ecf7a33978d54c95b9c3a42f4cb5004e11f062774175c387"
const Ros1Pal_navigation_msgsVisualTrainingResultNativeType* = "pal_navigation_msgs/VisualTrainingResult"
const Ros1Pal_navigation_msgsVisualTrainingResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsVisualTrainingResult*(): Ros1Pal_navigation_msgsVisualTrainingResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsVisualTrainingResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsVisualTrainingResult*(r: var Reader): Ros1Pal_navigation_msgsVisualTrainingResult =
  result = initRos1Pal_navigation_msgsVisualTrainingResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsVisualTrainingResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsVisualTrainingResult*(b: seq[byte]): Ros1Pal_navigation_msgsVisualTrainingResult =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsVisualTrainingResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_navigation_msgs/VisualTrainingFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_navigation_msgsVisualTrainingFeedback* = object
const Ros1Pal_navigation_msgsVisualTrainingFeedbackMaximumWireBytes* = 0
const Ros1Pal_navigation_msgsVisualTrainingFeedbackCodecIdentity* = "UWVMROS1_39409b2914607480bd3fb1f3ec5162c11ab8b8e773e23f7730693c2461deaab3"
const Ros1Pal_navigation_msgsVisualTrainingFeedbackNativeType* = "pal_navigation_msgs/VisualTrainingFeedback"
const Ros1Pal_navigation_msgsVisualTrainingFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_navigation_msgsVisualTrainingFeedback*(): Ros1Pal_navigation_msgsVisualTrainingFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_navigation_msgsVisualTrainingFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_navigation_msgsVisualTrainingFeedback*(r: var Reader): Ros1Pal_navigation_msgsVisualTrainingFeedback =
  result = initRos1Pal_navigation_msgsVisualTrainingFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_navigation_msgsVisualTrainingFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_navigation_msgsVisualTrainingFeedback*(b: seq[byte]): Ros1Pal_navigation_msgsVisualTrainingFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_navigation_msgsVisualTrainingFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_simulation_msgs/ExternalWrench.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_simulation_msgsExternalWrench* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original link_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `link_name`*: string
  ## @brief Preserve original wrench as geometry_msgs/Wrench.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `wrench`*: Ros1Geometry_msgsWrench
  ## @brief Preserve original application_point as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `application_point`*: Ros1Geometry_msgsPoint
  ## @brief Preserve original duration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `duration`*: Ros1Duration
const Ros1Pal_simulation_msgsExternalWrenchMaximumWireBytes* = 356
const Ros1Pal_simulation_msgsExternalWrenchCodecIdentity* = "UWVMROS1_b85249fbffa7b83dd13e2f42d71c5a4136743e892760cf0eb65bbaf3dfd0824c"
const Ros1Pal_simulation_msgsExternalWrenchNativeType* = "pal_simulation_msgs/ExternalWrench"
const Ros1Pal_simulation_msgsExternalWrenchNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_simulation_msgsExternalWrench*(): Ros1Pal_simulation_msgsExternalWrench =
  result.`header` = initRos1Std_msgsHeader()
  result.`link_name` = ""
  result.`wrench` = initRos1Geometry_msgsWrench()
  result.`application_point` = initRos1Geometry_msgsPoint()
  result.`duration` = initRos1Duration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_simulation_msgsExternalWrench; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`link_name`,128)
  writeFields(value.`wrench`,w)
  writeFields(value.`application_point`,w)
  writeFields(value.`duration`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_simulation_msgsExternalWrench*(r: var Reader): Ros1Pal_simulation_msgsExternalWrench =
  result = initRos1Pal_simulation_msgsExternalWrench()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`link_name` = getString(r,128)
  result.`wrench` = readRos1Geometry_msgsWrench(r)
  result.`application_point` = readRos1Geometry_msgsPoint(r)
  result.`duration` = readRos1Duration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_simulation_msgsExternalWrench): seq[byte] =
  var w = initWriter(356)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_simulation_msgsExternalWrench*(b: seq[byte]): Ros1Pal_simulation_msgsExternalWrench =
  var r = initReader(b,356)
  result = readRos1Pal_simulation_msgsExternalWrench(r)
  finish(r)
## @brief Own every original field of ROS1 pal_tablet_msgs/FunctionalityStatus.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_tablet_msgsFunctionalityStatus* = object
  ## @brief Preserve original errMessage as std_msgs/String.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `errMessage`*: Ros1Std_msgsString
  ## @brief Preserve original errStatus as std_msgs/Bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `errStatus`*: Ros1Std_msgsBool
const Ros1Pal_tablet_msgsFunctionalityStatusMaximumWireBytes* = 133
const Ros1Pal_tablet_msgsFunctionalityStatusCodecIdentity* = "UWVMROS1_ce7e4fc9d13688058739c422c63a6af44d883b54b3efde8aed4e3272f8b0de35"
const Ros1Pal_tablet_msgsFunctionalityStatusNativeType* = "pal_tablet_msgs/FunctionalityStatus"
const Ros1Pal_tablet_msgsFunctionalityStatusNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_tablet_msgsFunctionalityStatus*(): Ros1Pal_tablet_msgsFunctionalityStatus =
  result.`errMessage` = initRos1Std_msgsString()
  result.`errStatus` = initRos1Std_msgsBool()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_tablet_msgsFunctionalityStatus; w: var Writer) =
  writeFields(value.`errMessage`,w)
  writeFields(value.`errStatus`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_tablet_msgsFunctionalityStatus*(r: var Reader): Ros1Pal_tablet_msgsFunctionalityStatus =
  result = initRos1Pal_tablet_msgsFunctionalityStatus()
  result.`errMessage` = readRos1Std_msgsString(r)
  result.`errStatus` = readRos1Std_msgsBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_tablet_msgsFunctionalityStatus): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_tablet_msgsFunctionalityStatus*(b: seq[byte]): Ros1Pal_tablet_msgsFunctionalityStatus =
  var r = initReader(b,133)
  result = readRos1Pal_tablet_msgsFunctionalityStatus(r)
  finish(r)
## @brief Own every original field of ROS1 pal_tablet_msgs/RobotStatus.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_tablet_msgsRobotStatus* = object
  ## @brief Preserve original messages as pal_tablet_msgs/FunctionalityStatus.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `messages`*: seq[Ros1Pal_tablet_msgsFunctionalityStatus]
const Ros1Pal_tablet_msgsRobotStatusMaximumWireBytes* = 536
const Ros1Pal_tablet_msgsRobotStatusCodecIdentity* = "UWVMROS1_b01e5783832f7b816d0dca678bca11f49554304116bf9a8fccc9b36b18b4478d"
const Ros1Pal_tablet_msgsRobotStatusNativeType* = "pal_tablet_msgs/RobotStatus"
const Ros1Pal_tablet_msgsRobotStatusNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_tablet_msgsRobotStatus*(): Ros1Pal_tablet_msgsRobotStatus =
  result.`messages` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_tablet_msgsRobotStatus; w: var Writer) =
  if value.`messages`.len > 4: fail(22)
  putInteger(w,uint32(value.`messages`.len))
  for e in value.`messages`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_tablet_msgsRobotStatus*(r: var Reader): Ros1Pal_tablet_msgsRobotStatus =
  result = initRos1Pal_tablet_msgsRobotStatus()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`messages` = newSeq[Ros1Pal_tablet_msgsFunctionalityStatus](count0)
  for i in 0..<count0:
    result.`messages`[i] = readRos1Pal_tablet_msgsFunctionalityStatus(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_tablet_msgsRobotStatus): seq[byte] =
  var w = initWriter(536)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_tablet_msgsRobotStatus*(b: seq[byte]): Ros1Pal_tablet_msgsRobotStatus =
  var r = initReader(b,536)
  result = readRos1Pal_tablet_msgsRobotStatus(r)
  finish(r)
## @brief Own every original field of ROS1 pal_video_recording_msgs/StartRecordingRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_video_recording_msgsStartRecordingRequest* = object
const Ros1Pal_video_recording_msgsStartRecordingRequestMaximumWireBytes* = 0
const Ros1Pal_video_recording_msgsStartRecordingRequestCodecIdentity* = "UWVMROS1_214a2bd3c382b4bd7dbb15d1b694e6d385bd9b2656944068177bd0408a16d914"
const Ros1Pal_video_recording_msgsStartRecordingRequestNativeType* = "pal_video_recording_msgs/StartRecordingRequest"
const Ros1Pal_video_recording_msgsStartRecordingRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_video_recording_msgsStartRecordingRequest*(): Ros1Pal_video_recording_msgsStartRecordingRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_video_recording_msgsStartRecordingRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_video_recording_msgsStartRecordingRequest*(r: var Reader): Ros1Pal_video_recording_msgsStartRecordingRequest =
  result = initRos1Pal_video_recording_msgsStartRecordingRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_video_recording_msgsStartRecordingRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_video_recording_msgsStartRecordingRequest*(b: seq[byte]): Ros1Pal_video_recording_msgsStartRecordingRequest =
  var r = initReader(b,0)
  result = readRos1Pal_video_recording_msgsStartRecordingRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_video_recording_msgs/StartRecordingResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_video_recording_msgsStartRecordingResponse* = object
const Ros1Pal_video_recording_msgsStartRecordingResponseMaximumWireBytes* = 0
const Ros1Pal_video_recording_msgsStartRecordingResponseCodecIdentity* = "UWVMROS1_03b8bcd879b02864300b8a90d721958a4335f53bd17abbd29178471de736d9b6"
const Ros1Pal_video_recording_msgsStartRecordingResponseNativeType* = "pal_video_recording_msgs/StartRecordingResponse"
const Ros1Pal_video_recording_msgsStartRecordingResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_video_recording_msgsStartRecordingResponse*(): Ros1Pal_video_recording_msgsStartRecordingResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_video_recording_msgsStartRecordingResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_video_recording_msgsStartRecordingResponse*(r: var Reader): Ros1Pal_video_recording_msgsStartRecordingResponse =
  result = initRos1Pal_video_recording_msgsStartRecordingResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_video_recording_msgsStartRecordingResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_video_recording_msgsStartRecordingResponse*(b: seq[byte]): Ros1Pal_video_recording_msgsStartRecordingResponse =
  var r = initReader(b,0)
  result = readRos1Pal_video_recording_msgsStartRecordingResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_video_recording_msgs/StopRecordingRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_video_recording_msgsStopRecordingRequest* = object
const Ros1Pal_video_recording_msgsStopRecordingRequestMaximumWireBytes* = 0
const Ros1Pal_video_recording_msgsStopRecordingRequestCodecIdentity* = "UWVMROS1_2fe53f84621ac67f592d86f028c2d5be67f4fee13663b82a9b128d50a8a1c4f5"
const Ros1Pal_video_recording_msgsStopRecordingRequestNativeType* = "pal_video_recording_msgs/StopRecordingRequest"
const Ros1Pal_video_recording_msgsStopRecordingRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_video_recording_msgsStopRecordingRequest*(): Ros1Pal_video_recording_msgsStopRecordingRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_video_recording_msgsStopRecordingRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_video_recording_msgsStopRecordingRequest*(r: var Reader): Ros1Pal_video_recording_msgsStopRecordingRequest =
  result = initRos1Pal_video_recording_msgsStopRecordingRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_video_recording_msgsStopRecordingRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_video_recording_msgsStopRecordingRequest*(b: seq[byte]): Ros1Pal_video_recording_msgsStopRecordingRequest =
  var r = initReader(b,0)
  result = readRos1Pal_video_recording_msgsStopRecordingRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_video_recording_msgs/StopRecordingResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_video_recording_msgsStopRecordingResponse* = object
const Ros1Pal_video_recording_msgsStopRecordingResponseMaximumWireBytes* = 0
const Ros1Pal_video_recording_msgsStopRecordingResponseCodecIdentity* = "UWVMROS1_0e7555737246a82dcf9203313b8bfc43c808fa1d8a405c4159bf3b837545b7c2"
const Ros1Pal_video_recording_msgsStopRecordingResponseNativeType* = "pal_video_recording_msgs/StopRecordingResponse"
const Ros1Pal_video_recording_msgsStopRecordingResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_video_recording_msgsStopRecordingResponse*(): Ros1Pal_video_recording_msgsStopRecordingResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_video_recording_msgsStopRecordingResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_video_recording_msgsStopRecordingResponse*(r: var Reader): Ros1Pal_video_recording_msgsStopRecordingResponse =
  result = initRos1Pal_video_recording_msgsStopRecordingResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_video_recording_msgsStopRecordingResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_video_recording_msgsStopRecordingResponse*(b: seq[byte]): Ros1Pal_video_recording_msgsStopRecordingResponse =
  var r = initReader(b,0)
  result = readRos1Pal_video_recording_msgsStopRecordingResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/DetectedObject.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsDetectedObject* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original position3D as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `position3D`*: Ros1Geometry_msgsPoint
const Ros1Pal_vision_msgsDetectedObjectMaximumWireBytes* = 168
const Ros1Pal_vision_msgsDetectedObjectCodecIdentity* = "UWVMROS1_49ddd55b2f5fc8053980d77760c563c563113d1dafc899b0b5d619f98ab7ad25"
const Ros1Pal_vision_msgsDetectedObjectNativeType* = "pal_vision_msgs/DetectedObject"
const Ros1Pal_vision_msgsDetectedObjectNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsDetectedObject*(): Ros1Pal_vision_msgsDetectedObject =
  result.`header` = initRos1Std_msgsHeader()
  result.`position3D` = initRos1Geometry_msgsPoint()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsDetectedObject; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`position3D`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsDetectedObject*(r: var Reader): Ros1Pal_vision_msgsDetectedObject =
  result = initRos1Pal_vision_msgsDetectedObject()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`position3D` = readRos1Geometry_msgsPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsDetectedObject): seq[byte] =
  var w = initWriter(168)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsDetectedObject*(b: seq[byte]): Ros1Pal_vision_msgsDetectedObject =
  var r = initReader(b,168)
  result = readRos1Pal_vision_msgsDetectedObject(r)
  finish(r)
## @brief Own every original field of ROS1 std_msgs/ColorRGBA.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_msgsColorRGBA* = object
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
const Ros1Std_msgsColorRGBAMaximumWireBytes* = 16
const Ros1Std_msgsColorRGBACodecIdentity* = "UWVMROS1_2c956a9dd28dc999fc04f9704e68021ae940136f6c54d151975792a9344da90d"
const Ros1Std_msgsColorRGBANativeType* = "std_msgs/ColorRGBA"
const Ros1Std_msgsColorRGBANativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_msgsColorRGBA*(): Ros1Std_msgsColorRGBA =
  result.`r` = 0
  result.`g` = 0
  result.`b` = 0
  result.`a` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_msgsColorRGBA; w: var Writer) =
  putFloat32(w,value.`r`)
  putFloat32(w,value.`g`)
  putFloat32(w,value.`b`)
  putFloat32(w,value.`a`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_msgsColorRGBA*(r: var Reader): Ros1Std_msgsColorRGBA =
  result = initRos1Std_msgsColorRGBA()
  result.`r` = getFloat32(r)
  result.`g` = getFloat32(r)
  result.`b` = getFloat32(r)
  result.`a` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_msgsColorRGBA): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_msgsColorRGBA*(b: seq[byte]): Ros1Std_msgsColorRGBA =
  var r = initReader(b,16)
  result = readRos1Std_msgsColorRGBA(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/Rectangle.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsRectangle* = object
  ## @brief Preserve original x as int64.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `x`*: int64
  ## @brief Preserve original y as int64.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `y`*: int64
  ## @brief Preserve original width as int64.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `width`*: int64
  ## @brief Preserve original height as int64.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `height`*: int64
const Ros1Pal_vision_msgsRectangleMaximumWireBytes* = 32
const Ros1Pal_vision_msgsRectangleCodecIdentity* = "UWVMROS1_fa96c9ba0ef62b6f620e1200ffde47ce33ae8d41e444c39ae65e6aa3b27954c4"
const Ros1Pal_vision_msgsRectangleNativeType* = "pal_vision_msgs/Rectangle"
const Ros1Pal_vision_msgsRectangleNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsRectangle*(): Ros1Pal_vision_msgsRectangle =
  result.`x` = 0
  result.`y` = 0
  result.`width` = 0
  result.`height` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsRectangle; w: var Writer) =
  putInteger(w,value.`x`)
  putInteger(w,value.`y`)
  putInteger(w,value.`width`)
  putInteger(w,value.`height`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsRectangle*(r: var Reader): Ros1Pal_vision_msgsRectangle =
  result = initRos1Pal_vision_msgsRectangle()
  result.`x` = getInteger(r,int64)
  result.`y` = getInteger(r,int64)
  result.`width` = getInteger(r,int64)
  result.`height` = getInteger(r,int64)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsRectangle): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsRectangle*(b: seq[byte]): Ros1Pal_vision_msgsRectangle =
  var r = initReader(b,32)
  result = readRos1Pal_vision_msgsRectangle(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/DetectedPerson.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsDetectedPerson* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original objectId as int64.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `objectId`*: int64
  ## @brief Preserve original boxColour as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `boxColour`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original confidence as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `confidence`*: float64
  ## @brief Preserve original position3D as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `position3D`*: Ros1Geometry_msgsPoint
  ## @brief Preserve original box as pal_vision_msgs/Rectangle.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `box`*: Ros1Pal_vision_msgsRectangle
  ## @brief Preserve original faceBox as pal_vision_msgs/Rectangle.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `faceBox`*: Ros1Pal_vision_msgsRectangle
const Ros1Pal_vision_msgsDetectedPersonMaximumWireBytes* = 264
const Ros1Pal_vision_msgsDetectedPersonCodecIdentity* = "UWVMROS1_ce1f7b8789e0928dc98ba3819be067f6bb077a9144f475f5c50a849be781c82e"
const Ros1Pal_vision_msgsDetectedPersonNativeType* = "pal_vision_msgs/DetectedPerson"
const Ros1Pal_vision_msgsDetectedPersonNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsDetectedPerson*(): Ros1Pal_vision_msgsDetectedPerson =
  result.`header` = initRos1Std_msgsHeader()
  result.`objectId` = 0
  result.`boxColour` = initRos1Std_msgsColorRGBA()
  result.`confidence` = 0
  result.`position3D` = initRos1Geometry_msgsPoint()
  result.`box` = initRos1Pal_vision_msgsRectangle()
  result.`faceBox` = initRos1Pal_vision_msgsRectangle()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsDetectedPerson; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`objectId`)
  writeFields(value.`boxColour`,w)
  putFloat64(w,value.`confidence`)
  writeFields(value.`position3D`,w)
  writeFields(value.`box`,w)
  writeFields(value.`faceBox`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsDetectedPerson*(r: var Reader): Ros1Pal_vision_msgsDetectedPerson =
  result = initRos1Pal_vision_msgsDetectedPerson()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`objectId` = getInteger(r,int64)
  result.`boxColour` = readRos1Std_msgsColorRGBA(r)
  result.`confidence` = getFloat64(r)
  result.`position3D` = readRos1Geometry_msgsPoint(r)
  result.`box` = readRos1Pal_vision_msgsRectangle(r)
  result.`faceBox` = readRos1Pal_vision_msgsRectangle(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsDetectedPerson): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsDetectedPerson*(b: seq[byte]): Ros1Pal_vision_msgsDetectedPerson =
  var r = initReader(b,264)
  result = readRos1Pal_vision_msgsDetectedPerson(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FaceDetection.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFaceDetection* = object
  ## @brief Preserve original position3D as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `position3D`*: Ros1Geometry_msgsPoint
  ## @brief Preserve original imageBoundingBox as pal_vision_msgs/Rectangle.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `imageBoundingBox`*: Ros1Pal_vision_msgsRectangle
  ## @brief Preserve original hog as float32.
  ## @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `hog`*: seq[float32]
const Ros1Pal_vision_msgsFaceDetectionMaximumWireBytes* = 124
const Ros1Pal_vision_msgsFaceDetectionCodecIdentity* = "UWVMROS1_57943eb9a19b9558fc5e7390bfbb3f7ab271cfb5ab7892bc1442a43c8d3217d5"
const Ros1Pal_vision_msgsFaceDetectionNativeType* = "pal_vision_msgs/FaceDetection"
const Ros1Pal_vision_msgsFaceDetectionNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFaceDetection*(): Ros1Pal_vision_msgsFaceDetection =
  result.`position3D` = initRos1Geometry_msgsPoint()
  result.`imageBoundingBox` = initRos1Pal_vision_msgsRectangle()
  result.`hog` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFaceDetection; w: var Writer) =
  writeFields(value.`position3D`,w)
  writeFields(value.`imageBoundingBox`,w)
  if value.`hog`.len > 16: fail(22)
  putInteger(w,uint32(value.`hog`.len))
  for e in value.`hog`:
    putFloat32(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFaceDetection*(r: var Reader): Ros1Pal_vision_msgsFaceDetection =
  result = initRos1Pal_vision_msgsFaceDetection()
  result.`position3D` = readRos1Geometry_msgsPoint(r)
  result.`imageBoundingBox` = readRos1Pal_vision_msgsRectangle(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`hog` = newSeq[float32](count2)
  for i in 0..<count2:
    result.`hog`[i] = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFaceDetection): seq[byte] =
  var w = initWriter(124)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFaceDetection*(b: seq[byte]): Ros1Pal_vision_msgsFaceDetection =
  var r = initReader(b,124)
  result = readRos1Pal_vision_msgsFaceDetection(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FaceDetections.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFaceDetections* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original imgID as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `imgID`*: uint32
  ## @brief Preserve original faces as pal_vision_msgs/FaceDetection.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `faces`*: seq[Ros1Pal_vision_msgsFaceDetection]
const Ros1Pal_vision_msgsFaceDetectionsMaximumWireBytes* = 648
const Ros1Pal_vision_msgsFaceDetectionsCodecIdentity* = "UWVMROS1_bc135c2c93419e99b87edabfe3a72e744e574ec703e77919736ae90f069417a0"
const Ros1Pal_vision_msgsFaceDetectionsNativeType* = "pal_vision_msgs/FaceDetections"
const Ros1Pal_vision_msgsFaceDetectionsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFaceDetections*(): Ros1Pal_vision_msgsFaceDetections =
  result.`header` = initRos1Std_msgsHeader()
  result.`imgID` = 0
  result.`faces` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFaceDetections; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`imgID`)
  if value.`faces`.len > 4: fail(22)
  putInteger(w,uint32(value.`faces`.len))
  for e in value.`faces`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFaceDetections*(r: var Reader): Ros1Pal_vision_msgsFaceDetections =
  result = initRos1Pal_vision_msgsFaceDetections()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`imgID` = getInteger(r,uint32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`faces` = newSeq[Ros1Pal_vision_msgsFaceDetection](count2)
  for i in 0..<count2:
    result.`faces`[i] = readRos1Pal_vision_msgsFaceDetection(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFaceDetections): seq[byte] =
  var w = initWriter(648)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFaceDetections*(b: seq[byte]): Ros1Pal_vision_msgsFaceDetections =
  var r = initReader(b,648)
  result = readRos1Pal_vision_msgsFaceDetections(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FaceRecognitionGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFaceRecognitionGoal* = object
  ## @brief Preserve original order_id as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `order_id`*: uint8
  ## @brief Preserve original order_argument as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `order_argument`*: string
const Ros1Pal_vision_msgsFaceRecognitionGoalMaximumWireBytes* = 133
const Ros1Pal_vision_msgsFaceRecognitionGoalCodecIdentity* = "UWVMROS1_bcf0281ebf646f90ea48d50971aedcd174eec9bdf8cb45ca66c6e4aa672cda4b"
const Ros1Pal_vision_msgsFaceRecognitionGoalNativeType* = "pal_vision_msgs/FaceRecognitionGoal"
const Ros1Pal_vision_msgsFaceRecognitionGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFaceRecognitionGoal*(): Ros1Pal_vision_msgsFaceRecognitionGoal =
  result.`order_id` = 0
  result.`order_argument` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFaceRecognitionGoal; w: var Writer) =
  putInteger(w,value.`order_id`)
  putString(w,value.`order_argument`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFaceRecognitionGoal*(r: var Reader): Ros1Pal_vision_msgsFaceRecognitionGoal =
  result = initRos1Pal_vision_msgsFaceRecognitionGoal()
  result.`order_id` = getInteger(r,uint8)
  result.`order_argument` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFaceRecognitionGoal): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFaceRecognitionGoal*(b: seq[byte]): Ros1Pal_vision_msgsFaceRecognitionGoal =
  var r = initReader(b,133)
  result = readRos1Pal_vision_msgsFaceRecognitionGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FaceRecognitionResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFaceRecognitionResult* = object
  ## @brief Preserve original order_id as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `order_id`*: uint8
  ## @brief Preserve original names as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `names`*: seq[string]
  ## @brief Preserve original confidence as float32.
  ## @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `confidence`*: seq[float32]
const Ros1Pal_vision_msgsFaceRecognitionResultMaximumWireBytes* = 2185
const Ros1Pal_vision_msgsFaceRecognitionResultCodecIdentity* = "UWVMROS1_47287112c67933fc592f58a910627ff0ddc35f2cf8f38437399ef1ed94e4d36e"
const Ros1Pal_vision_msgsFaceRecognitionResultNativeType* = "pal_vision_msgs/FaceRecognitionResult"
const Ros1Pal_vision_msgsFaceRecognitionResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFaceRecognitionResult*(): Ros1Pal_vision_msgsFaceRecognitionResult =
  result.`order_id` = 0
  result.`names` = @[]
  result.`confidence` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFaceRecognitionResult; w: var Writer) =
  putInteger(w,value.`order_id`)
  if value.`names`.len > 16: fail(22)
  putInteger(w,uint32(value.`names`.len))
  for e in value.`names`:
    putString(w,e,128)
  if value.`confidence`.len > 16: fail(22)
  putInteger(w,uint32(value.`confidence`.len))
  for e in value.`confidence`:
    putFloat32(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFaceRecognitionResult*(r: var Reader): Ros1Pal_vision_msgsFaceRecognitionResult =
  result = initRos1Pal_vision_msgsFaceRecognitionResult()
  result.`order_id` = getInteger(r,uint8)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`names`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`confidence` = newSeq[float32](count2)
  for i in 0..<count2:
    result.`confidence`[i] = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFaceRecognitionResult): seq[byte] =
  var w = initWriter(2185)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFaceRecognitionResult*(b: seq[byte]): Ros1Pal_vision_msgsFaceRecognitionResult =
  var r = initReader(b,2185)
  result = readRos1Pal_vision_msgsFaceRecognitionResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FaceRecognitionFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFaceRecognitionFeedback* = object
  ## @brief Preserve original order_id as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `order_id`*: uint8
  ## @brief Preserve original names as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `names`*: seq[string]
  ## @brief Preserve original confidence as float32.
  ## @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `confidence`*: seq[float32]
const Ros1Pal_vision_msgsFaceRecognitionFeedbackMaximumWireBytes* = 2185
const Ros1Pal_vision_msgsFaceRecognitionFeedbackCodecIdentity* = "UWVMROS1_42cb3618f562e3083ca7069e0f41233a9584cd00b9a3d2cb791d5956735dbfd7"
const Ros1Pal_vision_msgsFaceRecognitionFeedbackNativeType* = "pal_vision_msgs/FaceRecognitionFeedback"
const Ros1Pal_vision_msgsFaceRecognitionFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFaceRecognitionFeedback*(): Ros1Pal_vision_msgsFaceRecognitionFeedback =
  result.`order_id` = 0
  result.`names` = @[]
  result.`confidence` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFaceRecognitionFeedback; w: var Writer) =
  putInteger(w,value.`order_id`)
  if value.`names`.len > 16: fail(22)
  putInteger(w,uint32(value.`names`.len))
  for e in value.`names`:
    putString(w,e,128)
  if value.`confidence`.len > 16: fail(22)
  putInteger(w,uint32(value.`confidence`.len))
  for e in value.`confidence`:
    putFloat32(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFaceRecognitionFeedback*(r: var Reader): Ros1Pal_vision_msgsFaceRecognitionFeedback =
  result = initRos1Pal_vision_msgsFaceRecognitionFeedback()
  result.`order_id` = getInteger(r,uint8)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`names`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`confidence` = newSeq[float32](count2)
  for i in 0..<count2:
    result.`confidence`[i] = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFaceRecognitionFeedback): seq[byte] =
  var w = initWriter(2185)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFaceRecognitionFeedback*(b: seq[byte]): Ros1Pal_vision_msgsFaceRecognitionFeedback =
  var r = initReader(b,2185)
  result = readRos1Pal_vision_msgsFaceRecognitionFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FaceTrackingStartRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFaceTrackingStartRequest* = object
const Ros1Pal_vision_msgsFaceTrackingStartRequestMaximumWireBytes* = 0
const Ros1Pal_vision_msgsFaceTrackingStartRequestCodecIdentity* = "UWVMROS1_e41bf1927b5c764ff89ca9d9049719e35c96c1689ba4bb930d1e90480a13647c"
const Ros1Pal_vision_msgsFaceTrackingStartRequestNativeType* = "pal_vision_msgs/FaceTrackingStartRequest"
const Ros1Pal_vision_msgsFaceTrackingStartRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFaceTrackingStartRequest*(): Ros1Pal_vision_msgsFaceTrackingStartRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFaceTrackingStartRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFaceTrackingStartRequest*(r: var Reader): Ros1Pal_vision_msgsFaceTrackingStartRequest =
  result = initRos1Pal_vision_msgsFaceTrackingStartRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFaceTrackingStartRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFaceTrackingStartRequest*(b: seq[byte]): Ros1Pal_vision_msgsFaceTrackingStartRequest =
  var r = initReader(b,0)
  result = readRos1Pal_vision_msgsFaceTrackingStartRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FaceTrackingStartResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFaceTrackingStartResponse* = object
const Ros1Pal_vision_msgsFaceTrackingStartResponseMaximumWireBytes* = 0
const Ros1Pal_vision_msgsFaceTrackingStartResponseCodecIdentity* = "UWVMROS1_51e6335ecfe5827f0bae5e5610b5dec443373b1233942b40387958b1b47ba4bf"
const Ros1Pal_vision_msgsFaceTrackingStartResponseNativeType* = "pal_vision_msgs/FaceTrackingStartResponse"
const Ros1Pal_vision_msgsFaceTrackingStartResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFaceTrackingStartResponse*(): Ros1Pal_vision_msgsFaceTrackingStartResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFaceTrackingStartResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFaceTrackingStartResponse*(r: var Reader): Ros1Pal_vision_msgsFaceTrackingStartResponse =
  result = initRos1Pal_vision_msgsFaceTrackingStartResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFaceTrackingStartResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFaceTrackingStartResponse*(b: seq[byte]): Ros1Pal_vision_msgsFaceTrackingStartResponse =
  var r = initReader(b,0)
  result = readRos1Pal_vision_msgsFaceTrackingStartResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FaceTrackingStopRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFaceTrackingStopRequest* = object
const Ros1Pal_vision_msgsFaceTrackingStopRequestMaximumWireBytes* = 0
const Ros1Pal_vision_msgsFaceTrackingStopRequestCodecIdentity* = "UWVMROS1_850dd9a2cdf7e12197ac7efad3facaf4609c7be7c63d8157a6b92bc1e56926e5"
const Ros1Pal_vision_msgsFaceTrackingStopRequestNativeType* = "pal_vision_msgs/FaceTrackingStopRequest"
const Ros1Pal_vision_msgsFaceTrackingStopRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFaceTrackingStopRequest*(): Ros1Pal_vision_msgsFaceTrackingStopRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFaceTrackingStopRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFaceTrackingStopRequest*(r: var Reader): Ros1Pal_vision_msgsFaceTrackingStopRequest =
  result = initRos1Pal_vision_msgsFaceTrackingStopRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFaceTrackingStopRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFaceTrackingStopRequest*(b: seq[byte]): Ros1Pal_vision_msgsFaceTrackingStopRequest =
  var r = initReader(b,0)
  result = readRos1Pal_vision_msgsFaceTrackingStopRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FaceTrackingStopResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFaceTrackingStopResponse* = object
const Ros1Pal_vision_msgsFaceTrackingStopResponseMaximumWireBytes* = 0
const Ros1Pal_vision_msgsFaceTrackingStopResponseCodecIdentity* = "UWVMROS1_158adae14ad8a978f5c934c5aee9489306e9ddd31d9afa15ff1a9f9af8872b5f"
const Ros1Pal_vision_msgsFaceTrackingStopResponseNativeType* = "pal_vision_msgs/FaceTrackingStopResponse"
const Ros1Pal_vision_msgsFaceTrackingStopResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFaceTrackingStopResponse*(): Ros1Pal_vision_msgsFaceTrackingStopResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFaceTrackingStopResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFaceTrackingStopResponse*(r: var Reader): Ros1Pal_vision_msgsFaceTrackingStopResponse =
  result = initRos1Pal_vision_msgsFaceTrackingStopResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFaceTrackingStopResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFaceTrackingStopResponse*(b: seq[byte]): Ros1Pal_vision_msgsFaceTrackingStopResponse =
  var r = initReader(b,0)
  result = readRos1Pal_vision_msgsFaceTrackingStopResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FollowMeResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFollowMeResponse* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original targetDetected as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `targetDetected`*: bool
const Ros1Pal_vision_msgsFollowMeResponseMaximumWireBytes* = 145
const Ros1Pal_vision_msgsFollowMeResponseCodecIdentity* = "UWVMROS1_509edcb3854474332fd562cc897fff9266b789772700de1b4a447670fd0bb24f"
const Ros1Pal_vision_msgsFollowMeResponseNativeType* = "pal_vision_msgs/FollowMeResponse"
const Ros1Pal_vision_msgsFollowMeResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFollowMeResponse*(): Ros1Pal_vision_msgsFollowMeResponse =
  result.`header` = initRos1Std_msgsHeader()
  result.`targetDetected` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFollowMeResponse; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`targetDetected`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFollowMeResponse*(r: var Reader): Ros1Pal_vision_msgsFollowMeResponse =
  result = initRos1Pal_vision_msgsFollowMeResponse()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`targetDetected` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFollowMeResponse): seq[byte] =
  var w = initWriter(145)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFollowMeResponse*(b: seq[byte]): Ros1Pal_vision_msgsFollowMeResponse =
  var r = initReader(b,145)
  result = readRos1Pal_vision_msgsFollowMeResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FollowMeStartRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFollowMeStartRequest* = object
  ## @brief Preserve original maxSecondsTargetLost as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `maxSecondsTargetLost`*: float32
const Ros1Pal_vision_msgsFollowMeStartRequestMaximumWireBytes* = 4
const Ros1Pal_vision_msgsFollowMeStartRequestCodecIdentity* = "UWVMROS1_9ad00d43667a3ac5324f5999d68f04b8c176c308d94c2ed4da9d357697b0faba"
const Ros1Pal_vision_msgsFollowMeStartRequestNativeType* = "pal_vision_msgs/FollowMeStartRequest"
const Ros1Pal_vision_msgsFollowMeStartRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFollowMeStartRequest*(): Ros1Pal_vision_msgsFollowMeStartRequest =
  result.`maxSecondsTargetLost` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFollowMeStartRequest; w: var Writer) =
  putFloat32(w,value.`maxSecondsTargetLost`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFollowMeStartRequest*(r: var Reader): Ros1Pal_vision_msgsFollowMeStartRequest =
  result = initRos1Pal_vision_msgsFollowMeStartRequest()
  result.`maxSecondsTargetLost` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFollowMeStartRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFollowMeStartRequest*(b: seq[byte]): Ros1Pal_vision_msgsFollowMeStartRequest =
  var r = initReader(b,4)
  result = readRos1Pal_vision_msgsFollowMeStartRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FollowMeStartResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFollowMeStartResponse* = object
const Ros1Pal_vision_msgsFollowMeStartResponseMaximumWireBytes* = 0
const Ros1Pal_vision_msgsFollowMeStartResponseCodecIdentity* = "UWVMROS1_2d61bb56a1595cfb26c8607e75c06b6ad712ee04f23f8bb3ec2055a311d3376a"
const Ros1Pal_vision_msgsFollowMeStartResponseNativeType* = "pal_vision_msgs/FollowMeStartResponse"
const Ros1Pal_vision_msgsFollowMeStartResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFollowMeStartResponse*(): Ros1Pal_vision_msgsFollowMeStartResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFollowMeStartResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFollowMeStartResponse*(r: var Reader): Ros1Pal_vision_msgsFollowMeStartResponse =
  result = initRos1Pal_vision_msgsFollowMeStartResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFollowMeStartResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFollowMeStartResponse*(b: seq[byte]): Ros1Pal_vision_msgsFollowMeStartResponse =
  var r = initReader(b,0)
  result = readRos1Pal_vision_msgsFollowMeStartResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FollowMeStopRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFollowMeStopRequest* = object
const Ros1Pal_vision_msgsFollowMeStopRequestMaximumWireBytes* = 0
const Ros1Pal_vision_msgsFollowMeStopRequestCodecIdentity* = "UWVMROS1_6027cba04b80218bf304f2a426f716bba87534e477b5dda411c921ac27e9a8b2"
const Ros1Pal_vision_msgsFollowMeStopRequestNativeType* = "pal_vision_msgs/FollowMeStopRequest"
const Ros1Pal_vision_msgsFollowMeStopRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFollowMeStopRequest*(): Ros1Pal_vision_msgsFollowMeStopRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFollowMeStopRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFollowMeStopRequest*(r: var Reader): Ros1Pal_vision_msgsFollowMeStopRequest =
  result = initRos1Pal_vision_msgsFollowMeStopRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFollowMeStopRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFollowMeStopRequest*(b: seq[byte]): Ros1Pal_vision_msgsFollowMeStopRequest =
  var r = initReader(b,0)
  result = readRos1Pal_vision_msgsFollowMeStopRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/FollowMeStopResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsFollowMeStopResponse* = object
const Ros1Pal_vision_msgsFollowMeStopResponseMaximumWireBytes* = 0
const Ros1Pal_vision_msgsFollowMeStopResponseCodecIdentity* = "UWVMROS1_a2b3b521174fc092b8f04cdc09ff4a43113b71b9daa4977e7a233fc8a5c02cdb"
const Ros1Pal_vision_msgsFollowMeStopResponseNativeType* = "pal_vision_msgs/FollowMeStopResponse"
const Ros1Pal_vision_msgsFollowMeStopResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsFollowMeStopResponse*(): Ros1Pal_vision_msgsFollowMeStopResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsFollowMeStopResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsFollowMeStopResponse*(r: var Reader): Ros1Pal_vision_msgsFollowMeStopResponse =
  result = initRos1Pal_vision_msgsFollowMeStopResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsFollowMeStopResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsFollowMeStopResponse*(b: seq[byte]): Ros1Pal_vision_msgsFollowMeStopResponse =
  var r = initReader(b,0)
  result = readRos1Pal_vision_msgsFollowMeStopResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/Gesture.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsGesture* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original gestureId as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `gestureId`*: string
  ## @brief Preserve original position3D as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `position3D`*: Ros1Geometry_msgsPoint
const Ros1Pal_vision_msgsGestureMaximumWireBytes* = 300
const Ros1Pal_vision_msgsGestureCodecIdentity* = "UWVMROS1_e947cfbffe33a44d3590ff6513d4486c7411747df12fed9c178662e5beb2e4d1"
const Ros1Pal_vision_msgsGestureNativeType* = "pal_vision_msgs/Gesture"
const Ros1Pal_vision_msgsGestureNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsGesture*(): Ros1Pal_vision_msgsGesture =
  result.`header` = initRos1Std_msgsHeader()
  result.`gestureId` = ""
  result.`position3D` = initRos1Geometry_msgsPoint()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsGesture; w: var Writer) =
  writeFields(value.`header`,w)
  putString(w,value.`gestureId`,128)
  writeFields(value.`position3D`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsGesture*(r: var Reader): Ros1Pal_vision_msgsGesture =
  result = initRos1Pal_vision_msgsGesture()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`gestureId` = getString(r,128)
  result.`position3D` = readRos1Geometry_msgsPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsGesture): seq[byte] =
  var w = initWriter(300)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsGesture*(b: seq[byte]): Ros1Pal_vision_msgsGesture =
  var r = initReader(b,300)
  result = readRos1Pal_vision_msgsGesture(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/HeadPanTilt.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsHeadPanTilt* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original pan as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `pan`*: float32
  ## @brief Preserve original tilt as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `tilt`*: float32
const Ros1Pal_vision_msgsHeadPanTiltMaximumWireBytes* = 152
const Ros1Pal_vision_msgsHeadPanTiltCodecIdentity* = "UWVMROS1_69c6664a98a42741b82d5c147ccfabdb7bb7138cae590c77a2b63103cdf899cc"
const Ros1Pal_vision_msgsHeadPanTiltNativeType* = "pal_vision_msgs/HeadPanTilt"
const Ros1Pal_vision_msgsHeadPanTiltNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsHeadPanTilt*(): Ros1Pal_vision_msgsHeadPanTilt =
  result.`header` = initRos1Std_msgsHeader()
  result.`pan` = 0
  result.`tilt` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsHeadPanTilt; w: var Writer) =
  writeFields(value.`header`,w)
  putFloat32(w,value.`pan`)
  putFloat32(w,value.`tilt`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsHeadPanTilt*(r: var Reader): Ros1Pal_vision_msgsHeadPanTilt =
  result = initRos1Pal_vision_msgsHeadPanTilt()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`pan` = getFloat32(r)
  result.`tilt` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsHeadPanTilt): seq[byte] =
  var w = initWriter(152)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsHeadPanTilt*(b: seq[byte]): Ros1Pal_vision_msgsHeadPanTilt =
  var r = initReader(b,152)
  result = readRos1Pal_vision_msgsHeadPanTilt(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/HogDetection.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsHogDetection* = object
  ## @brief Preserve original imageBoundingBox as pal_vision_msgs/Rectangle.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `imageBoundingBox`*: Ros1Pal_vision_msgsRectangle
  ## @brief Preserve original direction as geometry_msgs/Vector3.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `direction`*: Ros1Geometry_msgsVector3
  ## @brief Preserve original hog as float32.
  ## @details At most 16 logical elements. Finite IEEE float32 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `hog`*: seq[float32]
  ## @brief Preserve original principalEigenVectorRGB as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `principalEigenVectorRGB`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original rgbClusterCenters as std_msgs/ColorRGBA.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `rgbClusterCenters`*: seq[Ros1Std_msgsColorRGBA]
  ## @brief Preserve original rgbDescriptor1 as uint32.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `rgbDescriptor1`*: seq[uint32]
  ## @brief Preserve original rgbDescriptor2 as uint32.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `rgbDescriptor2`*: seq[uint32]
const Ros1Pal_vision_msgsHogDetectionMaximumWireBytes* = 344
const Ros1Pal_vision_msgsHogDetectionCodecIdentity* = "UWVMROS1_4d745cf6bb2b9fce9d25b0c7b15be14ba7aec15d19a6677f7d8f4dfc40c3dcf4"
const Ros1Pal_vision_msgsHogDetectionNativeType* = "pal_vision_msgs/HogDetection"
const Ros1Pal_vision_msgsHogDetectionNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsHogDetection*(): Ros1Pal_vision_msgsHogDetection =
  result.`imageBoundingBox` = initRos1Pal_vision_msgsRectangle()
  result.`direction` = initRos1Geometry_msgsVector3()
  result.`hog` = @[]
  result.`principalEigenVectorRGB` = initRos1Std_msgsColorRGBA()
  result.`rgbClusterCenters` = @[]
  result.`rgbDescriptor1` = @[]
  result.`rgbDescriptor2` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsHogDetection; w: var Writer) =
  writeFields(value.`imageBoundingBox`,w)
  writeFields(value.`direction`,w)
  if value.`hog`.len > 16: fail(22)
  putInteger(w,uint32(value.`hog`.len))
  for e in value.`hog`:
    putFloat32(w,e)
  writeFields(value.`principalEigenVectorRGB`,w)
  if value.`rgbClusterCenters`.len > 4: fail(22)
  putInteger(w,uint32(value.`rgbClusterCenters`.len))
  for e in value.`rgbClusterCenters`:
    writeFields(e,w)
  if value.`rgbDescriptor1`.len > 16: fail(22)
  putInteger(w,uint32(value.`rgbDescriptor1`.len))
  for e in value.`rgbDescriptor1`:
    putInteger(w,e)
  if value.`rgbDescriptor2`.len > 16: fail(22)
  putInteger(w,uint32(value.`rgbDescriptor2`.len))
  for e in value.`rgbDescriptor2`:
    putInteger(w,e)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsHogDetection*(r: var Reader): Ros1Pal_vision_msgsHogDetection =
  result = initRos1Pal_vision_msgsHogDetection()
  result.`imageBoundingBox` = readRos1Pal_vision_msgsRectangle(r)
  result.`direction` = readRos1Geometry_msgsVector3(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`hog` = newSeq[float32](count2)
  for i in 0..<count2:
    result.`hog`[i] = getFloat32(r)
  result.`principalEigenVectorRGB` = readRos1Std_msgsColorRGBA(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 4: fail(22)
  let count4 = int(rawcount4)
  result.`rgbClusterCenters` = newSeq[Ros1Std_msgsColorRGBA](count4)
  for i in 0..<count4:
    result.`rgbClusterCenters`[i] = readRos1Std_msgsColorRGBA(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 16: fail(22)
  let count5 = int(rawcount5)
  result.`rgbDescriptor1` = newSeq[uint32](count5)
  for i in 0..<count5:
    result.`rgbDescriptor1`[i] = getInteger(r,uint32)
  let rawcount6 = getInteger(r,uint32)
  if rawcount6 > 16: fail(22)
  let count6 = int(rawcount6)
  result.`rgbDescriptor2` = newSeq[uint32](count6)
  for i in 0..<count6:
    result.`rgbDescriptor2`[i] = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsHogDetection): seq[byte] =
  var w = initWriter(344)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsHogDetection*(b: seq[byte]): Ros1Pal_vision_msgsHogDetection =
  var r = initReader(b,344)
  result = readRos1Pal_vision_msgsHogDetection(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/HogDetections.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsHogDetections* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original imgID as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `imgID`*: uint32
  ## @brief Preserve original persons as pal_vision_msgs/HogDetection.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `persons`*: seq[Ros1Pal_vision_msgsHogDetection]
const Ros1Pal_vision_msgsHogDetectionsMaximumWireBytes* = 1528
const Ros1Pal_vision_msgsHogDetectionsCodecIdentity* = "UWVMROS1_8ea9e8cc6d81de0b518f3dd1fd3fedca765711f965644e2a0fa88b8d334cbace"
const Ros1Pal_vision_msgsHogDetectionsNativeType* = "pal_vision_msgs/HogDetections"
const Ros1Pal_vision_msgsHogDetectionsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsHogDetections*(): Ros1Pal_vision_msgsHogDetections =
  result.`header` = initRos1Std_msgsHeader()
  result.`imgID` = 0
  result.`persons` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsHogDetections; w: var Writer) =
  writeFields(value.`header`,w)
  putInteger(w,value.`imgID`)
  if value.`persons`.len > 4: fail(22)
  putInteger(w,uint32(value.`persons`.len))
  for e in value.`persons`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsHogDetections*(r: var Reader): Ros1Pal_vision_msgsHogDetections =
  result = initRos1Pal_vision_msgsHogDetections()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`imgID` = getInteger(r,uint32)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`persons` = newSeq[Ros1Pal_vision_msgsHogDetection](count2)
  for i in 0..<count2:
    result.`persons`[i] = readRos1Pal_vision_msgsHogDetection(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsHogDetections): seq[byte] =
  var w = initWriter(1528)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsHogDetections*(b: seq[byte]): Ros1Pal_vision_msgsHogDetections =
  var r = initReader(b,1528)
  result = readRos1Pal_vision_msgsHogDetections(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/LegDetections.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsLegDetections* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original position3D as geometry_msgs/Point.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `position3D`*: seq[Ros1Geometry_msgsPoint]
const Ros1Pal_vision_msgsLegDetectionsMaximumWireBytes* = 244
const Ros1Pal_vision_msgsLegDetectionsCodecIdentity* = "UWVMROS1_e175101eca8d474e2569d4e4e125fd84e8c8a73c957472cf7e4b6aae9dfa0549"
const Ros1Pal_vision_msgsLegDetectionsNativeType* = "pal_vision_msgs/LegDetections"
const Ros1Pal_vision_msgsLegDetectionsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsLegDetections*(): Ros1Pal_vision_msgsLegDetections =
  result.`header` = initRos1Std_msgsHeader()
  result.`position3D` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsLegDetections; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`position3D`.len > 4: fail(22)
  putInteger(w,uint32(value.`position3D`.len))
  for e in value.`position3D`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsLegDetections*(r: var Reader): Ros1Pal_vision_msgsLegDetections =
  result = initRos1Pal_vision_msgsLegDetections()
  result.`header` = readRos1Std_msgsHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 4: fail(22)
  let count1 = int(rawcount1)
  result.`position3D` = newSeq[Ros1Geometry_msgsPoint](count1)
  for i in 0..<count1:
    result.`position3D`[i] = readRos1Geometry_msgsPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsLegDetections): seq[byte] =
  var w = initWriter(244)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsLegDetections*(b: seq[byte]): Ros1Pal_vision_msgsLegDetections =
  var r = initReader(b,244)
  result = readRos1Pal_vision_msgsLegDetections(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/LookToPixelRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsLookToPixelRequest* = object
  ## @brief Preserve original x as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `x`*: float32
  ## @brief Preserve original y as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `y`*: float32
const Ros1Pal_vision_msgsLookToPixelRequestMaximumWireBytes* = 8
const Ros1Pal_vision_msgsLookToPixelRequestCodecIdentity* = "UWVMROS1_ead4559133ef68c0248064d865cceaeb335f6104424a199ebc4452e6878383ff"
const Ros1Pal_vision_msgsLookToPixelRequestNativeType* = "pal_vision_msgs/LookToPixelRequest"
const Ros1Pal_vision_msgsLookToPixelRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsLookToPixelRequest*(): Ros1Pal_vision_msgsLookToPixelRequest =
  result.`x` = 0
  result.`y` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsLookToPixelRequest; w: var Writer) =
  putFloat32(w,value.`x`)
  putFloat32(w,value.`y`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsLookToPixelRequest*(r: var Reader): Ros1Pal_vision_msgsLookToPixelRequest =
  result = initRos1Pal_vision_msgsLookToPixelRequest()
  result.`x` = getFloat32(r)
  result.`y` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsLookToPixelRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsLookToPixelRequest*(b: seq[byte]): Ros1Pal_vision_msgsLookToPixelRequest =
  var r = initReader(b,8)
  result = readRos1Pal_vision_msgsLookToPixelRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_vision_msgs/LookToPixelResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_vision_msgsLookToPixelResponse* = object
const Ros1Pal_vision_msgsLookToPixelResponseMaximumWireBytes* = 0
const Ros1Pal_vision_msgsLookToPixelResponseCodecIdentity* = "UWVMROS1_137d83d2b779310ee91811bd5a17c4d232fb2114246da1520656876385562ae1"
const Ros1Pal_vision_msgsLookToPixelResponseNativeType* = "pal_vision_msgs/LookToPixelResponse"
const Ros1Pal_vision_msgsLookToPixelResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_vision_msgsLookToPixelResponse*(): Ros1Pal_vision_msgsLookToPixelResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_vision_msgsLookToPixelResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_vision_msgsLookToPixelResponse*(r: var Reader): Ros1Pal_vision_msgsLookToPixelResponse =
  result = initRos1Pal_vision_msgsLookToPixelResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_vision_msgsLookToPixelResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_vision_msgsLookToPixelResponse*(b: seq[byte]): Ros1Pal_vision_msgsLookToPixelResponse =
  var r = initReader(b,0)
  result = readRos1Pal_vision_msgsLookToPixelResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocAddPlaceGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal* = object
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalMaximumWireBytes* = 0
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalCodecIdentity* = "UWVMROS1_6d84634e1bebf082190a3992acd2379d94a375158775cf0a01c430779105049d"
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalNativeType* = "pal_visual_localization_msgs/VisualLocAddPlaceGoal"
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal*(): Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal*(r: var Reader): Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal =
  result = initRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal*(b: seq[byte]): Ros1Pal_visual_localization_msgsVisualLocAddPlaceGoal =
  var r = initReader(b,0)
  result = readRos1Pal_visual_localization_msgsVisualLocAddPlaceGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocAddPlaceResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult* = object
  ## @brief Preserve original res as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `res`*: bool
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultMaximumWireBytes* = 1
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultCodecIdentity* = "UWVMROS1_604eadb052736d8c3999fff8ab635886d87f779943632ce01e89742d591c265a"
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultNativeType* = "pal_visual_localization_msgs/VisualLocAddPlaceResult"
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_visual_localization_msgsVisualLocAddPlaceResult*(): Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult =
  result.`res` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult; w: var Writer) =
  putBool(w,value.`res`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_visual_localization_msgsVisualLocAddPlaceResult*(r: var Reader): Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult =
  result = initRos1Pal_visual_localization_msgsVisualLocAddPlaceResult()
  result.`res` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_visual_localization_msgsVisualLocAddPlaceResult*(b: seq[byte]): Ros1Pal_visual_localization_msgsVisualLocAddPlaceResult =
  var r = initReader(b,1)
  result = readRos1Pal_visual_localization_msgsVisualLocAddPlaceResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocAddPlaceFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback* = object
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackMaximumWireBytes* = 0
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackCodecIdentity* = "UWVMROS1_ceb1b2594d5bf763de97096f0bb683276be372393e779d3b3334b3adc7a6f3b6"
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackNativeType* = "pal_visual_localization_msgs/VisualLocAddPlaceFeedback"
const Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback*(): Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback*(r: var Reader): Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback =
  result = initRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback*(b: seq[byte]): Ros1Pal_visual_localization_msgsVisualLocAddPlaceFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_visual_localization_msgsVisualLocAddPlaceFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocRecognizeGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal* = object
const Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalMaximumWireBytes* = 0
const Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalCodecIdentity* = "UWVMROS1_b1aa9fe3f12a81861385e9421e153869ee3f2ba0949fe55c0ed0fe7170ae4c4a"
const Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalNativeType* = "pal_visual_localization_msgs/VisualLocRecognizeGoal"
const Ros1Pal_visual_localization_msgsVisualLocRecognizeGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_visual_localization_msgsVisualLocRecognizeGoal*(): Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_visual_localization_msgsVisualLocRecognizeGoal*(r: var Reader): Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal =
  result = initRos1Pal_visual_localization_msgsVisualLocRecognizeGoal()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_visual_localization_msgsVisualLocRecognizeGoal*(b: seq[byte]): Ros1Pal_visual_localization_msgsVisualLocRecognizeGoal =
  var r = initReader(b,0)
  result = readRos1Pal_visual_localization_msgsVisualLocRecognizeGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocRecognizeResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_visual_localization_msgsVisualLocRecognizeResult* = object
  ## @brief Preserve original success as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `success`*: bool
  ## @brief Preserve original confidence as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `confidence`*: float64
  ## @brief Preserve original estimatedPose as geometry_msgs/PoseWithCovarianceStamped.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `estimatedPose`*: Ros1Geometry_msgsPoseWithCovarianceStamped
const Ros1Pal_visual_localization_msgsVisualLocRecognizeResultMaximumWireBytes* = 497
const Ros1Pal_visual_localization_msgsVisualLocRecognizeResultCodecIdentity* = "UWVMROS1_e20e2e4ba374756256518e0e7075689be3c87660703926ab5d1cb33c8ff1c6da"
const Ros1Pal_visual_localization_msgsVisualLocRecognizeResultNativeType* = "pal_visual_localization_msgs/VisualLocRecognizeResult"
const Ros1Pal_visual_localization_msgsVisualLocRecognizeResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_visual_localization_msgsVisualLocRecognizeResult*(): Ros1Pal_visual_localization_msgsVisualLocRecognizeResult =
  result.`success` = false
  result.`confidence` = 0
  result.`estimatedPose` = initRos1Geometry_msgsPoseWithCovarianceStamped()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_visual_localization_msgsVisualLocRecognizeResult; w: var Writer) =
  putBool(w,value.`success`)
  putFloat64(w,value.`confidence`)
  writeFields(value.`estimatedPose`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_visual_localization_msgsVisualLocRecognizeResult*(r: var Reader): Ros1Pal_visual_localization_msgsVisualLocRecognizeResult =
  result = initRos1Pal_visual_localization_msgsVisualLocRecognizeResult()
  result.`success` = getBool(r)
  result.`confidence` = getFloat64(r)
  result.`estimatedPose` = readRos1Geometry_msgsPoseWithCovarianceStamped(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_visual_localization_msgsVisualLocRecognizeResult): seq[byte] =
  var w = initWriter(497)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_visual_localization_msgsVisualLocRecognizeResult*(b: seq[byte]): Ros1Pal_visual_localization_msgsVisualLocRecognizeResult =
  var r = initReader(b,497)
  result = readRos1Pal_visual_localization_msgsVisualLocRecognizeResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_visual_localization_msgs/VisualLocRecognizeFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback* = object
const Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackMaximumWireBytes* = 0
const Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackCodecIdentity* = "UWVMROS1_07206e6717d8ba2621e7a00f69d65a2e56102b64e84e0ef66e44e93a4468e65e"
const Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackNativeType* = "pal_visual_localization_msgs/VisualLocRecognizeFeedback"
const Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback*(): Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback*(r: var Reader): Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback =
  result = initRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback*(b: seq[byte]): Ros1Pal_visual_localization_msgsVisualLocRecognizeFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_visual_localization_msgsVisualLocRecognizeFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/ContactState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsContactState* = object
  ## @brief Preserve original type as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `type`*: uint8
const Ros1Pal_walking_msgsContactStateMaximumWireBytes* = 1
const Ros1Pal_walking_msgsContactStateCodecIdentity* = "UWVMROS1_632dc784a31db78e0b56fe3c2f324e19dcdcac6d6bdc72e0f9fab21e2a8ea3a8"
const Ros1Pal_walking_msgsContactStateNativeType* = "pal_walking_msgs/ContactState"
const Ros1Pal_walking_msgsContactStateNativeIdentity* = ""
const Ros1Pal_walking_msgsContactState_TYPE_DS*: uint8 = 0'u8
const Ros1Pal_walking_msgsContactState_TYPE_LSS*: uint8 = 1'u8
const Ros1Pal_walking_msgsContactState_TYPE_RSS*: uint8 = 2'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsContactState*(): Ros1Pal_walking_msgsContactState =
  result.`type` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsContactState; w: var Writer) =
  putInteger(w,value.`type`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsContactState*(r: var Reader): Ros1Pal_walking_msgsContactState =
  result = initRos1Pal_walking_msgsContactState()
  result.`type` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsContactState): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsContactState*(b: seq[byte]): Ros1Pal_walking_msgsContactState =
  var r = initReader(b,1)
  result = readRos1Pal_walking_msgsContactState(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/MoveHipFeetRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsMoveHipFeetRequest* = object
  ## @brief Preserve original hip_poses as geometry_msgs/PoseArray.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `hip_poses`*: Ros1Geometry_msgsPoseArray
  ## @brief Preserve original left_foot_poses as geometry_msgs/PoseArray.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `left_foot_poses`*: Ros1Geometry_msgsPoseArray
  ## @brief Preserve original right_foot_poses as geometry_msgs/PoseArray.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `right_foot_poses`*: Ros1Geometry_msgsPoseArray
  ## @brief Preserve original times_after_previous as duration.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `times_after_previous`*: seq[Ros1Duration]
const Ros1Pal_walking_msgsMoveHipFeetRequestMaximumWireBytes* = 1248
const Ros1Pal_walking_msgsMoveHipFeetRequestCodecIdentity* = "UWVMROS1_5fb083fec01e8eab76d0023802e8ec7590fc993ba7a68d1a2033c43065131c5c"
const Ros1Pal_walking_msgsMoveHipFeetRequestNativeType* = "pal_walking_msgs/MoveHipFeetRequest"
const Ros1Pal_walking_msgsMoveHipFeetRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsMoveHipFeetRequest*(): Ros1Pal_walking_msgsMoveHipFeetRequest =
  result.`hip_poses` = initRos1Geometry_msgsPoseArray()
  result.`left_foot_poses` = initRos1Geometry_msgsPoseArray()
  result.`right_foot_poses` = initRos1Geometry_msgsPoseArray()
  result.`times_after_previous` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsMoveHipFeetRequest; w: var Writer) =
  writeFields(value.`hip_poses`,w)
  writeFields(value.`left_foot_poses`,w)
  writeFields(value.`right_foot_poses`,w)
  if value.`times_after_previous`.len > 16: fail(22)
  putInteger(w,uint32(value.`times_after_previous`.len))
  for e in value.`times_after_previous`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsMoveHipFeetRequest*(r: var Reader): Ros1Pal_walking_msgsMoveHipFeetRequest =
  result = initRos1Pal_walking_msgsMoveHipFeetRequest()
  result.`hip_poses` = readRos1Geometry_msgsPoseArray(r)
  result.`left_foot_poses` = readRos1Geometry_msgsPoseArray(r)
  result.`right_foot_poses` = readRos1Geometry_msgsPoseArray(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 16: fail(22)
  let count3 = int(rawcount3)
  result.`times_after_previous` = newSeq[Ros1Duration](count3)
  for i in 0..<count3:
    result.`times_after_previous`[i] = readRos1Duration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsMoveHipFeetRequest): seq[byte] =
  var w = initWriter(1248)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsMoveHipFeetRequest*(b: seq[byte]): Ros1Pal_walking_msgsMoveHipFeetRequest =
  var r = initReader(b,1248)
  result = readRos1Pal_walking_msgsMoveHipFeetRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/MoveHipFeetResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsMoveHipFeetResponse* = object
const Ros1Pal_walking_msgsMoveHipFeetResponseMaximumWireBytes* = 0
const Ros1Pal_walking_msgsMoveHipFeetResponseCodecIdentity* = "UWVMROS1_d5adee26d6498a466a886f9869495d90adae91081287903faa9b90ac6ab2306e"
const Ros1Pal_walking_msgsMoveHipFeetResponseNativeType* = "pal_walking_msgs/MoveHipFeetResponse"
const Ros1Pal_walking_msgsMoveHipFeetResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsMoveHipFeetResponse*(): Ros1Pal_walking_msgsMoveHipFeetResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsMoveHipFeetResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsMoveHipFeetResponse*(r: var Reader): Ros1Pal_walking_msgsMoveHipFeetResponse =
  result = initRos1Pal_walking_msgsMoveHipFeetResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsMoveHipFeetResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsMoveHipFeetResponse*(b: seq[byte]): Ros1Pal_walking_msgsMoveHipFeetResponse =
  var r = initReader(b,0)
  result = readRos1Pal_walking_msgsMoveHipFeetResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/SMStatus.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsSMStatus* = object
  ## @brief Preserve original left_foot_pose as geometry_msgs/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `left_foot_pose`*: Ros1Geometry_msgsPose
  ## @brief Preserve original right_foot_pose as geometry_msgs/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `right_foot_pose`*: Ros1Geometry_msgsPose
  ## @brief Preserve original stance_foot_side as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `stance_foot_side`*: uint8
  ## @brief Preserve original future_swing_landing_pose as geometry_msgs/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `future_swing_landing_pose`*: Ros1Geometry_msgsPose
  ## @brief Preserve original future_swing_side as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `future_swing_side`*: uint8
const Ros1Pal_walking_msgsSMStatusMaximumWireBytes* = 170
const Ros1Pal_walking_msgsSMStatusCodecIdentity* = "UWVMROS1_490c0966b36899ce64a1271d9c1eaf9802b9285eb7835b0565a3e2bbf01a0c6e"
const Ros1Pal_walking_msgsSMStatusNativeType* = "pal_walking_msgs/SMStatus"
const Ros1Pal_walking_msgsSMStatusNativeIdentity* = ""
const Ros1Pal_walking_msgsSMStatus_right*: uint8 = 1'u8
const Ros1Pal_walking_msgsSMStatus_left*: uint8 = 0'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsSMStatus*(): Ros1Pal_walking_msgsSMStatus =
  result.`left_foot_pose` = initRos1Geometry_msgsPose()
  result.`right_foot_pose` = initRos1Geometry_msgsPose()
  result.`stance_foot_side` = 0
  result.`future_swing_landing_pose` = initRos1Geometry_msgsPose()
  result.`future_swing_side` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsSMStatus; w: var Writer) =
  writeFields(value.`left_foot_pose`,w)
  writeFields(value.`right_foot_pose`,w)
  putInteger(w,value.`stance_foot_side`)
  writeFields(value.`future_swing_landing_pose`,w)
  putInteger(w,value.`future_swing_side`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsSMStatus*(r: var Reader): Ros1Pal_walking_msgsSMStatus =
  result = initRos1Pal_walking_msgsSMStatus()
  result.`left_foot_pose` = readRos1Geometry_msgsPose(r)
  result.`right_foot_pose` = readRos1Geometry_msgsPose(r)
  result.`stance_foot_side` = getInteger(r,uint8)
  result.`future_swing_landing_pose` = readRos1Geometry_msgsPose(r)
  result.`future_swing_side` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsSMStatus): seq[byte] =
  var w = initWriter(170)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsSMStatus*(b: seq[byte]): Ros1Pal_walking_msgsSMStatus =
  var r = initReader(b,170)
  result = readRos1Pal_walking_msgsSMStatus(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/SitRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsSitRequest* = object
  ## @brief Preserve original down as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `down`*: bool
  ## @brief Preserve original weight_threshold as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `weight_threshold`*: float64
const Ros1Pal_walking_msgsSitRequestMaximumWireBytes* = 9
const Ros1Pal_walking_msgsSitRequestCodecIdentity* = "UWVMROS1_8dc49a028691c5be0752fad0ad7cf1d2d4cc3e093ff8fe53b0f0f5dcf66241da"
const Ros1Pal_walking_msgsSitRequestNativeType* = "pal_walking_msgs/SitRequest"
const Ros1Pal_walking_msgsSitRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsSitRequest*(): Ros1Pal_walking_msgsSitRequest =
  result.`down` = false
  result.`weight_threshold` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsSitRequest; w: var Writer) =
  putBool(w,value.`down`)
  putFloat64(w,value.`weight_threshold`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsSitRequest*(r: var Reader): Ros1Pal_walking_msgsSitRequest =
  result = initRos1Pal_walking_msgsSitRequest()
  result.`down` = getBool(r)
  result.`weight_threshold` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsSitRequest): seq[byte] =
  var w = initWriter(9)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsSitRequest*(b: seq[byte]): Ros1Pal_walking_msgsSitRequest =
  var r = initReader(b,9)
  result = readRos1Pal_walking_msgsSitRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/SitResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsSitResponse* = object
const Ros1Pal_walking_msgsSitResponseMaximumWireBytes* = 0
const Ros1Pal_walking_msgsSitResponseCodecIdentity* = "UWVMROS1_6af9975562de7fe4864f8409ec5c1210f5d144c872e0ce9b553a391a1790df35"
const Ros1Pal_walking_msgsSitResponseNativeType* = "pal_walking_msgs/SitResponse"
const Ros1Pal_walking_msgsSitResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsSitResponse*(): Ros1Pal_walking_msgsSitResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsSitResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsSitResponse*(r: var Reader): Ros1Pal_walking_msgsSitResponse =
  result = initRos1Pal_walking_msgsSitResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsSitResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsSitResponse*(b: seq[byte]): Ros1Pal_walking_msgsSitResponse =
  var r = initReader(b,0)
  result = readRos1Pal_walking_msgsSitResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/StepOverRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsStepOverRequest* = object
  ## @brief Preserve original step_length as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `step_length`*: float64
  ## @brief Preserve original step_time as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `step_time`*: float64
  ## @brief Preserve original step_height as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `step_height`*: float64
  ## @brief Preserve original z_lipm as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `z_lipm`*: float64
const Ros1Pal_walking_msgsStepOverRequestMaximumWireBytes* = 32
const Ros1Pal_walking_msgsStepOverRequestCodecIdentity* = "UWVMROS1_00736de4ce830d33f33d93ca8c703dfc555f0ecc2ac86d90002929f4cefaedde"
const Ros1Pal_walking_msgsStepOverRequestNativeType* = "pal_walking_msgs/StepOverRequest"
const Ros1Pal_walking_msgsStepOverRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsStepOverRequest*(): Ros1Pal_walking_msgsStepOverRequest =
  result.`step_length` = 0
  result.`step_time` = 0
  result.`step_height` = 0
  result.`z_lipm` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsStepOverRequest; w: var Writer) =
  putFloat64(w,value.`step_length`)
  putFloat64(w,value.`step_time`)
  putFloat64(w,value.`step_height`)
  putFloat64(w,value.`z_lipm`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsStepOverRequest*(r: var Reader): Ros1Pal_walking_msgsStepOverRequest =
  result = initRos1Pal_walking_msgsStepOverRequest()
  result.`step_length` = getFloat64(r)
  result.`step_time` = getFloat64(r)
  result.`step_height` = getFloat64(r)
  result.`z_lipm` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsStepOverRequest): seq[byte] =
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsStepOverRequest*(b: seq[byte]): Ros1Pal_walking_msgsStepOverRequest =
  var r = initReader(b,32)
  result = readRos1Pal_walking_msgsStepOverRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/StepOverResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsStepOverResponse* = object
  ## @brief Preserve original result as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `result`*: string
const Ros1Pal_walking_msgsStepOverResponseMaximumWireBytes* = 132
const Ros1Pal_walking_msgsStepOverResponseCodecIdentity* = "UWVMROS1_e7803ee0f8ffd0f2c1eb698670454e2eaae232d60f629e5f0b3b57f876dce944"
const Ros1Pal_walking_msgsStepOverResponseNativeType* = "pal_walking_msgs/StepOverResponse"
const Ros1Pal_walking_msgsStepOverResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsStepOverResponse*(): Ros1Pal_walking_msgsStepOverResponse =
  result.`result` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsStepOverResponse; w: var Writer) =
  putString(w,value.`result`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsStepOverResponse*(r: var Reader): Ros1Pal_walking_msgsStepOverResponse =
  result = initRos1Pal_walking_msgsStepOverResponse()
  result.`result` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsStepOverResponse): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsStepOverResponse*(b: seq[byte]): Ros1Pal_walking_msgsStepOverResponse =
  var r = initReader(b,132)
  result = readRos1Pal_walking_msgsStepOverResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/WalkStepsRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsWalkStepsRequest* = object
  ## @brief Preserve original nsteps as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `nsteps`*: int32
  ## @brief Preserve original step_length as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `step_length`*: float64
  ## @brief Preserve original step_time as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `step_time`*: float64
const Ros1Pal_walking_msgsWalkStepsRequestMaximumWireBytes* = 20
const Ros1Pal_walking_msgsWalkStepsRequestCodecIdentity* = "UWVMROS1_eab28f422b38937bef44f8c9ef8c5f08283d3fefd0f16865a91e641b489e446a"
const Ros1Pal_walking_msgsWalkStepsRequestNativeType* = "pal_walking_msgs/WalkStepsRequest"
const Ros1Pal_walking_msgsWalkStepsRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsWalkStepsRequest*(): Ros1Pal_walking_msgsWalkStepsRequest =
  result.`nsteps` = 0
  result.`step_length` = 0
  result.`step_time` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsWalkStepsRequest; w: var Writer) =
  putInteger(w,value.`nsteps`)
  putFloat64(w,value.`step_length`)
  putFloat64(w,value.`step_time`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsWalkStepsRequest*(r: var Reader): Ros1Pal_walking_msgsWalkStepsRequest =
  result = initRos1Pal_walking_msgsWalkStepsRequest()
  result.`nsteps` = getInteger(r,int32)
  result.`step_length` = getFloat64(r)
  result.`step_time` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsWalkStepsRequest): seq[byte] =
  var w = initWriter(20)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsWalkStepsRequest*(b: seq[byte]): Ros1Pal_walking_msgsWalkStepsRequest =
  var r = initReader(b,20)
  result = readRos1Pal_walking_msgsWalkStepsRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/WalkStepsResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsWalkStepsResponse* = object
const Ros1Pal_walking_msgsWalkStepsResponseMaximumWireBytes* = 0
const Ros1Pal_walking_msgsWalkStepsResponseCodecIdentity* = "UWVMROS1_69cf3d1ffea1bbf362863bbaf88af9177ab0324312b2549fb248d3fa21a9522f"
const Ros1Pal_walking_msgsWalkStepsResponseNativeType* = "pal_walking_msgs/WalkStepsResponse"
const Ros1Pal_walking_msgsWalkStepsResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsWalkStepsResponse*(): Ros1Pal_walking_msgsWalkStepsResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsWalkStepsResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsWalkStepsResponse*(r: var Reader): Ros1Pal_walking_msgsWalkStepsResponse =
  result = initRos1Pal_walking_msgsWalkStepsResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsWalkStepsResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsWalkStepsResponse*(b: seq[byte]): Ros1Pal_walking_msgsWalkStepsResponse =
  var r = initReader(b,0)
  result = readRos1Pal_walking_msgsWalkStepsResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/WalkingStatus.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsWalkingStatus* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original hip_reference_pose as geometry_msgs/Pose.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `hip_reference_pose`*: Ros1Geometry_msgsPose
  ## @brief Preserve original foot_reference_pose as geometry_msgs/Pose.
  ## @details Exactly 2 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `foot_reference_pose`*: array[2,Ros1Geometry_msgsPose]
  ## @brief Preserve original zmp_reference as geometry_msgs/Point.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `zmp_reference`*: Ros1Geometry_msgsPoint
const Ros1Pal_walking_msgsWalkingStatusMaximumWireBytes* = 336
const Ros1Pal_walking_msgsWalkingStatusCodecIdentity* = "UWVMROS1_8831e9c68eeb3e065e2986f7671b2925425e07b18a48228e977f984fb9c09e02"
const Ros1Pal_walking_msgsWalkingStatusNativeType* = "pal_walking_msgs/WalkingStatus"
const Ros1Pal_walking_msgsWalkingStatusNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsWalkingStatus*(): Ros1Pal_walking_msgsWalkingStatus =
  result.`header` = initRos1Std_msgsHeader()
  result.`hip_reference_pose` = initRos1Geometry_msgsPose()
  result.`foot_reference_pose` = [initRos1Geometry_msgsPose(),initRos1Geometry_msgsPose()]
  result.`zmp_reference` = initRos1Geometry_msgsPoint()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsWalkingStatus; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`hip_reference_pose`,w)
  for e in value.`foot_reference_pose`:
    writeFields(e,w)
  writeFields(value.`zmp_reference`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsWalkingStatus*(r: var Reader): Ros1Pal_walking_msgsWalkingStatus =
  result = initRos1Pal_walking_msgsWalkingStatus()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`hip_reference_pose` = readRos1Geometry_msgsPose(r)
  let count2 = 2
  for i in 0..<count2:
    result.`foot_reference_pose`[i] = readRos1Geometry_msgsPose(r)
  result.`zmp_reference` = readRos1Geometry_msgsPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsWalkingStatus): seq[byte] =
  var w = initWriter(336)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsWalkingStatus*(b: seq[byte]): Ros1Pal_walking_msgsWalkingStatus =
  var r = initReader(b,336)
  result = readRos1Pal_walking_msgsWalkingStatus(r)
  finish(r)
## @brief Own every original field of ROS1 std_msgs/Duration.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Std_msgsDuration* = object
  ## @brief Preserve original data as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `data`*: Ros1Duration
const Ros1Std_msgsDurationMaximumWireBytes* = 8
const Ros1Std_msgsDurationCodecIdentity* = "UWVMROS1_195444342590aabe87833226c1cce7cc900519e5b1fe13ff460406396e3ce175"
const Ros1Std_msgsDurationNativeType* = "std_msgs/Duration"
const Ros1Std_msgsDurationNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Std_msgsDuration*(): Ros1Std_msgsDuration =
  result.`data` = initRos1Duration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Std_msgsDuration; w: var Writer) =
  writeFields(value.`data`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Std_msgsDuration*(r: var Reader): Ros1Std_msgsDuration =
  result = initRos1Std_msgsDuration()
  result.`data` = readRos1Duration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Std_msgsDuration): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Std_msgsDuration*(b: seq[byte]): Ros1Std_msgsDuration =
  var r = initReader(b,8)
  result = readRos1Std_msgsDuration(r)
  finish(r)
## @brief Own every original field of ROS1 pal_walking_msgs/WalkingStep.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_walking_msgsWalkingStep* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original step_target as humanoid_nav_msgs/StepTarget.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `step_target`*: Ros1Humanoid_nav_msgsStepTarget
  ## @brief Preserve original step_duration as std_msgs/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `step_duration`*: Ros1Std_msgsDuration
  ## @brief Preserve original step_list_size as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `step_list_size`*: int32
const Ros1Pal_walking_msgsWalkingStepMaximumWireBytes* = 181
const Ros1Pal_walking_msgsWalkingStepCodecIdentity* = "UWVMROS1_b6bacf08a7ff7277b0c96730c5b2691540af208dd61f2662990253ba4d1925dd"
const Ros1Pal_walking_msgsWalkingStepNativeType* = "pal_walking_msgs/WalkingStep"
const Ros1Pal_walking_msgsWalkingStepNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_walking_msgsWalkingStep*(): Ros1Pal_walking_msgsWalkingStep =
  result.`header` = initRos1Std_msgsHeader()
  result.`step_target` = initRos1Humanoid_nav_msgsStepTarget()
  result.`step_duration` = initRos1Std_msgsDuration()
  result.`step_list_size` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_walking_msgsWalkingStep; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`step_target`,w)
  writeFields(value.`step_duration`,w)
  putInteger(w,value.`step_list_size`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_walking_msgsWalkingStep*(r: var Reader): Ros1Pal_walking_msgsWalkingStep =
  result = initRos1Pal_walking_msgsWalkingStep()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`step_target` = readRos1Humanoid_nav_msgsStepTarget(r)
  result.`step_duration` = readRos1Std_msgsDuration(r)
  result.`step_list_size` = getInteger(r,int32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_walking_msgsWalkingStep): seq[byte] =
  var w = initWriter(181)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_walking_msgsWalkingStep*(b: seq[byte]): Ros1Pal_walking_msgsWalkingStep =
  var r = initReader(b,181)
  result = readRos1Pal_walking_msgsWalkingStep(r)
  finish(r)
## @brief Own every original field of ROS1 pal_web_msgs/WebGoTo.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_web_msgsWebGoTo* = object
  ## @brief Preserve original type as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `type`*: uint8
  ## @brief Preserve original value as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `value`*: string
const Ros1Pal_web_msgsWebGoToMaximumWireBytes* = 133
const Ros1Pal_web_msgsWebGoToCodecIdentity* = "UWVMROS1_19f21af491edb41e15ccb284a67005ef6ed2209b873dd94e5241206f4d2471a5"
const Ros1Pal_web_msgsWebGoToNativeType* = "pal_web_msgs/WebGoTo"
const Ros1Pal_web_msgsWebGoToNativeIdentity* = ""
const Ros1Pal_web_msgsWebGoTo_IMAGE*: uint8 = 0'u8
const Ros1Pal_web_msgsWebGoTo_VIDEO*: uint8 = 1'u8
const Ros1Pal_web_msgsWebGoTo_URI*: uint8 = 2'u8
const Ros1Pal_web_msgsWebGoTo_URL*: uint8 = 3'u8
const Ros1Pal_web_msgsWebGoTo_TOUCH_PAGE*: uint8 = 4'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_web_msgsWebGoTo*(): Ros1Pal_web_msgsWebGoTo =
  result.`type` = 0
  result.`value` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_web_msgsWebGoTo; w: var Writer) =
  putInteger(w,value.`type`)
  putString(w,value.`value`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_web_msgsWebGoTo*(r: var Reader): Ros1Pal_web_msgsWebGoTo =
  result = initRos1Pal_web_msgsWebGoTo()
  result.`type` = getInteger(r,uint8)
  result.`value` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_web_msgsWebGoTo): seq[byte] =
  var w = initWriter(133)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_web_msgsWebGoTo*(b: seq[byte]): Ros1Pal_web_msgsWebGoTo =
  var r = initReader(b,133)
  result = readRos1Pal_web_msgsWebGoTo(r)
  finish(r)
## @brief Own every original field of ROS1 pal_web_msgs/GetUserInputGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_web_msgsGetUserInputGoal* = object
  ## @brief Preserve original web_go_to as pal_web_msgs/WebGoTo.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `web_go_to`*: Ros1Pal_web_msgsWebGoTo
  ## @brief Preserve original question_tts as pal_interaction_msgs/TtsGoal.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `question_tts`*: Ros1Pal_interaction_msgsTtsGoal
  ## @brief Preserve original valid_asr_inputs as string.
  ## @details At most 16 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `valid_asr_inputs`*: seq[string]
  ## @brief Preserve original asr_language as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `asr_language`*: string
  ## @brief Preserve original asr_timeout as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `asr_timeout`*: Ros1Duration
  ## @brief Preserve original retry_asr as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `retry_asr`*: bool
  ## @brief Preserve original retry_tts as pal_interaction_msgs/TtsGoal.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `retry_tts`*: Ros1Pal_interaction_msgsTtsGoal
  ## @brief Preserve original wait_for_interaction as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `wait_for_interaction`*: bool
const Ros1Pal_web_msgsGetUserInputGoalMaximumWireBytes* = 7167
const Ros1Pal_web_msgsGetUserInputGoalCodecIdentity* = "UWVMROS1_d170bc8de6aad94561016ef3c075df8c1f528911d42ac2eb9d22885db2533b3e"
const Ros1Pal_web_msgsGetUserInputGoalNativeType* = "pal_web_msgs/GetUserInputGoal"
const Ros1Pal_web_msgsGetUserInputGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_web_msgsGetUserInputGoal*(): Ros1Pal_web_msgsGetUserInputGoal =
  result.`web_go_to` = initRos1Pal_web_msgsWebGoTo()
  result.`question_tts` = initRos1Pal_interaction_msgsTtsGoal()
  result.`valid_asr_inputs` = @[]
  result.`asr_language` = ""
  result.`asr_timeout` = initRos1Duration()
  result.`retry_asr` = false
  result.`retry_tts` = initRos1Pal_interaction_msgsTtsGoal()
  result.`wait_for_interaction` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_web_msgsGetUserInputGoal; w: var Writer) =
  writeFields(value.`web_go_to`,w)
  writeFields(value.`question_tts`,w)
  if value.`valid_asr_inputs`.len > 16: fail(22)
  putInteger(w,uint32(value.`valid_asr_inputs`.len))
  for e in value.`valid_asr_inputs`:
    putString(w,e,128)
  putString(w,value.`asr_language`,128)
  writeFields(value.`asr_timeout`,w)
  putBool(w,value.`retry_asr`)
  writeFields(value.`retry_tts`,w)
  putBool(w,value.`wait_for_interaction`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_web_msgsGetUserInputGoal*(r: var Reader): Ros1Pal_web_msgsGetUserInputGoal =
  result = initRos1Pal_web_msgsGetUserInputGoal()
  result.`web_go_to` = readRos1Pal_web_msgsWebGoTo(r)
  result.`question_tts` = readRos1Pal_interaction_msgsTtsGoal(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 16: fail(22)
  let count2 = int(rawcount2)
  result.`valid_asr_inputs` = newSeq[string](count2)
  for i in 0..<count2:
    result.`valid_asr_inputs`[i] = getString(r,128)
  result.`asr_language` = getString(r,128)
  result.`asr_timeout` = readRos1Duration(r)
  result.`retry_asr` = getBool(r)
  result.`retry_tts` = readRos1Pal_interaction_msgsTtsGoal(r)
  result.`wait_for_interaction` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_web_msgsGetUserInputGoal): seq[byte] =
  var w = initWriter(7167)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_web_msgsGetUserInputGoal*(b: seq[byte]): Ros1Pal_web_msgsGetUserInputGoal =
  var r = initReader(b,7167)
  result = readRos1Pal_web_msgsGetUserInputGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_web_msgs/GetUserInputResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_web_msgsGetUserInputResult* = object
  ## @brief Preserve original input as pal_interaction_msgs/Input.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `input`*: Ros1Pal_interaction_msgsInput
const Ros1Pal_web_msgsGetUserInputResultMaximumWireBytes* = 1192
const Ros1Pal_web_msgsGetUserInputResultCodecIdentity* = "UWVMROS1_95e443de95ce17d423ad14004609c743ed1ff0bea7f69921384dd499ba9ba778"
const Ros1Pal_web_msgsGetUserInputResultNativeType* = "pal_web_msgs/GetUserInputResult"
const Ros1Pal_web_msgsGetUserInputResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_web_msgsGetUserInputResult*(): Ros1Pal_web_msgsGetUserInputResult =
  result.`input` = initRos1Pal_interaction_msgsInput()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_web_msgsGetUserInputResult; w: var Writer) =
  writeFields(value.`input`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_web_msgsGetUserInputResult*(r: var Reader): Ros1Pal_web_msgsGetUserInputResult =
  result = initRos1Pal_web_msgsGetUserInputResult()
  result.`input` = readRos1Pal_interaction_msgsInput(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_web_msgsGetUserInputResult): seq[byte] =
  var w = initWriter(1192)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_web_msgsGetUserInputResult*(b: seq[byte]): Ros1Pal_web_msgsGetUserInputResult =
  var r = initReader(b,1192)
  result = readRos1Pal_web_msgsGetUserInputResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_web_msgs/GetUserInputFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_web_msgsGetUserInputFeedback* = object
const Ros1Pal_web_msgsGetUserInputFeedbackMaximumWireBytes* = 0
const Ros1Pal_web_msgsGetUserInputFeedbackCodecIdentity* = "UWVMROS1_cc9395e24ce3a8ae3aa198453ac066da1bcb5f90a5883cc4c7dc6a6a52675395"
const Ros1Pal_web_msgsGetUserInputFeedbackNativeType* = "pal_web_msgs/GetUserInputFeedback"
const Ros1Pal_web_msgsGetUserInputFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_web_msgsGetUserInputFeedback*(): Ros1Pal_web_msgsGetUserInputFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_web_msgsGetUserInputFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_web_msgsGetUserInputFeedback*(r: var Reader): Ros1Pal_web_msgsGetUserInputFeedback =
  result = initRos1Pal_web_msgsGetUserInputFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_web_msgsGetUserInputFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_web_msgsGetUserInputFeedback*(b: seq[byte]): Ros1Pal_web_msgsGetUserInputFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_web_msgsGetUserInputFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_wifi_localization_msgs/GetWifiMapRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_wifi_localization_msgsGetWifiMapRequest* = object
const Ros1Pal_wifi_localization_msgsGetWifiMapRequestMaximumWireBytes* = 0
const Ros1Pal_wifi_localization_msgsGetWifiMapRequestCodecIdentity* = "UWVMROS1_91f308677881cbf1a91911f58602b59adabc3935db966392d28ad81acd70d832"
const Ros1Pal_wifi_localization_msgsGetWifiMapRequestNativeType* = "pal_wifi_localization_msgs/GetWifiMapRequest"
const Ros1Pal_wifi_localization_msgsGetWifiMapRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_wifi_localization_msgsGetWifiMapRequest*(): Ros1Pal_wifi_localization_msgsGetWifiMapRequest =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_wifi_localization_msgsGetWifiMapRequest; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_wifi_localization_msgsGetWifiMapRequest*(r: var Reader): Ros1Pal_wifi_localization_msgsGetWifiMapRequest =
  result = initRos1Pal_wifi_localization_msgsGetWifiMapRequest()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_wifi_localization_msgsGetWifiMapRequest): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_wifi_localization_msgsGetWifiMapRequest*(b: seq[byte]): Ros1Pal_wifi_localization_msgsGetWifiMapRequest =
  var r = initReader(b,0)
  result = readRos1Pal_wifi_localization_msgsGetWifiMapRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_wifi_localization_msgs/WifiSignal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_wifi_localization_msgsWifiSignal* = object
  ## @brief Preserve original id as std_msgs/String.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `id`*: Ros1Std_msgsString
  ## @brief Preserve original mean as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `mean`*: float32
  ## @brief Preserve original std_dev as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `std_dev`*: float32
const Ros1Pal_wifi_localization_msgsWifiSignalMaximumWireBytes* = 140
const Ros1Pal_wifi_localization_msgsWifiSignalCodecIdentity* = "UWVMROS1_f2397d50da735cc25a1392f79d7dca7e1a4bf2837e5981cb987bdfbb0dcebf71"
const Ros1Pal_wifi_localization_msgsWifiSignalNativeType* = "pal_wifi_localization_msgs/WifiSignal"
const Ros1Pal_wifi_localization_msgsWifiSignalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_wifi_localization_msgsWifiSignal*(): Ros1Pal_wifi_localization_msgsWifiSignal =
  result.`id` = initRos1Std_msgsString()
  result.`mean` = 0
  result.`std_dev` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_wifi_localization_msgsWifiSignal; w: var Writer) =
  writeFields(value.`id`,w)
  putFloat32(w,value.`mean`)
  putFloat32(w,value.`std_dev`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_wifi_localization_msgsWifiSignal*(r: var Reader): Ros1Pal_wifi_localization_msgsWifiSignal =
  result = initRos1Pal_wifi_localization_msgsWifiSignal()
  result.`id` = readRos1Std_msgsString(r)
  result.`mean` = getFloat32(r)
  result.`std_dev` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_wifi_localization_msgsWifiSignal): seq[byte] =
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_wifi_localization_msgsWifiSignal*(b: seq[byte]): Ros1Pal_wifi_localization_msgsWifiSignal =
  var r = initReader(b,140)
  result = readRos1Pal_wifi_localization_msgsWifiSignal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_wifi_localization_msgs/WifiSignalList.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_wifi_localization_msgsWifiSignalList* = object
  ## @brief Preserve original networks as pal_wifi_localization_msgs/WifiSignal.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `networks`*: seq[Ros1Pal_wifi_localization_msgsWifiSignal]
  ## @brief Preserve original start_time as time.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `start_time`*: Ros1Time
  ## @brief Preserve original end_time as time.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `end_time`*: Ros1Time
const Ros1Pal_wifi_localization_msgsWifiSignalListMaximumWireBytes* = 580
const Ros1Pal_wifi_localization_msgsWifiSignalListCodecIdentity* = "UWVMROS1_9a15f8c545d1fb461b8b4d42c31fe7803392a5277c9ee0377aa9b79888ae64fc"
const Ros1Pal_wifi_localization_msgsWifiSignalListNativeType* = "pal_wifi_localization_msgs/WifiSignalList"
const Ros1Pal_wifi_localization_msgsWifiSignalListNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_wifi_localization_msgsWifiSignalList*(): Ros1Pal_wifi_localization_msgsWifiSignalList =
  result.`networks` = @[]
  result.`start_time` = initRos1Time()
  result.`end_time` = initRos1Time()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_wifi_localization_msgsWifiSignalList; w: var Writer) =
  if value.`networks`.len > 4: fail(22)
  putInteger(w,uint32(value.`networks`.len))
  for e in value.`networks`:
    writeFields(e,w)
  writeFields(value.`start_time`,w)
  writeFields(value.`end_time`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_wifi_localization_msgsWifiSignalList*(r: var Reader): Ros1Pal_wifi_localization_msgsWifiSignalList =
  result = initRos1Pal_wifi_localization_msgsWifiSignalList()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`networks` = newSeq[Ros1Pal_wifi_localization_msgsWifiSignal](count0)
  for i in 0..<count0:
    result.`networks`[i] = readRos1Pal_wifi_localization_msgsWifiSignal(r)
  result.`start_time` = readRos1Time(r)
  result.`end_time` = readRos1Time(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_wifi_localization_msgsWifiSignalList): seq[byte] =
  var w = initWriter(580)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_wifi_localization_msgsWifiSignalList*(b: seq[byte]): Ros1Pal_wifi_localization_msgsWifiSignalList =
  var r = initReader(b,580)
  result = readRos1Pal_wifi_localization_msgsWifiSignalList(r)
  finish(r)
## @brief Own every original field of ROS1 pal_wifi_localization_msgs/WifiSignalMap.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_wifi_localization_msgsWifiSignalMap* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original info as nav_msgs/MapMetaData.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `info`*: Ros1Nav_msgsMapMetaData
  ## @brief Preserve original sectors as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `sectors`*: uint32
  ## @brief Preserve original data as pal_wifi_localization_msgs/WifiSignalList.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `data`*: seq[Ros1Pal_wifi_localization_msgsWifiSignalList]
const Ros1Pal_wifi_localization_msgsWifiSignalMapMaximumWireBytes* = 2548
const Ros1Pal_wifi_localization_msgsWifiSignalMapCodecIdentity* = "UWVMROS1_948926ffa19fd58fabf24b61ae0d2334e09b3815358f79b521dd3b84fe231a3e"
const Ros1Pal_wifi_localization_msgsWifiSignalMapNativeType* = "pal_wifi_localization_msgs/WifiSignalMap"
const Ros1Pal_wifi_localization_msgsWifiSignalMapNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_wifi_localization_msgsWifiSignalMap*(): Ros1Pal_wifi_localization_msgsWifiSignalMap =
  result.`header` = initRos1Std_msgsHeader()
  result.`info` = initRos1Nav_msgsMapMetaData()
  result.`sectors` = 0
  result.`data` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_wifi_localization_msgsWifiSignalMap; w: var Writer) =
  writeFields(value.`header`,w)
  writeFields(value.`info`,w)
  putInteger(w,value.`sectors`)
  if value.`data`.len > 4: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_wifi_localization_msgsWifiSignalMap*(r: var Reader): Ros1Pal_wifi_localization_msgsWifiSignalMap =
  result = initRos1Pal_wifi_localization_msgsWifiSignalMap()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`info` = readRos1Nav_msgsMapMetaData(r)
  result.`sectors` = getInteger(r,uint32)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 4: fail(22)
  let count3 = int(rawcount3)
  result.`data` = newSeq[Ros1Pal_wifi_localization_msgsWifiSignalList](count3)
  for i in 0..<count3:
    result.`data`[i] = readRos1Pal_wifi_localization_msgsWifiSignalList(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_wifi_localization_msgsWifiSignalMap): seq[byte] =
  var w = initWriter(2548)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_wifi_localization_msgsWifiSignalMap*(b: seq[byte]): Ros1Pal_wifi_localization_msgsWifiSignalMap =
  var r = initReader(b,2548)
  result = readRos1Pal_wifi_localization_msgsWifiSignalMap(r)
  finish(r)
## @brief Own every original field of ROS1 pal_wifi_localization_msgs/GetWifiMapResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_wifi_localization_msgsGetWifiMapResponse* = object
  ## @brief Preserve original map as pal_wifi_localization_msgs/WifiSignalMap.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `map`*: Ros1Pal_wifi_localization_msgsWifiSignalMap
const Ros1Pal_wifi_localization_msgsGetWifiMapResponseMaximumWireBytes* = 2548
const Ros1Pal_wifi_localization_msgsGetWifiMapResponseCodecIdentity* = "UWVMROS1_576278a043277d7621c6fc90fbbf583a0ad0ef9d7704fb8b5cca8b1b86c7bcb3"
const Ros1Pal_wifi_localization_msgsGetWifiMapResponseNativeType* = "pal_wifi_localization_msgs/GetWifiMapResponse"
const Ros1Pal_wifi_localization_msgsGetWifiMapResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_wifi_localization_msgsGetWifiMapResponse*(): Ros1Pal_wifi_localization_msgsGetWifiMapResponse =
  result.`map` = initRos1Pal_wifi_localization_msgsWifiSignalMap()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_wifi_localization_msgsGetWifiMapResponse; w: var Writer) =
  writeFields(value.`map`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_wifi_localization_msgsGetWifiMapResponse*(r: var Reader): Ros1Pal_wifi_localization_msgsGetWifiMapResponse =
  result = initRos1Pal_wifi_localization_msgsGetWifiMapResponse()
  result.`map` = readRos1Pal_wifi_localization_msgsWifiSignalMap(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_wifi_localization_msgsGetWifiMapResponse): seq[byte] =
  var w = initWriter(2548)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_wifi_localization_msgsGetWifiMapResponse*(b: seq[byte]): Ros1Pal_wifi_localization_msgsGetWifiMapResponse =
  var r = initReader(b,2548)
  result = readRos1Pal_wifi_localization_msgsGetWifiMapResponse(r)
  finish(r)
