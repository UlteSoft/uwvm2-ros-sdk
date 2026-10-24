## UWVM_COMPLETE_FIELD_CONTRACTS
## @details Field domains below come from the unchanged canonical source catalog.
## @file records.nim
## @brief Provide the complete hello_robot mobile_fjt_humble canonical value surface.
## @details The original 17 record catalog retains field order, constants, defaults and quotas.
## Borrowed values and buffers must remain stable while a conversion is in progress.
## Malformed, truncated and trailing wire values are refused through the shared wire error contract.
## No declaration grants a capability or establishes a native ROS registry identity.
## Original declarations and units are retained in share/platform/hello_robot/catalogs.
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
## @brief Own every original field of ROS2 trajectory_msgs/msg/JointTrajectoryPoint.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Trajectory_msgsMsgJointTrajectoryPoint* = object
  ## @brief Preserve original positions as float64.
  ## @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `positions`*: seq[float64]
  ## @brief Preserve original velocities as float64.
  ## @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `velocities`*: seq[float64]
  ## @brief Preserve original accelerations as float64.
  ## @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `accelerations`*: seq[float64]
  ## @brief Preserve original effort as float64.
  ## @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `effort`*: seq[float64]
  ## @brief Preserve original time_from_start as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `time_from_start`*: Ros2Builtin_interfacesMsgDuration
const Ros2Trajectory_msgsMsgJointTrajectoryPointMaximumWireBytes* = 280
const Ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity* = "UWVMROS1_a512b971211baa8604440e02a046b586e7970293242607002ceb89196c9d99b1"
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
  if value.`positions`.len > 8: fail(22)
  putInteger(w,uint32(value.`positions`.len))
  for e in value.`positions`:
    putFloat64(w,e)
  if value.`velocities`.len > 8: fail(22)
  putInteger(w,uint32(value.`velocities`.len))
  for e in value.`velocities`:
    putFloat64(w,e)
  if value.`accelerations`.len > 8: fail(22)
  putInteger(w,uint32(value.`accelerations`.len))
  for e in value.`accelerations`:
    putFloat64(w,e)
  if value.`effort`.len > 8: fail(22)
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
  if rawcount0 > 8: fail(22)
  let count0 = int(rawcount0)
  result.`positions` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`positions`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`velocities` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`velocities`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`accelerations` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`accelerations`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`effort` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`effort`[i] = getFloat64(r)
  result.`time_from_start` = readRos2Builtin_interfacesMsgDuration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Trajectory_msgsMsgJointTrajectoryPoint): seq[byte] =
  var w = initWriter(280)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Trajectory_msgsMsgJointTrajectoryPoint*(b: seq[byte]): Ros2Trajectory_msgsMsgJointTrajectoryPoint =
  var r = initReader(b,280)
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
  ## @details At most 8 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `joint_names`*: seq[string]
  ## @brief Preserve original points as trajectory_msgs/msg/JointTrajectoryPoint.
  ## @details At most 1 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `points`*: seq[Ros2Trajectory_msgsMsgJointTrajectoryPoint]
