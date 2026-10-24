## UWVM_COMPLETE_FIELD_CONTRACTS
## @details Field domains below come from the unchanged canonical source catalog.
## @file records.nim
## @brief Provide the complete pal ros1_indigo_devel canonical value surface.
## @details The original 222 record catalog retains field order, constants, defaults and quotas.
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
## @brief Own every original field of ROS1 pal_device_msgs/BatteryState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsBatteryState* = object
  ## @brief Preserve original chargeState as int8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `chargeState`*: int8
  ## @brief Preserve original batteryPercentage as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `batteryPercentage`*: float32
const Ros1Pal_device_msgsBatteryStateMaximumWireBytes* = 5
const Ros1Pal_device_msgsBatteryStateCodecIdentity* = "UWVMROS1_0c5a63bef9a7aa5a22424277d8d442de7b2330cb3c61e80548dae5a58d70527b"
const Ros1Pal_device_msgsBatteryStateNativeType* = "pal_device_msgs/BatteryState"
const Ros1Pal_device_msgsBatteryStateNativeIdentity* = ""
const Ros1Pal_device_msgsBatteryState_FULL*: int8 = 5'i8
const Ros1Pal_device_msgsBatteryState_HIGH*: int8 = 4'i8
const Ros1Pal_device_msgsBatteryState_MEDIUM*: int8 = 3'i8
const Ros1Pal_device_msgsBatteryState_LOW*: int8 = 2'i8
const Ros1Pal_device_msgsBatteryState_CRITICAL_LOW*: int8 = 1'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsBatteryState*(): Ros1Pal_device_msgsBatteryState =
  result.`chargeState` = 0
  result.`batteryPercentage` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsBatteryState; w: var Writer) =
  putInteger(w,value.`chargeState`)
  putFloat32(w,value.`batteryPercentage`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsBatteryState*(r: var Reader): Ros1Pal_device_msgsBatteryState =
  result = initRos1Pal_device_msgsBatteryState()
  result.`chargeState` = getInteger(r,int8)
  result.`batteryPercentage` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsBatteryState): seq[byte] =
  var w = initWriter(5)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsBatteryState*(b: seq[byte]): Ros1Pal_device_msgsBatteryState =
  var r = initReader(b,5)
  result = readRos1Pal_device_msgsBatteryState(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/Bumper.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsBumper* = object
  ## @brief Preserve original header as std_msgs/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros1Std_msgsHeader
  ## @brief Preserve original is_pressed as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `is_pressed`*: bool
const Ros1Pal_device_msgsBumperMaximumWireBytes* = 145
const Ros1Pal_device_msgsBumperCodecIdentity* = "UWVMROS1_696d3699d4b707663768df69acccade49e0108ed6d1c91b87fc260cc5c6b8ac9"
const Ros1Pal_device_msgsBumperNativeType* = "pal_device_msgs/Bumper"
const Ros1Pal_device_msgsBumperNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsBumper*(): Ros1Pal_device_msgsBumper =
  result.`header` = initRos1Std_msgsHeader()
  result.`is_pressed` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsBumper; w: var Writer) =
  writeFields(value.`header`,w)
  putBool(w,value.`is_pressed`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsBumper*(r: var Reader): Ros1Pal_device_msgsBumper =
  result = initRos1Pal_device_msgsBumper()
  result.`header` = readRos1Std_msgsHeader(r)
  result.`is_pressed` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsBumper): seq[byte] =
  var w = initWriter(145)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsBumper*(b: seq[byte]): Ros1Pal_device_msgsBumper =
  var r = initReader(b,145)
  result = readRos1Pal_device_msgsBumper(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/CancelEffectRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsCancelEffectRequest* = object
  ## @brief Preserve original effectId as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effectId`*: uint32
const Ros1Pal_device_msgsCancelEffectRequestMaximumWireBytes* = 4
const Ros1Pal_device_msgsCancelEffectRequestCodecIdentity* = "UWVMROS1_7d1029daaad94f262487491600881e1ec56b29b7f743652b46315b80b9aa4929"
const Ros1Pal_device_msgsCancelEffectRequestNativeType* = "pal_device_msgs/CancelEffectRequest"
const Ros1Pal_device_msgsCancelEffectRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsCancelEffectRequest*(): Ros1Pal_device_msgsCancelEffectRequest =
  result.`effectId` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsCancelEffectRequest; w: var Writer) =
  putInteger(w,value.`effectId`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsCancelEffectRequest*(r: var Reader): Ros1Pal_device_msgsCancelEffectRequest =
  result = initRos1Pal_device_msgsCancelEffectRequest()
  result.`effectId` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsCancelEffectRequest): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsCancelEffectRequest*(b: seq[byte]): Ros1Pal_device_msgsCancelEffectRequest =
  var r = initReader(b,4)
  result = readRos1Pal_device_msgsCancelEffectRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/CancelEffectResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsCancelEffectResponse* = object
const Ros1Pal_device_msgsCancelEffectResponseMaximumWireBytes* = 0
const Ros1Pal_device_msgsCancelEffectResponseCodecIdentity* = "UWVMROS1_5dc811711832b14077af8da7c5a7e5f0813f3428a12e5b4bb80467571f7b9360"
const Ros1Pal_device_msgsCancelEffectResponseNativeType* = "pal_device_msgs/CancelEffectResponse"
const Ros1Pal_device_msgsCancelEffectResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsCancelEffectResponse*(): Ros1Pal_device_msgsCancelEffectResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsCancelEffectResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsCancelEffectResponse*(r: var Reader): Ros1Pal_device_msgsCancelEffectResponse =
  result = initRos1Pal_device_msgsCancelEffectResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsCancelEffectResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsCancelEffectResponse*(b: seq[byte]): Ros1Pal_device_msgsCancelEffectResponse =
  var r = initReader(b,0)
  result = readRos1Pal_device_msgsCancelEffectResponse(r)
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
## @brief Own every original field of ROS1 pal_device_msgs/LedFixedColorParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedFixedColorParams* = object
  ## @brief Preserve original color as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `color`*: Ros1Std_msgsColorRGBA
