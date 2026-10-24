## @file records.nim
## @brief Complete universal_robots values and adapters for the selected original interface catalog.
## @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
## defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
## roles require the separately admitted SDK owner.
## @see share/platform/universal_robots/domains/universal-robots-polyscopex-complete.ir.json
## @see document/platform/universal_robots/en_US/README.md

# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros2Builtin_interfacesMsgTime* = object
  ## ``@brief Complete ROS 2 builtin_interfaces/msg/Time value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..8 bytes and is identified by``
  ## ``UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `sec`*: int32 ## @brief builtin_interfaces/msg/Time.sec: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md
  `nanosec`*: uint32 ## @brief builtin_interfaces/msg/Time.nanosec: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md
const Ros2Builtin_interfacesMsgTimeMaximumWireBytes* = 8 ## @brief Maximum canonical extent of
## builtin_interfaces/msg/Time in bytes.
## @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md
const Ros2Builtin_interfacesMsgTimeCodecIdentity* = "UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7" ## @brief Canonical codec
## identity of
## builtin_interfaces/msg/Time.
## @details Exact identity UWVMROS1_0fd520c23fd8cb06e2c27292fdc20694732fa9332d452fc3fa31da90f7605fb7 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md
const Ros2Builtin_interfacesMsgTimeNativeType* = "builtin_interfaces/msg/Time" ## @brief Original ROS type name for
## builtin_interfaces/msg/Time.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md
const Ros2Builtin_interfacesMsgTimeNativeIdentity* = "" ## @brief Selected original native identity for
## builtin_interfaces/msg/Time.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Builtin_interfacesMsgTime*(): Ros2Builtin_interfacesMsgTime =
  ## ``@brief Construct the declared defaults of builtin_interfaces/msg/Time.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md``
  result.`sec` = 0
  result.`nanosec` = 0
proc writeFields*(value: Ros2Builtin_interfacesMsgTime; w: var Writer) =
  ## ``@brief Append every canonical field of builtin_interfaces/msg/Time.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md``
  if value.`nanosec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nanosec`)
proc readRos2Builtin_interfacesMsgTime*(r: var Reader): Ros2Builtin_interfacesMsgTime =
  ## ``@brief Read the ordered canonical fields of builtin_interfaces/msg/Time.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Builtin_interfacesMsgTime()
  result.`sec` = getInteger(r,int32)
  result.`nanosec` = getInteger(r,uint32)
  if result.`nanosec` >= 1000000000: fail(22)
proc encode*(value: Ros2Builtin_interfacesMsgTime): seq[byte] =
  ## ``@brief Encode one complete builtin_interfaces/msg/Time value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Builtin_interfacesMsgTime*(b: seq[byte]): Ros2Builtin_interfacesMsgTime =
  ## ``@brief Decode exactly one complete builtin_interfaces/msg/Time value.``
  ## ``@details Require the complete 8..8-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Builtin_interfacesMsgTime; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,8)
  result = readRos2Builtin_interfacesMsgTime(r)
  finish(r)
type Ros2Geometry_msgsMsgPoint* = object
  ## ``@brief Complete ROS 2 geometry_msgs/msg/Point value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 24..24 bytes and is identified by``
  ## ``UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float64 ## @brief geometry_msgs/msg/Point.x: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md
  `y`*: float64 ## @brief geometry_msgs/msg/Point.y: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md
  `z`*: float64 ## @brief geometry_msgs/msg/Point.z: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgPointMaximumWireBytes* = 24 ## @brief Maximum canonical extent of geometry_msgs/msg/Point in
## bytes.
## @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgPointCodecIdentity* = "UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616" ## @brief Canonical codec
## identity of
## geometry_msgs/msg/Point.
## @details Exact identity UWVMROS1_80f43d054abe333673c940c6d0fd88e8e26cea4a1cff53ff789cccaa38240616 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgPointNativeType* = "geometry_msgs/msg/Point" ## @brief Original ROS type name for
## geometry_msgs/msg/Point.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgPointNativeIdentity* = "" ## @brief Selected original native identity for
## geometry_msgs/msg/Point.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Geometry_msgsMsgPoint*(): Ros2Geometry_msgsMsgPoint =
  ## ``@brief Construct the declared defaults of geometry_msgs/msg/Point.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