const Ros2Trajectory_msgsMsgJointTrajectoryMaximumWireBytes* = 1484
const Ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity* = "UWVMROS1_e32bd7016b5fefcab6adeb42072e2d56c45d4b9f7cb372bdb5bfac97abf8cb77"
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
  if value.`joint_names`.len > 8: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,128)
  if value.`points`.len > 1: fail(22)
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
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 1: fail(22)
  let count2 = int(rawcount2)
  result.`points` = newSeq[Ros2Trajectory_msgsMsgJointTrajectoryPoint](count2)
  for i in 0..<count2:
    result.`points`[i] = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Trajectory_msgsMsgJointTrajectory): seq[byte] =
  var w = initWriter(1484)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Trajectory_msgsMsgJointTrajectory*(b: seq[byte]): Ros2Trajectory_msgsMsgJointTrajectory =
  var r = initReader(b,1484)
  result = readRos2Trajectory_msgsMsgJointTrajectory(r)
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
## @brief Own every original field of ROS2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint* = object
  ## @brief Preserve original transforms as geometry_msgs/msg/Transform.
  ## @details At most 1 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `transforms`*: seq[Ros2Geometry_msgsMsgTransform]
  ## @brief Preserve original velocities as geometry_msgs/msg/Twist.
  ## @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `velocities`*: seq[Ros2Geometry_msgsMsgTwist]
  ## @brief Preserve original accelerations as geometry_msgs/msg/Twist.
  ## @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `accelerations`*: seq[Ros2Geometry_msgsMsgTwist]
  ## @brief Preserve original time_from_start as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `time_from_start`*: Ros2Builtin_interfacesMsgDuration
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointMaximumWireBytes* = 844
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodecIdentity* = "UWVMROS1_4b4b6ba78f11918fcdc138544f7ef1a140d1fc51b385349ab1ad5716472c3daf"
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointNativeType* = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint"
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint*(): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
  result.`transforms` = @[]
  result.`velocities` = @[]
  result.`accelerations` = @[]
  result.`time_from_start` = initRos2Builtin_interfacesMsgDuration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; w: var Writer) =
  if value.`transforms`.len > 1: fail(22)
  putInteger(w,uint32(value.`transforms`.len))
  for e in value.`transforms`:
    writeFields(e,w)
  if value.`velocities`.len > 8: fail(22)
  putInteger(w,uint32(value.`velocities`.len))
  for e in value.`velocities`:
    writeFields(e,w)
  if value.`accelerations`.len > 8: fail(22)
  putInteger(w,uint32(value.`accelerations`.len))
  for e in value.`accelerations`:
    writeFields(e,w)
  writeFields(value.`time_from_start`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint*(r: var Reader): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
  result = initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 1: fail(22)
  let count0 = int(rawcount0)
  result.`transforms` = newSeq[Ros2Geometry_msgsMsgTransform](count0)
  for i in 0..<count0:
    result.`transforms`[i] = readRos2Geometry_msgsMsgTransform(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`velocities` = newSeq[Ros2Geometry_msgsMsgTwist](count1)
  for i in 0..<count1:
    result.`velocities`[i] = readRos2Geometry_msgsMsgTwist(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`accelerations` = newSeq[Ros2Geometry_msgsMsgTwist](count2)
  for i in 0..<count2:
    result.`accelerations`[i] = readRos2Geometry_msgsMsgTwist(r)
  result.`time_from_start` = readRos2Builtin_interfacesMsgDuration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint): seq[byte] =
  var w = initWriter(844)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint*(b: seq[byte]): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
  var r = initReader(b,844)
  result = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r)
  finish(r)
## @brief Own every original field of ROS2 trajectory_msgs/msg/MultiDOFJointTrajectory.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Trajectory_msgsMsgMultiDOFJointTrajectory* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original joint_names as string.
  ## @details At most 8 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `joint_names`*: seq[string]
  ## @brief Preserve original points as trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  ## @details At most 1 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `points`*: seq[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint]
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryMaximumWireBytes* = 2048
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodecIdentity* = "UWVMROS1_b822a2d5db9b83e916dcc9db4932952a314773ef53c9fbaf825902e0eb7c8cb5"
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryNativeType* = "trajectory_msgs/msg/MultiDOFJointTrajectory"
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Trajectory_msgsMsgMultiDOFJointTrajectory*(): Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_names` = @[]
  result.`points` = @[]
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 8: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,128)
  if value.`points`.len > 1: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Trajectory_msgsMsgMultiDOFJointTrajectory*(r: var Reader): Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
  result = initRos2Trajectory_msgsMsgMultiDOFJointTrajectory()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 1: fail(22)
  let count2 = int(rawcount2)
  result.`points` = newSeq[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint](count2)
  for i in 0..<count2:
    result.`points`[i] = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory): seq[byte] =
  var w = initWriter(2048)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory*(b: seq[byte]): Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
  var r = initReader(b,2048)
  result = readRos2Trajectory_msgsMsgMultiDOFJointTrajectory(r)
  finish(r)
## @brief Own every original field of ROS2 control_msgs/msg/JointTolerance.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Control_msgsMsgJointTolerance* = object
  ## @brief Preserve original name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `name`*: string
  ## @brief Preserve original position as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `position`*: float64
  ## @brief Preserve original velocity as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `velocity`*: float64
  ## @brief Preserve original acceleration as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `acceleration`*: float64
const Ros2Control_msgsMsgJointToleranceMaximumWireBytes* = 156
const Ros2Control_msgsMsgJointToleranceCodecIdentity* = "UWVMROS1_3864af88029b3b1f51907b3da63d2d821104c29b9469a146a5a34f73f3598b8a"
const Ros2Control_msgsMsgJointToleranceNativeType* = "control_msgs/msg/JointTolerance"
const Ros2Control_msgsMsgJointToleranceNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Control_msgsMsgJointTolerance*(): Ros2Control_msgsMsgJointTolerance =
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`acceleration` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Control_msgsMsgJointTolerance; w: var Writer) =
  putString(w,value.`name`,128)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`acceleration`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Control_msgsMsgJointTolerance*(r: var Reader): Ros2Control_msgsMsgJointTolerance =
  result = initRos2Control_msgsMsgJointTolerance()
  result.`name` = getString(r,128)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`acceleration` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Control_msgsMsgJointTolerance): seq[byte] =
  var w = initWriter(156)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Control_msgsMsgJointTolerance*(b: seq[byte]): Ros2Control_msgsMsgJointTolerance =
  var r = initReader(b,156)
  result = readRos2Control_msgsMsgJointTolerance(r)
  finish(r)
## @brief Own every original field of ROS2 control_msgs/msg/JointComponentTolerance.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Control_msgsMsgJointComponentTolerance* = object
  ## @brief Preserve original joint_name as string.
  ## @details Strict UTF-8 without NUL; at most 128 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `joint_name`*: string
  ## @brief Preserve original component as uint16.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `component`*: uint16
  ## @brief Preserve original position as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `position`*: float64
  ## @brief Preserve original velocity as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `velocity`*: float64
  ## @brief Preserve original acceleration as float64.
  ## @details Finite IEEE float64 values are required by the canonical profile. Physical units remain those of
  ## the original declaration; no additional model limit is inferred.
  `acceleration`*: float64
const Ros2Control_msgsMsgJointComponentToleranceMaximumWireBytes* = 158
const Ros2Control_msgsMsgJointComponentToleranceCodecIdentity* = "UWVMROS1_8a10f659b38feae6dfcf89818d35a164743b02c0e5cfe2d86aae7eda56e914fb"
const Ros2Control_msgsMsgJointComponentToleranceNativeType* = "control_msgs/msg/JointComponentTolerance"
const Ros2Control_msgsMsgJointComponentToleranceNativeIdentity* = ""
const Ros2Control_msgsMsgJointComponentTolerance_X_AXIS*: uint16 = 1'u16
const Ros2Control_msgsMsgJointComponentTolerance_Y_AXIS*: uint16 = 2'u16
const Ros2Control_msgsMsgJointComponentTolerance_Z_AXIS*: uint16 = 3'u16
const Ros2Control_msgsMsgJointComponentTolerance_TRANSLATION*: uint16 = 4'u16
const Ros2Control_msgsMsgJointComponentTolerance_ROTATION*: uint16 = 5'u16
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Control_msgsMsgJointComponentTolerance*(): Ros2Control_msgsMsgJointComponentTolerance =
  result.`joint_name` = ""
  result.`component` = 0
  result.`position` = 0
  result.`velocity` = 0
  result.`acceleration` = 0
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Control_msgsMsgJointComponentTolerance; w: var Writer) =
  putString(w,value.`joint_name`,128)
  putInteger(w,value.`component`)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`acceleration`)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Control_msgsMsgJointComponentTolerance*(r: var Reader): Ros2Control_msgsMsgJointComponentTolerance =
  result = initRos2Control_msgsMsgJointComponentTolerance()
  result.`joint_name` = getString(r,128)
  result.`component` = getInteger(r,uint16)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`acceleration` = getFloat64(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Control_msgsMsgJointComponentTolerance): seq[byte] =
  var w = initWriter(158)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Control_msgsMsgJointComponentTolerance*(b: seq[byte]): Ros2Control_msgsMsgJointComponentTolerance =
  var r = initReader(b,158)
  result = readRos2Control_msgsMsgJointComponentTolerance(r)
  finish(r)
## @brief Own every original field of ROS2 control_msgs/action/FollowJointTrajectory_Goal.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Control_msgsActionFollowJointTrajectory_Goal* = object
  ## @brief Preserve original trajectory as trajectory_msgs/msg/JointTrajectory.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `trajectory`*: Ros2Trajectory_msgsMsgJointTrajectory
  ## @brief Preserve original multi_dof_trajectory as trajectory_msgs/msg/MultiDOFJointTrajectory.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `multi_dof_trajectory`*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory
  ## @brief Preserve original path_tolerance as control_msgs/msg/JointTolerance.
  ## @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `path_tolerance`*: seq[Ros2Control_msgsMsgJointTolerance]
  ## @brief Preserve original component_path_tolerance as control_msgs/msg/JointComponentTolerance.
  ## @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `component_path_tolerance`*: seq[Ros2Control_msgsMsgJointComponentTolerance]
  ## @brief Preserve original goal_tolerance as control_msgs/msg/JointTolerance.
  ## @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `goal_tolerance`*: seq[Ros2Control_msgsMsgJointTolerance]
  ## @brief Preserve original component_goal_tolerance as control_msgs/msg/JointComponentTolerance.
  ## @details At most 8 logical elements. Physical units remain those of the original declaration; no additional
  ## model limit is inferred.
  `component_goal_tolerance`*: seq[Ros2Control_msgsMsgJointComponentTolerance]
  ## @brief Preserve original goal_time_tolerance as builtin_interfaces/msg/Duration.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `goal_time_tolerance`*: Ros2Builtin_interfacesMsgDuration
const Ros2Control_msgsActionFollowJointTrajectory_GoalMaximumWireBytes* = 8580
const Ros2Control_msgsActionFollowJointTrajectory_GoalCodecIdentity* = "UWVMROS1_fa8334eb129cc91c50febaccfebb371f6fbdd82188d6301823344d6664300018"
const Ros2Control_msgsActionFollowJointTrajectory_GoalNativeType* = "control_msgs/action/FollowJointTrajectory_Goal"
const Ros2Control_msgsActionFollowJointTrajectory_GoalNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Control_msgsActionFollowJointTrajectory_Goal*(): Ros2Control_msgsActionFollowJointTrajectory_Goal =
  result.`trajectory` = initRos2Trajectory_msgsMsgJointTrajectory()
  result.`multi_dof_trajectory` = initRos2Trajectory_msgsMsgMultiDOFJointTrajectory()
  result.`path_tolerance` = @[]
  result.`component_path_tolerance` = @[]
  result.`goal_tolerance` = @[]
  result.`component_goal_tolerance` = @[]
  result.`goal_time_tolerance` = initRos2Builtin_interfacesMsgDuration()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Control_msgsActionFollowJointTrajectory_Goal; w: var Writer) =
  writeFields(value.`trajectory`,w)
  writeFields(value.`multi_dof_trajectory`,w)
  if value.`path_tolerance`.len > 8: fail(22)
  putInteger(w,uint32(value.`path_tolerance`.len))
  for e in value.`path_tolerance`:
    writeFields(e,w)
  if value.`component_path_tolerance`.len > 8: fail(22)
  putInteger(w,uint32(value.`component_path_tolerance`.len))
  for e in value.`component_path_tolerance`:
    writeFields(e,w)
  if value.`goal_tolerance`.len > 8: fail(22)
  putInteger(w,uint32(value.`goal_tolerance`.len))
  for e in value.`goal_tolerance`:
    writeFields(e,w)
  if value.`component_goal_tolerance`.len > 8: fail(22)
  putInteger(w,uint32(value.`component_goal_tolerance`.len))
  for e in value.`component_goal_tolerance`:
    writeFields(e,w)
  writeFields(value.`goal_time_tolerance`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Control_msgsActionFollowJointTrajectory_Goal*(r: var Reader): Ros2Control_msgsActionFollowJointTrajectory_Goal =
  result = initRos2Control_msgsActionFollowJointTrajectory_Goal()
  result.`trajectory` = readRos2Trajectory_msgsMsgJointTrajectory(r)
  result.`multi_dof_trajectory` = readRos2Trajectory_msgsMsgMultiDOFJointTrajectory(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`path_tolerance` = newSeq[Ros2Control_msgsMsgJointTolerance](count2)
  for i in 0..<count2:
    result.`path_tolerance`[i] = readRos2Control_msgsMsgJointTolerance(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`component_path_tolerance` = newSeq[Ros2Control_msgsMsgJointComponentTolerance](count3)
  for i in 0..<count3:
    result.`component_path_tolerance`[i] = readRos2Control_msgsMsgJointComponentTolerance(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 8: fail(22)
  let count4 = int(rawcount4)
  result.`goal_tolerance` = newSeq[Ros2Control_msgsMsgJointTolerance](count4)
  for i in 0..<count4:
    result.`goal_tolerance`[i] = readRos2Control_msgsMsgJointTolerance(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 8: fail(22)
  let count5 = int(rawcount5)
  result.`component_goal_tolerance` = newSeq[Ros2Control_msgsMsgJointComponentTolerance](count5)
  for i in 0..<count5:
    result.`component_goal_tolerance`[i] = readRos2Control_msgsMsgJointComponentTolerance(r)
  result.`goal_time_tolerance` = readRos2Builtin_interfacesMsgDuration(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Control_msgsActionFollowJointTrajectory_Goal): seq[byte] =
  var w = initWriter(8580)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Control_msgsActionFollowJointTrajectory_Goal*(b: seq[byte]): Ros2Control_msgsActionFollowJointTrajectory_Goal =
  var r = initReader(b,8580)
  result = readRos2Control_msgsActionFollowJointTrajectory_Goal(r)
  finish(r)
## @brief Own every original field of ROS2 control_msgs/action/FollowJointTrajectory_Result.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Control_msgsActionFollowJointTrajectory_Result* = object
  ## @brief Preserve original error_code as int32.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `error_code`*: int32
  ## @brief Preserve original error_string as string.
  ## @details Strict UTF-8 without NUL; at most 256 bytes per element. Physical units remain those of the
  ## original declaration; no additional model limit is inferred.
  `error_string`*: string
const Ros2Control_msgsActionFollowJointTrajectory_ResultMaximumWireBytes* = 264
const Ros2Control_msgsActionFollowJointTrajectory_ResultCodecIdentity* = "UWVMROS1_df1e08076a5c725b865cc8807462d9ccf9577df11cbb71fcc0d280d77d0e5649"
const Ros2Control_msgsActionFollowJointTrajectory_ResultNativeType* = "control_msgs/action/FollowJointTrajectory_Result"
const Ros2Control_msgsActionFollowJointTrajectory_ResultNativeIdentity* = ""
const Ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL*: int32 = 0'i32
const Ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL*: int32 = -1'i32
const Ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS*: int32 = -2'i32
const Ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP*: int32 = -3'i32
const Ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED*: int32 = -4'i32
const Ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED*: int32 = -5'i32
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Control_msgsActionFollowJointTrajectory_Result*(): Ros2Control_msgsActionFollowJointTrajectory_Result =
  result.`error_code` = 0
  result.`error_string` = ""
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Control_msgsActionFollowJointTrajectory_Result; w: var Writer) =
  putInteger(w,value.`error_code`)
  putString(w,value.`error_string`,256)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Control_msgsActionFollowJointTrajectory_Result*(r: var Reader): Ros2Control_msgsActionFollowJointTrajectory_Result =
  result = initRos2Control_msgsActionFollowJointTrajectory_Result()
  result.`error_code` = getInteger(r,int32)
  result.`error_string` = getString(r,256)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Control_msgsActionFollowJointTrajectory_Result): seq[byte] =
  var w = initWriter(264)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Control_msgsActionFollowJointTrajectory_Result*(b: seq[byte]): Ros2Control_msgsActionFollowJointTrajectory_Result =
  var r = initReader(b,264)
  result = readRos2Control_msgsActionFollowJointTrajectory_Result(r)
  finish(r)
## @brief Own every original field of ROS2 control_msgs/action/FollowJointTrajectory_Feedback.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Control_msgsActionFollowJointTrajectory_Feedback* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original joint_names as string.
  ## @details At most 8 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `joint_names`*: seq[string]
  ## @brief Preserve original desired as trajectory_msgs/msg/JointTrajectoryPoint.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `desired`*: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ## @brief Preserve original actual as trajectory_msgs/msg/JointTrajectoryPoint.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `actual`*: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ## @brief Preserve original error as trajectory_msgs/msg/JointTrajectoryPoint.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `error`*: Ros2Trajectory_msgsMsgJointTrajectoryPoint
  ## @brief Preserve original multi_dof_joint_names as string.
  ## @details At most 1 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `multi_dof_joint_names`*: seq[string]
  ## @brief Preserve original multi_dof_desired as trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `multi_dof_desired`*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  ## @brief Preserve original multi_dof_actual as trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `multi_dof_actual`*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
  ## @brief Preserve original multi_dof_error as trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `multi_dof_error`*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackMaximumWireBytes* = 4708
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodecIdentity* = "UWVMROS1_ae2175027c3e45997d272b9610d15ef52cc665d23c0a371892d10b3d100e3529"
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackNativeType* = "control_msgs/action/FollowJointTrajectory_Feedback"
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackNativeIdentity* = ""
## @brief Construct a complete value with its declared native field defaults.
## @return New value; caller-supplied containers later assigned to it retain ordinary Nim sharing semantics.
proc initRos2Control_msgsActionFollowJointTrajectory_Feedback*(): Ros2Control_msgsActionFollowJointTrajectory_Feedback =
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_names` = @[]
  result.`desired` = initRos2Trajectory_msgsMsgJointTrajectoryPoint()
  result.`actual` = initRos2Trajectory_msgsMsgJointTrajectoryPoint()
  result.`error` = initRos2Trajectory_msgsMsgJointTrajectoryPoint()
  result.`multi_dof_joint_names` = @[]
  result.`multi_dof_desired` = initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  result.`multi_dof_actual` = initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  result.`multi_dof_error` = initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
## @brief Validate and append every nested field to the bounded writer.
## @param value Borrowed complete value, stable while this call runs.
## @param w Caller-owned stateful writer; discard it after any wire exception.
## @details No ROS call occurs; invalid domains or aggregate quotas raise the shared wire failure.
proc writeFields*(value: Ros2Control_msgsActionFollowJointTrajectory_Feedback; w: var Writer) =
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 8: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,128)
  writeFields(value.`desired`,w)
  writeFields(value.`actual`,w)
  writeFields(value.`error`,w)
  if value.`multi_dof_joint_names`.len > 1: fail(22)
  putInteger(w,uint32(value.`multi_dof_joint_names`.len))
  for e in value.`multi_dof_joint_names`:
    putString(w,e,128)
  writeFields(value.`multi_dof_desired`,w)
  writeFields(value.`multi_dof_actual`,w)
  writeFields(value.`multi_dof_error`,w)