const Ros1Pal_device_msgsLedFixedColorParamsMaximumWireBytes* = 16
const Ros1Pal_device_msgsLedFixedColorParamsCodecIdentity* = "UWVMROS1_48ff1292535293f3a3e5e93e2650ea8e949f01c38fa5344e83f3c101d79dab2b"
const Ros1Pal_device_msgsLedFixedColorParamsNativeType* = "pal_device_msgs/LedFixedColorParams"
const Ros1Pal_device_msgsLedFixedColorParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedFixedColorParams*(): Ros1Pal_device_msgsLedFixedColorParams =
  result.`color` = initRos1Std_msgsColorRGBA()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedFixedColorParams; w: var Writer) =
  writeFields(value.`color`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsLedFixedColorParams*(r: var Reader): Ros1Pal_device_msgsLedFixedColorParams =
  result = initRos1Pal_device_msgsLedFixedColorParams()
  result.`color` = readRos1Std_msgsColorRGBA(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedFixedColorParams): seq[byte] =
  var w = initWriter(16)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedFixedColorParams*(b: seq[byte]): Ros1Pal_device_msgsLedFixedColorParams =
  var r = initReader(b,16)
  result = readRos1Pal_device_msgsLedFixedColorParams(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/LedRainbowParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedRainbowParams* = object
  ## @brief Preserve original transition_duration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `transition_duration`*: Ros1Duration
const Ros1Pal_device_msgsLedRainbowParamsMaximumWireBytes* = 8
const Ros1Pal_device_msgsLedRainbowParamsCodecIdentity* = "UWVMROS1_78566593a51307fafdf358be01818b05b93bb22cb9c56241ca9ed3ab99e45ef9"
const Ros1Pal_device_msgsLedRainbowParamsNativeType* = "pal_device_msgs/LedRainbowParams"
const Ros1Pal_device_msgsLedRainbowParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedRainbowParams*(): Ros1Pal_device_msgsLedRainbowParams =
  result.`transition_duration` = initRos1Duration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedRainbowParams; w: var Writer) =
  writeFields(value.`transition_duration`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsLedRainbowParams*(r: var Reader): Ros1Pal_device_msgsLedRainbowParams =
  result = initRos1Pal_device_msgsLedRainbowParams()
  result.`transition_duration` = readRos1Duration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedRainbowParams): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedRainbowParams*(b: seq[byte]): Ros1Pal_device_msgsLedRainbowParams =
  var r = initReader(b,8)
  result = readRos1Pal_device_msgsLedRainbowParams(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/LedFadeParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedFadeParams* = object
  ## @brief Preserve original first_color as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original second_color as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original transition_duration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `transition_duration`*: Ros1Duration
  ## @brief Preserve original reverse_fade as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `reverse_fade`*: bool
const Ros1Pal_device_msgsLedFadeParamsMaximumWireBytes* = 41
const Ros1Pal_device_msgsLedFadeParamsCodecIdentity* = "UWVMROS1_ef4e86603f7f13e7595cb43ee879ad87ce8cb2b77c4fbf918b930066bdf88e6f"
const Ros1Pal_device_msgsLedFadeParamsNativeType* = "pal_device_msgs/LedFadeParams"
const Ros1Pal_device_msgsLedFadeParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedFadeParams*(): Ros1Pal_device_msgsLedFadeParams =
  result.`first_color` = initRos1Std_msgsColorRGBA()
  result.`second_color` = initRos1Std_msgsColorRGBA()
  result.`transition_duration` = initRos1Duration()
  result.`reverse_fade` = false
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedFadeParams; w: var Writer) =
  writeFields(value.`first_color`,w)
  writeFields(value.`second_color`,w)
  writeFields(value.`transition_duration`,w)
  putBool(w,value.`reverse_fade`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsLedFadeParams*(r: var Reader): Ros1Pal_device_msgsLedFadeParams =
  result = initRos1Pal_device_msgsLedFadeParams()
  result.`first_color` = readRos1Std_msgsColorRGBA(r)
  result.`second_color` = readRos1Std_msgsColorRGBA(r)
  result.`transition_duration` = readRos1Duration(r)
  result.`reverse_fade` = getBool(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedFadeParams): seq[byte] =
  var w = initWriter(41)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedFadeParams*(b: seq[byte]): Ros1Pal_device_msgsLedFadeParams =
  var r = initReader(b,41)
  result = readRos1Pal_device_msgsLedFadeParams(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/LedBlinkParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedBlinkParams* = object
  ## @brief Preserve original first_color as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original second_color as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original first_color_duration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color_duration`*: Ros1Duration
  ## @brief Preserve original second_color_duration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color_duration`*: Ros1Duration
const Ros1Pal_device_msgsLedBlinkParamsMaximumWireBytes* = 48
const Ros1Pal_device_msgsLedBlinkParamsCodecIdentity* = "UWVMROS1_d8d4df17343bdef6d9ab19c2127c2375e0b97160517c8a59a5b4dc8967c250e2"
const Ros1Pal_device_msgsLedBlinkParamsNativeType* = "pal_device_msgs/LedBlinkParams"
const Ros1Pal_device_msgsLedBlinkParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedBlinkParams*(): Ros1Pal_device_msgsLedBlinkParams =
  result.`first_color` = initRos1Std_msgsColorRGBA()
  result.`second_color` = initRos1Std_msgsColorRGBA()
  result.`first_color_duration` = initRos1Duration()
  result.`second_color_duration` = initRos1Duration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedBlinkParams; w: var Writer) =
  writeFields(value.`first_color`,w)
  writeFields(value.`second_color`,w)
  writeFields(value.`first_color_duration`,w)
  writeFields(value.`second_color_duration`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsLedBlinkParams*(r: var Reader): Ros1Pal_device_msgsLedBlinkParams =
  result = initRos1Pal_device_msgsLedBlinkParams()
  result.`first_color` = readRos1Std_msgsColorRGBA(r)
  result.`second_color` = readRos1Std_msgsColorRGBA(r)
  result.`first_color_duration` = readRos1Duration(r)
  result.`second_color_duration` = readRos1Duration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedBlinkParams): seq[byte] =
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedBlinkParams*(b: seq[byte]): Ros1Pal_device_msgsLedBlinkParams =
  var r = initReader(b,48)
  result = readRos1Pal_device_msgsLedBlinkParams(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/LedProgressParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedProgressParams* = object
  ## @brief Preserve original first_color as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original second_color as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original percentage as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `percentage`*: float32
  ## @brief Preserve original led_offset as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `led_offset`*: float32
const Ros1Pal_device_msgsLedProgressParamsMaximumWireBytes* = 40
const Ros1Pal_device_msgsLedProgressParamsCodecIdentity* = "UWVMROS1_e16b3b7d1c4a997f806a4e5bd67f150f947c0f06c0e1e810e34006d010a3b85e"
const Ros1Pal_device_msgsLedProgressParamsNativeType* = "pal_device_msgs/LedProgressParams"
const Ros1Pal_device_msgsLedProgressParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedProgressParams*(): Ros1Pal_device_msgsLedProgressParams =
  result.`first_color` = initRos1Std_msgsColorRGBA()
  result.`second_color` = initRos1Std_msgsColorRGBA()
  result.`percentage` = 0
  result.`led_offset` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedProgressParams; w: var Writer) =
  writeFields(value.`first_color`,w)
  writeFields(value.`second_color`,w)
  putFloat32(w,value.`percentage`)
  putFloat32(w,value.`led_offset`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsLedProgressParams*(r: var Reader): Ros1Pal_device_msgsLedProgressParams =
  result = initRos1Pal_device_msgsLedProgressParams()
  result.`first_color` = readRos1Std_msgsColorRGBA(r)
  result.`second_color` = readRos1Std_msgsColorRGBA(r)
  result.`percentage` = getFloat32(r)
  result.`led_offset` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedProgressParams): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedProgressParams*(b: seq[byte]): Ros1Pal_device_msgsLedProgressParams =
  var r = initReader(b,40)
  result = readRos1Pal_device_msgsLedProgressParams(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/LedFlowParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedFlowParams* = object
  ## @brief Preserve original first_color as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `first_color`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original second_color as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `second_color`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original percentage as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `percentage`*: float32
  ## @brief Preserve original velocity as float32.
  ## @details Finite IEEE float32 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `velocity`*: float32
const Ros1Pal_device_msgsLedFlowParamsMaximumWireBytes* = 40
const Ros1Pal_device_msgsLedFlowParamsCodecIdentity* = "UWVMROS1_b056dfced68aebfe2fda868b0d012ff75254be3787cf16f83a3ed939d7647aa7"
const Ros1Pal_device_msgsLedFlowParamsNativeType* = "pal_device_msgs/LedFlowParams"
const Ros1Pal_device_msgsLedFlowParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedFlowParams*(): Ros1Pal_device_msgsLedFlowParams =
  result.`first_color` = initRos1Std_msgsColorRGBA()
  result.`second_color` = initRos1Std_msgsColorRGBA()
  result.`percentage` = 0
  result.`velocity` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedFlowParams; w: var Writer) =
  writeFields(value.`first_color`,w)
  writeFields(value.`second_color`,w)
  putFloat32(w,value.`percentage`)
  putFloat32(w,value.`velocity`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsLedFlowParams*(r: var Reader): Ros1Pal_device_msgsLedFlowParams =
  result = initRos1Pal_device_msgsLedFlowParams()
  result.`first_color` = readRos1Std_msgsColorRGBA(r)
  result.`second_color` = readRos1Std_msgsColorRGBA(r)
  result.`percentage` = getFloat32(r)
  result.`velocity` = getFloat32(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedFlowParams): seq[byte] =
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedFlowParams*(b: seq[byte]): Ros1Pal_device_msgsLedFlowParams =
  var r = initReader(b,40)
  result = readRos1Pal_device_msgsLedFlowParams(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/LedPreProgrammedParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedPreProgrammedParams* = object
  ## @brief Preserve original preprogrammed_id as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `preprogrammed_id`*: uint8
const Ros1Pal_device_msgsLedPreProgrammedParamsMaximumWireBytes* = 1
const Ros1Pal_device_msgsLedPreProgrammedParamsCodecIdentity* = "UWVMROS1_86d21feddc513d20ae7c9772636027d56ce7244e56b18d7f4a6814eb246e2f1c"
const Ros1Pal_device_msgsLedPreProgrammedParamsNativeType* = "pal_device_msgs/LedPreProgrammedParams"
const Ros1Pal_device_msgsLedPreProgrammedParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedPreProgrammedParams*(): Ros1Pal_device_msgsLedPreProgrammedParams =
  result.`preprogrammed_id` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedPreProgrammedParams; w: var Writer) =
  putInteger(w,value.`preprogrammed_id`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsLedPreProgrammedParams*(r: var Reader): Ros1Pal_device_msgsLedPreProgrammedParams =
  result = initRos1Pal_device_msgsLedPreProgrammedParams()
  result.`preprogrammed_id` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedPreProgrammedParams): seq[byte] =
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedPreProgrammedParams*(b: seq[byte]): Ros1Pal_device_msgsLedPreProgrammedParams =
  var r = initReader(b,1)
  result = readRos1Pal_device_msgsLedPreProgrammedParams(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/LedEffectViaTopicParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedEffectViaTopicParams* = object
  ## @brief Preserve original topic_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `topic_name`*: string
const Ros1Pal_device_msgsLedEffectViaTopicParamsMaximumWireBytes* = 132
const Ros1Pal_device_msgsLedEffectViaTopicParamsCodecIdentity* = "UWVMROS1_0ecb4f17c68f4e0dc1d682a09e40c4177a0f568e4465b5810b8371e8dc544042"
const Ros1Pal_device_msgsLedEffectViaTopicParamsNativeType* = "pal_device_msgs/LedEffectViaTopicParams"
const Ros1Pal_device_msgsLedEffectViaTopicParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedEffectViaTopicParams*(): Ros1Pal_device_msgsLedEffectViaTopicParams =
  result.`topic_name` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedEffectViaTopicParams; w: var Writer) =
  putString(w,value.`topic_name`,128)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsLedEffectViaTopicParams*(r: var Reader): Ros1Pal_device_msgsLedEffectViaTopicParams =
  result = initRos1Pal_device_msgsLedEffectViaTopicParams()
  result.`topic_name` = getString(r,128)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedEffectViaTopicParams): seq[byte] =
  var w = initWriter(132)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedEffectViaTopicParams*(b: seq[byte]): Ros1Pal_device_msgsLedEffectViaTopicParams =
  var r = initReader(b,132)
  result = readRos1Pal_device_msgsLedEffectViaTopicParams(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/LedDataArrayParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedDataArrayParams* = object
  ## @brief Preserve original data as std_msgs/ColorRGBA.
  ## @details At most 4 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `data`*: seq[Ros1Std_msgsColorRGBA]
const Ros1Pal_device_msgsLedDataArrayParamsMaximumWireBytes* = 68
const Ros1Pal_device_msgsLedDataArrayParamsCodecIdentity* = "UWVMROS1_edd98b3ea577b8bb6bc3e66afcf900c719fe0b3e964a636f0e87b5bf1f7fe56a"
const Ros1Pal_device_msgsLedDataArrayParamsNativeType* = "pal_device_msgs/LedDataArrayParams"
const Ros1Pal_device_msgsLedDataArrayParamsNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedDataArrayParams*(): Ros1Pal_device_msgsLedDataArrayParams =
  result.`data` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedDataArrayParams; w: var Writer) =
  if value.`data`.len > 4: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsLedDataArrayParams*(r: var Reader): Ros1Pal_device_msgsLedDataArrayParams =
  result = initRos1Pal_device_msgsLedDataArrayParams()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 4: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[Ros1Std_msgsColorRGBA](count0)
  for i in 0..<count0:
    result.`data`[i] = readRos1Std_msgsColorRGBA(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedDataArrayParams): seq[byte] =
  var w = initWriter(68)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedDataArrayParams*(b: seq[byte]): Ros1Pal_device_msgsLedDataArrayParams =
  var r = initReader(b,68)
  result = readRos1Pal_device_msgsLedDataArrayParams(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/LedEffectParams.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedEffectParams* = object
  ## @brief Preserve original effectType as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effectType`*: uint8
  ## @brief Preserve original fixed_color as pal_device_msgs/LedFixedColorParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `fixed_color`*: Ros1Pal_device_msgsLedFixedColorParams
  ## @brief Preserve original rainbow as pal_device_msgs/LedRainbowParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `rainbow`*: Ros1Pal_device_msgsLedRainbowParams
  ## @brief Preserve original fade as pal_device_msgs/LedFadeParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `fade`*: Ros1Pal_device_msgsLedFadeParams
  ## @brief Preserve original blink as pal_device_msgs/LedBlinkParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `blink`*: Ros1Pal_device_msgsLedBlinkParams
  ## @brief Preserve original progress as pal_device_msgs/LedProgressParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `progress`*: Ros1Pal_device_msgsLedProgressParams
  ## @brief Preserve original flow as pal_device_msgs/LedFlowParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `flow`*: Ros1Pal_device_msgsLedFlowParams
  ## @brief Preserve original preprogrammed as pal_device_msgs/LedPreProgrammedParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `preprogrammed`*: Ros1Pal_device_msgsLedPreProgrammedParams
  ## @brief Preserve original effect_via_topic as pal_device_msgs/LedEffectViaTopicParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effect_via_topic`*: Ros1Pal_device_msgsLedEffectViaTopicParams
  ## @brief Preserve original data_array as pal_device_msgs/LedDataArrayParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `data_array`*: Ros1Pal_device_msgsLedDataArrayParams
const Ros1Pal_device_msgsLedEffectParamsMaximumWireBytes* = 395
const Ros1Pal_device_msgsLedEffectParamsCodecIdentity* = "UWVMROS1_c2d7568c4d0e241b555b76b29424dc46d72587421f5c2e0647204b792b9b17a6"
const Ros1Pal_device_msgsLedEffectParamsNativeType* = "pal_device_msgs/LedEffectParams"
const Ros1Pal_device_msgsLedEffectParamsNativeIdentity* = ""
const Ros1Pal_device_msgsLedEffectParams_FIXED_COLOR*: uint8 = 0'u8
const Ros1Pal_device_msgsLedEffectParams_RAINBOW*: uint8 = 1'u8
const Ros1Pal_device_msgsLedEffectParams_FADE*: uint8 = 2'u8
const Ros1Pal_device_msgsLedEffectParams_BLINK*: uint8 = 3'u8
const Ros1Pal_device_msgsLedEffectParams_PROGRESS*: uint8 = 4'u8
const Ros1Pal_device_msgsLedEffectParams_FLOW*: uint8 = 5'u8
const Ros1Pal_device_msgsLedEffectParams_PREPROGRAMMED_EFFECT*: uint8 = 6'u8
const Ros1Pal_device_msgsLedEffectParams_EFFECT_VIA_TOPIC*: uint8 = 7'u8
const Ros1Pal_device_msgsLedEffectParams_DATA_ARRAY*: uint8 = 8'u8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedEffectParams*(): Ros1Pal_device_msgsLedEffectParams =
  result.`effectType` = 0
  result.`fixed_color` = initRos1Pal_device_msgsLedFixedColorParams()
  result.`rainbow` = initRos1Pal_device_msgsLedRainbowParams()
  result.`fade` = initRos1Pal_device_msgsLedFadeParams()
  result.`blink` = initRos1Pal_device_msgsLedBlinkParams()
  result.`progress` = initRos1Pal_device_msgsLedProgressParams()
  result.`flow` = initRos1Pal_device_msgsLedFlowParams()
  result.`preprogrammed` = initRos1Pal_device_msgsLedPreProgrammedParams()
  result.`effect_via_topic` = initRos1Pal_device_msgsLedEffectViaTopicParams()
  result.`data_array` = initRos1Pal_device_msgsLedDataArrayParams()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedEffectParams; w: var Writer) =
  putInteger(w,value.`effectType`)
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
proc readRos1Pal_device_msgsLedEffectParams*(r: var Reader): Ros1Pal_device_msgsLedEffectParams =
  result = initRos1Pal_device_msgsLedEffectParams()
  result.`effectType` = getInteger(r,uint8)
  result.`fixed_color` = readRos1Pal_device_msgsLedFixedColorParams(r)
  result.`rainbow` = readRos1Pal_device_msgsLedRainbowParams(r)
  result.`fade` = readRos1Pal_device_msgsLedFadeParams(r)
  result.`blink` = readRos1Pal_device_msgsLedBlinkParams(r)
  result.`progress` = readRos1Pal_device_msgsLedProgressParams(r)
  result.`flow` = readRos1Pal_device_msgsLedFlowParams(r)
  result.`preprogrammed` = readRos1Pal_device_msgsLedPreProgrammedParams(r)
  result.`effect_via_topic` = readRos1Pal_device_msgsLedEffectViaTopicParams(r)
  result.`data_array` = readRos1Pal_device_msgsLedDataArrayParams(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedEffectParams): seq[byte] =
  var w = initWriter(395)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedEffectParams*(b: seq[byte]): Ros1Pal_device_msgsLedEffectParams =
  var r = initReader(b,395)
  result = readRos1Pal_device_msgsLedEffectParams(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/DoTimedLedEffectGoal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsDoTimedLedEffectGoal* = object
  ## @brief Preserve original devices as uint32.
  ## @details At most 16 logical elements. Physical units remain those of the original declaration; no
  ## additional model limit is inferred.
  `devices`*: seq[uint32]
  ## @brief Preserve original params as pal_device_msgs/LedEffectParams.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `params`*: Ros1Pal_device_msgsLedEffectParams
  ## @brief Preserve original effectDuration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effectDuration`*: Ros1Duration
  ## @brief Preserve original priority as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `priority`*: uint8
const Ros1Pal_device_msgsDoTimedLedEffectGoalMaximumWireBytes* = 472
const Ros1Pal_device_msgsDoTimedLedEffectGoalCodecIdentity* = "UWVMROS1_683df32baf5dae0e44c1f7345d0867d5f68ae493d0652b44b314e8d6d348b7dc"
const Ros1Pal_device_msgsDoTimedLedEffectGoalNativeType* = "pal_device_msgs/DoTimedLedEffectGoal"
const Ros1Pal_device_msgsDoTimedLedEffectGoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsDoTimedLedEffectGoal*(): Ros1Pal_device_msgsDoTimedLedEffectGoal =
  result.`devices` = @[]
  result.`params` = initRos1Pal_device_msgsLedEffectParams()
  result.`effectDuration` = initRos1Duration()
  result.`priority` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsDoTimedLedEffectGoal; w: var Writer) =
  if value.`devices`.len > 16: fail(22)
  putInteger(w,uint32(value.`devices`.len))
  for e in value.`devices`:
    putInteger(w,e)
  writeFields(value.`params`,w)
  writeFields(value.`effectDuration`,w)
  putInteger(w,value.`priority`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsDoTimedLedEffectGoal*(r: var Reader): Ros1Pal_device_msgsDoTimedLedEffectGoal =
  result = initRos1Pal_device_msgsDoTimedLedEffectGoal()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`devices` = newSeq[uint32](count0)
  for i in 0..<count0:
    result.`devices`[i] = getInteger(r,uint32)
  result.`params` = readRos1Pal_device_msgsLedEffectParams(r)
  result.`effectDuration` = readRos1Duration(r)
  result.`priority` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsDoTimedLedEffectGoal): seq[byte] =
  var w = initWriter(472)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsDoTimedLedEffectGoal*(b: seq[byte]): Ros1Pal_device_msgsDoTimedLedEffectGoal =
  var r = initReader(b,472)
  result = readRos1Pal_device_msgsDoTimedLedEffectGoal(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/DoTimedLedEffectResult.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsDoTimedLedEffectResult* = object
const Ros1Pal_device_msgsDoTimedLedEffectResultMaximumWireBytes* = 0
const Ros1Pal_device_msgsDoTimedLedEffectResultCodecIdentity* = "UWVMROS1_b23c6e239b4bf2ca3810eeb253d87a1e834c8ccb4b3c0c473cb4097aa3456be8"
const Ros1Pal_device_msgsDoTimedLedEffectResultNativeType* = "pal_device_msgs/DoTimedLedEffectResult"
const Ros1Pal_device_msgsDoTimedLedEffectResultNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsDoTimedLedEffectResult*(): Ros1Pal_device_msgsDoTimedLedEffectResult =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsDoTimedLedEffectResult; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsDoTimedLedEffectResult*(r: var Reader): Ros1Pal_device_msgsDoTimedLedEffectResult =
  result = initRos1Pal_device_msgsDoTimedLedEffectResult()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsDoTimedLedEffectResult): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsDoTimedLedEffectResult*(b: seq[byte]): Ros1Pal_device_msgsDoTimedLedEffectResult =
  var r = initReader(b,0)
  result = readRos1Pal_device_msgsDoTimedLedEffectResult(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/DoTimedLedEffectFeedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsDoTimedLedEffectFeedback* = object
const Ros1Pal_device_msgsDoTimedLedEffectFeedbackMaximumWireBytes* = 0
const Ros1Pal_device_msgsDoTimedLedEffectFeedbackCodecIdentity* = "UWVMROS1_75ad5b9ac229b54a0b9883961cf275a9c11a0dd4c7761913326a8df0aea182f6"
const Ros1Pal_device_msgsDoTimedLedEffectFeedbackNativeType* = "pal_device_msgs/DoTimedLedEffectFeedback"
const Ros1Pal_device_msgsDoTimedLedEffectFeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsDoTimedLedEffectFeedback*(): Ros1Pal_device_msgsDoTimedLedEffectFeedback =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsDoTimedLedEffectFeedback; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsDoTimedLedEffectFeedback*(r: var Reader): Ros1Pal_device_msgsDoTimedLedEffectFeedback =
  result = initRos1Pal_device_msgsDoTimedLedEffectFeedback()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsDoTimedLedEffectFeedback): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsDoTimedLedEffectFeedback*(b: seq[byte]): Ros1Pal_device_msgsDoTimedLedEffectFeedback =
  var r = initReader(b,0)
  result = readRos1Pal_device_msgsDoTimedLedEffectFeedback(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/LedGroup.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsLedGroup* = object
  ## @brief Preserve original ledMask as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `ledMask`*: uint32
const Ros1Pal_device_msgsLedGroupMaximumWireBytes* = 4
const Ros1Pal_device_msgsLedGroupCodecIdentity* = "UWVMROS1_d28d4258c918d58634c62cd20e417ca06734a5a2de8516b65663a9a3be82b008"
const Ros1Pal_device_msgsLedGroupNativeType* = "pal_device_msgs/LedGroup"
const Ros1Pal_device_msgsLedGroupNativeIdentity* = ""
const Ros1Pal_device_msgsLedGroup_LEFT_EAR*: int8 = 1'i8
const Ros1Pal_device_msgsLedGroup_RIGHT_EAR*: int8 = 2'i8
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsLedGroup*(): Ros1Pal_device_msgsLedGroup =
  result.`ledMask` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsLedGroup; w: var Writer) =
  putInteger(w,value.`ledMask`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsLedGroup*(r: var Reader): Ros1Pal_device_msgsLedGroup =
  result = initRos1Pal_device_msgsLedGroup()
  result.`ledMask` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsLedGroup): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsLedGroup*(b: seq[byte]): Ros1Pal_device_msgsLedGroup =
  var r = initReader(b,4)
  result = readRos1Pal_device_msgsLedGroup(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/ShutdownAndWakeUpRobotRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest* = object
  ## @brief Preserve original shutdown_duration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `shutdown_duration`*: Ros1Duration
const Ros1Pal_device_msgsShutdownAndWakeUpRobotRequestMaximumWireBytes* = 8
const Ros1Pal_device_msgsShutdownAndWakeUpRobotRequestCodecIdentity* = "UWVMROS1_e4fee1d5bb74578f009ac582242bf11237d0af2a1b8ff57b750e74dd338e3cbf"
const Ros1Pal_device_msgsShutdownAndWakeUpRobotRequestNativeType* = "pal_device_msgs/ShutdownAndWakeUpRobotRequest"
const Ros1Pal_device_msgsShutdownAndWakeUpRobotRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsShutdownAndWakeUpRobotRequest*(): Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest =
  result.`shutdown_duration` = initRos1Duration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest; w: var Writer) =
  writeFields(value.`shutdown_duration`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsShutdownAndWakeUpRobotRequest*(r: var Reader): Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest =
  result = initRos1Pal_device_msgsShutdownAndWakeUpRobotRequest()
  result.`shutdown_duration` = readRos1Duration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest): seq[byte] =
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsShutdownAndWakeUpRobotRequest*(b: seq[byte]): Ros1Pal_device_msgsShutdownAndWakeUpRobotRequest =
  var r = initReader(b,8)
  result = readRos1Pal_device_msgsShutdownAndWakeUpRobotRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/ShutdownAndWakeUpRobotResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse* = object
const Ros1Pal_device_msgsShutdownAndWakeUpRobotResponseMaximumWireBytes* = 0
const Ros1Pal_device_msgsShutdownAndWakeUpRobotResponseCodecIdentity* = "UWVMROS1_e4d1f2b350c53536e168ee2b8b51f439084939dd2ff14769152d99d52f16c3a8"
const Ros1Pal_device_msgsShutdownAndWakeUpRobotResponseNativeType* = "pal_device_msgs/ShutdownAndWakeUpRobotResponse"
const Ros1Pal_device_msgsShutdownAndWakeUpRobotResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsShutdownAndWakeUpRobotResponse*(): Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse =
  discard
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse; w: var Writer) =
  discard
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsShutdownAndWakeUpRobotResponse*(r: var Reader): Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse =
  result = initRos1Pal_device_msgsShutdownAndWakeUpRobotResponse()
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse): seq[byte] =
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsShutdownAndWakeUpRobotResponse*(b: seq[byte]): Ros1Pal_device_msgsShutdownAndWakeUpRobotResponse =
  var r = initReader(b,0)
  result = readRos1Pal_device_msgsShutdownAndWakeUpRobotResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/TimedBlinkEffectRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsTimedBlinkEffectRequest* = object
  ## @brief Preserve original leds as pal_device_msgs/LedGroup.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leds`*: Ros1Pal_device_msgsLedGroup
  ## @brief Preserve original firstColor as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `firstColor`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original secondColor as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `secondColor`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original firstColorDuration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `firstColorDuration`*: Ros1Duration
  ## @brief Preserve original secondColorDuration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `secondColorDuration`*: Ros1Duration
  ## @brief Preserve original effectDuration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effectDuration`*: Ros1Duration
  ## @brief Preserve original priority as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `priority`*: uint8
