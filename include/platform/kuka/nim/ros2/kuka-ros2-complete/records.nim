## @file records.nim
## @brief Complete kuka values and adapters for the selected original interface catalog.
## @details Retain original field order, scalar widths, array capacities, string bounds, constants and declared
## defaults. Pure value access and canonical codecs create no native ROS allocation or resource grant. Transport
## roles require the separately admitted SDK owner.
## @see share/platform/kuka/domains/kuka-ros2-complete.ir.json
## @see document/platform/kuka/en_US/README.md

# Generated complete canonical values; no I/O or implicit capabilities.
import roswasm
import roswasm/wire
type Ros2Builtin_interfacesMsgDuration* = object
  ## ``@brief Complete ROS 2 builtin_interfaces/msg/Duration value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..8 bytes and is identified by``
  ## ``UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `sec`*: int32 ## @brief builtin_interfaces/msg/Duration.sec: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md
  `nanosec`*: uint32 ## @brief builtin_interfaces/msg/Duration.nanosec: uint32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md
const Ros2Builtin_interfacesMsgDurationMaximumWireBytes* = 8 ## @brief Maximum canonical extent of
## builtin_interfaces/msg/Duration in bytes.
## @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md
const Ros2Builtin_interfacesMsgDurationCodecIdentity* = "UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4" ## @brief Canonical codec
## identity of
## builtin_interfaces/msg/Duration.
## @details Exact identity UWVMROS1_3804444fae7a82a57907d25c2c3dc54d9a42dcd305f41ca073b1221dca7d36e4 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md
const Ros2Builtin_interfacesMsgDurationNativeType* = "builtin_interfaces/msg/Duration" ## @brief Original ROS type name
## for
## builtin_interfaces/msg/Duration.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md
const Ros2Builtin_interfacesMsgDurationNativeIdentity* = "" ## @brief Selected original native identity for
## builtin_interfaces/msg/Duration.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Builtin_interfacesMsgDuration*(): Ros2Builtin_interfacesMsgDuration =
  ## ``@brief Construct the declared defaults of builtin_interfaces/msg/Duration.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md``
  result.`sec` = 0
  result.`nanosec` = 0
proc writeFields*(value: Ros2Builtin_interfacesMsgDuration; w: var Writer) =
  ## ``@brief Append every canonical field of builtin_interfaces/msg/Duration.``
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
  ## ``@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md``
  if value.`nanosec` >= 1000000000: fail(22)
  putInteger(w,value.`sec`)
  putInteger(w,value.`nanosec`)
proc readRos2Builtin_interfacesMsgDuration*(r: var Reader): Ros2Builtin_interfacesMsgDuration =
  ## ``@brief Read the ordered canonical fields of builtin_interfaces/msg/Duration.``
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
  ## ``@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Builtin_interfacesMsgDuration()
  result.`sec` = getInteger(r,int32)
  result.`nanosec` = getInteger(r,uint32)
  if result.`nanosec` >= 1000000000: fail(22)
proc encode*(value: Ros2Builtin_interfacesMsgDuration): seq[byte] =
  ## ``@brief Encode one complete builtin_interfaces/msg/Duration value.``
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
  ## ``@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Builtin_interfacesMsgDuration*(b: seq[byte]): Ros2Builtin_interfacesMsgDuration =
  ## ``@brief Decode exactly one complete builtin_interfaces/msg/Duration value.``
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
  ## ``@see Ros2Builtin_interfacesMsgDuration; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,8)
  result = readRos2Builtin_interfacesMsgDuration(r)
  finish(r)
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
type Ros2Std_msgsMsgHeader* = object
  ## ``@brief Complete ROS 2 std_msgs/msg/Header value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 12..76 bytes and is identified by``
  ## ``UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396.``
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
  `frame_id`*: string ## @brief std_msgs/msg/Header.frame_id: string; each string is 0..64 bytes; strict UTF-8 with no
  ## embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_msgsMsgHeaderMaximumWireBytes* = 76 ## @brief Maximum canonical extent of std_msgs/msg/Header in bytes.
## @details The inclusive bound is 76 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Std_msgsMsgHeader; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_msgsMsgHeaderCodecIdentity* = "UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396" ## @brief Canonical codec
## identity of
## std_msgs/msg/Header.
## @details Exact identity UWVMROS1_afba9e74be3c5e3321750c1c4c30ba2925269f75b9da43a6d5c1e93d293d7396 binds field order,
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
  putString(w,value.`frame_id`,64)
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
  result.`frame_id` = getString(r,64)
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
  var w = initWriter(76)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_msgsMsgHeader*(b: seq[byte]): Ros2Std_msgsMsgHeader =
  ## ``@brief Decode exactly one complete std_msgs/msg/Header value.``
  ## ``@details Require the complete 12..76-byte canonical representation. Reject truncation,``
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
  var r = initReader(b,76)
  result = readRos2Std_msgsMsgHeader(r)
  finish(r)
type Ros2Trajectory_msgsMsgJointTrajectoryPoint* = object
  ## ``@brief Complete ROS 2 trajectory_msgs/msg/JointTrajectoryPoint value.``
  ## ``@details All 5 declared fields are retained in source order. The canonical representation``
  ## ``occupies 24..408 bytes and is identified by``
  ## ``UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `positions`*: seq[float64] ## @brief trajectory_msgs/msg/JointTrajectoryPoint.positions: float64; 0..12 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `velocities`*: seq[float64] ## @brief trajectory_msgs/msg/JointTrajectoryPoint.velocities: float64; 0..12 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `accelerations`*: seq[float64] ## @brief trajectory_msgs/msg/JointTrajectoryPoint.accelerations: float64; 0..12
  ## elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `effort`*: seq[float64] ## @brief trajectory_msgs/msg/JointTrajectoryPoint.effort: float64; 0..12 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `time_from_start`*: Ros2Builtin_interfacesMsgDuration ## @brief
  ## trajectory_msgs/msg/JointTrajectoryPoint.time_from_start:
  ## builtin_interfaces/msg/Duration.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgJointTrajectoryPointMaximumWireBytes* = 408 ## @brief Maximum canonical extent of
## trajectory_msgs/msg/JointTrajectoryPoint in
## bytes.
## @details The inclusive bound is 408 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgJointTrajectoryPointCodecIdentity* = "UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5" ## @brief Canonical codec
## identity of
## trajectory_msgs/msg/JointTrajectoryPoint.
## @details Exact identity UWVMROS1_4d55f494f060a9a3ff23bedd54da49f9e70e6b77acbdf911878afbf672cbadc5 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgJointTrajectoryPointNativeType* = "trajectory_msgs/msg/JointTrajectoryPoint" ## @brief Original ROS type name
## for
## trajectory_msgs/msg/JointTrajectoryPoint.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgJointTrajectoryPointNativeIdentity* = "" ## @brief Selected original native identity for
## trajectory_msgs/msg/JointTrajectoryPoint.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Trajectory_msgsMsgJointTrajectoryPoint*(): Ros2Trajectory_msgsMsgJointTrajectoryPoint =
  ## ``@brief Construct the declared defaults of trajectory_msgs/msg/JointTrajectoryPoint.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md``
  result.`positions` = @[]
  result.`velocities` = @[]
  result.`accelerations` = @[]
  result.`effort` = @[]
  result.`time_from_start` = initRos2Builtin_interfacesMsgDuration()
proc writeFields*(value: Ros2Trajectory_msgsMsgJointTrajectoryPoint; w: var Writer) =
  ## ``@brief Append every canonical field of trajectory_msgs/msg/JointTrajectoryPoint.``
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
  ## ``@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md``
  if value.`positions`.len > 12: fail(22)
  putInteger(w,uint32(value.`positions`.len))
  for e in value.`positions`:
    putFloat64(w,e)
  if value.`velocities`.len > 12: fail(22)
  putInteger(w,uint32(value.`velocities`.len))
  for e in value.`velocities`:
    putFloat64(w,e)
  if value.`accelerations`.len > 12: fail(22)
  putInteger(w,uint32(value.`accelerations`.len))
  for e in value.`accelerations`:
    putFloat64(w,e)
  if value.`effort`.len > 12: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
  writeFields(value.`time_from_start`,w)