## @brief Read complete nested fields at the current bounded reader position.
## @param r Borrowed stateful reader; discard on failure, and require end-of-frame at the public decoder.
## @return New complete value, or the shared wire exception for invalid/bounded input.
proc readRos2Control_msgsActionFollowJointTrajectory_Feedback*(r: var Reader): Ros2Control_msgsActionFollowJointTrajectory_Feedback =
  result = initRos2Control_msgsActionFollowJointTrajectory_Feedback()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,128)
  result.`desired` = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
  result.`actual` = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
  result.`error` = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 1: fail(22)
  let count5 = int(rawcount5)
  result.`multi_dof_joint_names` = newSeq[string](count5)
  for i in 0..<count5:
    result.`multi_dof_joint_names`[i] = getString(r,128)
  result.`multi_dof_desired` = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r)
  result.`multi_dof_actual` = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r)
  result.`multi_dof_error` = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r)
## @brief Encode a complete value into a newly allocated canonical byte sequence.
## @param value Borrowed full record, unchanged while conversion runs.
## @return Owned complete bytes; a wire failure exposes no partial output.
proc encode*(value: Ros2Control_msgsActionFollowJointTrajectory_Feedback): seq[byte] =
  var w = initWriter(4708)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Control_msgsActionFollowJointTrajectory_Feedback*(b: seq[byte]): Ros2Control_msgsActionFollowJointTrajectory_Feedback =
  var r = initReader(b,4708)
  result = readRos2Control_msgsActionFollowJointTrajectory_Feedback(r)
  finish(r)