const Ros1Pal_device_msgsTimedBlinkEffectRequestMaximumWireBytes* = 61
const Ros1Pal_device_msgsTimedBlinkEffectRequestCodecIdentity* = "UWVMROS1_8ec92359735c7aabcb8896987a538b39e66996ae82805fb82e0dfc6099bd2fb9"
const Ros1Pal_device_msgsTimedBlinkEffectRequestNativeType* = "pal_device_msgs/TimedBlinkEffectRequest"
const Ros1Pal_device_msgsTimedBlinkEffectRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsTimedBlinkEffectRequest*(): Ros1Pal_device_msgsTimedBlinkEffectRequest =
  result.`leds` = initRos1Pal_device_msgsLedGroup()
  result.`firstColor` = initRos1Std_msgsColorRGBA()
  result.`secondColor` = initRos1Std_msgsColorRGBA()
  result.`firstColorDuration` = initRos1Duration()
  result.`secondColorDuration` = initRos1Duration()
  result.`effectDuration` = initRos1Duration()
  result.`priority` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsTimedBlinkEffectRequest; w: var Writer) =
  writeFields(value.`leds`,w)
  writeFields(value.`firstColor`,w)
  writeFields(value.`secondColor`,w)
  writeFields(value.`firstColorDuration`,w)
  writeFields(value.`secondColorDuration`,w)
  writeFields(value.`effectDuration`,w)
  putInteger(w,value.`priority`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsTimedBlinkEffectRequest*(r: var Reader): Ros1Pal_device_msgsTimedBlinkEffectRequest =
  result = initRos1Pal_device_msgsTimedBlinkEffectRequest()
  result.`leds` = readRos1Pal_device_msgsLedGroup(r)
  result.`firstColor` = readRos1Std_msgsColorRGBA(r)
  result.`secondColor` = readRos1Std_msgsColorRGBA(r)
  result.`firstColorDuration` = readRos1Duration(r)
  result.`secondColorDuration` = readRos1Duration(r)
  result.`effectDuration` = readRos1Duration(r)
  result.`priority` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsTimedBlinkEffectRequest): seq[byte] =
  var w = initWriter(61)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsTimedBlinkEffectRequest*(b: seq[byte]): Ros1Pal_device_msgsTimedBlinkEffectRequest =
  var r = initReader(b,61)
  result = readRos1Pal_device_msgsTimedBlinkEffectRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/TimedBlinkEffectResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsTimedBlinkEffectResponse* = object
  ## @brief Preserve original effectId as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effectId`*: uint32