proc writeFields*(value: Ros2Geometry_msgsMsgPoint; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/msg/Point.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md``
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
proc readRos2Geometry_msgsMsgPoint*(r: var Reader): Ros2Geometry_msgsMsgPoint =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/msg/Point.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Geometry_msgsMsgPoint()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
proc encode*(value: Ros2Geometry_msgsMsgPoint): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/msg/Point value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPoint*(b: seq[byte]): Ros2Geometry_msgsMsgPoint =
  ## ``@brief Decode exactly one complete geometry_msgs/msg/Point value.``
  ## ``@details Require the complete 24..24-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgPoint; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Geometry_msgsMsgPoint(r)
  finish(r)
type Ros2Geometry_msgsMsgQuaternion* = object
  ## ``@brief Complete ROS 2 geometry_msgs/msg/Quaternion value.``
  ## ``@details All 4 declared fields are retained in source order. The canonical representation``
  ## ``occupies 32..32 bytes and is identified by``
  ## ``UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float64 ## @brief geometry_msgs/msg/Quaternion.x: float64.
  ## @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
  ## instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md
  `y`*: float64 ## @brief geometry_msgs/msg/Quaternion.y: float64.
  ## @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
  ## instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md
  `z`*: float64 ## @brief geometry_msgs/msg/Quaternion.z: float64.
  ## @details Schema default 0.0. Encoding preserves the original field position and signedness; invalid bounds fail
  ## instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md
  `w`*: float64 ## @brief geometry_msgs/msg/Quaternion.w: float64.
  ## @details Schema default 1.0. Encoding preserves the original field position and signedness; invalid bounds fail
  ## instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgQuaternionMaximumWireBytes* = 32 ## @brief Maximum canonical extent of
## geometry_msgs/msg/Quaternion in bytes.
## @details The inclusive bound is 32 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgQuaternionCodecIdentity* = "UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672" ## @brief Canonical codec
## identity of
## geometry_msgs/msg/Quaternion.
## @details Exact identity UWVMROS1_34a32c3470cbfe2ff12340781a5bf22f6c370a8f5c06669f25a34321ade81672 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgQuaternionNativeType* = "geometry_msgs/msg/Quaternion" ## @brief Original ROS type name for
## geometry_msgs/msg/Quaternion.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgQuaternionNativeIdentity* = "" ## @brief Selected original native identity for
## geometry_msgs/msg/Quaternion.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Geometry_msgsMsgQuaternion*(): Ros2Geometry_msgsMsgQuaternion =
  ## ``@brief Construct the declared defaults of geometry_msgs/msg/Quaternion.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = cast[float64](0x0'u64)
  result.`y` = cast[float64](0x0'u64)
  result.`z` = cast[float64](0x0'u64)
  result.`w` = cast[float64](0x3ff0000000000000'u64)
proc writeFields*(value: Ros2Geometry_msgsMsgQuaternion; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/msg/Quaternion.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
  putFloat64(w,value.`w`)
proc readRos2Geometry_msgsMsgQuaternion*(r: var Reader): Ros2Geometry_msgsMsgQuaternion =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/msg/Quaternion.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Geometry_msgsMsgQuaternion()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
  result.`w` = getFloat64(r)
proc encode*(value: Ros2Geometry_msgsMsgQuaternion): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/msg/Quaternion value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(32)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgQuaternion*(b: seq[byte]): Ros2Geometry_msgsMsgQuaternion =
  ## ``@brief Decode exactly one complete geometry_msgs/msg/Quaternion value.``
  ## ``@details Require the complete 32..32-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgQuaternion; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,32)
  result = readRos2Geometry_msgsMsgQuaternion(r)
  finish(r)
type Ros2Geometry_msgsMsgPose* = object
  ## ``@brief Complete ROS 2 geometry_msgs/msg/Pose value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 56..56 bytes and is identified by``
  ## ``UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `position`*: Ros2Geometry_msgsMsgPoint ## @brief geometry_msgs/msg/Pose.position: geometry_msgs/msg/Point.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md
  `orientation`*: Ros2Geometry_msgsMsgQuaternion ## @brief geometry_msgs/msg/Pose.orientation:
  ## geometry_msgs/msg/Quaternion.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgPoseMaximumWireBytes* = 56 ## @brief Maximum canonical extent of geometry_msgs/msg/Pose in
## bytes.
## @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgPoseCodecIdentity* = "UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777" ## @brief Canonical codec
## identity of
## geometry_msgs/msg/Pose.
## @details Exact identity UWVMROS1_9468a10b8b2728fe71a370b4348ffe5e81b884ff957533f8700aa16e70b12777 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgPoseNativeType* = "geometry_msgs/msg/Pose" ## @brief Original ROS type name for
## geometry_msgs/msg/Pose.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgPoseNativeIdentity* = "" ## @brief Selected original native identity for
## geometry_msgs/msg/Pose.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Geometry_msgsMsgPose*(): Ros2Geometry_msgsMsgPose =
  ## ``@brief Construct the declared defaults of geometry_msgs/msg/Pose.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md``
  result.`position` = initRos2Geometry_msgsMsgPoint()
  result.`orientation` = initRos2Geometry_msgsMsgQuaternion()
proc writeFields*(value: Ros2Geometry_msgsMsgPose; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/msg/Pose.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`position`,w)
  writeFields(value.`orientation`,w)
proc readRos2Geometry_msgsMsgPose*(r: var Reader): Ros2Geometry_msgsMsgPose =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/msg/Pose.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Geometry_msgsMsgPose()
  result.`position` = readRos2Geometry_msgsMsgPoint(r)
  result.`orientation` = readRos2Geometry_msgsMsgQuaternion(r)
proc encode*(value: Ros2Geometry_msgsMsgPose): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/msg/Pose value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgPose*(b: seq[byte]): Ros2Geometry_msgsMsgPose =
  ## ``@brief Decode exactly one complete geometry_msgs/msg/Pose value.``
  ## ``@details Require the complete 56..56-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgPose; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,56)
  result = readRos2Geometry_msgsMsgPose(r)
  finish(r)
type Ros2Geometry_msgsMsgVector3* = object
  ## ``@brief Complete ROS 2 geometry_msgs/msg/Vector3 value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 24..24 bytes and is identified by``
  ## ``UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `x`*: float64 ## @brief geometry_msgs/msg/Vector3.x: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md
  `y`*: float64 ## @brief geometry_msgs/msg/Vector3.y: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md
  `z`*: float64 ## @brief geometry_msgs/msg/Vector3.z: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgVector3MaximumWireBytes* = 24 ## @brief Maximum canonical extent of geometry_msgs/msg/Vector3
## in bytes.
## @details The inclusive bound is 24 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgVector3CodecIdentity* = "UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e" ## @brief Canonical codec
## identity of
## geometry_msgs/msg/Vector3.
## @details Exact identity UWVMROS1_5adebf211fe375fba92c0628f9b8ebf05bff9ab22ddc4bbf00629167af295d5e binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgVector3NativeType* = "geometry_msgs/msg/Vector3" ## @brief Original ROS type name for
## geometry_msgs/msg/Vector3.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgVector3NativeIdentity* = "" ## @brief Selected original native identity for
## geometry_msgs/msg/Vector3.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Geometry_msgsMsgVector3*(): Ros2Geometry_msgsMsgVector3 =
  ## ``@brief Construct the declared defaults of geometry_msgs/msg/Vector3.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md``
  result.`x` = 0
  result.`y` = 0
  result.`z` = 0
proc writeFields*(value: Ros2Geometry_msgsMsgVector3; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/msg/Vector3.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md``
  putFloat64(w,value.`x`)
  putFloat64(w,value.`y`)
  putFloat64(w,value.`z`)
proc readRos2Geometry_msgsMsgVector3*(r: var Reader): Ros2Geometry_msgsMsgVector3 =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/msg/Vector3.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Geometry_msgsMsgVector3()
  result.`x` = getFloat64(r)
  result.`y` = getFloat64(r)
  result.`z` = getFloat64(r)
proc encode*(value: Ros2Geometry_msgsMsgVector3): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/msg/Vector3 value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(24)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgVector3*(b: seq[byte]): Ros2Geometry_msgsMsgVector3 =
  ## ``@brief Decode exactly one complete geometry_msgs/msg/Vector3 value.``
  ## ``@details Require the complete 24..24-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgVector3; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,24)
  result = readRos2Geometry_msgsMsgVector3(r)
  finish(r)
type Ros2Geometry_msgsMsgTwist* = object
  ## ``@brief Complete ROS 2 geometry_msgs/msg/Twist value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 48..48 bytes and is identified by``
  ## ``UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `linear`*: Ros2Geometry_msgsMsgVector3 ## @brief geometry_msgs/msg/Twist.linear: geometry_msgs/msg/Vector3.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md
  `angular`*: Ros2Geometry_msgsMsgVector3 ## @brief geometry_msgs/msg/Twist.angular: geometry_msgs/msg/Vector3.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgTwistMaximumWireBytes* = 48 ## @brief Maximum canonical extent of geometry_msgs/msg/Twist in
## bytes.
## @details The inclusive bound is 48 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgTwistCodecIdentity* = "UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e" ## @brief Canonical codec
## identity of
## geometry_msgs/msg/Twist.
## @details Exact identity UWVMROS1_1a6c18d19bb6853a2cff3b775974ba31f8e3674c1bbe566444ccabf0ef9d117e binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgTwistNativeType* = "geometry_msgs/msg/Twist" ## @brief Original ROS type name for
## geometry_msgs/msg/Twist.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgTwistNativeIdentity* = "" ## @brief Selected original native identity for
## geometry_msgs/msg/Twist.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Geometry_msgsMsgTwist*(): Ros2Geometry_msgsMsgTwist =
  ## ``@brief Construct the declared defaults of geometry_msgs/msg/Twist.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md``
  result.`linear` = initRos2Geometry_msgsMsgVector3()
  result.`angular` = initRos2Geometry_msgsMsgVector3()
proc writeFields*(value: Ros2Geometry_msgsMsgTwist; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/msg/Twist.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`linear`,w)
  writeFields(value.`angular`,w)
proc readRos2Geometry_msgsMsgTwist*(r: var Reader): Ros2Geometry_msgsMsgTwist =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/msg/Twist.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Geometry_msgsMsgTwist()
  result.`linear` = readRos2Geometry_msgsMsgVector3(r)
  result.`angular` = readRos2Geometry_msgsMsgVector3(r)
proc encode*(value: Ros2Geometry_msgsMsgTwist): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/msg/Twist value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(48)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgTwist*(b: seq[byte]): Ros2Geometry_msgsMsgTwist =
  ## ``@brief Decode exactly one complete geometry_msgs/msg/Twist value.``
  ## ``@details Require the complete 48..48-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgTwist; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,48)
  result = readRos2Geometry_msgsMsgTwist(r)
  finish(r)
type Ros2Std_msgsMsgHeader* = object
  ## ``@brief Complete ROS 2 std_msgs/msg/Header value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 12..140 bytes and is identified by``
  ## ``UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `stamp`*: Ros2Builtin_interfacesMsgTime ## @brief std_msgs/msg/Header.stamp: builtin_interfaces/msg/Time.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md
  `frame_id`*: string ## @brief std_msgs/msg/Header.frame_id: string; each string is 0..128 bytes; strict UTF-8 with no
  ## embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_msgsMsgHeaderMaximumWireBytes* = 140 ## @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
## @details The inclusive bound is 140 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_msgsMsgHeaderCodecIdentity* = "UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96" ## @brief Canonical codec
## identity of
## std_msgs/msg/Header.
## @details Exact identity UWVMROS1_ce081e9caac05e464c4cff0da5e94cad44014652c0ddf244ee6c35ac3b0d1e96 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_msgsMsgHeaderNativeType* = "std_msgs/msg/Header" ## @brief Original ROS type name for std_msgs/msg/Header.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_msgsMsgHeaderNativeIdentity* = "" ## @brief Selected original native identity for std_msgs/msg/Header.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Std_msgsMsgHeader*(): Ros2Std_msgsMsgHeader =
  ## ``@brief Construct the declared defaults of std_msgs/msg/Header.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md``
  result.`stamp` = initRos2Builtin_interfacesMsgTime()
  result.`frame_id` = ""
proc writeFields*(value: Ros2Std_msgsMsgHeader; w: var Writer) =
  ## ``@brief Append every canonical field of std_msgs/msg/Header.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`stamp`,w)
  putString(w,value.`frame_id`,128)
proc readRos2Std_msgsMsgHeader*(r: var Reader): Ros2Std_msgsMsgHeader =
  ## ``@brief Read the ordered canonical fields of std_msgs/msg/Header.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Std_msgsMsgHeader()
  result.`stamp` = readRos2Builtin_interfacesMsgTime(r)
  result.`frame_id` = getString(r,128)
proc encode*(value: Ros2Std_msgsMsgHeader): seq[byte] =
  ## ``@brief Encode one complete std_msgs/msg/Header value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(140)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_msgsMsgHeader*(b: seq[byte]): Ros2Std_msgsMsgHeader =
  ## ``@brief Decode exactly one complete std_msgs/msg/Header value.``
  ## ``@details Require the complete 12..140-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,140)
  result = readRos2Std_msgsMsgHeader(r)
  finish(r)
type Ros2Std_msgsMsgString* = object
  ## ``@brief Complete ROS 2 std_msgs/msg/String value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..1028 bytes and is identified by``
  ## ``UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `data`*: string ## @brief std_msgs/msg/String.data: string; each string is 0..1024 bytes; strict UTF-8 with no
  ## embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Std_msgsMsgString; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_msgsMsgStringMaximumWireBytes* = 1028 ## @brief Maximum canonical extent of std_msgs/msg/String in bytes.
## @details The inclusive bound is 1028 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Std_msgsMsgString; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_msgsMsgStringCodecIdentity* = "UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5" ## @brief Canonical codec
## identity of
## std_msgs/msg/String.
## @details Exact identity UWVMROS1_c48b5497cbf487f56eb073a982b93acd501c6bb72f0e9ef9dce2175ce7ac15c5 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Std_msgsMsgString; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_msgsMsgStringNativeType* = "std_msgs/msg/String" ## @brief Original ROS type name for std_msgs/msg/String.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Std_msgsMsgString; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_msgsMsgStringNativeIdentity* = "" ## @brief Selected original native identity for std_msgs/msg/String.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Std_msgsMsgString; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Std_msgsMsgString*(): Ros2Std_msgsMsgString =
  ## ``@brief Construct the declared defaults of std_msgs/msg/String.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_msgsMsgString; share/platform/ros/nim/API-CONTRACT.md``
  result.`data` = ""
proc writeFields*(value: Ros2Std_msgsMsgString; w: var Writer) =
  ## ``@brief Append every canonical field of std_msgs/msg/String.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_msgsMsgString; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`data`,1024)
proc readRos2Std_msgsMsgString*(r: var Reader): Ros2Std_msgsMsgString =
  ## ``@brief Read the ordered canonical fields of std_msgs/msg/String.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_msgsMsgString; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Std_msgsMsgString()
  result.`data` = getString(r,1024)
proc encode*(value: Ros2Std_msgsMsgString): seq[byte] =
  ## ``@brief Encode one complete std_msgs/msg/String value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_msgsMsgString; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1028)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_msgsMsgString*(b: seq[byte]): Ros2Std_msgsMsgString =
  ## ``@brief Decode exactly one complete std_msgs/msg/String value.``
  ## ``@details Require the complete 4..1028-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_msgsMsgString; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1028)
  result = readRos2Std_msgsMsgString(r)
  finish(r)
type Ros2UrinterfacesMsgRobotMode* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/RobotMode value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 13..141 bytes and is identified by``
  ## ``UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/RobotMode.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
  `data`*: int8 ## @brief urinterfaces/msg/RobotMode.data: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotModeMaximumWireBytes* = 141 ## @brief Maximum canonical extent of
## urinterfaces/msg/RobotMode in bytes.
## @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotModeCodecIdentity* = "UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea" ## @brief Canonical codec
## identity of
## urinterfaces/msg/RobotMode.
## @details Exact identity UWVMROS1_a16ec0ed8caa1a2b48cd4116d88877911921848469cd139f4783e4f2c549e7ea binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotModeNativeType* = "urinterfaces/msg/RobotMode" ## @brief Original ROS type name for
## urinterfaces/msg/RobotMode.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotModeNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/RobotMode.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotMode_DISCONNECTED*: int8 = 0'i8 ## @brief urinterfaces/msg/RobotMode.DISCONNECTED:
## original int8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotMode_CONFIRM_SAFETY*: int8 = 1'i8 ## @brief urinterfaces/msg/RobotMode.CONFIRM_SAFETY:
## original int8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotMode_BOOTING*: int8 = 2'i8 ## @brief urinterfaces/msg/RobotMode.BOOTING: original int8
## constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotMode_POWER_OFF*: int8 = 3'i8 ## @brief urinterfaces/msg/RobotMode.POWER_OFF: original int8
## constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotMode_POWER_ON*: int8 = 4'i8 ## @brief urinterfaces/msg/RobotMode.POWER_ON: original int8
## constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotMode_IDLE*: int8 = 5'i8 ## @brief urinterfaces/msg/RobotMode.IDLE: original int8 constant.
## @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotMode_BACKDRIVE*: int8 = 6'i8 ## @brief urinterfaces/msg/RobotMode.BACKDRIVE: original int8
## constant.
## @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotMode_RUNNING*: int8 = 7'i8 ## @brief urinterfaces/msg/RobotMode.RUNNING: original int8
## constant.
## @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRobotMode_UPDATING_FIRMWARE*: int8 = 8'i8 ## @brief
## urinterfaces/msg/RobotMode.UPDATING_FIRMWARE:
## original int8 constant.
## @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgRobotMode*(): Ros2UrinterfacesMsgRobotMode =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/RobotMode.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = 0
proc writeFields*(value: Ros2UrinterfacesMsgRobotMode; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/RobotMode.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putInteger(w,value.`data`)
proc readRos2UrinterfacesMsgRobotMode*(r: var Reader): Ros2UrinterfacesMsgRobotMode =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/RobotMode.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgRobotMode()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = getInteger(r,int8)
proc encode*(value: Ros2UrinterfacesMsgRobotMode): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/RobotMode value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(141)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgRobotMode*(b: seq[byte]): Ros2UrinterfacesMsgRobotMode =
  ## ``@brief Decode exactly one complete urinterfaces/msg/RobotMode value.``
  ## ``@details Require the complete 13..141-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgRobotMode; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,141)
  result = readRos2UrinterfacesMsgRobotMode(r)
  finish(r)
type Ros2UrinterfacesActionSetMode_Goal* = object
  ## ``@brief Complete ROS 2 urinterfaces/action/SetMode_Goal value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 15..143 bytes and is identified by``
  ## ``UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `target_robot_mode`*: Ros2UrinterfacesMsgRobotMode ## @brief urinterfaces/action/SetMode_Goal.target_robot_mode:
  ## urinterfaces/msg/RobotMode.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md
  `stop_program`*: bool ## @brief urinterfaces/action/SetMode_Goal.stop_program: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md
  `play_program`*: bool ## @brief urinterfaces/action/SetMode_Goal.play_program: bool.
  ## @details Schema default False. Encoding preserves the original field position and signedness; invalid bounds fail
  ## instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_GoalMaximumWireBytes* = 143 ## @brief Maximum canonical extent of
## urinterfaces/action/SetMode_Goal in bytes.
## @details The inclusive bound is 143 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_GoalCodecIdentity* = "UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09" ## @brief Canonical codec
## identity of
## urinterfaces/action/SetMode_Goal.
## @details Exact identity UWVMROS1_d1d998e217d6f3d3eefd8ffccecff8463580346150a59a1c7a2dac8d609e0e09 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_GoalNativeType* = "urinterfaces/action/SetMode_Goal" ## @brief Original ROS type name
## for
## urinterfaces/action/SetMode_Goal.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_GoalNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/action/SetMode_Goal.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesActionSetMode_Goal*(): Ros2UrinterfacesActionSetMode_Goal =
  ## ``@brief Construct the declared defaults of urinterfaces/action/SetMode_Goal.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md``
  result.`target_robot_mode` = initRos2UrinterfacesMsgRobotMode()
  result.`stop_program` = false
  result.`play_program` = false
proc writeFields*(value: Ros2UrinterfacesActionSetMode_Goal; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/action/SetMode_Goal.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`target_robot_mode`,w)
  putBool(w,value.`stop_program`)
  putBool(w,value.`play_program`)
proc readRos2UrinterfacesActionSetMode_Goal*(r: var Reader): Ros2UrinterfacesActionSetMode_Goal =
  ## ``@brief Read the ordered canonical fields of urinterfaces/action/SetMode_Goal.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesActionSetMode_Goal()
  result.`target_robot_mode` = readRos2UrinterfacesMsgRobotMode(r)
  result.`stop_program` = getBool(r)
  result.`play_program` = getBool(r)
proc encode*(value: Ros2UrinterfacesActionSetMode_Goal): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/action/SetMode_Goal value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(143)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesActionSetMode_Goal*(b: seq[byte]): Ros2UrinterfacesActionSetMode_Goal =
  ## ``@brief Decode exactly one complete urinterfaces/action/SetMode_Goal value.``
  ## ``@details Require the complete 15..143-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Goal; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,143)
  result = readRos2UrinterfacesActionSetMode_Goal(r)
  finish(r)
type Ros2UrinterfacesActionSetMode_Result* = object
  ## ``@brief Complete ROS 2 urinterfaces/action/SetMode_Result value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..261 bytes and is identified by``
  ## ``UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief urinterfaces/action/SetMode_Result.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md
  `message`*: string ## @brief urinterfaces/action/SetMode_Result.message: string; each string is 0..256 bytes; strict
  ## UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_ResultMaximumWireBytes* = 261 ## @brief Maximum canonical extent of
## urinterfaces/action/SetMode_Result in bytes.
## @details The inclusive bound is 261 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_ResultCodecIdentity* = "UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7" ## @brief Canonical codec
## identity of
## urinterfaces/action/SetMode_Result.
## @details Exact identity UWVMROS1_500243a508824c42fe2da424040aa60bf2426ac607f2f6016fab014f81518af7 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_ResultNativeType* = "urinterfaces/action/SetMode_Result" ## @brief Original ROS type name
## for
## urinterfaces/action/SetMode_Result.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_ResultNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/action/SetMode_Result.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesActionSetMode_Result*(): Ros2UrinterfacesActionSetMode_Result =
  ## ``@brief Construct the declared defaults of urinterfaces/action/SetMode_Result.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2UrinterfacesActionSetMode_Result; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/action/SetMode_Result.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
  putString(w,value.`message`,256)
proc readRos2UrinterfacesActionSetMode_Result*(r: var Reader): Ros2UrinterfacesActionSetMode_Result =
  ## ``@brief Read the ordered canonical fields of urinterfaces/action/SetMode_Result.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesActionSetMode_Result()
  result.`success` = getBool(r)
  result.`message` = getString(r,256)
proc encode*(value: Ros2UrinterfacesActionSetMode_Result): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/action/SetMode_Result value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(261)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesActionSetMode_Result*(b: seq[byte]): Ros2UrinterfacesActionSetMode_Result =
  ## ``@brief Decode exactly one complete urinterfaces/action/SetMode_Result value.``
  ## ``@details Require the complete 5..261-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Result; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,261)
  result = readRos2UrinterfacesActionSetMode_Result(r)
  finish(r)
type Ros2UrinterfacesActionSetMode_Feedback* = object
  ## ``@brief Complete ROS 2 urinterfaces/action/SetMode_Feedback value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 2..2 bytes and is identified by``
  ## ``UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `current_robot_mode`*: int8 ## @brief urinterfaces/action/SetMode_Feedback.current_robot_mode: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md
  `current_safety_mode`*: int8 ## @brief urinterfaces/action/SetMode_Feedback.current_safety_mode: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_FeedbackMaximumWireBytes* = 2 ## @brief Maximum canonical extent of
## urinterfaces/action/SetMode_Feedback in bytes.
## @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_FeedbackCodecIdentity* = "UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537" ## @brief Canonical codec
## identity of
## urinterfaces/action/SetMode_Feedback.
## @details Exact identity UWVMROS1_22fb71c17066829bd66c98bc631c82b2bfef3c501e08960a6bfad3d902f76537 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_FeedbackNativeType* = "urinterfaces/action/SetMode_Feedback" ## @brief Original ROS type name
## for
## urinterfaces/action/SetMode_Feedback.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesActionSetMode_FeedbackNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/action/SetMode_Feedback.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesActionSetMode_Feedback*(): Ros2UrinterfacesActionSetMode_Feedback =
  ## ``@brief Construct the declared defaults of urinterfaces/action/SetMode_Feedback.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md``
  result.`current_robot_mode` = 0
  result.`current_safety_mode` = 0
proc writeFields*(value: Ros2UrinterfacesActionSetMode_Feedback; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/action/SetMode_Feedback.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`current_robot_mode`)
  putInteger(w,value.`current_safety_mode`)
proc readRos2UrinterfacesActionSetMode_Feedback*(r: var Reader): Ros2UrinterfacesActionSetMode_Feedback =
  ## ``@brief Read the ordered canonical fields of urinterfaces/action/SetMode_Feedback.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesActionSetMode_Feedback()
  result.`current_robot_mode` = getInteger(r,int8)
  result.`current_safety_mode` = getInteger(r,int8)
proc encode*(value: Ros2UrinterfacesActionSetMode_Feedback): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/action/SetMode_Feedback value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesActionSetMode_Feedback*(b: seq[byte]): Ros2UrinterfacesActionSetMode_Feedback =
  ## ``@brief Decode exactly one complete urinterfaces/action/SetMode_Feedback value.``
  ## ``@details Require the complete 2..2-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesActionSetMode_Feedback; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,2)
  result = readRos2UrinterfacesActionSetMode_Feedback(r)
  finish(r)
type Ros2UrinterfacesMsgActiveTCP* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/ActiveTCP value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 16..400 bytes and is identified by``
  ## ``UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/ActiveTCP.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md
  `data`*: string ## @brief urinterfaces/msg/ActiveTCP.data: string; each string is 0..256 bytes; strict UTF-8 with no
  ## embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgActiveTCPMaximumWireBytes* = 400 ## @brief Maximum canonical extent of
## urinterfaces/msg/ActiveTCP in bytes.
## @details The inclusive bound is 400 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgActiveTCPCodecIdentity* = "UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae" ## @brief Canonical codec
## identity of
## urinterfaces/msg/ActiveTCP.
## @details Exact identity UWVMROS1_e62d31728eca201dee256d88d1d268bf2ecb9607ed5c48783432f966edf459ae binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgActiveTCPNativeType* = "urinterfaces/msg/ActiveTCP" ## @brief Original ROS type name for
## urinterfaces/msg/ActiveTCP.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgActiveTCPNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/ActiveTCP.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgActiveTCP*(): Ros2UrinterfacesMsgActiveTCP =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/ActiveTCP.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = ""
proc writeFields*(value: Ros2UrinterfacesMsgActiveTCP; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/ActiveTCP.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putString(w,value.`data`,256)
proc readRos2UrinterfacesMsgActiveTCP*(r: var Reader): Ros2UrinterfacesMsgActiveTCP =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/ActiveTCP.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgActiveTCP()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = getString(r,256)
proc encode*(value: Ros2UrinterfacesMsgActiveTCP): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/ActiveTCP value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(400)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgActiveTCP*(b: seq[byte]): Ros2UrinterfacesMsgActiveTCP =
  ## ``@brief Decode exactly one complete urinterfaces/msg/ActiveTCP value.``
  ## ``@details Require the complete 16..400-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgActiveTCP; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,400)
  result = readRos2UrinterfacesMsgActiveTCP(r)
  finish(r)
type Ros2UrinterfacesMsgAnalog* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/Analog value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 6..6 bytes and is identified by``
  ## ``UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `pin`*: uint8 ## @brief urinterfaces/msg/Analog.pin: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md
  `domain`*: uint8 ## @brief urinterfaces/msg/Analog.domain: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md
  `value`*: float32 ## @brief urinterfaces/msg/Analog.value: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogMaximumWireBytes* = 6 ## @brief Maximum canonical extent of urinterfaces/msg/Analog in
## bytes.
## @details The inclusive bound is 6 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogCodecIdentity* = "UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b" ## @brief Canonical codec
## identity of
## urinterfaces/msg/Analog.
## @details Exact identity UWVMROS1_e81cffd909f3bc387ee00c37537434341ef93fd160e465be033aa9bc412b979b binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogNativeType* = "urinterfaces/msg/Analog" ## @brief Original ROS type name for
## urinterfaces/msg/Analog.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/Analog.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalog_CURRENT*: uint8 = 0'u8 ## @brief urinterfaces/msg/Analog.CURRENT: original uint8
## constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalog_VOLTAGE*: uint8 = 1'u8 ## @brief urinterfaces/msg/Analog.VOLTAGE: original uint8
## constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgAnalog*(): Ros2UrinterfacesMsgAnalog =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/Analog.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md``
  result.`pin` = 0
  result.`domain` = 0
  result.`value` = 0
proc writeFields*(value: Ros2UrinterfacesMsgAnalog; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/Analog.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`pin`)
  putInteger(w,value.`domain`)
  putFloat32(w,value.`value`)
proc readRos2UrinterfacesMsgAnalog*(r: var Reader): Ros2UrinterfacesMsgAnalog =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/Analog.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgAnalog()
  result.`pin` = getInteger(r,uint8)
  result.`domain` = getInteger(r,uint8)
  result.`value` = getFloat32(r)
proc encode*(value: Ros2UrinterfacesMsgAnalog): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/Analog value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(6)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgAnalog*(b: seq[byte]): Ros2UrinterfacesMsgAnalog =
  ## ``@brief Decode exactly one complete urinterfaces/msg/Analog value.``
  ## ``@details Require the complete 6..6-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalog; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,6)
  result = readRos2UrinterfacesMsgAnalog(r)
  finish(r)
type Ros2UrinterfacesMsgAnalogIO* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/AnalogIO value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..200 bytes and is identified by``
  ## ``UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `analog_inputs`*: seq[Ros2UrinterfacesMsgAnalog] ## @brief urinterfaces/msg/AnalogIO.analog_inputs:
  ## urinterfaces/msg/Analog; 0..16 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md
  `analog_outputs`*: seq[Ros2UrinterfacesMsgAnalog] ## @brief urinterfaces/msg/AnalogIO.analog_outputs:
  ## urinterfaces/msg/Analog; 0..16 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogIOMaximumWireBytes* = 200 ## @brief Maximum canonical extent of urinterfaces/msg/AnalogIO
## in bytes.
## @details The inclusive bound is 200 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogIOCodecIdentity* = "UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c" ## @brief Canonical codec
## identity of
## urinterfaces/msg/AnalogIO.
## @details Exact identity UWVMROS1_3130f3e3857f21bab5092d9c6abea8c45965c07ebb9c1ab14b28fa51b7d71e0c binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogIONativeType* = "urinterfaces/msg/AnalogIO" ## @brief Original ROS type name for
## urinterfaces/msg/AnalogIO.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogIONativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/AnalogIO.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgAnalogIO*(): Ros2UrinterfacesMsgAnalogIO =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/AnalogIO.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md``
  result.`analog_inputs` = @[]
  result.`analog_outputs` = @[]
proc writeFields*(value: Ros2UrinterfacesMsgAnalogIO; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/AnalogIO.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md``
  if value.`analog_inputs`.len > 16: fail(22)
  putInteger(w,uint32(value.`analog_inputs`.len))
  for e in value.`analog_inputs`:
    writeFields(e,w)
  if value.`analog_outputs`.len > 16: fail(22)
  putInteger(w,uint32(value.`analog_outputs`.len))
  for e in value.`analog_outputs`:
    writeFields(e,w)
proc readRos2UrinterfacesMsgAnalogIO*(r: var Reader): Ros2UrinterfacesMsgAnalogIO =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/AnalogIO.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgAnalogIO()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`analog_inputs` = newSeq[Ros2UrinterfacesMsgAnalog](count0)
  for i in 0..<count0:
    result.`analog_inputs`[i] = readRos2UrinterfacesMsgAnalog(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`analog_outputs` = newSeq[Ros2UrinterfacesMsgAnalog](count1)
  for i in 0..<count1:
    result.`analog_outputs`[i] = readRos2UrinterfacesMsgAnalog(r)
proc encode*(value: Ros2UrinterfacesMsgAnalogIO): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/AnalogIO value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(200)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgAnalogIO*(b: seq[byte]): Ros2UrinterfacesMsgAnalogIO =
  ## ``@brief Decode exactly one complete urinterfaces/msg/AnalogIO value.``
  ## ``@details Require the complete 8..200-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogIO; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,200)
  result = readRos2UrinterfacesMsgAnalogIO(r)
  finish(r)
type Ros2UrinterfacesMsgAnalogIOStateStamped* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/AnalogIOStateStamped value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 20..340 bytes and is identified by``
  ## ``UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/AnalogIOStateStamped.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
  `io_state`*: Ros2UrinterfacesMsgAnalogIO ## @brief urinterfaces/msg/AnalogIOStateStamped.io_state:
  ## urinterfaces/msg/AnalogIO.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogIOStateStampedMaximumWireBytes* = 340 ## @brief Maximum canonical extent of
## urinterfaces/msg/AnalogIOStateStamped in bytes.
## @details The inclusive bound is 340 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogIOStateStampedCodecIdentity* = "UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89" ## @brief Canonical codec
## identity of
## urinterfaces/msg/AnalogIOStateStamped.
## @details Exact identity UWVMROS1_a40e839bb4acfcb26503c79f01216b7aea9ab8ff25c50dca42578b206ab40a89 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogIOStateStampedNativeType* = "urinterfaces/msg/AnalogIOStateStamped" ## @brief Original ROS type name
## for
## urinterfaces/msg/AnalogIOStateStamped.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogIOStateStampedNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/AnalogIOStateStamped.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgAnalogIOStateStamped*(): Ros2UrinterfacesMsgAnalogIOStateStamped =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/AnalogIOStateStamped.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`io_state` = initRos2UrinterfacesMsgAnalogIO()
proc writeFields*(value: Ros2UrinterfacesMsgAnalogIOStateStamped; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/AnalogIOStateStamped.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  writeFields(value.`io_state`,w)
proc readRos2UrinterfacesMsgAnalogIOStateStamped*(r: var Reader): Ros2UrinterfacesMsgAnalogIOStateStamped =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/AnalogIOStateStamped.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgAnalogIOStateStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`io_state` = readRos2UrinterfacesMsgAnalogIO(r)
proc encode*(value: Ros2UrinterfacesMsgAnalogIOStateStamped): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/AnalogIOStateStamped value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(340)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgAnalogIOStateStamped*(b: seq[byte]): Ros2UrinterfacesMsgAnalogIOStateStamped =
  ## ``@brief Decode exactly one complete urinterfaces/msg/AnalogIOStateStamped value.``
  ## ``@details Require the complete 20..340-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogIOStateStamped; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,340)
  result = readRos2UrinterfacesMsgAnalogIOStateStamped(r)
  finish(r)
type Ros2UrinterfacesMsgAnalogStamped* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/AnalogStamped value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 18..146 bytes and is identified by``
  ## ``UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/AnalogStamped.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md
  `data`*: Ros2UrinterfacesMsgAnalog ## @brief urinterfaces/msg/AnalogStamped.data: urinterfaces/msg/Analog.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogStampedMaximumWireBytes* = 146 ## @brief Maximum canonical extent of
## urinterfaces/msg/AnalogStamped in bytes.
## @details The inclusive bound is 146 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogStampedCodecIdentity* = "UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c" ## @brief Canonical codec
## identity of
## urinterfaces/msg/AnalogStamped.
## @details Exact identity UWVMROS1_749557c6e79b882385927c62d3c45963797ce116d7be6235bd9f186a7b4da76c binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogStampedNativeType* = "urinterfaces/msg/AnalogStamped" ## @brief Original ROS type name
## for
## urinterfaces/msg/AnalogStamped.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgAnalogStampedNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/AnalogStamped.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgAnalogStamped*(): Ros2UrinterfacesMsgAnalogStamped =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/AnalogStamped.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = initRos2UrinterfacesMsgAnalog()
proc writeFields*(value: Ros2UrinterfacesMsgAnalogStamped; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/AnalogStamped.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  writeFields(value.`data`,w)
proc readRos2UrinterfacesMsgAnalogStamped*(r: var Reader): Ros2UrinterfacesMsgAnalogStamped =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/AnalogStamped.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgAnalogStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = readRos2UrinterfacesMsgAnalog(r)
proc encode*(value: Ros2UrinterfacesMsgAnalogStamped): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/AnalogStamped value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(146)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgAnalogStamped*(b: seq[byte]): Ros2UrinterfacesMsgAnalogStamped =
  ## ``@brief Decode exactly one complete urinterfaces/msg/AnalogStamped value.``
  ## ``@details Require the complete 18..146-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgAnalogStamped; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,146)
  result = readRos2UrinterfacesMsgAnalogStamped(r)
  finish(r)
type Ros2UrinterfacesMsgBoolStamped* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/BoolStamped value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 13..141 bytes and is identified by``
  ## ``UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/BoolStamped.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md
  `data`*: bool ## @brief urinterfaces/msg/BoolStamped.data: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgBoolStampedMaximumWireBytes* = 141 ## @brief Maximum canonical extent of
## urinterfaces/msg/BoolStamped in bytes.
## @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgBoolStampedCodecIdentity* = "UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66" ## @brief Canonical codec
## identity of
## urinterfaces/msg/BoolStamped.
## @details Exact identity UWVMROS1_1a4128638df10bd9a8d33af0ed3c2ee9b4deb771d45dfe83f2a9a75c7f77de66 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgBoolStampedNativeType* = "urinterfaces/msg/BoolStamped" ## @brief Original ROS type name for
## urinterfaces/msg/BoolStamped.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgBoolStampedNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/BoolStamped.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgBoolStamped*(): Ros2UrinterfacesMsgBoolStamped =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/BoolStamped.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = false
proc writeFields*(value: Ros2UrinterfacesMsgBoolStamped; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/BoolStamped.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putBool(w,value.`data`)
proc readRos2UrinterfacesMsgBoolStamped*(r: var Reader): Ros2UrinterfacesMsgBoolStamped =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/BoolStamped.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgBoolStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = getBool(r)
proc encode*(value: Ros2UrinterfacesMsgBoolStamped): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/BoolStamped value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(141)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgBoolStamped*(b: seq[byte]): Ros2UrinterfacesMsgBoolStamped =
  ## ``@brief Decode exactly one complete urinterfaces/msg/BoolStamped value.``
  ## ``@details Require the complete 13..141-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgBoolStamped; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,141)
  result = readRos2UrinterfacesMsgBoolStamped(r)
  finish(r)
type Ros2UrinterfacesMsgControlCycle* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/ControlCycle value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 20..148 bytes and is identified by``
  ## ``UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/ControlCycle.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md
  `data`*: uint64 ## @brief urinterfaces/msg/ControlCycle.data: uint64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgControlCycleMaximumWireBytes* = 148 ## @brief Maximum canonical extent of
## urinterfaces/msg/ControlCycle in bytes.
## @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgControlCycleCodecIdentity* = "UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278" ## @brief Canonical codec
## identity of
## urinterfaces/msg/ControlCycle.
## @details Exact identity UWVMROS1_99a4d96e5673f5ac49eab13cd8b28af55ac83e1626c39ed20ff46655df4d6278 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgControlCycleNativeType* = "urinterfaces/msg/ControlCycle" ## @brief Original ROS type name for
## urinterfaces/msg/ControlCycle.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgControlCycleNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/ControlCycle.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgControlCycle*(): Ros2UrinterfacesMsgControlCycle =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/ControlCycle.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = 0
proc writeFields*(value: Ros2UrinterfacesMsgControlCycle; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/ControlCycle.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putInteger(w,value.`data`)
proc readRos2UrinterfacesMsgControlCycle*(r: var Reader): Ros2UrinterfacesMsgControlCycle =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/ControlCycle.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgControlCycle()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = getInteger(r,uint64)
proc encode*(value: Ros2UrinterfacesMsgControlCycle): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/ControlCycle value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(148)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgControlCycle*(b: seq[byte]): Ros2UrinterfacesMsgControlCycle =
  ## ``@brief Decode exactly one complete urinterfaces/msg/ControlCycle value.``
  ## ``@details Require the complete 20..148-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgControlCycle; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,148)
  result = readRos2UrinterfacesMsgControlCycle(r)
  finish(r)
type Ros2UrinterfacesMsgCurrent* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/Current value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 16..144 bytes and is identified by``
  ## ``UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/Current.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md
  `data`*: float32 ## @brief urinterfaces/msg/Current.data: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgCurrentMaximumWireBytes* = 144 ## @brief Maximum canonical extent of urinterfaces/msg/Current
## in bytes.
## @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgCurrentCodecIdentity* = "UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df" ## @brief Canonical codec
## identity of
## urinterfaces/msg/Current.
## @details Exact identity UWVMROS1_759f2139335bcb720f7f4a38cd8b1413f203f2dd2b72149fa0de0fb7a0a778df binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgCurrentNativeType* = "urinterfaces/msg/Current" ## @brief Original ROS type name for
## urinterfaces/msg/Current.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgCurrentNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/Current.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgCurrent*(): Ros2UrinterfacesMsgCurrent =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/Current.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = 0
proc writeFields*(value: Ros2UrinterfacesMsgCurrent; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/Current.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putFloat32(w,value.`data`)
proc readRos2UrinterfacesMsgCurrent*(r: var Reader): Ros2UrinterfacesMsgCurrent =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/Current.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgCurrent()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = getFloat32(r)
proc encode*(value: Ros2UrinterfacesMsgCurrent): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/Current value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(144)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgCurrent*(b: seq[byte]): Ros2UrinterfacesMsgCurrent =
  ## ``@brief Decode exactly one complete urinterfaces/msg/Current value.``
  ## ``@details Require the complete 16..144-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgCurrent; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,144)
  result = readRos2UrinterfacesMsgCurrent(r)
  finish(r)
type Ros2UrinterfacesMsgDigital* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/Digital value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 2..2 bytes and is identified by``
  ## ``UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `pin`*: uint8 ## @brief urinterfaces/msg/Digital.pin: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md
  `state`*: bool ## @brief urinterfaces/msg/Digital.state: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalMaximumWireBytes* = 2 ## @brief Maximum canonical extent of urinterfaces/msg/Digital in
## bytes.
## @details The inclusive bound is 2 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalCodecIdentity* = "UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512" ## @brief Canonical codec
## identity of
## urinterfaces/msg/Digital.
## @details Exact identity UWVMROS1_c60c73df0383bb9a3e23ae3148cff9d6eb49b88c2d10add0af6a86ec9af54512 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalNativeType* = "urinterfaces/msg/Digital" ## @brief Original ROS type name for
## urinterfaces/msg/Digital.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/Digital.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgDigital*(): Ros2UrinterfacesMsgDigital =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/Digital.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md``
  result.`pin` = 0
  result.`state` = false
proc writeFields*(value: Ros2UrinterfacesMsgDigital; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/Digital.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`pin`)
  putBool(w,value.`state`)
proc readRos2UrinterfacesMsgDigital*(r: var Reader): Ros2UrinterfacesMsgDigital =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/Digital.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgDigital()
  result.`pin` = getInteger(r,uint8)
  result.`state` = getBool(r)
proc encode*(value: Ros2UrinterfacesMsgDigital): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/Digital value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(2)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgDigital*(b: seq[byte]): Ros2UrinterfacesMsgDigital =
  ## ``@brief Decode exactly one complete urinterfaces/msg/Digital value.``
  ## ``@details Require the complete 2..2-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigital; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,2)
  result = readRos2UrinterfacesMsgDigital(r)
  finish(r)
type Ros2UrinterfacesMsgDigitalIO* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/DigitalIO value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..136 bytes and is identified by``
  ## ``UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `digital_inputs`*: seq[Ros2UrinterfacesMsgDigital] ## @brief urinterfaces/msg/DigitalIO.digital_inputs:
  ## urinterfaces/msg/Digital; 0..32 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md
  `digital_outputs`*: seq[Ros2UrinterfacesMsgDigital] ## @brief urinterfaces/msg/DigitalIO.digital_outputs:
  ## urinterfaces/msg/Digital; 0..32 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalIOMaximumWireBytes* = 136 ## @brief Maximum canonical extent of
## urinterfaces/msg/DigitalIO in bytes.
## @details The inclusive bound is 136 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalIOCodecIdentity* = "UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a" ## @brief Canonical codec
## identity of
## urinterfaces/msg/DigitalIO.
## @details Exact identity UWVMROS1_11235b6010feb7e3e5e6c2be8acd3fbba1c25ecbf97ae5e0c899a0e3de3c4e4a binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalIONativeType* = "urinterfaces/msg/DigitalIO" ## @brief Original ROS type name for
## urinterfaces/msg/DigitalIO.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalIONativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/DigitalIO.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgDigitalIO*(): Ros2UrinterfacesMsgDigitalIO =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/DigitalIO.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md``
  result.`digital_inputs` = @[]
  result.`digital_outputs` = @[]
proc writeFields*(value: Ros2UrinterfacesMsgDigitalIO; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/DigitalIO.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md``
  if value.`digital_inputs`.len > 32: fail(22)
  putInteger(w,uint32(value.`digital_inputs`.len))
  for e in value.`digital_inputs`:
    writeFields(e,w)
  if value.`digital_outputs`.len > 32: fail(22)
  putInteger(w,uint32(value.`digital_outputs`.len))
  for e in value.`digital_outputs`:
    writeFields(e,w)
proc readRos2UrinterfacesMsgDigitalIO*(r: var Reader): Ros2UrinterfacesMsgDigitalIO =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/DigitalIO.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgDigitalIO()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 32: fail(22)
  let count0 = int(rawcount0)
  result.`digital_inputs` = newSeq[Ros2UrinterfacesMsgDigital](count0)
  for i in 0..<count0:
    result.`digital_inputs`[i] = readRos2UrinterfacesMsgDigital(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 32: fail(22)
  let count1 = int(rawcount1)
  result.`digital_outputs` = newSeq[Ros2UrinterfacesMsgDigital](count1)
  for i in 0..<count1:
    result.`digital_outputs`[i] = readRos2UrinterfacesMsgDigital(r)
proc encode*(value: Ros2UrinterfacesMsgDigitalIO): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/DigitalIO value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(136)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgDigitalIO*(b: seq[byte]): Ros2UrinterfacesMsgDigitalIO =
  ## ``@brief Decode exactly one complete urinterfaces/msg/DigitalIO value.``
  ## ``@details Require the complete 8..136-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalIO; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,136)
  result = readRos2UrinterfacesMsgDigitalIO(r)
  finish(r)
type Ros2UrinterfacesMsgDigitalIOStateStamped* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/DigitalIOStateStamped value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 28..412 bytes and is identified by``
  ## ``UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/DigitalIOStateStamped.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
  `configurable_io`*: Ros2UrinterfacesMsgDigitalIO ## @brief urinterfaces/msg/DigitalIOStateStamped.configurable_io:
  ## urinterfaces/msg/DigitalIO.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
  `standard_io`*: Ros2UrinterfacesMsgDigitalIO ## @brief urinterfaces/msg/DigitalIOStateStamped.standard_io:
  ## urinterfaces/msg/DigitalIO.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalIOStateStampedMaximumWireBytes* = 412 ## @brief Maximum canonical extent of
## urinterfaces/msg/DigitalIOStateStamped in
## bytes.
## @details The inclusive bound is 412 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalIOStateStampedCodecIdentity* = "UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9" ## @brief Canonical codec
## identity of
## urinterfaces/msg/DigitalIOStateStamped.
## @details Exact identity UWVMROS1_542db76916f234e79216804426dc4e8d386a0ef547907391c921f51ed45e64c9 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalIOStateStampedNativeType* = "urinterfaces/msg/DigitalIOStateStamped" ## @brief Original ROS type name
## for
## urinterfaces/msg/DigitalIOStateStamped.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalIOStateStampedNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/DigitalIOStateStamped.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgDigitalIOStateStamped*(): Ros2UrinterfacesMsgDigitalIOStateStamped =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/DigitalIOStateStamped.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`configurable_io` = initRos2UrinterfacesMsgDigitalIO()
  result.`standard_io` = initRos2UrinterfacesMsgDigitalIO()
proc writeFields*(value: Ros2UrinterfacesMsgDigitalIOStateStamped; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/DigitalIOStateStamped.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  writeFields(value.`configurable_io`,w)
  writeFields(value.`standard_io`,w)
proc readRos2UrinterfacesMsgDigitalIOStateStamped*(r: var Reader): Ros2UrinterfacesMsgDigitalIOStateStamped =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/DigitalIOStateStamped.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgDigitalIOStateStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`configurable_io` = readRos2UrinterfacesMsgDigitalIO(r)
  result.`standard_io` = readRos2UrinterfacesMsgDigitalIO(r)
proc encode*(value: Ros2UrinterfacesMsgDigitalIOStateStamped): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/DigitalIOStateStamped value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(412)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgDigitalIOStateStamped*(b: seq[byte]): Ros2UrinterfacesMsgDigitalIOStateStamped =
  ## ``@brief Decode exactly one complete urinterfaces/msg/DigitalIOStateStamped value.``
  ## ``@details Require the complete 28..412-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalIOStateStamped; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,412)
  result = readRos2UrinterfacesMsgDigitalIOStateStamped(r)
  finish(r)
type Ros2UrinterfacesMsgDigitalStamped* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/DigitalStamped value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 14..142 bytes and is identified by``
  ## ``UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/DigitalStamped.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md
  `data`*: Ros2UrinterfacesMsgDigital ## @brief urinterfaces/msg/DigitalStamped.data: urinterfaces/msg/Digital.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalStampedMaximumWireBytes* = 142 ## @brief Maximum canonical extent of
## urinterfaces/msg/DigitalStamped in bytes.
## @details The inclusive bound is 142 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalStampedCodecIdentity* = "UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865" ## @brief Canonical codec
## identity of
## urinterfaces/msg/DigitalStamped.
## @details Exact identity UWVMROS1_dc86d5a04c0801089ddf6b61b5fd33d63df8b5599550c6a0e84e19bbff375865 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalStampedNativeType* = "urinterfaces/msg/DigitalStamped" ## @brief Original ROS type name
## for
## urinterfaces/msg/DigitalStamped.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDigitalStampedNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/DigitalStamped.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgDigitalStamped*(): Ros2UrinterfacesMsgDigitalStamped =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/DigitalStamped.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = initRos2UrinterfacesMsgDigital()
proc writeFields*(value: Ros2UrinterfacesMsgDigitalStamped; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/DigitalStamped.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  writeFields(value.`data`,w)
proc readRos2UrinterfacesMsgDigitalStamped*(r: var Reader): Ros2UrinterfacesMsgDigitalStamped =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/DigitalStamped.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgDigitalStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = readRos2UrinterfacesMsgDigital(r)
proc encode*(value: Ros2UrinterfacesMsgDigitalStamped): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/DigitalStamped value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(142)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgDigitalStamped*(b: seq[byte]): Ros2UrinterfacesMsgDigitalStamped =
  ## ``@brief Decode exactly one complete urinterfaces/msg/DigitalStamped value.``
  ## ``@details Require the complete 14..142-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDigitalStamped; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,142)
  result = readRos2UrinterfacesMsgDigitalStamped(r)
  finish(r)
type Ros2UrinterfacesMsgDoubleMultiArrayStamped* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/DoubleMultiArrayStamped value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 16..272 bytes and is identified by``
  ## ``UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/DoubleMultiArrayStamped.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md
  `data`*: seq[float64] ## @brief urinterfaces/msg/DoubleMultiArrayStamped.data: float64; 0..16 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDoubleMultiArrayStampedMaximumWireBytes* = 272 ## @brief Maximum canonical extent of
## urinterfaces/msg/DoubleMultiArrayStamped in
## bytes.
## @details The inclusive bound is 272 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDoubleMultiArrayStampedCodecIdentity* = "UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae" ## @brief Canonical codec
## identity of
## urinterfaces/msg/DoubleMultiArrayStamped.
## @details Exact identity UWVMROS1_82b52f88248ea8d6cd7b809d1fd5aa55b4bbe1618044e739998a7ec74a23a8ae binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDoubleMultiArrayStampedNativeType* = "urinterfaces/msg/DoubleMultiArrayStamped" ## @brief Original ROS type name
## for
## urinterfaces/msg/DoubleMultiArrayStamped.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgDoubleMultiArrayStampedNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/DoubleMultiArrayStamped.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgDoubleMultiArrayStamped*(): Ros2UrinterfacesMsgDoubleMultiArrayStamped =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/DoubleMultiArrayStamped.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = @[]
proc writeFields*(value: Ros2UrinterfacesMsgDoubleMultiArrayStamped; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/DoubleMultiArrayStamped.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  if value.`data`.len > 16: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    putFloat64(w,e)
proc readRos2UrinterfacesMsgDoubleMultiArrayStamped*(r: var Reader): Ros2UrinterfacesMsgDoubleMultiArrayStamped =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/DoubleMultiArrayStamped.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgDoubleMultiArrayStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`data` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`data`[i] = getFloat64(r)
proc encode*(value: Ros2UrinterfacesMsgDoubleMultiArrayStamped): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/DoubleMultiArrayStamped value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(272)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgDoubleMultiArrayStamped*(b: seq[byte]): Ros2UrinterfacesMsgDoubleMultiArrayStamped =
  ## ``@brief Decode exactly one complete urinterfaces/msg/DoubleMultiArrayStamped value.``
  ## ``@details Require the complete 16..272-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgDoubleMultiArrayStamped; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,272)
  result = readRos2UrinterfacesMsgDoubleMultiArrayStamped(r)
  finish(r)
type Ros2UrinterfacesMsgFloat32Stamped* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/Float32Stamped value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 16..144 bytes and is identified by``
  ## ``UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/Float32Stamped.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md
  `data`*: float32 ## @brief urinterfaces/msg/Float32Stamped.data: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgFloat32StampedMaximumWireBytes* = 144 ## @brief Maximum canonical extent of
## urinterfaces/msg/Float32Stamped in bytes.
## @details The inclusive bound is 144 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgFloat32StampedCodecIdentity* = "UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3" ## @brief Canonical codec
## identity of
## urinterfaces/msg/Float32Stamped.
## @details Exact identity UWVMROS1_5989940d19890b6d3b78172e9920708745b78e35c1c4fb238412c37a813d30d3 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgFloat32StampedNativeType* = "urinterfaces/msg/Float32Stamped" ## @brief Original ROS type name
## for
## urinterfaces/msg/Float32Stamped.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgFloat32StampedNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/Float32Stamped.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgFloat32Stamped*(): Ros2UrinterfacesMsgFloat32Stamped =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/Float32Stamped.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = 0
proc writeFields*(value: Ros2UrinterfacesMsgFloat32Stamped; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/Float32Stamped.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putFloat32(w,value.`data`)
proc readRos2UrinterfacesMsgFloat32Stamped*(r: var Reader): Ros2UrinterfacesMsgFloat32Stamped =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/Float32Stamped.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgFloat32Stamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = getFloat32(r)
proc encode*(value: Ros2UrinterfacesMsgFloat32Stamped): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/Float32Stamped value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(144)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgFloat32Stamped*(b: seq[byte]): Ros2UrinterfacesMsgFloat32Stamped =
  ## ``@brief Decode exactly one complete urinterfaces/msg/Float32Stamped value.``
  ## ``@details Require the complete 16..144-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgFloat32Stamped; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,144)
  result = readRos2UrinterfacesMsgFloat32Stamped(r)
  finish(r)
type Ros2UrinterfacesMsgFloat64Stamped* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/Float64Stamped value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 20..148 bytes and is identified by``
  ## ``UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/Float64Stamped.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md
  `data`*: float64 ## @brief urinterfaces/msg/Float64Stamped.data: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgFloat64StampedMaximumWireBytes* = 148 ## @brief Maximum canonical extent of
## urinterfaces/msg/Float64Stamped in bytes.
## @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgFloat64StampedCodecIdentity* = "UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21" ## @brief Canonical codec
## identity of
## urinterfaces/msg/Float64Stamped.
## @details Exact identity UWVMROS1_4f8950feff6f20dbdbf9cac1f01168824be3698a4bd90355a470b580930edb21 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgFloat64StampedNativeType* = "urinterfaces/msg/Float64Stamped" ## @brief Original ROS type name
## for
## urinterfaces/msg/Float64Stamped.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgFloat64StampedNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/Float64Stamped.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgFloat64Stamped*(): Ros2UrinterfacesMsgFloat64Stamped =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/Float64Stamped.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = 0
proc writeFields*(value: Ros2UrinterfacesMsgFloat64Stamped; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/Float64Stamped.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putFloat64(w,value.`data`)
proc readRos2UrinterfacesMsgFloat64Stamped*(r: var Reader): Ros2UrinterfacesMsgFloat64Stamped =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/Float64Stamped.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgFloat64Stamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = getFloat64(r)
proc encode*(value: Ros2UrinterfacesMsgFloat64Stamped): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/Float64Stamped value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(148)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgFloat64Stamped*(b: seq[byte]): Ros2UrinterfacesMsgFloat64Stamped =
  ## ``@brief Decode exactly one complete urinterfaces/msg/Float64Stamped value.``
  ## ``@details Require the complete 20..148-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgFloat64Stamped; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,148)
  result = readRos2UrinterfacesMsgFloat64Stamped(r)
  finish(r)
type Ros2UrinterfacesMsgJointMode* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/JointMode value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 19..147 bytes and is identified by``
  ## ``UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/JointMode.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
  `joint_modes`*: array[6,uint8] ## @brief urinterfaces/msg/JointMode.joint_modes: uint8; exactly 6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
  `tool_mode`*: uint8 ## @brief urinterfaces/msg/JointMode.tool_mode: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointModeMaximumWireBytes* = 147 ## @brief Maximum canonical extent of
## urinterfaces/msg/JointMode in bytes.
## @details The inclusive bound is 147 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointModeCodecIdentity* = "UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c" ## @brief Canonical codec
## identity of
## urinterfaces/msg/JointMode.
## @details Exact identity UWVMROS1_6d766192096ced3c8568a98fb286c309e00cfb97e34b2611fff70e5bb1eaa95c binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointModeNativeType* = "urinterfaces/msg/JointMode" ## @brief Original ROS type name for
## urinterfaces/msg/JointMode.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointModeNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/JointMode.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_RESET*: uint8 = 235'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_RESET:
## original uint8 constant.
## @details Exact admitted value 235. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_SHUTTING_DOWN*: uint8 = 236'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_SHUTTING_DOWN:
## original uint8 constant.
## @details Exact admitted value 236. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_PART_D_CALIBRATION*: uint8 = 237'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_PART_D_CALIBRATION:
## original uint8 constant.
## @details Exact admitted value 237. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_BACKDRIVE*: uint8 = 238'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_BACKDRIVE:
## original uint8 constant.
## @details Exact admitted value 238. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_POWER_OFF*: uint8 = 239'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_POWER_OFF:
## original uint8 constant.
## @details Exact admitted value 239. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_READY_FOR_POWER_OFF*: uint8 = 240'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_READY_FOR_POWER_OFF:
## original uint8 constant.
## @details Exact admitted value 240. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_NOT_RESPONDING*: uint8 = 245'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_NOT_RESPONDING:
## original uint8 constant.
## @details Exact admitted value 245. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_MOTOR_INITIALISATION*: uint8 = 246'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_MOTOR_INITIALISATION:
## original uint8 constant.
## @details Exact admitted value 246. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_BOOTING*: uint8 = 247'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_BOOTING:
## original uint8 constant.
## @details Exact admitted value 247. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_PART_D_CALIBRATION_ERROR*: uint8 = 248'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_PART_D_CALIBRATION_ERROR:
## original uint8 constant.
## @details Exact admitted value 248. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_BOOTLOADER*: uint8 = 249'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_BOOTLOADER:
## original uint8 constant.
## @details Exact admitted value 249. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_CALIBRATION*: uint8 = 250'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_CALIBRATION:
## original uint8 constant.
## @details Exact admitted value 250. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_VIOLATION*: uint8 = 251'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_VIOLATION:
## original uint8 constant.
## @details Exact admitted value 251. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_FAULT*: uint8 = 252'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_FAULT:
## original uint8 constant.
## @details Exact admitted value 252. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_RUNNING*: uint8 = 253'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_RUNNING:
## original uint8 constant.
## @details Exact admitted value 253. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointMode_JOINT_MODE_IDLE*: uint8 = 255'u8 ## @brief
## urinterfaces/msg/JointMode.JOINT_MODE_IDLE:
## original uint8 constant.
## @details Exact admitted value 255. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgJointMode*(): Ros2UrinterfacesMsgJointMode =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/JointMode.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_modes` = [0,0,0,0,0,0]
  result.`tool_mode` = 0
proc writeFields*(value: Ros2UrinterfacesMsgJointMode; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/JointMode.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  for e in value.`joint_modes`:
    putInteger(w,e)
  putInteger(w,value.`tool_mode`)
proc readRos2UrinterfacesMsgJointMode*(r: var Reader): Ros2UrinterfacesMsgJointMode =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/JointMode.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgJointMode()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let count1 = 6
  for i in 0..<count1:
    result.`joint_modes`[i] = getInteger(r,uint8)
  result.`tool_mode` = getInteger(r,uint8)
proc encode*(value: Ros2UrinterfacesMsgJointMode): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/JointMode value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(147)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgJointMode*(b: seq[byte]): Ros2UrinterfacesMsgJointMode =
  ## ``@brief Decode exactly one complete urinterfaces/msg/JointMode value.``
  ## ``@details Require the complete 19..147-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointMode; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,147)
  result = readRos2UrinterfacesMsgJointMode(r)
  finish(r)
type Ros2UrinterfacesMsgJointTemperature* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/JointTemperature value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 36..164 bytes and is identified by``
  ## ``UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/JointTemperature.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md
  `data`*: array[6,float32] ## @brief urinterfaces/msg/JointTemperature.data: float32; exactly 6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointTemperatureMaximumWireBytes* = 164 ## @brief Maximum canonical extent of
## urinterfaces/msg/JointTemperature in bytes.
## @details The inclusive bound is 164 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointTemperatureCodecIdentity* = "UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017" ## @brief Canonical codec
## identity of
## urinterfaces/msg/JointTemperature.
## @details Exact identity UWVMROS1_af77f1ec4c6b4d71e6387315d2388e7493c229dbf216848e61d5638cb308d017 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointTemperatureNativeType* = "urinterfaces/msg/JointTemperature" ## @brief Original ROS type name
## for
## urinterfaces/msg/JointTemperature.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointTemperatureNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/JointTemperature.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgJointTemperature*(): Ros2UrinterfacesMsgJointTemperature =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/JointTemperature.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = [0,0,0,0,0,0]
proc writeFields*(value: Ros2UrinterfacesMsgJointTemperature; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/JointTemperature.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  for e in value.`data`:
    putFloat32(w,e)
proc readRos2UrinterfacesMsgJointTemperature*(r: var Reader): Ros2UrinterfacesMsgJointTemperature =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/JointTemperature.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgJointTemperature()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let count1 = 6
  for i in 0..<count1:
    result.`data`[i] = getFloat32(r)
proc encode*(value: Ros2UrinterfacesMsgJointTemperature): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/JointTemperature value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(164)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgJointTemperature*(b: seq[byte]): Ros2UrinterfacesMsgJointTemperature =
  ## ``@brief Decode exactly one complete urinterfaces/msg/JointTemperature value.``
  ## ``@details Require the complete 36..164-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointTemperature; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,164)
  result = readRos2UrinterfacesMsgJointTemperature(r)
  finish(r)
type Ros2UrinterfacesMsgJointVoltage* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/JointVoltage value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 60..188 bytes and is identified by``
  ## ``UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/JointVoltage.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md
  `data`*: array[6,float64] ## @brief urinterfaces/msg/JointVoltage.data: float64; exactly 6 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointVoltageMaximumWireBytes* = 188 ## @brief Maximum canonical extent of
## urinterfaces/msg/JointVoltage in bytes.
## @details The inclusive bound is 188 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointVoltageCodecIdentity* = "UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61" ## @brief Canonical codec
## identity of
## urinterfaces/msg/JointVoltage.
## @details Exact identity UWVMROS1_9fa2179402b5dc29b898ac1321c1f6f86676300939776a6e32de4529f3776b61 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointVoltageNativeType* = "urinterfaces/msg/JointVoltage" ## @brief Original ROS type name for
## urinterfaces/msg/JointVoltage.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJointVoltageNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/JointVoltage.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgJointVoltage*(): Ros2UrinterfacesMsgJointVoltage =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/JointVoltage.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = [0,0,0,0,0,0]
proc writeFields*(value: Ros2UrinterfacesMsgJointVoltage; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/JointVoltage.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  for e in value.`data`:
    putFloat64(w,e)
proc readRos2UrinterfacesMsgJointVoltage*(r: var Reader): Ros2UrinterfacesMsgJointVoltage =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/JointVoltage.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgJointVoltage()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let count1 = 6
  for i in 0..<count1:
    result.`data`[i] = getFloat64(r)
proc encode*(value: Ros2UrinterfacesMsgJointVoltage): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/JointVoltage value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(188)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgJointVoltage*(b: seq[byte]): Ros2UrinterfacesMsgJointVoltage =
  ## ``@brief Decode exactly one complete urinterfaces/msg/JointVoltage value.``
  ## ``@details Require the complete 60..188-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJointVoltage; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,188)
  result = readRos2UrinterfacesMsgJointVoltage(r)
  finish(r)
type Ros2UrinterfacesMsgJsonStringType* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/JsonStringType value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..1028 bytes and is identified by``
  ## ``UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `json_string`*: Ros2Std_msgsMsgString ## @brief urinterfaces/msg/JsonStringType.json_string: std_msgs/msg/String.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJsonStringTypeMaximumWireBytes* = 1028 ## @brief Maximum canonical extent of
## urinterfaces/msg/JsonStringType in bytes.
## @details The inclusive bound is 1028 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJsonStringTypeCodecIdentity* = "UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728" ## @brief Canonical codec
## identity of
## urinterfaces/msg/JsonStringType.
## @details Exact identity UWVMROS1_05da0dcf2728cd73f875421c457804a146ceffe76e9d4619be71c2c92efdd728 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJsonStringTypeNativeType* = "urinterfaces/msg/JsonStringType" ## @brief Original ROS type name
## for
## urinterfaces/msg/JsonStringType.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgJsonStringTypeNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/JsonStringType.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgJsonStringType*(): Ros2UrinterfacesMsgJsonStringType =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/JsonStringType.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/nim/API-CONTRACT.md``
  result.`json_string` = initRos2Std_msgsMsgString()
proc writeFields*(value: Ros2UrinterfacesMsgJsonStringType; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/JsonStringType.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`json_string`,w)
proc readRos2UrinterfacesMsgJsonStringType*(r: var Reader): Ros2UrinterfacesMsgJsonStringType =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/JsonStringType.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgJsonStringType()
  result.`json_string` = readRos2Std_msgsMsgString(r)
proc encode*(value: Ros2UrinterfacesMsgJsonStringType): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/JsonStringType value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1028)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgJsonStringType*(b: seq[byte]): Ros2UrinterfacesMsgJsonStringType =
  ## ``@brief Decode exactly one complete urinterfaces/msg/JsonStringType value.``
  ## ``@details Require the complete 4..1028-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgJsonStringType; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1028)
  result = readRos2UrinterfacesMsgJsonStringType(r)
  finish(r)
type Ros2UrinterfacesMsgRuntimeState* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/RuntimeState value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 13..141 bytes and is identified by``
  ## ``UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/RuntimeState.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
  `data`*: int8 ## @brief urinterfaces/msg/RuntimeState.data: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeStateMaximumWireBytes* = 141 ## @brief Maximum canonical extent of
## urinterfaces/msg/RuntimeState in bytes.
## @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeStateCodecIdentity* = "UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6" ## @brief Canonical codec
## identity of
## urinterfaces/msg/RuntimeState.
## @details Exact identity UWVMROS1_711ca0e324cbeb36fcedea4881b8658a4b453402c410c8d3efaa57205aaf74b6 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeStateNativeType* = "urinterfaces/msg/RuntimeState" ## @brief Original ROS type name for
## urinterfaces/msg/RuntimeState.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeStateNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/RuntimeState.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_UNDEFINED*: int8 = -1'i8 ## @brief
## urinterfaces/msg/RuntimeState.PROGRAM_STATE_UNDEFINED:
## original int8 constant.
## @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_STOPPING*: int8 = 0'i8 ## @brief
## urinterfaces/msg/RuntimeState.PROGRAM_STATE_STOPPING:
## original int8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_STOPPED*: int8 = 1'i8 ## @brief
## urinterfaces/msg/RuntimeState.PROGRAM_STATE_STOPPED:
## original int8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RUNNING*: int8 = 2'i8 ## @brief
## urinterfaces/msg/RuntimeState.PROGRAM_STATE_RUNNING:
## original int8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_PAUSING*: int8 = 3'i8 ## @brief
## urinterfaces/msg/RuntimeState.PROGRAM_STATE_PAUSING:
## original int8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_PAUSED*: int8 = 4'i8 ## @brief
## urinterfaces/msg/RuntimeState.PROGRAM_STATE_PAUSED:
## original int8 constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RESUMING*: int8 = 5'i8 ## @brief
## urinterfaces/msg/RuntimeState.PROGRAM_STATE_RESUMING:
## original int8 constant.
## @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgRuntimeState_PROGRAM_STATE_RETRACTING*: int8 = 6'i8 ## @brief
## urinterfaces/msg/RuntimeState.PROGRAM_STATE_RETRACTING:
## original int8 constant.
## @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgRuntimeState*(): Ros2UrinterfacesMsgRuntimeState =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/RuntimeState.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = 0
proc writeFields*(value: Ros2UrinterfacesMsgRuntimeState; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/RuntimeState.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putInteger(w,value.`data`)
proc readRos2UrinterfacesMsgRuntimeState*(r: var Reader): Ros2UrinterfacesMsgRuntimeState =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/RuntimeState.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgRuntimeState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = getInteger(r,int8)
proc encode*(value: Ros2UrinterfacesMsgRuntimeState): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/RuntimeState value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(141)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgRuntimeState*(b: seq[byte]): Ros2UrinterfacesMsgRuntimeState =
  ## ``@brief Decode exactly one complete urinterfaces/msg/RuntimeState value.``
  ## ``@details Require the complete 13..141-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgRuntimeState; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,141)
  result = readRos2UrinterfacesMsgRuntimeState(r)
  finish(r)
type Ros2UrinterfacesMsgSafetyStatus* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/SafetyStatus value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 13..141 bytes and is identified by``
  ## ``UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/SafetyStatus.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
  `data`*: int8 ## @brief urinterfaces/msg/SafetyStatus.data: int8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatusMaximumWireBytes* = 141 ## @brief Maximum canonical extent of
## urinterfaces/msg/SafetyStatus in bytes.
## @details The inclusive bound is 141 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatusCodecIdentity* = "UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4" ## @brief Canonical codec
## identity of
## urinterfaces/msg/SafetyStatus.
## @details Exact identity UWVMROS1_8f266e1ee8ab2ee9791ff4b52f9dae8ef982844c8d24a0bdfb4bb93cc55b78d4 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatusNativeType* = "urinterfaces/msg/SafetyStatus" ## @brief Original ROS type name for
## urinterfaces/msg/SafetyStatus.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatusNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/SafetyStatus.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_NORMAL*: int8 = 1'i8 ## @brief urinterfaces/msg/SafetyStatus.NORMAL: original int8
## constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_REDUCED*: int8 = 2'i8 ## @brief urinterfaces/msg/SafetyStatus.REDUCED: original
## int8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_PROTECTIVE_STOP*: int8 = 3'i8 ## @brief
## urinterfaces/msg/SafetyStatus.PROTECTIVE_STOP:
## original int8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_RECOVERY*: int8 = 4'i8 ## @brief urinterfaces/msg/SafetyStatus.RECOVERY: original
## int8 constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_SAFEGUARD_STOP*: int8 = 5'i8 ## @brief
## urinterfaces/msg/SafetyStatus.SAFEGUARD_STOP:
## original int8 constant.
## @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_SYSTEM_EMERGENCY_STOP*: int8 = 6'i8 ## @brief
## urinterfaces/msg/SafetyStatus.SYSTEM_EMERGENCY_STOP:
## original int8 constant.
## @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_ROBOT_EMERGENCY_STOP*: int8 = 7'i8 ## @brief
## urinterfaces/msg/SafetyStatus.ROBOT_EMERGENCY_STOP:
## original int8 constant.
## @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_VIOLATION*: int8 = 8'i8 ## @brief urinterfaces/msg/SafetyStatus.VIOLATION:
## original int8 constant.
## @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_FAULT*: int8 = 9'i8 ## @brief urinterfaces/msg/SafetyStatus.FAULT: original int8
## constant.
## @details Exact admitted value 9. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_VALIDATE_JOINT_ID*: int8 = 10'i8 ## @brief
## urinterfaces/msg/SafetyStatus.VALIDATE_JOINT_ID:
## original int8 constant.
## @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_UNDEFINED_SAFETY_MODE*: int8 = 11'i8 ## @brief
## urinterfaces/msg/SafetyStatus.UNDEFINED_SAFETY_MODE:
## original int8 constant.
## @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_AUTOMATIC_MODE_SAFEGUARD_STOP*: int8 = 12'i8 ## @brief
## urinterfaces/msg/SafetyStatus.AUTOMATIC_MODE_SAFEGUARD_STOP:
## original int8 constant.
## @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_SYSTEM_THREE_POSITION_ENABLING_STOP*: int8 = 13'i8 ## @brief
## urinterfaces/msg/SafetyStatus.SYSTEM_THREE_POSITION_ENABLING_STOP:
## original int8 constant.
## @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_TP_THREE_POSITION_ENABLING_STOP*: int8 = 14'i8 ## @brief
## urinterfaces/msg/SafetyStatus.TP_THREE_POSITION_ENABLING_STOP:
## original int8 constant.
## @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_IMMI_EMERGENCY_STOP*: int8 = 15'i8 ## @brief
## urinterfaces/msg/SafetyStatus.IMMI_EMERGENCY_STOP:
## original int8 constant.
## @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_IMMI_SAFEGUARD_STOP*: int8 = 16'i8 ## @brief
## urinterfaces/msg/SafetyStatus.IMMI_SAFEGUARD_STOP:
## original int8 constant.
## @details Exact admitted value 16. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_PROFISAFE_WAITING_FOR_PARAMETERS*: int8 = 17'i8 ## @brief
## urinterfaces/msg/SafetyStatus.PROFISAFE_WAITING_FOR_PARAMETERS:
## original int8 constant.
## @details Exact admitted value 17. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP*: int8 = 18'i8 ## @brief
## urinterfaces/msg/SafetyStatus.PROFISAFE_AUTOMATIC_MODE_SAFEGUARD_STOP:
## original int8 constant.
## @details Exact admitted value 18. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_PROFISAFE_SAFEGUARD_STOP*: int8 = 19'i8 ## @brief
## urinterfaces/msg/SafetyStatus.PROFISAFE_SAFEGUARD_STOP:
## original int8 constant.
## @details Exact admitted value 19. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_PROFISAFE_EMERGENCY_STOP*: int8 = 20'i8 ## @brief
## urinterfaces/msg/SafetyStatus.PROFISAFE_EMERGENCY_STOP:
## original int8 constant.
## @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_SAFETY_API_SAFEGUARD_STOP*: int8 = 22'i8 ## @brief
## urinterfaces/msg/SafetyStatus.SAFETY_API_SAFEGUARD_STOP:
## original int8 constant.
## @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSafetyStatus_IO_PLANE_STOP*: int8 = 23'i8 ## @brief
## urinterfaces/msg/SafetyStatus.IO_PLANE_STOP:
## original int8 constant.
## @details Exact admitted value 23. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgSafetyStatus*(): Ros2UrinterfacesMsgSafetyStatus =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/SafetyStatus.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = 0
proc writeFields*(value: Ros2UrinterfacesMsgSafetyStatus; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/SafetyStatus.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putInteger(w,value.`data`)
proc readRos2UrinterfacesMsgSafetyStatus*(r: var Reader): Ros2UrinterfacesMsgSafetyStatus =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/SafetyStatus.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgSafetyStatus()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = getInteger(r,int8)
proc encode*(value: Ros2UrinterfacesMsgSafetyStatus): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/SafetyStatus value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(141)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgSafetyStatus*(b: seq[byte]): Ros2UrinterfacesMsgSafetyStatus =
  ## ``@brief Decode exactly one complete urinterfaces/msg/SafetyStatus value.``
  ## ``@details Require the complete 13..141-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSafetyStatus; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,141)
  result = readRos2UrinterfacesMsgSafetyStatus(r)
  finish(r)
type Ros2UrinterfacesMsgSharedVariablesEditResponse* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/SharedVariablesEditResponse value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..1029 bytes and is identified by``
  ## ``UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief urinterfaces/msg/SharedVariablesEditResponse.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md
  `result_message`*: Ros2Std_msgsMsgString ## @brief urinterfaces/msg/SharedVariablesEditResponse.result_message:
  ## std_msgs/msg/String.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSharedVariablesEditResponseMaximumWireBytes* = 1029 ## @brief Maximum canonical extent of
## urinterfaces/msg/SharedVariablesEditResponse
## in bytes.
## @details The inclusive bound is 1029 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSharedVariablesEditResponseCodecIdentity* = "UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212" ## @brief Canonical codec
## identity of
## urinterfaces/msg/SharedVariablesEditResponse.
## @details Exact identity UWVMROS1_870ce8f649642b6edcce8ba5c7cb27818ec138d7afb2cde926638d21ea748212 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSharedVariablesEditResponseNativeType* = "urinterfaces/msg/SharedVariablesEditResponse" ## @brief Original ROS type name
## for
## urinterfaces/msg/SharedVariablesEditResponse.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSharedVariablesEditResponseNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/SharedVariablesEditResponse.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgSharedVariablesEditResponse*(): Ros2UrinterfacesMsgSharedVariablesEditResponse =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/SharedVariablesEditResponse.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
  result.`result_message` = initRos2Std_msgsMsgString()
proc writeFields*(value: Ros2UrinterfacesMsgSharedVariablesEditResponse; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/SharedVariablesEditResponse.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
  writeFields(value.`result_message`,w)
proc readRos2UrinterfacesMsgSharedVariablesEditResponse*(r: var Reader): Ros2UrinterfacesMsgSharedVariablesEditResponse =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/SharedVariablesEditResponse.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgSharedVariablesEditResponse()
  result.`success` = getBool(r)
  result.`result_message` = readRos2Std_msgsMsgString(r)
proc encode*(value: Ros2UrinterfacesMsgSharedVariablesEditResponse): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/SharedVariablesEditResponse value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1029)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgSharedVariablesEditResponse*(b: seq[byte]): Ros2UrinterfacesMsgSharedVariablesEditResponse =
  ## ``@brief Decode exactly one complete urinterfaces/msg/SharedVariablesEditResponse value.``
  ## ``@details Require the complete 5..1029-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSharedVariablesEditResponse; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1029)
  result = readRos2UrinterfacesMsgSharedVariablesEditResponse(r)
  finish(r)
type Ros2UrinterfacesMsgSpeedSliderFraction* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/SpeedSliderFraction value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 20..148 bytes and is identified by``
  ## ``UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/SpeedSliderFraction.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md
  `data`*: float64 ## @brief urinterfaces/msg/SpeedSliderFraction.data: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSpeedSliderFractionMaximumWireBytes* = 148 ## @brief Maximum canonical extent of
## urinterfaces/msg/SpeedSliderFraction in bytes.
## @details The inclusive bound is 148 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSpeedSliderFractionCodecIdentity* = "UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd" ## @brief Canonical codec
## identity of
## urinterfaces/msg/SpeedSliderFraction.
## @details Exact identity UWVMROS1_55158782c2bc4d4741e8f2850efddf09d27666f9c3aeeded762d8d8e4198fccd binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSpeedSliderFractionNativeType* = "urinterfaces/msg/SpeedSliderFraction" ## @brief Original ROS type name
## for
## urinterfaces/msg/SpeedSliderFraction.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgSpeedSliderFractionNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/SpeedSliderFraction.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgSpeedSliderFraction*(): Ros2UrinterfacesMsgSpeedSliderFraction =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/SpeedSliderFraction.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = 0
proc writeFields*(value: Ros2UrinterfacesMsgSpeedSliderFraction; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/SpeedSliderFraction.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putFloat64(w,value.`data`)
proc readRos2UrinterfacesMsgSpeedSliderFraction*(r: var Reader): Ros2UrinterfacesMsgSpeedSliderFraction =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/SpeedSliderFraction.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgSpeedSliderFraction()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = getFloat64(r)
proc encode*(value: Ros2UrinterfacesMsgSpeedSliderFraction): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/SpeedSliderFraction value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(148)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgSpeedSliderFraction*(b: seq[byte]): Ros2UrinterfacesMsgSpeedSliderFraction =
  ## ``@brief Decode exactly one complete urinterfaces/msg/SpeedSliderFraction value.``
  ## ``@details Require the complete 20..148-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgSpeedSliderFraction; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,148)
  result = readRos2UrinterfacesMsgSpeedSliderFraction(r)
  finish(r)
type Ros2UrinterfacesMsgTCPState* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/TCPState value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 116..244 bytes and is identified by``
  ## ``UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/TCPState.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md
  `pose`*: Ros2Geometry_msgsMsgPose ## @brief urinterfaces/msg/TCPState.pose: geometry_msgs/msg/Pose.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md
  `speed`*: Ros2Geometry_msgsMsgTwist ## @brief urinterfaces/msg/TCPState.speed: geometry_msgs/msg/Twist.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgTCPStateMaximumWireBytes* = 244 ## @brief Maximum canonical extent of urinterfaces/msg/TCPState
## in bytes.
## @details The inclusive bound is 244 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgTCPStateCodecIdentity* = "UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92" ## @brief Canonical codec
## identity of
## urinterfaces/msg/TCPState.
## @details Exact identity UWVMROS1_49d8f678cc32669dd81528bb4c5d97f28019745159ef5e7267c8a076cd315b92 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgTCPStateNativeType* = "urinterfaces/msg/TCPState" ## @brief Original ROS type name for
## urinterfaces/msg/TCPState.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgTCPStateNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/TCPState.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgTCPState*(): Ros2UrinterfacesMsgTCPState =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/TCPState.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`pose` = initRos2Geometry_msgsMsgPose()
  result.`speed` = initRos2Geometry_msgsMsgTwist()
proc writeFields*(value: Ros2UrinterfacesMsgTCPState; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/TCPState.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  writeFields(value.`pose`,w)
  writeFields(value.`speed`,w)
proc readRos2UrinterfacesMsgTCPState*(r: var Reader): Ros2UrinterfacesMsgTCPState =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/TCPState.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgTCPState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`pose` = readRos2Geometry_msgsMsgPose(r)
  result.`speed` = readRos2Geometry_msgsMsgTwist(r)
proc encode*(value: Ros2UrinterfacesMsgTCPState): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/TCPState value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(244)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgTCPState*(b: seq[byte]): Ros2UrinterfacesMsgTCPState =
  ## ``@brief Decode exactly one complete urinterfaces/msg/TCPState value.``
  ## ``@details Require the complete 116..244-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgTCPState; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,244)
  result = readRos2UrinterfacesMsgTCPState(r)
  finish(r)
type Ros2UrinterfacesMsgToolOutputMode* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/ToolOutputMode value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 15..143 bytes and is identified by``
  ## ``UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/ToolOutputMode.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
  `output_mode`*: uint8 ## @brief urinterfaces/msg/ToolOutputMode.output_mode: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
  `output_pin_mode`*: array[2,uint8] ## @brief urinterfaces/msg/ToolOutputMode.output_pin_mode: uint8; exactly 2
  ## elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputModeMaximumWireBytes* = 143 ## @brief Maximum canonical extent of
## urinterfaces/msg/ToolOutputMode in bytes.
## @details The inclusive bound is 143 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputModeCodecIdentity* = "UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660" ## @brief Canonical codec
## identity of
## urinterfaces/msg/ToolOutputMode.
## @details Exact identity UWVMROS1_21df545459050dc86de1fb111c9a4b2c8bb50c3729137b8d5c5134dd33b84660 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputModeNativeType* = "urinterfaces/msg/ToolOutputMode" ## @brief Original ROS type name
## for
## urinterfaces/msg/ToolOutputMode.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputModeNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/ToolOutputMode.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputMode_TOOL_OUTPUT*: uint8 = 0'u8 ## @brief
## urinterfaces/msg/ToolOutputMode.TOOL_OUTPUT:
## original uint8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputMode_TOOL_POWER*: uint8 = 1'u8 ## @brief urinterfaces/msg/ToolOutputMode.TOOL_POWER:
## original uint8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputMode_TOOL_SAFE*: uint8 = 2'u8 ## @brief urinterfaces/msg/ToolOutputMode.TOOL_SAFE:
## original uint8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_DISABLED*: uint8 = 0'u8 ## @brief
## urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_DISABLED:
## original uint8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_SINKING*: uint8 = 1'u8 ## @brief
## urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_SINKING:
## original uint8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_SOURCING*: uint8 = 2'u8 ## @brief
## urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_SOURCING:
## original uint8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgToolOutputMode_OUTPUT_MODE_PUSH_PULL*: uint8 = 3'u8 ## @brief
## urinterfaces/msg/ToolOutputMode.OUTPUT_MODE_PUSH_PULL:
## original uint8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgToolOutputMode*(): Ros2UrinterfacesMsgToolOutputMode =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/ToolOutputMode.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`output_mode` = 0
  result.`output_pin_mode` = [0,0]
proc writeFields*(value: Ros2UrinterfacesMsgToolOutputMode; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/ToolOutputMode.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putInteger(w,value.`output_mode`)
  for e in value.`output_pin_mode`:
    putInteger(w,e)
proc readRos2UrinterfacesMsgToolOutputMode*(r: var Reader): Ros2UrinterfacesMsgToolOutputMode =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/ToolOutputMode.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgToolOutputMode()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`output_mode` = getInteger(r,uint8)
  let count2 = 2
  for i in 0..<count2:
    result.`output_pin_mode`[i] = getInteger(r,uint8)
proc encode*(value: Ros2UrinterfacesMsgToolOutputMode): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/ToolOutputMode value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(143)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgToolOutputMode*(b: seq[byte]): Ros2UrinterfacesMsgToolOutputMode =
  ## ``@brief Decode exactly one complete urinterfaces/msg/ToolOutputMode value.``
  ## ``@details Require the complete 15..143-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgToolOutputMode; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,143)
  result = readRos2UrinterfacesMsgToolOutputMode(r)
  finish(r)
type Ros2UrinterfacesMsgVariableUpdate* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/VariableUpdate value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 16..1168 bytes and is identified by``
  ## ``UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/VariableUpdate.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md
  `data`*: Ros2UrinterfacesMsgJsonStringType ## @brief urinterfaces/msg/VariableUpdate.data:
  ## urinterfaces/msg/JsonStringType.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgVariableUpdateMaximumWireBytes* = 1168 ## @brief Maximum canonical extent of
## urinterfaces/msg/VariableUpdate in bytes.
## @details The inclusive bound is 1168 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgVariableUpdateCodecIdentity* = "UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20" ## @brief Canonical codec
## identity of
## urinterfaces/msg/VariableUpdate.
## @details Exact identity UWVMROS1_7028ea5c674be886f4fac1d2ac0452167489f2c23d7ea759cdbec90feccbdb20 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgVariableUpdateNativeType* = "urinterfaces/msg/VariableUpdate" ## @brief Original ROS type name
## for
## urinterfaces/msg/VariableUpdate.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgVariableUpdateNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/VariableUpdate.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgVariableUpdate*(): Ros2UrinterfacesMsgVariableUpdate =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/VariableUpdate.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = initRos2UrinterfacesMsgJsonStringType()
proc writeFields*(value: Ros2UrinterfacesMsgVariableUpdate; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/VariableUpdate.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  writeFields(value.`data`,w)
proc readRos2UrinterfacesMsgVariableUpdate*(r: var Reader): Ros2UrinterfacesMsgVariableUpdate =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/VariableUpdate.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgVariableUpdate()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`data` = readRos2UrinterfacesMsgJsonStringType(r)
proc encode*(value: Ros2UrinterfacesMsgVariableUpdate): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/VariableUpdate value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1168)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgVariableUpdate*(b: seq[byte]): Ros2UrinterfacesMsgVariableUpdate =
  ## ``@brief Decode exactly one complete urinterfaces/msg/VariableUpdate value.``
  ## ``@details Require the complete 16..1168-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgVariableUpdate; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1168)
  result = readRos2UrinterfacesMsgVariableUpdate(r)
  finish(r)
type Ros2UrinterfacesMsgVoltageCurrentStamped* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/VoltageCurrentStamped value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 28..156 bytes and is identified by``
  ## ``UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/VoltageCurrentStamped.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md
  `voltage`*: float64 ## @brief urinterfaces/msg/VoltageCurrentStamped.voltage: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md
  `current`*: float64 ## @brief urinterfaces/msg/VoltageCurrentStamped.current: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgVoltageCurrentStampedMaximumWireBytes* = 156 ## @brief Maximum canonical extent of
## urinterfaces/msg/VoltageCurrentStamped in
## bytes.
## @details The inclusive bound is 156 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgVoltageCurrentStampedCodecIdentity* = "UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805" ## @brief Canonical codec
## identity of
## urinterfaces/msg/VoltageCurrentStamped.
## @details Exact identity UWVMROS1_bcc3f6871a7bf0ff691d0c9c1b6596a633597de795b486c2b82ac922ede76805 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgVoltageCurrentStampedNativeType* = "urinterfaces/msg/VoltageCurrentStamped" ## @brief Original ROS type name
## for
## urinterfaces/msg/VoltageCurrentStamped.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgVoltageCurrentStampedNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/VoltageCurrentStamped.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgVoltageCurrentStamped*(): Ros2UrinterfacesMsgVoltageCurrentStamped =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/VoltageCurrentStamped.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`voltage` = 0
  result.`current` = 0
proc writeFields*(value: Ros2UrinterfacesMsgVoltageCurrentStamped; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/VoltageCurrentStamped.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  putFloat64(w,value.`voltage`)
  putFloat64(w,value.`current`)
proc readRos2UrinterfacesMsgVoltageCurrentStamped*(r: var Reader): Ros2UrinterfacesMsgVoltageCurrentStamped =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/VoltageCurrentStamped.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgVoltageCurrentStamped()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  result.`voltage` = getFloat64(r)
  result.`current` = getFloat64(r)
proc encode*(value: Ros2UrinterfacesMsgVoltageCurrentStamped): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/VoltageCurrentStamped value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(156)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgVoltageCurrentStamped*(b: seq[byte]): Ros2UrinterfacesMsgVoltageCurrentStamped =
  ## ``@brief Decode exactly one complete urinterfaces/msg/VoltageCurrentStamped value.``
  ## ``@details Require the complete 28..156-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgVoltageCurrentStamped; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,156)
  result = readRos2UrinterfacesMsgVoltageCurrentStamped(r)
  finish(r)
type Ros2UrinterfacesMsgWorldModelNames* = object
  ## ``@brief Complete ROS 2 urinterfaces/msg/WorldModelNames value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 16..16592 bytes and is identified by``
  ## ``UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief urinterfaces/msg/WorldModelNames.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md
  `data`*: seq[Ros2Std_msgsMsgString] ## @brief urinterfaces/msg/WorldModelNames.data: std_msgs/msg/String; 0..16
  ## elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgWorldModelNamesMaximumWireBytes* = 16592 ## @brief Maximum canonical extent of
## urinterfaces/msg/WorldModelNames in bytes.
## @details The inclusive bound is 16592 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgWorldModelNamesCodecIdentity* = "UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9" ## @brief Canonical codec
## identity of
## urinterfaces/msg/WorldModelNames.
## @details Exact identity UWVMROS1_499f722fc97565bd0124888d7c20f4e9f8947893c49b1608dcf201fe3538d7a9 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgWorldModelNamesNativeType* = "urinterfaces/msg/WorldModelNames" ## @brief Original ROS type name
## for
## urinterfaces/msg/WorldModelNames.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesMsgWorldModelNamesNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/msg/WorldModelNames.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesMsgWorldModelNames*(): Ros2UrinterfacesMsgWorldModelNames =
  ## ``@brief Construct the declared defaults of urinterfaces/msg/WorldModelNames.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`data` = @[]
proc writeFields*(value: Ros2UrinterfacesMsgWorldModelNames; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/msg/WorldModelNames.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  if value.`data`.len > 16: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
proc readRos2UrinterfacesMsgWorldModelNames*(r: var Reader): Ros2UrinterfacesMsgWorldModelNames =
  ## ``@brief Read the ordered canonical fields of urinterfaces/msg/WorldModelNames.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesMsgWorldModelNames()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`data` = newSeq[Ros2Std_msgsMsgString](count1)
  for i in 0..<count1:
    result.`data`[i] = readRos2Std_msgsMsgString(r)
proc encode*(value: Ros2UrinterfacesMsgWorldModelNames): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/msg/WorldModelNames value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(16592)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesMsgWorldModelNames*(b: seq[byte]): Ros2UrinterfacesMsgWorldModelNames =
  ## ``@brief Decode exactly one complete urinterfaces/msg/WorldModelNames value.``
  ## ``@details Require the complete 16..16592-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesMsgWorldModelNames; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,16592)
  result = readRos2UrinterfacesMsgWorldModelNames(r)
  finish(r)
type Ros2UrinterfacesSrvSetAnalogOutput_Request* = object
  ## ``@brief Complete ROS 2 urinterfaces/srv/SetAnalogOutput_Request value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..100 bytes and is identified by``
  ## ``UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `data`*: seq[Ros2UrinterfacesMsgAnalog] ## @brief urinterfaces/srv/SetAnalogOutput_Request.data:
  ## urinterfaces/msg/Analog; 0..16 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetAnalogOutput_RequestMaximumWireBytes* = 100 ## @brief Maximum canonical extent of
## urinterfaces/srv/SetAnalogOutput_Request in
## bytes.
## @details The inclusive bound is 100 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetAnalogOutput_RequestCodecIdentity* = "UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d" ## @brief Canonical codec
## identity of
## urinterfaces/srv/SetAnalogOutput_Request.
## @details Exact identity UWVMROS1_8be07a94dd334a03871180a9c73bab11377664e60500ac68d312398d51acd32d binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetAnalogOutput_RequestNativeType* = "urinterfaces/srv/SetAnalogOutput_Request" ## @brief Original ROS type name
## for
## urinterfaces/srv/SetAnalogOutput_Request.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetAnalogOutput_RequestNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/srv/SetAnalogOutput_Request.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesSrvSetAnalogOutput_Request*(): Ros2UrinterfacesSrvSetAnalogOutput_Request =
  ## ``@brief Construct the declared defaults of urinterfaces/srv/SetAnalogOutput_Request.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`data` = @[]
proc writeFields*(value: Ros2UrinterfacesSrvSetAnalogOutput_Request; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/srv/SetAnalogOutput_Request.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/nim/API-CONTRACT.md``
  if value.`data`.len > 16: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
proc readRos2UrinterfacesSrvSetAnalogOutput_Request*(r: var Reader): Ros2UrinterfacesSrvSetAnalogOutput_Request =
  ## ``@brief Read the ordered canonical fields of urinterfaces/srv/SetAnalogOutput_Request.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesSrvSetAnalogOutput_Request()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[Ros2UrinterfacesMsgAnalog](count0)
  for i in 0..<count0:
    result.`data`[i] = readRos2UrinterfacesMsgAnalog(r)
proc encode*(value: Ros2UrinterfacesSrvSetAnalogOutput_Request): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/srv/SetAnalogOutput_Request value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(100)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesSrvSetAnalogOutput_Request*(b: seq[byte]): Ros2UrinterfacesSrvSetAnalogOutput_Request =
  ## ``@brief Decode exactly one complete urinterfaces/srv/SetAnalogOutput_Request value.``
  ## ``@details Require the complete 4..100-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetAnalogOutput_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,100)
  result = readRos2UrinterfacesSrvSetAnalogOutput_Request(r)
  finish(r)
type Ros2UrinterfacesSrvSetAnalogOutput_Response* = object
  ## ``@brief Complete ROS 2 urinterfaces/srv/SetAnalogOutput_Response value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief urinterfaces/srv/SetAnalogOutput_Response.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetAnalogOutput_ResponseMaximumWireBytes* = 1 ## @brief Maximum canonical extent of
## urinterfaces/srv/SetAnalogOutput_Response in
## bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetAnalogOutput_ResponseCodecIdentity* = "UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e" ## @brief Canonical codec
## identity of
## urinterfaces/srv/SetAnalogOutput_Response.
## @details Exact identity UWVMROS1_14016138286129e4f155ac2f82f5573e8a4af7d7c5ede55ce57f3ad76cb82e4e binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetAnalogOutput_ResponseNativeType* = "urinterfaces/srv/SetAnalogOutput_Response" ## @brief Original ROS type name
## for
## urinterfaces/srv/SetAnalogOutput_Response.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetAnalogOutput_ResponseNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/srv/SetAnalogOutput_Response.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesSrvSetAnalogOutput_Response*(): Ros2UrinterfacesSrvSetAnalogOutput_Response =
  ## ``@brief Construct the declared defaults of urinterfaces/srv/SetAnalogOutput_Response.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros2UrinterfacesSrvSetAnalogOutput_Response; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/srv/SetAnalogOutput_Response.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos2UrinterfacesSrvSetAnalogOutput_Response*(r: var Reader): Ros2UrinterfacesSrvSetAnalogOutput_Response =
  ## ``@brief Read the ordered canonical fields of urinterfaces/srv/SetAnalogOutput_Response.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesSrvSetAnalogOutput_Response()
  result.`success` = getBool(r)
proc encode*(value: Ros2UrinterfacesSrvSetAnalogOutput_Response): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/srv/SetAnalogOutput_Response value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesSrvSetAnalogOutput_Response*(b: seq[byte]): Ros2UrinterfacesSrvSetAnalogOutput_Response =
  ## ``@brief Decode exactly one complete urinterfaces/srv/SetAnalogOutput_Response value.``
  ## ``@details Require the complete 1..1-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetAnalogOutput_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2UrinterfacesSrvSetAnalogOutput_Response(r)
  finish(r)
type Ros2UrinterfacesSrvSetDigitalOutput_Request* = object
  ## ``@brief Complete ROS 2 urinterfaces/srv/SetDigitalOutput_Request value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..36 bytes and is identified by``
  ## ``UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `data`*: seq[Ros2UrinterfacesMsgDigital] ## @brief urinterfaces/srv/SetDigitalOutput_Request.data:
  ## urinterfaces/msg/Digital; 0..16 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetDigitalOutput_RequestMaximumWireBytes* = 36 ## @brief Maximum canonical extent of
## urinterfaces/srv/SetDigitalOutput_Request in
## bytes.
## @details The inclusive bound is 36 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetDigitalOutput_RequestCodecIdentity* = "UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47" ## @brief Canonical codec
## identity of
## urinterfaces/srv/SetDigitalOutput_Request.
## @details Exact identity UWVMROS1_ec6c587810af7f3d04b10058e69c8095775e8b6feede5fc0f60ca1dfda0b5e47 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetDigitalOutput_RequestNativeType* = "urinterfaces/srv/SetDigitalOutput_Request" ## @brief Original ROS type name
## for
## urinterfaces/srv/SetDigitalOutput_Request.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetDigitalOutput_RequestNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/srv/SetDigitalOutput_Request.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesSrvSetDigitalOutput_Request*(): Ros2UrinterfacesSrvSetDigitalOutput_Request =
  ## ``@brief Construct the declared defaults of urinterfaces/srv/SetDigitalOutput_Request.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`data` = @[]
proc writeFields*(value: Ros2UrinterfacesSrvSetDigitalOutput_Request; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/srv/SetDigitalOutput_Request.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/nim/API-CONTRACT.md``
  if value.`data`.len > 16: fail(22)
  putInteger(w,uint32(value.`data`.len))
  for e in value.`data`:
    writeFields(e,w)
proc readRos2UrinterfacesSrvSetDigitalOutput_Request*(r: var Reader): Ros2UrinterfacesSrvSetDigitalOutput_Request =
  ## ``@brief Read the ordered canonical fields of urinterfaces/srv/SetDigitalOutput_Request.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesSrvSetDigitalOutput_Request()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`data` = newSeq[Ros2UrinterfacesMsgDigital](count0)
  for i in 0..<count0:
    result.`data`[i] = readRos2UrinterfacesMsgDigital(r)
proc encode*(value: Ros2UrinterfacesSrvSetDigitalOutput_Request): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/srv/SetDigitalOutput_Request value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(36)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesSrvSetDigitalOutput_Request*(b: seq[byte]): Ros2UrinterfacesSrvSetDigitalOutput_Request =
  ## ``@brief Decode exactly one complete urinterfaces/srv/SetDigitalOutput_Request value.``
  ## ``@details Require the complete 4..36-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetDigitalOutput_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,36)
  result = readRos2UrinterfacesSrvSetDigitalOutput_Request(r)
  finish(r)
type Ros2UrinterfacesSrvSetDigitalOutput_Response* = object
  ## ``@brief Complete ROS 2 urinterfaces/srv/SetDigitalOutput_Response value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief urinterfaces/srv/SetDigitalOutput_Response.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetDigitalOutput_ResponseMaximumWireBytes* = 1 ## @brief Maximum canonical extent of
## urinterfaces/srv/SetDigitalOutput_Response in
## bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetDigitalOutput_ResponseCodecIdentity* = "UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d" ## @brief Canonical codec
## identity of
## urinterfaces/srv/SetDigitalOutput_Response.
## @details Exact identity UWVMROS1_0c5f0b8a7f1d14c6223838c3a28cb2236848b81ecfda29d2b704557579e9162d binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetDigitalOutput_ResponseNativeType* = "urinterfaces/srv/SetDigitalOutput_Response" ## @brief Original ROS type name
## for
## urinterfaces/srv/SetDigitalOutput_Response.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetDigitalOutput_ResponseNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/srv/SetDigitalOutput_Response.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesSrvSetDigitalOutput_Response*(): Ros2UrinterfacesSrvSetDigitalOutput_Response =
  ## ``@brief Construct the declared defaults of urinterfaces/srv/SetDigitalOutput_Response.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros2UrinterfacesSrvSetDigitalOutput_Response; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/srv/SetDigitalOutput_Response.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos2UrinterfacesSrvSetDigitalOutput_Response*(r: var Reader): Ros2UrinterfacesSrvSetDigitalOutput_Response =
  ## ``@brief Read the ordered canonical fields of urinterfaces/srv/SetDigitalOutput_Response.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesSrvSetDigitalOutput_Response()
  result.`success` = getBool(r)
proc encode*(value: Ros2UrinterfacesSrvSetDigitalOutput_Response): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/srv/SetDigitalOutput_Response value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesSrvSetDigitalOutput_Response*(b: seq[byte]): Ros2UrinterfacesSrvSetDigitalOutput_Response =
  ## ``@brief Decode exactly one complete urinterfaces/srv/SetDigitalOutput_Response value.``
  ## ``@details Require the complete 1..1-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetDigitalOutput_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2UrinterfacesSrvSetDigitalOutput_Response(r)
  finish(r)
type Ros2UrinterfacesSrvSetSpeedFraction_Request* = object
  ## ``@brief Complete ROS 2 urinterfaces/srv/SetSpeedFraction_Request value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..4 bytes and is identified by``
  ## ``UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `value`*: float32 ## @brief urinterfaces/srv/SetSpeedFraction_Request.value: float32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetSpeedFraction_RequestMaximumWireBytes* = 4 ## @brief Maximum canonical extent of
## urinterfaces/srv/SetSpeedFraction_Request in
## bytes.
## @details The inclusive bound is 4 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetSpeedFraction_RequestCodecIdentity* = "UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63" ## @brief Canonical codec
## identity of
## urinterfaces/srv/SetSpeedFraction_Request.
## @details Exact identity UWVMROS1_21fca7e952e32f24c905094c09776968c8cd80b7712a03de7c2a693ea79a7d63 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetSpeedFraction_RequestNativeType* = "urinterfaces/srv/SetSpeedFraction_Request" ## @brief Original ROS type name
## for
## urinterfaces/srv/SetSpeedFraction_Request.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetSpeedFraction_RequestNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/srv/SetSpeedFraction_Request.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesSrvSetSpeedFraction_Request*(): Ros2UrinterfacesSrvSetSpeedFraction_Request =
  ## ``@brief Construct the declared defaults of urinterfaces/srv/SetSpeedFraction_Request.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`value` = 0
proc writeFields*(value: Ros2UrinterfacesSrvSetSpeedFraction_Request; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/srv/SetSpeedFraction_Request.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/nim/API-CONTRACT.md``
  putFloat32(w,value.`value`)
proc readRos2UrinterfacesSrvSetSpeedFraction_Request*(r: var Reader): Ros2UrinterfacesSrvSetSpeedFraction_Request =
  ## ``@brief Read the ordered canonical fields of urinterfaces/srv/SetSpeedFraction_Request.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesSrvSetSpeedFraction_Request()
  result.`value` = getFloat32(r)
proc encode*(value: Ros2UrinterfacesSrvSetSpeedFraction_Request): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/srv/SetSpeedFraction_Request value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(4)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesSrvSetSpeedFraction_Request*(b: seq[byte]): Ros2UrinterfacesSrvSetSpeedFraction_Request =
  ## ``@brief Decode exactly one complete urinterfaces/srv/SetSpeedFraction_Request value.``
  ## ``@details Require the complete 4..4-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetSpeedFraction_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,4)
  result = readRos2UrinterfacesSrvSetSpeedFraction_Request(r)
  finish(r)
type Ros2UrinterfacesSrvSetSpeedFraction_Response* = object
  ## ``@brief Complete ROS 2 urinterfaces/srv/SetSpeedFraction_Response value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief urinterfaces/srv/SetSpeedFraction_Response.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetSpeedFraction_ResponseMaximumWireBytes* = 1 ## @brief Maximum canonical extent of
## urinterfaces/srv/SetSpeedFraction_Response in
## bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetSpeedFraction_ResponseCodecIdentity* = "UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6" ## @brief Canonical codec
## identity of
## urinterfaces/srv/SetSpeedFraction_Response.
## @details Exact identity UWVMROS1_386b067db70c17a88297d005650f6a05c0fb72eb5ee142a25c3e51c70b80c6e6 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetSpeedFraction_ResponseNativeType* = "urinterfaces/srv/SetSpeedFraction_Response" ## @brief Original ROS type name
## for
## urinterfaces/srv/SetSpeedFraction_Response.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSetSpeedFraction_ResponseNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/srv/SetSpeedFraction_Response.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesSrvSetSpeedFraction_Response*(): Ros2UrinterfacesSrvSetSpeedFraction_Response =
  ## ``@brief Construct the declared defaults of urinterfaces/srv/SetSpeedFraction_Response.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros2UrinterfacesSrvSetSpeedFraction_Response; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/srv/SetSpeedFraction_Response.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos2UrinterfacesSrvSetSpeedFraction_Response*(r: var Reader): Ros2UrinterfacesSrvSetSpeedFraction_Response =
  ## ``@brief Read the ordered canonical fields of urinterfaces/srv/SetSpeedFraction_Response.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesSrvSetSpeedFraction_Response()
  result.`success` = getBool(r)
proc encode*(value: Ros2UrinterfacesSrvSetSpeedFraction_Response): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/srv/SetSpeedFraction_Response value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesSrvSetSpeedFraction_Response*(b: seq[byte]): Ros2UrinterfacesSrvSetSpeedFraction_Response =
  ## ``@brief Decode exactly one complete urinterfaces/srv/SetSpeedFraction_Response value.``
  ## ``@details Require the complete 1..1-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSetSpeedFraction_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2UrinterfacesSrvSetSpeedFraction_Response(r)
  finish(r)
type Ros2UrinterfacesSrvSharedVariablesEditor_Request* = object
  ## ``@brief Complete ROS 2 urinterfaces/srv/SharedVariablesEditor_Request value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 4..1028 bytes and is identified by``
  ## ``UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `request`*: Ros2UrinterfacesMsgJsonStringType ## @brief urinterfaces/srv/SharedVariablesEditor_Request.request:
  ## urinterfaces/msg/JsonStringType.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSharedVariablesEditor_RequestMaximumWireBytes* = 1028 ## @brief Maximum canonical extent of
## urinterfaces/srv/SharedVariablesEditor_Request
## in bytes.
## @details The inclusive bound is 1028 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSharedVariablesEditor_RequestCodecIdentity* = "UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3" ## @brief Canonical codec
## identity of
## urinterfaces/srv/SharedVariablesEditor_Request.
## @details Exact identity UWVMROS1_c32d00237370b2eeb596c76bd9cda1ccfcab7618c71dec77d273f712462f5fa3 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSharedVariablesEditor_RequestNativeType* = "urinterfaces/srv/SharedVariablesEditor_Request" ## @brief Original ROS type name
## for
## urinterfaces/srv/SharedVariablesEditor_Request.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSharedVariablesEditor_RequestNativeIdentity* = "" ## @brief Selected original native identity
## for
## urinterfaces/srv/SharedVariablesEditor_Request.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesSrvSharedVariablesEditor_Request; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesSrvSharedVariablesEditor_Request*(): Ros2UrinterfacesSrvSharedVariablesEditor_Request =
  ## ``@brief Construct the declared defaults of urinterfaces/srv/SharedVariablesEditor_Request.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSharedVariablesEditor_Request;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`request` = initRos2UrinterfacesMsgJsonStringType()
proc writeFields*(value: Ros2UrinterfacesSrvSharedVariablesEditor_Request; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/srv/SharedVariablesEditor_Request.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSharedVariablesEditor_Request;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`request`,w)
proc readRos2UrinterfacesSrvSharedVariablesEditor_Request*(r: var Reader): Ros2UrinterfacesSrvSharedVariablesEditor_Request =
  ## ``@brief Read the ordered canonical fields of urinterfaces/srv/SharedVariablesEditor_Request.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSharedVariablesEditor_Request;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesSrvSharedVariablesEditor_Request()
  result.`request` = readRos2UrinterfacesMsgJsonStringType(r)
proc encode*(value: Ros2UrinterfacesSrvSharedVariablesEditor_Request): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/srv/SharedVariablesEditor_Request value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSharedVariablesEditor_Request;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1028)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesSrvSharedVariablesEditor_Request*(b: seq[byte]): Ros2UrinterfacesSrvSharedVariablesEditor_Request =
  ## ``@brief Decode exactly one complete urinterfaces/srv/SharedVariablesEditor_Request value.``
  ## ``@details Require the complete 4..1028-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSharedVariablesEditor_Request;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1028)
  result = readRos2UrinterfacesSrvSharedVariablesEditor_Request(r)
  finish(r)
type Ros2UrinterfacesSrvSharedVariablesEditor_Response* = object
  ## ``@brief Complete ROS 2 urinterfaces/srv/SharedVariablesEditor_Response value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..1029 bytes and is identified by``
  ## ``UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `response`*: Ros2UrinterfacesMsgSharedVariablesEditResponse ## @brief
  ## urinterfaces/srv/SharedVariablesEditor_Response.response:
  ## urinterfaces/msg/SharedVariablesEditResponse.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSharedVariablesEditor_ResponseMaximumWireBytes* = 1029 ## @brief Maximum canonical extent of
## urinterfaces/srv/SharedVariablesEditor_Response
## in bytes.
## @details The inclusive bound is 1029 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSharedVariablesEditor_ResponseCodecIdentity* = "UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea" ## @brief Canonical codec
## identity of
## urinterfaces/srv/SharedVariablesEditor_Response.
## @details Exact identity UWVMROS1_4134f7ed9715b3f6e3fd7ecca44fcae67cdd5dc2fa432b07ab75485901d1d5ea binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSharedVariablesEditor_ResponseNativeType* = "urinterfaces/srv/SharedVariablesEditor_Response" ## @brief Original ROS type name
## for
## urinterfaces/srv/SharedVariablesEditor_Response.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvSharedVariablesEditor_ResponseNativeIdentity* = "" ## @brief Selected original native identity
## for
## urinterfaces/srv/SharedVariablesEditor_Response.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesSrvSharedVariablesEditor_Response; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesSrvSharedVariablesEditor_Response*(): Ros2UrinterfacesSrvSharedVariablesEditor_Response =
  ## ``@brief Construct the declared defaults of urinterfaces/srv/SharedVariablesEditor_Response.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSharedVariablesEditor_Response;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`response` = initRos2UrinterfacesMsgSharedVariablesEditResponse()
proc writeFields*(value: Ros2UrinterfacesSrvSharedVariablesEditor_Response; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/srv/SharedVariablesEditor_Response.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSharedVariablesEditor_Response;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`response`,w)
proc readRos2UrinterfacesSrvSharedVariablesEditor_Response*(r: var Reader): Ros2UrinterfacesSrvSharedVariablesEditor_Response =
  ## ``@brief Read the ordered canonical fields of``
  ## ``urinterfaces/srv/SharedVariablesEditor_Response.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSharedVariablesEditor_Response;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesSrvSharedVariablesEditor_Response()
  result.`response` = readRos2UrinterfacesMsgSharedVariablesEditResponse(r)
proc encode*(value: Ros2UrinterfacesSrvSharedVariablesEditor_Response): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/srv/SharedVariablesEditor_Response value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSharedVariablesEditor_Response;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1029)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesSrvSharedVariablesEditor_Response*(b: seq[byte]): Ros2UrinterfacesSrvSharedVariablesEditor_Response =
  ## ``@brief Decode exactly one complete urinterfaces/srv/SharedVariablesEditor_Response value.``
  ## ``@details Require the complete 5..1029-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvSharedVariablesEditor_Response;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1029)
  result = readRos2UrinterfacesSrvSharedVariablesEditor_Response(r)
  finish(r)
type Ros2UrinterfacesSrvVariablesViewer_Request* = object
  ## ``@brief Complete ROS 2 urinterfaces/srv/VariablesViewer_Request value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2UrinterfacesSrvVariablesViewer_RequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## urinterfaces/srv/VariablesViewer_Request in
## bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvVariablesViewer_RequestCodecIdentity* = "UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a" ## @brief Canonical codec
## identity of
## urinterfaces/srv/VariablesViewer_Request.
## @details Exact identity UWVMROS1_6ecb0db6328d813bfb987ae987d3b7f2c6913dba2cf2a62f644a8eb2f760152a binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvVariablesViewer_RequestNativeType* = "urinterfaces/srv/VariablesViewer_Request" ## @brief Original ROS type name
## for
## urinterfaces/srv/VariablesViewer_Request.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvVariablesViewer_RequestNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/srv/VariablesViewer_Request.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesSrvVariablesViewer_Request*(): Ros2UrinterfacesSrvVariablesViewer_Request =
  ## ``@brief Construct the declared defaults of urinterfaces/srv/VariablesViewer_Request.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2UrinterfacesSrvVariablesViewer_Request; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/srv/VariablesViewer_Request.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2UrinterfacesSrvVariablesViewer_Request*(r: var Reader): Ros2UrinterfacesSrvVariablesViewer_Request =
  ## ``@brief Read the ordered canonical fields of urinterfaces/srv/VariablesViewer_Request.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesSrvVariablesViewer_Request()
proc encode*(value: Ros2UrinterfacesSrvVariablesViewer_Request): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/srv/VariablesViewer_Request value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesSrvVariablesViewer_Request*(b: seq[byte]): Ros2UrinterfacesSrvVariablesViewer_Request =
  ## ``@brief Decode exactly one complete urinterfaces/srv/VariablesViewer_Request value.``
  ## ``@details Require the complete 0..0-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvVariablesViewer_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2UrinterfacesSrvVariablesViewer_Request(r)
  finish(r)
type Ros2UrinterfacesSrvVariablesViewer_Response* = object
  ## ``@brief Complete ROS 2 urinterfaces/srv/VariablesViewer_Response value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 16..1168 bytes and is identified by``
  ## ``UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `response`*: Ros2UrinterfacesMsgVariableUpdate ## @brief urinterfaces/srv/VariablesViewer_Response.response:
  ## urinterfaces/msg/VariableUpdate.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvVariablesViewer_ResponseMaximumWireBytes* = 1168 ## @brief Maximum canonical extent of
## urinterfaces/srv/VariablesViewer_Response
## in bytes.
## @details The inclusive bound is 1168 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvVariablesViewer_ResponseCodecIdentity* = "UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2" ## @brief Canonical codec
## identity of
## urinterfaces/srv/VariablesViewer_Response.
## @details Exact identity UWVMROS1_e8cb16ca847189ac38c0d972afbdd2208d8641c29a0ee0cce8284e9e0dd249a2 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvVariablesViewer_ResponseNativeType* = "urinterfaces/srv/VariablesViewer_Response" ## @brief Original ROS type name
## for
## urinterfaces/srv/VariablesViewer_Response.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2UrinterfacesSrvVariablesViewer_ResponseNativeIdentity* = "" ## @brief Selected original native identity for
## urinterfaces/srv/VariablesViewer_Response.
## @details Absent: this source profile establishes no native identity.
## @see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/nim/API-CONTRACT.md
proc initRos2UrinterfacesSrvVariablesViewer_Response*(): Ros2UrinterfacesSrvVariablesViewer_Response =
  ## ``@brief Construct the declared defaults of urinterfaces/srv/VariablesViewer_Response.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`response` = initRos2UrinterfacesMsgVariableUpdate()
proc writeFields*(value: Ros2UrinterfacesSrvVariablesViewer_Response; w: var Writer) =
  ## ``@brief Append every canonical field of urinterfaces/srv/VariablesViewer_Response.``
  ## ``@details Validate profile invariants and finite element bounds while advancing the caller``
  ## ``writer. This nested operation does not promise rollback of a partially advanced writer.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@param[in,out] w Exclusive mutable canonical writer; a refused nested write may leave a``
  ## ``consumed prefix.``
  ## ``@return No record value. Success appends all selected fields to the caller writer; the``
  ## ``language exception/error contract reports refusal.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`response`,w)
proc readRos2UrinterfacesSrvVariablesViewer_Response*(r: var Reader): Ros2UrinterfacesSrvVariablesViewer_Response =
  ## ``@brief Read the ordered canonical fields of urinterfaces/srv/VariablesViewer_Response.``
  ## ``@details Advance the caller reader and validate the resulting record. Nested decoding``
  ## ``deliberately leaves subsequent enclosing fields unread; discard partial values on any``
  ## ``failure.``
  ## ``@param[in,out] r Exclusive mutable canonical reader; nested decoding advances only this``
  ## ``record prefix.``
  ## ``@return A complete decoded record through the native language value/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2UrinterfacesSrvVariablesViewer_Response()
  result.`response` = readRos2UrinterfacesMsgVariableUpdate(r)
proc encode*(value: Ros2UrinterfacesSrvVariablesViewer_Response): seq[byte] =
  ## ``@brief Encode one complete urinterfaces/srv/VariablesViewer_Response value.``
  ## ``@details Preserve every declared field, signed integer and floating-point bit pattern``
  ## ``allowed by the profile. Validate all finite bounds; never silently truncate or issue a Host``
  ## ``call.``
  ## ``@param[in] value Complete selected record; retain all field storage unchanged during``
  ## ``encoding.``
  ## ``@return Owned complete canonical bytes through the native language result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1168)
  writeFields(value,w)
  w.bytes
proc decodeRos2UrinterfacesSrvVariablesViewer_Response*(b: seq[byte]): Ros2UrinterfacesSrvVariablesViewer_Response =
  ## ``@brief Decode exactly one complete urinterfaces/srv/VariablesViewer_Response value.``
  ## ``@details Require the complete 16..1168-byte canonical representation. Reject truncation,``
  ## ``invalid fields and trailing bytes before publishing a successful value.``
  ## ``@param[in] b Complete canonical input bytes; no truncation or trailing bytes are accepted.``
  ## ``@return A complete decoded record through the native language value/result/exception/error``
  ## ``contract.``
  ## ``@failure Invalid canonical input/bounds or insufficient storage/allocator capacity. Partial``
  ## ``cursors, buffers and out-values are unusable after refusal. Allocation traps and runtime``
  ## ``exceptions follow the actual language runtime; not every failure is a recoverable codec``
  ## ``status. No Host, network or asynchronous side effect is issued.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2UrinterfacesSrvVariablesViewer_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1168)
  result = readRos2UrinterfacesSrvVariablesViewer_Response(r)
  finish(r)