## @brief Own every original field of ROS2 sensor_msgs/msg/JointState.
## @details Values retain declared defaults and full nested/array capacities; local construction grants no
## authority.
type Ros2Sensor_msgsMsgJointState* = object
  ## @brief Preserve original header as std_msgs/msg/Header.
  ## @details Physical units remain those of the original declaration; no additional model limit is inferred.
  `header`*: Ros2Std_msgsMsgHeader
  ## @brief Preserve original name as string.
  ## @details At most 8 logical elements. Strict UTF-8 without NUL; at most 128 bytes per element. Physical
  ## units remain those of the original declaration; no additional model limit is inferred.
  `name`*: seq[string]
  ## @brief Preserve original position as float64.
  ## @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `position`*: seq[float64]
  ## @brief Preserve original velocity as float64.
  ## @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `velocity`*: seq[float64]
  ## @brief Preserve original effort as float64.
  ## @details At most 8 logical elements. Finite IEEE float64 values are required by the canonical profile.
  ## Physical units remain those of the original declaration; no additional model limit is inferred.
  `effort`*: seq[float64]
const Ros2Sensor_msgsMsgJointStateMaximumWireBytes* = 1404
const Ros2Sensor_msgsMsgJointStateCodecIdentity* = "UWVMROS1_bba20c36db70a98b594ba603d05b8a979038fb95b701221ba3b8689f55b06b11"
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
  if value.`name`.len > 8: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,128)
  if value.`position`.len > 8: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    putFloat64(w,e)
  if value.`velocity`.len > 8: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    putFloat64(w,e)
  if value.`effort`.len > 8: fail(22)
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
  if rawcount1 > 8: fail(22)
  let count1 = int(rawcount1)
  result.`name` = newSeq[string](count1)
  for i in 0..<count1:
    result.`name`[i] = getString(r,128)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`position` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`position`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 8: fail(22)
  let count3 = int(rawcount3)
  result.`velocity` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`velocity`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 8: fail(22)
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
  var w = initWriter(1404)
  writeFields(value,w)
  w.bytes
## @brief Decode one exact canonical frame and require complete consumption.
## @param b Borrowed bytes, stable for the call; truncated/trailing data is refused.
## @return New complete record, or the shared wire failure before a value is returned.
proc decodeRos2Sensor_msgsMsgJointState*(b: seq[byte]): Ros2Sensor_msgsMsgJointState =
  var r = initReader(b,1404)
  result = readRos2Sensor_msgsMsgJointState(r)
  finish(r)