const Ros1Pal_device_msgsTimedBlinkEffectResponseMaximumWireBytes* = 4
const Ros1Pal_device_msgsTimedBlinkEffectResponseCodecIdentity* = "UWVMROS1_40ddabd6ab74343f2fd4be29e2987fcd382376d3d5f1873220524f47667b00bd"
const Ros1Pal_device_msgsTimedBlinkEffectResponseNativeType* = "pal_device_msgs/TimedBlinkEffectResponse"
const Ros1Pal_device_msgsTimedBlinkEffectResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsTimedBlinkEffectResponse*(): Ros1Pal_device_msgsTimedBlinkEffectResponse =
  result.`effectId` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsTimedBlinkEffectResponse; w: var Writer) =
  putInteger(w,value.`effectId`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsTimedBlinkEffectResponse*(r: var Reader): Ros1Pal_device_msgsTimedBlinkEffectResponse =
  result = initRos1Pal_device_msgsTimedBlinkEffectResponse()
  result.`effectId` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsTimedBlinkEffectResponse): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsTimedBlinkEffectResponse*(b: seq[byte]): Ros1Pal_device_msgsTimedBlinkEffectResponse =
  var r = initReader(b,4)
  result = readRos1Pal_device_msgsTimedBlinkEffectResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/TimedColourEffectRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsTimedColourEffectRequest* = object
  ## @brief Preserve original leds as pal_device_msgs/LedGroup.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leds`*: Ros1Pal_device_msgsLedGroup
  ## @brief Preserve original color as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `color`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original effectDuration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effectDuration`*: Ros1Duration
  ## @brief Preserve original priority as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `priority`*: uint8