proc readRos2Trajectory_msgsMsgJointTrajectoryPoint*(r: var Reader): Ros2Trajectory_msgsMsgJointTrajectoryPoint =
  ## ``@brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectoryPoint.``
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
  ## ``@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Trajectory_msgsMsgJointTrajectoryPoint()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 12: fail(22)
  let count0 = int(rawcount0)
  result.`positions` = newSeq[float64](count0)
  for i in 0..<count0:
    result.`positions`[i] = getFloat64(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 12: fail(22)
  let count1 = int(rawcount1)
  result.`velocities` = newSeq[float64](count1)
  for i in 0..<count1:
    result.`velocities`[i] = getFloat64(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 12: fail(22)
  let count2 = int(rawcount2)
  result.`accelerations` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`accelerations`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 12: fail(22)
  let count3 = int(rawcount3)
  result.`effort` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`effort`[i] = getFloat64(r)
  result.`time_from_start` = readRos2Builtin_interfacesMsgDuration(r)
proc encode*(value: Ros2Trajectory_msgsMsgJointTrajectoryPoint): seq[byte] =
  ## ``@brief Encode one complete trajectory_msgs/msg/JointTrajectoryPoint value.``
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
  ## ``@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(408)
  writeFields(value,w)
  w.bytes
proc decodeRos2Trajectory_msgsMsgJointTrajectoryPoint*(b: seq[byte]): Ros2Trajectory_msgsMsgJointTrajectoryPoint =
  ## ``@brief Decode exactly one complete trajectory_msgs/msg/JointTrajectoryPoint value.``
  ## ``@details Require the complete 24..408-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Trajectory_msgsMsgJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,408)
  result = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
  finish(r)
type Ros2Trajectory_msgsMsgJointTrajectory* = object
  ## ``@brief Complete ROS 2 trajectory_msgs/msg/JointTrajectory value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 20..4164 bytes and is identified by``
  ## ``UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief trajectory_msgs/msg/JointTrajectory.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
  `joint_names`*: seq[string] ## @brief trajectory_msgs/msg/JointTrajectory.joint_names: string; 0..12 elements; each
  ## string is 0..64 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
  `points`*: seq[Ros2Trajectory_msgsMsgJointTrajectoryPoint] ## @brief trajectory_msgs/msg/JointTrajectory.points:
  ## trajectory_msgs/msg/JointTrajectoryPoint; 0..8 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgJointTrajectoryMaximumWireBytes* = 4164 ## @brief Maximum canonical extent of
## trajectory_msgs/msg/JointTrajectory in bytes.
## @details The inclusive bound is 4164 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgJointTrajectoryCodecIdentity* = "UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0" ## @brief Canonical codec
## identity of
## trajectory_msgs/msg/JointTrajectory.
## @details Exact identity UWVMROS1_d74956440763bd09c76ec623efeb322aa89be8ef6410b9125d4e2cb1aeeb69c0 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgJointTrajectoryNativeType* = "trajectory_msgs/msg/JointTrajectory" ## @brief Original ROS type name
## for
## trajectory_msgs/msg/JointTrajectory.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgJointTrajectoryNativeIdentity* = "" ## @brief Selected original native identity for
## trajectory_msgs/msg/JointTrajectory.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Trajectory_msgsMsgJointTrajectory*(): Ros2Trajectory_msgsMsgJointTrajectory =
  ## ``@brief Construct the declared defaults of trajectory_msgs/msg/JointTrajectory.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_names` = @[]
  result.`points` = @[]
proc writeFields*(value: Ros2Trajectory_msgsMsgJointTrajectory; w: var Writer) =
  ## ``@brief Append every canonical field of trajectory_msgs/msg/JointTrajectory.``
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
  ## ``@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 12: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,64)
  if value.`points`.len > 8: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
proc readRos2Trajectory_msgsMsgJointTrajectory*(r: var Reader): Ros2Trajectory_msgsMsgJointTrajectory =
  ## ``@brief Read the ordered canonical fields of trajectory_msgs/msg/JointTrajectory.``
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
  ## ``@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Trajectory_msgsMsgJointTrajectory()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 12: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,64)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 8: fail(22)
  let count2 = int(rawcount2)
  result.`points` = newSeq[Ros2Trajectory_msgsMsgJointTrajectoryPoint](count2)
  for i in 0..<count2:
    result.`points`[i] = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
proc encode*(value: Ros2Trajectory_msgsMsgJointTrajectory): seq[byte] =
  ## ``@brief Encode one complete trajectory_msgs/msg/JointTrajectory value.``
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
  ## ``@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(4164)
  writeFields(value,w)
  w.bytes
proc decodeRos2Trajectory_msgsMsgJointTrajectory*(b: seq[byte]): Ros2Trajectory_msgsMsgJointTrajectory =
  ## ``@brief Decode exactly one complete trajectory_msgs/msg/JointTrajectory value.``
  ## ``@details Require the complete 20..4164-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Trajectory_msgsMsgJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,4164)
  result = readRos2Trajectory_msgsMsgJointTrajectory(r)
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
type Ros2Geometry_msgsMsgTransform* = object
  ## ``@brief Complete ROS 2 geometry_msgs/msg/Transform value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 56..56 bytes and is identified by``
  ## ``UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `translation`*: Ros2Geometry_msgsMsgVector3 ## @brief geometry_msgs/msg/Transform.translation:
  ## geometry_msgs/msg/Vector3.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md
  `rotation`*: Ros2Geometry_msgsMsgQuaternion ## @brief geometry_msgs/msg/Transform.rotation:
  ## geometry_msgs/msg/Quaternion.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgTransformMaximumWireBytes* = 56 ## @brief Maximum canonical extent of
## geometry_msgs/msg/Transform in bytes.
## @details The inclusive bound is 56 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgTransformCodecIdentity* = "UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b" ## @brief Canonical codec
## identity of
## geometry_msgs/msg/Transform.
## @details Exact identity UWVMROS1_7ddcb1c3fca43f4a0299d43fb6fac1b77a8f26001af809dc13307f4f9c61d65b binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgTransformNativeType* = "geometry_msgs/msg/Transform" ## @brief Original ROS type name for
## geometry_msgs/msg/Transform.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md
const Ros2Geometry_msgsMsgTransformNativeIdentity* = "" ## @brief Selected original native identity for
## geometry_msgs/msg/Transform.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Geometry_msgsMsgTransform*(): Ros2Geometry_msgsMsgTransform =
  ## ``@brief Construct the declared defaults of geometry_msgs/msg/Transform.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md``
  result.`translation` = initRos2Geometry_msgsMsgVector3()
  result.`rotation` = initRos2Geometry_msgsMsgQuaternion()
proc writeFields*(value: Ros2Geometry_msgsMsgTransform; w: var Writer) =
  ## ``@brief Append every canonical field of geometry_msgs/msg/Transform.``
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
  ## ``@see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`translation`,w)
  writeFields(value.`rotation`,w)
proc readRos2Geometry_msgsMsgTransform*(r: var Reader): Ros2Geometry_msgsMsgTransform =
  ## ``@brief Read the ordered canonical fields of geometry_msgs/msg/Transform.``
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
  ## ``@see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Geometry_msgsMsgTransform()
  result.`translation` = readRos2Geometry_msgsMsgVector3(r)
  result.`rotation` = readRos2Geometry_msgsMsgQuaternion(r)
proc encode*(value: Ros2Geometry_msgsMsgTransform): seq[byte] =
  ## ``@brief Encode one complete geometry_msgs/msg/Transform value.``
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
  ## ``@see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(56)
  writeFields(value,w)
  w.bytes
proc decodeRos2Geometry_msgsMsgTransform*(b: seq[byte]): Ros2Geometry_msgsMsgTransform =
  ## ``@brief Decode exactly one complete geometry_msgs/msg/Transform value.``
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
  ## ``@see Ros2Geometry_msgsMsgTransform; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,56)
  result = readRos2Geometry_msgsMsgTransform(r)
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
type Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint* = object
  ## ``@brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.``
  ## ``@details All 4 declared fields are retained in source order. The canonical representation``
  ## ``occupies 20..324 bytes and is identified by``
  ## ``UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `transforms`*: seq[Ros2Geometry_msgsMsgTransform] ## @brief
  ## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.transforms:
  ## geometry_msgs/msg/Transform; 0..2 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `velocities`*: seq[Ros2Geometry_msgsMsgTwist] ## @brief trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.velocities:
  ## geometry_msgs/msg/Twist; 0..2 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `accelerations`*: seq[Ros2Geometry_msgsMsgTwist] ## @brief
  ## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.accelerations:
  ## geometry_msgs/msg/Twist; 0..2 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
  `time_from_start`*: Ros2Builtin_interfacesMsgDuration ## @brief
  ## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.time_from_start:
  ## builtin_interfaces/msg/Duration.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointMaximumWireBytes* = 324 ## @brief Maximum canonical extent of
## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint
## in bytes.
## @details The inclusive bound is 324 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointCodecIdentity* = "UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242" ## @brief Canonical codec
## identity of
## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
## @details Exact identity UWVMROS1_6590b7ca1cdaa89da04b7a661266e2d4c6e3e2668dc90505a7c24d7be8a43242 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointNativeType* = "trajectory_msgs/msg/MultiDOFJointTrajectoryPoint" ## @brief Original ROS type name
## for
## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPointNativeIdentity* = "" ## @brief Selected original native identity
## for
## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint*(): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
  ## ``@brief Construct the declared defaults of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`transforms` = @[]
  result.`velocities` = @[]
  result.`accelerations` = @[]
  result.`time_from_start` = initRos2Builtin_interfacesMsgDuration()
proc writeFields*(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint; w: var Writer) =
  ## ``@brief Append every canonical field of trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.``
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
  ## ``@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  if value.`transforms`.len > 2: fail(22)
  putInteger(w,uint32(value.`transforms`.len))
  for e in value.`transforms`:
    writeFields(e,w)
  if value.`velocities`.len > 2: fail(22)
  putInteger(w,uint32(value.`velocities`.len))
  for e in value.`velocities`:
    writeFields(e,w)
  if value.`accelerations`.len > 2: fail(22)
  putInteger(w,uint32(value.`accelerations`.len))
  for e in value.`accelerations`:
    writeFields(e,w)
  writeFields(value.`time_from_start`,w)
proc readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint*(r: var Reader): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
  ## ``@brief Read the ordered canonical fields of``
  ## ``trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.``
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
  ## ``@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 2: fail(22)
  let count0 = int(rawcount0)
  result.`transforms` = newSeq[Ros2Geometry_msgsMsgTransform](count0)
  for i in 0..<count0:
    result.`transforms`[i] = readRos2Geometry_msgsMsgTransform(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 2: fail(22)
  let count1 = int(rawcount1)
  result.`velocities` = newSeq[Ros2Geometry_msgsMsgTwist](count1)
  for i in 0..<count1:
    result.`velocities`[i] = readRos2Geometry_msgsMsgTwist(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 2: fail(22)
  let count2 = int(rawcount2)
  result.`accelerations` = newSeq[Ros2Geometry_msgsMsgTwist](count2)
  for i in 0..<count2:
    result.`accelerations`[i] = readRos2Geometry_msgsMsgTwist(r)
  result.`time_from_start` = readRos2Builtin_interfacesMsgDuration(r)
proc encode*(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint): seq[byte] =
  ## ``@brief Encode one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.``
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
  ## ``@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(324)
  writeFields(value,w)
  w.bytes
proc decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint*(b: seq[byte]): Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint =
  ## ``@brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectoryPoint value.``
  ## ``@details Require the complete 20..324-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,324)
  result = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r)
  finish(r)
type Ros2Trajectory_msgsMsgMultiDOFJointTrajectory* = object
  ## ``@brief Complete ROS 2 trajectory_msgs/msg/MultiDOFJointTrajectory value.``
  ## ``@details All 3 declared fields are retained in source order. The canonical representation``
  ## ``occupies 20..1516 bytes and is identified by``
  ## ``UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief trajectory_msgs/msg/MultiDOFJointTrajectory.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
  `joint_names`*: seq[string] ## @brief trajectory_msgs/msg/MultiDOFJointTrajectory.joint_names: string; 0..2 elements;
  ## each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
  `points`*: seq[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint] ## @brief
  ## trajectory_msgs/msg/MultiDOFJointTrajectory.points:
  ## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint;
  ## 0..4 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryMaximumWireBytes* = 1516 ## @brief Maximum canonical extent of
## trajectory_msgs/msg/MultiDOFJointTrajectory
## in bytes.
## @details The inclusive bound is 1516 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryCodecIdentity* = "UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401" ## @brief Canonical codec
## identity of
## trajectory_msgs/msg/MultiDOFJointTrajectory.
## @details Exact identity UWVMROS1_6ea66f146cdce31369361e521be484d2c39bca818cc4b2069e1209d250ec2401 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryNativeType* = "trajectory_msgs/msg/MultiDOFJointTrajectory" ## @brief Original ROS type name
## for
## trajectory_msgs/msg/MultiDOFJointTrajectory.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
const Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryNativeIdentity* = "" ## @brief Selected original native identity for
## trajectory_msgs/msg/MultiDOFJointTrajectory.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Trajectory_msgsMsgMultiDOFJointTrajectory*(): Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
  ## ``@brief Construct the declared defaults of trajectory_msgs/msg/MultiDOFJointTrajectory.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_names` = @[]
  result.`points` = @[]
proc writeFields*(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; w: var Writer) =
  ## ``@brief Append every canonical field of trajectory_msgs/msg/MultiDOFJointTrajectory.``
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
  ## ``@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 2: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,64)
  if value.`points`.len > 4: fail(22)
  putInteger(w,uint32(value.`points`.len))
  for e in value.`points`:
    writeFields(e,w)
proc readRos2Trajectory_msgsMsgMultiDOFJointTrajectory*(r: var Reader): Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
  ## ``@brief Read the ordered canonical fields of trajectory_msgs/msg/MultiDOFJointTrajectory.``
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
  ## ``@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Trajectory_msgsMsgMultiDOFJointTrajectory()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 2: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,64)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 4: fail(22)
  let count2 = int(rawcount2)
  result.`points` = newSeq[Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint](count2)
  for i in 0..<count2:
    result.`points`[i] = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r)
proc encode*(value: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory): seq[byte] =
  ## ``@brief Encode one complete trajectory_msgs/msg/MultiDOFJointTrajectory value.``
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
  ## ``@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1516)
  writeFields(value,w)
  w.bytes
proc decodeRos2Trajectory_msgsMsgMultiDOFJointTrajectory*(b: seq[byte]): Ros2Trajectory_msgsMsgMultiDOFJointTrajectory =
  ## ``@brief Decode exactly one complete trajectory_msgs/msg/MultiDOFJointTrajectory value.``
  ## ``@details Require the complete 20..1516-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Trajectory_msgsMsgMultiDOFJointTrajectory; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1516)
  result = readRos2Trajectory_msgsMsgMultiDOFJointTrajectory(r)
  finish(r)
type Ros2Control_msgsMsgJointTolerance* = object
  ## ``@brief Complete ROS 2 control_msgs/msg/JointTolerance value.``
  ## ``@details All 4 declared fields are retained in source order. The canonical representation``
  ## ``occupies 28..92 bytes and is identified by``
  ## ``UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `name`*: string ## @brief control_msgs/msg/JointTolerance.name: string; each string is 0..64 bytes; strict UTF-8 with
  ## no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md
  `position`*: float64 ## @brief control_msgs/msg/JointTolerance.position: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md
  `velocity`*: float64 ## @brief control_msgs/msg/JointTolerance.velocity: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md
  `acceleration`*: float64 ## @brief control_msgs/msg/JointTolerance.acceleration: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointToleranceMaximumWireBytes* = 92 ## @brief Maximum canonical extent of
## control_msgs/msg/JointTolerance in bytes.
## @details The inclusive bound is 92 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointToleranceCodecIdentity* = "UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2" ## @brief Canonical codec
## identity of
## control_msgs/msg/JointTolerance.
## @details Exact identity UWVMROS1_ad7701ac1cb0dd68a947577272964b0d6051d1846019de97e9c9d0f7be7b2fa2 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointToleranceNativeType* = "control_msgs/msg/JointTolerance" ## @brief Original ROS type name
## for
## control_msgs/msg/JointTolerance.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointToleranceNativeIdentity* = "" ## @brief Selected original native identity for
## control_msgs/msg/JointTolerance.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Control_msgsMsgJointTolerance*(): Ros2Control_msgsMsgJointTolerance =
  ## ``@brief Construct the declared defaults of control_msgs/msg/JointTolerance.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md``
  result.`name` = ""
  result.`position` = 0
  result.`velocity` = 0
  result.`acceleration` = 0
proc writeFields*(value: Ros2Control_msgsMsgJointTolerance; w: var Writer) =
  ## ``@brief Append every canonical field of control_msgs/msg/JointTolerance.``
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
  ## ``@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`name`,64)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`acceleration`)
proc readRos2Control_msgsMsgJointTolerance*(r: var Reader): Ros2Control_msgsMsgJointTolerance =
  ## ``@brief Read the ordered canonical fields of control_msgs/msg/JointTolerance.``
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
  ## ``@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Control_msgsMsgJointTolerance()
  result.`name` = getString(r,64)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`acceleration` = getFloat64(r)
proc encode*(value: Ros2Control_msgsMsgJointTolerance): seq[byte] =
  ## ``@brief Encode one complete control_msgs/msg/JointTolerance value.``
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
  ## ``@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(92)
  writeFields(value,w)
  w.bytes
proc decodeRos2Control_msgsMsgJointTolerance*(b: seq[byte]): Ros2Control_msgsMsgJointTolerance =
  ## ``@brief Decode exactly one complete control_msgs/msg/JointTolerance value.``
  ## ``@details Require the complete 28..92-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Control_msgsMsgJointTolerance; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,92)
  result = readRos2Control_msgsMsgJointTolerance(r)
  finish(r)
type Ros2Control_msgsMsgJointComponentTolerance* = object
  ## ``@brief Complete ROS 2 control_msgs/msg/JointComponentTolerance value.``
  ## ``@details All 5 declared fields are retained in source order. The canonical representation``
  ## ``occupies 30..542 bytes and is identified by``
  ## ``UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `joint_name`*: string ## @brief control_msgs/msg/JointComponentTolerance.joint_name: string; each string is 0..512
  ## bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
  `component`*: uint16 ## @brief control_msgs/msg/JointComponentTolerance.component: uint16.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
  `position`*: float64 ## @brief control_msgs/msg/JointComponentTolerance.position: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
  `velocity`*: float64 ## @brief control_msgs/msg/JointComponentTolerance.velocity: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
  `acceleration`*: float64 ## @brief control_msgs/msg/JointComponentTolerance.acceleration: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointComponentToleranceMaximumWireBytes* = 542 ## @brief Maximum canonical extent of
## control_msgs/msg/JointComponentTolerance in
## bytes.
## @details The inclusive bound is 542 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointComponentToleranceCodecIdentity* = "UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342" ## @brief Canonical codec
## identity of
## control_msgs/msg/JointComponentTolerance.
## @details Exact identity UWVMROS1_658f3d3f180b301e5c612188390187ec4034064976f133018048bb1fdec55342 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointComponentToleranceNativeType* = "control_msgs/msg/JointComponentTolerance" ## @brief Original ROS type name
## for
## control_msgs/msg/JointComponentTolerance.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointComponentToleranceNativeIdentity* = "" ## @brief Selected original native identity for
## control_msgs/msg/JointComponentTolerance.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointComponentTolerance_X_AXIS*: uint16 = 1'u16 ## @brief
## control_msgs/msg/JointComponentTolerance.X_AXIS:
## original uint16 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointComponentTolerance_Y_AXIS*: uint16 = 2'u16 ## @brief
## control_msgs/msg/JointComponentTolerance.Y_AXIS:
## original uint16 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointComponentTolerance_Z_AXIS*: uint16 = 3'u16 ## @brief
## control_msgs/msg/JointComponentTolerance.Z_AXIS:
## original uint16 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointComponentTolerance_TRANSLATION*: uint16 = 4'u16 ## @brief
## control_msgs/msg/JointComponentTolerance.TRANSLATION:
## original uint16 constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsMsgJointComponentTolerance_ROTATION*: uint16 = 5'u16 ## @brief
## control_msgs/msg/JointComponentTolerance.ROTATION:
## original uint16 constant.
## @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Control_msgsMsgJointComponentTolerance*(): Ros2Control_msgsMsgJointComponentTolerance =
  ## ``@brief Construct the declared defaults of control_msgs/msg/JointComponentTolerance.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md``
  result.`joint_name` = ""
  result.`component` = 0
  result.`position` = 0
  result.`velocity` = 0
  result.`acceleration` = 0
proc writeFields*(value: Ros2Control_msgsMsgJointComponentTolerance; w: var Writer) =
  ## ``@brief Append every canonical field of control_msgs/msg/JointComponentTolerance.``
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
  ## ``@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`joint_name`,512)
  putInteger(w,value.`component`)
  putFloat64(w,value.`position`)
  putFloat64(w,value.`velocity`)
  putFloat64(w,value.`acceleration`)
proc readRos2Control_msgsMsgJointComponentTolerance*(r: var Reader): Ros2Control_msgsMsgJointComponentTolerance =
  ## ``@brief Read the ordered canonical fields of control_msgs/msg/JointComponentTolerance.``
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
  ## ``@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Control_msgsMsgJointComponentTolerance()
  result.`joint_name` = getString(r,512)
  result.`component` = getInteger(r,uint16)
  result.`position` = getFloat64(r)
  result.`velocity` = getFloat64(r)
  result.`acceleration` = getFloat64(r)
proc encode*(value: Ros2Control_msgsMsgJointComponentTolerance): seq[byte] =
  ## ``@brief Encode one complete control_msgs/msg/JointComponentTolerance value.``
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
  ## ``@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(542)
  writeFields(value,w)
  w.bytes
proc decodeRos2Control_msgsMsgJointComponentTolerance*(b: seq[byte]): Ros2Control_msgsMsgJointComponentTolerance =
  ## ``@brief Decode exactly one complete control_msgs/msg/JointComponentTolerance value.``
  ## ``@details Require the complete 30..542-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Control_msgsMsgJointComponentTolerance; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,542)
  result = readRos2Control_msgsMsgJointComponentTolerance(r)
  finish(r)
type Ros2Control_msgsActionFollowJointTrajectory_Goal* = object
  ## ``@brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Goal value.``
  ## ``@details All 7 declared fields are retained in source order. The canonical representation``
  ## ``occupies 64..20920 bytes and is identified by``
  ## ``UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `trajectory`*: Ros2Trajectory_msgsMsgJointTrajectory ## @brief
  ## control_msgs/action/FollowJointTrajectory_Goal.trajectory:
  ## trajectory_msgs/msg/JointTrajectory.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
  `multi_dof_trajectory`*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectory ## @brief
  ## control_msgs/action/FollowJointTrajectory_Goal.multi_dof_trajectory:
  ## trajectory_msgs/msg/MultiDOFJointTrajectory.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
  `path_tolerance`*: seq[Ros2Control_msgsMsgJointTolerance] ## @brief
  ## control_msgs/action/FollowJointTrajectory_Goal.path_tolerance:
  ## control_msgs/msg/JointTolerance; 0..12 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
  `component_path_tolerance`*: seq[Ros2Control_msgsMsgJointComponentTolerance] ## @brief
  ## control_msgs/action/FollowJointTrajectory_Goal.component_path_tolerance:
  ## control_msgs/msg/JointComponentTolerance;
  ## 0..12 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
  `goal_tolerance`*: seq[Ros2Control_msgsMsgJointTolerance] ## @brief
  ## control_msgs/action/FollowJointTrajectory_Goal.goal_tolerance:
  ## control_msgs/msg/JointTolerance; 0..12 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
  `component_goal_tolerance`*: seq[Ros2Control_msgsMsgJointComponentTolerance] ## @brief
  ## control_msgs/action/FollowJointTrajectory_Goal.component_goal_tolerance:
  ## control_msgs/msg/JointComponentTolerance;
  ## 0..12 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
  `goal_time_tolerance`*: Ros2Builtin_interfacesMsgDuration ## @brief
  ## control_msgs/action/FollowJointTrajectory_Goal.goal_time_tolerance:
  ## builtin_interfaces/msg/Duration.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_GoalMaximumWireBytes* = 20920 ## @brief Maximum canonical extent of
## control_msgs/action/FollowJointTrajectory_Goal
## in bytes.
## @details The inclusive bound is 20920 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_GoalCodecIdentity* = "UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16" ## @brief Canonical codec
## identity of
## control_msgs/action/FollowJointTrajectory_Goal.
## @details Exact identity UWVMROS1_8945d5b29832f1190b0a4f8c4af4e82686c4b913413affe9c0945570b4fb1f16 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_GoalNativeType* = "control_msgs/action/FollowJointTrajectory_Goal" ## @brief Original ROS type name
## for
## control_msgs/action/FollowJointTrajectory_Goal.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_GoalNativeIdentity* = "" ## @brief Selected original native identity
## for
## control_msgs/action/FollowJointTrajectory_Goal.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Control_msgsActionFollowJointTrajectory_Goal; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Control_msgsActionFollowJointTrajectory_Goal*(): Ros2Control_msgsActionFollowJointTrajectory_Goal =
  ## ``@brief Construct the declared defaults of control_msgs/action/FollowJointTrajectory_Goal.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Goal;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`trajectory` = initRos2Trajectory_msgsMsgJointTrajectory()
  result.`multi_dof_trajectory` = initRos2Trajectory_msgsMsgMultiDOFJointTrajectory()
  result.`path_tolerance` = @[]
  result.`component_path_tolerance` = @[]
  result.`goal_tolerance` = @[]
  result.`component_goal_tolerance` = @[]
  result.`goal_time_tolerance` = initRos2Builtin_interfacesMsgDuration()
proc writeFields*(value: Ros2Control_msgsActionFollowJointTrajectory_Goal; w: var Writer) =
  ## ``@brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Goal.``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Goal;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`trajectory`,w)
  writeFields(value.`multi_dof_trajectory`,w)
  if value.`path_tolerance`.len > 12: fail(22)
  putInteger(w,uint32(value.`path_tolerance`.len))
  for e in value.`path_tolerance`:
    writeFields(e,w)
  if value.`component_path_tolerance`.len > 12: fail(22)
  putInteger(w,uint32(value.`component_path_tolerance`.len))
  for e in value.`component_path_tolerance`:
    writeFields(e,w)
  if value.`goal_tolerance`.len > 12: fail(22)
  putInteger(w,uint32(value.`goal_tolerance`.len))
  for e in value.`goal_tolerance`:
    writeFields(e,w)
  if value.`component_goal_tolerance`.len > 12: fail(22)
  putInteger(w,uint32(value.`component_goal_tolerance`.len))
  for e in value.`component_goal_tolerance`:
    writeFields(e,w)
  writeFields(value.`goal_time_tolerance`,w)
proc readRos2Control_msgsActionFollowJointTrajectory_Goal*(r: var Reader): Ros2Control_msgsActionFollowJointTrajectory_Goal =
  ## ``@brief Read the ordered canonical fields of control_msgs/action/FollowJointTrajectory_Goal.``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Goal;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Control_msgsActionFollowJointTrajectory_Goal()
  result.`trajectory` = readRos2Trajectory_msgsMsgJointTrajectory(r)
  result.`multi_dof_trajectory` = readRos2Trajectory_msgsMsgMultiDOFJointTrajectory(r)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 12: fail(22)
  let count2 = int(rawcount2)
  result.`path_tolerance` = newSeq[Ros2Control_msgsMsgJointTolerance](count2)
  for i in 0..<count2:
    result.`path_tolerance`[i] = readRos2Control_msgsMsgJointTolerance(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 12: fail(22)
  let count3 = int(rawcount3)
  result.`component_path_tolerance` = newSeq[Ros2Control_msgsMsgJointComponentTolerance](count3)
  for i in 0..<count3:
    result.`component_path_tolerance`[i] = readRos2Control_msgsMsgJointComponentTolerance(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 12: fail(22)
  let count4 = int(rawcount4)
  result.`goal_tolerance` = newSeq[Ros2Control_msgsMsgJointTolerance](count4)
  for i in 0..<count4:
    result.`goal_tolerance`[i] = readRos2Control_msgsMsgJointTolerance(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 12: fail(22)
  let count5 = int(rawcount5)
  result.`component_goal_tolerance` = newSeq[Ros2Control_msgsMsgJointComponentTolerance](count5)
  for i in 0..<count5:
    result.`component_goal_tolerance`[i] = readRos2Control_msgsMsgJointComponentTolerance(r)
  result.`goal_time_tolerance` = readRos2Builtin_interfacesMsgDuration(r)
proc encode*(value: Ros2Control_msgsActionFollowJointTrajectory_Goal): seq[byte] =
  ## ``@brief Encode one complete control_msgs/action/FollowJointTrajectory_Goal value.``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Goal;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(20920)
  writeFields(value,w)
  w.bytes
proc decodeRos2Control_msgsActionFollowJointTrajectory_Goal*(b: seq[byte]): Ros2Control_msgsActionFollowJointTrajectory_Goal =
  ## ``@brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Goal value.``
  ## ``@details Require the complete 64..20920-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Goal;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,20920)
  result = readRos2Control_msgsActionFollowJointTrajectory_Goal(r)
  finish(r)
type Ros2Control_msgsActionFollowJointTrajectory_Result* = object
  ## ``@brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Result value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..4104 bytes and is identified by``
  ## ``UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `error_code`*: int32 ## @brief control_msgs/action/FollowJointTrajectory_Result.error_code: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
  `error_string`*: string ## @brief control_msgs/action/FollowJointTrajectory_Result.error_string: string; each string
  ## is 0..4096 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_ResultMaximumWireBytes* = 4104 ## @brief Maximum canonical extent of
## control_msgs/action/FollowJointTrajectory_Result
## in bytes.
## @details The inclusive bound is 4104 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_ResultCodecIdentity* = "UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70" ## @brief Canonical codec
## identity of
## control_msgs/action/FollowJointTrajectory_Result.
## @details Exact identity UWVMROS1_c698e3a3a772735ff6027b04af28e9bc88d6b7138863ce5737aa090f543dac70 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_ResultNativeType* = "control_msgs/action/FollowJointTrajectory_Result" ## @brief Original ROS type name
## for
## control_msgs/action/FollowJointTrajectory_Result.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_ResultNativeIdentity* = "" ## @brief Selected original native identity
## for
## control_msgs/action/FollowJointTrajectory_Result.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_Result_SUCCESSFUL*: int32 = 0'i32 ## @brief
## control_msgs/action/FollowJointTrajectory_Result.SUCCESSFUL:
## original int32 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_GOAL*: int32 = -1'i32 ## @brief
## control_msgs/action/FollowJointTrajectory_Result.INVALID_GOAL:
## original int32 constant.
## @details Exact admitted value -1. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_Result_INVALID_JOINTS*: int32 = -2'i32 ## @brief
## control_msgs/action/FollowJointTrajectory_Result.INVALID_JOINTS:
## original int32 constant.
## @details Exact admitted value -2. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_Result_OLD_HEADER_TIMESTAMP*: int32 = -3'i32 ## @brief
## control_msgs/action/FollowJointTrajectory_Result.OLD_HEADER_TIMESTAMP:
## original int32 constant.
## @details Exact admitted value -3. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_Result_PATH_TOLERANCE_VIOLATED*: int32 = -4'i32 ## @brief
## control_msgs/action/FollowJointTrajectory_Result.PATH_TOLERANCE_VIOLATED:
## original int32 constant.
## @details Exact admitted value -4. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_Result_GOAL_TOLERANCE_VIOLATED*: int32 = -5'i32 ## @brief
## control_msgs/action/FollowJointTrajectory_Result.GOAL_TOLERANCE_VIOLATED:
## original int32 constant.
## @details Exact admitted value -5. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Control_msgsActionFollowJointTrajectory_Result; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Control_msgsActionFollowJointTrajectory_Result*(): Ros2Control_msgsActionFollowJointTrajectory_Result =
  ## ``@brief Construct the declared defaults of control_msgs/action/FollowJointTrajectory_Result.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Result;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`error_code` = 0
  result.`error_string` = ""
proc writeFields*(value: Ros2Control_msgsActionFollowJointTrajectory_Result; w: var Writer) =
  ## ``@brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Result.``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Result;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`error_code`)
  putString(w,value.`error_string`,4096)
proc readRos2Control_msgsActionFollowJointTrajectory_Result*(r: var Reader): Ros2Control_msgsActionFollowJointTrajectory_Result =
  ## ``@brief Read the ordered canonical fields of``
  ## ``control_msgs/action/FollowJointTrajectory_Result.``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Result;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Control_msgsActionFollowJointTrajectory_Result()
  result.`error_code` = getInteger(r,int32)
  result.`error_string` = getString(r,4096)
proc encode*(value: Ros2Control_msgsActionFollowJointTrajectory_Result): seq[byte] =
  ## ``@brief Encode one complete control_msgs/action/FollowJointTrajectory_Result value.``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Result;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(4104)
  writeFields(value,w)
  w.bytes
proc decodeRos2Control_msgsActionFollowJointTrajectory_Result*(b: seq[byte]): Ros2Control_msgsActionFollowJointTrajectory_Result =
  ## ``@brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Result value.``
  ## ``@details Require the complete 8..4104-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Result;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,4104)
  result = readRos2Control_msgsActionFollowJointTrajectory_Result(r)
  finish(r)
type Ros2Control_msgsActionFollowJointTrajectory_Feedback* = object
  ## ``@brief Complete ROS 2 control_msgs/action/FollowJointTrajectory_Feedback value.``
  ## ``@details All 9 declared fields are retained in source order. The canonical representation``
  ## ``occupies 152..4128 bytes and is identified by``
  ## ``UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief control_msgs/action/FollowJointTrajectory_Feedback.header:
  ## std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
  `joint_names`*: seq[string] ## @brief control_msgs/action/FollowJointTrajectory_Feedback.joint_names: string; 0..12
  ## elements; each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
  `desired`*: Ros2Trajectory_msgsMsgJointTrajectoryPoint ## @brief
  ## control_msgs/action/FollowJointTrajectory_Feedback.desired:
  ## trajectory_msgs/msg/JointTrajectoryPoint.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
  `actual`*: Ros2Trajectory_msgsMsgJointTrajectoryPoint ## @brief
  ## control_msgs/action/FollowJointTrajectory_Feedback.actual:
  ## trajectory_msgs/msg/JointTrajectoryPoint.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
  `error`*: Ros2Trajectory_msgsMsgJointTrajectoryPoint ## @brief
  ## control_msgs/action/FollowJointTrajectory_Feedback.error:
  ## trajectory_msgs/msg/JointTrajectoryPoint.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
  `multi_dof_joint_names`*: seq[string] ## @brief
  ## control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_joint_names:
  ## string; 0..2 elements; each string is 0..512 bytes; strict UTF-8 with no
  ## embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
  `multi_dof_desired`*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint ## @brief
  ## control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_desired:
  ## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
  `multi_dof_actual`*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint ## @brief
  ## control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_actual:
  ## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
  `multi_dof_error`*: Ros2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint ## @brief
  ## control_msgs/action/FollowJointTrajectory_Feedback.multi_dof_error:
  ## trajectory_msgs/msg/MultiDOFJointTrajectoryPoint.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackMaximumWireBytes* = 4128 ## @brief Maximum canonical extent of
## control_msgs/action/FollowJointTrajectory_Feedback
## in bytes.
## @details The inclusive bound is 4128 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackCodecIdentity* = "UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb" ## @brief Canonical codec
## identity of
## control_msgs/action/FollowJointTrajectory_Feedback.
## @details Exact identity UWVMROS1_68f3809217bd914cd971e1365ca825111c1394b2587c6989736adcaa8a40a7cb binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackNativeType* = "control_msgs/action/FollowJointTrajectory_Feedback" ## @brief Original ROS type name
## for
## control_msgs/action/FollowJointTrajectory_Feedback.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
const Ros2Control_msgsActionFollowJointTrajectory_FeedbackNativeIdentity* = "" ## @brief Selected original native
## identity for
## control_msgs/action/FollowJointTrajectory_Feedback.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Control_msgsActionFollowJointTrajectory_Feedback; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Control_msgsActionFollowJointTrajectory_Feedback*(): Ros2Control_msgsActionFollowJointTrajectory_Feedback =
  ## ``@brief Construct the declared defaults of``
  ## ``control_msgs/action/FollowJointTrajectory_Feedback.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Feedback;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`joint_names` = @[]
  result.`desired` = initRos2Trajectory_msgsMsgJointTrajectoryPoint()
  result.`actual` = initRos2Trajectory_msgsMsgJointTrajectoryPoint()
  result.`error` = initRos2Trajectory_msgsMsgJointTrajectoryPoint()
  result.`multi_dof_joint_names` = @[]
  result.`multi_dof_desired` = initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  result.`multi_dof_actual` = initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
  result.`multi_dof_error` = initRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint()
proc writeFields*(value: Ros2Control_msgsActionFollowJointTrajectory_Feedback; w: var Writer) =
  ## ``@brief Append every canonical field of control_msgs/action/FollowJointTrajectory_Feedback.``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Feedback;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`header`,w)
  if value.`joint_names`.len > 12: fail(22)
  putInteger(w,uint32(value.`joint_names`.len))
  for e in value.`joint_names`:
    putString(w,e,64)
  writeFields(value.`desired`,w)
  writeFields(value.`actual`,w)
  writeFields(value.`error`,w)
  if value.`multi_dof_joint_names`.len > 2: fail(22)
  putInteger(w,uint32(value.`multi_dof_joint_names`.len))
  for e in value.`multi_dof_joint_names`:
    putString(w,e,512)
  writeFields(value.`multi_dof_desired`,w)
  writeFields(value.`multi_dof_actual`,w)
  writeFields(value.`multi_dof_error`,w)
proc readRos2Control_msgsActionFollowJointTrajectory_Feedback*(r: var Reader): Ros2Control_msgsActionFollowJointTrajectory_Feedback =
  ## ``@brief Read the ordered canonical fields of``
  ## ``control_msgs/action/FollowJointTrajectory_Feedback.``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Feedback;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Control_msgsActionFollowJointTrajectory_Feedback()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 12: fail(22)
  let count1 = int(rawcount1)
  result.`joint_names` = newSeq[string](count1)
  for i in 0..<count1:
    result.`joint_names`[i] = getString(r,64)
  result.`desired` = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
  result.`actual` = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
  result.`error` = readRos2Trajectory_msgsMsgJointTrajectoryPoint(r)
  let rawcount5 = getInteger(r,uint32)
  if rawcount5 > 2: fail(22)
  let count5 = int(rawcount5)
  result.`multi_dof_joint_names` = newSeq[string](count5)
  for i in 0..<count5:
    result.`multi_dof_joint_names`[i] = getString(r,512)
  result.`multi_dof_desired` = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r)
  result.`multi_dof_actual` = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r)
  result.`multi_dof_error` = readRos2Trajectory_msgsMsgMultiDOFJointTrajectoryPoint(r)
proc encode*(value: Ros2Control_msgsActionFollowJointTrajectory_Feedback): seq[byte] =
  ## ``@brief Encode one complete control_msgs/action/FollowJointTrajectory_Feedback value.``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Feedback;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(4128)
  writeFields(value,w)
  w.bytes
proc decodeRos2Control_msgsActionFollowJointTrajectory_Feedback*(b: seq[byte]): Ros2Control_msgsActionFollowJointTrajectory_Feedback =
  ## ``@brief Decode exactly one complete control_msgs/action/FollowJointTrajectory_Feedback``
  ## ``value.``
  ## ``@details Require the complete 152..4128-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Control_msgsActionFollowJointTrajectory_Feedback;``
  ## ``share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,4128)
  result = readRos2Control_msgsActionFollowJointTrajectory_Feedback(r)
  finish(r)
type Ros2Kuka_driver_interfacesMsgFRIState* = object
  ## ``@brief Complete ROS 2 kuka_driver_interfaces/msg/FRIState value.``
  ## ``@details All 9 declared fields are retained in source order. The canonical representation``
  ## ``occupies 40..40 bytes and is identified by``
  ## ``UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `session_state`*: int32 ## @brief kuka_driver_interfaces/msg/FRIState.session_state: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
  `connection_quality`*: int32 ## @brief kuka_driver_interfaces/msg/FRIState.connection_quality: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
  `safety_state`*: int32 ## @brief kuka_driver_interfaces/msg/FRIState.safety_state: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
  `command_mode`*: int32 ## @brief kuka_driver_interfaces/msg/FRIState.command_mode: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
  `control_mode`*: int32 ## @brief kuka_driver_interfaces/msg/FRIState.control_mode: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
  `operation_mode`*: int32 ## @brief kuka_driver_interfaces/msg/FRIState.operation_mode: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
  `drive_state`*: int32 ## @brief kuka_driver_interfaces/msg/FRIState.drive_state: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
  `overlay_type`*: int32 ## @brief kuka_driver_interfaces/msg/FRIState.overlay_type: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
  `tracking_performance`*: float64 ## @brief kuka_driver_interfaces/msg/FRIState.tracking_performance: float64.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFRIStateMaximumWireBytes* = 40 ## @brief Maximum canonical extent of
## kuka_driver_interfaces/msg/FRIState in bytes.
## @details The inclusive bound is 40 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFRIStateCodecIdentity* = "UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716" ## @brief Canonical codec
## identity of
## kuka_driver_interfaces/msg/FRIState.
## @details Exact identity UWVMROS1_27be8431e4a8cda3bb4d6d5a8a69fd86a0d07a1d920799c232d63a4941ee6716 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFRIStateNativeType* = "kuka_driver_interfaces/msg/FRIState" ## @brief Original ROS type name
## for
## kuka_driver_interfaces/msg/FRIState.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFRIStateNativeIdentity* = "" ## @brief Selected original native identity for
## kuka_driver_interfaces/msg/FRIState.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Kuka_driver_interfacesMsgFRIState*(): Ros2Kuka_driver_interfacesMsgFRIState =
  ## ``@brief Construct the declared defaults of kuka_driver_interfaces/msg/FRIState.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md``
  result.`session_state` = 0
  result.`connection_quality` = 0
  result.`safety_state` = 0
  result.`command_mode` = 0
  result.`control_mode` = 0
  result.`operation_mode` = 0
  result.`drive_state` = 0
  result.`overlay_type` = 0
  result.`tracking_performance` = 0
proc writeFields*(value: Ros2Kuka_driver_interfacesMsgFRIState; w: var Writer) =
  ## ``@brief Append every canonical field of kuka_driver_interfaces/msg/FRIState.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`session_state`)
  putInteger(w,value.`connection_quality`)
  putInteger(w,value.`safety_state`)
  putInteger(w,value.`command_mode`)
  putInteger(w,value.`control_mode`)
  putInteger(w,value.`operation_mode`)
  putInteger(w,value.`drive_state`)
  putInteger(w,value.`overlay_type`)
  putFloat64(w,value.`tracking_performance`)
proc readRos2Kuka_driver_interfacesMsgFRIState*(r: var Reader): Ros2Kuka_driver_interfacesMsgFRIState =
  ## ``@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FRIState.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Kuka_driver_interfacesMsgFRIState()
  result.`session_state` = getInteger(r,int32)
  result.`connection_quality` = getInteger(r,int32)
  result.`safety_state` = getInteger(r,int32)
  result.`command_mode` = getInteger(r,int32)
  result.`control_mode` = getInteger(r,int32)
  result.`operation_mode` = getInteger(r,int32)
  result.`drive_state` = getInteger(r,int32)
  result.`overlay_type` = getInteger(r,int32)
  result.`tracking_performance` = getFloat64(r)
proc encode*(value: Ros2Kuka_driver_interfacesMsgFRIState): seq[byte] =
  ## ``@brief Encode one complete kuka_driver_interfaces/msg/FRIState value.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(40)
  writeFields(value,w)
  w.bytes
proc decodeRos2Kuka_driver_interfacesMsgFRIState*(b: seq[byte]): Ros2Kuka_driver_interfacesMsgFRIState =
  ## ``@brief Decode exactly one complete kuka_driver_interfaces/msg/FRIState value.``
  ## ``@details Require the complete 40..40-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFRIState; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,40)
  result = readRos2Kuka_driver_interfacesMsgFRIState(r)
  finish(r)
type Ros2Kuka_driver_interfacesMsgFRIStateArray* = object
  ## ``@brief Complete ROS 2 kuka_driver_interfaces/msg/FRIStateArray value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..1736 bytes and is identified by``
  ## ``UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `robot_names`*: seq[string] ## @brief kuka_driver_interfaces/msg/FRIStateArray.robot_names: string; 0..16 elements;
  ## each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md
  `states`*: seq[Ros2Kuka_driver_interfacesMsgFRIState] ## @brief kuka_driver_interfaces/msg/FRIStateArray.states:
  ## kuka_driver_interfaces/msg/FRIState; 0..16 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFRIStateArrayMaximumWireBytes* = 1736 ## @brief Maximum canonical extent of
## kuka_driver_interfaces/msg/FRIStateArray in
## bytes.
## @details The inclusive bound is 1736 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFRIStateArrayCodecIdentity* = "UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449" ## @brief Canonical codec
## identity of
## kuka_driver_interfaces/msg/FRIStateArray.
## @details Exact identity UWVMROS1_4312aa4103fd0c92fe7cd9d1201c40e327b05812cdc60130d11b8c2e0eb47449 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFRIStateArrayNativeType* = "kuka_driver_interfaces/msg/FRIStateArray" ## @brief Original ROS type name
## for
## kuka_driver_interfaces/msg/FRIStateArray.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFRIStateArrayNativeIdentity* = "" ## @brief Selected original native identity for
## kuka_driver_interfaces/msg/FRIStateArray.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Kuka_driver_interfacesMsgFRIStateArray*(): Ros2Kuka_driver_interfacesMsgFRIStateArray =
  ## ``@brief Construct the declared defaults of kuka_driver_interfaces/msg/FRIStateArray.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md``
  result.`robot_names` = @[]
  result.`states` = @[]
proc writeFields*(value: Ros2Kuka_driver_interfacesMsgFRIStateArray; w: var Writer) =
  ## ``@brief Append every canonical field of kuka_driver_interfaces/msg/FRIStateArray.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md``
  if value.`robot_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`robot_names`.len))
  for e in value.`robot_names`:
    putString(w,e,64)
  if value.`states`.len > 16: fail(22)
  putInteger(w,uint32(value.`states`.len))
  for e in value.`states`:
    writeFields(e,w)
proc readRos2Kuka_driver_interfacesMsgFRIStateArray*(r: var Reader): Ros2Kuka_driver_interfacesMsgFRIStateArray =
  ## ``@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FRIStateArray.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Kuka_driver_interfacesMsgFRIStateArray()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`robot_names` = newSeq[string](count0)
  for i in 0..<count0:
    result.`robot_names`[i] = getString(r,64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`states` = newSeq[Ros2Kuka_driver_interfacesMsgFRIState](count1)
  for i in 0..<count1:
    result.`states`[i] = readRos2Kuka_driver_interfacesMsgFRIState(r)
proc encode*(value: Ros2Kuka_driver_interfacesMsgFRIStateArray): seq[byte] =
  ## ``@brief Encode one complete kuka_driver_interfaces/msg/FRIStateArray value.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1736)
  writeFields(value,w)
  w.bytes
proc decodeRos2Kuka_driver_interfacesMsgFRIStateArray*(b: seq[byte]): Ros2Kuka_driver_interfacesMsgFRIStateArray =
  ## ``@brief Decode exactly one complete kuka_driver_interfaces/msg/FRIStateArray value.``
  ## ``@details Require the complete 8..1736-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFRIStateArray; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1736)
  result = readRos2Kuka_driver_interfacesMsgFRIStateArray(r)
  finish(r)
type Ros2Kuka_driver_interfacesMsgFriConfiguration* = object
  ## ``@brief Complete ROS 2 kuka_driver_interfaces/msg/FriConfiguration value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..8 bytes and is identified by``
  ## ``UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `receive_multiplier`*: int32 ## @brief kuka_driver_interfaces/msg/FriConfiguration.receive_multiplier: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md
  `send_period_ms`*: int32 ## @brief kuka_driver_interfaces/msg/FriConfiguration.send_period_ms: int32.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFriConfigurationMaximumWireBytes* = 8 ## @brief Maximum canonical extent of
## kuka_driver_interfaces/msg/FriConfiguration
## in bytes.
## @details The inclusive bound is 8 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFriConfigurationCodecIdentity* = "UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e" ## @brief Canonical codec
## identity of
## kuka_driver_interfaces/msg/FriConfiguration.
## @details Exact identity UWVMROS1_a60335766ad606adc5699c833cc6bc43adc3067691bcdbf587bbfb56e8a7127e binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFriConfigurationNativeType* = "kuka_driver_interfaces/msg/FriConfiguration" ## @brief Original ROS type name
## for
## kuka_driver_interfaces/msg/FriConfiguration.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgFriConfigurationNativeIdentity* = "" ## @brief Selected original native identity for
## kuka_driver_interfaces/msg/FriConfiguration.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Kuka_driver_interfacesMsgFriConfiguration*(): Ros2Kuka_driver_interfacesMsgFriConfiguration =
  ## ``@brief Construct the declared defaults of kuka_driver_interfaces/msg/FriConfiguration.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md``
  result.`receive_multiplier` = 0
  result.`send_period_ms` = 0
proc writeFields*(value: Ros2Kuka_driver_interfacesMsgFriConfiguration; w: var Writer) =
  ## ``@brief Append every canonical field of kuka_driver_interfaces/msg/FriConfiguration.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`receive_multiplier`)
  putInteger(w,value.`send_period_ms`)
proc readRos2Kuka_driver_interfacesMsgFriConfiguration*(r: var Reader): Ros2Kuka_driver_interfacesMsgFriConfiguration =
  ## ``@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/FriConfiguration.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Kuka_driver_interfacesMsgFriConfiguration()
  result.`receive_multiplier` = getInteger(r,int32)
  result.`send_period_ms` = getInteger(r,int32)
proc encode*(value: Ros2Kuka_driver_interfacesMsgFriConfiguration): seq[byte] =
  ## ``@brief Encode one complete kuka_driver_interfaces/msg/FriConfiguration value.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(8)
  writeFields(value,w)
  w.bytes
proc decodeRos2Kuka_driver_interfacesMsgFriConfiguration*(b: seq[byte]): Ros2Kuka_driver_interfacesMsgFriConfiguration =
  ## ``@brief Decode exactly one complete kuka_driver_interfaces/msg/FriConfiguration value.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgFriConfiguration; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,8)
  result = readRos2Kuka_driver_interfacesMsgFriConfiguration(r)
  finish(r)
type Ros2Kuka_driver_interfacesMsgHardwareEvent* = object
  ## ``@brief Complete ROS 2 kuka_driver_interfaces/msg/HardwareEvent value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..517 bytes and is identified by``
  ## ``UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `robot_name`*: string ## @brief kuka_driver_interfaces/msg/HardwareEvent.robot_name: string; each string is 0..512
  ## bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md
  `event`*: uint8 ## @brief kuka_driver_interfaces/msg/HardwareEvent.event: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgHardwareEventMaximumWireBytes* = 517 ## @brief Maximum canonical extent of
## kuka_driver_interfaces/msg/HardwareEvent in
## bytes.
## @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgHardwareEventCodecIdentity* = "UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68" ## @brief Canonical codec
## identity of
## kuka_driver_interfaces/msg/HardwareEvent.
## @details Exact identity UWVMROS1_cb542e9311957712257c6d8ae273b3d2d2339760978e11e3798982c84fbc5e68 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgHardwareEventNativeType* = "kuka_driver_interfaces/msg/HardwareEvent" ## @brief Original ROS type name
## for
## kuka_driver_interfaces/msg/HardwareEvent.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgHardwareEventNativeIdentity* = "" ## @brief Selected original native identity for
## kuka_driver_interfaces/msg/HardwareEvent.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Kuka_driver_interfacesMsgHardwareEvent*(): Ros2Kuka_driver_interfacesMsgHardwareEvent =
  ## ``@brief Construct the declared defaults of kuka_driver_interfaces/msg/HardwareEvent.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md``
  result.`robot_name` = ""
  result.`event` = 0
proc writeFields*(value: Ros2Kuka_driver_interfacesMsgHardwareEvent; w: var Writer) =
  ## ``@brief Append every canonical field of kuka_driver_interfaces/msg/HardwareEvent.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md``
  putString(w,value.`robot_name`,512)
  putInteger(w,value.`event`)
proc readRos2Kuka_driver_interfacesMsgHardwareEvent*(r: var Reader): Ros2Kuka_driver_interfacesMsgHardwareEvent =
  ## ``@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/HardwareEvent.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Kuka_driver_interfacesMsgHardwareEvent()
  result.`robot_name` = getString(r,512)
  result.`event` = getInteger(r,uint8)
proc encode*(value: Ros2Kuka_driver_interfacesMsgHardwareEvent): seq[byte] =
  ## ``@brief Encode one complete kuka_driver_interfaces/msg/HardwareEvent value.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(517)
  writeFields(value,w)
  w.bytes
proc decodeRos2Kuka_driver_interfacesMsgHardwareEvent*(b: seq[byte]): Ros2Kuka_driver_interfacesMsgHardwareEvent =
  ## ``@brief Decode exactly one complete kuka_driver_interfaces/msg/HardwareEvent value.``
  ## ``@details Require the complete 5..517-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgHardwareEvent; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,517)
  result = readRos2Kuka_driver_interfacesMsgHardwareEvent(r)
  finish(r)
type Ros2Kuka_driver_interfacesMsgKssStatus* = object
  ## ``@brief Complete ROS 2 kuka_driver_interfaces/msg/KssStatus value.``
  ## ``@details All 9 declared fields are retained in source order. The canonical representation``
  ## ``occupies 9..9 bytes and is identified by``
  ## ``UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `control_mode`*: uint8 ## @brief kuka_driver_interfaces/msg/KssStatus.control_mode: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
  `cycle_time`*: uint8 ## @brief kuka_driver_interfaces/msg/KssStatus.cycle_time: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
  `drives_powered`*: bool ## @brief kuka_driver_interfaces/msg/KssStatus.drives_powered: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
  `emergency_stop`*: bool ## @brief kuka_driver_interfaces/msg/KssStatus.emergency_stop: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
  `guard_stop`*: bool ## @brief kuka_driver_interfaces/msg/KssStatus.guard_stop: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
  `in_motion`*: bool ## @brief kuka_driver_interfaces/msg/KssStatus.in_motion: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
  `motion_possible`*: bool ## @brief kuka_driver_interfaces/msg/KssStatus.motion_possible: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
  `operation_mode`*: uint8 ## @brief kuka_driver_interfaces/msg/KssStatus.operation_mode: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
  `robot_stopped`*: bool ## @brief kuka_driver_interfaces/msg/KssStatus.robot_stopped: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatusMaximumWireBytes* = 9 ## @brief Maximum canonical extent of
## kuka_driver_interfaces/msg/KssStatus in bytes.
## @details The inclusive bound is 9 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatusCodecIdentity* = "UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82" ## @brief Canonical codec
## identity of
## kuka_driver_interfaces/msg/KssStatus.
## @details Exact identity UWVMROS1_b28bc2f19a0f410f0cd1d5b1d59daf1d09acb3e8312b4267f622a4d119f16b82 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatusNativeType* = "kuka_driver_interfaces/msg/KssStatus" ## @brief Original ROS type name
## for
## kuka_driver_interfaces/msg/KssStatus.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatusNativeIdentity* = "" ## @brief Selected original native identity for
## kuka_driver_interfaces/msg/KssStatus.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatus_UNSPECIFIED*: uint8 = 0'u8 ## @brief
## kuka_driver_interfaces/msg/KssStatus.UNSPECIFIED:
## original uint8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatus_JOINT_POSITION_CONTROL*: uint8 = 1'u8 ## @brief
## kuka_driver_interfaces/msg/KssStatus.JOINT_POSITION_CONTROL:
## original uint8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatus_CARTESIAN_POSITION_CONTROL*: uint8 = 5'u8 ## @brief
## kuka_driver_interfaces/msg/KssStatus.CARTESIAN_POSITION_CONTROL:
## original uint8 constant.
## @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatus_RSI_4MS*: uint8 = 1'u8 ## @brief
## kuka_driver_interfaces/msg/KssStatus.RSI_4MS:
## original uint8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatus_RSI_12MS*: uint8 = 2'u8 ## @brief
## kuka_driver_interfaces/msg/KssStatus.RSI_12MS:
## original uint8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatus_T1*: uint8 = 1'u8 ## @brief kuka_driver_interfaces/msg/KssStatus.T1:
## original uint8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatus_T2*: uint8 = 2'u8 ## @brief kuka_driver_interfaces/msg/KssStatus.T2:
## original uint8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatus_AUT*: uint8 = 3'u8 ## @brief kuka_driver_interfaces/msg/KssStatus.AUT:
## original uint8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatus_EXT*: uint8 = 4'u8 ## @brief kuka_driver_interfaces/msg/KssStatus.EXT:
## original uint8 constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Kuka_driver_interfacesMsgKssStatus*(): Ros2Kuka_driver_interfacesMsgKssStatus =
  ## ``@brief Construct the declared defaults of kuka_driver_interfaces/msg/KssStatus.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md``
  result.`control_mode` = 0
  result.`cycle_time` = 0
  result.`drives_powered` = false
  result.`emergency_stop` = false
  result.`guard_stop` = false
  result.`in_motion` = false
  result.`motion_possible` = false
  result.`operation_mode` = 0
  result.`robot_stopped` = false
proc writeFields*(value: Ros2Kuka_driver_interfacesMsgKssStatus; w: var Writer) =
  ## ``@brief Append every canonical field of kuka_driver_interfaces/msg/KssStatus.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`control_mode`)
  putInteger(w,value.`cycle_time`)
  putBool(w,value.`drives_powered`)
  putBool(w,value.`emergency_stop`)
  putBool(w,value.`guard_stop`)
  putBool(w,value.`in_motion`)
  putBool(w,value.`motion_possible`)
  putInteger(w,value.`operation_mode`)
  putBool(w,value.`robot_stopped`)
proc readRos2Kuka_driver_interfacesMsgKssStatus*(r: var Reader): Ros2Kuka_driver_interfacesMsgKssStatus =
  ## ``@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/KssStatus.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Kuka_driver_interfacesMsgKssStatus()
  result.`control_mode` = getInteger(r,uint8)
  result.`cycle_time` = getInteger(r,uint8)
  result.`drives_powered` = getBool(r)
  result.`emergency_stop` = getBool(r)
  result.`guard_stop` = getBool(r)
  result.`in_motion` = getBool(r)
  result.`motion_possible` = getBool(r)
  result.`operation_mode` = getInteger(r,uint8)
  result.`robot_stopped` = getBool(r)
proc encode*(value: Ros2Kuka_driver_interfacesMsgKssStatus): seq[byte] =
  ## ``@brief Encode one complete kuka_driver_interfaces/msg/KssStatus value.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(9)
  writeFields(value,w)
  w.bytes
proc decodeRos2Kuka_driver_interfacesMsgKssStatus*(b: seq[byte]): Ros2Kuka_driver_interfacesMsgKssStatus =
  ## ``@brief Decode exactly one complete kuka_driver_interfaces/msg/KssStatus value.``
  ## ``@details Require the complete 9..9-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgKssStatus; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,9)
  result = readRos2Kuka_driver_interfacesMsgKssStatus(r)
  finish(r)
type Ros2Kuka_driver_interfacesMsgKssStatusArray* = object
  ## ``@brief Complete ROS 2 kuka_driver_interfaces/msg/KssStatusArray value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 8..1240 bytes and is identified by``
  ## ``UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `robot_names`*: seq[string] ## @brief kuka_driver_interfaces/msg/KssStatusArray.robot_names: string; 0..16 elements;
  ## each string is 0..64 bytes; strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md
  `statuses`*: seq[Ros2Kuka_driver_interfacesMsgKssStatus] ## @brief kuka_driver_interfaces/msg/KssStatusArray.statuses:
  ## kuka_driver_interfaces/msg/KssStatus; 0..16 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatusArrayMaximumWireBytes* = 1240 ## @brief Maximum canonical extent of
## kuka_driver_interfaces/msg/KssStatusArray
## in bytes.
## @details The inclusive bound is 1240 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatusArrayCodecIdentity* = "UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd" ## @brief Canonical codec
## identity of
## kuka_driver_interfaces/msg/KssStatusArray.
## @details Exact identity UWVMROS1_3c8e93b369eefea89c0aa56ab657721edd041ac66e18cfbf4fc4201df60dbebd binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatusArrayNativeType* = "kuka_driver_interfaces/msg/KssStatusArray" ## @brief Original ROS type name
## for
## kuka_driver_interfaces/msg/KssStatusArray.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md
const Ros2Kuka_driver_interfacesMsgKssStatusArrayNativeIdentity* = "" ## @brief Selected original native identity for
## kuka_driver_interfaces/msg/KssStatusArray.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Kuka_driver_interfacesMsgKssStatusArray*(): Ros2Kuka_driver_interfacesMsgKssStatusArray =
  ## ``@brief Construct the declared defaults of kuka_driver_interfaces/msg/KssStatusArray.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md``
  result.`robot_names` = @[]
  result.`statuses` = @[]
proc writeFields*(value: Ros2Kuka_driver_interfacesMsgKssStatusArray; w: var Writer) =
  ## ``@brief Append every canonical field of kuka_driver_interfaces/msg/KssStatusArray.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md``
  if value.`robot_names`.len > 16: fail(22)
  putInteger(w,uint32(value.`robot_names`.len))
  for e in value.`robot_names`:
    putString(w,e,64)
  if value.`statuses`.len > 16: fail(22)
  putInteger(w,uint32(value.`statuses`.len))
  for e in value.`statuses`:
    writeFields(e,w)
proc readRos2Kuka_driver_interfacesMsgKssStatusArray*(r: var Reader): Ros2Kuka_driver_interfacesMsgKssStatusArray =
  ## ``@brief Read the ordered canonical fields of kuka_driver_interfaces/msg/KssStatusArray.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Kuka_driver_interfacesMsgKssStatusArray()
  let rawcount0 = getInteger(r,uint32)
  if rawcount0 > 16: fail(22)
  let count0 = int(rawcount0)
  result.`robot_names` = newSeq[string](count0)
  for i in 0..<count0:
    result.`robot_names`[i] = getString(r,64)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 16: fail(22)
  let count1 = int(rawcount1)
  result.`statuses` = newSeq[Ros2Kuka_driver_interfacesMsgKssStatus](count1)
  for i in 0..<count1:
    result.`statuses`[i] = readRos2Kuka_driver_interfacesMsgKssStatus(r)
proc encode*(value: Ros2Kuka_driver_interfacesMsgKssStatusArray): seq[byte] =
  ## ``@brief Encode one complete kuka_driver_interfaces/msg/KssStatusArray value.``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1240)
  writeFields(value,w)
  w.bytes
proc decodeRos2Kuka_driver_interfacesMsgKssStatusArray*(b: seq[byte]): Ros2Kuka_driver_interfacesMsgKssStatusArray =
  ## ``@brief Decode exactly one complete kuka_driver_interfaces/msg/KssStatusArray value.``
  ## ``@details Require the complete 8..1240-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Kuka_driver_interfacesMsgKssStatusArray; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1240)
  result = readRos2Kuka_driver_interfacesMsgKssStatusArray(r)
  finish(r)
type Ros2Lifecycle_msgsMsgState* = object
  ## ``@brief Complete ROS 2 lifecycle_msgs/msg/State value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..517 bytes and is identified by``
  ## ``UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `id`*: uint8 ## @brief lifecycle_msgs/msg/State.id: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
  `label`*: string ## @brief lifecycle_msgs/msg/State.label: string; each string is 0..512 bytes; strict UTF-8 with no
  ## embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgStateMaximumWireBytes* = 517 ## @brief Maximum canonical extent of lifecycle_msgs/msg/State
## in bytes.
## @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgStateCodecIdentity* = "UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94" ## @brief Canonical codec
## identity of
## lifecycle_msgs/msg/State.
## @details Exact identity UWVMROS1_ebd49e5f87ddaa204cc4072ceef9840676c6f65f67448a027e26570dae0ded94 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgStateNativeType* = "lifecycle_msgs/msg/State" ## @brief Original ROS type name for
## lifecycle_msgs/msg/State.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgStateNativeIdentity* = "" ## @brief Selected original native identity for
## lifecycle_msgs/msg/State.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_PRIMARY_STATE_UNKNOWN*: uint8 = 0'u8 ## @brief
## lifecycle_msgs/msg/State.PRIMARY_STATE_UNKNOWN:
## original uint8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_PRIMARY_STATE_UNCONFIGURED*: uint8 = 1'u8 ## @brief
## lifecycle_msgs/msg/State.PRIMARY_STATE_UNCONFIGURED:
## original uint8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_PRIMARY_STATE_INACTIVE*: uint8 = 2'u8 ## @brief
## lifecycle_msgs/msg/State.PRIMARY_STATE_INACTIVE:
## original uint8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_PRIMARY_STATE_ACTIVE*: uint8 = 3'u8 ## @brief
## lifecycle_msgs/msg/State.PRIMARY_STATE_ACTIVE:
## original uint8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_PRIMARY_STATE_FINALIZED*: uint8 = 4'u8 ## @brief
## lifecycle_msgs/msg/State.PRIMARY_STATE_FINALIZED:
## original uint8 constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_CONFIGURING*: uint8 = 10'u8 ## @brief
## lifecycle_msgs/msg/State.TRANSITION_STATE_CONFIGURING:
## original uint8 constant.
## @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_CLEANINGUP*: uint8 = 11'u8 ## @brief
## lifecycle_msgs/msg/State.TRANSITION_STATE_CLEANINGUP:
## original uint8 constant.
## @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_SHUTTINGDOWN*: uint8 = 12'u8 ## @brief
## lifecycle_msgs/msg/State.TRANSITION_STATE_SHUTTINGDOWN:
## original uint8 constant.
## @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_ACTIVATING*: uint8 = 13'u8 ## @brief
## lifecycle_msgs/msg/State.TRANSITION_STATE_ACTIVATING:
## original uint8 constant.
## @details Exact admitted value 13. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_DEACTIVATING*: uint8 = 14'u8 ## @brief
## lifecycle_msgs/msg/State.TRANSITION_STATE_DEACTIVATING:
## original uint8 constant.
## @details Exact admitted value 14. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgState_TRANSITION_STATE_ERRORPROCESSING*: uint8 = 15'u8 ## @brief
## lifecycle_msgs/msg/State.TRANSITION_STATE_ERRORPROCESSING:
## original uint8 constant.
## @details Exact admitted value 15. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Lifecycle_msgsMsgState*(): Ros2Lifecycle_msgsMsgState =
  ## ``@brief Construct the declared defaults of lifecycle_msgs/msg/State.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md``
  result.`id` = 0
  result.`label` = ""
proc writeFields*(value: Ros2Lifecycle_msgsMsgState; w: var Writer) =
  ## ``@brief Append every canonical field of lifecycle_msgs/msg/State.``
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
  ## ``@see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`id`)
  putString(w,value.`label`,512)
proc readRos2Lifecycle_msgsMsgState*(r: var Reader): Ros2Lifecycle_msgsMsgState =
  ## ``@brief Read the ordered canonical fields of lifecycle_msgs/msg/State.``
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
  ## ``@see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Lifecycle_msgsMsgState()
  result.`id` = getInteger(r,uint8)
  result.`label` = getString(r,512)
proc encode*(value: Ros2Lifecycle_msgsMsgState): seq[byte] =
  ## ``@brief Encode one complete lifecycle_msgs/msg/State value.``
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
  ## ``@see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(517)
  writeFields(value,w)
  w.bytes
proc decodeRos2Lifecycle_msgsMsgState*(b: seq[byte]): Ros2Lifecycle_msgsMsgState =
  ## ``@brief Decode exactly one complete lifecycle_msgs/msg/State value.``
  ## ``@details Require the complete 5..517-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Lifecycle_msgsMsgState; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,517)
  result = readRos2Lifecycle_msgsMsgState(r)
  finish(r)
type Ros2Lifecycle_msgsMsgTransition* = object
  ## ``@brief Complete ROS 2 lifecycle_msgs/msg/Transition value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..517 bytes and is identified by``
  ## ``UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `id`*: uint8 ## @brief lifecycle_msgs/msg/Transition.id: uint8.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
  `label`*: string ## @brief lifecycle_msgs/msg/Transition.label: string; each string is 0..512 bytes; strict UTF-8 with
  ## no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransitionMaximumWireBytes* = 517 ## @brief Maximum canonical extent of
## lifecycle_msgs/msg/Transition in bytes.
## @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransitionCodecIdentity* = "UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb" ## @brief Canonical codec
## identity of
## lifecycle_msgs/msg/Transition.
## @details Exact identity UWVMROS1_1f9bb864622854b446a37cf3c6e29e9cf41f8efa37375c5a56205b4c02ed10cb binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransitionNativeType* = "lifecycle_msgs/msg/Transition" ## @brief Original ROS type name for
## lifecycle_msgs/msg/Transition.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransitionNativeIdentity* = "" ## @brief Selected original native identity for
## lifecycle_msgs/msg/Transition.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_CREATE*: uint8 = 0'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_CREATE:
## original uint8 constant.
## @details Exact admitted value 0. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_CONFIGURE*: uint8 = 1'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_CONFIGURE:
## original uint8 constant.
## @details Exact admitted value 1. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_CLEANUP*: uint8 = 2'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_CLEANUP:
## original uint8 constant.
## @details Exact admitted value 2. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ACTIVATE*: uint8 = 3'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ACTIVATE:
## original uint8 constant.
## @details Exact admitted value 3. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_DEACTIVATE*: uint8 = 4'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_DEACTIVATE:
## original uint8 constant.
## @details Exact admitted value 4. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_UNCONFIGURED_SHUTDOWN*: uint8 = 5'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_UNCONFIGURED_SHUTDOWN:
## original uint8 constant.
## @details Exact admitted value 5. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_INACTIVE_SHUTDOWN*: uint8 = 6'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_INACTIVE_SHUTDOWN:
## original uint8 constant.
## @details Exact admitted value 6. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ACTIVE_SHUTDOWN*: uint8 = 7'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ACTIVE_SHUTDOWN:
## original uint8 constant.
## @details Exact admitted value 7. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_DESTROY*: uint8 = 8'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_DESTROY:
## original uint8 constant.
## @details Exact admitted value 8. This constant occupies no field bytes and is not an authority or operation selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_SUCCESS*: uint8 = 10'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_SUCCESS:
## original uint8 constant.
## @details Exact admitted value 10. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_FAILURE*: uint8 = 11'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_FAILURE:
## original uint8 constant.
## @details Exact admitted value 11. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CONFIGURE_ERROR*: uint8 = 12'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_CONFIGURE_ERROR:
## original uint8 constant.
## @details Exact admitted value 12. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_SUCCESS*: uint8 = 20'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_SUCCESS:
## original uint8 constant.
## @details Exact admitted value 20. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_FAILURE*: uint8 = 21'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_FAILURE:
## original uint8 constant.
## @details Exact admitted value 21. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_CLEANUP_ERROR*: uint8 = 22'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_CLEANUP_ERROR:
## original uint8 constant.
## @details Exact admitted value 22. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_SUCCESS*: uint8 = 30'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_SUCCESS:
## original uint8 constant.
## @details Exact admitted value 30. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_FAILURE*: uint8 = 31'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_FAILURE:
## original uint8 constant.
## @details Exact admitted value 31. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ACTIVATE_ERROR*: uint8 = 32'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_ACTIVATE_ERROR:
## original uint8 constant.
## @details Exact admitted value 32. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_SUCCESS*: uint8 = 40'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_SUCCESS:
## original uint8 constant.
## @details Exact admitted value 40. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_FAILURE*: uint8 = 41'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_FAILURE:
## original uint8 constant.
## @details Exact admitted value 41. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_DEACTIVATE_ERROR*: uint8 = 42'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_DEACTIVATE_ERROR:
## original uint8 constant.
## @details Exact admitted value 42. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_SUCCESS*: uint8 = 50'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_SUCCESS:
## original uint8 constant.
## @details Exact admitted value 50. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_FAILURE*: uint8 = 51'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_FAILURE:
## original uint8 constant.
## @details Exact admitted value 51. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_SHUTDOWN_ERROR*: uint8 = 52'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_SHUTDOWN_ERROR:
## original uint8 constant.
## @details Exact admitted value 52. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_SUCCESS*: uint8 = 60'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_SUCCESS:
## original uint8 constant.
## @details Exact admitted value 60. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_FAILURE*: uint8 = 61'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_FAILURE:
## original uint8 constant.
## @details Exact admitted value 61. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_ON_ERROR_ERROR*: uint8 = 62'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_ON_ERROR_ERROR:
## original uint8 constant.
## @details Exact admitted value 62. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_SUCCESS*: uint8 = 97'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_SUCCESS:
## original uint8 constant.
## @details Exact admitted value 97. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_FAILURE*: uint8 = 98'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_FAILURE:
## original uint8 constant.
## @details Exact admitted value 98. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsMsgTransition_TRANSITION_CALLBACK_ERROR*: uint8 = 99'u8 ## @brief
## lifecycle_msgs/msg/Transition.TRANSITION_CALLBACK_ERROR:
## original uint8 constant.
## @details Exact admitted value 99. This constant occupies no field bytes and is not an authority or operation
## selector.
## @see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Lifecycle_msgsMsgTransition*(): Ros2Lifecycle_msgsMsgTransition =
  ## ``@brief Construct the declared defaults of lifecycle_msgs/msg/Transition.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md``
  result.`id` = 0
  result.`label` = ""
proc writeFields*(value: Ros2Lifecycle_msgsMsgTransition; w: var Writer) =
  ## ``@brief Append every canonical field of lifecycle_msgs/msg/Transition.``
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
  ## ``@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md``
  putInteger(w,value.`id`)
  putString(w,value.`label`,512)
proc readRos2Lifecycle_msgsMsgTransition*(r: var Reader): Ros2Lifecycle_msgsMsgTransition =
  ## ``@brief Read the ordered canonical fields of lifecycle_msgs/msg/Transition.``
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
  ## ``@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Lifecycle_msgsMsgTransition()
  result.`id` = getInteger(r,uint8)
  result.`label` = getString(r,512)
proc encode*(value: Ros2Lifecycle_msgsMsgTransition): seq[byte] =
  ## ``@brief Encode one complete lifecycle_msgs/msg/Transition value.``
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
  ## ``@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(517)
  writeFields(value,w)
  w.bytes
proc decodeRos2Lifecycle_msgsMsgTransition*(b: seq[byte]): Ros2Lifecycle_msgsMsgTransition =
  ## ``@brief Decode exactly one complete lifecycle_msgs/msg/Transition value.``
  ## ``@details Require the complete 5..517-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Lifecycle_msgsMsgTransition; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,517)
  result = readRos2Lifecycle_msgsMsgTransition(r)
  finish(r)
type Ros2Lifecycle_msgsSrvChangeState_Request* = object
  ## ``@brief Complete ROS 2 lifecycle_msgs/srv/ChangeState_Request value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..517 bytes and is identified by``
  ## ``UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `transition`*: Ros2Lifecycle_msgsMsgTransition ## @brief lifecycle_msgs/srv/ChangeState_Request.transition:
  ## lifecycle_msgs/msg/Transition.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvChangeState_RequestMaximumWireBytes* = 517 ## @brief Maximum canonical extent of
## lifecycle_msgs/srv/ChangeState_Request in
## bytes.
## @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvChangeState_RequestCodecIdentity* = "UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1" ## @brief Canonical codec
## identity of
## lifecycle_msgs/srv/ChangeState_Request.
## @details Exact identity UWVMROS1_b04270f03616b8e581036d327d18bde62d38627ae8acf88fb77d0ed7b3b3d3d1 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvChangeState_RequestNativeType* = "lifecycle_msgs/srv/ChangeState_Request" ## @brief Original ROS type name
## for
## lifecycle_msgs/srv/ChangeState_Request.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvChangeState_RequestNativeIdentity* = "" ## @brief Selected original native identity for
## lifecycle_msgs/srv/ChangeState_Request.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Lifecycle_msgsSrvChangeState_Request*(): Ros2Lifecycle_msgsSrvChangeState_Request =
  ## ``@brief Construct the declared defaults of lifecycle_msgs/srv/ChangeState_Request.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/nim/API-CONTRACT.md``
  result.`transition` = initRos2Lifecycle_msgsMsgTransition()
proc writeFields*(value: Ros2Lifecycle_msgsSrvChangeState_Request; w: var Writer) =
  ## ``@brief Append every canonical field of lifecycle_msgs/srv/ChangeState_Request.``
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
  ## ``@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`transition`,w)
proc readRos2Lifecycle_msgsSrvChangeState_Request*(r: var Reader): Ros2Lifecycle_msgsSrvChangeState_Request =
  ## ``@brief Read the ordered canonical fields of lifecycle_msgs/srv/ChangeState_Request.``
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
  ## ``@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Lifecycle_msgsSrvChangeState_Request()
  result.`transition` = readRos2Lifecycle_msgsMsgTransition(r)
proc encode*(value: Ros2Lifecycle_msgsSrvChangeState_Request): seq[byte] =
  ## ``@brief Encode one complete lifecycle_msgs/srv/ChangeState_Request value.``
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
  ## ``@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(517)
  writeFields(value,w)
  w.bytes
proc decodeRos2Lifecycle_msgsSrvChangeState_Request*(b: seq[byte]): Ros2Lifecycle_msgsSrvChangeState_Request =
  ## ``@brief Decode exactly one complete lifecycle_msgs/srv/ChangeState_Request value.``
  ## ``@details Require the complete 5..517-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Lifecycle_msgsSrvChangeState_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,517)
  result = readRos2Lifecycle_msgsSrvChangeState_Request(r)
  finish(r)
type Ros2Lifecycle_msgsSrvChangeState_Response* = object
  ## ``@brief Complete ROS 2 lifecycle_msgs/srv/ChangeState_Response value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 1..1 bytes and is identified by``
  ## ``UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief lifecycle_msgs/srv/ChangeState_Response.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvChangeState_ResponseMaximumWireBytes* = 1 ## @brief Maximum canonical extent of
## lifecycle_msgs/srv/ChangeState_Response in
## bytes.
## @details The inclusive bound is 1 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvChangeState_ResponseCodecIdentity* = "UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032" ## @brief Canonical codec
## identity of
## lifecycle_msgs/srv/ChangeState_Response.
## @details Exact identity UWVMROS1_d2dc541d6995976a2a1a2c03d499aa9dccaf487736b11704d778c86fddaf5032 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvChangeState_ResponseNativeType* = "lifecycle_msgs/srv/ChangeState_Response" ## @brief Original ROS type name
## for
## lifecycle_msgs/srv/ChangeState_Response.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvChangeState_ResponseNativeIdentity* = "" ## @brief Selected original native identity for
## lifecycle_msgs/srv/ChangeState_Response.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Lifecycle_msgsSrvChangeState_Response*(): Ros2Lifecycle_msgsSrvChangeState_Response =
  ## ``@brief Construct the declared defaults of lifecycle_msgs/srv/ChangeState_Response.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
proc writeFields*(value: Ros2Lifecycle_msgsSrvChangeState_Response; w: var Writer) =
  ## ``@brief Append every canonical field of lifecycle_msgs/srv/ChangeState_Response.``
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
  ## ``@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
proc readRos2Lifecycle_msgsSrvChangeState_Response*(r: var Reader): Ros2Lifecycle_msgsSrvChangeState_Response =
  ## ``@brief Read the ordered canonical fields of lifecycle_msgs/srv/ChangeState_Response.``
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
  ## ``@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Lifecycle_msgsSrvChangeState_Response()
  result.`success` = getBool(r)
proc encode*(value: Ros2Lifecycle_msgsSrvChangeState_Response): seq[byte] =
  ## ``@brief Encode one complete lifecycle_msgs/srv/ChangeState_Response value.``
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
  ## ``@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1)
  writeFields(value,w)
  w.bytes
proc decodeRos2Lifecycle_msgsSrvChangeState_Response*(b: seq[byte]): Ros2Lifecycle_msgsSrvChangeState_Response =
  ## ``@brief Decode exactly one complete lifecycle_msgs/srv/ChangeState_Response value.``
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
  ## ``@see Ros2Lifecycle_msgsSrvChangeState_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1)
  result = readRos2Lifecycle_msgsSrvChangeState_Response(r)
  finish(r)
type Ros2Lifecycle_msgsSrvGetState_Request* = object
  ## ``@brief Complete ROS 2 lifecycle_msgs/srv/GetState_Request value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Lifecycle_msgsSrvGetState_RequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## lifecycle_msgs/srv/GetState_Request in bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvGetState_RequestCodecIdentity* = "UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d" ## @brief Canonical codec
## identity of
## lifecycle_msgs/srv/GetState_Request.
## @details Exact identity UWVMROS1_86a3d813de32971a271e062acfaf201eb718aff8d68a4e343d6fceaae2b5098d binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvGetState_RequestNativeType* = "lifecycle_msgs/srv/GetState_Request" ## @brief Original ROS type name
## for
## lifecycle_msgs/srv/GetState_Request.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvGetState_RequestNativeIdentity* = "" ## @brief Selected original native identity for
## lifecycle_msgs/srv/GetState_Request.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Lifecycle_msgsSrvGetState_Request*(): Ros2Lifecycle_msgsSrvGetState_Request =
  ## ``@brief Construct the declared defaults of lifecycle_msgs/srv/GetState_Request.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Lifecycle_msgsSrvGetState_Request; w: var Writer) =
  ## ``@brief Append every canonical field of lifecycle_msgs/srv/GetState_Request.``
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
  ## ``@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Lifecycle_msgsSrvGetState_Request*(r: var Reader): Ros2Lifecycle_msgsSrvGetState_Request =
  ## ``@brief Read the ordered canonical fields of lifecycle_msgs/srv/GetState_Request.``
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
  ## ``@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Lifecycle_msgsSrvGetState_Request()
proc encode*(value: Ros2Lifecycle_msgsSrvGetState_Request): seq[byte] =
  ## ``@brief Encode one complete lifecycle_msgs/srv/GetState_Request value.``
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
  ## ``@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Lifecycle_msgsSrvGetState_Request*(b: seq[byte]): Ros2Lifecycle_msgsSrvGetState_Request =
  ## ``@brief Decode exactly one complete lifecycle_msgs/srv/GetState_Request value.``
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
  ## ``@see Ros2Lifecycle_msgsSrvGetState_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Lifecycle_msgsSrvGetState_Request(r)
  finish(r)
type Ros2Lifecycle_msgsSrvGetState_Response* = object
  ## ``@brief Complete ROS 2 lifecycle_msgs/srv/GetState_Response value.``
  ## ``@details All 1 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..517 bytes and is identified by``
  ## ``UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `current_state`*: Ros2Lifecycle_msgsMsgState ## @brief lifecycle_msgs/srv/GetState_Response.current_state:
  ## lifecycle_msgs/msg/State.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvGetState_ResponseMaximumWireBytes* = 517 ## @brief Maximum canonical extent of
## lifecycle_msgs/srv/GetState_Response in bytes.
## @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvGetState_ResponseCodecIdentity* = "UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39" ## @brief Canonical codec
## identity of
## lifecycle_msgs/srv/GetState_Response.
## @details Exact identity UWVMROS1_697418ec4095e98c855b1f9d238a3bd74a59ccbbc3eb31981c4df3c3b829ea39 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvGetState_ResponseNativeType* = "lifecycle_msgs/srv/GetState_Response" ## @brief Original ROS type name
## for
## lifecycle_msgs/srv/GetState_Response.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Lifecycle_msgsSrvGetState_ResponseNativeIdentity* = "" ## @brief Selected original native identity for
## lifecycle_msgs/srv/GetState_Response.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Lifecycle_msgsSrvGetState_Response*(): Ros2Lifecycle_msgsSrvGetState_Response =
  ## ``@brief Construct the declared defaults of lifecycle_msgs/srv/GetState_Response.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`current_state` = initRos2Lifecycle_msgsMsgState()
proc writeFields*(value: Ros2Lifecycle_msgsSrvGetState_Response; w: var Writer) =
  ## ``@brief Append every canonical field of lifecycle_msgs/srv/GetState_Response.``
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
  ## ``@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/nim/API-CONTRACT.md``
  writeFields(value.`current_state`,w)
proc readRos2Lifecycle_msgsSrvGetState_Response*(r: var Reader): Ros2Lifecycle_msgsSrvGetState_Response =
  ## ``@brief Read the ordered canonical fields of lifecycle_msgs/srv/GetState_Response.``
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
  ## ``@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Lifecycle_msgsSrvGetState_Response()
  result.`current_state` = readRos2Lifecycle_msgsMsgState(r)
proc encode*(value: Ros2Lifecycle_msgsSrvGetState_Response): seq[byte] =
  ## ``@brief Encode one complete lifecycle_msgs/srv/GetState_Response value.``
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
  ## ``@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(517)
  writeFields(value,w)
  w.bytes
proc decodeRos2Lifecycle_msgsSrvGetState_Response*(b: seq[byte]): Ros2Lifecycle_msgsSrvGetState_Response =
  ## ``@brief Decode exactly one complete lifecycle_msgs/srv/GetState_Response value.``
  ## ``@details Require the complete 5..517-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Lifecycle_msgsSrvGetState_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,517)
  result = readRos2Lifecycle_msgsSrvGetState_Response(r)
  finish(r)
type Ros2Sensor_msgsMsgJointState* = object
  ## ``@brief Complete ROS 2 sensor_msgs/msg/JointState value.``
  ## ``@details All 5 declared fields are retained in source order. The canonical representation``
  ## ``occupies 28..1196 bytes and is identified by``
  ## ``UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `header`*: Ros2Std_msgsMsgHeader ## @brief sensor_msgs/msg/JointState.header: std_msgs/msg/Header.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md
  `name`*: seq[string] ## @brief sensor_msgs/msg/JointState.name: string; 0..12 elements; each string is 0..64 bytes;
  ## strict UTF-8 with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md
  `position`*: seq[float64] ## @brief sensor_msgs/msg/JointState.position: float64; 0..12 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md
  `velocity`*: seq[float64] ## @brief sensor_msgs/msg/JointState.velocity: float64; 0..12 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md
  `effort`*: seq[float64] ## @brief sensor_msgs/msg/JointState.effort: float64; 0..12 elements.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Sensor_msgsMsgJointStateMaximumWireBytes* = 1196 ## @brief Maximum canonical extent of
## sensor_msgs/msg/JointState in bytes.
## @details The inclusive bound is 1196 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Sensor_msgsMsgJointStateCodecIdentity* = "UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884" ## @brief Canonical codec
## identity of
## sensor_msgs/msg/JointState.
## @details Exact identity UWVMROS1_88d44f7bdb40f8c45539a041a25903609561fa74db90b9972e1369ebbff6c884 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Sensor_msgsMsgJointStateNativeType* = "sensor_msgs/msg/JointState" ## @brief Original ROS type name for
## sensor_msgs/msg/JointState.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md
const Ros2Sensor_msgsMsgJointStateNativeIdentity* = "" ## @brief Selected original native identity for
## sensor_msgs/msg/JointState.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Sensor_msgsMsgJointState*(): Ros2Sensor_msgsMsgJointState =
  ## ``@brief Construct the declared defaults of sensor_msgs/msg/JointState.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md``
  result.`header` = initRos2Std_msgsMsgHeader()
  result.`name` = @[]
  result.`position` = @[]
  result.`velocity` = @[]
  result.`effort` = @[]
proc writeFields*(value: Ros2Sensor_msgsMsgJointState; w: var Writer) =
  ## ``@brief Append every canonical field of sensor_msgs/msg/JointState.``
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
  ## ``@see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md``
  if len(value.`name`) != 0 and len(value.`position`) != 0 and len(value.`name`) != len(value.`position`): fail(22)
  if len(value.`name`) != 0 and len(value.`velocity`) != 0 and len(value.`name`) != len(value.`velocity`): fail(22)
  if len(value.`name`) != 0 and len(value.`effort`) != 0 and len(value.`name`) != len(value.`effort`): fail(22)
  if (
      len(value.`position`) != 0 and
      len(value.`velocity`) != 0 and
      len(value.`position`) != len(value.`velocity`)
  ):
    fail(22)
  if len(value.`position`) != 0 and len(value.`effort`) != 0 and len(value.`position`) != len(value.`effort`): fail(22)
  if len(value.`velocity`) != 0 and len(value.`effort`) != 0 and len(value.`velocity`) != len(value.`effort`): fail(22)
  writeFields(value.`header`,w)
  if value.`name`.len > 12: fail(22)
  putInteger(w,uint32(value.`name`.len))
  for e in value.`name`:
    putString(w,e,64)
  if value.`position`.len > 12: fail(22)
  putInteger(w,uint32(value.`position`.len))
  for e in value.`position`:
    putFloat64(w,e)
  if value.`velocity`.len > 12: fail(22)
  putInteger(w,uint32(value.`velocity`.len))
  for e in value.`velocity`:
    putFloat64(w,e)
  if value.`effort`.len > 12: fail(22)
  putInteger(w,uint32(value.`effort`.len))
  for e in value.`effort`:
    putFloat64(w,e)
proc readRos2Sensor_msgsMsgJointState*(r: var Reader): Ros2Sensor_msgsMsgJointState =
  ## ``@brief Read the ordered canonical fields of sensor_msgs/msg/JointState.``
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
  ## ``@see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Sensor_msgsMsgJointState()
  result.`header` = readRos2Std_msgsMsgHeader(r)
  let rawcount1 = getInteger(r,uint32)
  if rawcount1 > 12: fail(22)
  let count1 = int(rawcount1)
  result.`name` = newSeq[string](count1)
  for i in 0..<count1:
    result.`name`[i] = getString(r,64)
  let rawcount2 = getInteger(r,uint32)
  if rawcount2 > 12: fail(22)
  let count2 = int(rawcount2)
  result.`position` = newSeq[float64](count2)
  for i in 0..<count2:
    result.`position`[i] = getFloat64(r)
  let rawcount3 = getInteger(r,uint32)
  if rawcount3 > 12: fail(22)
  let count3 = int(rawcount3)
  result.`velocity` = newSeq[float64](count3)
  for i in 0..<count3:
    result.`velocity`[i] = getFloat64(r)
  let rawcount4 = getInteger(r,uint32)
  if rawcount4 > 12: fail(22)
  let count4 = int(rawcount4)
  result.`effort` = newSeq[float64](count4)
  for i in 0..<count4:
    result.`effort`[i] = getFloat64(r)
  if len(result.`name`) != 0 and len(result.`position`) != 0 and len(result.`name`) != len(result.`position`): fail(22)
  if len(result.`name`) != 0 and len(result.`velocity`) != 0 and len(result.`name`) != len(result.`velocity`): fail(22)
  if len(result.`name`) != 0 and len(result.`effort`) != 0 and len(result.`name`) != len(result.`effort`): fail(22)
  if (
      len(result.`position`) != 0 and
      len(result.`velocity`) != 0 and
      len(result.`position`) != len(result.`velocity`)
  ):
    fail(22)
  if (
      len(result.`position`) != 0 and
      len(result.`effort`) != 0 and
      len(result.`position`) != len(result.`effort`)
  ):
    fail(22)
  if (
      len(result.`velocity`) != 0 and
      len(result.`effort`) != 0 and
      len(result.`velocity`) != len(result.`effort`)
  ):
    fail(22)
proc encode*(value: Ros2Sensor_msgsMsgJointState): seq[byte] =
  ## ``@brief Encode one complete sensor_msgs/msg/JointState value.``
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
  ## ``@see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(1196)
  writeFields(value,w)
  w.bytes
proc decodeRos2Sensor_msgsMsgJointState*(b: seq[byte]): Ros2Sensor_msgsMsgJointState =
  ## ``@brief Decode exactly one complete sensor_msgs/msg/JointState value.``
  ## ``@details Require the complete 28..1196-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Sensor_msgsMsgJointState; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,1196)
  result = readRos2Sensor_msgsMsgJointState(r)
  finish(r)
type Ros2Std_srvsSrvTrigger_Request* = object
  ## ``@brief Complete ROS 2 std_srvs/srv/Trigger_Request value.``
  ## ``@details All 0 declared fields are retained in source order. The canonical representation``
  ## ``occupies 0..0 bytes and is identified by``
  ## ``UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
const Ros2Std_srvsSrvTrigger_RequestMaximumWireBytes* = 0 ## @brief Maximum canonical extent of
## std_srvs/srv/Trigger_Request in bytes.
## @details The inclusive bound is 0 bytes for this selected profile; it is not a native sizeof or a queue reservation.
## @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_srvsSrvTrigger_RequestCodecIdentity* = "UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77" ## @brief Canonical codec
## identity of
## std_srvs/srv/Trigger_Request.
## @details Exact identity UWVMROS1_f1d8ad4ab7cf476cada6301f71ae24e046c244ba62bb6735183efe8e8c530a77 binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_srvsSrvTrigger_RequestNativeType* = "std_srvs/srv/Trigger_Request" ## @brief Original ROS type name for
## std_srvs/srv/Trigger_Request.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_srvsSrvTrigger_RequestNativeIdentity* = "" ## @brief Selected original native identity for
## std_srvs/srv/Trigger_Request.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Std_srvsSrvTrigger_Request*(): Ros2Std_srvsSrvTrigger_Request =
  ## ``@brief Construct the declared defaults of std_srvs/srv/Trigger_Request.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc writeFields*(value: Ros2Std_srvsSrvTrigger_Request; w: var Writer) =
  ## ``@brief Append every canonical field of std_srvs/srv/Trigger_Request.``
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
  ## ``@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/nim/API-CONTRACT.md``
  discard
proc readRos2Std_srvsSrvTrigger_Request*(r: var Reader): Ros2Std_srvsSrvTrigger_Request =
  ## ``@brief Read the ordered canonical fields of std_srvs/srv/Trigger_Request.``
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
  ## ``@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Std_srvsSrvTrigger_Request()
proc encode*(value: Ros2Std_srvsSrvTrigger_Request): seq[byte] =
  ## ``@brief Encode one complete std_srvs/srv/Trigger_Request value.``
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
  ## ``@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(0)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_srvsSrvTrigger_Request*(b: seq[byte]): Ros2Std_srvsSrvTrigger_Request =
  ## ``@brief Decode exactly one complete std_srvs/srv/Trigger_Request value.``
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
  ## ``@see Ros2Std_srvsSrvTrigger_Request; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,0)
  result = readRos2Std_srvsSrvTrigger_Request(r)
  finish(r)
type Ros2Std_srvsSrvTrigger_Response* = object
  ## ``@brief Complete ROS 2 std_srvs/srv/Trigger_Response value.``
  ## ``@details All 2 declared fields are retained in source order. The canonical representation``
  ## ``occupies 5..517 bytes and is identified by``
  ## ``UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d.``
  ## ``@native No native identity is established by this source record.``
  ## ``@ownership This is a Guest value, not a native ROS allocation or capability. Copying it``
  ## ``creates no publisher, subscriber, service or Action owner.``
  ## ``@thread Ordinary value access needs caller synchronization. The codec creates no task or``
  ## ``callback; mutable readers/writers must not be shared during a call.``
  ## ``@permissions None for construction or pure encoding; transport needs a separate exact``
  ## ``grant.``
  ## ``@version The selected finite schema profile fixes field order, bounds and constants.``
  ## ``@see share/platform/ros/nim/API-CONTRACT.md``
  `success`*: bool ## @brief std_srvs/srv/Trigger_Response.success: bool.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md
  `message`*: string ## @brief std_srvs/srv/Trigger_Response.message: string; each string is 0..512 bytes; strict UTF-8
  ## with no embedded NUL.
  ## @details The generated initializer supplies the declared zero/empty/nested default. Encoding preserves the original
  ## field position and signedness; invalid bounds fail instead of truncating the value.
  ## @units Use the units and frame/clock domain of the pinned native definition. The codec performs no scaling, frame
  ## conversion or normalization.
  ## @lifetime Retain referenced string/sequence backing storage for each encoding call. Decoded borrowing and allocator
  ## ownership follow the enclosing decode function.
  ## @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_srvsSrvTrigger_ResponseMaximumWireBytes* = 517 ## @brief Maximum canonical extent of
## std_srvs/srv/Trigger_Response in bytes.
## @details The inclusive bound is 517 bytes for this selected profile; it is not a native sizeof or a queue
## reservation.
## @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_srvsSrvTrigger_ResponseCodecIdentity* = "UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d" ## @brief Canonical codec
## identity of
## std_srvs/srv/Trigger_Response.
## @details Exact identity UWVMROS1_95fe65bd59112bb00093f66c6853844b01ccea8e6ded47e73038718aa886f39d binds field order,
## shape and bounds. It does not replace the native type identity.
## @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_srvsSrvTrigger_ResponseNativeType* = "std_srvs/srv/Trigger_Response" ## @brief Original ROS type name for
## std_srvs/srv/Trigger_Response.
## @details This exact name is descriptive and cannot select a different alias, endpoint or resource.
## @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md
const Ros2Std_srvsSrvTrigger_ResponseNativeIdentity* = "" ## @brief Selected original native identity for
## std_srvs/srv/Trigger_Response.
## @details Absent: this source profile establishes no native identity.
## @see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md
proc initRos2Std_srvsSrvTrigger_Response*(): Ros2Std_srvsSrvTrigger_Response =
  ## ``@brief Construct the declared defaults of std_srvs/srv/Trigger_Response.``
  ## ``@details Initialize every field without transport access. Fixed arrays retain their exact``
  ## ``shape; sequence and string defaults are empty unless the schema declares a supported scalar``
  ## ``default.``
  ## ``@return A fresh ordinary value with all generated defaults.``
  ## ``@lifetime Managed decoded values retain/copy their required backing storage. Keep input``
  ## ``values stable during synchronous encoding; do not share mutable cursors during a call.``
  ## ``@thread Synchronous caller-thread operation; independent values/cursors may be used``
  ## ``independently.``
  ## ``@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md``
  result.`success` = false
  result.`message` = ""
proc writeFields*(value: Ros2Std_srvsSrvTrigger_Response; w: var Writer) =
  ## ``@brief Append every canonical field of std_srvs/srv/Trigger_Response.``
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
  ## ``@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md``
  putBool(w,value.`success`)
  putString(w,value.`message`,512)
proc readRos2Std_srvsSrvTrigger_Response*(r: var Reader): Ros2Std_srvsSrvTrigger_Response =
  ## ``@brief Read the ordered canonical fields of std_srvs/srv/Trigger_Response.``
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
  ## ``@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md``
  result = initRos2Std_srvsSrvTrigger_Response()
  result.`success` = getBool(r)
  result.`message` = getString(r,512)
proc encode*(value: Ros2Std_srvsSrvTrigger_Response): seq[byte] =
  ## ``@brief Encode one complete std_srvs/srv/Trigger_Response value.``
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
  ## ``@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md``
  var w = initWriter(517)
  writeFields(value,w)
  w.bytes
proc decodeRos2Std_srvsSrvTrigger_Response*(b: seq[byte]): Ros2Std_srvsSrvTrigger_Response =
  ## ``@brief Decode exactly one complete std_srvs/srv/Trigger_Response value.``
  ## ``@details Require the complete 5..517-byte canonical representation. Reject truncation,``
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
  ## ``@see Ros2Std_srvsSrvTrigger_Response; share/platform/ros/nim/API-CONTRACT.md``
  var r = initReader(b,517)
  result = readRos2Std_srvsSrvTrigger_Response(r)
  finish(r)