const Ros1Pal_device_msgsTimedColourEffectRequestMaximumWireBytes* = 29
const Ros1Pal_device_msgsTimedColourEffectRequestCodecIdentity* = "UWVMROS1_ad05e8c9bbc7cececa0735b5828b81adcd042b7e738f346ffa758407cd20ded3"
const Ros1Pal_device_msgsTimedColourEffectRequestNativeType* = "pal_device_msgs/TimedColourEffectRequest"
const Ros1Pal_device_msgsTimedColourEffectRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsTimedColourEffectRequest*(): Ros1Pal_device_msgsTimedColourEffectRequest =
  result.`leds` = initRos1Pal_device_msgsLedGroup()
  result.`color` = initRos1Std_msgsColorRGBA()
  result.`effectDuration` = initRos1Duration()
  result.`priority` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsTimedColourEffectRequest; w: var Writer) =
  writeFields(value.`leds`,w)
  writeFields(value.`color`,w)
  writeFields(value.`effectDuration`,w)
  putInteger(w,value.`priority`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsTimedColourEffectRequest*(r: var Reader): Ros1Pal_device_msgsTimedColourEffectRequest =
  result = initRos1Pal_device_msgsTimedColourEffectRequest()
  result.`leds` = readRos1Pal_device_msgsLedGroup(r)
  result.`color` = readRos1Std_msgsColorRGBA(r)
  result.`effectDuration` = readRos1Duration(r)
  result.`priority` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsTimedColourEffectRequest): seq[byte] =
  var w = initWriter(29)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsTimedColourEffectRequest*(b: seq[byte]): Ros1Pal_device_msgsTimedColourEffectRequest =
  var r = initReader(b,29)
  result = readRos1Pal_device_msgsTimedColourEffectRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/TimedColourEffectResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsTimedColourEffectResponse* = object
  ## @brief Preserve original effectId as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effectId`*: uint32
const Ros1Pal_device_msgsTimedColourEffectResponseMaximumWireBytes* = 4
const Ros1Pal_device_msgsTimedColourEffectResponseCodecIdentity* = "UWVMROS1_2fe607c0e0a960342b47148f85c8d887b4fe51b065e05529cf540260890f9484"
const Ros1Pal_device_msgsTimedColourEffectResponseNativeType* = "pal_device_msgs/TimedColourEffectResponse"
const Ros1Pal_device_msgsTimedColourEffectResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsTimedColourEffectResponse*(): Ros1Pal_device_msgsTimedColourEffectResponse =
  result.`effectId` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsTimedColourEffectResponse; w: var Writer) =
  putInteger(w,value.`effectId`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsTimedColourEffectResponse*(r: var Reader): Ros1Pal_device_msgsTimedColourEffectResponse =
  result = initRos1Pal_device_msgsTimedColourEffectResponse()
  result.`effectId` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsTimedColourEffectResponse): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsTimedColourEffectResponse*(b: seq[byte]): Ros1Pal_device_msgsTimedColourEffectResponse =
  var r = initReader(b,4)
  result = readRos1Pal_device_msgsTimedColourEffectResponse(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/TimedFadeEffectRequest.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsTimedFadeEffectRequest* = object
  ## @brief Preserve original leds as pal_device_msgs/LedGroup.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `leds`*: Ros1Pal_device_msgsLedGroup
  ## @brief Preserve original firstColor as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `firstColor`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original secondColor as std_msgs/ColorRGBA.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `secondColor`*: Ros1Std_msgsColorRGBA
  ## @brief Preserve original colorChangeDuration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `colorChangeDuration`*: Ros1Duration
  ## @brief Preserve original reverseFade as bool.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `reverseFade`*: bool
  ## @brief Preserve original effectDuration as duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effectDuration`*: Ros1Duration
  ## @brief Preserve original priority as uint8.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `priority`*: uint8
const Ros1Pal_device_msgsTimedFadeEffectRequestMaximumWireBytes* = 54
const Ros1Pal_device_msgsTimedFadeEffectRequestCodecIdentity* = "UWVMROS1_a23170818bde569a005dff556b11553e7973cb7e8c126a5fd292daca2dafe458"
const Ros1Pal_device_msgsTimedFadeEffectRequestNativeType* = "pal_device_msgs/TimedFadeEffectRequest"
const Ros1Pal_device_msgsTimedFadeEffectRequestNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsTimedFadeEffectRequest*(): Ros1Pal_device_msgsTimedFadeEffectRequest =
  result.`leds` = initRos1Pal_device_msgsLedGroup()
  result.`firstColor` = initRos1Std_msgsColorRGBA()
  result.`secondColor` = initRos1Std_msgsColorRGBA()
  result.`colorChangeDuration` = initRos1Duration()
  result.`reverseFade` = false
  result.`effectDuration` = initRos1Duration()
  result.`priority` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsTimedFadeEffectRequest; w: var Writer) =
  writeFields(value.`leds`,w)
  writeFields(value.`firstColor`,w)
  writeFields(value.`secondColor`,w)
  writeFields(value.`colorChangeDuration`,w)
  putBool(w,value.`reverseFade`)
  writeFields(value.`effectDuration`,w)
  putInteger(w,value.`priority`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsTimedFadeEffectRequest*(r: var Reader): Ros1Pal_device_msgsTimedFadeEffectRequest =
  result = initRos1Pal_device_msgsTimedFadeEffectRequest()
  result.`leds` = readRos1Pal_device_msgsLedGroup(r)
  result.`firstColor` = readRos1Std_msgsColorRGBA(r)
  result.`secondColor` = readRos1Std_msgsColorRGBA(r)
  result.`colorChangeDuration` = readRos1Duration(r)
  result.`reverseFade` = getBool(r)
  result.`effectDuration` = readRos1Duration(r)
  result.`priority` = getInteger(r,uint8)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsTimedFadeEffectRequest): seq[byte] =
  var w = initWriter(54)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsTimedFadeEffectRequest*(b: seq[byte]): Ros1Pal_device_msgsTimedFadeEffectRequest =
  var r = initReader(b,54)
  result = readRos1Pal_device_msgsTimedFadeEffectRequest(r)
  finish(r)
## @brief Own every original field of ROS1 pal_device_msgs/TimedFadeEffectResponse.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros1Pal_device_msgsTimedFadeEffectResponse* = object
  ## @brief Preserve original effectId as uint32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `effectId`*: uint32
const Ros1Pal_device_msgsTimedFadeEffectResponseMaximumWireBytes* = 4
const Ros1Pal_device_msgsTimedFadeEffectResponseCodecIdentity* = "UWVMROS1_75811f0336a7e87b571ddbdb8a062b120b60b4b142c63e7af328fe9c4ea9ae15"
const Ros1Pal_device_msgsTimedFadeEffectResponseNativeType* = "pal_device_msgs/TimedFadeEffectResponse"
const Ros1Pal_device_msgsTimedFadeEffectResponseNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos1Pal_device_msgsTimedFadeEffectResponse*(): Ros1Pal_device_msgsTimedFadeEffectResponse =
  result.`effectId` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros1Pal_device_msgsTimedFadeEffectResponse; w: var Writer) =
  putInteger(w,value.`effectId`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos1Pal_device_msgsTimedFadeEffectResponse*(r: var Reader): Ros1Pal_device_msgsTimedFadeEffectResponse =
  result = initRos1Pal_device_msgsTimedFadeEffectResponse()
  result.`effectId` = getInteger(r,uint32)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros1Pal_device_msgsTimedFadeEffectResponse): seq[byte] =
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos1Pal_device_msgsTimedFadeEffectResponse*(b: seq[byte]): Ros1Pal_device_msgsTimedFadeEffectResponse =
  var r = initReader(b,4)
  result = readRos1Pal_device_msgsTimedFadeEffectResponse(r)
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
